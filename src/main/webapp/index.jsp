<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Index</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        body {
            padding: 20px 20px;
            background: linear-gradient(60deg, rgb(243, 189, 189), rgb(254, 254, 210), rgb(214, 252, 214), rgb(181, 181, 250), rgb(251, 106, 130));
            background-repeat: no-repeat;
        }

        ul {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;

        }

        ul li {
            list-style-type: none;
            margin: 10px 20px;
            height: 50px;
            width: 500px;
            /* border: 2px solid red; */
            background-color: rgb(53, 53, 53);
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50PX;
            margin: 20px 0px;
        }

        li a {
            text-decoration: none;
            color: black;
            font-size: 22px;
            font-family: red;
            color: white;
            font-weight: bold;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }
        li a:hover
        {
            color: black;
        } 
        li:hover {
            transition: .7s;
            transform: scale(1.1);
            color: black;
            background: linear-gradient(60deg, rgb(253, 139, 139), rgb(247, 247, 156), rgb(160, 255, 160), rgb(170, 170, 253), rgb(253, 143, 161));
        }
    </style>
</head>

<body>
    <div>
        <h1 style="text-align: center; margin: 40px;">Welcome to Jspiders...!!!!!!!!!!</h1>
        <ul>
            <li> <a href="register.jsp">click here for register</a></li>
            <li> <a href="login.jsp">cilck here for login</a> </li>
            <li> <a href="delete.jsp">click here to delete existing user</a> </li>
            <li> <a href="view.jsp">click here to view the all users</a></li>
        </ul>
    </div>
</body>

</html>