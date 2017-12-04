/* Ariele Silva
   Database Management
   Prof. Labouseur
   1 December 2017
   Database Project
   (NETFLIX) */

--LOCATION TABLE--

DROP TABLE IF EXISTS Location;
CREATE TABLE Location (
    LocationID VARCHAR(2),
    LocationName VARCHAR(13),
	PRIMARY KEY(LocationID)
);
INSERT INTO Location VALUES ('L1','North America');
INSERT INTO Location VALUES ('L2','South America');
INSERT INTO Location VALUES ('L3','Europe');
INSERT INTO Location VALUES ('L4','Asia');
INSERT INTO Location VALUES ('L5','Africa');
INSERT INTO Location VALUES ('L6','Australia');
INSERT INTO Location VALUES ('L7','Antarctica');

-- USERS TABLE --

DROP TABLE IF EXISTS Users;
CREATE TABLE Users (
    UserID VARCHAR(2),
    UserFN VARCHAR(7),
    UserLN VARCHAR(9),
    ProfileNum INT,
    KidsProfile VARCHAR(3),
    LocationID VARCHAR(2),
	PRIMARY KEY(UserID),
	FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);
INSERT INTO Users VALUES ('U1','Alan','Labouseur',2,'Yes','L1');
INSERT INTO Users VALUES ('U2','Ariele','Silva',3,'No','L1');
INSERT INTO Users VALUES ('U3','Jack','Connly',4,'No','L1');
INSERT INTO Users VALUES ('U4','Chloe ','Kaye',4,'No','L1');
INSERT INTO Users VALUES ('U5','Jillian','Gesumaria',1,'No','L3');
INSERT INTO Users VALUES ('U6','Mike','Minardi',4,'No','L1');
INSERT INTO Users VALUES ('U7','Cack','Jonnly',1,'Yes','L7');
INSERT INTO Users VALUES ('U8','Matt','Nerger',4,'No','L1');

-- GENRES TABLE --

DROP TABLE IF EXISTS Genres;
CREATE TABLE Genres (
    GenreID VARCHAR(3),
    GenreName VARCHAR(11),
	PRIMARY KEY(GenreID)
);
INSERT INTO Genres VALUES ('G1','Comedy');
INSERT INTO Genres VALUES ('G2','Thriller');
INSERT INTO Genres VALUES ('G3','Romance');
INSERT INTO Genres VALUES ('G4','Documentary');
INSERT INTO Genres VALUES ('G5','Drama');
INSERT INTO Genres VALUES ('G6','Action');
INSERT INTO Genres VALUES ('G7','Sitcom');
INSERT INTO Genres VALUES ('G8','Animated');
INSERT INTO Genres VALUES ('G9','Sci-Fy');

-- TV SHOWS TABLE --

DROP TABLE IF EXISTS TV_Shows;
CREATE TABLE TV_Shows (
    TVID VARCHAR(4),
    TV_Name VARCHAR(35),
    TVYR INT,
    CurrentSeasons INT,
    DateChecked DATE,
    PGL VARCHAR(5),
    OriginalOrNot VARCHAR(3),
    GenreID VARCHAR(2),
	PRIMARY KEY(TVID),
	FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);

