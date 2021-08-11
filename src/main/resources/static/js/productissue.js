$(document).ready(function(){
	$.get("/ProductList",function(data){
		  
		    $('#issueto').append($('<option>').text('-Product-'))
	   $.each(data,function(i,item){
		 $('#issueto').append($('<option>').text(item.productname).val(item.productid))  
	   })	  
	   })
	   
	   $('#btn').click(function(){ 
		   
		   $.get("/ReportIssueByProducts",{ajax:true,productid:$('#issueto').val()},function(data){
		   				  
		   	var k='' 
				k+="<style> #product{ font-family:Trebuchet MS, Arial, Helvetica, sans-serif;  border-collapse: collapse ;width: 100%;} #product td, #product th {border: 1px solid #ddd;padding: 8px;}#product tr:nth-child(even){background-color: #f2f2f2;}#product tr:hover {background-color: #ddd;}#product th {  padding-top: 12px;  padding-bottom: 12px;  text-align: left;background-color: #4CAF50;  color: white;}</style>";

		   	k+="<table id='product'>";
		   	k+="<tr><th>Transaction Id</th><th>Product</th><th>Issue Date</th><th>Qty Issue</th><th>Issued By</th><th>Issued To</th></tr>";
		       $.each(data,function(i,item){
		       k+="<tr><td>"+item[0].transactionid+"</td><td>["+item[0].productid+"] "+item[1]+"</td><td>"+item[0].issuedate+"</td><td>"+item[0].qtyissue+"</td><td>"+item[2]+"</td><td>"+item[3]+"</td></tr>";	 
		   			   })	  
		   			   k+="</table>";
		   			    $('#result').html(k)
		   			   })
		   	   	   })
		   	
		   	  })