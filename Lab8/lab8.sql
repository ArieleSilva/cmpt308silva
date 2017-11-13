
/* 2 */
CREATE TABLE Actors (
	ActorID int,
	ActorFN varchar(100),
	ActorLN varchar(100),
	AAddress varchar(255),
	DOB int,
	HairColor varchar(10),
	EyeColor varchar(10),
	Height int,
	Weight int,
	SpouseFN varchar(100),
	SpouseLN varchar(100),
	FavColor varchar(10),
	SAGAD int,
	PRIMARY KEY(ActorID),(ActorFN),(ActorLN),(AAddress),(DOB),
	FOREIGN KEY (HairColor) REFERENCES Apperance(HairColor),
	FOREIGN KEY (EyeColor) REFERENCES Apperance(EyeColor),
	FOREIGN KEY (Height) REFERENCES Apperance(Height),
	FOREIGN KEY (Weight) REFERENCES Apperance(Weight)
	FOREIGN KEY (SpouseFN) REFERENCES RelationshipStatus(SpouseFN),
	FOREIGN KEY (SpouseLN) REFERENCES RelationshipStatus(SpouseLN),
	FOREIGN KEY (FavColor) REFERENCES MiscFavs(FavColor),
	FOREIGN KEY (SAGAD) REFERENCES Guild(SAGAD)
	);
	
CREATE TABLE Movie (
	MovieID int,
	MovieName varchar(100),
	YearRealeased int,
	MPAANum int,
	DBOS int,
	FBOS int, 
	DVDBlueSales int,
	PRIMARY KEY(MovieID),(MovieName),(YearRealeased),(MPAANum),
	FOREIGN KEY (DBOS) REFERENCES Sales(DBOS),
	FOREIGN KEY (FBOS) REFERENCES Sales(FBOS),
	FOREIGN KEY (DVDBlueSales) REFERENCES Sales(DVDBlueSales)
	);
	
CREATE TABLE Sales (
	DBOS int,
	FBOS int, 
	DVDBlueSales int,
	PRIMARY KEY(DBOS),(FBOS), (DVDBlueSales)
	);
	
CREATE TABLE Apperance (
	HairColor varchar(10),
	EyeColor varchar(10),
	Height int,
	Weight int,
	PRIMARY KEY(HairColor),(EyeColor),(Height),(Weight)
	);
	
CREATE TABLE Guild (
	SAGAD int,
	DGAD int,
	PRIMARY KEY(SAGAD),(DGAD)
	);
	
CREATE TABLE RelationshipStatus (
	Status varchar (30),
	SpouseFN varchar(100),
	SpouseLN varchar(100),
	PRIMARY KEY(Status),(SpouseFN),(SpouseLN)
	);	
	
CREATE TABLE Director (
	DirectorID int,
	DirectorFN varchar(100),
	DirectorLN varchar(100),
	DAddress varchar(255)
	SpouseFN varchar(100),
	SpouseLN varchar(100)
	FilmSchool varchar(100),
	DGAD int,
	FavLens varchar(100),
	PRIMARY KEY(DirectorID),(DirectorFN),(DirectorLN),(DAddress),(FilmSchool),
	FOREIGN KEY (SpouseFN) REFERENCES RelationshipStatus(SpouseFN),
	FOREIGN KEY (SpouseLN) REFERENCES RelationshipStatus(SpouseLN),
	FOREIGN KEY (DGAD) REFERENCES Guild(DGAD),
	FOREIGN KEY (FavLens) REFERENCES MiscFavs(FavLens)
	);

CREATE TABLE MiscFavs (
	FavColor varchar(10),
	FavLens varchar(100),
	PRIMARY KEY(FavColor),(FavLens)
	);
	
CREATE TABLE WorkComposit(
	MovieID int,
	ActorID int,
	DirectorID int,
	PRIMARY KEY(MovieID),(ActorID),(DirectorID)
	);


/* 3 */

The functional dependencies of these tables are, Actors depend on the Movies, 
RelationshipStatus depends on the Actors, Sales depends on the Movie, Appearance
 depends on the Actor, Guild depends on the Director table and the Actor Table,
 MiscFavs depends on the Actors and Directors table. Finally the WorkComposit 
 Table depends on the Movie, Actors and Director Tables.


/* 4 */

	Select Director.DirectorFN, Director.DirectorLN
	from Director, Actor, WorkComposit, Movie
	where Director.DirectorID = WorkComposit.DirectorID
	and Actor.ActorID = WorkComposit.ActorID
	and Movie.MovieID = WorkComposit.MovieID
	and Actor.ActorFN = 'Roger'
	and Actor.ActorLN = 'Moore';
	
	
	
	
	