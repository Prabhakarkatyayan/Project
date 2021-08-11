$(document).ready(function(){
	$.get("/ProductList",function(data){
		  
		    $('#productid').append($('<option>').text('-Product-'))
	   $.each(data,function(i,item){
		 $('#productid').append($('<option>').text(item.productname).val(item.productid))  
	   })	  
	   })
	
	$("#productid").change(function(){
		 
		$.get("/SearchByProductId",{ajax:true,pid:$('#productid').val()},function(data){
			
		 $('#result').html("<font color='green'><b>Current Stock:"+data[0].productstock+"<b></font>")	
			
		})
		
		
	})
	
})
/**
 * 
 */