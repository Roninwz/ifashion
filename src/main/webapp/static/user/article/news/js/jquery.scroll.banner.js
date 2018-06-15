(function ($) {
    $.fn.banner_scroll = function(options){
        var defaults = {
        		scrollBox:'', //滚动区域
        		scrollElement:'', // 滚动元素的父元素 ul
        		bannerDescriptionClass:'description', // 描述与说明
        		changeNumClass:'', // 切换标签父元素 class名称 不需要切换标签 不用传值
        		isChangeNum:1, // 1：为数字递增递减切换，2为切换标签
        		nextBtClass:'next', // 下翻按钮class名称
        		prevBtClass:'prev',
            setId:null,
            delay:3000, //定时间隔时间
            duration:500,//动画运行时间 num
            addClass:"here",  //changeNum 下选中的当前图标
            isBtshow:true,// 鼠标移入前是否显示切换按钮，true显示 false不显示；默认需要在css里定义
            autoPlay:true,  //是否自动播放
						isShow:false//是否显示内容信息
        }
			var options = $.extend(defaults, options),autoL,autoR,ul=options.scrollElement,allLi=ul.children(),len=allLi.length,thisAdd=0,changeNum,allNum,focusNum;
					allLi.eq(1).css({left:'100%'}).end().last().css({left:'-100%'});
					if(options.isChangeNum==1 && options.changeNumClass){
							changeNum=options.scrollBox.find('.'+options.changeNumClass);
							$('<span>1</span>').appendTo(changeNum);
							$('<em></em>').text(len).appendTo(changeNum);
							focusNum=changeNum.find('span');
						}else if(options.isChangeNum==2 && options.changeNumClass){
							changeNum=options.scrollBox.find('.'+options.changeNumClass);
							allLi.each(function(i,n){
									$('<span>'+(i+1)+'</span>').appendTo(changeNum);
								});		
							allNum=	changeNum.children();	
							allNum.eq(0).addClass(options.addClass);						
							allNum.click(function(){
										var thisAddA,thisAddB,indexIIA,indexIIB;
										var indexII=$(this).index();
												if(indexII - thisAdd ==1){
													autoL();
													}else if(indexII - thisAdd ==-1){
													autoR();
													}else{
														if(!allLi.eq(thisAdd).is(':animated')){
															$(this).addClass(options.addClass).siblings().removeClass(options.addClass);
															allLi.eq(thisAdd).animate({left:'-200%'},options.duration,function(){$(this).css({left:'200%'});});
															thisAddA=thisAdd-1;
															if(thisAddA < 0){thisAddA=len-1;}
															allLi.eq(thisAddA).animate({left:'-200%'},options.duration,function(){$(this).css({left:'200%'});});
															thisAddB=thisAdd+1;
															if(thisAddB > len-1){thisAddB=0;}
															allLi.eq(thisAddB).animate({left:'-200%'},options.duration,function(){$(this).css({left:'200%'});});
															
															allLi.eq(indexII).animate({left:'0'},options.duration,function(){});
															indexIIA=indexII-1;
															if(indexIIA < 0){indexIIA=len-1;}
															allLi.eq(indexIIA).animate({left:'-100%'},options.duration,function(){});
															indexIIB=indexII+1;
															if(indexIIB > len-1){indexIIB=0;}
															allLi.eq(indexIIB).animate({left:'100%'},options.duration,function(){});
															thisAdd=	indexII;														
														}
													}
										return false;
								});
						}else{
							return false;
						}
						autoL=function(){
								var thisAddA,thisAddB,thisAddC;
								if(!allLi.eq(thisAdd).is(':animated')){										
										allLi.eq(thisAdd).animate({left:'-100%'},options.duration,function(){});
        						thisAddA=thisAdd+1;
        						if(thisAddA > len-1){thisAddA=0;}
        						allLi.eq(thisAddA).animate({left:'0'},options.duration,function(){});
        						thisAddB=thisAddA+1;
        						if(thisAddB > len-1){thisAddB=0;}
        						allLi.eq(thisAddB).animate({left:'100%'},options.duration,function(){});
        						thisAddC=thisAdd-1;
        						if(thisAddC < 0){thisAddC=len-1;}
        						allLi.eq(thisAddC).animate({left:'-200%'},options.duration,function(){
        							$(this).css({left:'200%'});
        							if(options.isChangeNum==1 && options.changeNumClass){focusNum.html(thisAddA+1);}
        							if(options.isChangeNum==2 && options.changeNumClass){allNum.removeClass(options.addClass).eq(thisAddA).addClass(options.addClass);}	
        							});
        						if(options.bannerDescriptionClass && !options.isShow){allLi.eq(thisAdd).find('.'+options.bannerDescriptionClass).fadeOut(400).end().end().eq(thisAddA).find('.'+options.bannerDescriptionClass).fadeIn(600);}
										thisAdd=thisAddA;
									}
							}
						autoR=function(){
							var thisAddA,thisAddB,thisAddC;
							if(!allLi.eq(thisAdd).is(':animated')){
								allLi.eq(thisAdd).animate({left:'100%'},options.duration,function(){});
								thisAddA=thisAdd+1;
								if(thisAddA > len-1){thisAddA=0;}
								allLi.eq(thisAddA).animate({left:'200%'},options.duration,function(){});
								thisAddB=thisAdd-1;
								if(thisAddB < 0 ){thisAddB=len-1;}
								allLi.eq(thisAddB).animate({left:'0'},options.duration,function(){
									if(options.isChangeNum==1 && options.changeNumClass){focusNum.html(thisAddB+1);}
									if(options.isChangeNum==2 && options.changeNumClass){allNum.removeClass(options.addClass).eq(thisAddB).addClass(options.addClass);}
									});
								thisAddC=thisAddB-1;
								if(thisAddC < 0 ){thisAddC=len-1;}
								allLi.eq(thisAddC).css({left:'-200%'}).animate({left:'-100%'},options.duration,function(){});
        				if(options.bannerDescriptionClass && !options.isShow){allLi.eq(thisAdd).find('.'+options.bannerDescriptionClass).fadeOut(400).end().end().eq(thisAddB).find('.'+options.bannerDescriptionClass).fadeIn(600);}
								thisAdd=thisAddB;
							}
						}
      			options.scrollBox.on('mouseenter','.'+options.changeNumClass,function(){
      					if(options.setId){clearInterval(options.setId);options.setId=null;}
      				})
      			options.scrollBox.on('mouseleave','.'+options.changeNumClass,function(){
      					if(!options.setId && options.autoPlay){options.setId=setInterval(autoL,options.delay);}
      				})
      			options.scrollBox.on('mouseenter','.'+options.nextBtClass,function(){
      					if(options.setId){clearInterval(options.setId);options.setId=null;}
      				})
      			options.scrollBox.on('mouseleave','.'+options.nextBtClass,function(){
      					if(!options.setId && options.autoPlay){options.setId=setInterval(autoL,options.delay);}
      				})
      			options.scrollBox.on('click','.'+options.nextBtClass,function(){
      					autoL();return false;
      				})
      			options.scrollBox.on('mouseenter','.'+options.prevBtClass,function(){
      					if(options.setId){clearInterval(options.setId);options.setId=null;}
      				})
      			options.scrollBox.on('mouseleave','.'+options.prevBtClass,function(){
      					if(!options.setId && options.autoPlay){options.setId=setInterval(autoL,options.delay);}
      				})
      			options.scrollBox.on('click','.'+options.prevBtClass,function(){
      					autoR();return false;
      				})
      			options.scrollBox.on('mouseenter',function(){
      					if(!options.isBtshow){
      						$('.'+options.prevBtClass).css({display:'block'});
      						$('.'+options.nextBtClass).css({display:'block'});
      						}
      				})
      			options.scrollBox.on('mouseleave',function(){
      					if(!options.isBtshow){
      						$('.'+options.prevBtClass).css({display:'none'});
      						$('.'+options.nextBtClass).css({display:'none'});
      						}
      				})					
						if(options.autoPlay){options.setId=setInterval(autoL,options.delay);}
    };
})(jQuery);
