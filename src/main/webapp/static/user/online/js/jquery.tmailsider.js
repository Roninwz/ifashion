

(function($) {
	var Z_TMAIL_SIDE_DATA = new Array(); // 用来存放列表数据，暂时没有用到
	
	$.fn.Z_TMAIL_SIDER = function(options) {
		var opts = $.extend( {}, $.fn.Z_TMAIL_SIDER.defaults, options);
		var base = this;
		var target = opts.target;
		var Z_MenuList = $(base).find('.Z_MenuList');
		var Z_SubList = $(base).find('.Z_SubList');
		
		initPosition();

		var isIE = navigator.userAgent.indexOf('MSIE') != -1;
	    var isIE6 = isIE && ([/MSIE (\d)\.0/i.exec(navigator.userAgent)][0][1] == '6');

	 	// 重新定位
		$(window).resize(function() {
			initPosition();
		});
		
	    //if(isIE6) return;
	    
		$(Z_MenuList).find('li').live('mouseover', function(e, index) {
			var thisLi = this;
			var timeOut = setTimeout(function() {
				showSubList(thisLi);
			},200);
			$(Z_SubList).hover(function() {
				clearTimeout(timeOut);
			},function() {
				hideSubList(thisLi);
			});
			e.stopPropagation();
		}).live('mouseout', function(e) {
			var thisLi = this;
			var timeOut = setTimeout(function(){
				hideSubList(thisLi);
			}, 200);
			$(Z_SubList).hover(function() {
				clearTimeout(timeOut);
			},function() {
				hideSubList(thisLi);
			});
			e.stopPropagation();
		});
		function showSubList(thisLi) {
			if(!isIE6) {
				$(thisLi).addClass('curr');
			}
			var thisIndex = $(Z_MenuList).find('li').index($(thisLi));
			var subExList = $(Z_SubList).find('.subView');
			if(thisIndex > subExList.length - 1) return;
			
			var winHeight = $(window).height();
			var absTop = $(thisLi).offset().top-$('.nav li').height()-156;
			//alert($(thisLi).offset().top);
			if(isIE6) {
				absTop = $(thisLi).offset().top - opts.fTop;
			}
			var absLeft = $(target).width();
			
			
			$(subExList).each(function(index) {
				if(index == thisIndex) {
					$(this).show();
				} else {
					$(this).hide();
				}
			});
			
			$(Z_SubList).show().stop().animate({
				top: absTop,
				left: absLeft
			}, 100);
		};

		function hideSubList(thisLi) {
			if(!isIE6) {
				$(thisLi).find('.menuIcon').remove();
				$(thisLi).removeClass('curr');
			}
			$(Z_SubList).hide();
		};
		
		// 定位
		function initPosition() {
			if($(base).css('position') == 'absolute') {
				$(base).css({
					top: 0, 
					left: 0 
				}).show();

				$(Z_SubList).css({
					top: 0,
					left: $(target).offset().left - $(base).offset().left
				});
			}
		};
	};
	
	// 默认配置项
	$.fn.Z_TMAIL_SIDER.defaults = {
		target: $('#Z_TypeList'),
		fTop: 0, // 距离顶部距离
		cTop: 100, // 滚动条滚动多少像素后开始折叠的高度
		unitHeight: 80, // 每滚动多少距离折叠一个
		autoExpan: true
	};
})(jQuery);