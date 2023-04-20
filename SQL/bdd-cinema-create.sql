-- SUPPRESSION DE LA BASE DE DONNEES (du même nom si existante)
DROP DATABASE IF EXISTS ReservationCinema;

-- CREATION DE LA BASE DE DONNEES
CREATE DATABASE ReservationCinema;

USE ReservationCinema;

-- CREATION DES TABLES DE LA BASE DE DONNEES

-- Création Table Role pour identifier les roles et permissions des différents utilisateurs
CREATE TABLE Role (
    role_name VARCHAR(100) NOT NULL UNIQUE,

    PRIMARY KEY (role_name)
);
-- Les rôles seront utilisés pour déterminer les droits d'accès des Users à la base de données via PHP

-- Création Table User qui référence l'ensemble des utilisateurs de la base de données
CREATE TABLE User (
    id_user CHAR(36) NOT NULL,
    email VARCHAR(254) NOT NULL UNIQUE,
    username VARCHAR(50) NULL,
    password VARCHAR(60) NOT NULL,
    is_student BOOLEAN NOT NULL DEFAULT 0,
    birthday DATE NOT NULL,

    PRIMARY KEY (id_user)
);

-- Création Table UserRole qui lie les Users aux Roles qui peuvent leur être attribués
CREATE TABLE UserRole (
    user_id CHAR(36) NOT NULL,
    user_role VARCHAR(100) NOT NULL ,

    PRIMARY KEY (user_id, user_role),
    FOREIGN KEY (user_id) REFERENCES User(id_user),
    FOREIGN KEY (user_role) REFERENCES Role(role_name)
);

-- Création Vue Customer 
CREATE VIEW vw_Customer AS
    SELECT  User.id_user AS id_user,
            User.email AS user_email, 
            Role.role_name AS user_role,
            User.is_student AS student_status, 
            User.birthday AS user_birthday,
        CASE
            WHEN (DATEDIFF(User.birthday, SUBDATE(CURRENT_DATE(), INTERVAL 14 YEAR)) >= 0) THEN 'Moins de 14 ans'
            WHEN (User.is_student != 0) THEN 'Etudiant'
            ELSE 'Plein tarif'
        END AS ticket_price_reduction

    FROM UserRole

    INNER JOIN User ON UserRole.user_id = User.id_user
    INNER JOIN Role ON UserRole.user_role = Role.role_name

    ORDER BY email
;

-- Création Table Cinema
CREATE TABLE Cinema (
    id_cinema INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(250) NOT NULL UNIQUE,
    address VARCHAR(250) NOT NULL,
    city VARCHAR(250)  NOT NULL,
    post_code VARCHAR(5) NOT NULL,
    phone_number INT(10) NULL,

    PRIMARY KEY (id_cinema)
);

-- Création Table CinemaPerManager
CREATE TABLE CinemaPerManager (
    id_manager CHAR(36) NOT NULL,
    role VARCHAR(100) NOT NULL CHECK ((role = 'Customer Manager') OR (role = 'Cinema Manager')),
    cinema_id INT(11) NOT NULL,

    PRIMARY KEY (id_manager),
    FOREIGN KEY (id_manager, role) REFERENCES UserRole(user_id, user_role),
    FOREIGN KEY (cinema_id) REFERENCES Cinema(id_cinema)
);

-- Création Vue CustomerManager
CREATE VIEW vw_CustomerManager AS
    SELECT  User.id_user AS id_user,
            User.email AS user_email, 
            CinemaPerManager.role AS user_role,
            Cinema.name AS works_for

    FROM CinemaPerManager

    INNER JOIN User ON CinemaPerManager.id_manager = User.id_user
    INNER JOIN Cinema ON CinemaPerManager.cinema_id = Cinema.id_cinema

    WHERE CinemaPerManager.role = 'Customer Manager'

    ORDER BY email
;

-- Création Vue CinemaManager
CREATE VIEW vw_CinemaManager AS
    SELECT  User.id_user AS id_user,
            User.email AS user_email, 
            CinemaPerManager.role AS user_role,
            Cinema.name AS works_for

    FROM CinemaPerManager

    INNER JOIN User ON CinemaPerManager.id_manager = User.id_user
    INNER JOIN Cinema ON CinemaPerManager.cinema_id = Cinema.id_cinema

    WHERE CinemaPerManager.role = 'Cinema Manager'

    ORDER BY email
;

