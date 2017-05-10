	 $(function(){
		 	path = "http://localhost:8080/shiyuji";
		 
//			$("#email").keyup(function(){
//				verifyEmail();
//			});
//				
//				var emailVal = $("#email").val().trim();
//				console.debug("email -- key up ===》"+emailVal);
//				if(emailVal.length==0){
//					$("#checkemail").text("邮箱不可为空，格式为**@163.com");
//					return;
//				}
//				if(emailVal.length>0){
//					var pattern = /\w+[@]{1}\w+[.]\w+/;
//					if(!pattern.test(emailVal) || emailVal.indexOf("@163.com")<=0){
//						$("#checkemail").text("邮箱格式不正确，格式为**@163.com");
//						return;
//					}else{
//						$.post(
//								"http://localhost:8080/shiyuji/user/"+emailVal+"/email/check",
//								function(rs){
//									console.debug("checkEmailExsist eamil==>"+emailVal+"rs==>"+rs);
//									var st = "";
//									if(rs=="1"){
//										st = "邮箱正确可用";
//									}else{
//										st = "邮箱不存在";
//									}
//									console.debug(" keyup chekc post  :"+st);
//									$("#checkemail").text(st);
//								}
//					);
//				}
//			});	
				
	 });
	 
	 function verifyEmail(){
			var bind_email =  $("#bind_email").val().trim();
			console.debug("verifyEmail++++++"+bind_email);
			var reg = /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/;
			if(!reg.test(bind_email)){
				$("#emailStatus").text("请输入正确的邮箱格式");
				$("#sendEmail").attr("disabled","disabled");
				return;
			}
			verifyemailurl = path+"/user/"+bind_email+"/email/check";
			$.post(
					verifyemailurl,
					function(rs){
						console.debug("youxiang rs:"+rs);
						if(rs=="1"){
							console.debug("========1======");
							$("#emailStatus").text("邮箱认证成功");
							$("#sendEmail").removeAttr("disabled");
						}else if(rs=="2"){
							console.debug("========2======");
							$("#emailStatus").text("邮箱认证失败");
							$("#sendEmail").attr("disabled","disabled");
						}
					}	
				);
		}

		function sendEmailCode(){
			var bind_email = $("#bind_email").val().trim();
			verifyemailurl = path+"/user/email/"+bind_email+"/send";
			$.post(
					verifyemailurl,
					function(rs){
						if(rs=="1"){
							var str ="邮箱验证码发送成功";
							wuya_messager("无涯-邮箱验证码",str,"info");
//							$("#content2").toggle();
//							$("#content1").toggle();
							$("#bind_email").attr("readonly","readonly");
							$("#email_code_input").removeAttr("readonly");
						}else{
							var str ="邮箱验证码发送失败,请确认邮箱正确！再次发送";
							wuya_messager("无涯-邮箱验证码",str,"error");
						}
						
					}	
				);
		}

		function verifyCode(){
			var bind_email = $("#bind_email").val().trim();
			var code = $("#email_code_input").val().trim();
			if(code.length!=6){
				wuya_messager("无涯-验证邮箱密码","验证码长度为8位，请确认后再次验证。","error");
				return;
			}
			verifyemailurl = path+"/user/email/code/"+bind_email+"/"+code+"/verify";
			$.post(
					verifyemailurl,
					function(rs){
						if(rs=="1"){
							var str ="邮箱验证码验证成功";
							wuya_messager("无涯-邮箱验证码",str,"info");
//							$("#content2").toggle();
//							$("#content3").toggle();
							$("#newPwd").removeAttr("readonly");
//							$("#newPwd2").removeAttr("readonly");
						}else{
							var str ="邮箱验证码雅正失败";
							wuya_messager("无涯-邮箱验证码",str,"error");
						}
						
					}	
				);
		}

		function verifyNewPwd(){
			var pwd = $("#newPwd").val().trim();
			var str="";
			if(pwd.length<8){
				str ="密码长度不可小于8位";
//				$("#newstatus").removeClass("alert-success");
//				$("#newstatus").addClass("alert-danger");
			}else{
				str="密码可用";
//				$("#newstatus").removeClass("alert-danger");
//				$("#newstatus").addClass("alert-success");
				$("#newPwd2").removeAttr("readonly");
			}
			
		}

		//验证
		function verifyNewPwdAgain(){
			var str="";
			var pwd = $("#newPwd").val().trim();
			var pwd2 = $("#newPwd2").val().trim();
			if(pwd.length<8){
				str ="密码长度不可小于8位";
				$("#newstatus2").removeClass("alert-success");
				$("#newstatus2").addClass("alert-danger");
				$("#submitPwd").attr("disabled");
			}else if(pwd!=pwd2){
				$("#newstatus2").removeClass("alert-success");
				$("#newstatus2").addClass("alert-danger");
				$("#submitPwd").attr("disabled");
				str ="两次密码不相同";
			}else{
				$("#newstatus2").removeClass("alert-danger");
				$("#newstatus2").addClass("alert-success");
				$("#submitPwd").removeAttr("disabled");
				str="密码可用";
			}
			$("#newstatus2").text(str);
		}

		function modifyCode(){
			var pwd = $("#newPwd").val().trim();
			var bind_email = $("#bind_email").val().trim();
			var modifyurl = path+"/user/pwd/"+pwd+"/email/"+bind_email+"/modify";
			var str = "";
			$.post(
					modifyurl,
					function(rs){
						if(rs=="1"){
							str ="修改密码成功";
							wuya_messager("无涯-修改密码",str,"info");
							location.href=path;
						}else{
							str ="修改密码失败";
							wuya_messager("无涯-修改密码",str,"error");
							$("#oldPwd").val("");
							$("#newPwd").val("");
							$("#newPwd2").val("");
						}
						
					}
			);
		}

		function wuya_messager(title,msg,type){
			$.messager.alert(title,msg,type);
			$(".messager-window").css("position","fixed");
			$(".window-shadow").css("position","fixed");
			$(".messager-window").css("top","300px");
			$(".window-shadow").css("top","300px");
		}
		

		
