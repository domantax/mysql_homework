-- Išrinkite visus įrašus iš Knygų lentelės
SELECT *
FROM Books;

-- Išrinkite tik Knygų pavadinimus abėcėles tvarka
SELECT Books.title
FROM Books
ORDER BY Books.title;

-- Suskaičiuokite, kiek knygų kiekvieno autoriaus yra knygų lentelėje - not COUNT(Books.authorId), because wanted to also count books without author (NULL)
SELECT COUNT(*), Books.authorId
FROM Books
GROUP BY Books.authorId;