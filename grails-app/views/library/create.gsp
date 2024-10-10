<html>
<head>
    <title>Create Library</title>
</head>
<body>
<h1>Create Library</h1>

<g:form controller="library" action="save">
    <label>Name:</label>
    <g:textField name="name"/><br/>

    <label>Location:</label>
    <g:textField name="location"/><br/>

    <g:submitButton name="create" value="Create Library"/>
</g:form>
</body>
</html>
