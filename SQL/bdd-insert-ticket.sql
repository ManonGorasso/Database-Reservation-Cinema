-- REMPLISSAGE DES TABLES AVEC DE FAUSSES DONNEES

-- Insertion données Table Ticket
INSERT INTO Ticket(id_ticket, screening_id, customer_manager_id, customer_id, price_id, status_id)
    VALUES
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 1
                AND date = '2023-07-05'
                AND time = '10:30:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'deandre_meade000@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'deandre_meade000@email.com'), 2),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 1
                AND date = '2023-07-08'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'deandre_meade000@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'deandre_meade000@email.com'), 1)
;

INSERT INTO Ticket(id_ticket, screening_id, customer_manager_id, customer_id, price_id, status_id)
    VALUES
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 1
                AND date = '2023-07-05'
                AND time = '10:30:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'hilary.chun11743@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'zita01920@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'zita01920@email.com'), 2),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 1
                AND date = '2023-07-08'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'hilary.chun11743@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'zita01920@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'zita01920@email.com'), 1)
;

INSERT INTO Ticket(id_ticket, screening_id, customer_manager_id, customer_id, price_id, status_id)
    VALUES
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-06'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'erlinda.levi@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'erlinda.levi@email.com'), 2),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-06'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'erlinda.levi@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'erlinda.levi@email.com'), 2),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-06'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'erlinda.levi@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'erlinda.levi@email.com'), 2),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-06'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'erlinda.levi@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'erlinda.levi@email.com'), 2),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 2
                AND date = '2023-07-08'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'alicavilla7515@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'erlinda.levi@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'erlinda.levi@email.com'), 1),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 2
                AND date = '2023-07-08'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'alicavilla7515@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'erlinda.levi@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'erlinda.levi@email.com'), 1),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 2
                AND date = '2023-07-08'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'alicavilla7515@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'erlinda.levi@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'erlinda.levi@email.com'), 1)
;

INSERT INTO Ticket(id_ticket, screening_id, customer_manager_id, customer_id, price_id, status_id)
    VALUES
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-06'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'hilary.chun11743@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'vivien.nelms@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'vivien.nelms@email.com'), 2),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-06'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'hilary.chun11743@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'vivien.nelms@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'vivien.nelms@email.com'), 2),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-06'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'hilary.chun11743@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'vivien.nelms@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'vivien.nelms@email.com'), 2),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-06'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'hilary.chun11743@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'vivien.nelms@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'vivien.nelms@email.com'), 2),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 2
                AND date = '2023-07-08'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'vivien.nelms@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'vivien.nelms@email.com'), 2),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 2
                AND date = '2023-07-08'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'vivien.nelms@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'vivien.nelms@email.com'), 2),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 2
                AND date = '2023-07-08'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'vivien.nelms@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'vivien.nelms@email.com'), 2)
;

INSERT INTO Ticket(id_ticket, screening_id, customer_manager_id, customer_id, price_id, status_id)
    VALUES
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 4
                AND date = '2023-07-06'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'estela00833@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'estela00833@email.com'), 1),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 4
                AND date = '2023-07-06'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'estela00833@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'estela00833@email.com'), 1),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 4
                AND date = '2023-07-06'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'estela00833@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'estela00833@email.com'), 1),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 4
                AND date = '2023-07-06'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'estela00833@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'estela00833@email.com'), 1),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 2
                AND date = '2023-07-08'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'raisa-ritchie@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'estela00833@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'estela00833@email.com'), 2),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 2
                AND date = '2023-07-08'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'raisa-ritchie@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'estela00833@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'estela00833@email.com'), 2),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 2
                AND date = '2023-07-08'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'raisa-ritchie@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'estela00833@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'estela00833@email.com'), 2)
;

INSERT INTO Ticket(id_ticket, screening_id, customer_manager_id, customer_id, price_id, status_id)
    VALUES
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 3
                AND date = '2023-07-07'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'colene_parent@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'colene_parent@email.com'), 2),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 3
                AND date = '2023-07-07'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'colene_parent@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'colene_parent@email.com'), 2),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 2
                AND date = '2023-07-09'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'colene_parent@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'colene_parent@email.com'), 1),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 2
                AND date = '2023-07-09'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'colene_parent@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'colene_parent@email.com'), 1),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 1
                AND date = '2023-07-09'
                AND time = '17:30:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'raisa-ritchie@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'colene_parent@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'colene_parent@email.com'), 1),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 1
                AND date = '2023-07-09'
                AND time = '17:30:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'raisa-ritchie@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'colene_parent@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'colene_parent@email.com'), 1)
;

