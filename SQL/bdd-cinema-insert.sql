-- REMPLISSAGE DES TABLES AVEC DE FAUSSES DONNEES

-- Insertion données Table Role
INSERT INTO Role (role_name)
    VALUES
    ('Customer'),
    ('Customer Manager'),
    ('Cinema Manager'),
    ('Administrator')
;

-- Insertion données Table User
INSERT INTO User (id_user, email, username, password, is_student, birthday)
    VALUES
    (UUID(), 'henry-cano1@email.com', 'CanoH', SHA1('BrDF4NkK5jKuM!5c'), 0, '1992-09-15'),         
    (UUID(), 'lee-barron466@email.com', 'LeBaron', SHA1('Ngjpa5#f?#FS=7?f'), 0, '1983-02-14'),      
    (UUID(), 'samanthaadams9470@email.com', 'Sami', SHA1('xq@Ax3HQ?tzx%P+n'), 0, '2000-07-13'),    
    (UUID(), 'jaquelyn0@email.com', 'Jaquelyn', SHA1('4Af^?ALLZx#9F#tV'), 0, '1998-11-19'),       
    (UUID(), 'felecia_sills@email.com', 'SillyF', SHA1('Q#_9#jv#hPn?r4vc'), 0, '1996-12-17'),      
    (UUID(), 'raisa-ritchie@email.com', 'RitchieR', SHA1('2Y$&SptuTeDPfQuY'), 0, '1990-05-04'),    
    (UUID(), 'billie_bucher@email.com', 'BillieB', SHA1('8UybGr#hWRzw#h-_'), 1, '2001-08-25'),     
    (UUID(), 'hilary.chun11743@email.com', 'Chunk', SHA1('8bTQP^Uvy3YDWbvd'), 0, '1993-07-23'),    
    (UUID(), 'stevie_good2819@email.com', 'Good2819', SHA1('q5scrLE#m!7u=qK-'), 1, '2002-07-16'),  
    (UUID(), 'alicavilla7515@email.com', 'Alice', SHA1('_5+9zMBuV**!Z$m='), 0, '1989-11-24'),      
    (UUID(), 'shizuko-flores274@email.com', 'Shizuko', SHA1('7dn5n!pM?G*ae+bY'), 1, '2000-10-27'),  
    (UUID(), 'deandre_meade000@email.com', 'DeandreM', SHA1('85SA7&48Er9Sr-yq'), 0, '2010-03-15'), 
    (UUID(), 'colene_parent@email.com', 'Colene', SHA1('d#bE3+@xx%ES45Q-'), 0, '2008-05-18'),      
    (UUID(), 'estela00833@email.com', 'Estelle', SHA1('^Dhp4aRjHwRS8!SZ'), 1, '2002-08-04'),        
    (UUID(), 'brenda-keenan2550@email.com', 'BrendaK', SHA1('b4Mtyz_9Q=TQEA8+'), 0, '1985-10-04'),
    (UUID(), 'zita01920@email.com', 'Zita1920', SHA1('?+hgYhQ4+mRp$2e^'), 0, '2013-07-14'),      
    (UUID(), 'vivien.nelms@email.com', 'Nelms42', SHA1('5XJ@w&2A$gXt7#LY'), 1, '2004-05-27'),    
    (UUID(), 'louveniashook@email.com', 'ShookL', SHA1('9CWH-@8zC=3WQd6$'), 0, '1992-04-13'),    
    (UUID(), 'dorothea.daigle@email.com', 'Dorothea', SHA1('4x@XA6WsyVHAuU^a'), 0, '2005-12-22'),
    (UUID(), 'erlinda.levi@email.com', 'LeviS', SHA1('TKx@MtnBR7+c+Jbe'), 1, '2003-04-16'),        
    (UUID(), 'suzie-fine@email.com', 'FineS', SHA1('2C&BZ_EN%tQU-C^6'), 0, '1997-09-26')       
;
-- Le mot de passe est hashé avec la fonction SHA1()

-- Insertion données Table UserRole
INSERT INTO UserRole (user_id, user_role)
    VALUES
    ((SELECT id_user FROM User WHERE email ='henry-cano1@email.com'), 'Administrator'),
    ((SELECT id_user FROM User WHERE email ='lee-barron466@email.com'), 'Administrator'),
    ((SELECT id_user FROM User WHERE email ='samanthaadams9470@email.com'), 'Cinema Manager'),
    ((SELECT id_user FROM User WHERE email ='jaquelyn0@email.com'), 'Cinema Manager'),
    ((SELECT id_user FROM User WHERE email ='felecia_sills@email.com'), 'Cinema Manager'),
    ((SELECT id_user FROM User WHERE email ='raisa-ritchie@email.com'), 'Customer Manager'),
    ((SELECT id_user FROM User WHERE email ='billie_bucher@email.com'), 'Customer Manager'),
    ((SELECT id_user FROM User WHERE email ='hilary.chun11743@email.com'), 'Customer Manager'),
    ((SELECT id_user FROM User WHERE email ='stevie_good2819@email.com'), 'Customer Manager'),
    ((SELECT id_user FROM User WHERE email ='alicavilla7515@email.com'), 'Customer Manager'),
    ((SELECT id_user FROM User WHERE email ='shizuko-flores274@email.com'), 'Customer Manager'),
    ((SELECT id_user FROM User WHERE email ='deandre_meade000@email.com'), 'Customer'),
    ((SELECT id_user FROM User WHERE email ='colene_parent@email.com'), 'Customer'),
    ((SELECT id_user FROM User WHERE email ='estela00833@email.com'), 'Customer'),
    ((SELECT id_user FROM User WHERE email ='brenda-keenan2550@email.com'), 'Customer'),
    ((SELECT id_user FROM User WHERE email ='zita01920@email.com'), 'Customer'),
    ((SELECT id_user FROM User WHERE email ='vivien.nelms@email.com'), 'Customer'),
    ((SELECT id_user FROM User WHERE email ='louveniashook@email.com'), 'Customer'),
    ((SELECT id_user FROM User WHERE email ='dorothea.daigle@email.com'), 'Customer'),
    ((SELECT id_user FROM User WHERE email ='erlinda.levi@email.com'), 'Customer'),
    ((SELECT id_user FROM User WHERE email ='suzie-fine@email.com'), 'Customer')
