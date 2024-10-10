<html>
<head>
    <title>Edit Author</title>
</head>
<body>
<h1>Edit Author</h1>

<g:form controller="author" action="update" id="${author.id}">
    <label>First Name:</label>
    <g:textField name="firstName" value="${author.firstName}"/><br/>

    <label>Last Name:</label>
    <g:textField name="lastName" value="${author.lastName}"/><br/>

    <label>Date of Birth:</label>
    <g:datePicker name="dateOfBirth" value="${author.dateOfBirth}"/><br/>

    <g:submitButton name="update" value="Update Author"/>
</g:form>
</body>
</html>