INSERT INTO TV_Shows VALUES ('TV1','Stranger Things',2016,2,'2017-11-29 ','TV-14','Yes','G2');
INSERT INTO TV_Shows VALUES ('TV2','The Office (U.S)',2005,9,'2017-11-29 ','TV-14','No','G1');
INSERT INTO TV_Shows VALUES ('TV3','Parks and Recreation',2009,7,'2017-11-29 ','TV-14','No','G1');
INSERT INTO TV_Shows VALUES ('TV4','It''s Always Sunny in Philadelphia',2009,11,'2017-11-29 ','TV-MA','No','G1');
INSERT INTO TV_Shows VALUES ('TV5','American Vandal',2017,1,'2017-11-29 ','TV-MA','Yes','G4');
INSERT INTO TV_Shows VALUES ('TV6','Unbreakable Kimmy Schmidt',2015,3,'2017-11-29 ','TV-14','No','G1');
INSERT INTO TV_Shows VALUES ('TV7','Violetta',2012,3,'2017-11-29 ','TV-PG','No','G5');
INSERT INTO TV_Shows VALUES ('TV8','Riverdale',2017,1,'2017-11-29 ','TV-14','No','G5');
INSERT INTO TV_Shows VALUES ('TV9','Family Guy',1999,8,'2017-11-29 ','TV-MA','No','G1');
INSERT INTO TV_Shows VALUES ('TV10','Gotham',2014,3,'2017-11-29 ','TV-14','No','G6');
INSERT INTO TV_Shows VALUES ('TV11','Big Mouth',2017,1,'2017-11-29 ','TV-MA','Yes','G1');
INSERT INTO TV_Shows VALUES ('TV12','Fuller House',2016,3,'2017-11-29 ','TV-Y7','Yes','G7');
INSERT INTO TV_Shows VALUES ('TV13','Crazy Ex-Girlfriend',2015,2,'2017-11-29 ','TV-14','No','G3');
INSERT INTO TV_Shows VALUES ('TV14','Archer',2009,7,'2017-11-29 ','TV-MA','No','G1');
INSERT INTO TV_Shows VALUES ('TV15','Friends',1994,10,'2017-11-29 ','TV-14','No','G7');
INSERT INTO TV_Shows VALUES ('TV16','90210',2008,5,'2017-11-29 ','TV-14','No','G5');
INSERT INTO TV_Shows VALUES ('TV17','Shameless',2011,7,'2017-11-29 ','TV-MA','No','G5');
INSERT INTO TV_Shows VALUES ('TV18','Gilmore Girls',2000,7,'2017-11-29 ','TV-14','No','G7');
INSERT INTO TV_Shows VALUES ('TV19','Breaking Bad',2000,5,'2017-11-29 ','TV-MA','No','G5');
INSERT INTO TV_Shows VALUES ('TV20','Narcos',2015,3,'2017-11-29 ','TV-MA','Yes','G6');
INSERT INTO TV_Shows VALUES ('TV21','Mad Men',2007,7,'2017-11-29 ','TV-14','No','G5');
INSERT INTO TV_Shows VALUES ('TV22','That''s 70''s Show',1998,8,'2017-11-29 ','TV-14','No','G7');
INSERT INTO TV_Shows VALUES ('TV23','New Girl',2011,5,'2017-11-29 ','TV-14','No','G7');
INSERT INTO TV_Shows VALUES ('TV24','Peaky Blinders',2013,3,'2017-11-29 ','TV-MA','Yes','G5');
INSERT INTO TV_Shows VALUES ('TV25','Disjointed',2017,1,'2017-11-29 ','TV-MA','Yes','G7');
INSERT INTO TV_Shows VALUES ('TV26','Client List',2012,2,'2017-11-29 ','TV-14','No','G5');
INSERT INTO TV_Shows VALUES ('TV27','Blue Mountain State',2010,3,'2017-11-29 ','TV-MA','No','G1');
INSERT INTO TV_Shows VALUES ('TV28','Black Mirror',2011,3,'2017-11-29 ','TV-MA','Yes','G5');
INSERT INTO TV_Shows VALUES ('TV29','Ozark',2017,1,'2017-11-29 ','TV-MA','Yes','G5');
INSERT INTO TV_Shows VALUES ('TV30','Freaks and Geeks',1999,1,'2017-11-29 ','TV-14','No','G5');
INSERT INTO TV_Shows VALUES ('TV31','Jane the Virgin',2014,3,'2017-11-29 ','TV-14','No','G7');
INSERT INTO TV_Shows VALUES ('TV32','Friends from College',2017,1,'2017-11-29 ','TV-MA','Yes','G5');
INSERT INTO TV_Shows VALUES ('TV33','The Crown',2016,1,'2017-11-29 ','TV-MA','Yes','G5');
INSERT INTO TV_Shows VALUES ('TV34','The Twilight Zone',1959,4,'2017-11-29 ','TV-Y7','No','G8');
INSERT INTO TV_Shows VALUES ('TV35','The Standups',2017,1,'2017-11-29 ','TV-MA','Yes','G1');
INSERT INTO TV_Shows VALUES ('TV36','Cosmos: A Spacetime Odyssey',2014,1,'2017-11-29 ','TV-PG','No','G9');
INSERT INTO TV_Shows VALUES ('TV37','Marvel''s The Punisher',2017,1,'2017-11-29 ','TV-MA','Yes','G6');
INSERT INTO TV_Shows VALUES ('TV38','Marvel''s Daredevil',2015,2,'2017-11-29 ','TV-MA','Yes','G6');
INSERT INTO TV_Shows VALUES ('TV39','Lockup: State Prisons',2016,1,'2017-11-29 ','TV-14','No','G4');
INSERT INTO TV_Shows VALUES ('TV40','Naruto',2002,3,'2017-11-29 ','TV-PG','No','G8');
INSERT INTO TV_Shows VALUES ('TV41','Goosebumps',1995,5,'2017-11-29 ','TV-Y7','No','G2');
INSERT INTO TV_Shows VALUES ('TV42','My Little Pony: Friendship Is Magic',2010,7,'2017-11-29 ','TV-Y','No','G8');
INSERT INTO TV_Shows VALUES ('TV43','Phineas and Ferb',2007,4,'2017-11-29 ','TV-G','No','G8');
INSERT INTO TV_Shows VALUES ('TV44','Bates Motel',2013,4,'2014-11-29 ','TV-14','No','G5');
INSERT INTO TV_Shows VALUES ('TV45','Star Wars: The Clone Wars',2008,6,'2017-11-29 ','TV-PG','No','G9');
INSERT INTO TV_Shows VALUES ('TV46','The Confession Tapes',2017,1,'2017-11-29 ','TV-MA','Yes','G4');
INSERT INTO TV_Shows VALUES ('TV47','Beyond Stranger Things',2017,1,'2017-11-29 ','TV-14','Yes','G9');
INSERT INTO TV_Shows VALUES ('TV48','American Horror Story',2011,6,'2017-11-29 ','TV-MA','No','G2');
INSERT INTO TV_Shows VALUES ('TV49','Manhunt',2017,1,'2017-11-29 ','TV-14','No','G5');
INSERT INTO TV_Shows VALUES ('TV50','Star Trek',1966,3,'2017-11-29 ','TV-PG','No','G9');
INSERT INTO TV_Shows VALUES ('TV51','Star Trek: Voyager',1995,7,'2017-11-29 ','TV-PG','No','G9');
INSERT INTO TV_Shows VALUES ('TV52','Star Trek: Enterprise',2001,4,'2017-11-29 ','TV-PG','No','G9');
INSERT INTO TV_Shows VALUES ('TV53','Star Trek: Deep Space Nine',1993,7,'2017-11-29 ','TV-PG','No','G9');
INSERT INTO TV_Shows VALUES ('TV54','Star Trek: The Next Generation',1987,7,'2017-11-29 ','TV-PG','No','G9');
INSERT INTO TV_Shows VALUES ('TV55','The Walking Dead',2010,7,'2017-11-29 ','TV-MA','No','G6');
INSERT INTO TV_Shows VALUES ('TV56','Dexter',2006,8,'2017-11-29 ','TV-MA','No','G5');
INSERT INTO TV_Shows VALUES ('TV57','Making A Murderer',2015,1,'2017-11-29 ','TV-14','Yes','G4');

