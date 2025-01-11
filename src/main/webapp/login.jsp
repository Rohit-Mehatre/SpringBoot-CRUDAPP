<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" type="text/css" href="styles.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<form action="login">
		<table align="center">
			<tr>
				<td>USERNAME:</td>
				<td><input type="text" name="uname"></td>
			</tr>
			<tr>
				<td>PASSWORD:</td>
				<td><input type="password" name="password" ></td>
			</tr>
			<tr>
				<td><input type="submit" value="Login"></td>
			</tr>
			<tr>
				<td><a href="registration" >New User</a></td>
			</tr>
		</table>


	</form>
</body>
</html>