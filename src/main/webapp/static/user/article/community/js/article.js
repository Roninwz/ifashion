//编辑推荐
function editorPick(){
	var box = $('#img-flip'),
		prv = box.find('.pre-er'),
		next = box.find('.next-er'),
		list = box.find('.list-er'),
		item = list.find('li');
	
	if(!list.length) return;
	list.switchable({
	    triggers: false,
	    putTriggers: 'insertBefore',
	    panels: 'li',
	    easing: 'ease-in-out',
	    effect: 'scrollLeft',
	    steps:1,
	    visible: 1, // important
	    end2end: true,
	    autoplay: false,
	     prev: prv,
   		 next: next
	  });
}

//收藏功能
var baseUrl = '/';
var collection={
	init:function(){
		var self = this;
		self.collectBtn = $('.like-to');
		self.collectTip = $('.collect-tips');
		self.mid = document_id;
		self.num = 0;
		self._getInfo();
		self._bind();
	},
	_getInfo:function(){ //登录后通过调取接口信息判断这篇文章是否收藏过
		var self = this,
			authcookie = $.cookie('trends_bazaar_auth'),
			infocookie = $.cookie('trends_bazaar_uinfo'),
			uinfo = eval("("+ infocookie +")"), 
			collectUrl = baseUrl + 'files/eventapi.php?c=bazaaruser_collectionlist&a=check&did='+self.mid,
			collectNumUrl = baseUrl + 'files/eventapi.php?c=ArticleHelps&a=GetPicExp&type=1&document_id='+ self.mid;
			console.log(collectUrl)
		if($('.login-box').length){
			if(authcookie!='' && infocookie){ 
	       		$.ajax({
	                type: "GET",
	                url: collectUrl,
	                dataType: "json",
	                success: function (msg) {
	                	if (msg.msg==1) {
	                        self.collectBtn.addClass("liked");
	                    }
	                }
	            });
	        }
		}
		//获取收藏数
		$.ajax({
			'type': 'GET',
			'url' : collectNumUrl,
			'dataType': 'json',
			success: function(data){
				if(typeof data == undefined){
					self.collectBtn.find('.like-num').html(0);
				}else{
					self.collectBtn.find('.like-num').html(data.zan);
				}
			}
		});
	    

	},
	_bind:function(){  //点击收藏按钮触发事件
		var self = this,data;
		self.collectBtn.click(function(){
			self.num = parseInt($(this).find('.like-num').text());
			if($(this).hasClass('liked')){ //取消收藏
				data = {"c":"bazaaruser_collectionlist","a":"del","did":self.mid}
                self._collectAjax(data,"cancel");
            }else{
				data = {"c":"bazaaruser_collectionlist","a":"add","did":self.mid}
                self._collectAjax(data,"collect");
			}
		});
	},
	_collectAjax:function(data,type){ 
		var self = this,
			url = baseUrl +  'files/eventapi.php';
		$.ajax({
            type:"POST",
            url:url,
            cache:false,
            async:false,
            data:data,
            dataType:"json",
            success:function(rep){
            	self.collectTip.html(rep.msg).fadeIn();
                setTimeout(function(){
                    self.collectTip.fadeOut();
                },2000);
                if(rep.err==0){
                    if(type=="collect"){
                    	self.collectBtn.addClass('liked');
                    	$.tipsBox({
							obj: self.collectBtn,
							str: "+1",
							callback: function() {
								self.collectBtn.find('.like-num').text(self.num+1);
							}
						});
                    }else{
                    	self.collectBtn.removeClass('liked');
                    	self.collectBtn.find('.like-num').text(self.num-1);
                    }
                }
            },
            error:function(){}
        });
	}
}



$(function(){

	//右侧更随左侧调用
	var _srcList = [], i = 0;
    $('.article-content img').each(function(){
        _srcList.push($(this).attr('src'));
    });
    function imgLoadComplate(imgSrc){
        var _img = new Image();
        _img.src = imgSrc;
        _img.onload = function(){
            if (i < _srcList.length-1) {
                i++;
                imgLoadComplate(_srcList[i]);
            }else{
                $('.right-container').height( $('.left-container').height());
				$('.right-sticky').hcSticky({
		    		wrapperClassName: 'sidebar-sticky'
				});
            }
        }
    }
    imgLoadComplate(_srcList[i]);

	
	

	//编辑推荐调用
	editorPick();

	//图库调用
	if($('#article-content').length){
		$('.ad-gallery').adGallery();
	}
	//收藏调用
	collection.init();





});


//hide changyan float
// $(document).ready(function(){
//     $(".module-cmt-notice").hide();
// 	$(".nt-list").hide();   
// });





