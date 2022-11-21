$(document).ready(function(){
    	   var allMenus =$('.fixed-sidebar-left').find('a');
    	   $.each(allMenus,function(index,val){
    		   var url = location.pathname;
    	       var hrefVal = url.split("/")[1];
				if(hrefVal ==="getAllClientHeader"){
					hrefVal ="customerDetails";
				}
		    	if(hrefVal!="" && val.getAttribute('href') == hrefVal){
    	    	   	val.setAttribute('class','active');
    	    	   	if(val.getAttribute('data-toggle') == null){
    	    	   		val.closest('li').setAttribute('class','collapse-level-1 collapse');
    	    	   		//val.closest('ul > li').firstElementChild.setAttribute('class','active');
    	    	   	}
    	       }else if(hrefVal==""){
    	    	   val.setAttribute('class','');
    	    	   $("#taskAnchor").addClass("active");
    	       }
    	       else{
    	    	   val.setAttribute('class','');
    	       }
    	   });
       });