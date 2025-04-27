REM   Script: GroupProject
REM   Movies -group project

CREATE TABLE GENRES(
    Genre VARCHAR(100),
    Description VARCHAR(256),
    Acceptable VARCHAR(100) DEFAULT 'Yes',
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

INSERT INTO STREAMING_SERVICE VALUES ('Apple Inc.', 'Apple TV+');

INSERT INTO STREAMING_SERVICE VALUES ('Fox Corporation', 'Tubi');

CREATE TABLE RATINGS(
    Rating VARCHAR(100),
    Minimum_Age INTEGER CHECK (Minimum_Age >= 0),
    Description VARCHAR(100),
    Acceptable VARCHAR(100),
    PRIMARY KEY(Rating)
);

INSERT INTO RATINGS VALUES ('G', 0, 'General Audiences – All Ages Admitted', 'Yes');

INSERT INTO RATINGS VALUES ('PG', 7, 'Parental Guidance Suggested – Some Material May Not Be Suitable for Children', 'Yes');

INSERT INTO RATINGS VALUES ('PG-13', 13, 'Parents Strongly Cautioned – May Be Inappropriate for Children Under 13', 'Yes');

INSERT INTO RATINGS VALUES ('R', 17, 'Restricted – Under 17 Requires Accompanying Parent or Adult Guardian', 'Depends');

INSERT INTO RATINGS VALUES ('NC-17', 18, 'Adults Only – No One 17 and Under Admitted', 'No');


CREATE TABLE MOVIES (
    Movie_ID INTEGER NOT NULL,
    Title VARCHAR(100) NOT NULL,
    Year NUMERIC(4,0) NOT NULL CHECK (Year >= 1900),
    Minutes INTEGER NOT NULL CHECK (Minutes > 0),
    Genre VARCHAR(100),
    Number_Series INTEGER DEFAULT NULL,
    Rating VARCHAR(100),
    Streaming VARCHAR(100) NOT NULL,
    PRIMARY KEY(Movie_ID),
    FOREIGN KEY (Genre) REFERENCES GENRES(Genre)
        ON DELETE SET NULL,
    FOREIGN KEY (Rating) REFERENCES RATINGS(Rating)
        ON DELETE SET NULL,
    FOREIGN KEY (Streaming) REFERENCES STREAMING_SERVICE(Streaming)
        ON DELETE SET NULL
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

INSERT INTO MOVIES VALUES (21, 'Inception', 2010, 148, 'Sci-Fi', NULL, 'PG-13', 'Netflix');

INSERT INTO MOVIES VALUES (22, 'The Godfather', 1972, 175, 'Crime', NULL, 'R', 'Amazon Prime Video');

INSERT INTO MOVIES VALUES (23, 'Toy Story', 1995, 81, 'Animation', NULL, 'G', 'Disney+');

INSERT INTO MOVIES VALUES (24, 'La La Land', 2016, 128, 'Musical', NULL, 'PG-13', 'Hulu');

INSERT INTO MOVIES VALUES (25, 'Titanic', 1997, 195, 'Romance', NULL, 'PG-13', 'Max');

INSERT INTO MOVIES VALUES (26, 'The Dark Knight', 2008, 152, 'Action', NULL, 'PG-13', 'Max');

INSERT INTO MOVIES VALUES (27, 'The Good, the Bad and the Ugly', 1966, 161, 'Western', NULL, 'R', 'Peacock');

INSERT INTO MOVIES VALUES (28, 'The Shawshank Redemption', 1994, 142, 'Drama', NULL, 'R', 'Netflix');

INSERT INTO MOVIES VALUES (29, 'Get Out', 2017, 104, 'Thriller', NULL, 'R', 'Peacock');

INSERT INTO MOVIES VALUES (30, 'Guardians of the Galaxy', 2014, 121, 'Adventure', NULL, 'PG-13', 'Disney+');


CREATE TABLE SERIES (
    Movie_ID INTEGER NOT NULL,
    Number_Series INTEGER DEFAULT NULL,
    Movie_Series VARCHAR(100), 
    Active VARCHAR(100) DEFAULT 'Yes' CHECK (Active IN ('Yes', 'No')),
    PRIMARY KEY(Movie_ID),
    FOREIGN KEY (Movie_ID) REFERENCES MOVIES(Movie_ID)
        ON DELETE CASCADE
);

INSERT INTO SERIES VALUES (1, 1, 'Harry Potter', 'No');

INSERT INTO SERIES VALUES (2, 2, 'Harry Potter', 'No');

INSERT INTO SERIES VALUES (3, 3, 'Harry Potter', 'No');

INSERT INTO SERIES VALUES (4, 4, 'Harry Potter', 'No');

INSERT INTO SERIES VALUES (5, 5, 'Harry Potter', 'No');

INSERT INTO SERIES VALUES (6, 6, 'Harry Potter', 'No');

INSERT INTO SERIES VALUES (7, 7, 'Harry Potter', 'No');

INSERT INTO SERIES VALUES (8, 8, 'Harry Potter', 'No');

INSERT INTO SERIES VALUES (9, 1, 'Friday the 13th', 'No');

INSERT INTO SERIES VALUES (10, 2, 'Friday the 13th', 'No');

INSERT INTO SERIES VALUES (11, 3, 'Friday the 13th', 'No');

INSERT INTO SERIES VALUES (12, 4, 'Friday the 13th', 'No');

INSERT INTO SERIES VALUES (13, 5, 'Friday the 13th', 'No');

INSERT INTO SERIES VALUES (14, 6, 'Friday the 13th', 'No');

INSERT INTO SERIES VALUES (15, 7, 'Friday the 13th', 'No');

INSERT INTO SERIES VALUES (16, 8, 'Friday the 13th', 'No');

INSERT INTO SERIES VALUES (17, 9, 'Friday the 13th', 'No');

INSERT INTO SERIES VALUES (18, 10, 'Friday the 13th', 'No');

INSERT INTO SERIES VALUES (19, 11, 'Friday the 13th', 'No');

INSERT INTO SERIES VALUES (20, 12, 'Friday the 13th', 'No');


CREATE TABLE USERS(
    Username VARCHAR(100) NOT NULL,
    Preferred_Genre VARCHAR(100),
    Favorite_Movies_ID INTEGER NOT NULL,
    PRIMARY KEY(Username),
    FOREIGN KEY (Favorite_Movies_ID) REFERENCES MOVIES(Movie_ID)
        ON DELETE SET NULL,
    FOREIGN KEY (Preferred_Genre) REFERENCES GENRES(Genre)
        ON DELETE SET NULL
        
);

INSERT INTO USERS VALUES ('gothicVamp2', 'Fantasy', 1);

INSERT INTO USERS VALUES ('sinPal_32', 'Horror', 9);

INSERT INTO USERS VALUES ('dreamsOfSpace', 'Sci-Fi', 21);

INSERT INTO USERS VALUES ('crimeBoss23', 'Crime', 22);

INSERT INTO USERS VALUES ('pixarFan_78', 'Animation', 23);

INSERT INTO USERS VALUES ('nytCool23', 'Musical', 24);

INSERT INTO USERS VALUES ('thrillerSeeker7', 'Thriller', 29);

INSERT INTO USERS VALUES ('wildWest_66', 'Western', 27);

INSERT INTO USERS VALUES ('RoseLoves', 'Romance', 25);

INSERT INTO USERS VALUES ('actionPanorama', 'Action', 26);

INSERT INTO USERS VALUES ('adventureJunky', 'Adventure', 30);

INSERT INTO USERS VALUES ('silentFilmsfan', 'Drama', 28);

INSERT INTO USERS VALUES ('laughHappy23', 'Comedy', 23);

CREATE TABLE RANKINGS(
    Movie_ID INTEGER NOT NULL,
    Username VARCHAR(100) NOT NULL,
    Rank INTEGER DEFAULT 5 CHECK (Rank BETWEEN 1 AND 5),
    PRIMARY KEY(Movie_ID,Username),
    FOREIGN KEY (Movie_ID) REFERENCES MOVIES(Movie_ID)
        ON DELETE CASCADE,
    FOREIGN KEY (Username) REFERENCES USERS(Username)
        ON DELETE CASCADE
    
);

INSERT INTO RANKINGS VALUES (1, 'gothicVamp2', 1);
INSERT INTO RANKINGS VALUES (2, 'gothicVamp2', 1);
INSERT INTO RANKINGS VALUES (3, 'gothicVamp2', 1);
INSERT INTO RANKINGS VALUES (4, 'gothicVamp2', 1);
INSERT INTO RANKINGS VALUES (5, 'gothicVamp2', 1);
INSERT INTO RANKINGS VALUES (6, 'gothicVamp2', 1);
INSERT INTO RANKINGS VALUES (7, 'gothicVamp2', 1);
INSERT INTO RANKINGS VALUES (8, 'gothicVamp2', 1);

INSERT INTO RANKINGS VALUES (9, 'sinPal_32', 5);
INSERT INTO RANKINGS VALUES (10, 'sinPal_32', 5);
INSERT INTO RANKINGS VALUES (11, 'sinPal_32', 5);
INSERT INTO RANKINGS VALUES (12, 'sinPal_32', 5);
INSERT INTO RANKINGS VALUES (13, 'sinPal_32', 4);
INSERT INTO RANKINGS VALUES (14, 'sinPal_32', 4);
INSERT INTO RANKINGS VALUES (15, 'sinPal_32', 3);
INSERT INTO RANKINGS VALUES (16, 'sinPal_32', 2);
INSERT INTO RANKINGS VALUES (17, 'sinPal_32', 2);
INSERT INTO RANKINGS VALUES (18, 'sinPal_32', 1);
INSERT INTO RANKINGS VALUES (19, 'sinPal_32', 5);
INSERT INTO RANKINGS VALUES (20, 'sinPal_32', 5);

INSERT INTO RANKINGS VALUES (21, 'dreamsOfSpace', 5);
INSERT INTO RANKINGS VALUES (30, 'dreamsOfSpace', 4);
INSERT INTO RANKINGS VALUES (28, 'dreamsOfSpace', 5);

INSERT INTO RANKINGS VALUES (22, 'crimeBoss23', 5);
INSERT INTO RANKINGS VALUES (27, 'crimeBoss23', 4);
INSERT INTO RANKINGS VALUES (28, 'crimeBoss23', 5);

INSERT INTO RANKINGS VALUES (23, 'pixarFan_78', 5);
INSERT INTO RANKINGS VALUES (24, 'pixarFan_78', 4);
INSERT INTO RANKINGS VALUES (25, 'pixarFan_78', 3);

INSERT INTO RANKINGS VALUES (24, 'nytCool23', 5);
INSERT INTO RANKINGS VALUES (25, 'nytCool23', 4);
INSERT INTO RANKINGS VALUES (23, 'nytCool23', 5);

INSERT INTO RANKINGS VALUES (29, 'thrillerSeeker7', 5);
INSERT INTO RANKINGS VALUES (21, 'thrillerSeeker7', 4);

INSERT INTO RANKINGS VALUES (27, 'wildWest_66', 5);
INSERT INTO RANKINGS VALUES (22, 'wildWest_66', 4);

INSERT INTO RANKINGS VALUES (25, 'RoseLoves', 5);
INSERT INTO RANKINGS VALUES (24, 'RoseLoves', 4);

INSERT INTO RANKINGS VALUES (26, 'actionPanorama', 5);
INSERT INTO RANKINGS VALUES (30, 'actionPanorama', 5);

INSERT INTO RANKINGS VALUES (30, 'adventureJunky', 5);
INSERT INTO RANKINGS VALUES (21, 'adventureJunky', 4);

INSERT INTO RANKINGS VALUES (28, 'silentFilmsfan', 5);
INSERT INTO RANKINGS VALUES (22, 'silentFilmsfan', 5);

INSERT INTO RANKINGS VALUES (23, 'laughHappy23', 5);
INSERT INTO RANKINGS VALUES (24, 'laughHappy23', 4);

