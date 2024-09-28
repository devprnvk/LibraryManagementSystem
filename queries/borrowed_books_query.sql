SELECT Members.name, Books.title, Transactions.borrow_date
FROM Transactions
JOIN Members ON Transactions.member_id = Members.id
JOIN Books ON Transactions.book_id = Books.id;