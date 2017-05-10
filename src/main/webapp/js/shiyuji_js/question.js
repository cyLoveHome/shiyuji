$(function(){
	
		});

function findQuestion(){
	var info = $("#findQuestion").val();
	$("#findQuestion").empty();
	console.debug(info);
	$.post(
			"http://localhost:8080/shiyuji/question/selectSome",
			{"info":info},
			function(data){
				console.debug(data);
				var arr = eval(data);
				$("#queBody").empty();
				for(var i = 0;i<arr.length;i++){
					var userAndQue = arr[i];
					var user = eval(userAndQue.us);
					var que = eval(userAndQue.que);
					var str = "<div class='row question_style' style='margin-top: 20px;'>";
					str += "<div class='col-md-8'>";
					str += "<a href='http://localhost:8080/shiyuji/question/one/"+que.qId+"' class='qLink qTitle'>"+que.qTitle+"</a>";
					str += "</div>";
					str += "<div class='col-md-4 text-right'>";
					str += "<a href='http://localhost:8080/shiyuji/question/one/"+que.qId+"' class='answer qLink'>"+que.answerNum+" 回答</a>";
					str += "</div>";
					str += "</div>";
					str += "<div class='row'>";
					str += "<div class='col-md-12'>";
					str += "<a href='http://localhost:8080/shiyuji/kitchen/myself/"+user.uId+"' class='qLink qName'>"+user.uName+"</a>";
					str += "</div>";
					str += "</div>";
				    str += "<hr/>";
					$("#queBody").append(str);
				}
			}
	);
}