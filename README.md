# Library Management System

## Overview

The Library Management System is a web application designed to facilitate the management of books in a library. It allows users to borrow books, track overdue items, and identify popular books based on borrowing statistics. This project aims to streamline library operations and provide valuable insights into book usage.

## Features

- **User Registration**: Users can register to borrow books.
- **Book Borrowing**: Users can submit a form to borrow books.
- **Track Borrowed Books**: The system keeps a record of all borrowed books.
- **Statistics**: Query functionality to retrieve statistics such as overdue books and popular titles.
- **Responsive Design**: The application is built to be user-friendly and responsive across different devices.

## Technology Stack

- **Frontend**: HTML, CSS
- **Backend**: Node.js, JavaScript
- **Database**: MySQL
- **Libraries/Frameworks**: Bootstrap, Postman

## Project Structure
/library-management-system 
├── /database │ 
   ├── create_schema.sql │ 
   └── insert_data.sql ├
|── /queries │
   ├── overdue_books.sql │ 
   ├── popular_books.sql │ 
   └── [other queries] 
├── /frontend │ 
   ├── /css │ 
      └── style.css
   ├── /js │
      └── script.js
      └── confirmation.js 
   ├── /html │ 
      └── index.html 
      └── confirmation.html 
   └── README.md

## Setup Instructions

### Prerequisites

- Node.js
- MySQL

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/library-management-system.git

2. Navigate to the project directory:
   ```bash
   cd library-management-system

3. Install the required npm packages
   ```bash
   npm install

4. Set up your MySQL database:
   Create a new database.
   Run the create_schema.sql script to create necessary tables.
   Run the insert_data.sql script to populate initial data.
   Configure your database connection in frontend/script.js.

5. Start the application:
   ```bash
   node frontend/script.js

Access the application at http://localhost:3000 (or your configured port).

