SELECT b.book_id, b.title, br.name
FROM books b
LEFT JOIN borrowers br
ON b.book_id = br.book_id;


SELECT br.borrower_id, br.name, b.title
FROM borrowers br
LEFT JOIN books b
ON br.book_id = b.book_id;


SELECT b.book_id, b.title
FROM books b
LEFT JOIN borrowers br
ON b.book_id = br.book_id
WHERE br.book_id IS NULL;


SELECT b.book_id, b.title
FROM books b
LEFT JOIN borrowers br
ON b.book_id = br.book_id
WHERE br.book_id IS NULL;

