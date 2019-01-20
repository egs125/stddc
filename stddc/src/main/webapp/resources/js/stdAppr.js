$(function(){
	
	f_setPage();
	
	$("#nav li").on("click", function(){
		
		var tabId = $(this).find("a").attr("href").substr(1);
		f_selectTab(tabId);
		
	});
	
	/*
	$("#list").jqGrid({
		datatype: "local",
		height: 300,
		colNames: ["단어명", "단어유형", "대체단어", "영문단어", "영문약어명", "정의", "출처", "신청일시"],
		colModel: [
			{name:"voca"},
			{name:"vType"},
			{name:"vSubst"},
			{name:"vEng"},
			{name:"vEngShort"},
			{name:"vDef"},
			{name:"vSource"},
			{name:"vAppDt"}
		],
		caption: "신청 단어"
		
	});
	*/
	
	
});


function f_setPage(){
	
	$("#appr").addClass("selected");
	f_selectTab("voca");
	f_selectList("voca");
}


function f_selectTab(tabId){
	
	$("#nav li").removeClass("active");
	$("#nav a[href='#" + tabId + "'").parent().addClass("active");
	
	$(".content-area").css("display", "none");
	$("#" + tabId).css("display", "block");
	
}


function f_selectList(mode){
	
	$.ajax({	
		url			: "getAppVocaList",
		type		: "POST",
		dataType    : "json",
		success     : function(data){ 
			alert(data); 
        },
        error       : function(data){
       	 	alert(data); 
        }
	});
}