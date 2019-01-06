<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>

	<meta charset="UTF-8">
	<title>표준화 관리</title>
	
	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.3.1.js"
  			integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  			crossorigin="anonymous"></script>
	
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<script src="/stddc/resources/js/common.js"></script>
	<script src="/stddc/resources/js/home.js"></script>
	<link rel="stylesheet" href="/stddc/resources/css/common.css">
	
</head>
<body>

	<div id="container">
	
		<jsp:include page="leftMenu.jsp" />
		
		<div id="right">

			<div class="jumbotron">
				<h1 class="display-3">데이터 표준화 지원 프로그램</h1>
  				<hr class="my-4">
  				<p>신청 현황 메뉴에서 신규 신청 및 신청 목록 조회 가능</p>
  				<p>등록 현황 메뉴에서 등록된 용어, 단어, 도메인 목록 조회 가능</p>
			</div>
			<!-- //end of jumbotron -->
			
		</div>
		<!-- //end of right -->
		
	</div>
	<!-- //end of container -->
	
</body>
</html>
