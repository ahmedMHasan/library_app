<!DOCTYPE html>
<html>
<head>
	<title>Reservations</title>
</head>
<body>
<h1>Reservations</h1>
<g:link controller="reservation" action="create" class="btn btn-primary">Create New Reservation</g:link>
<a href="${request.contextPath}/" style="margin-left: 20px;">Return Home</a>

<table>
	<thead>
	<tr>
		<th>Book Title</th>
		<th>Library Name</th>
		<th>Start Date</th>
		<th>End Date</th>
		<th>Actions</th>
	</tr>
	</thead>
	<tbody>
	<g:each in="${reservations}" var="reservation">
		<tr>
			<td>${reservation.book.title}</td>
			<td>${reservation.library.name}</td>
			<td>${reservation.startDate.format('dd/MM/yyyy')}</td>
			<td>${reservation.endDate.format('dd/MM/yyyy')}</td>
			<td>
				<g:link controller="reservation" action="show" id="${reservation.id}">View</g:link>
				<g:link controller="reservation" action="edit" id="${reservation.id}">Edit</g:link>
			</td>
		</tr>
	</g:each>
	</tbody>
</table>

</body>
</html>
