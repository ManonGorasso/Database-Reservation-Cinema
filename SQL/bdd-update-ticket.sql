-- UPDATE DONNEES

-- Update Paiement d'un billet réservé
UPDATE Ticket 
    SET status_id = (SELECT id_status FROM TicketStatus WHERE name_status = 'Payed')
    WHERE 
        screening_id = (SELECT screening_id FROM vw_ScreeningAvailability 
                            WHERE cinema_name = 'Marlymages'    -- nom du cinéma
                                AND screen_number = 2           -- numéro de salle
                                AND date = '2023-07-08'         -- date de la séance
                                AND time = '21:00:00')          -- heure de la séance
        AND customer_id = (SELECT id_user FROM vw_Customer WHERE user_email = 'erlinda.levi@email.com') -- email client
        AND status_id =  (SELECT id_status FROM TicketStatus WHERE name_status = 'Booked')
    ORDER BY id_ticket ASC
    LIMIT 2 -- nombre de tickets à mettre à jour (ici 2)
;

-- Update Annulation d'un billet réservé
UPDATE Ticket 
    SET status_id = (SELECT id_status FROM TicketStatus WHERE name_status = 'Cancelled')
    WHERE 
        screening_id = (SELECT screening_id FROM vw_ScreeningAvailability 
                            WHERE cinema_name = 'Marlymages'    -- nom du cinéma
                                AND screen_number = 2           -- numéro de salle
                                AND date = '2023-07-08'         -- date de la séance
                                AND time = '21:00:00')          -- heure de la séance
        AND customer_id = (SELECT id_user FROM vw_Customer WHERE user_email = 'erlinda.levi@email.com') -- email client
        AND status_id =  (SELECT id_status FROM TicketStatus WHERE name_status = 'Booked')

    ORDER BY id_ticket ASC
    LIMIT 1 -- nombre de tickets à mettre à jour (ici 1)
; 

-- Update Annulation d'un billet payé
UPDATE Ticket 
    SET status_id = (SELECT id_status FROM TicketStatus WHERE name_status = 'Cancelled')
    WHERE 
        screening_id = (SELECT screening_id FROM vw_ScreeningAvailability 
                            WHERE cinema_name = 'Marlymages'    -- nom du cinéma
                                AND screen_number = 3           -- numéro de salle
                                AND date = '2023-07-06'         -- date de la séance
                                AND time = '21:00:00')          -- heure de la séance
        AND customer_id = (SELECT id_user FROM vw_Customer WHERE user_email = 'erlinda.levi@email.com') -- email client
        AND status_id =  (SELECT id_status FROM TicketStatus WHERE name_status = 'Payed')

    ORDER BY id_ticket ASC 
    LIMIT 2 -- nombre de tickets à mettre à jour (ici 1)
; 
