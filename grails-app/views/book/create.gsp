<html>
<head>
    <title>Create Book</title>
</head>
<body>
<h1>Create Book</h1>

<g:form controller="book" action="save">
    <label>Title:</label>
    <g:textField name="title"/><br/>

    <label>Author:</label>
    <g:select name="author.id" from="${authors}" optionKey="id" optionValue="firstName" /><br/>

    <label>Library:</label>
    <g:select name="library.id" from="${libraries}" optionKey="id" optionValue="name" /><br/>

    <label>Publication Date:</label>
    <g:datePicker name="publicationDate"/><br/>

    <label>ISBN:</label>
    <g:textField name="isbn"/><br/>

    <g:submitButton name="create" value="Create Book"/>
</g:form>
</body>
</html>