-- MOVIES TABLE --

DROP TABLE IF EXISTS Movies;
CREATE TABLE Movies (
    MovieID VARCHAR(3),
    MovieName VARCHAR(28),
    MovieYR INT,
    MoviePGL VARCHAR(5),
    OriginalOrNot VARCHAR(3),
    GenreID VARCHAR(2),
	PRIMARY KEY (MovieID),
	FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);
INSERT INTO Movies VALUES ('M1','Trevor Noah',2017,'TV-14','No','G1');
INSERT INTO Movies VALUES ('M2','Dirty Grandpa',2016,'R','No','G1');
INSERT INTO Movies VALUES ('M3','White Chicks',2004,'PG-13','No','G1');
INSERT INTO Movies VALUES ('M4','Get Hard',2015,'R','No','G1');
INSERT INTO Movies VALUES ('M5','Horrible Bosses 2',2014,'R','No','G1');
INSERT INTO Movies VALUES ('M6','Christmas Prince',2017,'TV-PG','Yes','G3');
INSERT INTO Movies VALUES ('M7','When Harry met Sally',1989,'R','No','G3');
INSERT INTO Movies VALUES ('M8','Mamma Mia',2008,'PG-13','No','G7');
INSERT INTO Movies VALUES ('M9','Ghosts of Girlfriends Past',2009,'PG-13','No','G3');
INSERT INTO Movies VALUES ('M10','La la land',2016,'PG-13','No','G3');
INSERT INTO Movies VALUES ('M11','Trainwreck',2015,'R','No','G1');
INSERT INTO Movies VALUES ('M12','Bride Wars',2009,'PG','No','G5');
INSERT INTO Movies VALUES ('M14','Inglorious Basterds',2009,'R','No','G6');
INSERT INTO Movies VALUES ('M15','Donnie Darko',2001,'R','No','G2');
INSERT INTO Movies VALUES ('M16','Kid Cannabis',2014,'NR','No','G1');
INSERT INTO Movies VALUES ('M17','I Am Your Father',2015,'TV-PG','No','G4');
INSERT INTO Movies VALUES ('M18','NOVA: Cold Case JFK',2013,'TV-14','No','G4');
INSERT INTO Movies VALUES ('M19','Heroin(e)',2017,'TV-14','Yes','G4');
INSERT INTO Movies VALUES ('M20','Rogue One: A Star Wars Story',2016,'PG-13','No','G9');
INSERT INTO Movies VALUES ('M21','Saving Capitalism',2017,'TV-PG','Yes','G4');
INSERT INTO Movies VALUES ('M13','Chris DElia: Man On Fire',2017,'TV-MA','Yes','G1');

