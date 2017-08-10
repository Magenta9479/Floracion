$(function(){	
		
		$(':button[name=login]').click(function(){	
			var radio=$(":input:radio[name=information]:checked").val();
			var email=$(":input[name=email]");
			var pwd=$(":input[name=pwd]");
			
			if(!email.val()) email.css("border-color","red");
			else email.css("border-color","#ccc");			
			
			if(!pwd.val()) pwd.css("border-color","red");
			else pwd.css("border-color","#ccc");
			
			if(email.val()&&pwd.val())
			{
				window.location.href="/Floracion/mlogin?radio="+radio+"&email="+email.val()+"&pwd="+pwd.val();
			}
		});
	});