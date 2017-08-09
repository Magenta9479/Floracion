	var cate=new Array();
	var count=0;
	
	$(function(){
		$(function(){
			$("#sub").click(function(){
				$.ajax({
			        url:"/Floracion/mcate",
			        type:'post',
			        data: {'cate1':cate[0], 'cate2':cate[1], 'cate3':cate[2]},
			        success:function(data)
			        {
			        	alert("카테고리 설정이 완료되었습니다.\nFloracion을 탐험해보세요!!!");
			        	window.location.href="/Floracion/main.jsp";
			        	
			        },
			        error:function()
			        {
			        	alert("에러!!!");
			        }
			        
				});
			});
			$("td[name='1']").on('click',function(){
				if($(this).is('.gameche')===true){
				$(this).css('opacity',0.5).toggleClass('gameche');
				count=count-1;
				cate[count]=null;
				}else{
				if(count<3){
					$(this).toggleClass('gameche').css('opacity',1);
					cate[count]=$(this).text().trim();
					count=count+1;
				}
			}				
			});
			
			$('#re').click(function(){
				alert("카테고리는 언제든 내정보 수정에서 변경 가능합니다.");
				window.location.href="/Floracion/main.jsp";
			});
			
		});	
	
	});
	
	
	