CREATE DATABASE library;

USE library;

CREATE TABLE book(
	isbn VARCHAR(10) PRIMARY KEY,
	title VARCHAR(50) NOT NULL,
	author VARCHAR(50) NOT NULL,
	year INT NOT NULL
);

INSERT INTO book VALUES
	('1', 'Programación en Java', 'Bob Esponja', 2022),
	('2', 'Programación en Kotlin', 'Bob Esponja', 2023),
	('3', 'Programación en Python', 'Peppa Pig', 2024);

