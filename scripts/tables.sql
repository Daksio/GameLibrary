CREATE SCHEMA game_library;

CREATE TABLE game_library.genre(
    id SERIAL PRIMARY KEY,
    genre_name VARCHAR(128) NOT NULL,
    is_mmo bool DEFAULT FALSE
);

CREATE TABLE game_library.game_developer(
    id SERIAL PRIMARY KEY,
    developer_name VARCHAR(128) NOT NULL,
    is_financed bool DEFAULT TRUE
);

CREATE TABLE game_library.game(
    id SERIAL PRIMARY KEY,
    game_name VARCHAR(128) UNIQUE NOT NULL,
    genre_id INTEGER,
    developer_id INTEGER,
    CONSTRAINT game_genre_key FOREIGN KEY (genre_id) REFERENCES game_library.genre (id),
    CONSTRAINT game_developer_key FOREIGN KEY (developer_id) REFERENCES game_library.game_developer (id)
);

CREATE TABLE game_library.publisher(
    id SERIAL PRIMARY KEY,
    publisher_name VARCHAR(128) NOT NULL,
    founding_date DATE NOT NULL
);

CREATE TABLE game_library.platform(
    id SERIAL PRIMARY KEY,
    platform_name VARCHAR(128) NOT NULL,
    with_gamepad bool DEFAULT TRUE
);

CREATE TABLE game_library.game_publishment(
    id SERIAL PRIMARY KEY,
    release_date DATE NOT NULL,
    game_id INTEGER,
    publisher_id INTEGER,
    platform_id INTEGER,
    CONSTRAINT game_id_key FOREIGN KEY (game_id) REFERENCES game_library.game (id),
    CONSTRAINT publisher_id_key FOREIGN KEY (publisher_id) REFERENCES game_library.publisher (id),
    CONSTRAINT platform_id_key FOREIGN KEY (platform_id) REFERENCES game_library.platform (id)
);

CREATE TABLE game_library.region(
    id SERIAL PRIMARY KEY,
    region_name VARCHAR(128) NOT NULL,
    is_CIS bool DEFAULT FALSE
);

CREATE TABLE game_library.price_in_region(
    game_id INTEGER,
    region_id INTEGER,
    platform_id INTEGER,
    currency VARCHAR(128) NOT NULL,
    actual_price INTEGER DEFAULT 0,
    actual_price_valid_from_to_in_days INTEGER DEFAULT 365,
    is_available bool DEFAULT TRUE,
    CONSTRAINT game_id_key FOREIGN KEY (game_id) REFERENCES game_library.game (id),
    CONSTRAINT region_id_key FOREIGN KEY (region_id) REFERENCES game_library.region (id),
    CONSTRAINT platform_id_key FOREIGN KEY (platform_id) REFERENCES game_library.platform (id)
);