-- RECENTLY WATCHED TV SHOWS TABLE --

DROP TABLE IF EXISTS RecentlyWatchedTVShows;
CREATE TABLE RecentlyWatchedTVShows (
    UserID VARCHAR(2),
    TVID VARCHAR(4),
	FOREIGN KEY (UserID) REFERENCES Users(UserID),
	FOREIGN KEY (TVID) REFERENCES TV_Shows(TVID)
);
INSERT INTO RecentlyWatchedTVShows VALUES ('U1','TV50');
INSERT INTO RecentlyWatchedTVShows VALUES ('U1','TV51');
INSERT INTO RecentlyWatchedTVShows VALUES ('U1','TV52');
INSERT INTO RecentlyWatchedTVShows VALUES ('U1','TV53');
INSERT INTO RecentlyWatchedTVShows VALUES ('U1','TV54');
INSERT INTO RecentlyWatchedTVShows VALUES ('U2','TV7');
INSERT INTO RecentlyWatchedTVShows VALUES ('U2','TV1');
INSERT INTO RecentlyWatchedTVShows VALUES ('U2','TV8');
INSERT INTO RecentlyWatchedTVShows VALUES ('U2','TV9');
INSERT INTO RecentlyWatchedTVShows VALUES ('U2','TV10');
INSERT INTO RecentlyWatchedTVShows VALUES ('U2','TV11');
INSERT INTO RecentlyWatchedTVShows VALUES ('U2','TV12');
INSERT INTO RecentlyWatchedTVShows VALUES ('U2','TV13');
INSERT INTO RecentlyWatchedTVShows VALUES ('U2','TV14');
INSERT INTO RecentlyWatchedTVShows VALUES ('U2','TV15');
INSERT INTO RecentlyWatchedTVShows VALUES ('U3','TV3');
INSERT INTO RecentlyWatchedTVShows VALUES ('U3','TV46');
INSERT INTO RecentlyWatchedTVShows VALUES ('U3','TV47');
INSERT INTO RecentlyWatchedTVShows VALUES ('U3','TV48');
INSERT INTO RecentlyWatchedTVShows VALUES ('U3','TV28');
INSERT INTO RecentlyWatchedTVShows VALUES ('U4','TV1');
INSERT INTO RecentlyWatchedTVShows VALUES ('U4','TV2');
INSERT INTO RecentlyWatchedTVShows VALUES ('U4','TV3');
INSERT INTO RecentlyWatchedTVShows VALUES ('U4','TV4');
INSERT INTO RecentlyWatchedTVShows VALUES ('U4','TV5');
INSERT INTO RecentlyWatchedTVShows VALUES ('U4','TV6');
INSERT INTO RecentlyWatchedTVShows VALUES ('U5','TV30');
INSERT INTO RecentlyWatchedTVShows VALUES ('U5','TV31');
INSERT INTO RecentlyWatchedTVShows VALUES ('U5','TV32');
INSERT INTO RecentlyWatchedTVShows VALUES ('U5','TV2');
INSERT INTO RecentlyWatchedTVShows VALUES ('U6','TV4');
INSERT INTO RecentlyWatchedTVShows VALUES ('U6','TV2');
INSERT INTO RecentlyWatchedTVShows VALUES ('U6','TV1');
INSERT INTO RecentlyWatchedTVShows VALUES ('U6','TV22');
INSERT INTO RecentlyWatchedTVShows VALUES ('U6','TV14');
INSERT INTO RecentlyWatchedTVShows VALUES ('U6','TV28');
INSERT INTO RecentlyWatchedTVShows VALUES ('U6','TV34');
INSERT INTO RecentlyWatchedTVShows VALUES ('U6','TV9');
INSERT INTO RecentlyWatchedTVShows VALUES ('U6','TV11');
INSERT INTO RecentlyWatchedTVShows VALUES ('U6','TV35');
INSERT INTO RecentlyWatchedTVShows VALUES ('U6','TV36');
INSERT INTO RecentlyWatchedTVShows VALUES ('U6','TV3');
INSERT INTO RecentlyWatchedTVShows VALUES ('U7','TV39');
INSERT INTO RecentlyWatchedTVShows VALUES ('U7','TV40');
INSERT INTO RecentlyWatchedTVShows VALUES ('U7','TV41');
INSERT INTO RecentlyWatchedTVShows VALUES ('U7','TV42');
INSERT INTO RecentlyWatchedTVShows VALUES ('U7','TV43');
INSERT INTO RecentlyWatchedTVShows VALUES ('U8','TV55');
INSERT INTO RecentlyWatchedTVShows VALUES ('U8','TV56');
INSERT INTO RecentlyWatchedTVShows VALUES ('U8','TV5');
INSERT INTO RecentlyWatchedTVShows VALUES ('U8','TV1');
INSERT INTO RecentlyWatchedTVShows VALUES ('U8','TV47');
INSERT INTO RecentlyWatchedTVShows VALUES ('U8','TV11');

