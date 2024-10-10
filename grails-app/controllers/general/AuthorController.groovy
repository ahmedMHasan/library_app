package general

class AuthorController {

    // List all authors
    def index() {
        def authors = Author.list() // Fetch all authors
        [authors: authors]
    }

    // Show a single author by ID
    def show(Long id) {
        def author = Author.get(id) // Get author by ID
        if (!author) {
            flash.message = "Author not found"
            redirect(action: "index")
        } else {
            [author: author]
        }
    }

    // Render the form for creating a new author
    def create() {
        [author: new Author()]
    }

    // Save the new author
    def save() {
        def author = new Author(params)
        if (author.save(flush: true)) {
            flash.message = "Author saved successfully"
            redirect(action: "show", id: author.id)
        } else {
            render(view: "create", model: [author: author])
        }
    }

    // Render the form to edit an existing author
    def edit(Long id) {
        def author = Author.get(id)
        if (!author) {
            flash.message = "Author not found"
            redirect(action: "index")
        } else {
            [author: author]
        }
    }

    // Update the author details
    def update(Long id) {
        def author = Author.get(id)
        if (author) {
            author.properties = params
            if (author.save(flush: true)) {
                flash.message = "Author updated successfully"
                redirect(action: "show", id: author.id)
            } else {
                render(view: "edit", model: [author: author])
            }
        } else {
            flash.message = "Author not found"
            redirect(action: "index")
        }
    }

    // Delete an author
    def delete(Long id) {
        def author = Author.get(id)
        if (author) {
            author.delete(flush: true)
            flash.message = "Author deleted successfully"
        } else {
            flash.message = "Author not found"
        }
        redirect(action: "index")
    }
}
