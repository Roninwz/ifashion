$(document).ready(function () {
	//µ×²¿1px img Òþ²Ø£¬È¥³ý°×Ìõ
	$('#dot_pvm').hide().next().hide();  
  
	txt_focus=0;
	$(document).keydown(function (e) {
        	if(txt_focus==0){
			if (e.keyCode == 37) {
				if (prev) {
					window.location.href = prev;
					Roar.alert({status: 1,msg: "\u6b63\u5728\u4e3a\u60a8\u8df3\u8f6c\u5230\u4e0a\u4e00\u9875..."});
				}
			} else if (e.keyCode == 39) {
				if (next) {
					window.location.href = next;
					Roar.alert({status: 1,msg: "\u6b63\u5728\u4e3a\u60a8\u8df3\u8f6c\u5230\u4e0b\u4e00\u9875..."});
				}
			}
		}
    })
	$("#rl_exp_input").focus(function(){txt_focus=1;});
	$("#rl_exp_input").blur(function(){txt_focus=0;});

    $("#totop").css("left", ($(window).width() - 960) / 2 + 960 + "px");

    $("#totop").click(function () {
        $('html,body').animate({
            scrollTop: 0
        }, 100);
    })
    $("#bshare-custom").hover(function () {
        $(this).addClass('on')
    }, function () {
        $(this).removeClass('on')
    })

    function scroll() {
        var top = $(window).scrollTop();
        if (top > 400) {
            $("#totop").fadeIn();
        } else {
            $("#totop").fadeOut();
        }
    }
    var t = null;
    $(window).scroll(function () {
        t && clearTimeout(t);
        t = setTimeout(scroll, 500);
    });


	$("#vote a[rev]").click(function (e) {
	    e.preventDefault();
	    var type = $(this).attr("rev");
	    $.ajax({
	        type: "POST",
	        url: votePostUrl,
	        data: "c=ArticleHelps&a=AddHelps&" + type + "=1&document_id="+votePostData,
	        success: function (msg) {
	            if (msg == 1) {
                    $("#vote_tip").html("\u6295\u7968\u6210\u529f");
	                $("#" + type).html(parseInt($("#" + type).html()) + 1);
	            } else if (msg == 2) {
                    $("#vote_tip").html("\u4f60\u5df2\u7ecf\u6295\u8fc7\u7968\u4e86");
	            } else {
                    $("#vote_tip").html("\u6295\u7968\u5931\u8d25");
	            }
	        },
	        error: function () {
                $("#vote_tip").html("\u7f51\u7edc\u9519\u8bef");
	        },
            complete:function(){
                $("#vote_tip").show();
            }
	    })
        setTimeout(function(){
            $("#vote_tip").fadeOut();
        },3000)
	})
    try{
        $.ajax({
            type: "POST",
            url: votePostUrl,
            data: "c=ArticleHelps&a=GetHelps&document_id="+votePostData,
            dataType: "json",
            success: function (msg) {
                $("#helps").text(msg["helpnum"]);
                $("#useless").text(msg["uselessnum"]);
            }
        })
    }catch(e){

    }
})


$(window).load(function () {
  	var picLink = (nextPageLink) ? nextPageLink : ((channelPageLink) ? channelPageLink : '');
    var picAlt = (nextPageLink) ? '\u70b9\u51fb\u67e5\u770b\u4e0b\u4e00\u9875' : ((channelPageLink) ? '\u70b9\u51fb\u67e5\u770b\u4e0b\u7bc7\u6587\u7ae0' : '');
//    if (picLink != '') {
        var imgEls = $("#detail_content img");
        imgEls.each(function (i) {
            if (this.width < 100) return;
            var aEl = $(this).parent("a");
            if (aEl.filter("a").attr('href') != undefined) return;
            //this.alt = picAlt;
            this.alt = thistitle;
            this.border = 0;
            $(this).wrap("<a href='" + picLink + "' title='"+ nexttitle +"'></a>");
        });
//    }
})

