const authors = [];
const books = [];
const members = [];

// Function to fetch authors
function fetchAndFormatAuthors() {
    return fetch('authors.json')
        .then(response => response.json())
        .then(data => {
            data.forEach(author => {
                authors.push({ id: author.id, name: author.name });
            });
        })
        .catch(error => console.error('Error loading authors:', error));
}

// Function to fetch books
function fetchAndFormatBooks() {
    return fetch('books.json')
        .then(response => response.json())
        .then(data => {
            data.forEach(book => {
                const author = authors.find(author => author.id === book.author_id);
                if (author) {
                    books.push({
                        title: book.title,
                        author: author.name,
                        year: book.published_year,
                        genre: book.genre
                    });
                }
            });
            loadBooks(); // Load books into the table after fetching
        })
        .catch(error => console.error('Error loading books:', error));
}

// Function to fetch members
function fetchAndFormatMembers() {
    return fetch('members.json')
        .then(response => response.json())
        .then(data => {
            data.forEach(member => {
                members.push({ name: member.name, membershipDate: member.membershipDate });
            });
            loadMembers(); // Load members into the table after fetching
        })
        .catch(error => console.error('Error loading members:', error));
}

// Function to load books into the table
function loadBooks() {
    const booksTable = document.getElementById('booksTable').getElementsByTagName('tbody')[0];
    books.forEach(book => {
        const row = booksTable.insertRow();
        row.insertCell(0).innerText = book.title;
        row.insertCell(1).innerText = book.author;
        row.insertCell(2).innerText = book.year;
        row.insertCell(3).innerText = book.genre;
    });
}

// Function to load members into the table
function loadMembers() {
    const membersTable = document.getElementById('membersTable').getElementsByTagName('tbody')[0];
    members.forEach(member => {
        const row = membersTable.insertRow();
        row.insertCell(0).innerText = member.name;
        row.insertCell(1).innerText = member.membershipDate;
    });
}

// Load data when window loads
window.onload = function() {
    fetchAndFormatAuthors()
        .then(fetchAndFormatBooks)
        .then(fetchAndFormatMembers);
};

// Handle form submission
document.getElementById('borrowForm').addEventListener('submit', function(e) {
    e.preventDefault();
    const memberName = document.getElementById('member-name').value.trim();
    const bookTitle = document.getElementById('book-title').value.trim();

    // Validate inputs
    if (!memberName || !bookTitle) {
        alert('Please fill out all fields.');
        return;
    }

    // Redirect to order-confirmation.html with query parameters
    window.location.href = `order-confirmation.html?member=${encodeURIComponent(memberName)}&book=${encodeURIComponent(bookTitle)}`;
});


// Smooth scrolling for navigation
document.querySelectorAll('nav ul li a').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
        e.preventDefault();
        const targetId = this.getAttribute('href');
        const targetSection = document.querySelector(targetId);
        targetSection.scrollIntoView({ behavior: 'smooth' });
    });
});
