$(function(){
				$(".head_pic").mousemove(function(){
					$(".drop_border").css("display","block");
				});
				$(".head_pic").mouseout(function(){
					$(".drop_border").css("display","none");
				});
			});