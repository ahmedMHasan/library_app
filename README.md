# Simple Library Application (Grails 2.5.6)

This is a simple library application that allows users to manage books, authors, libraries, and reservations. Below are the key features implemented in the application.

## Requirements

- **Grails 2.5.6**: Make sure you have Grails 2.5.6 installed. You can download it from the [Grails website](https://grails.org/download.html).
- **Java 7 or higher**: Ensure you have JDK 7 or higher installed. You can check your Java version by running:
  ```bash
  java -version
  ```
- **Database**: The application is configured to use a compatible SQL database (e.g., H2, MySQL, etc.). Ensure your database is set up.

## Features

### Book Management
- **List all books**: Display all books in the library.
- **Create a book**: Form to add new books, including title, author, library, publication date, and ISBN.
- **Edit a book**: Update book details.
- **Show book details**: View detailed information about a specific book.
- **Delete a book**: Remove a book from the library.

### Author Management
- **List all authors**: Display all authors in the library.
- **Create, Edit, Show, and Delete authors**: Similar functionality for managing authors.

### Library Management
- **List all libraries**: Display all libraries.
- **Create, Edit, Show, and Delete libraries**: Similar functionality for managing libraries.

### Reservation Management
- **List all reservations**: View all reservations made for books in libraries.
- **Create a reservation**: Form to reserve a book for a specified period in a specific library.
- **Edit a reservation**: Update reservation details.
- **Show reservation details**: View details about a specific reservation.
- **Delete a reservation**: Remove a reservation.

## How to Start

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/library_app.git
   cd library_app
   ```

2. **Install dependencies** (if applicable):
   ```bash
   grails compile
   ```

3. **Run the application**:
   ```bash
   grails run-app
   ```

4. **Access the application** in your browser at `http://localhost:8080/library_app/`.

## Future Improvements

- Implement user authentication and authorization.
- Add search and filter functionality for books, authors, and reservations.
- Enhance UI/UX design.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

