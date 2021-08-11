<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.nis.model.Admin" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>
</head>

<body>
<style>
  #link { color: white; }
.div1 {
  box-sizing: border-box;
  background-color: #1b1b5f;
  padding: 15px;
 text:white;
box-align: baseline;
 width: 1340px;
  height: 50px;
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
<% Admin A=(Admin)(session.getAttribute("SES_ADMIN"));
			  String ltime=session.getAttribute("LTIME").toString();
%>
<div class="div1"> &nbsp;&nbsp;<b>Admin Navigation</b>&nbsp;&nbsp;&nbsp;<b>[<%=A.getAdminname() %>]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id='link' href='AdminHomePage'>Home Page </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= ltime %></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id='link' href='AdminLogout' target="_blank">Logout</a></div><br>
<table >
<tr>
<td  valign='top'>
<a  href='Employee' target ="mw" class='button'>Add Employee</a><br><br>
<a href='ReportIssueByEmployeeInterfaceJs' class='button' target ="mw">Issue Report Employee Wise[js]</a><br><br>
<a href='ReportIssueByProductInterfaceJs' class='button' target ="mw">Issue Report Product Wise</a><br><br>
<a href='ReportPurchaseByProductInterfaceJs' class='button' target ="mw">Purchase Report Product Wise</a><br><br>
<a href='ReportPurchaseByEmployeeInterfaceJs' class='button' target ="mw">Purchase Report Employee Wise</a><br><br>
  <a href='AllEmployee' class='button' target="mw">Display All Employee</a><br><br>
  <a href='DisplayAllProducts' class='button' target="mw">Display All Product</a><br>



</td>
<td bgcolor=fafad2>
<iframe frameborder="0" width="1030" height="800" name="mw" ></iframe>

</td>
</tr>
</table>
</body>
</html>