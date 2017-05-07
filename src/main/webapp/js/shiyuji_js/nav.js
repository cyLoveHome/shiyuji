$(function(){
	$(".head_pic").click(function(){
		if($(".drop_border").css("display")=="none"){
			$(".drop_border").css("display","block");
		}else{
			$(".drop_border").css("display","none");
		}
	});
			});

function out(){
	$(".drop_border").fadeOut();
	var info = $("#suggResult").html();
	if(info=="意见反馈成功"||info=="意见反馈失败"){
		$("#suggResult").empty();
		var str = "<h4>请输入您的建议或者您的反馈：</h4><textarea class='form-control textInfo' rows='8' id='sInfo'></textarea>";
		$("#suggResult").append(str);
	}
	
};

function submitSuggest() {
	var sInfo = $("#sInfo").val();
	console.debug(sInfo);
	var info = $("#suggResult").html();
	if(info=="意见反馈成功"){
		alert("意见已成功提交");
	}else if(info=="意见反馈失败"){
		alert("请重新提交");
	}else if(sInfo==""){
		alert("意见不能为空");
	}else{
		$.post(
				"http://localhost:8080/shiyuji/suggest/addSuggest",
				{"sInfo":sInfo},
				function(data){
					console.debug(data);
					if(data=="true"){
						$("#suggResult").html("意见反馈成功");
					}else{
						$("#reportInfo").html("意见反馈失败");
					}
				}
		);
	}
	
};