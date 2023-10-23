-- Insérer les utilisateurs

INSERT INTO USERS (id, firstName, lastName, email)
values (1, 'Ada', 'Lovelace', 'ada@example.com');
INSERT INTO USERS (id, firstName, lastName, email)
values (2, 'Alan', 'Turing', 'alan@example.com');
INSERT INTO USERS (id, firstName, lastName, email)
values (3, 'Grace', 'Hopper', 'grace@example.com');
INSERT INTO USERS (id, firstName, lastName, email)
values (4, 'Linus', 'Torvalds', 'linus@example.com');
INSERT INTO USERS (id, firstName, lastName, email)
values (5, 'Margaret', 'Hamilton', 'margaret@example.com');
INSERT INTO USERS (id, firstName, lastName, email)
values (6, 'Tim', 'Berners-Lee', 'tim@example.com');

-- Insérer les équipes
INSERT INTO teams (id, title, picturePath, startDate)
VALUES (1, '💻 Code Magicians', 'assets/img/team-1.png', TO_DATE('2023-08-31', 'YYYY-MM-DD'));
INSERT INTO teams (id, title, picturePath, startDate)
values (2, '🌐 Web Weavers', 'assets/img/team-2.png', TO_DATE('2023-09-15', 'YYYY-MM-DD'));
INSERT INTO teams (id, title, picturePath, startDate)
values (3, '🎮 Game Gurus', 'assets/img/team-3.png', TO_DATE('2023-09-30', 'YYYY-MM-DD'));
INSERT INTO teams (id, title, picturePath, startDate)
values (4, '✨ nouveau groupe', 'assets/img/team-4.png', TO_DATE('2023-09-30', 'YYYY-MM-DD'));

-- Insérer les relations entre utilisateurs et équipes (Team_User)
INSERT INTO Team_User (team_id, user_id) values (1, 1);
INSERT INTO Team_User (team_id, user_id) values (1, 2);
INSERT INTO Team_User (team_id, user_id) values (2, 4);
INSERT INTO Team_User (team_id, user_id) values (1, 3);
INSERT INTO Team_User (team_id, user_id) values (2, 5);
INSERT INTO Team_User (team_id, user_id) values (2, 6);
INSERT INTO Team_User (team_id, user_id) values (3, 1);
INSERT INTO Team_User (team_id, user_id) values (3, 3);
INSERT INTO Team_User (team_id, user_id) values (3, 5);
INSERT INTO Team_User (team_id, user_id) values (4, 1);
INSERT INTO Team_User (team_id, user_id) values (4, 3);
INSERT INTO Team_User (team_id, user_id) values (4, 5);

-- Insérer les transactions

