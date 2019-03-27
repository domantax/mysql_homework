-- 1. Knygos gali turėti vieną ir daugiau autorių

-- Authors table's engine was set to myisam, and it doesn't let to set a FOREIGN KEYS so I changed ENGINE to InnoDB
ALTER TABLE `Authors` ENGINE = InnoDB;

-- Created table to store authors' ids and books' ids - this let's store multiple authors for a single book
CREATE TABLE BookAuthor(
    bookAuthorId INT NOT NULL AUTO_INCREMENT,
    bookId INT,
    authorId INT,
    PRIMARY KEY(bookAuthorId),
    FOREIGN KEY(bookId) REFERENCES books (bookId) ON DELETE CASCADE,
    FOREIGN KEY(authorId) REFERENCES `Authors`(authorId) ON DELETE CASCADE
) ENGINE=InnoDB;



-- 2.Sutvarkyti duomenų bazės duomenis, jei reikia papildykite naujais.

-- Insert data to the bookAuthor table
INSERT INTO BookAuthor(bookId, authorId)
SELECT Books.bookId, `Authors`.authorId
FROM `Authors` INNER JOIN Books ON Books.authorId = `Authors`.authorId;

-- Add new data to bookAuthor table - for later queries
INSERT INTO BookAuthor(bookId, authorId) VALUES 
  (3, 6),
  (2, 6),
  (2, 6),
  (1, 6);


  -- Delete unnecessary authorId col from books table - BookAuthor table exist where we can store multiple authors for the same book
ALTER TABLE Books DROP COLUMN authorId; 


-- 3. Išrinkite visas knygas su jų autoriais. (autorius, jei jų daugiau nei vienas atskirkite kableliais)

SELECT books.title, group_concat(authors.name separator ', ')
FROM BookAuthor
LEFT JOIN books ON BookAuthor.bookId = Books.bookId
LEFT JOIN authors ON Authors.authorId = BookAuthor.authorId
GROUP BY books.bookId;



-- 4.Sutvarkykite  knygų lentelę, kad galėtumėte išsaugoti originalų knygos pavadinimą. (Pavadinime išsaugokite, lietuviškas raides kaip ą,ė,š ir pan.)

ALTER TABLE books CONVERT TO CHARACTER SET utf8mb4;
INSERT INTO Books(title, year) VALUES ('Dėdės ir dėdienės', 1970);