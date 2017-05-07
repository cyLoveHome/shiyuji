	 $(function(){
				
				
			});
	 
	
		function clickCollect(msId,uId){
			var info = $("#isColl").html();
			$.post(
					"http://localhost:8080/shiyuji/menus/addORdeleteCollect",
					{"msId":msId,"uId":uId},
					function(data){
						var arr = data.split("|");
						if(info=="已收藏" && arr[0]=="true"){
							$(".menusAll").html(arr[1]+ "收藏");
							$("#isColl").html("收藏");
						}else if(info=="收藏" && arr[0]=="true"){
							$(".menusAll").html(arr[1]+ "收藏");
							$("#isColl").html("已收藏");
						}
					}
			);
		};
		
