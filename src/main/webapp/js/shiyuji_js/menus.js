$(function(){
	
		});

function findMenus(uId){
	var info = $("#findMenus").val();
	console.debug(info);
	$.post(
			"http://localhost:8080/shiyuji/menus/selectSome",
			{"msName":info,"uId":uId},
			function(data){
				console.debug(data);
				var arr = eval(data);
				$("#menusBody").empty();
				for(var i = 0;i<arr.length;i++){
					var userAndms = arr[i];
					var user = eval(userAndms.u);
					var ms = eval(userAndms.menus);
					var str = "<div class='row question_style' style='margin-top: 20px;'>";
					str += "<div class='col-md-8'>";
					str += "<a href='http://localhost:8080/shiyuji/menus/selectOne/"+ms.msId+"' class='qLink qTitle'>"+ms.msName+"</a>";
					str += "</div>";
					str += "<div class='col-md-4 text-right'>";
					str += "<a href='http://localhost:8080/shiyuji/menus/selectOne/"+ms.msId+"' class='answer qLink'>共有 "+ms.collMenu+" 道菜谱</a>";
					str += "</div>";
					str += "</div>";
					str += "<div class='row'>";
					str += "<div class='col-md-12'>";
					str += "<a href='http://localhost:8080/shiyuji/kitchen/myself/"+user.uId+"' class='qLink qName'>"+user.uName+"</a>";
					str += "</div>";
					str += "</div>";
				    str += "<hr/>";
					$("#menusBody").append(str);
				}
			}
	);
}