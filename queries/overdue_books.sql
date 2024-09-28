SELECT Books.title, Members.name, Transactions.borrow_date
FROM Transactions
JOIN Books ON Transactions.book_id = Books.id
JOIN Members ON Transactions.member_id = Members.id
WHERE Transactions.return_date IS NULL AND Transactions.borrow_date < CURDATE() - INTERVAL 30 DAY;
