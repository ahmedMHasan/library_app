class UrlMappings {

	static mappings = {

        // Maps default actions for the Book controller
        "/books"(controller: "book", action: "index")

        // Maps default actions for the Author controller
        "/authors"(controller: "author", action: "index")

        // Maps default actions for the Library controller
        "/libraries"(controller: "library", action: "index")

        // Maps default actions for the Reservation controller
        "/reservations"(controller: "reservation", action: "index")

        // Home page route
        "/"(view: "/index")

        // Error route
        "500"(view: '/error')
        "404"(view: '/notFound')

        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

	}
}
