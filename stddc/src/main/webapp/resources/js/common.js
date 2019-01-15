function f_goSelected(selected){
	
	$("#leftMenu li").removeClass("selected");
	//$("#" + selected).addClass("selected");
 
	switch(selected){
	case "app" :
		location.href = "getAppView";
		break;
	case "appList" :
		location.href = "appListView";
		break;
	case "appr" :
		location.href = "apprView";
		break;
	case "rgsList" :
		location.href = "rgsListView";
		break;
	}
	
}
