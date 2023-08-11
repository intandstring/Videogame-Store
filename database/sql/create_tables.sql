CREATE TABLE Videogame (
    id SERIAL PRIMARY KEY,
    game_name VARCHAR(256) NOT NULL,
    year_released INTEGER CHECK (year_released >= 1900 AND year_released <= EXTRACT(YEAR FROM CURRENT_DATE)),
    publisher VARCHAR(256),
    stock INTEGER CHECK (stock >= 0),
    summary TEXT
);

CREATE TABLE Console (
    id SERIAL PRIMARY KEY,
    device_name VARCHAR(50) NOT NULL
);

CREATE TABLE ConsoleVideogame (
    console_id INTEGER REFERENCES Console(id) ON DELETE CASCADE,
    videogame_id INTEGER REFERENCES Videogame(id) ON DELETE CASCADE,
    PRIMARY KEY (console_id, videogame_id)
);

CREATE TABLE Genre (
    id SERIAL PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL
);

CREATE TABLE VideogameGenre (
    genre_id INTEGER REFERENCES Genre(id) ON DELETE CASCADE,
    videogame_id INTEGER REFERENCES Videogame(id) ON DELETE CASCADE,
    PRIMARY KEY (genre_id, videogame_id)
);
