(function($){
    function Tab(id){
        this.$el=$(id);
        this.$tabnavs=this.$el.find('.tabNarbar ul li');
        this.$tabcards=this.$el.find('.tabcard');
        this.tabNum=this.$tabnavs.length;
        this.init();
    }
    Tab.prototype.init=function(){
//        Tab.counter=(Tab.counter||0)+1;
//        console.log('new tab :'+ Tab.counter);
        var that=this;
        that.$tabcards.eq(0).show();
        this.$tabnavs.click(function(e){
            var $this=$(this);
            if($this.hasClass('current')){
                return;
            };
            that.$tabcards.hide();
            var index=that.$tabnavs.index($this);
            that.$tabcards.removeClass('current').hide();
            $(that.$tabcards.get(index)).add('current').show();
            $this.siblings().removeClass('current');
            $this.addClass('current');
            that.addSplitLine(index);
        })
    };
    Tab.prototype.addSplitLine=function(currentIndex){
        var that=this;
        this.$el.find('span.vSplitLine').remove();
        this.$tabnavs.each(function(index,el){
            if(index===(that.tabNum-1)){
                return;
            }
            if(index===currentIndex||index===(currentIndex-1)){
                return;
            };
            var $this=$(this);
            $this.append($('<span class="vSplitLine"></span>'));
        })
    }
    $(function(){
        var myTab1=new Tab('#myTab');

        //////////
        $('#detail_content .detail_img_border_none img,#detail_content .detail_img_border img').hover(function(){
            var picLink = (nextPageLink) ? nextPageLink : ((channelPageLink) ? channelPageLink : '');
            if(arrowImg.isAppendToBody!==true){
                $('body').append($('<a></a>').attr('href',picLink).append(arrowImg));
                arrowImg.isAppendToBody=true;
            }
            var $this=$(this);
            var left=$this.offset().left,top=$this.offset().top,w=$this.width(),h=$this.height();
            var arrowLeft=left+w-58,arrowTop=top+(h/2)-41;
            $(arrowImg).css({
                top:arrowTop,
                left:arrowLeft,
                display:'block'
            })
        },function(e){
            if(e.relatedTarget===arrowImg){
                return;
            }
            $(arrowImg).css({
                display:'none'
            })
        });


        $('#shareTrigger').mouseenter(function(){
            $('#bdshare-custom-li').show();
        })
//        $('#bdshare-custom-li').on('mouseout',function(){
//            $(this).hide();
//        })
        $(document).on('mousemove',function(e){
            var $target=$(e.target);
            if($target.parents('#bdshare-custom-li').length!==0||$target.attr('id')=='bdshare-custom-li'){
                return;
            }
            $('#bdshare-custom-li').hide();
        })
    })
})(jQuery);
var arrowImg=new Image();
arrowImg.src="http://new-icon.ol-img.com/channel/fashion/img/arrowImg_2.png";
arrowImg.onload=function(){
    arrowImg.className="arrowImg";
}
