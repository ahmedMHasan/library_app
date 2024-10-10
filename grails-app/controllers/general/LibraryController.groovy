package general

class LibraryController {

    // List all libraries
    def index() {
        def libraries = Library.list() // Fetch all libraries
        [libraries: libraries]
    }

    // Show a single library by ID
    def show(Long id) {
        def library = Library.get(id) // Get library by ID
        if (!library) {
            flash.message = "Library not found"
            redirect(action: "index")
        } else {
            [library: library]
        }
    }

    // Render the form for creating a new library
    def create() {
        [library: new Library()]
    }

    // Save the new library
    def save() {
        def library = new Library(params)
        if (library.save(flush: true)) {
            flash.message = "Library saved successfully"
            redirect(action: "show", id: library.id)
        } else {
            render(view: "create", model: [library: library])
        }
    }

    // Render the form to edit an existing library
    def edit(Long id) {
        def library = Library.get(id)
        if (!library) {
            flash.message = "Library not found"
            redirect(action: "index")
        } else {
            [library: library]
        }
    }

    // Update the library details
    def update(Long id) {
        def library = Library.get(id)
        if (library) {
            library.properties = params
            if (library.save(flush: true)) {
                flash.message = "Library updated successfully"
                redirect(action: "show", id: library.id)
            } else {
                render(view: "edit", model: [library: library])
            }
        } else {
            flash.message = "Library not found"
            redirect(action: "index")
        }
    }

    // Delete a library
    def delete(Long id) {
        def library = Library.get(id)
        if (library) {
            library.delete(flush: true)
            flash.message = "Library deleted successfully"
        } else {
            flash.message = "Library not found"
        }
        redirect(action: "index")
    }
}
