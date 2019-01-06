function f_goSelected(selected){
	
	$("#" + selected).addClass("selected");
 
	if(selected == "app") location.href = "appView";
	else if(seleccted == "rgs") location.href = "appView";
	
}
