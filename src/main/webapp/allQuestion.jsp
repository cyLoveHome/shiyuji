<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <%@ include file="css_js.jsp" %>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/nav.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/question.js"></script>
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/nav.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/allQuestion.css" rel="stylesheet" type="text/css">
		<title>厨房问答</title>
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
		            	<div class="row" style="margin-top:30px;margin-bottom: 20px;">
		            		<div class="col-md-12 col-xs-12">
		            			<span class="title">厨房问答</span>
		            		</div>
		            	</div>
		            	<div class="row" style="margin-bottom: 20px;">
		            		<div class="col-md-12" style="margin-top: 35px;" id="queBody">
						       <c:if test="${not empty allQue}">
							       <c:forEach  items="${allQue}" var="UserAndQuestion">
								       <div class="row question_style" style="margin-top: 20px;">
							          		<div class="col-md-8">
							          			<a href="${pageContext.request.contextPath}/question/one/${UserAndQuestion.que.qId}" class="qLink qTitle">${UserAndQuestion.que.qTitle }</a>
							          		</div>
							          		<div class="col-md-4 text-right">
							          			<a href="${pageContext.request.contextPath}/question/one/${UserAndQuestion.que.qId}" class="answer qLink">${UserAndQuestion.que.answerNum } 回答</a>
							          		</div>
					          			</div> 
					          			<div class="row">
					          				<div class="col-md-12">
					          					<a href="${pageContext.request.contextPath}/kitchen/myself/${UserAndQuestion.us.uId}" class="qLink qName">${UserAndQuestion.us.uName }</a>
					          				</div>
					          			</div>
					          			<hr />
				          			</c:forEach>
			          			</c:if>
			          		</div>
		            	</div>
		            	
		            </div>
		            <div class="col-md-4 col-xs-4">
		            	<%@ include file="askPublic.jsp" %> 
		            		<div class="row" style="margin-bottom: 20px;">
			            		<div class="col-md-12 col-xs-12" id="title">食遇记里有众多问题<br>供你搜索</div>
			            	</div>
			            	<div class="row" style="margin-bottom: 20px;">
			            		<div class="col-md-12 col-xs-12">
			            			<input type="text" placeholder="搜问题"  style="padding-left: 5px;" id="findQuestion"/>
			            		</div>
			            	</div>
			            	<div class="row">
			            		<div class="col-md-12 col-xs-12">
			            			<a class="btn" style="width: 100px;margin-left: 1px;" onclick="findQuestion();">搜索</a>
			            		</div>
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