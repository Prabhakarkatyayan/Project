<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<style>
#btn{
padding: 4px;
}
</style>
<meta charset="ISO-8859-1">
<title><u><h3>Product Edit Delete</h3></u></title>
<script src='http://localhost:9000/js/jquery-3.4.1.min.js'></script>

</head>
<body>
<table>
<tr><td>
<form:form method='GET' action="/EditDeleteProduct" modelAttribute="product">
<table>
<caption><u><h3>Product Edit Delete</h3></u></caption>
<form:hidden path="employeeid"/>
<form:hidden path="productid"/>
<form:hidden path="picture"/>
<tr><td><b><i>Employee Name</i></b></td>
<td><form:input path="productname"/></td></tr>

<tr><td><b><i>Product Batch no</i></b></td>
<td><form:input path="batchno"/></td></tr>

<tr><td><b><i>Product rate</i></b></td>
<td><form:input path="productrate"/></td></tr>

<tr><td><b><i>Product Stock</i></b></td>
<td><form:input path="productstock"/></td></tr>


<tr><td><center><input type="submit" value='Edit' name='btn' /></center></td>
<td><center><input type="submit" value="Delete" name="btn"/></center></td></tr>


</table>
</form:form>
</td>
<td>
<form:form action='/UpdateProductImage'  method='POST' enctype='multipart/form-data' modelAttribute='product'>
<form:hidden path="employeeid"/>
<form:hidden path="productid"/>
<form:hidden path="picture"/>
<center><img width = '240' height='240' src="/images/${product.picture}" style="border-radius:4px;" ></center>
<br><table><tr><td><b>Select<br>Picture</b></td><td><input type='file' name="pic" required></td></tr></table>
<center><button type="submit">Update picture</button></center>
</form:form>
</td></tr></table>
</body>
</html>