REM   Script: GroupProject
REM   Movies -group project

CREATE TABLE RATINGS(
    Rating VARCHAR(100),
    Minimum_Age INTEGER,
    Description VARCHAR(100),
    Acceptable VARCHAR(100),
    PRIMARY KEY(Rating)
);

INSERT INTO RATINGS VALUES ('G', 0, 'General Audiences – All Ages Admitted', 'Yes');

INSERT INTO RATINGS VALUES ('PG', 7, 'Parental Guidance Suggested – Some Material May Not Be Suitable for Children', 'Yes');

INSERT INTO RATINGS VALUES ('PG-13', 13, 'Parents Strongly Cautioned – May Be Inappropriate for Children Under 13', 'Yes');

INSERT INTO RATINGS VALUES ('R', 17, 'Restricted – Under 17 Requires Accompanying Parent or Adult Guardian', 'Depends');

INSERT INTO RATINGS VALUES ('NC-17', 18, 'Adults Only – No One 17 and Under Admitted', 'No');

CREATE TABLE GENRES(
    Genre VARCHAR(100),
    Description VARCHAR(256),
    Acceptable VARCHAR(100),
    PRIMARY KEY(Genre)
);

INSERT INTO GENRES VALUES ('Action', 'Should contain numerous scenes where action is spectacular and usually destructive.', 'Yes');

INSERT INTO GENRES VALUES ('Adventure', 'Should contain numerous consecutive and inter-related scenes of characters participating in hazardous or exciting experiences for a specific goal.', 'Yes');

INSERT INTO GENRES VALUES ('Animation', 'Over 75% of the titles running time should have scenes that are wholly, or part-animated.', 'Yes');

INSERT INTO GENRES VALUES ('Comedy', 'Virtually all scenes should contain characters participating in humorous or comedic experiences.', 'Yes');

INSERT INTO GENRES VALUES ('Crime', 'Whether the protagonists or antagonists are criminals this should contain numerous scenes of characters participating, aiding, abetting, and/or planning criminal behavior.', 'Yes');

INSERT INTO GENRES VALUES ('Drama', 'Should contain numerous consecutive scenes of characters portrayed to effect a serious narrative throughout the title, usually involving conflicts and emotions. ', 'Yes');

INSERT INTO GENRES VALUES ('Fantasy', 'Should contain numerous consecutive scenes of characters portrayed to effect a magical and/or mystical narrative throughout the title.', 'Yes');

INSERT INTO GENRES VALUES ('Horror', 'Should contain numerous consecutive scenes of characters effecting a terrifying and/or repugnant narrative throughout the title.', 'Yes');

INSERT INTO GENRES VALUES ('Musical', 'Should contain several scenes of characters bursting into song aimed at the viewer.', 'Yes');

INSERT INTO GENRES VALUES ('Romance', 'Should contain numerous inter-related scenes of a character and their personal life with emphasis on emotional attachment or involvement with other characters.', 'Yes');

INSERT INTO GENRES VALUES ('Sci-Fi', 'Should be based on speculative scientific discoveries or developments, environmental changes, space travel, or life on other planets.', 'Yes');

INSERT INTO GENRES VALUES ('Thriller', 'Should contain numerous sensational scenes or a narrative that is sensational or suspenseful.', 'Yes');

INSERT INTO GENRES VALUES ('Western', 'Should contain numerous scenes and/or a narrative where the portrayal is similar to that of frontier life in the American West during 1600s to contemporary times.', 'Yes');


CREATE TABLE MOVIES (
    Movie_ID INTEGER NOT NULL,
    Title VARCHAR(100) NOT NULL,
    Year NUMERIC(4,0) NOT NULL,
    Minutes INTEGER NOT NULL,
    Genre VARCHAR(100),
    Number_Series INTEGER,
    Rank INTEGER,
    Rating VARCHAR(100),
    Streaming VARCHAR(100) NOT NULL,
    PRIMARY KEY(Movie_ID)
);

INSERT INTO MOVIES VALUES (1, 'Harry Potter and the Sorcerer''s Stone', 2001, 152, 'Fantasy', 1, 'PG-13', 'Youtube');

INSERT INTO MOVIES VALUES (2, 'Harry Potter and the Chamber of Secrets', 2002, 161, 'Fantasy', 2, 'PG-13', 'Youtube');

