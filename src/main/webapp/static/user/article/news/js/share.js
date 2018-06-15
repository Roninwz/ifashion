var _shareSingleImage;
function resetShareBtn(url,title){
	var url = url || window.location.href,
	title = title || document.title,
	openurl = 'http://service.weibo.com/share/share.php?url=' + url + '&appkey=732517254&ralateUid=1661493522&title='+title+'&pic='+_shareSingleImage;
	window.open(openurl,'_blank','width=650,height=500');
}

$(window).load(function(){
	var shareImg = new Image();
	shareImg.src = "http://new-icon.ol-img.com/channel/beauty/detail/img/sina.png";
	shareImg.id = "shareImg";
	shareImg.style.position = "absolute";
	shareImg.style.left = 0;
	shareImg.style.top = "-999px";
	shareImg.style.zIndex = 999;
	shareImg.style.cursor = "pointer";
	document.body.insertBefore(shareImg,document.body.firstChild);
	$(shareImg).click(function(e){
		e.preventDefault();
		resetShareBtn();
	})
	var timer = null;
	$("#detail_content img").each(function(){
		var pic = $(this).attr("src");
		$(this).mouseover(function(){
			timer && clearTimeout(timer);
			timer = null;
			var position = $(this).position();
			var w = $(this).width(),h = $(this).height();
			$("#shareImg").css({"left":position.left+w-116,"top":position.top+h-34});
			_shareSingleImage = pic;
		})
		$(this).mouseout(function(){
			timer = setTimeout(function(){$("#shareImg").css("top","-999px")},100);
		})
	});
	$("#shareImg").mouseover(function(){
		timer && clearTimeout(timer);
		timer = null;
	})
})


