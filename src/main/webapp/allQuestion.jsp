<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <%@ include file="css_js.jsp" %>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/nav.js"></script>
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/nav.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/allQuestion.css" rel="stylesheet" type="text/css">
		<title>厨房问答</title>
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
		            		<div class="col-md-12" style="margin-top: 35px;">
						       <c:if test="${not empty allQue}">
							       <c:forEach  items="${allQue}" var="UserAndQuestion">
								       <div class="row question_style" style="margin-top: 20px;">
							          		<div class="col-md-8">
							          			<a href="${pageContext.request.contextPath}/question/one/${UserAndQuestion.que.qId}" class="qLink qTitle">${UserAndQuestion.que.qTitle }</a>
							          		</div>
							          		<div class="col-md-4 text-right">
							          			<a href="" class="answer qLink">${UserAndQuestion.que.answerNum } 回答</a>
							          		</div>
					          			</div> 
					          			<div class="row">
					          				<div class="col-md-12">
					          					<a href="" class="qLink qName">${UserAndQuestion.us.uName }</a>
					          				</div>
					          			</div>
					          			<hr />
				          			</c:forEach>
			          			</c:if>
			          		</div>
		            	</div>
		            	
		            </div>
		            <div class="col-md-4 col-xs-4">
		            	<div class="row" style="margin-bottom: 30px;">
		            		<div class="col-md-12 col-xs-12 text-center">
		            			<div class="bg">
			          				<div class="row">
					        			<div class="col-md-12 qFont">
					        				我们希望每一个疑惑都有好的解答<br>提出你的问题<br>让厨友为你答疑解惑
					        			</div>
			          				</div>
			          				<div class="row" style="margin-top: 15px;">
					        			<div class="col-md-12" >
					        				<a class="btn" >提问</a>
					        			</div>
			          				</div>
		            			</div>
		            		</div>
		            	</div>
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