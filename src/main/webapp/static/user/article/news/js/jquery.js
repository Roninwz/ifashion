(function ($) {
    $.fn.pic_scroll = function(options){
        var defaults = {
        		scrollBox:'', //滚动区域
        		scrollElementAll:'', // 滚动的元素
        		changeNumClass:'', // 切换标签父元素 class名称 不需要切换标签 不用传值
        		nextBtClass:'next', // 下翻按钮class名称
        		prevBtClass:'prev',
            setId:null,
            delay:3000, //定时间隔时间
            duration:'normal',//动画运行时间 normal,fast,slow 或num
            addClass:"here",  //changeNum 下选中的当前图标
            isBtshow:true,// 鼠标移入前是否显示切换按钮，true显示 false不显示；默认需要在css里定义
            autoPlay:true,  //是否自动播放
            isNeedNum:true //是否需要js插入切换标签 true需要 false 不需要
        }
        var options = $.extend(defaults, options),autoL,autoR,thisAdd=0,len=options.scrollElementAll.length,changeNum,allNum;
				if(len == '1'){options.autoPlay = false;}
    		if(options.changeNumClass){
    			changeNum=options.scrollBox.find('.'+options.changeNumClass);
    			if(options.isNeedNum){
      			options.scrollElementAll.each(function(i){
								i++;
      					$('<span>'+i+'</span>').appendTo(changeNum);
      				});
    			}
    			allNum=changeNum.children();
    			allNum.eq(0).addClass(options.addClass);
    			allNum.click(function(){
    					var ii=$(this).index();
    					if(ii!=thisAdd){
    							$(this).addClass(options.addClass).siblings().removeClass(options.addClass);
    							options.scrollElementAll.eq(thisAdd).animate({left:'-100%'},options.duration,function(){$(this).css({left:'100%'});});        							
    							options.scrollElementAll.eq(ii).animate({left:'0'},options.duration,function(){});
    							thisAdd=ii;
    						}
    					return false;
    				}).mouseenter(function(){if(options.setId){clearInterval(options.setId);options.setId=null;}}).mouseleave(function(){if(!options.setId){options.setId=setInterval(autoL,options.delay);}});
    		}
        		autoL=function(){
        				if(!options.scrollElementAll.eq(thisAdd).is(':animated')){
        						options.scrollElementAll.eq(thisAdd).animate({left:'-100%'},options.duration,function(){$(this).css({left:'100%'});});
        						thisAdd++;
        						if(thisAdd > len-1){thisAdd=0;}
         						options.scrollElementAll.eq(thisAdd).animate({left:'0'},options.duration,function(){if(options.changeNumClass){allNum.removeClass(options.addClass).eq(thisAdd).addClass(options.addClass);}});
       					}
        			};
        		autoR=function(){
        				if(!options.scrollElementAll.eq(thisAdd).is(':animated')){
        						options.scrollElementAll.eq(thisAdd).animate({left:'100%'},options.duration,function(){});
        						thisAdd--;
        						if(thisAdd < 0){thisAdd=len-1;}
         						options.scrollElementAll.eq(thisAdd).css({left:'-100%'}).animate({left:'0'},options.duration,function(){if(options.changeNumClass){allNum.removeClass(options.addClass).eq(thisAdd).addClass(options.addClass);}});
       					}
        			};
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
        				// h5
						var move_startX = 0,move_startY = 0,move_e_touch=null,touchDown=false;
							options.scrollBox.on('touchstart',function(e){
						//		e.preventDefault();
						//		e.stopPropagation();
						    touchDown = true;
						    if(options.setId){clearInterval(options.setId);options.setId=null;}
						    if(e.originalEvent.targetTouches[0].pageY){
						    	move_e_touch=e.originalEvent.targetTouches[0];
						    	}else{
						    		move_e_touch=e.targetTouches[0];
						    	}
						    move_startX = move_e_touch.pageX;
						    move_startY = move_e_touch.pageY;
						    
								});
							options.scrollBox.on('touchmove',function(e){
						    if(touchDown != true){
						        e.preventDefault();e.stopPropagation();
						        return false;	    }
						    e.preventDefault();e.stopPropagation();
						    if(e.originalEvent.targetTouches[0].pageY){
						    	move_e_touch=e.originalEvent.targetTouches[0];
						    	}else{
						    		move_e_touch=e.targetTouches[0];
						    	}	 
						   var 	move_endX = move_e_touch.pageX;
						   var 	move_endY = move_e_touch.pageY;
						    var bothX=move_endX - move_startX;
						    		if(bothX > 10){
						    			touchDown=false;
						    			autoR();
						    			if(!options.setId && options.autoPlay){options.setId=setInterval(autoL,options.delay);}
						    			}else if(bothX < -10){
						    			touchDown=false;
						    			autoL();
						    			if(!options.setId && options.autoPlay){options.setId=setInterval(autoL,options.delay);}
						    			}
								});
						options.scrollBox.on('touchend',function(e){
								    if(touchDown != true){
							        e.preventDefault();
							        return false;
							    }		
					//	    e.preventDefault();
						//    touchDown = false;
						    
							});	
        				
        		
        		if(options.autoPlay){options.setId=setInterval(autoL,options.delay);}
						
    };
})(jQuery);
