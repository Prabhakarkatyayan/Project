<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
    
<!DOCTYPE html>
<html><center>
<head>
<style>

.button {

  font: bold 17px Arial;
   font-color:black;
  text-color: none;
  background-color:orange;
  color: #333333;
  padding: 2px 6px 2px 6px;
  border-top: 1px solid #CCCCCC;
  border-right: 1px solid #333333;
  border-bottom: 1px solid #333333;
  border-left: 1px solid #CCCCCC;
}
#employee {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
 }
#employee td, #employee th {
  border: 1px solid #ddd;
  padding: 8px;
}
#employee th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
    border: 1px solid #ddd;
  
}
</style>
<meta charset="ISO-8859-1">
</head><title>Admin Login</title>
<body bgcolor=fafad2><form:form action="/CheckAdminLogin" method="POST" modelAttribute='Adm'>
<table id='employee'>
<div class='button'>Admin Login</div><br><br>
<tr><td><b><i>Admin Id</i></b></td>
<td><form:input path="adminId"/></td></tr>


<tr><td><b><i>Password</i></b></td>
<td><form:password  path="password"/></td></tr>

</table>
<input type="submit">
<input type="reset"><br>
<br><br>
${Message}

</form:form>
<br><br>
<p><h3>Employee Login? <a href='EmployeeLogin'  >Click Here</a><br>

</body></center></center>
</html>