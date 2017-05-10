$(function() {
	updateUserInfoTypes = ["headpic","signature","sex","profile","location","birth","all"];
	path = "http://localhost:8080/shiyuji";
	uploadurl = path+'/upload-pic/upload/headpic';
	$("#changeHeadPic").change(function(){
		var formData = new FormData();
		formData.append('file', $('#changeHeadPic')[0].files[0]);
		$.ajax({
		    url: uploadurl,
		    type: 'POST',
		    cache: false,
		    data: formData,
		    processData: false,
		    contentType: false
		}).done(function(res) {
			console.debug(res);
			$("#prePic").attr('src',path+"/img/"+res);
			$("input[name='update_headpic']").val(res);
			shiyuji_messager("食遇记","上传成功","info");
		}).fail(function(res) {
			shiyuji_messager("食遇记","上传失败","error");
		});
	});
});


function myformatter(date){
	var y = date.getFullYear();
	var m = date.getMonth()+1;
	var d = date.getDate();
	return y+'-'+(m<10?('0'+m):m)+'-'+(d<10?('0'+d):d);
}
function myparser(s){
	if (!s) return new Date();
	var ss = (s.split('-'));
	var y = parseInt(ss[0],10);
	var m = parseInt(ss[1],10);
	var d = parseInt(ss[2],10);
	if (!isNaN(y) && !isNaN(m) && !isNaN(d)){
		return new Date(y,m-1,d);
	} else {
		return new Date();
	}
}

function submitUserInfo(){
	console.debug("submitUserInfo=======start");
	var updateurl = path+"/user/info/update";
	var headPic = $("#up_headpic").val();				//头像
	var sex = $("input[name='up_sex']:checked").val();	//性别
	var birth = $("#up_birth").val();					//生日
	if(typeof(birth) == "undefined" || birth ==""){
		birth = "-1";
	}
	var hometown = $("#up_hometown").val();				//家乡
	var uInfo = $("#up_info").val();
	console.debug("headPic==>"+headPic+"  sex==>"+sex+"  birth==>"+birth+"  hometown==>"+hometown+"  uInfo==>"+uInfo);
	$.post(
			updateurl,
			{
				"headPic":headPic,
				"sex":sex,
	    		"birth":birth,
	    		"hometown":hometown,
	    		"uInfo":uInfo
			},
			function(rs){
				if(rs=="fail"){
					shiyuji_messager("食遇记","修改用户信息失败","error");
					return;
				}else{
					var user = eval("("+rs+")");
					shiyuji_messager("食遇记","修改用户信息成功","info");
					$("#nav_headpic").attr('src',path+"/img/"+user.headPic);
					$("#up_birth").val("");
					$("#show_birth").text(getMyDate(user.birth));
				}
			}
	);
}


function getMyDate(str){
	str = parseInt(str);
  	console.debug("start trans "+str);
    var oDate = new Date(str);
    oYear = oDate.getFullYear(); 
    oMonth = oDate.getMonth()+1;  
    oDay = oDate.getDate();
    oHour = oDate.getHours();  
    oMin = oDate.getMinutes();  
    oSen = oDate.getSeconds();  
    oTime = oYear +'-'+ getzf(oMonth) +'-'+ getzf(oDay);//最后拼接时间  
    return oTime;  
};
//补0操作  
function getzf(num){  
    if(parseInt(num) < 10){  
        num = '0'+num;  
    }  
    return num;  
};


function shiyuji_messager(title,msg,type){
	$.messager.alert(title,msg,type);
	$(".messager-window").css("position","fixed");
	$(".window-shadow").css("position","fixed");
	$(".messager-window").css("top","300px");
	$(".window-shadow").css("top","300px");
}









