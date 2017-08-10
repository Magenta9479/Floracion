$(function() {
		var authFlag=false;
		var authNumber=null;
		
		$(':button[name=buttonauth]').click(function() {
			authFlag=true;
			authNumber=Math.floor(Math.random()*1000000);
			$(this).attr('disabled', 'disabled');
			$(":input[name=email]").prop('readonly','readonly');
			var email=$(":input[name=email]").val();
			var auth={"email":email,"number":authNumber};
			
			
			if(email.length!=0)
			{						
				$.ajax({
					url:"/Floracion/memail",
					type:'POST',
					data:auth,
					success:function()
					{
						alert(email+"(으)로 인증번호가 전송되었습니다. \n지금부터 3분까지만 회원가입이 가능합니다.\n이메일이 오지 않았다면 잠시 기다리시거나 회원가입을 다시 시도해주세요.");
						
						dailyMissionTimer();
						$(':input[name=inputauth]').css('display', 'block');
						$(':input[name=inputauth]').attr('required', true);
					},
					error:function()
					{
						alert("올바르지 않은 이메일 입니다. \n이메일을 다시 입력해주세요.");
					}
				});				
			}
			else
			{
				alert("e-mail을 입력하세요.");
			}
			
			
			
		});

		function dailyMissionTimer() {
			var time = 180;
			var minutes, seconds;

			interval = setInterval(function() {
				minutes = parseInt(time / 60, 10);
				seconds = parseInt(time % 60, 10);

				minutes = minutes < 10 ? "0" + minutes : minutes;
				seconds = seconds < 10 ? "0" + seconds : seconds;

				$(':button[name=buttonauth]').text(minutes + ":" + seconds);

				if (--time < 0) {
					time = 0;
					$(':button[name=signup]').attr('disabled', 'disabled');
					$(':button[name=signup]').text('회원가입 실패');
					$(':button[name=buttonauth]').text("시간 초과");
					clearInterval(interval);
				}

			}, 1000);
		}
		
		$(':button[name=signup]').click(function(){
			
			if(authFlag)
			{
				var radio=$(":input:radio[name=information]:checked").val();
				
				var authNum=$(":input[name=inputauth]");
				var email=$(":input[name=email]");
				var pwd1=$(":input[name=psw]");
				var pwd2=$(":input[name=psw-repeat]");
				var nick=$(":input[name=nick]");							
				var phone=$(":input[name=phone]");
				
				var member={"radio":radio,"email":email.val(),"pwd1":pwd1.val(),"nick":nick.val(),"phone":phone.val()};
						
				if(!email.val()) email.css("border-color","red");
				else email.css("border-color","#ccc");
				
				
				if(!(authNum.val()&&authNum.val()==authNumber)) authNum.css("border-color","red");
				else authNum.css("border-color","#ccc");
				
				if(!pwd1.val()) pwd1.css("border-color","red");
				else pwd1.css("border-color","#ccc");
				
				if(!(pwd2.val()&&pwd1.val()==pwd2.val())) pwd2.css("border-color","red");
				else pwd2.css("border-color","#ccc");

				if(!nick.val()) nick.css("border-color","red");
				else nick.css("border-color","#ccc");
							
				if(!phone.val()) phone.css("border-color","red");
				else phone.css("border-color","#ccc");
				
				if(email.val()&&pwd1.val()&&pwd2.val()&&nick.val()&&phone.val()&&pwd1.val()===pwd2.val()&&authNum.val()&&authNum.val()==authNumber)
				{
					$.ajax({
						url:"/Floracion/minsert",
						type:'POST',
						data:member,
						dataType:"text",
						success:function(isFail)
						{		
							if(isFail==-1)
							{
								alert("가입한 이메일이 존재합니다.");
							}
							else
							{
								window.location.href="/Floracion/views/Member/memberCate.jsp";
							}
						},
						error:function(isFail)
						{
							alert("ERROR!!");									
						}
					});
				}
			}
			else
			{
				alert("이메일 인증이 필요합니다.");
			}
		}); 
	});