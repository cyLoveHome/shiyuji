$(function(){

	
		});
function getMyDate(str){
  	console.debug("start trans "+str);
    var oDate = new Date(str);
    oYear = oDate.getFullYear(); 
    oMonth = oDate.getMonth()+1;  
    oDay = oDate.getDate();
    oHour = oDate.getHours();  
    oMin = oDate.getMinutes();  
    oSen = oDate.getSeconds();  
    oTime = oYear +'-'+ getzf(oMonth) +'-'+ getzf(oDay) +' '+ getzf(oHour) +':'+ getzf(oMin) +':'+getzf(oSen);//最后拼接时间  
    console.debug("year"+oDate);
    return oTime;  
};

function getzf(num){  
    if(parseInt(num) < 10){  
        num = '0'+num;  
    }  
    return num;  
};

function kitchen(type,uId,uName){
	$(".kitInfo").empty();
	if(type==2){
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
	
	if(type==3){
		$.post(
				"http://localhost:8080/shiyuji/createMenu/collMenus/"+uId,
				function(data){
					if(data!="false"){
						var arr = eval(data);
						for(var i = 0;i<arr.length;i++){
							var userAndmenu = arr[i];
							var user = eval(userAndmenu.u);
							var menu = eval(userAndmenu.menu);
							var str = "<div class='col-md-4 col-xs-4'>";
							str += "<div id='line'>";
							str += "<div class='row img_style'>";
							str += "<div class='col-md-12 col-xs-12'>";
							str += "<img src='${pageContext.request.contextPath}/img/收藏1.jpg' class='img-responsive'>";
							str += "</div></div>";
							str += "<div class='row img_style'>";
							str += "<div class='col-md-12 col-xs-12'>";
							str += "<a href='' class='link' style='font-size: 18px;'>"+menu.mName+"</a>";
							str += "</div></div>";
							str += "<div class='row img_style'>";
							str += "<div class='col-md-12 col-xs-12'>";
							str += "<span class='user_info'>"+menu.likeNum+" 赞过 "+menu.menuCollectNum+" 收藏 | <a href='' id='author'>"+user.uName+"</a></span>";
							str += "</div></div></div></div>";
							$(".kitInfo").append(str);
					}
				}
			}
	);
	}
	
	if(type==4){
		$.post(
				"http://localhost:8080/shiyuji/question/myQue",
				{"uId":uId},
				function(data){
					if(data!="false"){
						var arr = eval(data);
						for(var i = 0;i<arr.length;i++){
							var que = arr[i];
							var str = "<div class='row question_style' style='margin-top: 20px;'>";
							str += "<div class='col-md-8'>";
							str += "<a href='http://localhost:8080/shiyuji/question/one/"+que.qId+"' class='qLink qTitle'>"+que.qTitle+"</a>";
							str += "</div>";
							str += "<div class='col-md-4 text-right'>";
							str += "<a href='http://localhost:8080/shiyuji/question/one/"+que.qId+"' class='answer qLink'>"+que.answerNum+" 回答</a>";
							str += "</div>";
							str += "</div>";
						    str += "<hr/>";
						    $(".kitInfo").append(str);
						}
					}
				}
			);
	}
	
	if(type==5){
		$.post(
				"http://localhost:8080/shiyuji/report/reportUser",
				{"uId":uId},
				function(data){
						var str = "<div class='row' style='margin-bottom: 40px;'>";
						str += "<div class='col-md-12 col-xs-12'>";
	            		str += "<a class='link' style='color:#909090;font-size:20px;'>举报的用户详情</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;";
	            		str += "<a class='link' style='font-size:20px;' onclick='reportMenu(\""+uId+"\");'>举报的菜谱详情</a>";
	            		str += "</div";
	            		str += "</div>";
	            		if(data =="false"){
							str += "<div class='rep'>";
							str += "<div class='row' style='margin-top:15px;'>";
							str += "<div class='col-md-12 col-xs-12' style='font-size:16px;'>暂无举报！</div></div>";
							str += "<hr>";
							str += "</div>";
							$(".kitInfo").append(str);
	            		}else{
	            			var arr = eval("("+data+")");
							str += "<div class='rep'>";
							for(var i = 0;i<arr.length;i++){
								var uAndR = arr[i];
								var user = eval(uAndR.u);
								var re = eval(uAndR.ru);
								str += "<div class='row' style='margin-bottom:10px;margin-top:15px;'>";
								str += "<div class='col-md-12 col-xs-12'>";
								str += "于 "+getMyDate(re.reportTime)+" 举报用户 <a class='link' href='http://localhost:8080/shiyuji/createMenu/kitchen/"+user.uId+"'>"+user.uName+"</a> , 举报原因： "+re.cause;
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
	
	if(type==6){
		$.post(
				"http://localhost:8080/shiyuji/suggest/mySugg",
				{"uId":uId},
				function(data){
					if(data!="false"){
						var arr = eval(data);
						var str = "<div class='row question_style' style='margin-top: 20px;'>";
						str += "<div class='col-md-12' id='kitchen_font' style='font-size: 18px;margin-bottom:20px;'>意见内容</div>";
						for(var i = 0;i<arr.length;i++){
							var sugg = arr[i];
							str += "<div class='col-md-12' style='margin-bottom:1px;'>";
							str += "<span class='qLink qTitle'>"+sugg.sInfo+"</span>";
							str += "<hr>";
							str += "</div>";
						}
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

function reportMenu(uId){
	$(".rep").empty();
	$.post(
			"http://localhost:8080/shiyuji/report/reportMenu",
			{"uId":uId},
			function(data){
				var str = ""; 
				if(data=="false"){
					str += "<div class='row' style='margin-top:15px;'>";
					str += "<div class='col-md-12 col-xs-12' style='font-size:16px;'>暂无举报！</div></div>";
					str += "<hr>";
					$(".rep").append(str);
				}else{
					var arr = eval("("+data+")");
					str += "<div class='rep'>";
					for(var i = 0;i<arr.length;i++){
						var uAndR = arr[i];
						var menu = eval(uAndR.m);
						var r = eval(uAndR.r);
						str += "<div class='row' style='margin-bottom:10px;margin-top:15px;'>";
						str += "<div class='col-md-12 col-xs-12'>";
						str += "于 "+getMyDate(r.reportTime)+" 举报菜谱 <a class='link' href='http://localhost:8080/shiyuji/createMenu/selectOne/"+menu.mId+"'>"+menu.mName+"</a> , 举报原因： "+r.cause;
						str += "<hr>";
						str += "</div>";
						str += "</div>";
					}
					str += "</div>";
					$(".rep").append(str);
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


function isReport(ruId,uId){
	$.post(
			"http://localhost:8080/shiyuji/report/selectReportUser",
			{"ruId":mId,"uId":uId},
			function(data){
				console.debug(data);
				if(data=="true"){
					$("#reportInfo").html("举报已提交");
				}
			}
	);
};

function reportIt(ruId,uId){
	var result = $("#reportInfo").html();
	console.debug(result);
	if(result=="举报已提交"){
		alert("您已举报过，不可重复举报");
		return;
	}else{
		var cause = $("input:radio:checked").val();
		if(cause=="其他原因"){
			cause += $("#reportCause").val();
			console.debug(cause);
		}else{
			cause = $("input:radio:checked").val();
			console.debug(cause);
		}
		$.post(
				"http://localhost:8080/shiyuji/report/addReportUser",
				{"ruId":ruId,"uId":uId,"cause":cause},
				function(data){
					console.debug(data);
					if(data=="true"){
						$("#reportInfo").html("举报已提交");
					}else{
						$("#reportInfo").html("举报失败");
					}
				}
		);
	}
};
	

