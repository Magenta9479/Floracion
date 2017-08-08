$(function() {
		$('button[name=cancle]').click(function()
				{
					location.href="/Floracion/main.jsp";
				});
		
		$('button[name=edit]').click(function()
				{
					var psw=$('input[name=psw]').val();
					var pswRepeat=$('input[name=psw-repeat]').val();
					
					if(psw==pswRepeat)
					{						
						window.location.href="/Floracion/medit?radio="+$('input[name=radio]').val()+"&email="+$('input[name=email]').val()+"&psw="+$('input[name=psw]').val()+"&nick="+$('input[name=nick]').val()+"&phone="+$('input[name=phone]').val();
					}
					else
					{
						alert("암호와 암호 확인을 다시 확인해주세요.");
					}
					
				});
		$('button[name=changeCate]').click(function()
				{
					location.href="/Floracion/views/Member/memberCate.jsp";
				});
	});