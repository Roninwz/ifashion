$(function(){
   	 //瀑布流
    var $container = $('.c3_r_list');
    setTimeout(function(){
        //masonry
        $container.masonry({
            itemSelector: '.c3_r_item',
            columnWidth: 220,
            gutterWidth:20
        });
    },100);
    $(".c3_r_con img").on("load",function(){
        $container.masonry({
            itemSelector: '.c3_r_item',
            columnWidth: 220,
            gutterWidth:20
        });
    });
})
$(document).ready(function(){
    var host = location.hostname;
    $(".t2_nav a").each(function(){
        if ($(this).attr("href").indexOf(host) == -1) {
            $(this).removeClass("current");
        } else {
            $(this).addClass("current");
        }
    });



	//老版焦点图
    $("#c0_scro").scrollable({circular:true,prev:'#c0_prev',next:'#c0_next'}).autoscroll({ autoplay: true,interval: 5000}).navigator({navi:'#c0_scro_nav'});
	if($("#c0_scro_new").length > 0 && $("#c0_scro_new li").length > 1){//新版焦点图
		$("#c0_scro_new").pic_scroll({scrollBox:$("#c0_scro_new"),scrollElementAll:$("#c0_scro_new li"),changeNumClass:'c0_scro_nav_new',nextBtClass:'c0_next_new',prevBtClass:'c0_prev_new',delay:5000});
	}

    $(".c0_share").hover(function(){$(this).next().show();},function(){$(this).next().hide();})
    $(".p_share").hover(function(){$(this).show();},function(){$(this).hide();})
    if($(".c0_r_4t div").eq(0).text()==""){
        $(".c0_r_4t span").eq(0).empty()
    }
    $(".c0_r_4t").tabs(".c0_r_4b>ul");
//	$("#c1_r_t").autoFade({ nav:'#c1_r_nav',interval:5000,tag:"div",activeClass:"active" });
	//老版焦点图
    $("#c2_r_t").scrollable({circular:true,prev:'#c2_prev',next:'#c2_next'}).autoscroll({ autoplay: true,interval: 5000}).navigator({navi:'#c2_r_nav'});
	if($("#c2_r_t_new").length > 0){//新版焦点图
		$("#c2_r_t_new").pic_scroll({scrollBox:$("#c2_r_t_new"),scrollElementAll:$("#c2_r_t_new li"),changeNumClass:'c2_r_nav_new',nextBtClass:'scro_r_new',prevBtClass:'scro_l_new',delay:5000});
	}

	$(".c2_l_t").tabs("ul.c2_l_c", {current: 'active'});

	$(".c3_r_item").hover(
		function(){
	    	$(this).addClass("hover");
		},function(){
			$(this).removeClass("hover");
		}
	);

    $(".top_sidebar_code").hover(function(){$("#ewm_wx").show()},function(){$("#ewm_wx").hide()})
    //totop
    $("#totop").click(function () {
        $('html,body').animate({
            scrollTop: 0
        }, 100);
    })
    function scroll() {
        var top = $(window).scrollTop();
        if (top > 1200) {
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
    $(".view_t").tabs(".view_b>ul");
    $(".channel_link_bt").tabs(".channel_link_i",{event:"mouseover"});
    //底部1px img 隐藏，去除白条
    $('#dot_pvm').hide().next().hide();
});