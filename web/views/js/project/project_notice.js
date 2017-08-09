$(function() {
	
	$.ajax({
		url : "/Floracion/nlist",
		data : {"page":1},
		type : "post",
		dataType : "json",
		success : function(data){
			//console.log(data);
			var jsonStr = JSON.stringify(data);  //객체를 문자열로 변환
			//console.log(jsonStr);
			var json = JSON.parse(jsonStr); //문자열을 배열 객체로 바꿈			
			
			for(var i in json.list){
				//한글 깨짐을 막기 위해 문자 인코딩 처리한 json 객체의 값은 decodeURIComponent() 로 디코딩 처리함
				 $("#notice").append("<tr><td>"+json.list[i].bcode.substring(2)+"</td><td>"+decodeURIComponent(json.list[i].title)+"</td><td>"+json.list[i].writer+"</td><td>"+json.list[i].ndate+"</td><td>10</td></tr>");
			}			
		},
		error:function(){alert("ERROR");}
	});
	
	$.ajax({
		url : "/Floracion/flist",
		data : {"page":1},
		type : "post",
		dataType : "json",
		success : function(data){
			//console.log(data);
			var jsonStr = JSON.stringify(data);  //객체를 문자열로 변환
			//console.log(jsonStr);
			var json = JSON.parse(jsonStr); //문자열을 배열 객체로 바꿈			
			
			for(var i in json.list){
				//한글 깨짐을 막기 위해 문자 인코딩 처리한 json 객체의 값은 decodeURIComponent() 로 디코딩 처리함
				 $("#fboard").append("<tr><td>"+json.list[i].bcode.substring(2)+"</td><td>"+decodeURIComponent(json.list[i].title)+"</td><td>"+json.list[i].writer+"</td><td>"+json.list[i].ndate+"</td><td>10</td></tr>");
			}			
		},
		error:function(){alert("ERROR");}
	});
	
	
	});