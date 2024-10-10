<html>
<head>
    <title>Libraries</title>
</head>
<body>
<h1>Library List</h1>
<g:link controller="library" action="create">Add New Library</g:link>
<a href="${request.contextPath}/" style="margin-left: 20px;">Return Home</a>

<ul>
    <g:each in="${libraries}" var="library">
        <li>
            <g:link action="show" id="${library.id}">${library.name}</g:link>
        </li>
    </g:each>
</ul>
</body>
</html>
