<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.shiyuji.cy.pojo.User" %>
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
						          				<img src="../img/user.png" class="img-circle img-responsive" width="30">
							        		</a>
						          		</div>
						          		<div class="col-md-4 col-xs-4 qMargin" style="padding-left: 0px;">
							          		<a href="" class="qLink uName" >${oneQue.us.uName }</a>&nbsp;&nbsp;&nbsp;
							          	</div>
							          	<div class="col-md-7 col-xs-7 qMargin text-right">
							          		<span href="" class="time">创建时间：${oneQue.que.createTime }</span>
							          	</div>
					        	</div>
			          		</div>
		            	</div>
		            	
		            	<div class="row" style="margin-bottom: 30px;">
		            		<div class="col-md-12 col-xs-12">
		            			<span class="allAnswer">${oneQue.que.answerNum } 回答</span>
		            		</div>
		            	</div>
		            	</c:if>
		            	
		            	<div class="row"  style="margin-bottom: 60px;" >
					        <div class="col-md-10 col-xs-10">
					        	<input type="text" placeholder="发表回答" class="inputAns" id="ansInfo"/>
					        </div>
					        <div class="col-md-2 col-xs-2 text-right">
					        	<div class="btn" style="height: 30px;" onclick="addAnswer('${oneQue.que.qId}','${user.uId }')">回答</div>
					        </div>
					    </div>
					    
					    
					    <div class="row" id="appendAnswer">
						    <c:if test="${not empty answers}">
						    <c:forEach  items="${answers}" var="UserAndAnswer">
			            		<div class="col-md-12">
								    <span class="ansInfo">${UserAndAnswer.ans.aInfo }</span>
				          		</div>
				          		<div class="col-md-12" style="margin-top: 6px;margin-bottom: 25px;">
								    <a href="" class="qLink uName" >${UserAndAnswer.u.uName }</a>&nbsp;&nbsp;&nbsp;
								    <span href="" class="time">回答时间：${UserAndAnswer.ans.aTime }</span>
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
      		