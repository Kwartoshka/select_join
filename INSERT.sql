INSERT INTO Genre(Name) VALUES
	('Rock'),
	('Hip-Hop'),
	('Blues'),
	('Country'),
	('Retrowave'),
	('Pop'),
	('Alternative')
;

INSERT INTO Author(Name) VALUES
	('Furious Unicorn'), 
	('Macaroniq'), 
	('Hookahwei'), 
	('Xiaooley'), 
	('Hyper Paper'), 
	('Brotherhood of Aluminium'), 
	('Vault 666'), 
	('Vityok'), 
	('DinoSour'), 
	('DJ Random')
;

INSERT INTO Album(Name, Year) VALUES
	('Hoola Hoop', 2018), 
	('Crazy Daisy', 2018), 
	('American Genius', 2017), 
	('Eins', 2016), 
	('Zwei', 2018), 
	('Drei', 2020), 
	('Hyper Theory', 2019), 
	('Matadora', 2010)
;

INSERT INTO Track(Name, Album_id, Duration) VALUES
	('Cyerdary', 1, 2.1), 
	('Kow', 2, 3.1), 
	('Lirtalfl', 3, 3.5), 
	('My Vinitoca', 4, 3.6), 
	('Ilaneob', 5, 3.7), 
	('Yaneryn', 6, 3.8), 
	('Udikate my Willy Wonka', 7, 3.9), 
	('Falarr', 8, 4.3), 
	('Ytoke', 1, 2.8), 
	('My Danisali', 2, 2.7), 
	('Ctelichol', 4, 2.6), 
	('Pinotreng', 6, 2.6), 
	('Poach', 7, 2.9), 
	('Annadee', 8, 2.5), 
	('Cetinshe', 1, 2.3), 
	('Fesellysl', 5, 3.5), 
	('Kamisynau', 7, 3.3), 
	('Valaylain', 8, 3.1)
;

INSERT INTO Miscellany (Name, Year) VALUES
	('Good', 2020), 
	('Bad', 2019), 
	('Super', 2018), 
	('Mega', 2017), 
	('Hot', 2016), 
	('SoSo', 2020), 
	('Like', 2019), 
	('Dislike', 2020)
;

INSERT INTO genre_author(Genre_id, Author_id) VALUES
	(1, 1), 
	(2, 2), 
	(3, 4), 
	(4, 3), 
	(5, 8), 
	(6, 2), 
	(7, 7), 
	(7, 2), 
	(6, 9), 
	(5, 10), 
	(4, 5), 
	(3, 6), 
	(2, 8), 
	(1, 3)
;

INSERT INTO author_album(Author_id, Album_id) VALUES
	(1, 1), 
	(2, 2), 
	(3, 1), 
	(4, 8), 
	(5, 3), 
	(6, 7), 
	(7, 6), 
	(8, 4), 
	(9, 2), 
	(10, 3), 
	(4, 2), 
	(5, 6), 
	(8, 8), 
	(3, 7)
;


INSERT INTO miscellany_track(Miscellany_id, Track_id) VALUES
	(1, 1), 
	(8, 2), 
	(7, 3), 
	(3, 4), 
	(1, 5), 
	(3, 6), 
	(7, 7), 
	(8, 8), 
	(2, 9), 
	(7, 10), 
	(5, 11), 
	(5, 12), 
	(6, 13), 
	(4, 14), 
	(3, 15), 
	(6, 16), 
	(8, 17), 
	(1, 18), 
	(1, 11), 
	(2, 13),  
	(4, 18), 
	(5, 1), 
	(6, 5),
	(8, 9)
;
