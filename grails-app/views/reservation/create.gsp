<!DOCTYPE html>
<html>
<head>
	<title>Create Reservation</title>
</head>
<body>
<h1>Create Reservation</h1>

<g:form controller="reservation" action="save">
	<label>Book:</label>
	<g:select name="book.id" from="${books}" optionKey="id" optionValue="title" required=""/>
	<br/>

	<label>Library:</label>
	<g:select name="library.id" from="${libraries}" optionKey="id" optionValue="name" required=""/>
	<br/>

	<label>Start Date:</label>
	<g:datePicker name="startDate" required=""/>
	<br/>

	<label>End Date:</label>
	<g:datePicker name="endDate" required=""/>
	<br/>

	<g:submitButton name="create" value="Create Reservation"/>
</g:form>

<g:link controller="reservation" action="index" style="margin-left: 20px;">Back to Reservations</g:link>
</body>
</html>
