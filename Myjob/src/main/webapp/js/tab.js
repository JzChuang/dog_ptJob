function switchTag(tag,content,k,n,stylea,styleb){
	for(i=1; i <=n; i++){
		if (i==k){
			document.getElementById(tag+i).className=stylea;
			document.getElementById(content+i).className="showbox";
		}
		else{
			document.getElementById(tag+i).className=styleb;
			document.getElementById(content+i).className="hidden";
		}
	}
}


$(document).ready(function(){
    $('.sidelist').mousemove(function(){
	$(this).find('.i-list').show();
	$(this).find('h3').addClass('hover');
	});
	$('.sidelist').mouseleave(function(){
	$(this).find('.i-list').hide();
	$(this).find('h3').removeClass('hover');
	});
});
$(document).ready(function(){
    $('.bm_entry').mousemove(function(){
	$(this).find('.bm_comment').show();
	});
	$('.bm_entry').mouseleave(function(){
	$(this).find('.bm_comment').hide();
	});
});

//slideUp