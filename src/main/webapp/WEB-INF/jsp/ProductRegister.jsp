<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.nis.model.Employee" %> 
 
<!DOCTYPE html>
<html>
<head><style>
.select {
  
  border: none;
  border-radius: 4px;
  background-color: #f1f1f1;
}
.button {
 width: 1030px;
  height: 12px;
  padding: 20px;

  font: bold 17px Arial;
  text-decoration: ;
  background-color:orange;
  color: #333333;
    border-top: 1px solid #CCCCCC;
  border-right: 1px solid #333333;
  border-bottom: 1px solid #333333;
  border-left: 1px solid #CCCCCC;
}</style>
<meta charset="ISO-8859-1">
<title>Product Registration</title>
 <% Employee E=(Employee)(session.getAttribute("SES_EMPLOYEE")); %>

<style> 
input[type=text] {
  width: 100%;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  background-color: white;
  background-image: url('searchicon.png');
  background-position: 10px 10px; 
  background-repeat: no-repeat;
  padding: 12px 20px 12px 40px;
}
</style>
</head><body>
<center>
<form:form method='POST' action="/ProductSubmit" enctype='multipart/form-data' modelAttribute="product">
<table >
<div class='button'>Product Registration</div><br><br>
<tr><td><b><i>Employee ID:</i></b></td>
<td><form:input path="employeeid" value='<%=E.getEmployeeid() %>'/></td></tr>
<tr><td><b><i>Product Name</i></b></td>
<td><form:input path="productname" pattern="[A-Z a-z]+" title ='Only Alphabets are Allowed' required="yes"/></td></tr>


<tr><td><b><i>Batch no:</i></b></td>
<td><form:input path="batchno" required="yes"/></td></tr>

<tr><td><b><i>Product Rate</i></b></td>
<td><form:input path="productrate" pattern="[0-9]+{.}" title ='Enter Valid Input ' required="yes"/></td></tr>

<tr><td><b><i>Product Stock</i></b></td>
<td><form:input path="productstock"  pattern="[0-9]+" title ='Only Numbers are Allowed' required="yes"/></td></tr>

<tr><td><b><i>Picture</i></b></td>
<td><input type="file" name="pic" required="yes"/></td></tr>

<tr><td><form:button type="submit">Submit</form:button></td>
<td><form:button type="reset">Reset</form:button></td></tr>


</table>
${msg}
</form:form>
</center></body>
</html>