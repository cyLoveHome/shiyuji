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
		
		function changeCommTime(time){
			var commTime=getMyDate(time);
			console.debug("-----comm=="+commTime);
			$("#time").html(commTime);
		}
		
		
		
		function addAnswer(qId,uId){
			var aInfo = $("#ansInfo").val();
			$.post(
					"http://localhost:8080/shiyuji/answer/addAns",
					{"qId":qId,"uId":uId,"aInfo":aInfo},
					function(data){
						console.debug(data);
						var arr = eval("("+data+")");
						console.debug(arr);
						var answer = eval(arr.ans);
						var user = eval(arr.u);
						var str = "<div class='col-md-12'>";
						str += "<span class='ansInfo'>"+answer.aInfo+"</span>";
						str += "</div>";
						str += "<div class='col-md-12' style='margin-top: 6px;margin-bottom: 25px;'>";
						str += " <a href='' class='qLink uName'>"+user.uName+"</a>&nbsp;&nbsp;&nbsp;";
						str += " <span href='' class='time'>回答时间："+answer.aTime+"</span>";
						str += "</div>";
						str += "<hr>";
						$("#appendAnswer").prepend(str);
						$("#ansInfo").val("");
					}
			);
		};
		
