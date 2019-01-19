<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>

	<meta charset="UTF-8">
	<title>표준화 용어 / 단어 / 도메인 신청 화면</title>

	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.3.1.js"
  			integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  			crossorigin="anonymous"></script>
	
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<script src="/stddc/resources/js/common.js"></script>
	<script src="/stddc/resources/js/stdApp.js"></script>
	<link rel="stylesheet" href="/stddc/resources/css/common.css">

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
					
					<h4><span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span> 신규 단어 신청</h4>
					
					<form id="appVocaFrm" class="form-horizontal">
					
						<div id="vocaKorDiv" class="form-group">
							<label for="inputVocaKor" class="col-sm-2 control-label">단어명</label>
							<div class="col-sm-10">
						    	<input type="text" class="form-control" id="inputVocaKor" name="voca">
						      	<small class="text-muted">신청할 단어를 한글로 입력하세요. (ex: 면허)</small>
						    </div>
						</div>
						<!-- //end of form-group -->
						
						<div id="vocaTypeDiv" class="form-group">
							<label for="inputVocaType" class="col-sm-2 control-label">단어유형</label>
							<div class="col-sm-10">
						    	<label class="radio-inline">
									<input type="radio" name="vType" id="vocaType1" value="표준어"> 표준어
								</label>
																
								<label class="radio-inline">
									<input type="radio" name="vType" id="vocaType2" value="분류어"> 분류어
								</label>
								
								<label class="radio-inline">
									<input type="radio" name="vType" id="vocaType3" value="동의어"> 동의어
								</label>	
								 
								<label class="radio-inline">
									<input type="radio" name="vType" id="vocaType4" value="금칙어"> 금칙어
								</label>
						    </div>						
						</div>
						<!-- //end of form-group -->
						
						<div id="extraDiv" class="form-group">
							<label for="inputVocaSub" class="col-sm-2 control-label">대체단어</label>
							<div class="col-sm-10">
						    	<input type="text" class="form-control" id="inputVocaSub" name="vSubst">
						      	<small class="text-muted">동의어/금칙어를 등록하시는 경우에는 해당 단어를 대체할 단어를 등록해주세요. (ex: '상세'를 금칙어로 하여 '세부'로 대체 시 '세부' 입력)</small>
						    </div>						
						</div>
						<!-- //end of form-group -->
						
						<div id="vocaEngDiv" class="form-group">
							<label for="inputVocaEng" class="col-sm-2 control-label">영문명</label>
							<div class="col-sm-10">
						    	<input type="text" class="form-control" id="inputVocaEng" name="vEng">
						      	<small class="text-muted">신청할 단어의 영문명을 입력하세요. (ex: LICENSE)</small>
						    </div>
						</div>
						<!-- //end of form-group -->
						
						<div id="engShortDiv" class="form-group">
							<label for="inputEngShort" class="col-sm-2 control-label">영문약어명</label>
							<div class="col-sm-10">
						    	<input type="text" class="form-control" id="inputEngShort" name="vEngShort">
						      	<small class="text-muted">신청할 단어의 영문약어를 입력하세요. (ex: LCNS)</small>
						    </div>
						</div>
						<!-- //end of form-group -->
						
						<div id="vocaDefDiv" class="form-group">
							<label for="inputVocaDef" class="col-sm-2 control-label">정의</label>
							<div class="col-sm-10">
						    	<input type="text" class="form-control" id="inputVocaDef" name="vDef">
						      	<small class="text-muted">신청할 단어의 정의를 입력하세요. (ex: 특정한 일을 할 수 있는 공식적인 자격을 행정 기관이 허가함.)</small>
						    </div>
						</div>
						<!-- //end of form-group -->
						
						<div id="vocaSourceDiv" class="form-group">
							<label for="inputVocaSource" class="col-sm-2 control-label">출처</label>
							<div class="col-sm-10">
						    	<input type="text" class="form-control" id="inputVocaSource" name="vSource">
						      	<small class="text-muted">신청할 단어 정의의 출처를 입력하세요. (ex: 국어사전)</small>
						    </div>
						</div>
						<!-- //end of form-group -->
						
						<input type="hidden" id="inputVocaAppStts" name="vAppStts" value="신청"/>
						 
						<button id="vSubmitBtn" type="button" class="btn btn-primary btn-lg submitBtn">단어 신청</button>
											
					</form>
										
				</div>
				<!-- //end of voca -->
				
				
				<div id="word" class="content-area">
				
					<h4><span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span> 신규 신청 용어 </h4>
					
					<form id="appWordFrm" class="form-horizontal">
					
						<div id="wordKorDiv" class="form-group">
							<label for="inputWordKor" class="col-sm-2 control-label">용어명</label>
							<div class="col-sm-10">
						    	<input type="text" class="form-control" id="inputWordKor" name="word">
						      	<small class="text-muted">신청할 용어를 한글로 입력하세요. (ex: 운전면허번호)</small>
						    </div>
						</div>
						<!-- //end of form-group -->
						
						<div id="dvWordDiv" class="form-group">
							<label for="inputDvWord" class="col-sm-2 control-label">용어분할</label>
							<div class="col-sm-10">
						    	<input type="text" class="form-control" id="inputDvWord" name="dvWord">
						      	<small class="text-muted">동의어/금칙어를 등록하시는 경우에는 해당 단어를 대체할 단어를 등록해주세요. (ex: '상세'를 금칙어로 하여 '세부'로 대체 시 '세부' 입력)</small>
						    </div>						
						</div>
						<!-- //end of form-group -->
						
						<div id="dvWordEngDiv" class="form-group">
							<label for="inputDvWordEng" class="col-sm-2 control-label">영문용어분할</label>
							<div class="col-sm-10">
						    	<input type="text" class="form-control" id="inputDvWordEng" name="dvWordEng">
						      	<small class="text-muted">신청할 단어의 영문명을 입력하세요. (ex: LICENSE)</small>
						    </div>
						</div>
						<!-- //end of form-group -->
						
						<div id="dNameDiv" class="form-group">
							<label for="inputDname" class="col-sm-2 control-label">도메인명</label>
							<div class="col-sm-10">
						    	<input type="text" class="form-control" id="inputDname" name="dName">
						      	<small class="text-muted">신청할 단어의 영문약어를 입력하세요. (ex: LCNS)</small>
						    </div>
						</div>
						<!-- //end of form-group -->
						
						<div id="infoTypeDiv" class="form-group">
							<label for="inputInfoType" class="col-sm-2 control-label">용어유형</label>
							<div class="col-sm-10">
						    	<input type="text" class="form-control" id="inputInfoType" name="infoType">
						      	<small class="text-muted">신청할 단어의 정의를 입력하세요. (ex: 특정한 일을 할 수 있는 공식적인 자격을 행정 기관이 허가함.)</small>
						    </div>
						</div>
						<!-- //end of form-group -->
						
						<input type="hidden" id="inputWordAppStts" name="wAppStts" value="신청"/>
						 
						<button id="wSubmitBtn" type="button" class="btn btn-primary btn-lg submitBtn">용어 신청</button>
						
				</div>
				<!-- //end of word -->
				
				
				<div id="domain" class="content-area">
				
					<h4><span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span> 신규 도메인 신청 </h4>
					
					<form id="appDomainFrm" class="form-horizontal">
					
						<div id="domainKorDiv" class="form-group">
							<label for="inputDomainKor" class="col-sm-2 control-label">도메인명</label>
							<div class="col-sm-10">
						    	<input type="text" class="form-control" id="inputDomainKor" name="domain">
						      	<small class="text-muted">신청할 도메인을 한글로 입력하세요. (ex: 평수)</small>
						    </div>
						</div>
						<!-- //end of form-group -->
						
						<div id="domainGroupDiv" class="form-group">
							<label for="inputDomainGroup" class="col-sm-2 control-label">도메인그룹</label>
							<div class="col-sm-10">
						    	<input type="text" class="form-control" id="inputDomainGroup" name="dgName">
						      	<small class="text-muted">신청할 도메인 그룹을 한글로 입력하세요. (ex: 수량)</small>
						    </div>				
						</div>
						<!-- //end of form-group -->
												
						<div id="domainTypeDiv" class="form-group">
							<label for="inputDomainType" class="col-sm-2 control-label">도메인 타입</label>
							<div class="col-sm-10">
								<select id="inputDomainType" name="dType">
									<option value="">선택
									<option value="VARCHAR">VARCHAR
									<option value="NUMBER">NUMBER
									<option value="DATE">DATE
									<option value="BLOB">BLOB
									<option value="CLOB">CLOB
								</select>
						    	<br>
						      	<small class="text-muted">신청할 도메인의 데이터 타입을 선택하세요.</small>
						    </div>
						</div>
						<!-- //end of form-group -->
						
						<div id="domainLengthDiv" class="form-group">
							<label for="inputDomainLength" class="col-sm-2 control-label">데이터 길이</label>
							<div class="col-sm-10">
						    	<input type="text" class="form-control" id="inputDomainLength" name="dLength">
						      	<small class="text-muted">신청할 도메인의 데이터 길이를 입력하세요. (ex: 10)</small>
						    </div>				
						</div>
						<!-- //end of form-group -->
							
						<div id="domainDefDiv" class="form-group">
							<label for="inputDomainDef" class="col-sm-2 control-label">정의</label>
							<div class="col-sm-10">
						    	<input type="text" class="form-control" id="inputDomainDef" name="dDef">
						      	<small class="text-muted">신청할 도메인의 정의를 입력하세요. (ex: 평수를 측정하는 수)</small>
						    </div>
						</div>
						<!-- //end of form-group -->
						
						<input type="hidden" id="inputDomainAppStts" name="dAppStts" value="신청"/>
						 
						<button id="dSubmitBtn" type="button" class="btn btn-primary btn-lg submitBtn">도메인 신청</button>
						
					</form>	
					
				</div>
				<!-- //end of domain -->
				
			</div>			
			<!-- //end of tab-content -->
			
		</div>
		<!-- //end of right -->
		
	</div>
	<!-- //end of container -->	
	
</body>
</html>
