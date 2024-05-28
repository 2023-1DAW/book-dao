DROP DATABASE IF EXISTS library;

CREATE DATABASE library;

USE library;

CREATE TABLE book(
	isbn VARCHAR(10) PRIMARY KEY,
	title VARCHAR(50) NOT NULL,
	author VARCHAR(50) NOT NULL,
	year INT NOT NULL
);

CREATE TABLE customer(
    nif VARCHAR(10) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    zip_code INT NOT NULL
);

CREATE TABLE book_lend(
    id INT AUTO_INCREMENT PRIMARY KEY,
    isbn VARCHAR(10) NOT NULL,
    nif VARCHAR(10) NOT NULL,
    lend_date DATE NOT NULL,
    return_date DATE,
    CONSTRAINT fk_book
    FOREIGN KEY (isbn)
    REFERENCES book(isbn),
    CONSTRAINT fk_customer
    FOREIGN KEY (nif)
    REFERENCES customer(nif)
);

INSERT INTO book VALUES
	('1', 'Programación en Java', 'Bob Esponja', 2022),
	('2', 'Programación en Kotlin', 'Bob Esponja', 2023),
	('3', 'Programación en Python', 'Peppa Pig', 2024);