-- Création Table Screen dépendante de Cinema
CREATE TABLE Screen(
    cinema_id INT(11) NOT NULL,
    screen_number INT(11) NOT NULL,
    total_amount_seats INT(11) NOT NULL,

    PRIMARY KEY (cinema_id, screen_number),
    FOREIGN KEY (cinema_id) REFERENCES Cinema(id_cinema)
);

-- Création Vue listant les cinémas et leurs salles
CREATE VIEW vw_ScreenByCinema AS 
    SELECT  Cinema.id_cinema AS cinema_id, 
            Cinema.name AS cinema_name, 
            screen_number, 
            total_amount_seats
    FROM Screen

    INNER JOIN Cinema
        ON Cinema.id_cinema = Screen.cinema_id

    ORDER BY Cinema.name, screen_number
;

-- Création Table Movie indépendante de Cinema
CREATE TABLE Movie(
    id_movie INT(11) NOT NULL AUTO_INCREMENT,
    title VARCHAR(50),
    description TEXT,
    duration_min INT(11),

    PRIMARY KEY (id_movie)
);

-- Création Table Screening qui relie Screen et Movie ensemble, à une date et un horaire définis
CREATE TABLE Screening(
    screening_id CHAR(36) NOT NULL UNIQUE,
    cinema_id INT(11) NOT NULL,
    screen_number INT(11) NOT NULL,
    date DATE NOT NULL,
    time TIME NOT NULL CHECK ((time = '10:30:00') OR (time = '14:00:00') OR (time = '17:30:00') OR (time = '21:00:00')), 
    movie_id INT(11) NOT NULL,

    PRIMARY KEY (cinema_id, screen_number, date, time),
    FOREIGN KEY (cinema_id, screen_number) REFERENCES Screen(cinema_id, screen_number),
    FOREIGN KEY (movie_id) REFERENCES Movie(id_movie)
);
-- ATTENTION ! 
-- Il faudrait pouvoir empêcher l'ajout d'une séance dans une salle tant que le film précédent n'est pas terminé.
-- > Problème résolu avec des horaires de séances prédéfinis tous les 3h30 (dans la limite où un film ne dure pas plus de 3h30 ...)

-- Création Vue listant l'ensemble des séances existantes et leur disponibilité (basée sur la date et l'heure de la séance)
CREATE VIEW vw_ScreeningList AS
    SELECT  Screening.screening_id AS screening_id,
            Screening.cinema_id AS cinema_id,
            Cinema.name AS cinema_name,
            Screening.screen_number AS screen_number,
            Movie.title AS movie_title,
            Movie.duration_min AS duration_minutes,
            DATE_FORMAT(Screening.date, "%Y-%m-%d" ) AS date, 
            DATE_FORMAT(Screening.time, "%T") AS time,
            DATE_FORMAT(SUBTIME(Screening.time, SEC_TO_TIME(Movie.duration_min * (-60))), "%T") AS ending_time

    FROM Screening

    INNER JOIN Cinema ON Cinema.id_cinema = Screening.cinema_id 

    INNER JOIN Screen ON Screen.cinema_id = Screening.cinema_id AND Screen.screen_number = Screening.screen_number

    INNER JOIN Movie 
        ON Movie.id_movie = Screening.movie_id

    ORDER BY Cinema.name, Screening.date, Screening.time, Screening.screen_number
;

-- Création Table Price
CREATE TABLE Price(
    id_price INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL UNIQUE,
    price DECIMAL(10,2) NOT NULL,
    currency VARCHAR(50) NOT NULL DEFAULT 'EUR',

    PRIMARY KEY (id_price)
);

-- Création View listant les tarifs applicables aux différents clients
CREATE VIEW vw_PricePerCustomer AS
    SELECT  vw_Customer.id_user AS id_user,
            vw_Customer.user_email AS user_email,
            vw_Customer.ticket_price_reduction AS ticket_price_reduction, 
            Price.id_price AS id_price

    FROM vw_Customer

    INNER JOIN Price ON vw_Customer.ticket_price_reduction = Price.name

    ORDER BY vw_Customer.user_email
;


-- Création Table TicketStatus
CREATE TABLE TicketStatus (
    id_status INT(11) NOT NULL AUTO_INCREMENT,
    name_status VARCHAR(100) NOT NULL UNIQUE,

    PRIMARY KEY (id_status)
);

