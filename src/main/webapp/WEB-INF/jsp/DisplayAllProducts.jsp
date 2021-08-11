<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri = "http://java.sun.com/jsp/jstl/core"  %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Product Data</title>
<style>
#employee {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#employee td, #employee th {
  border: 1px solid #ddd;
  padding: 8px;
}

#employee tr:nth-child(even){background-color: #f2f2f2;}

#employee tr:hover {background-color: #ddd;}

#employee th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
    border: 1px solid #ddd;
  
}.button {
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
</head>
<body>
<center>
<table id='employee'>
<div class='button'>Products Data</div><br><br>
<tr>
<th>Employee ID</th>
<th>Product ID</th>
<th>Product name</th>
<th>Batchno</th>
<th>Product Rate and Stock</th>
<th>Picture</th>
<th>Edit/Delete</th>
</tr>
<form:forEach items="${products}" var= "P"  >
<tr>
<td>${P.employeeid}</td>
<td>${P.productid}</td>
<td>${P.productname}</td>
<td>${P.batchno}</td>
<td><table>
<tr><td>Rate</td><td>${P.productrate}</td></tr>
<tr><td>Stock</td><td>${P.productstock}</td></tr>
</table></td>
<td><center><img src='/images/${P.picture}' height= '100' width='100'></center></td>
<td><a href='/ProductDisplayById?id=${P.productid}'>Edit/Delete</a></td>
<tr>
</form:forEach>
</table>
</center>
</body>
</html>