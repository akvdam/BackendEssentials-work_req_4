    -- 1. Create three tables in the database

CREATE TABLE authors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    nationality TEXT,
    birth_year INTEGER
);

CREATE TABLE books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    genre TEXT,
    publication_year INTEGER,
    author_id INTEGER,
    FOREIGN KEY (author_id) REFERENCES authors(id) ON DELETE CASCADE
);

CREATE TABLE quotes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    quote_text TEXT NOT NULL,
    book_id INTEGER,
    author_id INTEGER,
    FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE CASCADE,
    FOREIGN KEY (author_id) REFERENCES authors(id) ON DELETE CASCADE
);


    -- 2. Add 5 authors (Harry Potter and Guardians of the Galaxy inspired)

INSERT INTO authors (name, nationality, birth_year) VALUES
('J.K. Rowling', 'British', 1965),
('Albus Dumbledore', 'Fictional Wizard', 1881),
('Hermione Granger', 'Fictional Wizard', 1979),
('James Gunn', 'American', 1966),
('Peter Quill', 'Intergalactic American', 1980);


    -- 3. Add 10 books from the same inspirational source

INSERT INTO books (title, genre, publication_year, author_id) VALUES
('HP and the Sorcerer''s Stone', 'Fantasy', 1997, 1),
('HP and the Prisoner of Azkaban', 'Fantasy', 1999, 1),
('HP and the Goblet of Fire', 'Fantasy', 2000, 1),
('HP and the Order of the Phoenix', 'Fantasy', 2003, 1),
('HP and the Deathly Hallows', 'Fantasy', 2007, 1),
('Guardians of the Galaxy: Vol 1', 'Sci-Fi / Superhero', 2014, 4),
('Guardians of the Galaxy: Vol 2', 'Sci-Fi / Superhero', 2017, 4),
('Guardians of the Galaxy: Vol 3', 'Sci-Fi / Superhero', 2023, 4),
('The Legendary Star-Lord #1', 'Comic Book', 2014, 5),
('Guardians Team-Up #1', 'Comic Book', 2015, 5);


    -- 4. Add 20 quotes from the inspirational books and movies

INSERT INTO quotes (quote_text, book_id, author_id) VALUES

('It does not do to dwell on dreams and forget to live.', 1, 2),
('Yer a wizard, Harry.', 1, 1),
('Happiness can be found, even in the darkest of times, if one only remembers to turn on the light.',
 2, 2),
('I solemnly swear that I am up to no good.', 2, 1),
('If you want to know what a man''s like, take a good look at how he treats his inferiors, not his equals.',
 3, 1),
('We are only as strong as we are united, as weak as we are divided.', 3, 2),
('Things we lose have a way of coming back to us in the end, if not always in the way we expect.', 4,
 1),
('Just because you have the emotional range of a teaspoon doesn''t mean we all have.', 4, 3),
('It is our choices, Harry, that show what we truly are, far more than our abilities.', 5,
 2),
('Of course it is happening inside your head, Harry, but why on earth should that mean that it is not real?',
 5, 2),
('We are Groot.', 6, 4),
('I am Groot.', 6, 4),
('There are more things that bind us than break us.', 6, 4),
('I look around at us and you know what I see? Losers. But life''s giving us a chance to do something.',
 6, 5),
('I''m Mary Poppins, y''all!', 7, 4),
('Sometimes the thing you''re searching for your whole life is right there by your side all along.',
 7, 5),
('You can''t run away from who you are.', 7, 4),
('Don''t look at me like a savior, look at me like a friend.', 8, 5),
('The galaxy still needs its guardians.', 8, 4),
('There is no handsomer thief in the cosmos than Star-Lord.', 9, 5);
