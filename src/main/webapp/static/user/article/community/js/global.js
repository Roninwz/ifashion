$(function(){
	//统计
	var _gaq = _gaq || []; 
	function _trackPageview(url) {
	    _gaq.push(['bazaarTracker._trackPageview', url.split("com.cn")[1]]);
	}
	function trackPageview(pindex , name ){
	    var baseUrl = window.location.href;
	    window.location.href = baseUrl.split('#')[0] + '#'+ name +'=' + pindex;
	    _trackPageview(window.location.href);
	}
	window.trackPageview = trackPageview;
	//登录
	var navLogin = {
		init: function(){
			var self = this;
			self.authcookie = $.cookie('trends_bazaar_auth');
			self.infocookie = $.cookie('trends_bazaar_uinfo');
			self.loginBtn = $('#nav-container .login');
			self.MSIE8 = navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion .split(";")[1].replace(/[ ]/g,"")=="MSIE8.0";
		
			self.loginBtn.click(function() {
				if(self.MSIE8) { 
					window.location.href="http://passport.bazaar.com.cn/login.shtml";
				}else{
					loginDialog.init();	
				}
			});
			if(self.infocookie){
				self.afterLogin();
			}
			
			if(self.infocookie && $('.article-wrap').length){
				$('.article-wrap audio').parent().find('a').show();
				$('.article-wrap audio').parent().find('span').hide();
			}else{
				$('.article-wrap audio').parent().find('span').show();
				$('.article-wrap audio').parent().find('a').hide();
			}
		},
		afterLogin: function(){
			var self = this;
			var uinfo = eval("("+ self.infocookie +")"), 
				links = 'http://www.bazaar.com.cn/u/'+uinfo.uid+'/collect/',
				facesrc = 'http://passport.bazaar.com.cn/index.php?c=user&a=avatar&uid=' + uinfo.uid +'&t=s',
				myurl = 'http://www.bazaar.com.cn/collection/u'+uinfo.uid+'/p1.shtml';
				
			if(self.authcookie!='' && uinfo.uid!=''&&uinfo.username!=''){
				var afterhtml = '<div class="face"><img src="'+ facesrc +'"></div>\
					<div class="dropdown">\
						<div class="user-box">\
							<img src="'+ facesrc +'" />\
							<em>'+ uinfo.username +'</em>\
						</div>\
						<a href='+ myurl +'  target="_blank">我的主页</a>\
						<a href="http://passport.bazaar.com.cn/edit.shtml" target="_blank">资料修改</a>\
						<a href="http://passport.bazaar.com.cn/?c=user&a=editavatar" target="_blank">修改头像</a>\
						<a class="quit" href="javascript:;">安全退出</a>\
						</div>';
				self.afterDom = $('#nav-container .after-login');
				self.afterDom.html(afterhtml);
				$('#nav-container .before-login').hide();
				self.bindEvent();
			}
		},
		bindEvent: function(){
			var self = this;
			self.afterDom.mouseenter(function() {
				$(this).find('.dropdown').show();
			});
			self.afterDom.mouseleave(function() {
				$(this).find('.dropdown').hide();
			});
			self.afterDom.find('.quit').click(function() {
				loginDialog.logout();
			});
		}
	};
	if($('.login-box').length){
		navLogin.init();
	}
	
	// header nav bar
	$(window).on('scroll', {
		previousTop: 0 
	},function() {
		var currentTop = $(window).scrollTop();
		var t = $('.header').offset().top + $('.header').height() + 70;
		if ( currentTop < this.previousTop) { //向上滚动
			if (currentTop > t && $('.nav-container').hasClass('fix')) {
				$('.nav-container').addClass('static');
			} else {
				$('.nav-container').removeClass('static fix');
			}
		} else {
			$('.nav-container').removeClass('static');
			$('.top-search').css('display','none');
			if (currentTop > t && !$('.nav-container').hasClass('fix')) {
				$('.nav-container').addClass('fix');
			}
		}
		this.previousTop = currentTop;
	});
	
	//搜索
	var searchBtn = $('.search-btn'),
		searchText = $('.search-input');
	$('.button-search').click(function(e){
		e.preventDefault();
		$('.top-search').toggle();
	})
	$('.search-close').click(function(){
		$('.top-search').hide();
	});
	function searchjump(t){
		if($.trim(t.closest('.form').find('.search-input').val())){
			var url = 'https://www.baidu.com/s?wd='+ encodeURI(t.closest('.form').find('.search-input').val()) +'%20site%3Abazaar.com.cn';
			window.open(url);
		}
	}
	searchBtn.click(function(t){
		searchjump($(this))
	});
	searchText.keydown(function(t) {
		if (event.keyCode == "13") {
			searchjump($(this))
		}
	});
	//news
	if($('.top-news').length){
		$('.top-news').switchable({
			triggers: false,
			panels: 'li',
			easing: 'ease-in-out',
			effect: 'scrollUp',
			steps:1,
			visible: 1, 
			end2end: true,
			autoplay: true
		});
	}
	//右侧float
	$(window).scroll(function() {
		// share bar
		var h = $(window).scrollTop();
		if (h > 500) {
			$('.scroll-bar').fadeIn(300);
		} else {
			$('.scroll-bar').fadeOut(300);
		}
	});
	$('.scroll-top').click(function(){
		$('html,body').animate({scrollTop: '0px'}, 500);
		return false;
	});

	
	//友情链接
	if($('#links').length && $('#links .links-list').height() > 48){
		linkScroll($('#links .links-list')); 
	}

	//广告遮罩
	function adMask () {
		$('.ad-zone,.advertising,.ad1000-90').each(function(){
			adContents = $.trim($(this).html());
			if (adContents != '') {
				maskDiv = '<div style="right:0px;bottom:0px;" class="ad-icon"></div>';
				$(this).prepend(maskDiv);
			}
		});
	}

	if ($('.ad-zone,.advertising,.ad1000-90').length) {
		adMask();
	}
});


