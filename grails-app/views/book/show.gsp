<html>
<head>
    <title>Show Book</title>
</head>
<body>
<h1>Book: ${book.title}</h1>

<p>Author: ${book.author.firstName} ${book.author.lastName}</p>
<p>Library: ${book.library.name}</p>
<p>Publication Date: ${book.publicationDate}</p>
<p>ISBN: ${book.isbn}</p>

<g:link controller="book" action="edit" id="${book.id}">Edit</g:link>
<g:link controller="book" action="delete" id="${book.id}" onclick="return confirm('Are you sure?')">Delete</g:link>

<g:link controller="book" action="index">Back to list</g:link>
</body>
</html>
