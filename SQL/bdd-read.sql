-- INTERROGATION DE LA BASE DE DONNEES

-- Liste les tables de la base de données et leur type
SHOW FULL TABLES;

-- Liste les colonnes d'une table donnée (ici, TableName)
SHOW COLUMNS FROM TableName;

-- Récupère les informations pour une salle donnée dans un cinéma donné
SELECT cinema_name, screen_number, total_amount_seats
    FROM vw_ScreenByCinema
    WHERE cinema_name = 'Klub Metz' AND screen_number = 1
;

-- récupère les informations pour un numéro de salle donnée, tous cinémas confondus
SELECT cinema_name, screen_number, total_amount_seats
    FROM vw_ScreenByCinema
    WHERE screen_number = 2
;

-- Récupère les informations de toutes les salles de tous les cinémas
SELECT cinema_name, screen_number, total_amount_seats
    FROM vw_ScreenByCinema
    WHERE cinema_name = 'Marlymages'
;

-- Récupère les tarifs applicables à chaque client
SELECT vw_Customer.user_email, vw_Customer.ticket_price_reduction, Price.price, Price.currency
    FROM vw_Customer

    INNER JOIN Price ON ticket_price_reduction = Price.name

    ORDER BY user_email
;

-- Récupère la liste des clients de moins de 14 ans
SELECT vw_Customer.user_email, vw_Customer.ticket_price_reduction, Price.price, Price.currency
    FROM vw_Customer

    INNER JOIN Price ON ticket_price_reduction = Price.name

    WHERE ticket_price_reduction = 'Moins de 14 ans'

    ORDER BY user_email
;

-- Récupère la liste des clients étudiants
SELECT vw_Customer.user_email, vw_Customer.ticket_price_reduction, Price.price, Price.currency
    FROM vw_Customer

    INNER JOIN Price ON ticket_price_reduction = Price.name

    WHERE ticket_price_reduction = 'Etudiant'

    ORDER BY user_email
;

-- Affiche le panier du client choisi à la date du jour
SELECT * FROM vw_Cart 
    WHERE (booked_date = CURRENT_DATE()) 
        AND (customer_email = 'erlinda.levi@email.com')     -- email client
;

SELECT * FROM vw_Cart 
    WHERE (booked_date = CURRENT_DATE()) 
        AND (customer_email = 'dorothea.daigle@email.com')  -- email client
;

-- Affiche la liste des séances pour lesquelles des billets ont été achetés
SELECT * FROM vw_ScreeningAvailability
    WHERE amount_booked_ticket != 0
;

-- Affiche la liste des tickets réservés / achetés / annulés par un client donné (pour visualiser le changement de status des tickets suite aux updates)
SELECT * FROM Ticket
    WHERE customer_id = (SELECT id_user FROM User WHERE email = 'erlinda.levi@email.com') -- email client
;
