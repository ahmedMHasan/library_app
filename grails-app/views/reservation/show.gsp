<!DOCTYPE html>
<html>
<head>
	<title>Show Reservation</title>
</head>
<body>
<h1>Reservation Details</h1>


<p><strong>Book Title:</strong> ${reservation.book.title}</p>
<p><strong>Library Name:</strong> ${reservation.library.name}</p>
<p><strong>Start Date:</strong> ${reservation.startDate.format('dd/MM/yyyy')}</p>
<p><strong>End Date:</strong> ${reservation.endDate.format('dd/MM/yyyy')}</p>

<g:link controller="reservation" action="edit" id="${reservation.id}">Edit Reservation</g:link>
<g:link controller="reservation" action="index" style="margin-left: 20px;">Back to Reservations</g:link>
</body>
</html>
