<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
    
<!DOCTYPE html>
<html><center>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<form:form action="/CheckAdminLogin" method="POST" modelAttribute='Adm'>
<table >
<caption><h3><u>Admin Login</u></h3></caption>
<tr><td><b><i>Admin Id</i></b></td>
<td><form:input path="adminId"/></td></tr>


<tr><td><b><i>Password</i></b></td>
<td><form:password  path="password"/></td></tr>

</table>
<input type="submit"><br><br>
${Message}
</form:form>

</head>
<body>

</body></center></center>
</html>