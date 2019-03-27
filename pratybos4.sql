-- Suskaičiuokite kiek knygų kiekvieno autoriaus yra duomenų bazėje (įtraukdami autorius, kurie neturi knygų, bei neįtraukdami šių autorių)
-- Įtraukiant:
SELECT Authors.name, COUNT(Books.bookId)
FROM Books LEFT JOIN Authors ON Authors.authorId = Books.authorId
GROUP BY Authors.authorId;
-- Neįtraukiant
SELECT Authors.name, COUNT(Books.bookId)
FROM Books INNER JOIN Authors ON Authors.authorId = Books.authorId
GROUP BY Authors.authorId;

-- Pašalinkite autorius, kurie neturi knygų.
DELETE Authors 
FROM Authors LEFT JOIN Books ON Authors.authorId = Books.authorId 
WHERE Books.bookId IS NULL;


