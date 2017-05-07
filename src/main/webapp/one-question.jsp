<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>
<%@ page import="com.shiyuji.cy.pojo.UserAndQuestion" %>
<%@ page import="com.shiyuji.cy.pojo.UserAndAnswer" %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <%@ include file="css_js.jsp" %>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/nav.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/one-question.js"></script>
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/nav.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/one-question.css" rel="stylesheet" type="text/css">
		<title>问答详情</title>
		<style>
        	.queTitle{
        		width: 100%;
        		height: 45px;
        		margin-bottom: 35px;
        	}
        	.bgModel{
        		width: 100%;
        		height: 30px;
        		display: block;
        		background-color: rgba(128, 128, 128, 0.24);
        	}
        	.textInfo{
        		border-radius: 0px;
        	}
        </style>
	<body>
		<%@ include file="nav.jsp" %> 
		<div class="section" id="sec">
      		<div class="container">
      		<div class="row" style="margin-bottom: 75px;">
		            <div class="col-md-1 col-xs-1"></div>
		            <div class="col-md-7 col-xs-7 col-sm-7" style="padding-left: 6px;">
		            
		            <c:if test="${not empty oneQue}">
		            	<div class="row" style="margin-top:30px;margin-bottom: 30px;">
		            		<div class="col-md-12 col-xs-12">
		            			<span class="title">${oneQue.que.qTitle }</span>
		            		</div>
		            	</div>
		            	
		            	<div class="row" style="margin-bottom: 20px;">
		            		<div class="col-md-12 col-xs-12">
		            			<span class="qInfo">${oneQue.que.qInfo }</span>
		            		</div>
		            	</div>
		            	
		            	<div class="row" style="margin-bottom: 20px;">
		            		<div class="col-md-12" style="margin-top: 35px;">
						      	<div class="row" style="margin-bottom: 10px;">
							        	<div class="col-md-1">
							        		<a href="">
						          				<img src="${pageContext.request.contextPath}/img/${oneQue.us.headPic }" class="img-circle img-responsive" width="30">
							        		</a>
						          		</div>
						          		<div class="col-md-4 col-xs-4 qMargin" style="padding-left: 0px;">
							          		<a href="" class="qLink uName" >${oneQue.us.uName }</a>&nbsp;&nbsp;&nbsp;
							          	</div>
							          	<%
							          		UserAndQuestion uq = (UserAndQuestion)request.getAttribute("oneQue");
							          		Date date = new Date(uq.getQue().getCreateTime()); 
							          	%>
							          	<div class="col-md-7 col-xs-7 qMargin text-right">
							          		<span href="" class="time">创建时间：<%= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date) %></span>
							          	</div>
					        	</div>
			          		</div>
		            	</div>
		            	
		            	<div class="row" style="margin-bottom: 30px;">
		            		<div class="col-md-12 col-xs-12">
		            			<span class="allAnswer" id="updateNum">${oneQue.que.answerNum }</span> 
		            			<span class="allAnswer" > 回答</span>
		            		</div>
		            	</div>
		            	</c:if>
		            	
		            	<div class="row"  style="margin-bottom: 60px;" >
					        <div class="col-md-10 col-xs-10">
					        	<input type="text" placeholder="发表回答" class="inputAns" id="ansInfo"/>
					        </div>
					        <div class="col-md-2 col-xs-2 text-right">
					        	<div class="btn" style="height: 30px;" onclick="addAnswer('${oneQue.que.qId}','${user.uId }','${oneQue.que.answerNum }')">回答</div>
					        </div>
					    </div>
					    
					    
					    <div class="row" id="appendAnswer">
						    <c:if test="${not empty answers}">
							    <%
									List<UserAndAnswer> ua = (List<UserAndAnswer>)request.getAttribute("answers"); 
						        	int i =0;
						        %>
						        	<c:forEach  items="${answers}" var="ua">
						        <%
					        		Date date = new Date(ua.get(i).getAns().getaTime());
						        	i++;
						       %>
			            		<div class="col-md-12">
								    <span class="ansInfo">${ua.ans.aInfo }</span>
				          		</div>
				          		<div class="col-md-12" style="margin-top: 6px;margin-bottom: 25px;">
								    <a href="" class="qLink uName" >${ua.u.uName }</a>&nbsp;&nbsp;&nbsp;
								    <span  class="time">回答时间：<%= new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(date) %></span>
				          		</div>
				          		<hr>
			            	</c:forEach>
			            	</c:if>
		            	</div>
		            	
		            	
		            	
					    <div class="row" style="margin-bottom: 20px;"id="appendAnswer">
					    	<c:if test="${empty answers}">
			            		<div class="col-md-12 text-center" >
								    <span class="ansInfo">该问题暂无回答，快去回答吧</span>
				          		</div>
				          		<hr>
		            	</c:if>
		            	</div>
		            	
		            	
		            </div>
		            <div class="col-md-4 col-xs-4">
		            	<%@ include file="askPublic.jsp" %> 
		            	<div class="row" style="margin-bottom: 20px;">
		            		
		            	</div>
		            </div>
		        </div> 
		    	<div class="row" style="margin-bottom: 75px;">
          			<div class="col-md-12 text-center" id="user_info" style="font-size:20px ;">唯有美食与爱不可辜负</div>
        		</div>
      		</div>
		</div>
	</body>
</html>
      		