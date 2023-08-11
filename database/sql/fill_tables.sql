
-- Inserting consoles
INSERT INTO Console (device_name) VALUES ('PlayStation'), ('Xbox'), ('Nintendo Switch'), ('PC');

-- Inserting videogames for PlayStation
INSERT INTO Videogame (game_name, year_released, publisher, stock, summary) VALUES 
('The Last of Us Part II', 2020, 'Naughty Dog', 1000, 'An action-adventure game set in a post-apocalyptic world.'),
('Ghost of Tsushima', 2020, 'Sucker Punch Productions', 800, 'Samurai action in feudal Japan.'),
('God of War', 2018, 'Santa Monica Studio', 1100, 'Norse mythology meets action-packed combat.');

-- Inserting videogames for Xbox
INSERT INTO Videogame (game_name, year_released, publisher, stock, summary) VALUES 
('Halo Infinite', 2021, '343 Industries', 1200, 'Master Chief returns in this epic first-person shooter.'),
('Forza Horizon 4', 2018, 'Playground Games', 700, 'A racing game set in an open world Britain.'),
('Gears 5', 2019, 'The Coalition', 900, 'A third-person shooter with intense action.');

-- Inserting videogames for Nintendo Switch
INSERT INTO Videogame (game_name, year_released, publisher, stock, summary) VALUES 
('The Legend of Zelda: Breath of the Wild', 2017, 'Nintendo', 1300, 'An open-world adventure in the land of Hyrule.'),
('Super Mario Odyssey', 2017, 'Nintendo', 1250, 'Marios globe-trotting 3D adventure.'),
('Animal Crossing: New Horizons', 2020, 'Nintendo', 1400, 'Build your own island paradise.');

-- Inserting videogames for PC
INSERT INTO Videogame (game_name, year_released, publisher, stock, summary) VALUES 
('Cyberpunk 2077', 2020, 'CD Projekt', 1500, 'A role-playing game set in a dystopian future.'),
('The Witcher 3: Wild Hunt', 2015, 'CD Projekt', 1600, 'Geralt of Rivias epic adventure.'),
('Valheim', 2021, 'Iron Gate AB', 1700, 'A Viking survival game.');

-- Many-to-many relationships for each console with its games
-- Assuming the IDs are incremented as 1 for PlayStation, 2 for Xbox, 3 for Nintendo Switch, and 4 for PC
-- Assuming videogames IDs increment from 1 onwards

-- PlayStation games
INSERT INTO ConsoleVideogame (console_id, videogame_id) VALUES (1, 1), (1, 2), (1, 3);

-- Xbox games
INSERT INTO ConsoleVideogame (console_id, videogame_id) VALUES (2, 4), (2, 5), (2, 6);

-- Nintendo Switch games
INSERT INTO ConsoleVideogame (console_id, videogame_id) VALUES (3, 7), (3, 8), (3, 9);

-- PC games
INSERT INTO ConsoleVideogame (console_id, videogame_id) VALUES (4, 10), (4, 11), (4, 12);

-- Inserting genres
INSERT INTO Genre (genre_name) VALUES 
('Action'), 
('Adventure'), 
('Racing'), 
('Role-Playing (RPG)'), 
('Shooter'), 
('Simulation'), 
('Sports');

-- Many-to-many relationships for each game with its genres

-- The Last of Us Part II - Action, Adventure
INSERT INTO VideogameGenre (genre_id, videogame_id) VALUES (1, 1), (2, 1);

-- Ghost of Tsushima - Action, Adventure
INSERT INTO VideogameGenre (genre_id, videogame_id) VALUES (1, 2), (2, 2);

-- God of War - Action, Adventure
INSERT INTO VideogameGenre (genre_id, videogame_id) VALUES (1, 3), (2, 3);

-- Halo Infinite - Shooter
INSERT INTO VideogameGenre (genre_id, videogame_id) VALUES (5, 4);

-- Forza Horizon 4 - Racing
INSERT INTO VideogameGenre (genre_id, videogame_id) VALUES (3, 5);

-- Gears 5 - Shooter
INSERT INTO VideogameGenre (genre_id, videogame_id) VALUES (5, 6);

-- The Legend of Zelda: Breath of the Wild - Action, Adventure
INSERT INTO VideogameGenre (genre_id, videogame_id) VALUES (1, 7), (2, 7);

-- Super Mario Odyssey - Adventure
INSERT INTO VideogameGenre (genre_id, videogame_id) VALUES (2, 8);

-- Animal Crossing: New Horizons - Simulation
INSERT INTO VideogameGenre (genre_id, videogame_id) VALUES (6, 9);

-- Cyberpunk 2077 - Role-Playing (RPG)
INSERT INTO VideogameGenre (genre_id, videogame_id) VALUES (4, 10);

-- The Witcher 3: Wild Hunt - Role-Playing (RPG)
INSERT INTO VideogameGenre (genre_id, videogame_id) VALUES (4, 11);

-- Valheim - Role-Playing (RPG), Simulation
INSERT INTO VideogameGenre (genre_id, videogame_id) VALUES (4, 12), (6, 12);