INSERT INTO USER_DAM.TRANSACTIONS (id, title, description, amount, time, owner_id) VALUES (1, 'Salle Royale', 'Location pour soirée grandiose', 500.0, TO_DATE('2023-08-19', 'YYYY-MM-DD'), 1);
INSERT INTO USER_DAM.TRANSACTIONS (id, title, description, amount, time, owner_id) VALUES (2, 'Dîner Gourmand', 'Traiteur de plaisirs culinaires', 300.0, TO_DATE('2023-08-19', 'YYYY-MM-DD'),2);
INSERT INTO USER_DAM.TRANSACTIONS (id, title, description, amount, time, owner_id) VALUES (3, 'Feux d’Artifice ', 'Étincelles dans la nuit', 200.0, TO_DATE(' 2023-08-20 ', ' YYYY-MM-DD '), 3);
INSERT INTO USER_DAM.TRANSACTIONS (id, title, description, amount, time, owner_id) VALUES (4, ' Robe Étincelante ', 'Pour briller sous les projecteurs', 150.0, TO_DATE(' 2023-08-20 ', ' YYYY-MM-DD '), 4);
INSERT INTO USER_DAM.TRANSACTIONS (id, title, description, amount, time, owner_id) VALUES (5, ' Cours de Danse ', ' Pour impressionner sur la piste', 80.0, TO_DATE(' 2023-08-21 ', ' YYYY-MM-DD '), 5);
INSERT INTO USER_DAM.TRANSACTIONS (id, title, description, amount, time, owner_id) VALUES (6, ' Pansements Ampoules ', ' Achats préventifs pour la soirée ', 20.0, TO_DATE(' 2023-08-21 ', ' YYYY-MM-DD '), 6);
INSERT INTO USER_DAM.TRANSACTIONS (id, title, description, amount, time, owner_id) VALUES (7, ' Crampes de Danse ', ' Consultation d’urgence', 50.0, TO_DATE('2023-08-21', 'YYYY-MM-DD'), 1);
INSERT INTO USER_DAM.TRANSACTIONS (id, title, description, amount, time, owner_id) VALUES (8, 'Talons Impressionnants', 'Achats pour paraître plus grand(e)', 75.0, TO_DATE('2023-08-21', 'YYYY-MM-DD'), 2);
INSERT INTO USER_DAM.TRANSACTIONS (id, title, description, amount, time, owner_id) VALUES (9, 'Tapis Rouge', 'Pour entrées spectaculaires', 30.0, TO_DATE('2023-08-21', 'YYYY-MM-DD'), 3);
INSERT INTO USER_DAM.TRANSACTIONS (id, title, description, amount, time, owner_id) VALUES (10, 'Piste de Danse VIP', 'Réservation exclusive mondiale', 1000.0, TO_DATE('2023-08-22', 'YYYY-MM-DD'), 4);
INSERT INTO USER_DAM.TRANSACTIONS (id, title, description, amount, time, owner_id) VALUES (11, 'Chapeaux Fous', 'Pour suivre le thème de la soirée', 45.0, TO_DATE('2023-08-22', 'YYYY-MM-DD'), 5);
INSERT INTO USER_DAM.TRANSACTIONS (id, title, description, amount, time, owner_id) VALUES (12, 'Discours Inspirants', 'Cours intensif pour briller à la tribune', 150.0, TO_DATE('2023-08-22', 'YYYY-MM-DD'), 6);
INSERT INTO USER_DAM.TRANSACTIONS (id, title, description, amount, time, owner_id) VALUES (13, 'Feu d’Artifice Précoce ', ' Oups, c’était une étincelle accidentelle', 15.0, TO_DATE('2023-08-22', 'YYYY-MM-DD'), 1);
INSERT INTO USER_DAM.TRANSACTIONS (id, title, description, amount, time, owner_id) VALUES (14, 'Coach de Selfies', 'Apprenez l’art de la pose parfaite ', 40.0, TO_DATE(' 2023-08-23 ', ' YYYY-MM-DD '), 2);
INSERT INTO USER_DAM.TRANSACTIONS (id, title, description, amount, time, owner_id) VALUES (15, ' Achats de Confettis ', ' Pour rendre chaque moment éclatant ', 10.0, TO_DATE(' 2023-08-23 ', ' YYYY-MM-DD '), 3);
INSERT INTO USER_DAM.TRANSACTIONS (id, title, description, amount, time, owner_id) VALUES (16, ' Chauffeur de Limo ', ' Arrivez en style...et en retard ', 200.0, TO_DATE(' 2023-08-24 ', ' YYYY-MM-DD '), 4);
INSERT INTO USER_DAM.TRANSACTIONS (id, title, description, amount, time, owner_id) VALUES (17, ' Élégance Extrême ', ' Achat de gants blancs assortis ', 25.0, TO_DATE(' 2023-08-24 ', ' YYYY-MM-DD '), 5);
INSERT INTO USER_DAM.TRANSACTIONS (id, title, description, amount, time, owner_id) VALUES (18, ' Cours de Rires Contagieux ', ' Fou rire garanti en une leçon ', 30.0, TO_DATE(' 2023-08-24 ', ' YYYY-MM-DD '), 6);
INSERT INTO USER_DAM.TRANSACTIONS (id, title, description, amount, time, owner_id) VALUES (19, ' Micro pour Discours Épiques ', ' Se sentir comme un leader inspirant ', 50.0, TO_DATE(' 2023-08-24 ', ' YYYY-MM-DD '), 1);
INSERT INTO USER_DAM.TRANSACTIONS (id, title, description, amount, time, owner_id) VALUES (20, ' Photobooth Fantastique ', ' Souvenirs photogéniques garantis ', 70.0, TO_DATE(' 2023-08-25 ', ' YYYY-MM-DD '), 2);

commit;