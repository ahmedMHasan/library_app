<!DOCTYPE html>
<html>
<head>
	<title>Edit Reservation</title>
</head>
<body>
<h1>Edit Reservation</h1>

<g:form controller="reservation" action="update" id="${reservation.id}">
	<input type="hidden" name="id" value="${reservation.id}"/>

	<label>Book:</label>
	<g:select name="book.id" from="${books}" optionKey="id" optionValue="title" required="" value="${reservation.book.id}"/>
	<br/>

	<label>Library:</label>
	<g:select name="library.id" from="${libraries}" optionKey="id" optionValue="name" required="" value="${reservation.library.id}"/>
	<br/>

	<label>Start Date:</label>
	<g:datePicker name="startDate" required="" value="${reservation.startDate}"/>
	<br/>

	<label>End Date:</label>
	<g:datePicker name="endDate" required="" value="${reservation.endDate}"/>
	<br/>

	<g:submitButton name="update" value="Update Reservation"/>
</g:form>

<g:link controller="reservation" action="index" style="margin-left: 20px;">Back to Reservations</g:link>
</body>
</html>
