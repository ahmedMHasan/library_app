package general

class Author {
    String firstName
    String lastName
    Date dateOfBirth

    static hasMany = [books: Book]

    static constraints = {
        firstName blank: false, maxSize: 100
        lastName blank: false, maxSize: 100
        dateOfBirth nullable: true
    }
}
