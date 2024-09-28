SELECT Books.title, COUNT(Transactions.book_id) AS borrow_count
FROM Books
LEFT JOIN Transactions ON Books.id = Transactions.book_id
GROUP BY Books.title
ORDER BY borrow_count DESC;
