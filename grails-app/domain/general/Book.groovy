package general

class Book {
    String title
    String isbn
    Date publicationDate

    static belongsTo = [author: Author, library: Library]

    static constraints = {
        title blank: false, maxSize: 255
        isbn blank: false, maxSize: 13, unique: true
        publicationDate nullable: true
        author nullable: false
        library nullable: false
    }
}