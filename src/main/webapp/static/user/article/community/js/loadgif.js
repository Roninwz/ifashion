function LoadGif () {
	this.warp = '.article-wrap';
	this.pBoxTag = 'a';
	this.init();
}
LoadGif.prototype = {
	init: function () {
		var self = this;
		if (self.isJquery()) {
			self.warp = '.article-wrap';
			self.pBoxTag = 'a';
			self.clickAction = 'click';
		} else {
			self.warp = 'body';
			self.pBoxTag = 'p';
			self.clickAction = 'tap';
		}
		self.initShade();
	},
	getImg: function (filter) {
		var self = this;
		filter = arguments[0] ? arguments[0] : []
		list = $(self.warp).find('.gif-image').not(function(idx){
			for (var i = 0; i < filter.length; i++) {
				if (idx == filter[i]) {
					return true;
				}
			}

			return false;
		});

		return list;
	},
	initShade: function () {
		var self = this;
		imgList = self.getImg();
		self.mkShade(imgList, []);
	},
	mkShade: function (imgList, filter) {
		var self = this;
		imgList.each(function(idx){
			if ($(this).height() != 0) {
				box = $(this).parent(self.pBoxTag);
				box.prepend(self.shadeStyle($(this).height(), $(this).width()));
				filter.push(idx);
			}
		});
		imgList = self.getImg(filter);
		if (imgList.size() != 0) {
			setTimeout(function(){
				self.mkShade(imgList, filter)
			}, 100);
		} else {
			self.playGif();
		}
	},
	shadeStyle: function (h, w) {
		var self = this;
		if (self.isJquery()) {
			mb = h;
		} else {
			mb = h + 10;
		}
		htmlCode = '<div style="height:' + h + 'px;width:' + w + 'px;margin-bottom:-' + mb + 'px;" class="playGif">' + 
		'<div class="playBtn"></div>' +
		'<div class="gifIcon"></div>' +
		'</div>';

		return htmlCode;
	},
	playGif: function () {
		var self = this;
		$('.playGif').on(self.clickAction, function () {
			var shade = $(this);
			shade.find('.playBtn').addClass('loadingGif');
			shade.find('.playBtn').removeClass('playBtn')
			curImg = shade.parent(self.pBoxTag).find('img');
			gifSrc = curImg.attr('gif-src');
			curImg.attr('src', gifSrc);
			curImg.one('load', function(){
				shade.remove();	
			}).each(function(){
				this.complete && $(this).trigger('load');
			});			
			// curImg.load(function(){
			// 	shade.remove();			
			// });
			return false;
		})
	},
	isJquery: function () {
		if(typeof($.fn) != 'undefined' && typeof($.fn.jquery) != 'undefined'){
			return true;
		}else{
			return false;
		}			
	}
}