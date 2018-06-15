$(function(){
	if($('.f_ad_clearance').length > 0){
		var  reg = /<[^>]+>/g,txt = $('.f_ad_clearance').html();
		if(reg.test(txt)){$('.f_ad_clearance').css('paddingTop','10px');}
	}
	if($(".QRcode").length>0){
		var w = $(window).width(),h = $(window).height();
		var qr = $(".QRcode").height();
		var winLeft = (w-960) / 2 + 960 + 50;
		var winTop = (h-345) / 2;
		var mtop = -(qr/2);
		$(".QRcode").css({
			left:winLeft,
			top:"35px",
			display:"block",
			height:"auto"
		});
	}
	//导航二维码效果
	$(".js_m_wx").hover(
		function(){$("#fd_m_wx").fadeIn(500);},
		function(){$("#fd_m_wx").fadeOut(100);}
	);
	//首页右侧导航二维码效果
	$(".js-m-code").hover(function(){
		$(this).find(".ewm_wx").show();
	},function(){
		$(this).find(".ewm_wx").hide();
	});
    //totop
    $("#totop").click(function () {
        $('html,body').animate({
            scrollTop: 0
        }, 100);
    })
    function scroll() {
        var top = $(window).scrollTop();
        if (top > 1100) {
            $(".top_sidebar").show();
        } else {
            $(".top_sidebar").hide();
        }
    }
    var t = null;
    $(window).scroll(function () {
        t && clearTimeout(t);
        t = setTimeout(scroll, 100);
    });
});