//友情链接跑马灯
var linkScroll = function(obj){
	var thisList = obj.find("ul:first"),
		lineH= thisList.find("li:first").height(), 
		listH = thisList.height();
	obj.append(obj.html()); 

	scrollUp = function(){
		mrgnH = parseInt(thisList.css('marginTop'),10)-lineH;
		thisList.animate({ marginTop:mrgnH },500,function(){
            if(Math.abs(mrgnH)>=listH){ 
                thisList.css({marginTop:0});
            } 
        }); 
	}
	thisList.hover(function(){ 
        clearInterval(timerID); 
    },function(){ 
        timerID=setInterval("scrollUp()",3000); 
    }).mouseout(); 
}


//喜欢+1 动画脚本
;(function($) {
	$.extend({
		tipsBox: function(options) {
				options = $.extend({
						obj: null,  //jq对象，要在那个html标签上显示
						str: "+1",  //字符串，要显示的内容;也可以传一段html，如: "<b style='font-family:Microsoft YaHei;'>+1</b>"
						startSize: "12px",  //动画开始的文字大小
						endSize: "30px",    //动画结束的文字大小
						interval: 600,  //动画时间间隔
						color: "red",    //文字颜色
						callback: function() {}    //回调函数
				}, options);
				$("body").append("<span class='num'>"+ options.str +"</span>");
				var box = $(".num");
				var left = options.obj.offset().left + options.obj.width();
				var top = options.obj.offset().top ;
				box.css({
						"position": "absolute",
						"left": left + "px",
						"top": top + "px",
						"z-index": 9999,
						"font-size": options.startSize,
						"line-height": options.endSize,
						"color": options.color
				});
				box.animate({
						"font-size": options.endSize,
						"opacity": "0",
						"top": top - parseInt(options.endSize) + "px"
				}, options.interval , function() {
						box.remove();
						options.callback();
				});
		}
	});
})(jQuery);
