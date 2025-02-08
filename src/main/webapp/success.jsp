<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Page</title>
<link rel="stylesheet" type="text/css" href="styles.css">

<script type="text/javascript">
		function addUser() 
		{
			
			document.fn.action="registrartion.jsp";
			document.fn.submit();
		}
		function deleteUser() {
			
			alert("Delete Data");
			document.fn.action="delete";
			document.fn.submit();
		}
		function editUser() {
			alert("Edit Data");
			document.fn.action="edit";
			document.fn.submit();
		}
</script>
</head>
<body>
	<form name="fn">


		<table border="2" align="center">
			<th>Sr No</th>
			<th>Id</th>
			<th>Name</th>
			<th>User Name</th>
			<th>Password</th>
			<th>Mobile No</th>
			<tr>
				<c:forEach items="${data}" var="user">
					<br>
					<td><input type="radio" name="uid" value="${user.uid}"></td>
					<td>${user.uid}</td>
					<td>${user.name}</td>
					<td>${user.uname}</td>
					<td>${user.password}</td>
					<td>${user.mobileno}</td>
					<!-- <td><input type="button" value="EDIT" onclick="editUser()"></td>
					<td><input type="button" value="DELETE" onclick="deleteUser()"><td> -->
			</tr>
			</c:forEach>

		</table>

<table  align="center">
<tr>
<td><input type="submit" value="EDIT" onclick="editUser()"></td>
<td><input type="submit" value="ADD" onclick="addUser()"></td>
<td><input type="submit" value="DELETE" onclick="deleteUser()"></td>

</tr>
</table>
	</form>
</body>
</html>