INSERT INTO game_library.genre VALUES
(1, 'Sandbox', true),
(2, 'Real-time strategy', true),
(3, 'FPS', true),
(4, 'MOBA', true),
(5, 'ARPG', false),
(6, 'Sport', true),
(7, 'Puzzle', false),
(8, 'Adventure', true),
(9, 'Horror', false),
(10, 'Metroidvania', false);


INSERT INTO game_library.game_developer VALUES
(1, 'Facepunch Studios', false),
(2, 'Blizzard Entertainment', true),
(3, 'Riot Games', true),
(4, 'Valve', false),
(5, 'CD Projekt RED', true),
(6, 'Playground Games', true),
(7, 'Thekla', true),
(8, 'miHoYo', true),
(9, 'Red Barrels', true),
(10, 'Moon Studios', true);


INSERT INTO game_library.game VALUES
(1, 'Garry`s mod', 1, 1),
(2, 'Warcraft III: The Frozen Throne', 2, 2),
(3, 'VALORANT', 3, 3),
(4, 'Dota 2', 4, 4),
(5, 'The Witcher 3: Wild Hunt', 5, 5),
(6, 'Forza Horizon 5', 6, 6),
(7, 'The Witness', 7, 7),
(8, 'Genshin Impact', 8, 8),
(9, 'Outlast', 9, 9),
(10, 'Ori and the Blind Forest', 10, 10);


INSERT INTO game_library.publisher VALUES
(1, 'Valve', '1996-08-24'),
(2, 'Blizzard Entertainment', '1991-02-08'),
(3, 'Riot Games', '2006-09-15'),
(4, 'Capcom', '1979-05-30'),
(5, 'CD Project RED', '2002-02-25'),
(6, 'Xbox Game Studios', '2000-03-05'),
(7, 'Thekla', '2009-07-28'),
(8, 'miHoYo', '2012-02-13'),
(9, 'Red Barrels', '2011-07-28');


INSERT INTO game_library.platform VALUES
(1, 'PC', false),
(2, 'PS4', true),
(3, 'PS5', true),
(4, 'XBOX Series X', true),
(5, 'XBOX One', true),
(6, 'Nintendo Switch', false),
(7, 'Wii', true),
(8, 'Steam Deck', false),
(9, 'Android', false),
(10, 'iOS', false);


INSERT INTO game_library.game_publishment VALUES
(1, '2006-11-29', 1, 1, 1),
(2, '2003-07-01', 2, 2, 1),
(3, '2020-06-02', 3, 3, 1),
(4, '2004-02-27', 2, 4, 1),
(5, '2013-07-09', 4, 2, 1),
(6, '2022-12-14', 5, 5, 3),
(7, '2022-12-14', 5, 5, 4),
(8, '2021-11-09', 6, 6, 4),
(9, '2021-11-09', 6, 6, 5),
(10, '2016-01-26', 7, 7, 1),
(11, '2017-09-21', 7, 7, 10),
(12, '2020-09-28', 8, 8, 1),
(13, '2020-09-28', 8, 8, 9),
(14, '2020-09-28', 8, 8, 10),
(15, '2020-09-28', 8, 8, 2),
(16, '2013-09-04', 9, 9, 1),
(17, '2015-03-11', 10, 6, 1);


INSERT INTO game_library.region VALUES
(1, 'Russia', true),
(2, 'USA', false),
(3, 'Kyrgystan', true),
(4, 'Japan', true),
(5, 'European Union', false),
(6, 'UK', false),
(7, 'South Korea', false),
(8, 'Kazakhstan', true),
(9, 'China', false),
(10, 'Canada', false);


INSERT INTO game_library.price_in_region VALUES
(1, 1, 1, '₽', 750, 90),
(2, 4, 1, '¥', 4400, 56),
(3, 2, 1, '$', 0, 365),
(4, 6, 1, '£', 0, 365),
(5, 7, 3, '₩', 24500, 15),
(6, 10, 4, 'CDN$', 79.99, 120),
(7, 3, 10, '$', 9.99, 20),
(8, 8, 9, '₸', 0, 365),
(9, 9, 1, '¥', 76, 7),
(10, 5, 1, '€', 19.99, 15);
