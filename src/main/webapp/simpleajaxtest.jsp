<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	System.out.println(basePath);
%>
<!DOCTYPE html>

<html>
<head>
<!-- 相对路径头:http://localhost:8080/ajaxpolling/,可以通过浏览器查看 -->
<base href="<%=basePath%>">
<script type="text/javascript"
	src="<c:url value="/jquery-1.12.4.min.js"/>"></script>

<script type="text/javascript">
	window.onload = function() {
		alert("1111111111");
	};
	$(document).ready(function() {
		$("#b01").click(function() {
			htmlobj = $.ajax({
				url : "AjaxTest",
				async : true
			});
			$("#myDiv").html(htmlobj.responseText);
		});
	});
</script>
</head>
<body>
	<div id="myDiv">
		<h2>Let AJAX change this text</h2>
	</div>
	<button id="b01" type="button">Change Content</button>
</body>
</html>
