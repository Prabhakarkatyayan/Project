<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<script src='http://localhost:8080/js/jquery-2.2.1.min.js'></script>
<script src='http://localhost:8080/js/statecity.js'></script>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Register</title>
<table><tr><td>
<form:form action="/EmployeeEditDelete" method="POST"  modelAttribute='employee'>
<form:hidden path="employeeid"/>
<form:hidden path="picture"/>
<table>
<caption><u><h3>Employee Edit Delete</h3></u></caption>
<tr><td><b><i>Employee Name</i></b></td>
<td><form:input path="employeename"/></td></tr>

<tr><td><b><i>Gender</i></b></td>
<td><form:radiobutton path="gender" value='Male'/>Male <form:radiobutton path="gender" value='Female'/>Female</td></tr>

<tr><td><b><i>Birth Date</i></b></td>
<td><form:input path="dob" type='date'/></td></tr>

<tr><td><b><i>Email</i></b></td>
<td><form:input path="emailid"/></td></tr>

<tr><td><b><i>Mobile</i></b></td>
<td><form:input path="mobileno"/></td></tr>


<tr><td><b><i>Address</i></b></td>
<td><form:input path="address"/></td></tr>

<tr><td><b><i>State</i></b></td>
<td><form:select path="state" id="statename">
<form:option value="${employee.state}" label="${employee.state}"></form:option>
</form:select></td></tr>

<tr><td><b><i>City</i></b></td>
<td><form:select path="city" id="cityname">
<form:option value="${employee.city}" label="${employee.city}" ></form:option>
</form:select></td></tr>

<tr><td><b><i>Department</i></b></td>
<td><form:input path="department"/></td></tr>

<tr><td><b><i>Designation</i></b></td>
<td><form:input path="designation"/></td></tr>

<tr><td><b><i>Status</i></b></td>
<td><form:input path="status"/></td></tr>


</table>
<input type="submit" value="Edit" name='btn'> <input type="submit" value="Delete" name="btn">

 

</form:form>
</td>
<td>
<form:form action="/EditPicture" enctype="multipart/form-data" modelAttribute="employee" method="POST">
<form:hidden path="employeeid"/>
<img src='/images/${employee.picture}' width='150' height='150'><br><br>
Edit Picture<br><br>
<input type="file" name="pic"><br><br>
<input type="submit">
</form:form> 
</td></tr></table>


</head>
<body>

</body>
</html>




