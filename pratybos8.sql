-- Paruoškite duomenų bazės atnaujinimo skriptą. (tik struktūros)


ALTER TABLE `Authors` ENGINE = InnoDB;

CREATE TABLE BookAuthor(
    bookAuthorId INT NOT NULL AUTO_INCREMENT,
    bookId INT,
    authorId INT,
    PRIMARY KEY(bookAuthorId),
    FOREIGN KEY(bookId) REFERENCES books (bookId) ON DELETE CASCADE,
    FOREIGN KEY(authorId) REFERENCES `Authors`(authorId) ON DELETE CASCADE
) ENGINE=InnoDB;

-- transfer data to a new table
INSERT INTO BookAuthor(bookId, authorId)
SELECT Books.bookId, `Authors`.authorId
FROM `Authors` INNER JOIN Books ON Books.authorId = `Authors`.authorId;


ALTER TABLE Books DROP COLUMN authorId; 

ALTER TABLE books CONVERT TO CHARACTER SET utf8mb4;

