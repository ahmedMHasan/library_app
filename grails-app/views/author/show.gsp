<html>
<head>
    <title>Show Author</title>
</head>
<body>
<h1>Author: ${author.firstName} ${author.lastName}</h1>

<p>Date of Birth: ${author.dateOfBirth}</p>

<g:link controller="author" action="edit" id="${author.id}">Edit</g:link>
<g:link controller="author" action="delete" id="${author.id}" onclick="return confirm('Are you sure?')">Delete</g:link>

<g:link controller="author" action="index">Back to list</g:link>
</body>
</html>