-- RECENTLY WATCHED MOVIES TABLE --

DROP TABLE IF EXISTS RecentlyWatchedMovies;
CREATE TABLE RecentlyWatchedMovies (
    UserID VARCHAR(2),
    MovieID VARCHAR(3),
	FOREIGN KEY (UserID) REFERENCES Users(UserID),
	FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);
INSERT INTO RecentlyWatchedMovies VALUES ('U1','M20');
INSERT INTO RecentlyWatchedMovies VALUES ('U3','M18');
INSERT INTO RecentlyWatchedMovies VALUES ('U3','M19');
INSERT INTO RecentlyWatchedMovies VALUES ('U5','M1');
INSERT INTO RecentlyWatchedMovies VALUES ('U5','M2');
INSERT INTO RecentlyWatchedMovies VALUES ('U5','M3');
INSERT INTO RecentlyWatchedMovies VALUES ('U5','M4');
INSERT INTO RecentlyWatchedMovies VALUES ('U5','M5');
INSERT INTO RecentlyWatchedMovies VALUES ('U5','M6');
INSERT INTO RecentlyWatchedMovies VALUES ('U5','M7');
INSERT INTO RecentlyWatchedMovies VALUES ('U5','M8');
INSERT INTO RecentlyWatchedMovies VALUES ('U5','M9');
INSERT INTO RecentlyWatchedMovies VALUES ('U6','M13');
INSERT INTO RecentlyWatchedMovies VALUES ('U6','M14');
INSERT INTO RecentlyWatchedMovies VALUES ('U7','M15');
INSERT INTO RecentlyWatchedMovies VALUES ('U7','M16');
INSERT INTO RecentlyWatchedMovies VALUES ('U7','M21');

-- TV SHOW VIEW --
-- TV SHOW NAMES ALPHABETICAL ORDER --

CREATE OR REPLACE VIEW TVSHOWS
    AS SELECT DISTINCT TV_Shows.TV_Name, TV_Shows.PGL
    FROM TV_Shows;

 SELECT * FROM TVSHOWS
 ORDER BY TV_NAME ASC;
 
 -- TV SHOW RATINGS VIEW --
 -- TABLE SORTED BY RATINGS --

 CREATE OR REPLACE VIEW TVSHOWSRATING
    AS SELECT DISTINCT TV_Shows.PGL,TV_Shows.TV_Name
    FROM TV_Shows;

 SELECT * FROM TVSHOWS
 ORDER BY PGL ASC;
 
 -- MOVIES VIEW --
 -- MOVIE NAMES ALPHABETICAL ORDER --

