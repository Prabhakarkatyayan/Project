$(document).ready(function(){
	$.get("/ListEmployee",function(data){
		  
		    $('#purchaseby').append($('<option>').text('-Employee-'))
	   $.each(data,function(i,item){
		 $('#purchaseby').append($('<option>').text(item.employeename+"  ["+ item.employeeid+"]").val(item.employeeid))  
	   })	  
	   })

	   $('#btn').click(function(){ 
		   
$.get("/ReportPurchaseByEmployees",{ajax:true,employeeid:$('#purchaseby').val()},function(data){
				  
	var k='' 
		k+="<style> #product{ font-family:Trebuchet MS, Arial, Helvetica, sans-serif;  border-collapse: collapse; width: 100%;} #product td, #product th {border: 1px solid #ddd;padding: 8px;}#product tr:nth-child(even){background-color: #f2f2f2;}#product tr:hover {background-color: #ddd;}#product th {  padding-top: 12px;  padding-bottom: 12px;  text-align: left;background-color: #4CAF50;  color: white;}</style>";
	k+="<table id='product'>";
	k+="<tr><th>Transaction Id</th><th>Employee Id</th><th>Product</th><th>Purchase Date</th><th>Qty Purchase</th><th>Purchase By</th></tr>";
    $.each(data,function(i,item){
    k+="<tr><td>"+item[0].transactionid+"</td><td>"+item[0].employeeid+"</td><td>["+item[0].productid+"] "+item[1]+"</td><td>"+item[0].purchasedate+"</td><td>"+item[0].qtypurchase+"</td><td>"+item[2]+"</td></tr>";	 
			   })	  
			   k+="</table>";
			    $('#result').html(k)
			   })
	   
	   })
	
	   
	
})
