package general

class Library {
    String name
    String location

    static hasMany = [books: Book]

    static constraints = {
        name blank: false, maxSize: 255
        location blank: false, maxSize: 255
    }
}
