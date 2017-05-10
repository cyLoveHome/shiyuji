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
		//补0操作  
		function getzf(num){  
		    if(parseInt(num) < 10){  
		        num = '0'+num;  
		    }  
		    return num;  
		};
	
		function changeTime(time){
			var menuTime=getMyDate(parseInt(time));
			console.debug(menuTime);
			$("#menu_time").html(menuTime);
		};
		
		
		function clickZan(mId,uId){
			$.post(
					"http://localhost:8080/shiyuji/like/addORdeleteLike",
					{"mId":mId,"uId":uId},
					function(data){
						var color = $("#zan").css("color");
						console.debug(color);
						var arr = data.split("|");
						if(color=="rgb(128, 128, 128)" && arr[0]=="true"){
							$("#zan").css("color","#992222");
							$("#isLike").html(arr[1]  +"已赞");
						}else if(color=="rgb(153, 34, 34)" && arr[0]=="true"){
							$("#zan").css("color","gray");
							$("#isLike").html(arr[1]  +"赞");
						}
					}
			);
		};
		
		function clickCollect(mId,uId){
			console.debug("click"+uId);
			var info = $("#coll_info").html();
			console.debug(info);
			$.post(
					"http://localhost:8080/shiyuji/like/addORdeleteCollect",
					{"mId":mId,"uId":uId},
					function(data){
						var arr = data.split("|");
						if(info=="已收藏" && arr[0]=="true"){
							$("#collNum").html(arr[1]);
							$("#coll_info").html("收藏");
						}else if(info=="收藏" && arr[0]=="true"){
							$("#collNum").html(arr[1]);
							$("#coll_info").html("已收藏");
						}
					}
			);
		};
		
		function moreComm(mId){
			$.post(
					"http://localhost:8080/shiyuji/comment/allComments",
					{"mId":mId},
					function(data){
						console.debug(data);
						if(data=="empty"){
							$("#all").append("暂无评论，快去发表吧");
						}else{
							var arr = eval(data);
							$("#all").empty();
							for(var i = 0;i<arr.length;i++){
								var userAndComm = arr[i];
								console.debug(userAndComm);
								var comm = eval(userAndComm.c);
								console.debug(comm);
								var user = eval(userAndComm.u);
								console.debug(user.uName);
								var time = changeTime(comm.commentTime);
								console.debug(time);
								
								var str = "<div class='row' style='margin-bottom: 10px;'>";
								str += "<div class='col-md-1'>";
								str += "<a href=''>";
								str += "<img src='http://localhost:8080/shiyuji/img/"+user.headPic+"' class='img-circle img-responsive' width='30'>";
								str += "</a>";
								str += "</div>";
								str += "<div class='col-md-9 col-xs-9 comment_margin' style='padding-left: 0px;'>";
								str += "<a href='' class='link' class='comment_font'>"+user.uName+"</a>&nbsp;&nbsp;&nbsp;";
								str += "<p style='display: inline-block;' class='comment_font'>"+comm.commentInfo+"</p>";
								str += "</div>";
								str += "<div class='col-md-2 col-xs-2 comment_margin text-right'>";
								str += "<span class='comment_reply'>"+getMyDate(comm.commentTime)+"</span>";
								str += "</div>";
								str += "</div> ";
								str += "<hr> ";
								$("#all").append(str);
							}
						}
					}
			);
		};
		
		function addComm(mId,uId){
			var info = $("#c_info").val();
			$("#c_info").val("");
			$.post(
					"http://localhost:8080/shiyuji/comment/addComment",
					{"mId":mId,"uId":uId,"commInfo":info},
					function(data){
						console.debug("comment rs:"+data);
						var arr = eval("("+data+")");
						console.debug(arr);
						var comm = eval(arr.c);
						console.debug("comment Info："+comm.commentInfo);
						var user = eval(arr.u);
						var str = "<div class='row' style='margin-bottom: 10px;'>";
						str += "<div class='col-md-1'>";
						str += "<a href=''>";
						str += "<img src='http://localhost:8080/shiyuji/img/"+user.headPic+"' class='img-circle img-responsive' width='30'>";
						str += "</a>";
						str += "</div>";
						str += "<div class='col-md-9 col-xs-9 comment_margin' style='padding-left: 0px;'>";
						str += "<a href='' class='link' class='comment_font'>"+user.uName+"</a>&nbsp;&nbsp;&nbsp;";
						str += "<p style='display: inline-block;' class='comment_font'>"+comm.commentInfo+"</p>";
						str += "</div>";
						str += "<div class='col-md-2 col-xs-2 comment_margin text-right'>";
						str += "<a class='comment_reply'>"+getMyDate(comm.commentTime)+"</a>";
						str += "</div>";
						str += "</div> ";
						str += "<hr> ";
						$("#appendComm").prepend(str);
					}
			);
		};
		
		function isReport(mId,uId){
			$.post(
					"http://localhost:8080/shiyuji/report/selectReport",
					{"mId":mId,"uId":uId},
					function(data){
						console.debug(data);
						if(data=="true"){
							$("#reportInfo").html("举报已提交");
						}
					}
			);
		};
		
		function reportIt(mId,uId){
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
						"http://localhost:8080/shiyuji/report/addReport",
						{"mId":mId,"uId":uId,"cause":cause},
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
		
		function collMenu(mId){
			var msId = $("#selectId").val();
			$.post(
					"http://localhost:8080/shiyuji/createMenu/addmsMe",
					{"mId":mId,"msId":msId},
					function(data){
						if(data=="true"){
							$("#allMenus").html("加入成功");
						}else{
							$("#allMenus").html("加入失败");
						}
					}
			);
		};
	 