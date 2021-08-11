<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form"  uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
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
  
}
</style>
</head>
<body>
<center><div class='button'>All Employees</div><br><br></center>
<table  id='employee'>
<tr><th>Employee Id</th><th>Employee Name</th><th>Address</th><th>Contact</th><th>Designation</th><th>Picture</th><th>Update</tr>


 <form:forEach items="${employees}" var="E">
 <tr><td>${E.employeeid}</td><td>${E.employeename}<br>${E.gender}<br>${E.dob}</td><td>${E.address}<br>${E.state},${E.city}</td><td>${E.mobileno}<br>${E.emailid}</td><td>${E.department}<br>${E.designation}<br>${E.status}</td><td><img src='/images/${E.picture}' width='35' height='35'></td><td><a href='DisplayById?id=${E.employeeid}'>Edit/Delete</a></tr>

 </form:forEach>
</table>
</body>
</html>




