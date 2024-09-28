INSERT INTO Authors (name, bio) VALUES
('J.K. Rowling', 'Author of the Harry Potter series.'),
('George R.R. Martin', 'Author of A Game of Thrones');
('F. Scott Fitzgerald', 'Author of The Great Gatsby.'),
('Harper Lee', 'Author of To Kill a Mockingbird.'),
('George Orwell', 'Author of 1984.'),
('Jane Austen', 'Author of Pride and Prejudice.'),
('J.D. Salinger', 'Author of The Catcher in the Rye.'),
('J.R.R. Tolkien', 'Author of The Hobbit.'),
('Herman Melville', 'Author of Moby Dick.'),
('Leo Tolstoy', 'Author of War and Peace.');

INSERT INTO Books (title, author_id, published_year, genre) VALUES
('Harry Potter and the Sorcerer\'s Stone', 1, 1997, 'Fantasy'),
('A Game of Thrones', 2, 1996, 'Fantasy'),
('The Great Gatsby', 3, 1925, 'Classic'),
('To Kill a Mockingbird', 4, 1960, 'Fiction'),
('1984', 5, 1949, 'Dystopian'),
('Pride and Prejudice', 6, 1813, 'Romance'),
('The Catcher in the Rye', 7, 1951, 'Fiction'),
('The Hobbit', 8, 1937, 'Fantasy'),
('Moby Dick', 9, 1851, 'Adventure'),
('War and Peace', 10, 1869, 'Historical Fiction');

INSERT INTO Members (name, membership_date) VALUES
('Alice Thompson', '2024-01-01'),
('Jamie Parker', '2024-02-15');
('Max Johnson', '2024-08-13');
('Aditya Gupta', '2024-11-09');
('Benjamin Rogers', '2024-07-21');
('Samuel Wills', '2024-05-16');


INSERT INTO Transactions (book_id, member_id, borrow_date) VALUES
(1, 1, '2024-09-01'),
(2, 2, '2024-09-05'),
(3, 5, '2024-11-07'),
(4, 4, '2024-10-03');

