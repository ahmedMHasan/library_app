<html>
<head>
    <title>Edit Book</title>
</head>
<body>
<h1>Edit Book</h1>

<g:form controller="book" action="update" id="${book.id}">
    <label>Title:</label>
    <g:textField name="title" value="${book.title}"/><br/>

    <label>Author:</label>
    <g:select name="author.id" from="${authors}" optionKey="id" optionValue="firstName" value="${book.author.id}"/><br/>

    <label>Library:</label>
    <g:select name="library.id" from="${libraries}" optionKey="id" optionValue="name" value="${book.library.id}"/><br/>

    <label>Publication Date:</label>
    <g:datePicker name="publicationDate" value="${book.publicationDate}"/><br/>

    <label>ISBN:</label>
    <g:textField name="isbn" value="${book.isbn}"/><br/>

    <g:submitButton name="update" value="Update Book"/>
</g:form>
</body>
</html>
