$(function () {
    //图片效果
    $("a img").mouseover(function () {
        var obj = this;
        $(this).attr('style', 'opacity: 0.8;filter:alpha(opacity=80);');
        var show = function () {
            $(obj).attr('style', '');
        }
        setTimeout(show, 200);
    });

    //导航栏点击效果
    $(".cur").prev("li").find(".name-cn").css("border", "0px");


    $(".five-c li").mouseover(function () {
        $(this).find("div").show();
    });
    $(".five-c li").mouseleave(function () {
        $(this).find("div").hide();
    });
    $(".js-img").mouseover(function () {
        $(this).children("div").show();
    });
    $(".js-img").mouseleave(function () {
        $(this).children("div").hide();
    });


    //导航栏下级分类菜单
    $(".sub-nav-item").mouseover(function () {
        $(this).find(".sub-item-list-box").css("visibility", "visible");
	    /*function box(){
			$(".sub-item-list-box").height();
		}
		$(".sub-item-list-box").resize(box);
		$(this).find('.item-list-ul ul').css('height',$(this).find('.item-list-ul').css('height'));*/
    });
    $(".sub-nav-item").mouseleave(function () {
        $(this).find(".sub-item-list-box").css("visibility", "hidden");
    });

    //coming soon
    $(".dl-index li").mouseover(function () {
        $(this).children(".screen").show();
        $(this).children(".coming").show();
    });
    $(".dl-index li").mouseleave(function () {
        $(this).children(".screen").hide();
        $(this).children(".coming").hide();
    });

	$(".third-box-top li:first-child").find(".third-img-box").css("visibility", "visible");
	$(".third-box-top li:first-child").find(".js-p span").css("color", "#ff6162");
	 $(".js-p").hover(function () {
        $(".third-img-box").css("visibility","hidden");
        $(".js-p span").css("color", "#666");
        $(this).next(".third-img-box").css("visibility","visible");
        $(this).find("span").css("color", "#ff6162");
    });
	
	//IE6 分类
	var broType = '';
    if ($.browser.msie) { broType = "Microsoft Internet Explorer " + $.browser.version; }
    else if ($.browser.mozilla) { broType = "Mozilla Firefox " + $.browser.version; }
    else if ($.browser.safari) { broType = "Apple Safari " + $.browser.version; }
    else if ($.browser.opera) { broType = "Opera " + $.browser.version; }
    else {
        broType = "google";
    }
	
	function listCenter(){
		if ($.browser.version == "6.0") {
            var sWidth=$(".sub-nav-wrapper-bg").width();
	        $(".sub-item-list-box").css("width",sWidth);
        }
	}
	listCenter();
	$(window).resize(listCenter);
	//background-color
	$(".idx-custom").parent(".body").css("background-color","#fff");
	$(".idx-home").parent(".body").css("background-color","#fff");
	
	
	
});