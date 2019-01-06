$(function(){
	
	$(".list-group li").on("click", function(){
		var selected = $(this).attr("id");
		f_goSelected(selected);
	});
	
});

