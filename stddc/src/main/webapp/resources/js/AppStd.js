$(function(){
	
	f_setPage();
	
	$("#nav li").on("click", function(){
		
		var tabId = $(this).find("a").attr("href").substr(1);
		f_selectTab(tabId);
		
	});
	
	$("#vocaType1, #vocaType2").on("click", function(){
		$(".form-group").css("border", "none");
		$("#extraDiv").css("display", "none");
	});
	
	$("#vocaType3, #vocaType4").on("click", function(){
		$(".form-group").css("border", "none");
		$("#extraDiv").css("display", "block");
	});
	
	$("input").on("click", function(){
		$(".form-group").css("border", "none");
	});
	
	$("#submitBtn").on("click", function(){
		f_checkForm();
	});
});


function f_setPage(){
	
	$("#app").addClass("selected");
	f_selectTab("voca");
	
	$("#extraDiv").css("display", "none");
}


function f_selectTab(tabId){
	
	$("#nav li").removeClass("active");
	$("#nav a[href='#" + tabId + "'").parent().addClass("active");
	
	$(".content-area").css("display", "none");
	$("#" + tabId).css("display", "block");
	
}


function f_checkForm(){
	
	var isValid = true;
	var chkAlert = new Array();
	
	if($("#inputVocaKor").val() == ""){
		$("#vocaKorDiv").css("border", "1px solid red");
		chkAlert.push("단어명");
		isValid = false;
	}
	
	var radioChk = $("input:radio[name=vType]").is(":checked");
	if(!radioChk) {
		$("#vocaTypeDiv").css("border", "1px solid red");
		chkAlert.push("단어 유형");
		isValid = false;
	}
	
	if($("#vocaType3, #vocaType4").is(":checked")){		
		if($("#inputVocaSub").val() == ""){
			$("#extraDiv").css("border", "1px solid red");
			chkAlert.push("대체 단어");
			isValid = false;
		}
	}
	
	if($("#inputVocaEng").val() == ""){
		$("#vocaEngDiv").css("border", "1px solid red");
		chkAlert.push("영문명");
		isValid = false;
	}
	
	if($("#inputEngShort").val() == ""){
		$("#engShortDiv").css("border", "1px solid red");
		chkAlert.push("영문약어");
		isValid = false;
	}
	
	if($("#inputVocaDef").val() == ""){
		$("#vocaDefDiv").css("border", "1px solid red");
		chkAlert.push("정의");
		isValid = false;
	}
	
	if($("#inputVocaSource").val() == ""){
		$("#vocaSourceDiv").css("border", "1px solid red");
		chkAlert.push("출처");
		isValid = false;
	}

	if(isValid){
		f_submitAppVoca();
	}else{
		var msg = "다음 항목을 입력해주시기 바랍니다.\n";
		for(var i = 0; i < chkAlert.length; i++){
			msg += "- " + chkAlert[i] + "\n";
		}
		alert(msg);
	}	
	
}


function f_submitAppVoca(){
	
	$.ajax({
		
		url			: "appNewVoca",
		type		: "POST",
		data		: $("#appVocaFrm").serialize(),
		dataType    : "text",
		success     : function(data){ 
			alert(data); 
        },
        error       : function(data){
       	 	alert(data); 
        }
	});
}


function f_getAppVocaList(){
	
}