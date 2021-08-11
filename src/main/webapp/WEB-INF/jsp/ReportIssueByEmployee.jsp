<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form"  uri="http://java.sun.com/jsp/jstl/core" %>    
        <%@ page import="com.nis.model.Admin" %>    
    
<!DOCTYPE html>
<html>
<head><style>.button {
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
}</style>
<meta charset="ISO-8859-1">
<% Admin A=(Admin)(session.getAttribute("SES_ADMIN"));%>

<title>Reoprt Issue By Employee</title>

<center>
<table border='1'>
<div class='button'>Report Employee Wise and Product Wise</div>
<tr><th>Transaction<br>Id</th><th>Employee<br>Id</th><th>Issue<br>Date</th><th>Issue<br>To</th><th>Product<br>ID</th><th>Quantity<br>Issue</th><th>Remark</tr>


 <form:forEach items="${issue}" var="I">
 <tr><td>${I.transactionid}</td><td>${I.employeeid}</td><td>${I.issuedate}</td><td>${I.issueto}</td><td>${I.productid}</td><td>${I.qtyissue}<td>${I.remark}</td></tr>

 </form:forEach>
 </table>
 </center>
</head>
<body>

</body>
</html>