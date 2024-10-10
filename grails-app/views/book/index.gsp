<html>
<head>
    <title>Books</title>
</head>
<body>
<h1>Book List</h1>
<g:link controller="book" action="create">Add New Book</g:link>
<a href="${request.contextPath}/" style="margin-left: 20px;">Return Home</a>

<ul>
    <g:each in="${books}" var="book">
        <li>
            <g:link action="show" id="${book.id}">${book.title} by ${book.author.firstName} ${book.author.lastName}</g:link>
        </li>
    </g:each>
</ul>
</body>
</html>
