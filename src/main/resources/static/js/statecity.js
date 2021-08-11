$(document).ready(function(){
	
  $.get("/FetchState",function(data){
	  $('#statename').append($('<option>').text('-State-'))
	    $('#cityname').append($('<option>').text('-City-'))
   $.each(data,function(i,item){
	 $('#statename').append($('<option>').text(item.statename))  
   })	  
   })
 $('#statename').change(function(){  
 $('#cityname').empty();
 $('#cityname').append($('<option>').text('-City-'))
 
 $.get("/FetchCity",{ajax:true,sn:$('#statename').val()},function(data){	
 $.each(data,function(i,item){
	 $('#cityname').append($('<option>').text(item.cityname))  
	 
 })	
   
 
 })
})

})