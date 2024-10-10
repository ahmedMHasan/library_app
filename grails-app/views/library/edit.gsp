<html>
<head>
    <title>Edit Library</title>
</head>
<body>
<h1>Edit Library</h1>

<g:form controller="library" action="update" id="${library.id}">
    <label>Name:</label>
    <g:textField name="name" value="${library.name}"/><br/>

    <label>Location:</label>
    <g:textField name="location" value="${library.location}"/><br/>

    <g:submitButton name="update" value="Update Library"/>
</g:form>
</body>
</html>
