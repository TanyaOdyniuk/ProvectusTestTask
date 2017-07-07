CREATE DATABASE provectustesttask CHARACTER SET utf8 COLLATE utf8_general_ci;
use provectustesttask;

CREATE TABLE author (
  author_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  lastname VARCHAR(45) NOT NULL,
  PRIMARY KEY (author_id))
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;


CREATE TABLE book (
  book_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  description VARCHAR(500) NOT NULL,
  price DOUBLE NOT NULL,
  PRIMARY KEY (book_id))
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;


CREATE TABLE genre (
  genre_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  PRIMARY KEY (genre_id))
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

CREATE TABLE book_author(
    book_id INT NOT NULL,
    author_id INT NOT NULL,
    PRIMARY KEY (book_id, author_id),
    CONSTRAINT FK_BOOK FOREIGN KEY (book_id) REFERENCES book (book_id),
    CONSTRAINT FK_AUTHOR FOREIGN KEY (author_id) REFERENCES author (author_id)
) ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

CREATE TABLE book_genre(
  book_id INT NOT NULL,
  genre_id INT NOT NULL,
  PRIMARY KEY (book_id, genre_id),
  CONSTRAINT FK_CURBOOK FOREIGN KEY (book_id) REFERENCES book (book_id),
  CONSTRAINT FK_GENRE FOREIGN KEY (genre_id) REFERENCES genre (genre_id)
) ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

CREATE TABLE bookOrder(
  order_id INT NOT NULL AUTO_INCREMENT,
  book_id INT NOT NULL,
  customerFirstname VARCHAR(45) NOT NULL,
  customerLastname VARCHAR(45) NOT NULL,
  address VARCHAR(100) NOT NULL,
  bookCount INTEGER NOT NULL,
  PRIMARY KEY (order_id),
  CONSTRAINT FK_ORDBOOK FOREIGN KEY (book_id) REFERENCES book (book_id)
) ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;