	 $(function(){
		 initClassify();
		 num =1;
		 shicaiNum =1;
		$("#menu_input").change(function(){
			var formData = new FormData();
			formData.append('file', $('#menu_input')[0].files[0]);
			$.ajax({
			    url: 'http://localhost:8080/shiyuji/upload-pic/menuupload',
			    type: 'POST',
			    cache: false,
			    data: formData,
			    processData: false,
			    contentType: false
			}).done(function(res) {
				
				console.debug(res);
				var arrs = res.split("|");
				var picPath = arrs[0];
				var width = arrs[1];
				var height = arrs[2];
				var str = "<img width='"+width+"' height='"+height+"' src='http://localhost:8080/shiyuji/upload/"+picPath+"'/>";
				$("#mPic").val(picPath);
				console.debug(str);
				$("#menu_font").fadeOut();
				$("#menu_pic").empty();
				$("#menu_pic").append(str);
			}).fail(function(res) {
				
			});
		});
		
		$("#addShi").click(function(){
			shicaiNum++;
			var close = shicaiNum-1;
			$("#shicai"+close).fadeOut();
			var str = "<div>";
			str += "<input type='text' placeholder='食材: 如鸡蛋          用量: 如1只' class='menu_name'  style='margin-top:5px;' id='shicai_step"+shicaiNum+"'>";
			str += "<a class='link closeLink' id='shicai"+shicaiNum+"' style='margin-left:3px;'><i class='fa fa-times'></i></a>";
			str += "</div>";
			str += "<script>";
			str += "$('.closeLink').click(function(){";
			str += "	console.debug(num);";
			str += "	$(this).closest('div').remove();";
			str += "	shicaiNum--;";
			str += "$('#shicai'+shicaiNum).fadeIn();";
			str += "});";
			str += "</script>";
		$("#shicai").append(str);
		});
		
		$("#addStep").click(function(){
			num++;
			var closeNum = num;
			closeNum --;
			$("#cc"+closeNum).fadeOut();
			var str = "<div>";
				str += "<span id='title'>"+num+"</span>";
				str += "<input type='text' placeholder='点击添加菜谱步骤' class='menu_name' id='step"+num+"' style='width: 585px;margin-left:4px;margin-top:5px;'>";
				str += "<a class='link closeLink' id='cc"+num+"' style='margin-left:3px;'><i class='fa fa-times'></i></a>";
				str += "</div>";
				str += "<script>";
				str += "$('.closeLink').click(function(){";
				str += "	console.debug(num);";
				str += "	$(this).closest('div').remove();";
				str += "	num--;";
				str += "$('#cc'+num).fadeIn();";
				str += "});";
				str += "</script>";
    		$("#steps").append(str);
		});
		
		
		$("#publish").click(function(){
			var mName = $("#mName").val();
			var mpicPath = $("#mPic").val();
			var mInfo = $("#mInfo").val();
			var shicai = "";
			for(var i =1; i<=shicaiNum;i++){
				shicai += $("#shicai_step"+i).val();
				if(i<shicaiNum){
					shicai+="|";
				}
			}
			var steps ="";
			for(var i =1; i<=num;i++){
				steps += $("#step"+i).val();
				if(i<num){
					steps+="|";
				}
			}
			var mcId = $("#selectId").val();
			$.post(
					"http://localhost:8080/shiyuji/createMenu/uploadMenu",
					{"mName":mName,"mpicPath":mpicPath,"mInfo":mInfo,"shicai":shicai,"steps":steps,"mcId":mcId},
					function(data){
						console.debug(data);
						if(data=="false"){
							alert("false");
						}else{
							alert("true");
							location.href = "http://localhost:8080/shiyuji/createMenu/selectOne/"+data;
						}
					}
					);
			
					 
		});
		
		function initClassify(){
			$.getJSON(
				"http://localhost:8080/shiyuji/menu/classify",
				function(data){
					var str = "<select name='classify' id='selectId'>";
					str += "<option>选择</option>";
					for(var i= 0;i<data.length;i++){
						str += "<option value='"+data[i].mcId+"'>"+data[i].mcName+"</option>";
					}
					str += "</select>";
					console.debug(str);
					$("#classify").append(str);
				}
			);
			
			
		}
		
	});
