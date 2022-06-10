--
-- File generated with SQLiteStudio v3.3.3 on jeu. juin 2 10:54:18 2022
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: book
CREATE TABLE book (id INT PRIMARY KEY, book_type INT REFERENCES book_type (id) ON DELETE CASCADE, book_language INT REFERENCES book_language (id) ON DELETE CASCADE, book_category INT REFERENCES book_category (id) ON DELETE CASCADE, title CHAR, description CHAR, file STRING, book_cover STRING);

-- Table: book_category
CREATE TABLE book_category (id INT PRIMARY KEY, category CHAR UNIQUE NOT NULL);

-- Table: book_language
CREATE TABLE book_language (id INT PRIMARY KEY, language CHAR UNIQUE NOT NULL);

-- Table: book_type
CREATE TABLE book_type (id INT PRIMARY KEY, type CHAR) WITHOUT ROWID;

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
