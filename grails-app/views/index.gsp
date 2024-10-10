<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Library App - Home</title>
	<style>
	body {
		font-family: Arial, sans-serif;
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
		margin: 0;
	}
	.container {
		display: grid;
		grid-template-columns: repeat(4, 1fr);
		gap: 20px;
		justify-items: center;
	}
	.box {
		width: 150px;
		height: 150px;
		display: flex;
		justify-content: center;
		align-items: center;
		font-size: 1.2em;
		color: white;
		text-align: center;
		cursor: pointer;
		transition: transform 0.3s ease;
		border-radius: 10px;
	}
	.box:hover {
		transform: scale(1.1);
	}
	.author-box { background-color: #3498db; }
	.book-box { background-color: #e74c3c; }
	.library-box { background-color: #2ecc71; }
	.reservation-box { background-color: #c8b84c; }
	a {
		text-decoration: none;
		color: inherit;
	}
	</style>
</head>
<body>
<div class="container">
	<div class="box author-box">
		<a href="${createLink(controller: 'author', action: 'index')}">Author</a>
	</div>
	<div class="box book-box">
		<a href="${createLink(controller: 'book', action: 'index')}">Book</a>
	</div>
	<div class="box library-box">
		<a href="${createLink(controller: 'library', action: 'index')}">Library</a>
	</div>
	<div class="box reservation-box">
		<a href="${createLink(controller: 'reservation', action: 'index')}">Reservation</a>
	</div>
</div>
</body>
</html>
