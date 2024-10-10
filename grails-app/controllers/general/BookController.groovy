package general

class BookController {

    // List all books
    def index() {
        def books = Book.list()  // Fetch all books
        [books: books]
    }

    // Show a single book by ID
    def show(Long id) {
        def book = Book.get(id)  // Get book by ID
        if (!book) {
            flash.message = "Book not found"
            redirect(action: "index")
        } else {
            [book: book]
        }
    }

    // Render the form for creating a new book
    def create() {
        def authors = Author.list()  // Fetch all authors
        def libraries = Library.list()  // Fetch all libraries

        [book: new Book(), authors: authors, libraries: libraries]
    }

    // Save the new book
    def save() {
        def book = new Book(params)
        if (book.save(flush: true)) {
            flash.message = "Book saved successfully"
            redirect(action: "show", id: book.id)
        } else {
            render(view: "create", model: [book: book])
        }
    }

    // Render the form to edit an existing book
    def edit(Long id) {
        def book = Book.get(id)
        if (!book) {
            flash.message = "Book not found"
            redirect(action: "index")
        } else {
            def authors = Author.list()  // Fetch all authors
            def libraries = Library.list()  // Fetch all libraries
            [book: book, authors: authors, libraries: libraries]
        }
    }

    // Update the book details
    def update(Long id) {
        def book = Book.get(id)
        if (book) {
            book.properties = params
            if (book.save(flush: true)) {
                flash.message = "Book updated successfully"
                redirect(action: "show", id: book.id)
            } else {
                render(view: "edit", model: [book: book])
            }
        } else {
            flash.message = "Book not found"
            redirect(action: "index")
        }
    }

    // Delete a book
    def delete(Long id) {
        def book = Book.get(id)
        if (book) {
            book.delete(flush: true)
            flash.message = "Book deleted successfully"
        } else {
            flash.message = "Book not found"
        }
        redirect(action: "index")
    }
}