CREATE OR REPLACE VIEW MOVIE
    AS SELECT DISTINCT Movies.MovieName, Movies.MoviePGL
    FROM Movies;

 SELECT * FROM MOVIE
 ORDER BY MovieName ASC;

-- MOVIE RATINGS VIEW --
-- TABLE SORTED BY RATINGS --
 
CREATE OR REPLACE VIEW MOVIERATING
    AS SELECT DISTINCT Movies.MoviePGL,Movies.MovieName
    FROM Movies;

 SELECT * FROM MOVIE
 ORDER BY MoviePGL ASC;
 
 -- SHOWS EVERYONE WHO WATCHED DOCUMENTARIES --

 Select Users.UserFN, Users.UserLN
 from Users
 where exists
	(select * 
	from recentlywatchedmovies, recentlywatchedtvshows
	where exists
		(select * from 
		movies, tv_shows
		where exists
			(select *
			from Genres
			where Genres.GenreName = 'Documentary'
			and Users.UserID = recentlywatchedtvshows.userid
			and Users.UserID = recentlywatchedmovies.userid
			and Genres.GenreID = tv_shows.GenreID
			and Genres.GenreID = movies.GenreiD)));

-- SHOWS EVERYONE WHO WATCHED STRANGER THINGS --

 Select Users.UserFN, Users.UserLN
 from Users
 where exists
	(select * 
	from recentlywatchedtvshows
	where exists
		(select * from 
		tv_shows
		where tv_shows.TV_Name = 'Stranger Things'
		and Users.UserID = recentlywatchedtvshows.UserID
		and recentlywatchedtvshows.TVID = tv_shows.TVID));

-- SHOWS THE NUMBER OF SHOWS ALAN LABOUSEUR WATCHED -- 		

Select count(recentlywatchedtvshows.userid)
from recentlywatchedtvshows
where exists
	(select *
	from Users
	where Users.UserLN = 'Labouseur'
	and Users.userid = recentlywatchedtvshows.userid);

-- ADMIN ROLE --

CREATE ROLE ADMIN;
GRANT ALL ON ALL TABLES IN SCHEMA PUBLIC TO ADMIN WITH GRANT OPTION;

-- USER ROLE --

CREATE ROLE USERS;
GRANT SELECT ON Genres, TV_Shows, MoviesTO USERS;

-- MOVIE GENRE SEARCH STORED PROCEDURE --

DROP FUNCTION IF EXISTS MovieGenreSearch(GenreName VARCHAR);
CREATE OR REPLACE FUNCTION MovieGenreSearch(VARCHAR) returns TABLE(GenreName VARCHAR, MovieName VARCHAR) as 
$$
DECLARE
    FindGenre VARCHAR := $1;
BEGIN
    RETURN QUERY
    SELECT Genres.GenreName, Movies.MovieName
    FROM Genres, Movies
    WHERE Genres.GenreID = Movies.GenreID 
    AND Genres.GenreName = FindGenre;
END;
$$ language plpgsql;

/* EXAMPLES */
SELECT DISTINCT MovieGenreSearch('Thriller');

SELECT DISTINCT MovieGenreSearch('Sci-Fy');

SELECT DISTINCT MovieGenreSearch('Comedy');

-- TV SHOW GENRE SEARCH STORED PROCEDURE --

DROP FUNCTION IF EXISTS TV_ShowGenreSearch(GenreName VARCHAR);
CREATE OR REPLACE FUNCTION TV_ShowGenreSearch(VARCHAR) returns TABLE(GenreName VARCHAR, TV_Name VARCHAR) as 
$$
DECLARE
    FindGenre VARCHAR := $1;
BEGIN
    RETURN QUERY
    SELECT Genres.GenreName, TV_Shows.TV_Name
    FROM Genres, TV_Shows
    WHERE Genres.GenreID = TV_Shows.GenreID 
    AND Genres.GenreName = FindGenre;
END;
$$ language plpgsql;

SELECT DISTINCT TV_ShowGenreSearch('Documentary');

SELECT DISTINCT TV_ShowGenreSearch('Drama');

-- END --
