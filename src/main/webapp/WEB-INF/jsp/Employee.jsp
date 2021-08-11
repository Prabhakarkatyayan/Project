<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<script src='http://localhost:8080/js/jquery-2.2.1.min.js'></script>
<script src='http://localhost:8080/js/statecity.js'></script>
            <%@ page import="com.nis.model.Admin" %>    

<html>

<head><style> 
.select {
  
  border: none;
  border-radius: 4px;
  background-color: #f1f1f1;
}
.button {
 width: 1030px;
  height: 20px;
  padding: 20px;

  font: bold 17px Arial;
  text-decoration: ;
  background-color:orange;
  color: #333333;
    border-top: 1px solid #CCCCCC;
  border-right: 1px solid #333333;
  border-bottom: 1px solid #333333;
  border-left: 1px solid #CCCCCC;
}

</style>
<body>
<center>
<meta charset="ISO-8859-1">
<% Admin A=(Admin)(session.getAttribute("SES_ADMIN"));%>

<title><h3>Employee Register</h3></title>
<form:form action="/EmployeeSubmit" method="POST" enctype="multipart/form-data" modelAttribute='Emp'>
<div class='button'>Employee Registration</div><br><br>
<table align="center">

<tr><td><b><i>Employee Name</i></b></td>
<td><form:input path="employeename" pattern="[a-z A-Z]+" required="yes" title='Only Alphabets And Spaces are Allowed'/></td></tr>

<tr><td><b><i>Gender</i></b></td>
<td><form:radiobutton path="gender"  required="yes" value='Male'/>Male <form:radiobutton path="gender" value='Female'/>Female</td></tr>

<tr><td><b><i>Birth Date</i></b></td>
<td><form:input path="dob" type='date' required="yes"/></td></tr>

<tr><td><b><i>Email</i></b></td>
<td><form:input path="emailid" required="yes"  /></td></tr>

<tr><td><b><i>Mobile</i></b></td>
<td><form:input path="mobileno" pattern="[0-9]+" required="yes" title ='Only Numbers are Allowed'/></td></tr>


<tr><td><b><i>Address</i></b></td>
<td><form:input path="address"  required="yes"/></td></tr>

<tr><td><b><i>State</i></b></td>
<td><form:select path="state" class='select'  id="statename" ></form:select></td></tr>

<tr><td><b><i>City</i></b></td>
<td><form:select path="city" class='select' id="cityname" ></form:select></td></tr>

<tr><td><b><i>Department</i></b></td>
<td><form:input path="department" required="yes"/></td></tr>

<tr><td><b><i>Desigation</i></b></td>
<td><form:input path="designation" required="yes"/></td></tr>

<tr><td><b><i>Status</i></b></td>
<td><form:input path="status"   /></td></tr>

<tr><td><b><i>Password</i></b></td>
<td><form:password  path="password" required="yes"/></td></tr>

<tr><td><b><i>Picture</i></b></td>
<td><input type="file" name="pic" required="yes"/></td></tr>

</table><br><br>
<input type="submit"><br><br>
${Message}

</form:form>

</center></body>
</head>


</html>




