    -- 1. SQL queries
.mode column
.headers on

    -- Query 1 : List all books and the number of quotes for each
SELECT b.title, COUNT(q.id) AS quote_count
FROM books b
LEFT JOIN quotes q ON b.id = q.book_id
GROUP BY b.id;


    -- Query 2: List all authors and the number of quotes for each
SELECT a.name, COUNT(q.id) AS quote_count
FROM authors a
LEFT JOIN quotes q ON a.id = q.author_id
GROUP BY a.id;


    -- Query 3: List all quotes from a specific book, including quote text and author name
SELECT q.quote_text, a.name AS creator_or_character
FROM quotes q
JOIN books b ON q.book_id = b.id
JOIN authors a ON q.author_id = a.id
WHERE b.title = 'Guardians of the Galaxy: Vol 1';


    -- Query 4: List all quotes from a specific author, including quote text and book title
SELECT q.quote_text, b.title AS origin_book
FROM quotes q
JOIN authors a ON q.author_id = a.id
JOIN books b ON q.book_id = b.id
WHERE a.name = 'Albus Dumbledore';