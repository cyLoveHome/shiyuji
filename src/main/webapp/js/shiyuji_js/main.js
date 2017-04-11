$(function(){

	
		});

function focusUser(uId,fId){
	var isFocus = $("#focus"+fId).html();
	console.debug(isFocus);
	console.debug(fId);
	$.post(
			"http://localhost:8080/shiyuji/friend/addORdeleteFriend",
			{"uId":uId,"fId":fId},
			function(data){
				if(isFocus == "关注" && data=="true"){
					$("#focus"+fId).html("已关注");
				}else if(isFocus == "已关注" && data=="true"){
					$("#focus"+fId).html("关注");
				}
			}
	);
}


function addQuestion(uId){
	$("#replace").empty();
	var str = "<div class='col-md-12' style='margin-top: 35px;margin-bottom: 20px'>";
	str += "<input type='text' placeholder='有什么问题，快在这里发布吧!' class='queTitle' id='queTitle'/>";
	str += "<form role='form'>";
	str += "<div class='form-group'>";
	str += "<span class='bg'></span>";
	str += "<textarea class='form-control textInfo' rows='8' id='queInfo' placeholder='这个问题是否还要相关描述信息，写在这里（选填）'></textarea>";
	str += "</div>";
	str += "</form>";
	str +="<a class='btn' style='margin-left: 2px;' onclick='publishQue(\""+uId+"\");'>发布</a>";
	str += "</div>";
	$("#replace").append(str);
};

function publishQue(uId){
	var qTitle = $("#queTitle").val();
	var qInfo = $("#queInfo").val();
	$.post(
			"http://localhost:8080/shiyuji/question/addQue",
			{"uId":uId,"qTitle":qTitle,"qInfo":qInfo},
			function(data){
				if(data=="false"){
					alert("提问失败");
				}else if(data="null"){
					alert("获取失败，请刷新");
				}else{
					var arr = eval(data);
						var str = "<div class='col-md-12' style='margin-top: 35px;margin-bottom: 20px'>";
						str += "<div class='row'>";
						str += "<div class='col-md-8'>";
						str += "<span id='title'>厨房问答</span>&nbsp;&nbsp;&nbsp;&nbsp;";
						str += "<a href='' class='link'>全部</a>";
						str += "</div>";
						str += "<div class='col-md-4 text-right'>";
						str += "<a class='link' onclick='addQuestion('${user.uId}');'>提问题</a>";
						str += "</div>";
						str += "</div>";
						for(var i = 0;i<arr.length;i++){
							var question = arr[i];
							str += "<div class='row question_style'>";
							str += "<div class='col-md-8'>";
							str += "<a href='' class='link'>"+question.qTitle+"</a>";
							str += "</div>";
							str += "<div class='col-md-4 text-right'>";
							str += "<span id='answer'>"+question.answerNum+" 回答</span>";
							str += "</div>";
							str += "</div>";
					}
				}
			}
	);
}
	

