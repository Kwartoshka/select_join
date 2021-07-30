create table if not exists Genre (
	id serial primary key,
	Name varchar(30) not null
);

create table if not exists Author (
	id serial primary key,
	Name varchar(40) not null unique
);


create table if not exists Album (
	id serial primary key,
	Name varchar(50) not null,
	Year integer check(Year > 1800)
);


create table if not exists Track (
	id serial primary key,
	Album_id integer not null references Album(id),
	Name varchar(50) not null,
	Duration DECIMAL not null
);

create table if not exists Miscellany (
	id serial primary key,
	Name varchar(50) not null unique,
	Year integer check(Year > 1800)
);

create table if not exists Miscellany_Track (
	Miscellany_id integer not null references Miscellany(id),
	Track_id integer not null references Track(id),
	constraint pk primary key (Miscellany_id, Track_id)
);


create table if not exists Author_Album (
	Author_id integer not null references Author(id),
	Album_id integer not null references Album(id),
	constraint pkk primary key (Author_id, Album_id)
);

create table if not exists Genre_Author (
	Genre_id integer not null references Genre(id),
	Author_id integer not null references Author(id),
	constraint pkkk primary key (Genre_id, Author_id)
);


