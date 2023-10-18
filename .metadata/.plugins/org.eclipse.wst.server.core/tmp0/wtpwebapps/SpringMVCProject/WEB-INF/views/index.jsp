<html>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Student Application</title>
</head>
<body>
	<h1 class="text-center">Student</h1>

	<div class="container">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">Contact</th>
					<th scope="col">Address</th>
					<th scope="col">Email</th>
					<th scope="col">Password</th>
					<th scope="col">Edit</th>
					<th scope="col">Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var="u">
					<tr>
						<th scope="row">${u.id }</th>
						<td>${u.name }</td>
						<td>${u.contact }</td>
						<td>${u.address }</td>
						<td>${u.email }</td>
						<td>${u.password }</td>
						<td><a class="btn btn-success" href="update/${u.id }">Edit</a></td>
						<td><a class="btn btn-danger" href="delete/${u.id }">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>


	<div class="text-center">
		<h2>
			<a href="register">Register</a>
		</h2>
		<h2>
			<a href="about">About</a>
		</h2>
	</div>
</body>
</html>