;

-- Insertion données Table Cinema
INSERT INTO Cinema (name, address, city, post_code, phone_number)
    VALUES 
    ('Kinépolis Saint-Julien-lès-Metz', '10 Avenue Paul Langevin', 'St-Julien-Lès-Metz', '57070', '0387758450'),
    ('Klub Metz', '5 Rue Fabert', 'Metz', '57000', '0387696920'),
    ('Marlymages', '39 Rue de Metz', 'Marly', '57155', '0975674000')
;

-- Insertion données Table Manager (ajout du cinéma associé aux Users qui ont un rôle de Manager)
INSERT INTO CinemaPerManager (id_manager, role, cinema_id)
    VALUES
    ((SELECT id_user FROM User WHERE email ='samanthaadams9470@email.com'), 'Cinema Manager', (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz')),
    ((SELECT id_user FROM User WHERE email ='jaquelyn0@email.com'), 'Cinema Manager', (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz')),
    ((SELECT id_user FROM User WHERE email ='felecia_sills@email.com'), 'Cinema Manager', (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages')),
    ((SELECT id_user FROM User WHERE email ='raisa-ritchie@email.com'), 'Customer Manager', (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz')),
    ((SELECT id_user FROM User WHERE email ='billie_bucher@email.com'), 'Customer Manager', (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz')),
    ((SELECT id_user FROM User WHERE email ='hilary.chun11743@email.com'), 'Customer Manager', (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz')),
    ((SELECT id_user FROM User WHERE email ='stevie_good2819@email.com'), 'Customer Manager', (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz')),
    ((SELECT id_user FROM User WHERE email ='alicavilla7515@email.com'), 'Customer Manager', (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages')),
    ((SELECT id_user FROM User WHERE email ='shizuko-flores274@email.com'), 'Customer Manager', (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'))
;

-- Insertion données Table Screen
INSERT INTO Screen (cinema_id, screen_number, total_amount_seats)
    VALUES
    ((SELECT id_cinema FROM Cinema WHERE name = 'Kinépolis Saint-Julien-lès-Metz'), 1, 120),
    ((SELECT id_cinema FROM Cinema WHERE name = 'Kinépolis Saint-Julien-lès-Metz'), 2, 60),
    ((SELECT id_cinema FROM Cinema WHERE name = 'Kinépolis Saint-Julien-lès-Metz'), 3, 60),
    ((SELECT id_cinema FROM Cinema WHERE name = 'Kinépolis Saint-Julien-lès-Metz'), 4, 40),
    ((SELECT id_cinema FROM Cinema WHERE name = 'Kinépolis Saint-Julien-lès-Metz'), 5, 30),
    ((SELECT id_cinema FROM Cinema WHERE name = 'Kinépolis Saint-Julien-lès-Metz'), 6, 20),
    ((SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, 60),
    ((SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, 40),
    ((SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, 20),
    ((SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, 80),
    ((SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, 50),
    ((SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, 30)
;

-- Insertion données Table Movie
INSERT INTO Movie (title, description, duration_min)
    VALUES
    ('Suzume', 'Dans une petite ville paisible de Kyushu, une jeune fille de 17 ans, Suzume, rencontre un homme qui dit voyager à la recherche d’une porte. [...] Guidée par des portes nimbées de mystère, elle entame un périple afin de toutes les refermer.', 122),
    ('Super Mario Bros', 'Alors qu’ils tentent de réparer une canalisation souterraine, Mario et son frère Luigi, tous deux plombiers, se retrouvent plongés dans un nouvel univers féerique à travers un mystérieux conduit.', 92),
    ('Shazam! 2', "Suite des aventures de Billy Batson, ado capable de devenir un super-héros adulte lorsqu'il prononce le mot 'Shazam !'.", 130)
;

-- Insertion données Table Price
INSERT INTO Price (name, price)
    VALUES
    ('Plein tarif', 9.20),
    ('Etudiant', 7.60),
    ('Moins de 14 ans', 5.90)
;

-- Insertion des status possibles pour un ticket
INSERT INTO TicketStatus (name_status)
    VALUES
    ('Booked'),
    ('Payed'),
    ('Cancelled')
;
