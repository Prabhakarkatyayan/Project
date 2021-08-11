<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>
<%@ page import="com.nis.model.Employee" %> 
<% Employee E=(Employee)(session.getAttribute("SES_EMPLOYEE")); %>
<!DOCTYPE html>
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
<title>Purchase Register</title>
<script src="http://localhost:8080/js/jquery-2.2.1.min.js"></script>
<script src="http://localhost:8080/js/employee.js"></script>
<script src="http://localhost:8080/js/product.js"></script>
</head>
<body>
<center>
<form:form action="/PurchaseSubmit" method="POST" modelAttribute="purchase">
<table>
<div class='button'>Purchase Register</div><br><br>
<tr><td><b><i>Employee Id</i></b></td><td><form:input path="employeeid" value='<%=E.getEmployeeid() %>'/></td></tr>
<tr><td><b><i>Product Id</i></b></td><td><form:select path="productid" class='select' required="yes" id="productid"></form:select></td></tr>
<tr><td><b><i>Purchase By Employee</i></b></td><td><form:input path="issuebyemployee" value='<%=E.getEmployeename() %>'/></td></tr>
<tr><td><b><i>Purchase Date</i></b></td><td><form:input type="date" required="yes" path="purchasedate"/></td></tr>
<tr><td><b><i>Quantity Purchase</i></b></td><td><form:input path="qtypurchase" pattern="[0-9]+" required="yes" title ='Only Numbers are Allowed'/></td></tr>
<tr><td><b><i>Remark:</i></b></td>
<td><form:textarea path="remark" rows='4' cols='30'/> </td></tr>
</table>
<input type="submit"/>
</form:form>
${Message}
</center>
</body>
</html>