$(function() {
		var authFlag=false;
		var authNumber=null;
		
		$(':button[name=buttonauth]').click(function() {
			$(this).attr('disabled','disabled');
			authFlag=true;
			authNumber=Math.floor(Math.random()*1000000);
			
			var email=$(":input[name=findemail]").val();
			var auth={"email":email,"number":authNumber};
			
			if(email.length!=0)
			{						
				$.ajax({
					url:"/Floracion/memail",
					type:'POST',
					data:auth,
					success:function()
					{
						alert(email+"(으)로 인증번호가 전송되었습니다. \n지금부터 3분까지만 정보찾기가 가능합니다.\n이메일이 오지 않았다면 잠시 기다리시거나 정보찾기를 다시 시도해주세요.");
						dailyMissionTimer();
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
					$(':button[name=findMember]').attr('disabled', 'disabled');
					$(':button[name=findMember]').text('정보찾기 실패');
					$(':button[name=buttonauth]').text("시간 초과");
					clearInterval(interval);
				}

			}, 1000);
		}
		
		$(':button[name=findMember]').click(function(){
			var radio=$(":input:radio[name=information]:checked").val();
			var email=$(":input[name=findemail]").val();
			var auth=$(":input[name=inputauth]").val();
			
			if(auth==authNumber)
			{
				window.location.href="/Floracion/mfind?radio="+radio+"&email="+email;
			}
			else
			{
				alert("인증번호를 확인해주세요.");
			}
		});
		
		$(':button[name=re]').click(function(){
			window.locaion.href="/Floracion/main.jsp";
		});
	});