<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>

	<meta charset="UTF-8">
	<title>Left Menu</title>

	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.3.1.js"
  			integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  			crossorigin="anonymous"></script>
  			
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<script src="/stddc/resources/js/leftMenu.js"></script>
	<link rel="stylesheet" href="/stddc/resources/css/common.css">
</head>

<body>	

	<div id="leftMenu">
		<ul class="list-group">
			<li id="app" class="list-group-item">신청</li>
			<li id="appList" class="list-group-item">신청현황</li>
			<li id="appr" class="list-group-item">승인</li>
			<li id="rgsList" class="list-group-item">등록현황</li>
		</ul>
	</div>

</body>
</html>
