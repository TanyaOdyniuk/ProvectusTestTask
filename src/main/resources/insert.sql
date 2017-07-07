use provectustesttask;
INSERT INTO author (name, lastname) VALUES ('Herbert', 'Schildt');
INSERT INTO author (name, lastname) VALUES ('Joshua', 'Bloch');
INSERT INTO author (name, lastname) VALUES ('Thomas', 'Keneally');


INSERT INTO genre (name) VALUES ('Progmamming languages');
INSERT INTO genre (name) VALUES ('Historical');

INSERT INTO book (name, description, price) VALUES ('Java: The Complete Reference', 'It is the best and the most comprehensive book regarding Java.', 20);
INSERT INTO book (name, description, price) VALUES ('Java: A Beginner’s Guide', 'It’s a good book for someone with basic knowledge of programming wanting to learn java programming language.', 18);
INSERT INTO book (name, description, price) VALUES ('Effective Java 2nd Edition', 'This is not the beginner’s book but this is a must have book for every java programmer. The book contains 78 best practices that you should follow when writing java programs.', 25);
INSERT INTO book (name, description, price) VALUES ('Schindler\'s List', 'The acclaimed bestselling classic of Holocaust literature, winner of the Booker Prize and the Los Angeles Times Book Award for Fiction, and the inspiration for the classic film—“a masterful account of the growth of the human soul', 15);

INSERT INTO book_author (book_id, author_id) VALUES (1, 1);
INSERT INTO book_author (book_id, author_id) VALUES (2, 1);
INSERT INTO book_author (book_id, author_id) VALUES (3, 2);
INSERT INTO book_author (book_id, author_id) VALUES (4, 3);

INSERT INTO book_genre (book_id, genre_id) VALUES (1, 1);
INSERT INTO book_genre (book_id, genre_id) VALUES (2, 1);
INSERT INTO book_genre (book_id, genre_id) VALUES (3, 1);
INSERT INTO book_genre (book_id, genre_id) VALUES (4, 2);
