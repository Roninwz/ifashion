$(function() {
    var focusBanner = function() {
        var $focusBanner = $("#focus-banner"),
            $bannerList = $("#focus-banner-list li"),
            $focusHandle = $(".focus-handle"),
            $bannerImg = $(".focus-banner-img"),
            $nextBnt = $("#next-img"),
            $prevBnt = $("#prev-img"),
            $focusBubble = $("#focus-bubble"),
            bannerLength = $bannerList.length,
            _index = 0,
            _timer = "";

        var _height = $(".focus-banner-img").find("img").height();
        $focusBanner.height(_height);
        $bannerImg.height(_height);

        $(window).resize(function() {
            window.location.reload()
        });

        for (var i = 0; i < bannerLength; i++) {
            $bannerList.eq(i).css("zIndex", bannerLength - i);
            $focusBubble.append("<li>&bull;</li>");
        }
        $focusBubble.find("li").eq(0).addClass("current");
        var bubbleLength = $focusBubble.find("li").length;
        $focusBubble.css({
            "width": bubbleLength * 30,
            "marginLeft": -bubbleLength * 15
        }); //初始化

        $focusBubble.on("click", "li", function() {
            $(this).addClass("current").siblings().removeClass("current");
            _index = $(this).index();
            changeImg(_index);
        }); //点击轮换

        $nextBnt.on("click", function() {
            _index++
            if (_index > bannerLength - 1) {
                _index = 0;
            }
            changeImg(_index);
        }); //下一张

        $prevBnt.on("click", function() {
            _index--
            if (_index < 0) {
                _index = bannerLength - 1;
            }
            changeImg(_index);
        }); //上一张

        function changeImg(_index) {
            $bannerList.eq(_index).fadeIn(250);
            $bannerList.eq(_index).siblings().fadeOut(200);
            $focusBubble.find("li").removeClass("current");
            $focusBubble.find("li").eq(_index).addClass("current");
            clearInterval(_timer);
            _timer = setInterval(function() {
                $nextBnt.click()
            }, 4000)
        } //切换主函数
        _timer = setInterval(function() {
            $nextBnt.click()
        }, 4000)
    }();

    //$(".apkk ul").append($(".apkk ul").html());
    $('.apkk ul').append($($('.apkk ul').children()).first().clone()); //克隆第一个到最后面
    $('.apkk ul').prepend($($('.apkk ul').children()).eq(-2).clone()); //倒数第二个克隆到最前面

    var x = 0;
    var a = $('.apkk ul li').width();
    var b = $('.apkk ul li').length;
    var c = 0;
    var timr = '';
    c += a * b;
    $(".apkk ul").width(c);
    $('.but_right').on('click', function() {
        clearTimeout(timr);
        timr = setTimeout(nextBox, 300);
    })
    $('.but_left').on('click', function() {
        clearTimeout(timr);
        timr = setTimeout(prevBox, 300);
    });

    function nextBox() {
        if (x == -c + a * 5) {
            $(".apkk ul").css({
                left: 0 + "px"
            });
            x = 0;
        }
        x -= 282;
        $(".apkk ul").animate({
            left: +x + "px",
        }, 400);
    };

    function prevBox() {
        if (x == 0) {
            $(".apkk ul").css({
                left: -c + 4 * a + "px"
            });
            x = -c + 4 * a;
        };
        x += 282;
        $(".apkk ul").animate({
            left: +x + "px",
        }, 400);
    };

    //图片闪光
    var gaga = $('.graphic-upper');
    gaga.append('<span class="ray"></span>');

    //图片闪光
    var gcgc = $('..works-picture .picture-upper .works-picture-uibb');
    gcgc.append('<span class="rcy"></span>');
    /*
	//导航栏
	var daoul = $('.visual ul');
	var daxli = $('.visual ul li');
	var visualwidth = $('.visual').width();
	var daoli = $('.visual ul li').length;
	var daoliwidth = $('.visual ul li').width();
	var ddx = daoli * daoliwidth
	var classify = $('.classify');
	var z = 0;
	var Len
	daoul.width(ddx);
	classify.append('<div class="left"><span></span></div>');
	classify.append('<div class="right"><span></span></div>');
	if (ddx <= visualwidth) {
		$('.left').css({
			'display': 'none'
		});
		$('.right').css({
			'display': 'none'
		});
	} else {
		$('.left').css({
			'display': 'block'
		});
		$('.right').css({
			'display': 'block'
		});
	}
	$(".right").click(function () {
		if (z == -ddx + visualwidth && ddx > visualwidth) {
			z = -ddx + visualwidth;
			return;
		}
		if (ddx < visualwidth) {
			z == 0;
			return;
		}
		z -= 177;
		daoul.animate({
			left: +z + "px",
		}, 400);
	});
	$(".left").click(function () {
		if (z == 0) {
			z = 0;
			return;
		}
		z += 177;
		daoul.animate({
			left: +z + "px",
		}, 400);
    });
  */
    var daxli = $('.visual ul li');
    daxli.children().first().addClass("choice-b");
    daxli.click(function() {
        $(this).find('span').addClass('choice-b');
        $(this).siblings().find('span').removeClass('choice-b');
    });

    //在线定制两张图片显示隐藏。
    $('.hideimgx').hide();
    var $pict = $('.item-s-pic');
    $pict.live("mouseover", function() {
        $(this).children().eq(0).hide();
        $(this).children().eq(1).show();
    });
    $pict.live("mouseout", function() {
        $(this).children().eq(1).hide();
        $(this).children().eq(0).show();
    });

    $("#focus-banner").on("mouseover", function() {
        $("#next-img,#prev-img").show();
    })
    $("#focus-banner").on("mouseout", function() {
        $("#next-img,#prev-img").hide();
    })
    $(".classify").on("mouseover", function() {
        $(".left,.right").show();
    })
    $(".classify").on("mouseout", function() {
        $(".left,.right").hide();
    })
    $(".iiia").on("mouseover", function() {
        $(".but_left,.but_right").show();
    })
    $(".iiia").on("mouseout", function() {
        $(".but_left,.but_right").hide();
    })

});