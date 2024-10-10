<html>
<head>
    <title>Show Library</title>
</head>
<body>
<h1>Library: ${library.name}</h1>

<p>Location: ${library.location}</p>

<g:link controller="library" action="edit" id="${library.id}">Edit</g:link>
<g:link controller="library" action="delete" id="${library.id}" onclick="return confirm('Are you sure?')">Delete</g:link>

<g:link controller="library" action="index">Back to list</g:link>
</body>
</html>
