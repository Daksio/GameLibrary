SELECT game_name AS game, genre_name AS genre
FROM game_library.game, game_library.genre
WHERE game.genre_id = genre.id
ORDER BY game_name DESC;

SELECT game_name AS game, platform_name AS platform, release_date
FROM game_library.game, game_library.platform, game_library.game_publishment
WHERE game_publishment.game_id = game.id AND game_publishment.platform_id = platform.id;

SELECT * FROM game_library.price_in_region;

DELETE FROM game_library.platform
WHERE platform_name = 'Wii';

DELETE FROM game_library.game_publishment
WHERE game_id = 2;

INSERT INTO game_library.game VALUES
(11, 'CS:GO', 3, 4);

INSERT INTO game_library.game_publishment VALUES
(18, '2012-08-21', 11, 4, 1);

UPDATE game_library.price_in_region
SET actual_price = 502, actual_price_valid_from_to_in_days = 7
WHERE game_id = 1 AND region_id = 1;

SELECT DISTINCT game_name AS game, developer_name AS developer, publisher_name AS publisher
FROM game_library.game, game_library.game_developer, game_library.game_publishment, game_library.publisher
WHERE game.id = game_publishment.game_id AND game_publishment.publisher_id = publisher.id AND game.developer_id = game_developer.id;

SELECT DISTINCT game_name AS game, region_name AS region, platform_name AS platform, actual_price AS price, currency
FROM game_library.game, game_library.region, game_library.platform, game_library.game_publishment, game_library.price_in_region
WHERE game.id = price_in_region.game_id AND region.id = price_in_region.region_id AND price_in_region.platform_id = platform.id;
