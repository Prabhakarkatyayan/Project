<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.nis.model.Employee" %>    
<!DOCTYPE html>
<html>
<head><style>
  #link { color: white; }
 .div1 {
  box-sizing: border-box;
  background-color: #1b1b5f;
  padding: 15px;
 text:white;
  box-align: baseline;
 width: 1340px;
  height: 60px;
  border: 1px solid blue   ;
  border-radius: 12px;
  color: white;
}

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

</style>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
<% Employee E=(Employee)(session.getAttribute("SES_EMPLOYEE"));
			  String ltime=session.getAttribute("LTIME").toString();
%>
<div class='div1'> &nbsp;&nbsp;&nbsp;&nbsp;<img src='/images/<%=E.getPicture() %>' width='30' height='30'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><%=E.getEmployeename() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id='link' href='EmployeeHomePage'>Home Page </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= ltime %></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><br>
<table>
<tr>
<td valign='top'>
 <a class='button' href='ProductRegister' target="mw">Add Product</a><br><br>
 <a class='button' href='IssueRegister' target="mw">Issue Product</a><br><br>
 <a class='button' href='PurchaseRegister' target="mw">Purchase Product</a><br><br>
  <a class='button' href='DisplayAllProducts' target="mw">Display All Product</a><br><br>
  <a class='button' href='EmployeeProfile?id=<%=E.getEmployeeid() %>' target="mw">My Profile</a><br><br>
   <a class='button' href='Logout' >Logout</a><br><br>
 
 <br>
</td>
<td bgcolor=fafad2>
<iframe frameborder="0" width="1130" height="800" name="mw"></iframe>

</td>
</tr>
</table>

</body>
</html>