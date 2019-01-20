<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>

	<meta charset="UTF-8">
	<title>표준화 용어 / 단어 / 도메인 신청 화면</title>

	<!-- jqGrid -->
	<link rel="stylesheet" type="text/css" media="screen" href="/stddc/resources/jqgrid/css/jquery-ui.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="/stddc/resources/jqgrid/css/ui.jqgrid.css" />
	<link rel="stylesheet" href="/stddc/resources/css/common.css">
		
	
	<script src="https://code.jquery.com/jquery-3.3.1.js"
  			integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  			crossorigin="anonymous"></script>
  

  				
	<script src="/stddc/resources/jqgrid/js/i18n/grid.locale-kr.js" type="text/javascript"></script>
    <script src="/stddc/resources/jqgrid/js/jquery.jqGrid.js" type="text/javascript"></script>
	
			
	
	<script src="/stddc/resources/js/common.js"></script>
	<script src="/stddc/resources/js/stdAppr.js"></script>
	
	<!-- 
	<script src="/stddc/resources/jqgrid/js/jquery-1.7.2.min.js" type="text/javascript"></script>
  	 -->		
  	
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
    <style>
        html, body {
            margin : 0;
            padding : 0;
            font-size : 75%;
        }
    </style>
	

</head>

<body>

	<div id="container">
		<jsp:include page="../leftMenu.jsp" />
		
		<div id="right">
		
			<ul class="nav nav-tabs" id="nav">
				<li role="presentation"><a href="#voca">단어</a></li>
				<li role="presentation"><a href="#word">용어</a></li>
				<li role="presentation"><a href="#domain">도메인</a></li>
			</ul>
			
			<div class="tab-content">
			
				<div id="voca" class="content-area">
				
					<h4><span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span> 승인 대기 단어 </h4>
					<!-- <table id="list"></table> -->
					
					<div >
						
						<label for="inputVocaKor" class="col-sm-1 control-label" style="text-align:right">단어명</label>
						<div class="col-sm-2">
					    	<input type="text" class="form-control" id="inputVocaKor" name="voca">
					    </div>

						<label for="inputVocaKor" class="col-sm-1 control-label" style="text-align:right">단어명</label>
						<div class="col-sm-2">
					    	<input type="text" class="form-control" id="inputVocaKor" name="voca">
					    </div>

						<label for="inputVocaKor" class="col-sm-1 control-label" style="text-align:right">단어명</label>
						<div class="col-sm-2">
					    	<select id="">
					    		<option>신청
					    		<option>거절
					    	</select>
					    </div>
						
					</div>
					
					<table id="stdAppList"></table>
					
				</div>
				<!-- //end of voca -->
				
			</div>
			
		</div>
		<!-- //end of right -->
		
	</div>
	<!-- //end of container -->
	

</body>
</html>