-- Création Table Ticket 
CREATE TABLE Ticket (
    id_ticket CHAR(36) NOT NULL UNIQUE,
    booked_date DATE NOT NULL DEFAULT (CURRENT_DATE()),
    screening_id CHAR(36) NOT NULL,
    customer_manager_id CHAR(36) NOT NULL,
    customer_id CHAR(36) NOT NULL,
    price_id INT(11) NOT NULL,
    status_id INT(11) NOT NULL DEFAULT 1,

    PRIMARY KEY (id_ticket),
    FOREIGN KEY (screening_id) REFERENCES Screening(screening_id),
    FOREIGN KEY (customer_manager_id) REFERENCES CinemaPerManager(id_manager), 
    FOREIGN KEY (customer_id) REFERENCES User(id_user),
    FOREIGN KEY (price_id) REFERENCES Price(id_price),
    FOREIGN KEY (status_id) REFERENCES TicketStatus(id_status)
);


-- Création Vue Panier - Récapitulatif par client et par séances du nombres de tickets réservés (qui sont donc à payer) et leur prix
CREATE VIEW vw_Cart AS
    SELECT  Ticket.booked_date AS booked_date,
            User.email AS customer_email,
            Ticket.customer_manager_id AS customer_manager_id,
            Cinema.name AS cinema_name,
            Screening.screen_number AS screen_number,
            Movie.title AS movie_title,
            DATE_FORMAT(Screening.date, "%Y-%m-%d" ) AS date, 
            DATE_FORMAT(Screening.time, "%T") AS time,
            COUNT(Ticket.id_ticket) AS quantity,
            Price.price AS price_per_ticket,
            SUM(Price.price) AS total_price

    FROM Ticket

    INNER JOIN User ON Ticket.customer_id = User.id_user

    INNER JOIN Price ON Ticket.price_id = Price.id_price

    INNER JOIN Screening ON Ticket.screening_id = Screening.screening_id

    INNER JOIN Cinema ON Cinema.id_cinema = Screening.cinema_id 

    INNER JOIN Movie ON Movie.id_movie = Screening.movie_id

    WHERE Ticket.status_id = (SELECT id_status FROM TicketStatus WHERE name_status = 'Booked')

    GROUP BY Ticket.booked_date, User.email, Ticket.customer_manager_id, Cinema.name, Screening.screen_number, Screening.date, Screening.time, Price.price

    ORDER BY User.email, Cinema.name, Screening.screen_number, Screening.date, Screening.time
;


-- Création Vue listant l'ensemble des tickets disponibles et vendus par séance
CREATE VIEW vw_TicketPerScreening AS
    SELECT  Screening.screening_id AS screening_id,
            Screening.cinema_id AS cinema_id,
            Cinema.name AS cinema_name,
            Screening.screen_number AS screen_number,
            Movie.title AS movie_title,
            DATE_FORMAT(Screening.date, "%Y-%m-%d" ) AS date, 
            DATE_FORMAT(Screening.time, "%T") AS time,
            Screen.total_amount_seats AS total_amount_seats,
            COUNT(Ticket.id_ticket) AS amount_booked_ticket,
            (Screen.total_amount_seats - COUNT(Ticket.id_ticket)) AS amount_available_seats

    FROM Screening

    INNER JOIN Cinema   
        ON Cinema.id_cinema = Screening.cinema_id 

    INNER JOIN Screen   
        ON Screen.cinema_id = Screening.cinema_id 
        AND Screen.screen_number = Screening.screen_number

    INNER JOIN Movie    
        ON Movie.id_movie = Screening.movie_id

    LEFT JOIN Ticket
        ON Ticket.screening_id = Screening.screening_id
        AND Ticket.status_id != (SELECT id_status FROM TicketStatus WHERE name_status = 'Cancelled')

    GROUP BY Screening.cinema_id, cinema_name, Screening.screen_number, Screening.date, Screening.time

    ORDER BY Screening.cinema_id, cinema_name, Screening.date, Screening.time, Screening.screen_number
;
-- ATTENTION Affiche seulement les séances avec des tickets ayant été vendus
-- Corrigé avec un LEFT JOIN sur Ticket (initiallement en INNER JOIN)


-- Création Vue listant la disponibilité des séances (en fonction du nombre de sièges disponibles et de la date et l'heure de la séance)
CREATE VIEW vw_ScreeningAvailability AS
    SELECT  vw_TicketPerScreening.*,
            CASE
                WHEN ((DATEDIFF(date, CURRENT_DATE())) < 0) THEN 'Screening no longer available'
                WHEN ((DATEDIFF(date, CURRENT_DATE())) = 0) AND ((TIMEDIFF(time, CURRENT_TIME())) <= 0) THEN 'Screening no longer available'
                WHEN (amount_available_seats = 0) THEN 'No ticket available'
                ELSE 'Available for booking'
            END AS availability

    FROM vw_TicketPerScreening

    ORDER BY cinema_id, cinema_name, date, time, screen_number
;