INSERT INTO MOVIES VALUES (3, 'Harry Potter and the Prisoner of Azkaban', 2004, 142, 'Fantasy', 3, 'PG-13', 'Youtube');

INSERT INTO MOVIES VALUES (4, 'Harry Potter and the Goblet of Fire', 2005, 157, 'Fantasy', 4, 'PG-13', 'Youtube');

INSERT INTO MOVIES VALUES (5, 'Harry Potter and the Order of the Phoenix', 2007, 138, 'Fantasy', 5, 'PG-13', 'Youtube');

INSERT INTO MOVIES VALUES (6, 'Harry Potter and the Half-Blood Prince', 2009, 153, 'Fantasy', 6, 'PG-13', 'Youtube');

INSERT INTO MOVIES VALUES (7, 'Harry Potter and the Deathly Hallows – Part 1', 2010, 146, 'Fantasy', 7, 'PG-13', 'Youtube');

INSERT INTO MOVIES VALUES (8, 'Harry Potter and the Deathly Hallows – Part 2', 2011, 130, 'Fantasy', 8, 'PG-13', 'Youtube');

INSERT INTO MOVIES VALUES (9, 'Friday the 13th', 1980, 96, 'Horror', 1, 'R', 'Amazon Prime Video');

INSERT INTO MOVIES VALUES (10, 'Friday the 13th Part 2', 1981, 87, 'Horror', 2, 'R', 'Amazon Prime Video');

INSERT INTO MOVIES VALUES (11, 'Friday the 13th Part 3', 1982,  96, 'Horror', 3, 'R', 'Amazon Prime Video');

INSERT INTO MOVIES VALUES (12, 'Friday the 13th: The Final Chapter', 1984, 91, 'Horror', 4, 'R', 'Amazon Prime Video');

INSERT INTO MOVIES VALUES (13, 'Friday the 13th Part 5: A New Beginning', 1985, 92, 'Horror', 5, 'R', 'Amazon Prime Video');

INSERT INTO MOVIES VALUES (14, 'Friday the 13th Part 6: Jason Lives', 1986, 90, 'Horror', 6, 'R', 'Amazon Prime Video');

INSERT INTO MOVIES VALUES (15, 'Friday the 13th Part 7: The New Blood', 1988, 90, 'Horror', 7, 'R', 'Amazon Prime Video');

INSERT INTO MOVIES VALUES (16, 'Friday the 13th Part 8: Jason Takes Manhattan', 1989, 100, 'Horror', 8, 'R', 'Amazon Prime Video');

INSERT INTO MOVIES VALUES (17, 'Jason Goes to Hell: The Final Friday', 1993, 89, 'Horror', 9, 'R', 'Amazon Prime Video');

INSERT INTO MOVIES VALUES (18, 'Jason X', 2001, 93, 'Horror', 10, 'R', 'Amazon Prime Video');

INSERT INTO MOVIES VALUES (19, 'Freddy vs. Jason', 2003, 98, 'Horror', 11, 'R', 'Amazon Prime Video');

INSERT INTO MOVIES VALUES (20, 'Friday the 13th', 2009, 97, 'Horror', 12, 'R', 'Amazon Prime Video');

CREATE TABLE SERIES (
    Movie_ID INTEGER NOT NULL,
    Number_Series INTEGER,
    Movie_Series VARCHAR(100), 
    Active VARCHAR(100),
    PRIMARY KEY(Movie_ID)
);

INSERT INTO SERIES VALUES (1, 1, 'Harry Potter', 'Yes');

INSERT INTO SERIES VALUES (2, 2, 'Harry Potter', 'Yes');

INSERT INTO SERIES VALUES (3, 3, 'Harry Potter', 'Yes');

INSERT INTO SERIES VALUES (4, 4, 'Harry Potter', 'Yes');

INSERT INTO SERIES VALUES (5, 5, 'Harry Potter', 'Yes');

INSERT INTO SERIES VALUES (6, 6, 'Harry Potter', 'Yes');

INSERT INTO SERIES VALUES (7, 7, 'Harry Potter', 'Yes');

INSERT INTO SERIES VALUES (8, 8, 'Harry Potter', 'Yes');

INSERT INTO SERIES VALUES (9, 1, 'Friday the 13th', 'Yes');

