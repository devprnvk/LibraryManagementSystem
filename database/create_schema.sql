CREATE TABLE Authors (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    bio TEXT
);

CREATE TABLE Books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    author_id INT,
    published_year YEAR,
    genre VARCHAR(50),
    FOREIGN KEY (author_id) REFERENCES Authors(id)
);

CREATE TABLE Members (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    membership_date DATE
);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    member_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(id),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);
