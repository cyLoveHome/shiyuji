$(function(){
	
		});

function findUser(uId){
	var info = $("#findUser").val();
	console.debug(info);
	$.post(
			"http://localhost:8080/shiyuji/user/select/name",
			{"info":info},
			function(data){
				console.debug(data);
				var arr = eval(data);
				$("#kitchenFriends").empty();
				for(var i = 0;i<arr.length;i++){
					var user = arr[i];
					console.debug(user.uName);
					var str = "<div class='col-md-6 col-xs-6'>";
					str += "<div class='row users'>";
					str += "<div class='col-md-3'>";
					str += "<img src='http://localhost:8080/shiyuji/img/"+user.headPic+"' class='center-block img-circle img-responsive'>";
					str += "</div>";
					str += "<div class='col-md-6'>";
					str += "<div class='row user' style='margin-top: 4px;'>";
					str += "<div class='col-md-12 user_name' id='shicai_link'>"+user.uName+"</div>";
					str += "</div>";
					str += "<div class'row user'>";
					str += "<div class='col-md-12 user_info'>"+user.focusNum+"关注</div>";
					str += "</div>";
					str += "<div class='row'>";
					str += "<div class='col-md-12 user_info'>"+user.menuNum+"个菜谱&nbsp;&nbsp;&nbsp;273个作品</div>";
					str += "</div>";
					str += "</div>";
				    str += "<div class='col-md-3'>";
					if(user.isFriend == "1"){
						str += "<div class='btn' id='focus' onclick='focusUser('"+uId+"','"+user.uId+"')'>已关注</div>";
					}else if(user.isFriend == "0"){
						str += "<div class='btn' id='focus' onclick='focusUser('"+uId+"','"+user.uId+"')'>关注</div>";
					}
					str += "</div>";
					str += "</div>";
					str += "</div>";
					console.debug(str);
					$("#kitchenFriends").append(str);
				}
			}
	);
}