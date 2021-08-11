<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<script src='http://localhost:8080/js/jquery-2.2.1.min.js'></script>
<script src='http://localhost:8080/js/employee.js'></script>
<script src='http://localhost:8080/js/product.js'></script>
<html>
<head>
<style>
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
<title>Issue Register</title>

<%@ page import="com.nis.model.Employee" %> 
<% Employee E=(Employee)(session.getAttribute("SES_EMPLOYEE")); %>

</head>
<body>
<center>
<form:form action="/IssueSubmit" method="POST"  modelAttribute='issue'>
<table>
<div class='button'>Issue Register</div><br><br>
<tr><td><b><i>Employee Id:</i></b></td>
<td><form:input path="employeeid" value='<%=E.getEmployeeid() %>'/> </td></tr>

<tr><td><b><i>Product Id:</i></b></td>
<td><form:select id="productid" path="productid" class='select' required="yes" pattern="[0-9]+" title ='Only Numbers are Allowed' ></form:select></td></tr>

<tr><td><b><i>Issue To Employee:</i></b></td>
<td><form:select path="issueto" id='issueto' class='select'></form:select></td></tr>

<tr><td><b><i>Issue Date:</i></b></td>
<td><form:input path="issuedate" required="yes"  type="date"/></td></tr>

<tr><td><b><i>Quantity Issue:</i></b></td>
<td><form:input path="qtyissue" required="yes" pattern="[0-9]+" title ='Only Numbers are Allowed'/> <span id="result"></span></td></tr>

<tr><td><b><i>Remark:</i></b></td>
<td><form:textarea path="remark" rows='4' cols='30'/> </td></tr>
</table>
<input type='Submit'>
</form:form></center>
${Message}
</body>
</html>





