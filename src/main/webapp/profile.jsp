<!-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" %> -->
<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>profile</title>
    <style>
        body {
                padding: 20px 20px;
                background: linear-gradient(60deg, rgb(243, 189, 189), rgb(254, 254, 210), rgb(214, 252, 214), rgb(181, 181, 250), rgb(251, 106, 130));
                background-repeat: no-repeat;
            }
            th{
                width: 100px;
                color: red;
                font-size: 24px;
                font-weight: bold;
            }
            td{
                width: 100px;
                color: black;
                font-size: 20px;
                font-weight: bold;
            }
    </style>
</head>
<body>
    <center>
    <h1> login Successful....!!!!!</h1>
	<table border="7" width="20%" cellpadding="15px" cellspacing="5px">
		<tr align="center" bgcolor="DAF7A6">
			<th>User ID</th>
            <td><%=request.getAttribute("id")%></td>
        </tr>
        <tr align="center" bgcolor="DAF7A6">
			<th>User Name</th>
            <td><%=request.getAttribute("name")%></td>
        </tr>
        <tr align="center" bgcolor="DAF7A6">
			<th>User Address</th>
            <td><%=request.getAttribute("address")%></td>
        </tr>
        <tr align="center" bgcolor="DAF7A6">
            <th>User Qualification</th>
            <td>${qualification}</td>
        </tr>
        <tr align="center" bgcolor="DAF7A6">
			<th>User Email</th>
            <td>${email}</td>
        </tr>
        <tr align="center" bgcolor="DAF7A6">
			<th>User Password</th>
            <td>${password}</td>
        </tr>
	</table>
</center>
</body>
</html>