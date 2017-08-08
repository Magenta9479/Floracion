var clickButton=0;

$(function(){			
		$(':button[name=login]').click(function(){			
			if(clickButton<3)
			{
				clickButton=clickButton+1;
				var radio=$(":input:radio[name=information]:checked").val();
				var email=$(":input[name=email]");
				var pwd=$(":input[name=pwd]");
				console.log(radio+"!"+email+"!"+pwd);
				
				if(!email.val()) email.css("border-color","red");
				else email.css("border-color","#ccc");			
				
				if(!pwd.val()) pwd.css("border-color","red");
				else pwd.css("border-color","#ccc");
				console.log(email.val()+"!!"+pwd.val());
				if(email.val()&&pwd.val())
				{
					console.log("들어오나");
					window.location.href="/Floracion/mlogin?radio="+radio+"&email="+email.val()+"&pwd="+pwd.val();
				}			
				
			}
			else
			{
				alert("로그인 3회 실패!");
				window.location.href="/Floracion/findInfo.jsp";	
			}
		});
	});