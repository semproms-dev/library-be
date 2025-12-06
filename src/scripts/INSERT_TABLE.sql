USE `library`;


CREATE TABLE IF NOT EXISTS `Books` (
  `BookId` INT AUTO_INCREMENT PRIMARY KEY,
  `Title` VARCHAR(300) NOT NULL,
  `Author` VARCHAR(255) NOT NULL,
  `YearBook` SMALLINT,
  `BookType` VARCHAR(255) NOT NULL,
  `Genre` VARCHAR(255) NOT NULL,
  `Owner` VARCHAR(255) NOT NULL,
  `Status` VARCHAR(255) NOT NULL,
  `Location` VARCHAR(255) NOT NULL,
  `Language` VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `Config` (
  `ConfId` INT AUTO_INCREMENT PRIMARY KEY,
  `KindOf` VARCHAR(255),
  `Value` VARCHAR(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO Config (Kind, Value) VALUES
('owner', 'Luis'),
('owner', 'Cristina'),
('status', 'TBR'),
('status', 'R'),
('status', 'WIP'),
('status', 'HB'),
('location', 'Office 1'),
('location', 'Office 2'),
('location', 'Office 3'),
('location', 'Office 4'),
('location', 'Office 5'),
('location', 'Office 6'),
('location', 'Office 7'),
('location', 'Office 8'),
('location', 'Office 9'),
('location', 'Office 10'),
('location', 'Office 11'),
('location', 'Office 12'),
('location', 'Balcony'),
('location', 'LR1'),
('location', 'LR4'),
('location', 'LR5'),
('location', 'LR6'),
('location', 'LR12'),
('genre', 'Astronomy'),
('genre', 'Science Fiction'),
('genre', 'Physics'),
('genre', 'Mystery/Thriller'),
('genre', 'Philosophy'),
('genre', 'History'),
('genre', 'Gender studies'),
('genre', 'Fantasy'),
('genre', 'Adventure'),
('genre', 'Mathematics'),
('genre', 'Photography'),
('genre', 'Energy'),
('genre', 'Computer Science'),
('genre', 'Horror'),
('genre', 'Science'),
('genre', 'Paleonthology'),
('genre', 'Medicine'),
('genre', 'Environmental Studies'),
('genre', 'Chess'),
('genre', 'Biography'),
('genre', 'Childrens Books'),
('genre', 'Short stories'),
('genre', 'Ornithology'),
('genre', 'Biology'),
('genre', 'Hispanic'),
('genre', 'Economics'),
('genre', 'European'),
('genre', 'English'),
('genre', 'Poetry'),
('genre', 'Theatre'),
('genre', 'Travel'),
('genre', 'Asian'),
('genre', 'Essay'),
('genre', 'Translation'),
('genre', 'Literature'),
('genre', 'Linguistics'),
('genre', 'Cooking'),
('genre', 'American'),
('genre', 'Home'),
('genre', 'Miscellanea'),
('genre', 'Comic'),
('genre', 'Anthropology'),
('genre', 'Sport'),
('genre', 'German'),
('genre', 'Art'),
('genre', 'African'),
('genre', 'Architecture'),
('genre', 'Chemistry'),
('genre', 'Botanics'),
('genre', 'Education');

-- Generated SQL INSERT Script

INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Breve historia de la astronomía', 'Díaz León, Enrique José', 2021, 'Non fiction', 'Astronomy', 'Luis', 'TBR', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The Left Hand of Darkness', 'Le Guin, Ursula K.', 2017, 'Fiction', 'Science Fiction', 'Luis', 'TBR', 'Office 3', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Esto no estaba en mi libro de historia de la física', 'Martínez, Antonio', 2020, 'Non fiction', 'Physics', 'Luis', 'TBR', 'Offfice 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The Adventures and Memoris of Sherlock Holmes', 'Doyle, Arthur Conan', 2008, 'Fiction', 'Mystery/Thriller', 'Luis', 'TBR', 'Office 3', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Qué sabes de... Platón', 'Alcoberro, Ramón', 2019, 'Non fiction', 'Philosophy', 'Luis', 'TBR', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Mitología Nórdica', 'Bernárdez, Enrique', 2017, 'Non fiction', 'History', 'Luis', 'TBR', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Untenrum Frei', 'Stokowski, Margarete', 2021, 'Non fiction', 'Gender studies', 'Luis', 'TBR', 'Office 1', 'German');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The Wonderful Wizard of Oz', 'Baum, L. Frank', 1995, 'Fiction', 'Fantasy', 'Luis', 'R', 'Office 3', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Call of the Wild & White Fang', 'London, Jack', 2004, 'Fiction', 'Adventure', 'Luis', 'WIP', 'Office 3', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Diez negritos', 'Christie, Agatha', 2007, 'Fiction', 'Mystery/Thriller', 'Luis', 'TBR', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Matemáticas y códigos secretos', 'Gómez Urgellés, Juan', 2018, 'Non fiction', 'Mathematics', 'Luis', 'TBR', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Asesinato en el Orient Express', 'Christie, Agatha', 2010, 'Fiction', 'Mystery/Thriller', 'Luis', 'TBR', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Halo: El Flood', 'Dietz, William C.', 2009, 'Fiction', 'Adventure', 'Luis', 'R', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Fotografía macro y de aproximación. Arte y práctica', 'Thompson, Robert', 2020, 'Non fiction', 'Photography', 'Luis', 'WIP', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El nuevo orden verde. Cómo la transición energética cambiará el mundo', 'Fresco, Pedro', 2020, 'Non fiction', 'Energy', 'Luis', 'R', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('SQL Queries for Mere Mortals', 'Viescas, John L./ Hernandez, Michael J.', 2014, 'Non fiction', 'Computer Science', 'Luis', 'HB', 'Office 1', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Redes de computadoras. Un enfoque descendente', 'Kurose, James F./Ross, Keith W.', 2010, 'Non fiction', 'Computer Science', 'Luis', 'HB', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Essential Mathematics for Games & Interactive Applications', 'Van Verth, James M./Bishop, Lars M.', 2004, 'Non fiction', 'Computer Science', 'Luis', 'HB', 'Office 1', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El exorcista', 'Blatty, William Peter', 1974, 'Fiction', 'Horror', 'Luis', 'TBR', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Narraciones extraordinarias', 'Poe, Edgar Allan', 2017, 'Fiction', 'Horror', 'Luis', 'TBR', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Biotecnología en el menú. Manual de supervivencia en el debate transgénico', 'Seguí Simarro, José María', 2013, 'Non fiction', 'Science', 'Luis', 'R', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Esto no estaba en mi libro de radiactividad', 'Martínez, Alonso', 2020, 'Non fiction', 'Physics', 'Luis', 'R', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Eso no estaba en mi libro de historia de los dinosaurios', 'Gascó Lluna, Francesc', 2021, 'Non fiction', 'Paleonthology', 'Luis', 'R', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('A Study in Scarlet & The Sign of Four', 'Doyle, Arthur Conan', 2004, 'Fiction', 'Mystery/Thriller', 'Luis', 'TBR', 'Office 3', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La energía nuclear salvará el mundo', 'García, Alfredo', 2020, 'Non fiction', 'Energy', 'Luis', 'R', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Mala ciencia', 'Goldacre, Ben', 2011, 'Non fiction', 'Medicine', 'Luis', 'R', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La voz de las espadas', 'Abercrombie, Joe', 2018, 'Fiction', 'Fantasy', 'Luis', 'TBR', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Why does E=MC2?', 'Cox, Brian/Forshaw, Jeff', 2010, 'Non fiction', 'Physics', 'Luis', 'WIP', 'Office 1', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('And then there were none', 'Christie, Agatha', 2015, 'Fiction', 'Mystery/Thriller', 'Luis', 'TBR', 'Office 3', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Mercaderes de la duda', 'Oreskes, Naomi/Conway, Eric M.', 2018, 'Non fiction', 'Environmental Studies', 'Luis', 'TBR', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('En busca de Venus. El arte de medir el cielo', 'Wulf, Andrea', 2020, 'Non fiction', 'Astronomy', 'Luis', 'TBR', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Breve historia de la astronomía', 'Cardona, Ángel R.', 2020, 'Non fiction', 'Astronomy', 'Luis', 'TBR', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Concurrencia y sistemas distribuidos', 'UPV', 2013, 'Non fiction', 'Computer Science', 'Luis', 'HB', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Apuntes sobre la teoría de autómatas y lenguajes formales', 'UPV', 1996, 'Non fiction', 'Computer Science', 'Luis', 'HB', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La vida contada por un sapiens a un neardental', 'Millás, Juan José/Arsuaga, Juan Luis', 2022, 'Non fiction', 'Paleonthology', 'Luis', 'TBR', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Estrategia en el ajedrez', 'Illescas, Miguel', 2022, 'Non fiction', 'Chess', 'Luis', 'HB', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('ESDT3. El orden y el caos', 'Cooper, Louise', 1988, 'Fiction', 'Fantasy', 'Luis', 'TBR', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Vida de Galileo Galilei', 'Banfi, Antonio', 1967, 'Non fiction', 'Biography', 'Luis', 'TBR', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Death in the Clouds', 'Christie, Agatha', 2015, 'Fiction', 'Mystery/Thriller', 'Luis', 'WIP', 'Office 3', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The Rest is History. History''s Most Curious Questions Answered', 'Holland, Tom/Sandbrook, Dominic', 2024, 'Non fiction', 'History', 'Luis', 'TBR', 'Office 1', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Good Omens', 'Pratchett, Terry/Gaiman, Neil', 2019, 'Fiction', 'Fantasy', 'Luis', 'TBR', 'Office 3', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Auge y caída de los dinosaurios', 'Brusatte, Steve', 2019, 'Non fiction', 'Paleonthology', 'Luis', 'R', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Los secuestradores de burros', 'Durrell, Gerald', 2001, 'Fiction', 'Children''s Books', 'Luis', 'TBR', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El mundo y sus demonios', 'Sagan, Carl', 2019, 'Non fiction', 'Philosophy', 'Luis', 'WIP', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La lira desafinada de Pitágoras', 'Martín Castro, Almudena', 2022, 'Non fiction', 'Mathematics', 'Luis', 'TBR', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Las matemáticas en 100 preguntas', 'Sánchez González, Álvaro', 2020, 'Non fiction', 'Mathematics', 'Luis', 'TBR', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Argonauta. Peripecias modernas entre el océano y el cambio climático', 'Rodríguez Ros, Pablo', 2020, 'Non fiction', 'Environmental Studies', 'Luis', 'TBR', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Qué sabes de... Sócrates', 'Vilà Vernis, Ramon', 2019, 'Non fiction', 'Philosophy', 'Luis', 'TBR', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Mitos y leyendas nórdicos', 'Whittock, Martin/Whittcock, Hannah', 2019, 'Non fiction', 'History', 'Luis', 'TBR', 'Office 1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Norse Mythology', 'Gaiman, Neil', 2018, 'Non fiction', 'History', 'Luis', 'TBR', 'Office 2', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Historia de los números', 'Gracián, Enrique', 2022, 'Non fiction', 'Mathematics', 'Luis', 'R', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Yo, robot', 'Asimov, Isaac', 2016, 'Fiction', 'Science Fiction', 'Luis', 'TBR', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('1984', 'Orwell, George', 2014, 'Fiction', 'Science Fiction', 'Luis', 'R', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Observar el Cielo 1', 'Levy, David H.', 1995, 'Non fiction', 'Astronomy', 'Luis', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Observar el Cielo 2', 'Levy, David H.', 1995, 'Non fiction', 'Astronomy', 'Luis', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Todo lo que debes saber sobre el coche eléctrico', 'Tomás Catalá, Javier', 2019, 'Non fiction', 'Energy', 'Luis', 'R', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Entender las aperturas', 'Collins, Sam', 2017, 'Fiction', 'Chess', 'Luis', 'HB', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Gödel, Escher, Bach. Un eterno y grácil bucle', 'Hofstadter, Douglas R.', 2021, 'Non fiction', 'Mathematics', 'Luis', 'TBR', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El huevo de dinosaurio y otras historias científicas sobre la evolución', 'Bolívar, Jorge', 2019, 'Non fiction', 'Paleonthology', 'Luis', 'TBR', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('CSS Secrets. Better solutions to everyday web design problems', 'Verou, Lea', 2015, 'Non fiction', 'Computer Science', 'Luis', 'HB', 'Office 2', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('ESDT1. El iniciado', 'Cooper, Louise', 1988, 'Fiction', 'Fantasy', 'Luis', 'TBR', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('ESDT2. El proscrito', 'Cooper, Louise', 1988, 'Fiction', 'Fantasy', 'Luis', 'TBR', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El libro de la mitología', 'Melgar Valero, Luis Tomás', 2020, 'Non fiction', 'History', 'Luis', 'HB', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El fin del antiguo Egipto', 'National Geographic', 2013, 'Non fiction', 'History', 'Luis', 'HB', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Astrofotografía. El paisaje nocturno', 'Martínez Morán, Javier', 2022, 'Non fiction', 'Photography', 'Luis', 'HB', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('MD1. El color de la magia', 'Pratchett, Terry', 2014, 'Fiction', 'Fantasy', 'Luis', 'R', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('MD3. Ritos iguales', 'Pratchett, Terry', 2014, 'Fiction', 'Fantasy', 'Luis', 'R', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('MD12. El segador', 'Pratchett, Terry', 2012, 'Fiction', 'Fantasy', 'Luis', 'R', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('MD15. Hombres de armas', 'Pratchett, Terry', 2013, 'Fiction', 'Fantasy', 'Luis', 'R', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('MD16. Soul music', 'Pratchett, Terry', 2013, 'Fiction', 'Fantasy', 'Luis', 'R', 'Office 3', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('MD21. Papá Puerco', 'Pratchett, Terry', 2011, 'Fiction', 'Fantasy', 'Luis', 'R', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('MD22. ¡Voto a bríos!', 'Pratchett, Terry', 2015, 'Fiction', 'Fantasy', 'Luis', 'TBR', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('MD24. El quinto elefante', 'Pratchett, Terry', 2011, 'Fiction', 'Fantasy', 'Luis', 'TBR', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('MD25. La verdad', 'Pratchett, Terry', 2014, 'Fiction', 'Fantasy', 'Luis', 'TBR', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('MD26. Ladrón del tiempo', 'Pratchett, Terry', 2011, 'Fiction', 'Fantasy', 'Luis', 'R', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('MD27. Ronda de noche', 'Pratchett, Terry', 2011, 'Fiction', 'Fantasy', 'Luis', 'R', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('MD28. Regimiento monstruoso', 'Pratchett, Terry', 2015, 'Fiction', 'Fantasy', 'Luis', 'TBR', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('MD41. Los pequeños hombres libres', 'Pratchett, Terry', 2003, 'Fiction', 'Fantasy', 'Luis', 'R', 'Office 3', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Guards, guards!', 'Pratchett, Terry', 2013, 'Fiction', 'Fantasy', 'Luis', 'R', 'Office 3', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The Amazing Maurice and his Educated Rodents', 'Pratchett, Terry', 2002, 'Fiction', 'Fantasy', 'Luis', 'R', 'Office 4', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The Wee Free Men', 'Pratchett, Terry', 2006, 'Fiction', 'Fantasy', 'Luis', 'TBR', 'Office 4', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Ein Hut voller Sterne', 'Pratchett, Terry', 2006, 'Fiction', 'Fantasy', 'Luis', 'TBR', 'Office 4', 'German');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Feet of Clay', 'Pratchett, Terry', 1997, 'Fiction', 'Fantasy', 'Luis', 'TBR', 'Office 4', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La hechicera, el gato y el demonio', 'Lozano Leyva, Manuel', 2023, 'Non fiction', 'Physics', 'Luis', 'TBR', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Das kleine Märchenbuch', 'Hermanos Grimm', 1998, 'Fiction', 'Children''s Books', 'Luis', 'TBR', 'Office 4', 'German');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Angst', 'Zweig, Stefan', 2021, 'Fiction', 'Fantasy', 'Luis', 'TBR', 'Office 4', 'German');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Los Simpson y las matemáticas', 'Singh, Simon', 2013, 'Non fiction', 'Mathematics', 'Luis', 'R', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Por favor, sea breve', 'Obligado, Clara', 2013, 'Fiction', 'Short stories', 'Luis', 'TBR', 'Office 4', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La partícula al final del universo', 'Carroll, Sean', 2013, 'Non fiction', 'Physics', 'Luis', 'TBR', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El origen del sistema solar', 'Trigo Rodríguez, Josep Maria', 2001, 'Non fiction', 'Physics', 'Luis', 'R', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Las rapaces nocturnas ibéricas en la cultura popular', 'Pestana Salido, Antonio J.', 2023, 'Non fiction', 'Ornithology', 'Luis', 'WIP', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Salem''s Lot', 'King, Stephen', 1976, 'Fiction', 'Horror', 'Luis', 'TBR', 'Office 4', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Curiosidades numéricas', 'Strachan, Liz', 2018, 'Non fiction', 'Mathematics', 'Luis', 'R', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('¿Qué es la teoría de la relatividad?', 'Landau, Lev/Rumer, Yuri', 2021, 'Non fiction', 'Physics', 'Luis', 'R', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Microbiota. Los microbios de tu organismo', 'López-Goñi, Ignacio', 2019, 'Non fiction', 'Biology', 'Luis', 'TBR', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Sendas & caminos', 'Adelantado Soriano, Vicente', 2021, 'Fiction', 'Hispanic', 'Luis', 'R', 'Office 4', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La vida maravillosa', 'Gould, Stephen Jay', 2011, 'Non fiction', 'Paleonthology', 'Luis', 'TBR', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Hot Money', 'Klein, Naomi', 2014, 'Non fiction', 'Economics', 'Luis', 'TBR', 'Office 2', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Destejiendo el arco iris', 'Dawkins, Richard', 2012, 'Non fiction', 'Philosophy', 'Luis', 'R', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La conducta de los pájaros', 'Ackerman, Jennifer', 2021, 'Non fiction', 'Ornithology', 'Luis', 'TBR', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Collins Bird Guide', 'Svensson, Lars', 2017, 'Non fiction', 'Ornithology', 'Luis', 'HB', 'Office 2', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Contact', 'Sagan, Carl', 1997, 'Fiction', 'Science Fiction', 'Luis', 'R', 'Office 4', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Fahrenheit 451', 'Bradbury, Ray', 2012, 'Fiction', 'Science Fiction', 'Luis', 'R', 'Office 4', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El árbol de las brujas', 'Bradbury, Ray', 2019, 'Fiction', 'Science Fiction', 'Luis', 'TBR', 'Office 4', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The Call of the Wild', 'London, Jack', 2025, 'Fiction', 'Adventure', 'Luis', 'WIP', 'Office 4', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('ES6 & Beyond. JS you don''t know', 'Simpson, Kyle', 2016, 'Non fiction', 'Computer Science', 'Luis', 'HB', 'Office 2', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La mente de los justos', 'Haidt, Jonathan', 2024, 'Non fiction', 'Psychology', 'Luis', 'R', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Guía arqueológica de Egipto y Nubia', 'Damiano-Appia, Maurizio', 2005, 'Non fiction', 'History', 'Luis', 'HB', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Mitos egipcios', 'Hart, George', 2003, 'Non fiction', 'History', 'Luis', 'R', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Cándido', 'Arouet, François-Marie "Voltaire"', 2018, 'Fiction', 'European', 'Cristina', 'WIP', 'Office 4', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Eleanor Oliphant is Completely Fine', 'Honeyman, Gail', 2017, 'Fiction', 'English ', 'Cristina', 'R', 'Office 4', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La verdad sobre la vieja Carola', 'Pacheco, Carmen', 2013, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 4', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La escuela del alma', 'Esquirol, Josep Maria', 2024, 'Non fiction', 'Philosophy', 'Cristina', 'TBR', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Hojas de hierba', 'Whitman, Walt', 1984, 'Fiction', 'Poetry', 'Cristina', 'R', 'Office 4', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('A Streetcar Named Desire', 'Williams, Tennessee', 2012, 'Fiction', 'Theatre', 'Cristina', 'R', 'Office 4', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('París', 'Anaya Touring Club', 2007, 'Non fiction', 'Travel', 'Cristina', 'HB', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Candide', 'Arouet, François-Marie "Voltaire"', 1991, 'Fiction', 'European', 'Cristina', 'TBR', 'Office 4', 'French');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Better Than Before', 'Rubin, Gretchen', 2015, 'Non fiction', 'Psychology', 'Cristina', 'WIP', 'Office 7', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Ensayo sobre la ceguera', 'Saramago, José', 2023, 'Fiction', 'European', 'Cristina', 'TBR', 'Office 4', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Eleanor Oliphant is Completely Fine', 'Honeyman, Gail', 2018, 'Fiction', 'English ', 'Cristina', 'R', 'Office 4', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La estrategia del parásito', 'Mallorquí, César', 2017, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 4', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Meditaciones', 'Marco Aurelio', 2020, 'Non fiction', 'Philosophy', 'Cristina', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Il giovane Holden', 'Salinger, J.D.', 2014, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 4', 'Italian');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Zabhegyezö', 'Salinger, J.D.', 1968, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 4', 'Hungarian');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('¿Dónde vamos a bailar esta noche?', 'Aznar, Javier', 2020, 'Fiction', 'Hispanic', 'Cristina', 'TBR', 'Office 4', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('À esoera no centeio', 'Salinger, J.D.', 2017, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 4', 'Portuguese');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El olvido que seremos', 'Abad Faciolince, Héctor', 2018, 'Non fiction', 'Biography', 'Cristina', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Rana', 'Yan, Mo', 2012, 'Fiction', 'Asian', 'Cristina', 'R', 'Office 4', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El segundo sexo', 'De Beauvoir, Simone', 2020, 'Non fiction', 'Gender studies', 'Cristina', 'TBR', 'Ofice 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La última lección', 'Pausch, Randy', 2008, 'Non fiction', 'Biography', 'Cristina', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El drama del niño dotado', 'Miller, Alice', 2013, 'Non fiction', 'Psychology', 'Cristina', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La isla de Bowen', 'Mallorquí, César', 2012, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 4', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El perfume de las flores de noche', 'Slimani, Leila', 2012, 'Non fiction', 'Essay', 'Cristina', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Horchata de ortigas', 'Senell, Joles', 1986, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 4', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Sin noticias de Gurb', 'Mendoza, Eduardo', 2024, 'Fiction', 'Hispanic', 'Cristina', 'R', 'Office 4', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La voz del violín', 'Camillieri, Andrea', 2012, 'Fiction', 'Mystery/Thriller', 'Cristina', 'TBR', 'Office 4', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El jugador', 'Dostoievski, Fiodor', 2013, 'Fiction', 'European', 'Cristina', 'TBR', 'Office 4', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('De la ira', 'Séneca', 2022, 'Non fiction', 'Philosophy', 'Cristina', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Sefarad', 'Muñoz Molina, Antonio', 2014, 'Fiction', 'Hispanic', 'Cristina', 'TBR', 'Office 4', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Tres sombreros de copa', 'Mihura, Miguel', 1990, 'Fiction', 'Theatre', 'Cristina', 'R', 'Office 4', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El asesino ciego', 'Atwood, Margaret', 2010, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 4', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Tao Te Ching', 'Lao Tse', 2007, 'Non fiction', 'Philosophy', 'Cristina', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The Happiness Project', 'Rubin, Gretchen', 2009, 'Non fiction', 'Psychology', 'Cristina', 'R', 'Office 7', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('En las nubes', 'McEwan, Ian', 2007, 'Fiction', 'English ', 'Cristina', 'R', 'Office 4', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('¿Y los hombres qué?', 'Moran, Caitlin', 2025, 'Non fiction', 'Gender studies', 'Cristina', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Cómo ser mujer', 'Moran, Caitlin', 2022, 'Non fiction', 'Gender studies', 'Cristina', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El arte de la guerra', 'Sun Tzu', 2010, 'Non fiction', 'Philosophy', 'Cristina', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Rebecca', 'Du Maurier, Daphne', 2015, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 4', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Kafka en la orilla', 'Murakami, Haruki', 2020, 'Fiction', 'Asian', 'Cristina', 'TBR', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El círculo escarlata', 'Mallorquí, César', 2020, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('12 Rules for Life', 'Peterson, Jordan B.', 2019, 'Non fiction', 'Psychology', 'Cristina', 'R', 'Office 7', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Usos amorosos del dieciocho en España', 'Martín Gaite, Carmen', 1988, 'Non fiction', 'Literature', 'Cristina', 'TBR', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El gato de Troya', 'Alonso, Eduardo', 1997, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Cartas desde España', 'Blanco White, José María', 2002, 'Non fiction', 'Biography', 'Cristina', 'TBR', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Ecosistema de Valencia', 'Fischer, Dorothee', 2022, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Balcony', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Winter', 'Smith, Ali', 2017, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 5', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('De amor y de sombra', 'Allende, Isabel', 2001, 'Fiction', 'Hispanic', 'Cristina', 'TBR', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La intriga de los espejos', 'Reyna, Pablo C.', 2024, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('L''attrape-coeurs', 'Salinger, J.D.', 2014, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 5', 'French');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Stupeur et tremblements', 'Nothomb, Amélie', 2017, 'Fiction', 'European', 'Cristina', 'R', 'Office 5', 'French');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Les Trois Mousquetaires', 'Dumas, Alexandre', 2013, 'Fiction', 'European', 'Cristina', 'R', 'Office 5', 'French');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Eats, shoots & leaves', 'Truss, Lynne', 2009, 'Non fiction', 'Linguistics', 'Cristina', 'TBR', 'Office 7', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The Bell Jar', 'Plath, Sylvia', 2013, 'Fiction', 'English ', 'Cristina', 'R', 'Office 5', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('A closed and common orbit', 'Chambers, Becky', 2017, 'Fiction', 'Science Fiction', 'Cristina', 'TBR', 'Office 5', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Manual de instrucciones para el fin del mundo', 'Mallorquí, César', 2019, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Nubosidad variable', 'Martín Gaite, Carmen', 1993, 'Fiction', 'Hispanic', 'Cristina', 'R', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Doña Rosita la Soltera o El lenguaje de las flores', 'García Lorca, Federico', 2001, 'Fiction', 'Theatre', 'Cristina', 'TBR', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La ciudad y los perros', 'Vargas Llosa, Mario', 2010, 'Fiction', 'Hispanic', 'Cristina', 'TBR', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('White Teeth', 'Smith, Zadie', 2000, 'Fiction', 'English ', 'Cristina', 'TBR ', 'Office 5', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La edad de hierro', 'Coetzee, J.M.', 2011, 'Fiction', 'English ', 'Cristina', 'R', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La amiga estupenda 3. Las deudas del cuerpo', 'Ferrante, Elena', 2018, 'Fiction', 'European', 'Cristina', 'R', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Cocina Indonesia', 'H Kliczkowski', 2003, 'Non fiction', 'Cooking', 'Cristina', 'HB', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Cocina India', 'H Kliczkowski', 2003, 'Non fiction', 'Cooking', 'Cristina', 'HB', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La amiga estupenda 4. La niña perdida', 'Ferrante, Elena', 2018, 'Fiction', 'European', 'Cristina', 'R', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La amiga estupenda 1', 'Ferrante, Elena', 2019, 'Fiction', 'European', 'Cristina', 'R', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La amiga estupenda 2. Un mal nombre', 'Ferrante, Elena', 2019, 'Fiction', 'European', 'Cristina', 'R', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Mi piedra Rosetta. Nina. Cuatro piezas breves', 'Fernández, José Ramón/Serrano Baixauli, Rosa', 2017, 'Fiction', 'Theatre', 'Cristina', 'TBR', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Un mundo feliz', 'Huxley, Aldous', 2006, 'Fiction', 'Science Fiction', 'Cristina', 'R', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('A pie por Nueva York', 'National Geographic', 2013, 'Non fiction', 'Travel', 'Cristina', 'HB', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La insoportable levedad del ser', 'Kundera, Milan', 2017, 'Fiction', 'European', 'Cristina', 'R', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La seduzione dell''altrove', 'Maraini, Dacia', 2010, 'Non fiction', 'Biography', 'Cristina', 'TBR', 'Office 7', 'Italian');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Sendas & caminos', 'Adelantado Soriano, Vicente', 2021, 'Fiction', 'Hispanic', 'Cristina', 'TBR', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The creative impulse and other stories', 'Maugham, W. Somerset', 1988, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 5', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Otra vida por vivir', 'Kallifatides, Theodor', 2023, 'Non fiction', 'Biography', 'Cristina', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Doña Flor y sus dos maridos', 'Amado, Jorge', 2016, 'Fiction', 'American', 'Cristina', 'TBR', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Pepe Saurio 1. Una travesura prehistórica', 'Reyna, Pablo C.', 2022, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La maestra gitana', 'Cabrillana, Lola', 2023, 'Fiction', 'Hispanic', 'Cristina', 'R', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Nina', 'Fernández, José Ramón', 2007, 'Fiction', 'Theatre', 'Cristina', 'R', 'Office 5', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Officers and Gentlemen', 'Waugh, Evelyn', 1984, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 5', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El Aleph', 'Borges, Jorge Luis', 1985, 'Fiction', 'Hispanic', 'Cristina', 'R', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La zona muerta', 'King, Stephen', 1985, 'Fiction', 'Horror', 'Cristina', 'R', 'Office 5', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Washington Square', 'James, Henry', 2001, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 5', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Diarios', 'Zweig, Stefan', 2021, 'Non fiction', 'Biography', 'Cristina', 'TBR', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The Admiral Baths', 'Gynther, Dana', 2017, 'Fiction', 'English ', 'Cristina', 'R', 'Office 6', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Is that a fish in your ear?', 'Bellos, David', 2010, 'Non fiction', 'Translation', 'Cristina', 'TBR', 'Office 7', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Trece monos', 'Mallorquí, César', 2015, 'Fiction', 'Science Fiction', 'Cristina', 'R', 'Office 6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Cuadernos de todo', 'Martín Gaite, Carmen', 2003, 'Non fiction', 'Biography', 'Cristina', 'TBR', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Backlash. The undeclared war against women', 'Faludi, Susan', 2012, 'Non fiction', 'Gender studies', 'Cristina', 'TBR', 'Office 2', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Mensaje', 'Pessoa, Fernando', 2024, 'Fiction', 'Poetry', 'Cristina', 'TBR', 'Office 6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El vigilant en el camp de sègol', 'Salinger, J.D.', 2014, 'Fiction', 'English ', 'Cristina', 'R', 'Office 6', 'Catalan');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La conducta de los pájaros', 'Ackerman, Jennifer', 2021, 'Non fiction', 'Ornithology', 'Cristina', 'TBR', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Asterios Polyp', 'Mazzucchelli', 2009, 'Fiction', 'Comic', 'Cristina', 'R', 'Office 6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Divas de Diván', 'Pacheco, Carmen', 2018, 'Fiction', 'Comic', 'Cristina', 'R', 'Office 6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Arrugas', 'Roca, Paco', 2021, 'Fiction', 'Comic', 'Cristina', 'R', 'Office 6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Troll Corporation', 'Pacheco, Carmen', 2018, 'Fiction', 'Comic', 'Cristina', 'R', 'Office 6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('2 cuentos maravillosos', 'Martín Gaite, Carmen', 1992, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The Catcher in the Rye', 'Salinger, J.D.', 2009, 'Fiction', 'English ', 'Cristina', 'R', 'Office 6', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El guardián entre el centeno', 'Salinger, J.D.', 2007, 'Fiction', 'English ', 'Cristina', 'R', 'Office 6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Der Vorleser', 'Schlink, Bernhard', 1997, 'Fiction', 'European', 'Cristina', 'R', 'Office 6', 'German');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Cossos Estranys', 'Arasa Altimira, Eva', 2024, 'Fiction', 'European', 'Cristina', 'TBR', 'Office 6', 'Catalan');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Schachnovelle', 'Zweig, Stefan', 2013, 'Fiction', 'European', 'Cristina', 'TBR', 'Office 6', 'German');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Gramática de la fantasía', 'Rodari, Gianni', 2011, 'Non fiction', 'Literature', 'Cristina', 'TBR', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Ascolta il mio cuore', 'Pitzorno, Bianca', 2010, 'Fiction', 'Children''s Books', 'Cristina', 'TBR', 'Office 6', 'Italian');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Àlbum d''amors complicats', 'Olesti, Isabel', 2022, 'Fiction', 'European', 'Cristina', 'TBR', 'Office 6', 'Catalan');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La Alhambra y el Generalife. Guía oficial', 'Patronato de la Alhambra', 2010, 'Non fiction', 'Travel', 'Cristina', 'HB', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Recetas de los elfos', 'Anderson, Robert Tuesley', 2022, 'Non fiction', 'Cooking', 'Cristina', 'HB', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Recetas del mundo de Tolkien', 'Anderson, Robert Tuesley', 2020, 'Non fiction', 'Cooking', 'Cristina', 'HB', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('21 Lessons for the 21st Century', 'Harari, Yuval Noah', 2018, 'Non fiction', 'Philosophy', 'Cristina', 'TBR', 'Office 7', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('84 Charing Cross Road', 'Hanff, Helene', 1987, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 6', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The Fourth Monkey', 'Barker, J.D.', 2018, 'Fiction', 'Mystery/Thriller', 'Cristina', 'TBR', 'Office 6', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Los espejismos de la certeza', 'Hustvedt, Siri', 2021, 'Non fiction', 'Philosophy', 'Cristina', 'TBR', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Atonement', 'McEwan, Ian', 2001, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 6', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('City of Girls', 'Gilbert, Elizabeth', 2019, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 6', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('How to be an antiracist', 'Kendi, Ibram X.', 2023, 'Non fiction', 'Philosophy', 'Cristina', 'WIP', 'Office 11', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Limpieza, orden y felicidad', 'Pérez, Begoña', 2022, 'Non fiction', 'Home', 'Cristina', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('What you can see from here', 'Leky, Mariana', 2021, 'Fiction', 'European', 'Cristina', 'R', 'Office 6', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Las lágrimas de Shiva', 'Mallorquí, César', 2005, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Un año en los bosques', 'Hubbell, Sue', 2016, 'Non fiction', 'Biography', 'Cristina', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Invierte en ti', 'De Santiago, Natalia', 2021, 'Non fiction', 'Economics', 'Cristina', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Humano, más humano', 'Esquirol, Josep Maria', 2021, 'Non fiction', 'Philosophy', 'Cristina', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La moda justa', 'D. Riezu, Marta', 2021, 'Non fiction', 'Philosophy', 'Cristina', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El pequeño libro de las habilidades para la vida', 'Zammett Ruddy, Erin', 2022, 'Non fiction', 'Home', 'Cristina', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La mujer habitada', 'Belli, Gioconda', 2009, 'Fiction', 'Hispanic', 'Cristina', 'TBR', 'Office 6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Agua y jabón', 'D. Riezu, Marta', 2022, 'Non fiction', 'Miscellanea', 'Cristina', 'R', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Nuestros nombres olvidados', 'Pacheco, Carmen', 2021, 'Fiction', 'Comic', 'Cristina', 'R', 'Office 6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Prehistorias de mujeres', 'Sánchez Romero, Marga', 2023, 'Non fiction', 'Anthropology', 'Cristina', 'R', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Invierte con poco', 'De Santiago, Natalia', 2022, 'Non fiction', 'Economics', 'Cristina', 'TBR', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La historia de la mujer en 100 objetos', 'Freire, Espido', 2023, 'Non fiction', 'Gender studies', 'Cristina', 'TBR', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La resistencia íntima', 'Esquirol, Josep Maria', 2018, 'Non fiction', 'Philosophy', 'Cristina', 'R', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Tus zonas erróneas', 'Dyer, Wayne W.', 2007, 'Non fiction', 'Psychology', 'Cristina', 'R', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Bridget Jones''s Diary', 'Fielding, Helen', 1996, 'Fiction', 'English ', 'Cristina', 'R', 'Office 6', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Proletaria consentida', 'Carneros, Laura', 2022, 'Non fiction', 'Biography', 'Cristina', 'R', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Otoño', 'Smith, Ali', 2021, 'Fiction', 'English ', 'Cristina', 'R', 'Office 6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Canto jo i la muntanya balla', 'Solà, Irene', 2022, 'Fiction', 'European', 'Cristina', 'R', 'Office 6', 'Catalan');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Come un respiro', 'Ozpetek, Ferzan', 2020, 'Fiction', 'European', 'Cristina', 'R', 'Office 6', 'Italian');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Desearte. Claves para el deseo femenino', 'Cámara, Laura', 2023, 'Non fiction', 'Gender studies', 'Cristina', 'R', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La orilla de los vivos', 'De Pablo Ortiz, Rodrigo', 2023, 'Fiction', 'Hispanic', 'Cristina', 'R', 'Office 6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Las pequeñas virtudes', 'Ginzburg, Natalia', 2004, 'Non fiction', 'Biography', 'Cristina', 'R', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Janey in the pool', 'Castro López, Marta', 2017, 'Fiction', 'Comic', 'Cristina', 'R', 'Office 6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El olvido de la memoria', 'Peláez, Alberto', 2011, 'Fiction', 'Hispanic', 'Cristina', 'R', 'Office 6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La librería ambulante', 'Morley, Christopher', 2018, 'Fiction', 'English ', 'Cristina', 'R', 'Office 6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Le voci della sera', 'Ginzburg, Natalia', 2015, 'Fiction', 'European', 'Cristina', 'TBR', 'Office 6', 'Italian');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Divine Secrets of the Ya-Ya Sisterhood', 'Wells, Rebecca', 1997, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 6', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Granada a vuelapluma', 'Salazar, Alfonso', 2022, 'Non fiction', 'Travel', 'Cristina', 'R', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Les Bijoux de la Castafiore', 'Hergé', 2007, 'Fiction', 'Comic', 'Cristina', 'TBR', 'Office 6', 'French');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Le piccole libertà', 'Gentile, Lorenza', 2021, 'Fiction', 'European', 'Cristina', 'R', 'Office 6', 'Italian');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El Pentateuco de Isaac', 'Wagenstein, Angel', 2014, 'Fiction', 'European', 'Cristina', 'R', 'Office 6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El huerto de una holgazana', 'Pera, Pia', 2022, 'Non fiction', 'Biography', 'Cristina', 'R', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Pájaros en un cielo de estaño', 'Tocornal, Antonio', 2020, 'Fiction', 'Hispanic', 'Cristina', 'R', 'Office 6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La tortuga que huía del jaguar', 'Quintín, Marta', 2019, 'Fiction', 'Hispanic', 'Cristina', 'R', 'Office 9', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Las gratitudes', 'De Vigan, Delphine', 2021, 'Fiction', 'European', 'Cristina', 'R', 'Office 9', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Los extraños', 'Bilbao, Jon', 2022, 'Fiction', 'Hispanic', 'Cristina', 'R', 'Office 9', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La tía Mame', 'Dennis, Patrick', 2021, 'Fiction', 'English ', 'Cristina', 'R', 'Office 9', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Leer la Alhambra', 'Puerta Vílchez, José Miguel', 2015, 'Non fiction', 'Travel', 'Cristina', 'TBR', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Marco Aurelio. Un estoico en la frontera', 'Gredos', 2018, 'Non fiction', 'Biography', 'Cristina', 'R', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Recetas fáciles para almas descarriadas', 'Pérez, Susana', 2022, 'Non fiction', 'Cooking', 'Cristina', 'HB', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Mein Wimmelbuch Gstaad', 'Geser, Celine', 2020, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Balcony', 'German');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Cocina fácil y sabrosa con solo 5 ingredientes', 'NGV', 2022, 'Non fiction', 'Cooking', 'Cristina', 'HB', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Carta de una desconocida', 'Zweig, Stefan', 2010, 'Fiction', 'European', 'Cristina', 'R', 'Office 9', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El concurso de los abuelos', 'Reyna, Pablo C.', 2022, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 9', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Relatos cortos', 'Chéjov, Anton', 2023, 'Fiction', 'European', 'Cristina', 'TBR', 'Office 9', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Vingt ans après', 'Dumas, Alexandre', 2019, 'Fiction', 'European', 'Cristina', 'WIP', 'Office 9', 'French');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Der Fänger im Roggen', 'Salinger, J.D.', 2010, 'Fiction', 'English ', 'Cristina', 'R', 'Office 9', 'German');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Buszujacy w zbozu', 'Salinger, J.D.', 2008, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 9', 'Polish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The long way to a small angry planet', 'Chambers, Becky', 2015, 'Fiction', 'English ', 'Cristina', 'R', 'Office 9', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Deep work. Rules for focused success in a distracted world', 'Newport, Carl', 2016, 'Non fiction', 'Psychology', 'Cristina', 'R', 'Office 8', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('A study in scarlet', 'Doyle, Arthur Conan', 2018, 'Fiction', 'Mystery/Thriller', 'Cristina', 'WIP', 'Office 9', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Hábitos atómicos', 'Clear, James', 2021, 'Non fiction', 'Psychology', 'Cristina', 'WIP', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The Catcher in the Rye - Hebrew', 'Salinger, J.D.', 2019, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 9', 'Hebrew');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Le cartographe des Indes boréales', 'Truc, Olivier', 2019, 'Fiction', 'European', 'Cristina', 'WIP', 'Office 11', 'French');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Año del caballo', 'Piazuelo, Clara', 2021, 'Fiction', 'Hispanic', 'Cristina', 'R', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Memorias de una geisha', 'Golden, Arthur', 2007, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 9', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Una casa llena de gente', 'Sández, Mariana', 2019, 'Fiction', 'Hispanic', 'Cristina', 'R', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Cos, camp de batalla', 'Mauri Baraza, Laia', 2024, 'Fiction', 'European', 'Cristina', 'TBR', 'Office 11', 'Catalan');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Et vaig donar ulls i vas mirar les tenebres', 'Solà, Irene', 2024, 'Fiction', 'European', 'Cristina', 'TBR', 'Office 11', 'Catalan');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Libera tu magia', 'Gilbert, Elizabeth', 2023, 'Non fiction', 'Literature', 'Cristina', 'R', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Life in Five Senses', 'Rubin, Gretchen', 2023, 'Non fiction', 'Psychology', 'Cristina', 'TBR', 'Office 8', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El Clan de la Loba', 'Carranza, Maite', 2005, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 9', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Getting Things Done', 'Allen, David', 2009, 'Non fiction', 'Psychology', 'Cristina', 'TBR', 'Office 8', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Noruega', 'Lahuerta Yúfera, Rafa', 2023, 'Fiction', 'Hispanic', 'Cristina', 'WIP', 'Office 9', 'Catalan');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La red oculta de la vida', 'Sheldrake, Merlin', 2020, 'Non fiction', 'Biology', 'Cristina', 'TBR', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El libro de la musculación más fácil del mundo', 'Sissako, Bakary', 2019, 'Non fiction', 'Sport', 'Cristina', 'TBR', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El infinito en un junco', 'Vallejo, Irene', 2020, 'Non fiction', 'Literature', 'Cristina', 'WIP', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Hell Bent', 'Bardugo, Leigh', 2023, 'Fiction', 'Fantasy', 'Cristina', 'TBR', 'Office 9', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('En casa', 'Bryson, Bill', 2023, 'Non fiction', 'Miscellanea', 'Cristina', 'WIP', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Auggie & me', 'Palacio, R.J.', 2015, 'Fiction', 'Children''s Books', 'Cristina', 'TBR', 'Office 9', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('A murder is announced', 'Christie, Agatha', 2022, 'Fiction', 'Mystery/Thriller', 'Cristina', 'TBR', 'Office 9', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Muerte en Santa Rita', 'Barceló, Elia', 2024, 'Fiction', 'Mystery/Thriller', 'Cristina', 'TBR', 'Office 9', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La Dame aux camélias', 'Dumas fils, Alexandre', 2016, 'Fiction', 'European', 'Cristina', 'R', 'Office 11', 'French');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('En el corazón del sueño', 'Pacheco, Carmen', 2011, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 9', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Ajedrez para dummies', 'Eade, James', 2010, 'Non fiction', 'Chess', 'Luis', 'HB', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Alemán, ¡vívelo!', 'Langenscheidt', 2011, 'Non fiction', 'German', 'Luis', 'HB', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Per Anhalter durch die Galaxis', 'Adams, Douglas', 1993, 'Fiction', 'Science Fiction', 'Luis', 'TBR', 'Office 9', 'German');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Zeus conquista el Olimpo', 'Gredos', 2016, 'Non fiction', 'History', 'Luis', 'TBR', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('I ara jo què faig?', 'Escrivà, Andreu', 2021, 'Non fiction', 'Environmental Studies', 'Luis', 'R', 'Office 8', 'Catalan');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El gen egoísta', 'Dawkins, Richard', 2011, 'Non fiction', 'Biology', 'Luis', 'R', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El mal dormir', 'Jiménez Torres, David', 2022, 'Non fiction', 'Biology', 'Luis', 'TBR', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('De Arquímedes a Einstein', 'Lozano Leyva, Manuel', 2012, 'Non fiction', 'Physics', 'Luis', 'R', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El misterio de los números primos', 'Gracián, Enrique', 2014, 'Non fiction', 'Mathematics', 'Luis', 'TBR', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La teoría del todo', 'Hawking, Stephen W.', 2011, 'Non fiction', 'Physics', 'Luis', 'R', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El lenguaje secreto de los números', 'Gómez Urgellés, Juan', 2014, 'Non fiction', 'Mathematics', 'Luis', 'TBR', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Erasmo', 'Castilla Urbano, Francisco', 2019, 'Non fiction', 'Philosophy', 'Luis', 'TBR', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Domina el retoque con Photoshop', 'Arranz, Daniel', 2018, 'Non fiction', 'Photography', 'Luis', 'HB', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('200 cantos de aves de todo el mundo', 'Beletsky, Les', 2022, 'Non fiction', 'Ornithology', 'Luis', 'HB', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Los tres estigmas de Palmer Eldritch', 'Dick, Philip K.', 2019, 'Fiction', 'Science Fiction', 'Luis', 'TBR', 'Office 9', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Polvo eres', 'Concostrina, Nieves', 2022, 'Non fiction', 'History', 'Luis', 'TBR', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El juego de Gerald', 'King, Stephen', 1993, 'Fiction', 'Horror', 'Luis', 'TBR', 'Office 9', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El pulgar del panda', 'Gould, Stephen Jay', 2009, 'Non fiction', 'Biology', 'Luis', 'R', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Libro de las Maravillas', 'Marco Polo', 1983, 'Non fiction', 'Biography', 'Luis', 'TBR', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El Universo', 'Asimov, Isaac', 2002, 'Non fiction', 'Physics', 'Luis', 'R', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Märchen von Hans Christian Andersen', 'Andersen, Hans Christian', 2009, 'Fiction', 'Children''s Books', 'Luis', 'TBR', 'Office 9', 'German');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Guía para la Vida', 'Simpson, Bart', 1999, 'Fiction', 'Children''s Books', 'Luis', 'R', 'Office 9', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Energía Solar', 'Mártil de la Plaza, Ignacio', 2020, 'Non fiction', 'Energy', 'Luis', 'R', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El cosmos en la palma de la mano', 'Lozano Leyva, Manuel', 2018, 'Non fiction', 'Physics', 'Luis', 'TBR', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Cien preguntas básicas sobre la ciencia', 'Asimov, Isaac', 2012, 'Non fiction', 'Physics', 'Luis', 'R', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Arte en flujo', 'Groys, Boris', 2016, 'Non fiction', 'Art', 'Luis', 'TBR', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Vamos a comprar mentiras', 'López Nicolas, José Manuel', 2016, 'Non fiction', 'Philosophy', 'Luis', 'R', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Edebé Lecturas 4', 'Edebé', 1987, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 9', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The Hobbit', 'Tolkien, J.R.R.', 2012, 'Fiction', 'Children''s Books', 'Luis', 'TBR', 'Office 9', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Godzilla', 'Molstad, Stephen', 1998, 'Fiction', 'Adventure', 'Luis', 'TBR', 'Office 9', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('A caller''s game', 'Barker, J.D.', 2021, 'Fiction', 'Mystery/Thriller', 'Cristina', 'R', 'Office 10', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('En busca de las estrellas', 'Porcellino, Michael', 2006, 'Non fiction', 'Astronomy', 'Cristina', 'TBR', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El retrato de Dorian Gray', 'Wilde, Oscar', 1975, 'Fiction', 'English ', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Tender is the Night & The Last Tycoon', 'Fitzgerald, Francis Scott', 2011, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 10', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La vida de las mujeres', 'Munro, Alice', 2014, 'Fiction', 'English ', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('¿Quién se ha llevado mi queso?', 'Johnson, Spencer', 2006, 'Non fiction', 'Psychology', 'Cristina', 'R', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Frankenstein', 'Shelley, Mary', 1994, 'Fiction', 'Horror', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Lolita', 'Nabokov, Vladimir', 2014, 'Fiction', 'English ', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Los cuatro jinetes del Apocalipsis', 'Blasco Ibáñez, Vicente', 1998, 'Fiction', 'Hispanic', 'Cristina', 'TBR', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La tabla de Flandes', 'Pérez-Reverte, Arturo', 2010, 'Fiction', 'Mystery/Thriller', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The Return of Sherlock Holmes', 'Doyle, Arthur Conan', 2008, 'Fiction', 'Mystery/Thriller', 'Cristina', 'TBR', 'Office 10', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Las Olas', 'Woolf, Virginia', 2002, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Vida de Pi', 'Martel, Yann', 2003, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Signpost to the stars', 'Philip, George', 1982, 'Non fiction', 'Astronomy', 'Cristina', 'TBR', 'Office 2', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('101 poemas polacos contemporáneos', 'Varios autores', 2008, 'Fiction', 'Poetry', 'Cristina', 'TBR', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('13', 'Menéndez Faya, Andrea', 2021, 'Fiction', 'Hispanic', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Vuelo nocturno', 'De Saint-Exupery, Antoine', 1984, 'Fiction', 'European', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Committed', 'Gilbert, Elizabeth', 2010, 'Non fiction', 'Biography', 'Cristina', 'R', 'Office 2', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Eat pray love', 'Gilbert, Elizabeth', 2007, 'Non fiction', 'Biography', 'Cristina', 'R', 'Office 2', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El juego de los herejes', 'Mallorquí, César', 2010, 'Fiction', 'Mystery/Thriller', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Actos humanos', 'Kang, Han', 2018, 'Fiction', 'Asian', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La reina sin espejo', 'Silva, Lorenzo', 2007, 'Fiction', 'Mystery/Thriller', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Una visita inesperada', 'Christie, Agatha', 2000, 'Fiction', 'Mystery/Thriller', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El juego de Caín', 'Mallorquí, César', 2008, 'Fiction', 'Mystery/Thriller', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El síndrome de Mozart', 'Moure, Gonzalo', 2005, 'Fiction', 'Hispanic', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Dos cartas', 'Mrozek, Slawomir', 2003, 'Fiction', 'European', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Empezar de nuevo', 'Serrano Baixauli, Cristina', 2016, 'Fiction', 'Hispanic', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El último encuentro', 'Márai, Sándor', 2011, 'Fiction', 'European', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La mujer justa', 'Márai, Sándor', 2005, 'Fiction', 'European', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La magia del orden', 'Kondo, Marie', 2016, 'Non fiction', 'Home', 'Cristina', 'R', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El club Dumas', 'Pérez-Reverte, Arturo', 2007, 'Fiction', 'Mystery/Thriller', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Powstanie 44', 'Panny, Morowe', 2020, 'Fiction', 'Comic', 'Cristina', 'TBR', 'Office 10', 'Polish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Los trapos sucios', 'Lindo, Elvira', 2002, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Caído del cielo', 'Basu, Disha', 2017, 'Fiction', 'Asian', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Motel Piekielko', 'Zietek, Pawel', 2008, 'Fiction', 'European', 'Cristina', 'TBR', 'Office 10', 'Polish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('A room of one''s own', 'Woolf, Virginia', 2000, 'Non fiction', 'Literature', 'Cristina', 'TBR', 'Office 2', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Pigmalion', 'Shaw, George Bernard', 1984, 'Fiction', 'Theatre', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La mansión Dax', 'Mallorquí, César', 2007, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Diccionario de símbolos', 'Albert de Paco, José María', 2003, 'Non fiction', 'Linguistics', 'Cristina', 'HB', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La vida difícil', 'Mrozek, Slawomir', 2011, 'Fiction', 'European', 'Cristina', 'R', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El jinete polaco', 'Muñoz Molina, Antonio', 1991, 'Fiction', 'Hispanic', 'Cristina', 'TBR', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Rayuela', 'Cortázar, Julio', 2004, 'Fiction', 'Hispanic', 'Cristina', 'TBR', 'Office 10', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The bastard of Istambul', 'Shafak, Elif', 2007, 'Fiction', 'European', 'Cristina', 'R', 'Office 12', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La caligrafía secreta', 'Mallorquí, César', 2007, 'Fiction', 'Hispanic', 'Cristina', 'R', 'Office 12', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Persuasión', 'Austen, Jane', 2007, 'Fiction', 'English ', 'Cristina', 'R', 'Office 12', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Dioses y héroes de la antigua Grecia', 'Graves, Robert', 1999, 'Non fiction', 'History', 'Cristina', 'R', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Las mil y una noches', 'Anónimo', 2000, 'Fiction', 'Fantasy', 'Cristina', 'R', 'Office 12', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La mosca', 'Mrozek, Slawomir', 2005, 'Fiction', 'European', 'Cristina', 'R', 'Office 12', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The book thief', 'Zuzak, Markus', 2007, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 12', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La flor púrpura', 'Ngozi Adichie, Chimamanda', 2004, 'Fiction', 'African', 'Cristina', 'R', 'Office 12', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La firma de todas las cosas', 'Gilbert, Elizabeth', 2013, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 12', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('1984 (English)', 'Orwell, George', 2008, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 12', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The Diamond as Big as the Ritz & Other Stories', 'Fitzgerald, Francis Scott', 2006, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 12', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Fuente Ovejuna', 'Lope de Vega, Francisco', 1985, 'Fiction', 'Theatre', 'Cristina', 'R', 'Office 12', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('A Christmas Carol', 'Dickens, Charles', 2012, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 12', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Mensagem', 'Pessoa, Fernando', 2015, 'Fiction', 'Poetry', 'Cristina', 'R', 'Office 12', 'Portuguese');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('New Yorkers. Short stories', 'Henry, O.', 2000, 'Fiction', 'English ', 'Cristina', 'R', 'Office 12', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The Scarlett Letter', 'Hawthorne, Nathaniel', 1999, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 12', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Mrs. Dalloway', 'Woolf, Virginia', 1996, 'Fiction', 'English ', 'Cristina', 'R', 'Office 12', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El enigma de la piedra', 'Jacq, Christian', 2000, 'Non fiction', 'History', 'Cristina', 'R', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Die Glücksformel', 'Klein, Stefan', 2002, 'Non fiction', 'Psychology', 'Cristina', 'TBR', 'Office 11', 'German');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Die Bücherdiebin', 'Zuzak, Markus', 2009, 'Fiction', 'Children''s Books', 'Cristina', 'TBR', 'Office 12', 'German');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Maribel y la extraña familia', 'Mihura, Miguel', 2002, 'Fiction', 'Theatre', 'Cristina', 'R', 'Office 12', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('A gyertyak csonkig égnek', 'Márai, Sándor', 2014, 'Fiction', 'European', 'Cristina', 'TBR', 'Office 12', 'Hungarian');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Bonavia', 'Velikic, Dragan', 2012, 'Fiction', 'European', 'Cristina', 'TBR', 'Office 12', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Moguda a la biblioteca', 'Gregori, Josep', 2000, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 12', 'Catalan');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Misterioso asesinato en Oz', 'Pacheco, Carmen', 2008, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 12', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Los derechos torcidos', 'Vara, Mariano', 2002, 'Fiction', 'Hispanic', 'Cristina', 'R', 'Office 12', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Introducing Interpreting Studies', 'Pöchhacker, Franz', 2004, 'Non fiction', 'Linguistics', 'Cristina', 'TBR', 'Office 11', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Mirall trencat', 'Rodoreda, Mercé', 2009, 'Fiction', 'European', 'Cristina', 'TBR', 'Office 12', 'Catalan');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('While mortals sleep', 'Vonnegut, Kurt', 2011, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 12', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La abadía de Northanger', 'Austen, Jane', 2004, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 12', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Mansfield Park', 'Austen, Jane', 2004, 'Fiction', 'English ', 'Cristina', 'R', 'Office 12', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Emma', 'Austen, Jane', 2004, 'Fiction', 'English ', 'Cristina', 'R', 'Office 12', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Sentido y sensibilidad', 'Austen, Jane', 2004, 'Fiction', 'English ', 'Cristina', 'R', 'Office 12', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Jane Eyre', 'Brontë, Charlotte', 2004, 'Fiction', 'English ', 'Cristina', 'R', 'Office 12', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Orgullo y prejuicio', 'Austen, Jane', 2004, 'Fiction', 'English ', 'Cristina', 'R', 'Office 12', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Las amistades peligrosas', 'De Laclos, Choderlos', 2004, 'Fiction', 'European', 'Cristina', 'TBR', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Memorias de África', 'Dinesen, Isak', 2004, 'Non fiction', 'Biography', 'Cristina', 'R', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El amor en los tiempos del cólera', 'García Márquez, Gabriel', 2004, 'Fiction', 'Hispanic', 'Cristina', 'TBR', 'Office 12', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Maus', 'Spiegelman, Art', 2009, 'Fiction', 'Comic', 'Cristina', 'R', 'Office 12', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El Gran Libro de los Nombres', 'Yáñez Solana, Manuel', 1998, 'Non fiction', 'Linguistics', 'Cristina', 'HB', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Retrato de una dama', 'James, Henry', 2004, 'Fiction', 'English ', 'Cristina', 'TBR', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Even dogs in the wild', 'Rankin, Ian', 2015, 'Fiction', 'Mystery/Thriller', 'Cristina', 'TBR', 'Office 11', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El lunes nos querrán', 'El Hachmi, Najat', 2021, 'Non fiction', 'Biography', 'Cristina', 'R', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Carta blanca', 'Lafebre, Jordi', 2021, 'Fiction', 'Comic', 'Cristina', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Todo lo posible', 'Pacheco, Carmen', 2016, 'Fiction', 'Hispanic', 'Cristina', 'R', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('¿Dónde está Laura?', 'Bohn, Angelika', 2022, 'Fiction', 'European', 'Cristina', 'R', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La vida mentirosa de los adultos', 'Ferrante, Elena', 2020, 'Fiction', 'European', 'Cristina', 'TBR', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Tabacaria', 'Pessoa, Fernando', 2015, 'Fiction', 'Poetry', 'Cristina', 'R', 'Office 7', 'Portuguese');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('No siento nada', 'Strömquist, Liv', 2021, 'Non fiction', 'Gender studies', 'Cristina', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La materia oscura 1. Luces del Norte', 'Pullman, Philip', 2003, 'Fiction', 'Fantasy', 'Cristina', 'R', 'Office 9', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La materia oscura 2. La daga', 'Pullman, Philip', 2003, 'Fiction', 'Fantasy', 'Cristina', 'R', 'Office 9', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La materia oscura 3. El catalejo lacado', 'Pullman, Philip', 2003, 'Fiction', 'Fantasy', 'Cristina', 'R', 'Office 9', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Le petit prince', 'De Saint-Exupery, Antoine', 2003, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 11', 'French');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La felicidad después del orden', 'Kondo, Marie', 2016, 'Non fiction', 'Home', 'Cristina', 'R', 'Office 11', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Más allá del invierno', 'Allende, Isabel', 2017, 'Fiction', 'Hispanic', 'Cristina', 'R', 'Office 8', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Theodore Boone 2. The Abduction', 'Grisham, John', 2011, 'Fiction', 'Mystery/Thriller', 'Cristina', 'R', 'Office 11', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La marca del meridiano', 'Silva, Lorenzo', 2012, 'Fiction', 'Mystery/Thriller', 'Cristina', 'R', 'Office 7', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Memorias del águila y el jaguar 1. La ciudad de las bestias', '', 2004, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Memorias del águila y el jaguar 2. El reino del dragón de oro', '', 2004, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Memorias del águila y el jaguar 3. El bosque de los pigmeos', '', 2004, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'Office 2', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Melocotón en almíbar. Ninette y un señor de Murcia', 'Mihura, Miguel', 1997, 'Fiction', 'Theatre', 'Cristina', 'R', 'LRK1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Territorios improbables', 'Torrijos, Pedro', 2021, 'Non fiction', 'Architecture', 'Cristina', 'R', 'LRK1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Matin brun', 'Pavloff, Franck', 2017, 'Fiction', 'European', 'Cristina', 'R', 'LRK1', 'French');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Io non ho paura', 'Ammaniti, Niccolò', 2012, 'Fiction', 'European', 'Cristina', 'R', 'LRK1', 'Italian');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('¿Dónde está Laura?', 'Bohn, Angelika', 2022, 'Fiction', 'European', 'Cristina', 'R', 'LRK1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Atlas de las constelaciones', 'Hislop, Susanna/Waldron, Hannah', 2019, 'Non fiction', 'Astronomy', 'Cristina', 'TBR', 'LRK1', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The best recipes with pasta', 'Euro Impala', 2009, 'Non fiction', 'Cooking', 'Cristina', 'HB', 'LRK1', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Kuchnia polska dla kazdego', 'Olesiejuk', 2013, 'Non fiction', 'Cooking', 'Cristina', 'HB', 'LRK1', 'Polish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Die Bremer Stadtmusikanten', 'Hermanos Grimm', 2009, 'Fiction', 'Children''s Books', 'Cristina', 'TBR', 'LR6', 'German');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Fray Perico en la guerra', 'Muñoz, Juan', 2000, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Medinoche', 'Stow, Randolf', 1985, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Un lugar para Katrin', 'Fährmann, Willi', 1988, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El agujero de las cosas perdidas', 'Armengué i Herrero, Joan', 1994, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Las hijas de Tara', 'Gallego García, Laura', 2002, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El club de las canguro', 'Martin, Ann M. ', 1988, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The Velveteen Rabbit & Other Animal Adventures', 'Williams, Margery', 2015, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Die schönsten Märchen der Brüder Grimm', 'Hermanos Grimm', 2014, 'Fiction', 'Children''s Books', 'Cristina', 'TBR', 'LR6', 'German');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('HP1: Harry Potter y la piedra filosofal', 'Rowling, J.K.', 2001, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('MdI2: Tríada', 'Gallego García, Laura', 2005, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('HP2: Harry Potter y la cámara secreta', 'Rowling, J.K.', 2001, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('HP6: Harry Potter y el príncipe mestizo', 'Rowling, J.K.', 2006, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('El diccionario del mago', 'Kronzek, Allan Zola', 2005, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('HP5: Harry Potter y la Orden del Fénix', 'Rowling, J.K.', 2004, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('HP4: Harry Potter y el cáliz de uego', 'Rowling, J.K.', 2004, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('MdI3: Panteón', 'Gallego García, Laura', 2006, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Harry Potter 7: Harry Potter and the Deathly Hallows', 'Rowling, J.K.', 2007, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La hora zulú', 'Mallorquí, César', 2019, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('La guía secreta de Harry Potter', 'Reyna Martínez, Pablo', 2009, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('HP3: Harry Potter y el Prisionero de Azkaban', 'Rowling, J.K.', 2000, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'Spanish');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The BFG', 'Dahl, Roald', 2013, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Charlie and the Great Glass Elevator', 'Dahl, Roald', 2013, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Danny the Champion of the World', 'Dahl, Roald', 2013, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The Twits', 'Dahl, Roald', 2013, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Going Solo', 'Dahl, Roald', 2013, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Charlie and the Chocolate Factory', 'Dahl, Roald', 2013, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Matilda', 'Dahl, Roald', 2013, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('James and the Giant Peach', 'Dahl, Roald', 2013, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('The Witches', 'Dahl, Roald', 2013, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('George''s Marvellous Medicine', 'Dahl, Roald', 2013, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'English');
INSERT INTO Books (Title,Author,YearBook,BookType,Genre,Owner,Status,Location,Language) VALUES ('Boy. Tales of Childhood', 'Dahl, Roald', 2013, 'Fiction', 'Children''s Books', 'Cristina', 'R', 'LR6', 'English');
