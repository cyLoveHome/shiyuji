$(function(){

	
		});

function kitchen(type,uId,uName){
	$(".kitInfo").empty();
	if(type==3){
		$.post(
				"http://localhost:8080/shiyuji/menus/menusList",
				{"uId":uId},
				function(data){
					var str = "<div class='row' style='margin-bottom: 40px;'>";
					str += "<div class='col-md-12 col-xs-12'>";
            		str += "<a id='selectOne' style='color:#909090;font-size:20px;'>"+uName+" 创建的菜单</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;";
            		str += "<a id='selectTwo' class='link' style='font-size:20px;' onclick='findOther(\""+uId+"\",\""+uName+"\");'>"+uName+" 收藏的菜单</a>";
            		str += "<a class='link pull-right' data-toggle='modal' data-target='#Modal1'>+ 创建一个菜单</a>";
            		str += "<div class='modal fade' id='Modal1' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' aria-hidden='true'>";
            		str += "<div class='modal-dialog'>";
            		str += "<div class='modal-content'>";
            		str += "<div class='modal-header'>";
            		str += "<button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>";
            		str += "<h3 class='modal-title' id='myModalLabel'>创建一个新菜单</h3>";
            		str += "</div>";
            		str += "<div class='modal-body' id='addResult'>";
            		str += "<h4>菜单标题：</h4><input type='text' placeholder='  快创建你的新菜单吧！' class='queTitle' id='msTitle'/><br>";
            		str += "<h4>描述：</h4><textarea class='form-control textInfo' rows='8' id='msInfo'></textarea>";
            		str += "</div>";
            		str += "<div class='modal-footer'>";
            		str += "<button type='button' class='btn' onclick='createMenus(\""+uId+"\");'>创建</button>";
            		str += "</div>";
            		str += "</div>";
            		str += "</div>";
            		str += "</div>";
            		str += "</div>";
            		str += "</div>";
            		
					if(data=="false"){
						str += "<div class='menusName'>";
						str += "<div class='row'>";
						str += "<div class='col-md-12 col-xs-12' style='font-size:16px;'>还没有创建菜单，快去创建吧！</div></div>";
						str += "<hr>";
						str += "</div>";
						$(".kitInfo").append(str);
					}else{
						var arr = eval("("+data+")");
						str += "<div class='menusName'>";
						for(var i = 0;i<arr.length;i++){
							var menus = arr[i];
							str += "<div class='row' style='margin-bottom:10px;'>";
							str += "<div class='col-md-12 col-xs-12'>";
							str += "<a class='link' onclick='moreMenu('"+menus.msId+"');'>"+menus.msName+"</a>";
							str += "<hr>";
							str += "</div>";
							str += "</div>";
					}
						str += "</div>";
						$(".kitInfo").append(str);
				}
			}
		);
	}
	
};

function findOther(uId,uName){
	console.debug("方法名findOther:"+uId);
	$(".menusName").empty();
	$.post(
			"http://localhost:8080/shiyuji/menus/menusOtherList",
			{"uId":uId},
			function(data){
				var str = ""; 
				if(data=="false"){
					str += "<div class='row'>";
					str += "<div class='col-md-12 col-xs-12' style='font-size:16px;'>还没有收藏菜单，快去收藏吧！</div></div>";
					str += "<hr>";
					$(".menusName").append(str);
				}else{
					var arr = eval("("+data+")");
					for(var i = 0;i<arr.length;i++){
						var menus = arr[i];
						str += "<div class='row' style='margin-bottom:10px;'>";
						str += "<div class='col-md-12 col-xs-12'>";
						str += "<a class='link' onclick='moreMenu('"+menus.msId+"');'>"+menus.msName+"</a>";
						str += "<hr>";
						str += "</div>";
						str += "</div>";
				}
					$(".menusName").append(str);
			}	
				
		}
	);
};

function createMenus(uId){
	var msTitle = $("#msTitle").val();
	var msInfo = $("#msInfo").val();
	$.post(
			"http://localhost:8080/shiyuji/menus/addMenus",
			{"uId":uId,"msTitle":msTitle,"msInfo":msInfo},
			function(data){
				if(data!="false"){
					location.href = "http://localhost:8080/shiyuji/menus/selectOne/"+data;
				}
			}
			
	);
};

	

