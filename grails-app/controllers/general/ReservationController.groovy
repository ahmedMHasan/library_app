package general

class ReservationController {

    // List all reservations
    def index() {
        def reservations = Reservation.list()  // Fetch all reservations
        [reservations: reservations]
    }

    // Show a single reservation by ID
    def show(Long id) {
        def reservation = Reservation.get(id)  // Get reservation by ID
        if (!reservation) {
            flash.message = "Reservation not found"
            redirect(action: "index")
        } else {
            [reservation: reservation]
        }
    }

    // Render the form for creating a new reservation
    def create() {
        def books = Book.list()  // Fetch all books
        def libraries = Library.list()  // Fetch all libraries
        [reservation: new Reservation(), books: books, libraries: libraries]
    }

    // Save the new reservation
    def save() {
        def reservation = new Reservation(params)
        if (reservation.save(flush: true)) {
            flash.message = "Reservation created successfully"
            redirect(action: "show", id: reservation.id)
        } else {
            def books = Book.list()  // Fetch all books for the view
            def libraries = Library.list()  // Fetch all libraries for the view
            render(view: "create", model: [reservation: reservation, books: books, libraries: libraries])
        }
    }

    // Render the form to edit an existing reservation
    def edit(Long id) {
        def reservation = Reservation.get(id)
        if (!reservation) {
            flash.message = "Reservation not found"
            redirect(action: "index")
        } else {
            def books = Book.list()  // Fetch all books
            def libraries = Library.list()  // Fetch all libraries
            [reservation: reservation, books: books, libraries: libraries]
        }
    }

    // Update the reservation details
    def update(Long id) {
        def reservation = Reservation.get(id)
        if (reservation) {
            reservation.properties = params
            if (reservation.save(flush: true)) {
                flash.message = "Reservation updated successfully"
                redirect(action: "show", id: reservation.id)
            } else {
                def books = Book.list()  // Fetch all books for the view
                def libraries = Library.list()  // Fetch all libraries for the view
                render(view: "edit", model: [reservation: reservation, books: books, libraries: libraries])
            }
        } else {
            flash.message = "Reservation not found"
            redirect(action: "index")
        }
    }

    // Delete a reservation
    def delete(Long id) {
        def reservation = Reservation.get(id)
        if (reservation) {
            reservation.delete(flush: true)
            flash.message = "Reservation deleted successfully"
        } else {
            flash.message = "Reservation not found"
        }
        redirect(action: "index")
    }
}


//
//
//
//import static org.springframework.http.HttpStatus.*
//import grails.transaction.Transactional
//
//@Transactional(readOnly = true)
//class ReservationController {
//
//    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
//
//    def index(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
//        respond Reservation.list(params), model:[reservationInstanceCount: Reservation.count()]
//    }
//
//    def show(Reservation reservationInstance) {
//        respond reservationInstance
//    }
//
//    def create() {
//        respond new Reservation(params)
//    }
//
//    @Transactional
//    def save(Reservation reservationInstance) {
//        if (reservationInstance == null) {
//            notFound()
//            return
//        }
//
//        if (reservationInstance.hasErrors()) {
//            respond reservationInstance.errors, view:'create'
//            return
//        }
//
//        reservationInstance.save flush:true
//
//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.created.message', args: [message(code: 'reservation.label', default: 'Reservation'), reservationInstance.id])
//                redirect reservationInstance
//            }
//            '*' { respond reservationInstance, [status: CREATED] }
//        }
//    }
//
//    def edit(Reservation reservationInstance) {
//        respond reservationInstance
//    }
//
//    @Transactional
//    def update(Reservation reservationInstance) {
//        if (reservationInstance == null) {
//            notFound()
//            return
//        }
//
//        if (reservationInstance.hasErrors()) {
//            respond reservationInstance.errors, view:'edit'
//            return
//        }
//
//        reservationInstance.save flush:true
//
//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.updated.message', args: [message(code: 'Reservation.label', default: 'Reservation'), reservationInstance.id])
//                redirect reservationInstance
//            }
//            '*'{ respond reservationInstance, [status: OK] }
//        }
//    }
//
//    @Transactional
//    def delete(Reservation reservationInstance) {
//
//        if (reservationInstance == null) {
//            notFound()
//            return
//        }
//
//        reservationInstance.delete flush:true
//
//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Reservation.label', default: 'Reservation'), reservationInstance.id])
//                redirect action:"index", method:"GET"
//            }
//            '*'{ render status: NO_CONTENT }
//        }
//    }
//
//    protected void notFound() {
//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.not.found.message', args: [message(code: 'reservation.label', default: 'Reservation'), params.id])
//                redirect action: "index", method: "GET"
//            }
//            '*'{ render status: NOT_FOUND }
//        }
//    }
//}
