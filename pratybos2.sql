-- Papildykite autorių lentelę 2 įrašais
INSERT INTO Authors
  (Authors.authorId, Authors.name)
VALUES
  (8, 'William Shakespeare'),
  (9, 'Agatha Christie');

-- Papildykite knygų lentelę, 3 įrašais apie knygas, kurių autorius įrašėte prieš tai
INSERT INTO Books
  (Books.bookId, Books.authorId, Books.title, Books.year)
VALUES
  (9, 8, 'The Two Noble Kinsmen', 2000),
  (10, 8, 'The Comedy of Errors', 2010),
  (11, 9, 'The Moving Finger', 2015);

-- Pakeiskite vienos knygos autorių į kitą
UPDATE Books 
SET Books.authorId = 9 
WHERE Books.bookId = 10;
