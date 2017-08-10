$(function() {
		$('button[name=cancle]').click(function()
				{
					location.href="/Floracion/pmain?num=1";
				});
		
		$('button[name=edit]').click(function()
				{
					var psw=$('input[name=psw]').val();
					var pswRepeat=$('input[name=psw-repeat]').val();
					var nick=$('input[name=nick]');
					var phone=$('input[name=phone]');
					
					if(psw==pswRepeat)
					{						
						window.location.href="/Floracion/medit?radio="+$('input[name=radio]').val()
						+"&email="+$('input[name=email]').val()
						+"&psw="+psw
						+"&nick="+(nick.val()?nick.val():nick.attr('placeholder'))
						+"&phone="+(phone.val()?phone.val():phone.attr('placeholder'));
						alert("정보수정 완료!\n다시 로그인해주세요.");
					}
					else
					{
						alert("비밀번호와 비밀번호 확인을 다시 확인해주세요.");
					}
					
				});
		$('button[name=changeCate]').click(function()
				{
					location.href="/Floracion/views/Member/memberCate.jsp";
				});
		
		$('button[name=leaveMember]').click(function()
				{
					location.href="/Floracion/mleave";
				});
		
		$('button[name=cancleLeave]').click(function()
				{
					location.href="/Floracion/mcancleleave";
				});
		
	});