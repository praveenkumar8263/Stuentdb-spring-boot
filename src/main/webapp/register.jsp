<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Register</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

	<style>
		body {
			padding: 20px 20px;
			background: linear-gradient(60deg, rgb(243, 189, 189), rgb(254, 254, 210), rgb(214, 252, 214), rgb(181, 181, 250), rgb(251, 106, 130));
			background-repeat: no-repeat;
		}

		form {
			display: flex;
			align-items: center;
			justify-content: center;
			flex-direction: column;
			padding: 20px;
		}

		input {
			width: 400px;
			height: 50px;
			margin: 10px 20px;
			padding: 10px 30px;
			font-size: 21px;
			outline: none;
			border-radius: 50px;
			border: none;
		}
		input:focus
		{
			border: 2px double red;
		}

		button {
			width: 220px;
			height: 45px;
			font-size: 21px;
			text-align: center;
			border: none;
			background-color: black;
			font-size: 24px;
			border-radius: 50px;
			margin-top: 20px;
			font-weight: 700;
			color: white;
		}
		button:hover{
			transform: scale(1.2);
			transition: .5s;
			background-color: white;
			color: black;
		}
	</style>
</head>

<body>
	<form action="createUser" method="post" onchange="index.jsp">
		<h1 style="color: red;">Register</h1>
		<input required type="text" placeholder="Enter Name" name="name">
		<input required type="text" placeholder="Enter Email" name="email">
		<input required type="text" placeholder="Enter Address" name="address">
		<input required type="text" placeholder="Enter Qualification" name="qualification">
		<input required type="text" placeholder="Enter Password" name="password">
		<button>submit</button>
	</form>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>

</html>