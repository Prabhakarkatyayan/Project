<%@ page  language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
            <%@ page import="com.nis.model.Admin" %>    
    
<!DOCTYPE html>
<script src='http://localhost:8080/js/jquery-2.2.1.min.js'></script>
<script src='http://localhost:8080/js/employee.js'></script>
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
}</style>
<title>Report Employee Wise Product Wise</title>

<meta charset="ISO-8859-1">
<% Admin A=(Admin)(session.getAttribute("SES_ADMIN"));%>
</head>
<body>
<center>
<div class='button'>Issue Report Employee Wise Product Wise</div><br><br>
 
<table cellspacing='20'>
<tr><td><b><i>Select Employee:</i></b></td>
<td><select class='select' name="employeeid" id='issueto'></select></td>
<td><input type="button" id='btn' value='Submit'></td></tr>
</table>
<br>
<div id='result'>See Here....</div>
 
</center>
</head>


</body>
</html>