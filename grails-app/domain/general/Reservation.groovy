package general

class Reservation {
    Date startDate
    Date endDate


    static belongsTo = [library: Library, book: Book]

    static constraints = {
        book nullable: false
        library nullable: false
        startDate nullable: false
        endDate nullable: false
    }

    String toString() {
        return "Reservation of '${book.title}' at ${library.name} from ${startDate} to ${endDate}"
    }
}