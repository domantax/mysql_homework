CREATE TABLE News(
    newsId INT NOT NULL AUTO_INCREMENT,
    `text` TEXT NOT NULL,
    `date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(newsId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE Comments(
    commentId INT NOT NULL AUTO_INCREMENT,
    `text` VARCHAR(255) NOT NULL,
    `date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    newsId INT NOT NULL, 
    PRIMARY KEY(commentId),
    FOREIGN KEY(newsId) REFERENCES News(newsId) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO News(`text`, `date`)
VALUES 
    ('TEXT1', '2019-03-25 20:45:44'),
    ('TEXT2', '2019-03-24 20:45:44'),
    ('TEXT3', '2019-03-23 20:45:44'),
    ('TEXT4', '2019-03-22 20:45:44'),
    ('TEXT5', '2019-03-21 20:45:44'),
    ('TEXT6', '2019-03-20 20:45:44'),
    ('TEXT7', '2019-03-19 20:45:44'),
    ('TEXT8', '2019-03-18 20:45:44'),
    ('TEXT9', '2019-03-17 20:45:44'),
    ('TEXT10', '2019-03-16 20:45:44'),
    ('TEXT11', '2019-03-15 20:45:44'),
    ('TEXT12', '2019-03-14 20:45:44');
    
    


INSERT INTO Comments(`text`, `date`, newsId)
VALUES 
    ('Comment1', '2019-02-25 20:45:44', 1),
    ('Comment1', '2019-02-24 20:45:44', 2),
    ('Comment1', '2019-02-23 20:45:44', 3),
    ('Comment1', '2019-02-22 20:45:44', 4),
    ('Comment1', '2019-02-21 20:45:44', 5),
    ('Comment1', '2019-02-20 20:45:44', 6),
    ('Comment1', '2019-02-19 20:45:44', 7),
    ('Comment1', '2019-02-18 20:45:44', 8),
    ('Comment1', '2019-02-17 20:45:44', 9),
    ('Comment1', '2019-02-16 20:45:44', 10),
    ('Comment1', '2019-02-15 20:45:44', 11),
    ('Comment2', '2019-03-25 20:45:44', 1),
    ('Comment2', '2019-03-24 20:45:44', 2),
    ('Comment2', '2019-03-23 20:45:44', 3),
    ('Comment2', '2019-03-22 20:45:44', 4),
    ('Comment2', '2019-03-21 20:45:44', 5),
    ('Comment2', '2019-03-20 20:45:44', 6),
    ('Comment2', '2019-03-19 20:45:44', 7),
    ('Comment2', '2019-03-18 20:45:44', 8),
    ('Comment2', '2019-03-17 20:45:44', 9),
    ('Comment2', '2019-03-16 20:45:44', 10),
    ('Comment2', '2019-03-15 20:45:44', 11);

