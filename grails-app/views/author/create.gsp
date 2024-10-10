<html>
<head>
    <title>Create Author</title>
</head>
<body>
<h1>Create Author</h1>

<g:form controller="author" action="save">
    <label>First Name:</label>
    <g:textField name="firstName"/><br/>

    <label>Last Name:</label>
    <g:textField name="lastName"/><br/>

    <label>Date of Birth:</label>
    <g:datePicker name="dateOfBirth"/><br/>

    <g:submitButton name="create" value="Create Author"/>
</g:form>
</body>
</html>
