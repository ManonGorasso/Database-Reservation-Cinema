-- REMPLISSAGE DES TABLES AVEC DE FAUSSES DONNEES

-- Insertion données Table Screening 

-- Insertion de séances dont la date de diffusion est dépassée pour tester les contraintes de réservation d'une séance dont la date est passée
INSERT INTO Screening (screening_id, cinema_id, screen_number, movie_id, date, time)
    VALUES
    -- 2023-03-15 Kinepolis Saint-Julien-lès-Metz
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-03-15', '10:30:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-03-15', '10:30:00'),

    -- 2023-03-17 Klub Metz
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-03-17', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-03-17', '14:00:00'),
    
    -- 2023-04-16 Marlymages
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-04-16', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-04-16', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-04-16', '21:00:00')
;

-- Insertion de futures séances
-- (Prévoir sur une semaine - Mercredi 2023-07-05 à mardi 2023-07-11 - Séances à 10h30 / 14h00 / 17h30 / 21h00 - Pour chaque salle et chaque film)
INSERT INTO Screening (screening_id, cinema_id, screen_number, movie_id, date, time)
    VALUES
    -- 2023-07-05 Kinepolis Saint-Julien-lès-Metz
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-05', '10:30:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-05', '10:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-05', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-05', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-05', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-05', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-05', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-05', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-05', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-05', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-05', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-05', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-05', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-05', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-05', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-05', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-05', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-05', '21:00:00'),

    -- 2023-07-06 Kinepolis Saint-Julien-lès-Metz
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-06', '10:30:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-06', '10:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-06', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-06', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-06', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-06', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-06', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-06', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-06', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-06', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-06', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-06', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-06', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-06', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-06', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-06', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-06', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-06', '21:00:00'),

    -- 2023-07-07 Kinepolis Saint-Julien-lès-Metz
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-07', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-07', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-07', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-07', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-07', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-07', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-07', '17:30:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-07', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-07', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-07', '17:30:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-07', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-07', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-07', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-07', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-07', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-07', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-07', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-07', '21:00:00'),

    -- 2023-07-08 Kinepolis Saint-Julien-lès-Metz
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-08', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-08', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-08', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-08', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-08', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-08', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-08', '17:30:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-08', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-08', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-08', '17:30:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-08', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-08', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-08', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-08', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-08', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-08', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-08', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-08', '21:00:00'),
    
    -- 2023-07-09 Kinepolis Saint-Julien-lès-Metz
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-09', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-09', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-09', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-09', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-09', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-09', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-09', '17:30:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-09', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-09', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-09', '17:30:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-09', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-09', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-09', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-09', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-09', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-09', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-09', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-09', '21:00:00'),
    
    -- 2023-07-10 Kinepolis Saint-Julien-lès-Metz
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-10', '10:30:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-10', '10:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-10', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-10', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-10', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-10', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-10', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-10', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-10', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-10', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-10', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-10', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-10', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-10', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-10', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-10', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-10', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-10', '21:00:00'),

    -- 2023-07-11 Kinepolis Saint-Julien-lès-Metz
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-11', '10:30:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-11', '10:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-11', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-11', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-11', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-11', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-11', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-11', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-11', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-11', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-11', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-11', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-11', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-11', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-11', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 4, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-11', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 5, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-11', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Kinepolis Saint-Julien-lès-Metz'), 6, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-11', '21:00:00'),

    -- 2023-07-05 Klub Metz
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-05', '10:30:00'), 

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-05', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-05', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-05', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-05', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-05', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-05', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-05', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-05', '21:00:00'),

    -- 2023-07-06 Klub Metz
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-06', '10:30:00'), 

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-06', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-06', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-06', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-06', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-06', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-06', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-06', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-06', '21:00:00'),

    -- 2023-07-07 Klub Metz
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-07', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-07', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-07', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-07', '17:30:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-07', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-07', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-07', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-07', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-07', '21:00:00'),

    -- 2023-07-08 Klub Metz
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-08', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-08', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-08', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-08', '17:30:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-08', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-08', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-08', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-08', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-08', '21:00:00'),

    -- 2023-07-09 Klub Metz
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-09', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-09', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-09', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-09', '17:30:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-09', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-09', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-09', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-09', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-09', '21:00:00'),
    
    -- 2023-07-10 Klub Metz
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-10', '10:30:00'), 

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-10', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-10', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-10', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-10', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-10', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-10', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-10', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-10', '21:00:00'),

    -- 2023-07-11 Klub Metz
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-11', '10:30:00'), 

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-11', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-11', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-11', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-11', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-11', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-11', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-11', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Klub Metz'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-11', '21:00:00'),

    -- 2023-07-05 Marlymages
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-05', '10:30:00'), 

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-05', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-05', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-05', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-05', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-05', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-05', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-05', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-05', '21:00:00'),

    -- 2023-07-06 Marlymages
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-06', '10:30:00'), 

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-06', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-06', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-06', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-06', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-06', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-06', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-06', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-06', '21:00:00'),

    -- 2023-07-07 Marlymages
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-07', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-07', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-07', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-07', '17:30:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-07', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-07', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-07', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-07', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-07', '21:00:00'),

    -- 2023-07-08 Marlymages
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-08', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-08', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-08', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-08', '17:30:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-08', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-08', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-08', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-08', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-08', '21:00:00'),

    -- 2023-07-09 Marlymages
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-09', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-09', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-09', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-09', '17:30:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-09', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-09', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-09', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-09', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-09', '21:00:00'),
    
    -- 2023-07-10 Marlymages
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-10', '10:30:00'), 

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-10', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-10', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-10', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-10', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-10', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-10', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-10', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-10', '21:00:00'),

    -- 2023-07-11 Marlymages
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-11', '10:30:00'), 

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-11', '14:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-11', '14:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-11', '14:00:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Super Mario Bros'), '2023-07-11', '17:30:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-11', '17:30:00'),

    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 1, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-11', '21:00:00'), 
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 2, (SELECT id_movie FROM Movie WHERE title = 'Suzume'), '2023-07-11', '21:00:00'),
    (UUID(), (SELECT id_cinema FROM Cinema WHERE name = 'Marlymages'), 3, (SELECT id_movie FROM Movie WHERE title = 'Shazam! 2'), '2023-07-11', '21:00:00')
;