INSERT INTO SERIES VALUES (10, 2, 'Friday the 13th', 'Yes');

INSERT INTO SERIES VALUES (11, 3, 'Friday the 13th', 'Yes');

INSERT INTO SERIES VALUES (12, 4, 'Friday the 13th', 'Yes');

INSERT INTO SERIES VALUES (13, 5, 'Friday the 13th', 'Yes');

INSERT INTO SERIES VALUES (14, 6, 'Friday the 13th', 'Yes');

INSERT INTO SERIES VALUES (15, 7, 'Friday the 13th', 'Yes');

INSERT INTO SERIES VALUES (16, 8, 'Friday the 13th', 'Yes');

INSERT INTO SERIES VALUES (17, 9, 'Friday the 13th', 'Yes');

INSERT INTO SERIES VALUES (18, 10, 'Friday the 13th', 'Yes');

INSERT INTO SERIES VALUES (19, 11, 'Friday the 13th', 'Yes');

INSERT INTO SERIES VALUES (20, 12, 'Friday the 13th', 'Yes');

CREATE TABLE USERS(
    Username VARCHAR(100) NOT NULL,
    Preferred_Genre VARCHAR(100),
    Favorite_Movies_ID INTEGER NOT NULL,
    PRIMARY KEY(Favorite_Movies_ID)
);

INSERT INTO USERS VALUES ('Test_01', 'Fantasy', 1);

INSERT INTO USERS VALUES ('Test_02', 'Horror', 9);

CREATE TABLE RANKINGS(
    Movie_ID INTEGER NOT NULL,
    Username VARCHAR(100) NOT NULL,
    Rank INT,
    PRIMARY KEY(Movie_ID)
);

INSERT INTO RANKINGS VALUES (1, 'Test_01', 1);

INSERT INTO RANKINGS VALUES (2, 'Test_01', 1);

INSERT INTO RANKINGS VALUES (3, 'Test_01', 1);

INSERT INTO RANKINGS VALUES (4, 'Test_01', 1);

INSERT INTO RANKINGS VALUES (5, 'Test_01', 1);

INSERT INTO RANKINGS VALUES (6, 'Test_01', 1);

INSERT INTO RANKINGS VALUES (7, 'Test_01', 1);

INSERT INTO RANKINGS VALUES (8, 'Test_01', 1);

INSERT INTO RANKINGS VALUES (9, 'Test_02', 5);

INSERT INTO RANKINGS VALUES (10, 'Test_02', 5);

INSERT INTO RANKINGS VALUES (11, 'Test_02', 5);

INSERT INTO RANKINGS VALUES (12, 'Test_02', 5);

INSERT INTO RANKINGS VALUES (13, 'Test_02', 4);

INSERT INTO RANKINGS VALUES (14, 'Test_02', 4);

INSERT INTO RANKINGS VALUES (15, 'Test_02', 3);

INSERT INTO RANKINGS VALUES (16, 'Test_02', 2);

INSERT INTO RANKINGS VALUES (17, 'Test_02', 2);

INSERT INTO RANKINGS VALUES (18, 'Test_02', 1);

INSERT INTO RANKINGS VALUES (19, 'Test_02', 5);

INSERT INTO RANKINGS VALUES (20, 'Test_02', 5);

CREATE TABLE STREAMING_SERVICE(
    Company VARCHAR(100) NOT NULL,
    Streaming VARCHAR(100) NOT NULL,
    PRIMARY KEY(Streaming)
);
INSERT INTO STREAMING_SERVICE VALUES ('YouTube LLC', 'Youtube');

INSERT INTO STREAMING_SERVICE VALUES ('Netflix, Inc.', 'Netflix');

INSERT INTO STREAMING_SERVICE VALUES ('The Walt Disney Company', 'Disney+');

INSERT INTO STREAMING_SERVICE VALUES ('Amazon.com, Inc.', 'Amazon Prime Video');

INSERT INTO STREAMING_SERVICE VALUES ('Hulu, LLC.', 'Hulu');

INSERT INTO STREAMING_SERVICE VALUES ('NBCUniversal', 'Peacock');

INSERT INTO STREAMING_SERVICE VALUES ('Warner Bros. Discovery', 'Max');

INSERT INTO STREAMING_SERVICE VALUES ('Paramount Global', 'Paramount+');