INSERT INTO Ticket(id_ticket, screening_id, customer_manager_id, customer_id, price_id, status_id)
    VALUES
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 3
                AND date = '2023-07-07'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'dorothea.daigle@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'dorothea.daigle@email.com'), 2),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 3
                AND date = '2023-07-07'
                AND time = '21:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'dorothea.daigle@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'dorothea.daigle@email.com'), 2),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 2
                AND date = '2023-07-09'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'dorothea.daigle@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'dorothea.daigle@email.com'), 1),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 2
                AND date = '2023-07-09'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'dorothea.daigle@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'dorothea.daigle@email.com'), 1),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 1
                AND date = '2023-07-09'
                AND time = '17:30:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'raisa-ritchie@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'dorothea.daigle@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'dorothea.daigle@email.com'), 1),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 1
                AND date = '2023-07-09'
                AND time = '17:30:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'raisa-ritchie@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'dorothea.daigle@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'dorothea.daigle@email.com'), 1)
;

INSERT INTO Ticket(id_ticket, screening_id, customer_manager_id, customer_id, price_id)
    VALUES
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 6
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'brenda-keenan2550@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'brenda-keenan2550@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 6
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'brenda-keenan2550@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'brenda-keenan2550@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 6
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'brenda-keenan2550@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'brenda-keenan2550@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 6
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'brenda-keenan2550@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'brenda-keenan2550@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 6
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'brenda-keenan2550@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'brenda-keenan2550@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 6
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'brenda-keenan2550@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'brenda-keenan2550@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 6
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'brenda-keenan2550@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'brenda-keenan2550@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 6
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'brenda-keenan2550@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'brenda-keenan2550@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 6
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'brenda-keenan2550@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'brenda-keenan2550@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 6
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'brenda-keenan2550@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'brenda-keenan2550@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 6
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'brenda-keenan2550@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'brenda-keenan2550@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 6
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'brenda-keenan2550@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'brenda-keenan2550@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 6
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'brenda-keenan2550@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'brenda-keenan2550@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 6
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'brenda-keenan2550@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'brenda-keenan2550@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 6
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'brenda-keenan2550@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'brenda-keenan2550@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 6
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'brenda-keenan2550@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'brenda-keenan2550@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 6
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'brenda-keenan2550@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'brenda-keenan2550@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 6
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'brenda-keenan2550@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'brenda-keenan2550@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 6
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'brenda-keenan2550@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'brenda-keenan2550@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Kinépolis Saint-Julien-lès-Metz' 
                AND screen_number = 6
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'billie_bucher@email.com' AND works_for = 'Kinépolis Saint-Julien-lès-Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'brenda-keenan2550@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'brenda-keenan2550@email.com'))
;

INSERT INTO Ticket(id_ticket, screening_id, customer_manager_id, customer_id, price_id)
    VALUES
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'louveniashook@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'louveniashook@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'louveniashook@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'louveniashook@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'louveniashook@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'louveniashook@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'louveniashook@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'louveniashook@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'louveniashook@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'louveniashook@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'louveniashook@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'louveniashook@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'louveniashook@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'louveniashook@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'louveniashook@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'louveniashook@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'louveniashook@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'louveniashook@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'louveniashook@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'louveniashook@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'louveniashook@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'louveniashook@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'louveniashook@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'louveniashook@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'louveniashook@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'louveniashook@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'louveniashook@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'louveniashook@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'louveniashook@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'louveniashook@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'louveniashook@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'louveniashook@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'louveniashook@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'louveniashook@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'louveniashook@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'louveniashook@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'louveniashook@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'louveniashook@email.com')),   
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Klub Metz' 
                AND screen_number = 3
                AND date = '2023-07-10'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'stevie_good2819@email.com' AND works_for = 'Klub Metz'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'louveniashook@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'louveniashook@email.com'))
;

INSERT INTO Ticket(id_ticket, screening_id, customer_manager_id, customer_id, price_id)
    VALUES
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com')),
    (UUID(), 
        (SELECT screening_id FROM vw_ScreeningAvailability 
            WHERE cinema_name = 'Marlymages' 
                AND screen_number = 3
                AND date = '2023-07-11'
                AND time = '14:00:00'
                AND availability = 'Available for booking'),
        (SELECT id_user FROM vw_CustomerManager WHERE user_email = 'shizuko-flores274@email.com' AND works_for = 'Marlymages'), 
        (SELECT id_user FROM vw_Customer WHERE user_email = 'suzie-fine@email.com'), 
        (SELECT id_price FROM vw_PricePerCustomer WHERE user_email = 'suzie-fine@email.com'))    
;
