<html>
<head>
    <title>Authors</title>
</head>
<body>
<h1>Author List</h1>
<g:link controller="author" action="create">Add New Author</g:link>
<a href="${request.contextPath}/" style="margin-left: 20px;">Return Home</a>

<ul>
    <g:each in="${authors}" var="author">
        <li>
            <g:link action="show" id="${author.id}">${author.firstName} ${author.lastName}</g:link>
        </li>
    </g:each>
</ul>
</body>
</html>
