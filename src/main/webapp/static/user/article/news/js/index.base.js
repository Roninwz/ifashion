$(function(){
	
//Today's Focus
$('.todayFocus .list li:empty').remove();
$('.todayFocus .list dd li').mouseenter(function(){var ii=$('.todayFocus .list dd li').index($(this)); $(this).addClass('here').siblings().removeClass('here');$(this).parents('dl').find('dt li').css({left:'100%'}).eq(ii).css({left:'0'});});
//添加广告提示
$('.todayFocus .list dd input:hidden').each(function(){
	var txt='广告— '+$(this).siblings('a').text();
		$(this).siblings('a').html(txt);
		
	//	var ii=$('.todayFocus .list dd a').index($(this).prev()),ele=$('.todayFocus .list dt a').eq(ii),span_=$('.todayFocus .list dt>span').eq(0);
	//			span_.css({display:'inline-block'}).appendTo(ele);		
	});
	/*
$('.todayFocus .list dt input:hidden').each(function(){
	var elem=$(this).prev();
		$('<span></span>').appendTo(elem).css({position:'absolute',left:'0',bottom:'0',background:'url(http://new-img1.ol-img.com/assets/ad_picture/ggw.png) 0 0 no-repeat',width:'25px',height:'15px',display:'inline-block'});
	});
	*/
	//video 滚动条
	$('#video_scrollbar').tinyscrollbar({sizethumb: 'auto',size:'auto'}); 
//达人说 滚动条
$('.blogArea .darenSays').tinyscrollbar({sizethumb: 'auto',size:'auto'}); 
	//视频切换
	$('.js_video_tab>li').hover(function(){$(this).css('backgroundColor','#292929');},function(){$(this).css('backgroundColor','#1f1f1f');});
	$('.js_video_tab>li').on('click',function(){
		var _n = $(this).index();
		$('.js_video_list').eq(_n).addClass('show').siblings('.js_video_list').removeClass('show');
	});
//特别企划 换一组
$('.favourite .changeBtArea').on('click','a',function(){
		var ii=parseInt($(this).attr('rel')),allLi=$('.favourite .area .list li');
				switch (ii) {
				  case 1: 				  		
				  		allLi.hide().slice(0,5).show();
				  		$(this).attr({rel:'2'});
				    break;
				  case 3:
				  			 allLi.hide().slice(10,15).show();
				  				$(this).attr({rel:'1'});
				    break;
				  default: 
				  			allLi.hide().slice(5,10).show(); 
				  			$(this).attr({rel:'1'});//3
				}
		return false;
	});
//免费试用 换一组
if($('.freeTrial .list li').length < 3){$('.freeTrial .changeGroupBt').hide();}
$('.freeTrial .changeGroupBt').on('click','a',function(){
		var ii=parseInt($(this).attr('rel')),allLi=$('.freeTrial .list li'),len=allLi.length;
				if(len >2 && len < 5){
						switch (ii) {
						  case 1: 				  		
						  		allLi.hide().filter(':lt(2)').show();
						  		$(this).attr({rel:'2'});
						    break;
						  default: 
					  			allLi.hide().filter(':gt(1)').show(); 
					  			$(this).attr({rel:'1'});
						}
				}else{
					switch (ii) {
					  case 1: 				  		
					  		allLi.hide().slice(0,2).show();
					  		$(this).attr({rel:'2'});
					    break;
					  case 3:
					  			 allLi.hide().filter(':gt(3)').show();
					  				$(this).attr({rel:'1'});
					    break;
					  default: 
					  			allLi.hide().slice(2,4).show(); 
					  			$(this).attr({rel:'3'});
					}
			}
		return false;
	});
//luxury
$('.luxuryAreaA .scrollBox').waypoint(function(){
		$('.luxuryAreaA .scrollBox').pic_scroll({scrollBox:$('.luxuryAreaA .scrollBox'),scrollElementAll:$('.luxuryAreaA .scrollBox li'),changeNumClass:'changeNum',nextBtClass:'next',prevBtClass:'prev',delay:3500});
		}, {triggerOnce: true,offset: '95%'});	
//products
$('.productsAreaA .scrollBox').waypoint(function(){
		$('.productsAreaA .scrollBox').pic_scroll({scrollBox:$('.productsAreaA .scrollBox'),scrollElementAll:$('.productsAreaA .scrollBox li'),changeNumClass:'changeNum',nextBtClass:'next',prevBtClass:'prev',delay:3500});
		}, {triggerOnce: true,offset: '95%'});	

$('.productsAreaB .scrollBox').waypoint(function(){
$('.productsAreaB .scrollBox').pic_scroll({scrollBox:$('.productsAreaB .scrollBox'),scrollElementAll:$('.productsAreaB .scrollBox li'),changeNumClass:'changeNum'});
		}, {triggerOnce: true,offset: '95%'});	
// beauty 
$('.beautyAreaA .scrollBox').waypoint(function(){
		$('.beautyAreaA .scrollBox').pic_scroll({scrollBox:$('.beautyAreaA .scrollBox'),scrollElementAll:$('.beautyAreaA .scrollBox li'),changeNumClass:'changeNum',nextBtClass:'next',prevBtClass:'prev',delay:3500});
		}, {triggerOnce: true,offset: '95%'});		
// fashion 
$('.fashionArea .scrollBox').waypoint(function(){
		$('.fashionArea .scrollBox').pic_scroll({scrollBox:$('.fashionArea .scrollBox'),scrollElementAll:$('.fashionArea .scrollBox li'),changeNumClass:'changeNum',nextBtClass:'next',prevBtClass:'prev',delay:3500});
		}, {triggerOnce: true,offset: '95%'});	
$('.fashionAreaA .scrollBox').waypoint(function(){
$('.fashionAreaA .scrollBox').pic_scroll({scrollBox:$('.fashionAreaA .scrollBox'),scrollElementAll:$('.fashionAreaA .scrollBox li'),changeNumClass:'changeNum'});
		}, {triggerOnce: true,offset: '95%'});	

//trends
$('.trends .trendsArea').waypoint(function(){
		if($('.trends').is(':visible')){changePicture();}
		}, {triggerOnce: true,offset: '99%'});	
//lifestyle			
$('.lifestyle .lifeStyleScroll').waypoint(function(){
		changePictureA();
		}, {triggerOnce: true,offset: '99%'});		
			
	// blog
	$('.blogArea .scrollBox').waypoint(function(){
		$('.blogArea .scrollBox').pic_scroll({scrollBox:$('.blogArea .scrollBox'),scrollElementAll:$('.blogArea .scrollBox li'),changeNumClass:'changeNum',nextBtClass:'next',prevBtClass:'prev',delay:3500});
		}, {triggerOnce: true,offset: '95%'});		
	$('.blog .onlyladyDarenTuan').waypoint(function(){
			scroll_effect();
		}, {triggerOnce: true,offset: '95%'});	
// 达人团

// 达人团 滚动效果
function scroll_effect(){
		var ul=$('.onlyladyDarenTuan .list'),auto,setId,setT=12,allLi=ul.children(),liW=allLi.outerWidth(true),thisAdd=0;
				auto=function(){
							thisAdd++;	
							ul.css({marginLeft:-1*thisAdd+'px'});						
							if(thisAdd > liW){
								thisAdd=thisAdd-liW;
								ul.css({marginLeft:-1*thisAdd+'px'}).children(':first').appendTo(ul);
							}
							setId=setTimeout(auto,setT);
					}
				auto();
				ul.mouseenter(function(){if(setId){clearTimeout(setId);setId=null;}}).mouseleave(function(){auto();});
	}	
/*秀场趋势 滚动效果*/
	function changePicture(){
								var _arr=[{'width':'100px','height':'140px','left':'540px','top':'280px','z-index':'1'},
													{'width':'400px','height':'560px','left':'0px','top':'70px','z-index':'3'},
													{'width':'500px','height':'700px','left':'340px','top':'0px','z-index':'4'},
													{'width':'400px','height':'560px','left':'780px','top':'70px','z-index':'3'}
												];
								var ele=$('.trendsArea'),ul=ele.find('ul'),setId=null,setT=3200;
									//	ul.children().clone().appendTo(ul);
								var _imgsBox =ul ,_imgs=ul.children(),_time=400,_scrollL,_scrollR;
										_imgs.filter(':lt(3)').each(function(i){
											$(this).show().css(_arr[i+1]);
											if(i==1){$(this).find('img').css({opacity:1}).end().find('.t').show();}
											}).end().filter(':gt(2)').show().css(_arr[0]);
								/*		_imgsBox.delegate('li .img','click',function(){
											var thisIndex = _imgsBox.children().index($(this).parent());
													if(thisIndex < 1){
														_scrollR();
														}else if(thisIndex==2){
														_scrollL();
														};
												return false;
											});
											*/
											/*
										_imgsBox.delegate('li','mouseenter',function(){
												if(setId){clearInterval(setId);setId=null;}
											});
										_imgsBox.delegate('li','mouseleave',function(){
												if(!setId){setId=setInterval(_scrollL,setT);}
											});
										*/
								_scrollR =function(){
											_imgsBox.children(':last').prependTo(_imgsBox).css({zIndex:3});
											_imgsBox.children(':lt(4)').each(function(i){
												var img;
													if($(this).is(':animated')){$(this).stop(false,true);}
													$(this).find('img').css({opacity:0.6}).end().find('.t').hide();
													if(i==1){img=$(this).find('img');  img.css({opacity:1});$(this).css({zIndex:4});}
														if(i > 2){
																$(this).animate(_arr[0],_time,function(){});
															}else{
																$(this).animate(_arr[i+1],_time,function(){if(img && img.length > 0){$(this).find('.t').show();}});
															}
												});
												return false;
											};
								_scrollL=function(){
											ul.children().filter(':lt(4)').each(function(i){
												var img;
													if($(this).is(':animated')){$(this).stop(false,true);}
													$(this).find('img').css({opacity:0.6}).end().find('.t').hide();
													if(i==2){img=$(this).find('img');  img.css({opacity:1});}
														if(i > 0){
															$(this).animate(_arr[i],_time,function(){if(img && img.length > 0){$(this).find('.t').show();}});
															}else{
															$(this).animate(_arr[i],_time,function(){$(this).appendTo($(this).parent());});
															}
												});
												return false;
											};
								var btL=ele.find('.prev'),btR=ele.find('.next');
								btL.add(btR).mouseenter(function(){if(setId){clearInterval(setId);setId=null;}}).mouseleave(function(){if(!setId){setId=setInterval(_scrollL,setT);}});
								btL.on('click',function(e){_scrollR(); return false;});
								btR.on('click',function(e){_scrollL(); return false;});
								setId=setInterval(_scrollL,setT);	
		}
/*life Style 滚动效果*/
	function changePictureA(){
								var _arr=[{'width':'100px','height':'100px','left':'360px','top':'190px','z-index':'1'},
													{'width':'190px','height':'420px','left':'0px','top':'30px','z-index':'3'},
													{'width':'480px','height':'480px','left':'170px','top':'0px','z-index':'4'},
													{'width':'190px','height':'420px','left':'630px','top':'30px','z-index':'3'}
												];
								var ele=$('.lifestyle .lifeStyleScroll'),ul=ele.find('ul'),setId=null,setT=3200;
								//		ul.children().clone().appendTo(ul);
								var _imgsBox =ul ,_imgs=ul.children(),_time=300,_scrollL,_scrollR;
										_imgs.filter(':lt(3)').each(function(i){
											$(this).show().css(_arr[i+1]);
											if(i==1){$(this).find('img').css({opacity:1}).end().find('.t').show();}
											}).end().filter(':gt(2)').show().css(_arr[0]);
								/*		_imgsBox.delegate('li .img','click',function(){
											var thisIndex = _imgsBox.children().index($(this).parent());
													if(thisIndex < 1){
														_scrollR();
														}else if(thisIndex==2){
														_scrollL();
														};
												return false;
											});
											*/
											/*
										_imgsBox.delegate('li','mouseenter',function(){
												if(setId){clearInterval(setId);setId=null;}
											});
										_imgsBox.delegate('li','mouseleave',function(){
												if(!setId){setId=setInterval(_scrollL,setT);}
											});
										*/
								_scrollR =function(){
											_imgsBox.children(':last').prependTo(_imgsBox).css({zIndex:3});
											_imgsBox.children(':lt(4)').each(function(i){
												var img;
													if($(this).is(':animated')){$(this).stop(false,true);}
													$(this).find('img').css({opacity:0.6}).end().find('.t').hide();
													if(i==1){img=$(this).find('img');  img.css({opacity:1});$(this).css({zIndex:4});}
														if(i > 2){
																$(this).animate(_arr[0],_time,function(){});
															}else{
																$(this).animate(_arr[i+1],_time,function(){if(img && img.length > 0){$(this).find('.t').show();}});
															}
												});
												return false;
											};
								_scrollL=function(){
											ul.children().filter(':lt(4)').each(function(i){
												var img;
													if($(this).is(':animated')){$(this).stop(false,true);}
													$(this).find('img').css({opacity:0.6}).end().find('.t').hide();
													if(i==2){img=$(this).find('img');  img.css({opacity:1});}
														if(i > 0){
															$(this).animate(_arr[i],_time,function(){if(img && img.length > 0){$(this).find('.t').show();}});
															}else{
															$(this).animate(_arr[i],_time,function(){$(this).appendTo($(this).parent());});
															}
												});
												return false;
											};
								var btL=ele.find('.prev'),btR=ele.find('.next');
								btL.add(btR).mouseenter(function(){if(setId){clearInterval(setId);setId=null;}}).mouseleave(function(){if(!setId){setId=setInterval(_scrollL,setT);}});
								btL.on('click',function(e){_scrollR(); return false;});
								btR.on('click',function(e){_scrollL(); return false;});
								setId=setInterval(_scrollL,setT);	
		}
//	秀场趋势 滚动条
$('.showAndBrand .showArea .s01').mouseenter(function(){
		var rel=$(this).attr('isMouse');
		$('.showAndBrand .show_a').show();
		if(rel!=1){
			$('.showAndBrand .show_b').tinyscrollbar({sizethumb: 'auto',size:'auto'}); 
			$(this).attr({isMouse:'1'});
		}
	}).mouseleave(function(){
		$('.showAndBrand .show_a').hide();
	});
$('.showAndBrand .showArea .show_a').mouseenter(function(){
		$(this).show();
	}).mouseleave(function(){
		$(this).hide();
	});
//秀场 品牌列表
$('.showAndBrand .brandArea .s01').mouseenter(function(){
		var rel=$(this).attr('isMouse');
		$('.showAndBrand .brand_a').show();
		if(rel!=1){
			$('.showAndBrand .brand_b').tinyscrollbar({sizethumb: 'auto',size:'auto'}); 
			$(this).attr({isMouse:'1'});
		}
	}).mouseleave(function(){
		$('.showAndBrand .brand_a').hide();
	});
$('.showAndBrand .brandArea .brand_a').mouseenter(function(){
		$(this).show();
	}).mouseleave(function(){
		$(this).hide();
	});	
$('.showAndBrand .showArea .menu_a a').on('click',function(){
		var elm=$('.showAndBrand .showArea .show_b'), leftElm=elm.find('.overview'),scrollBar=elm.find('.thumb'),h=elm.height(),leftElmH=leftElm.height();
		var rel=$(this).attr('rel'),newTopA=elm.find('li[rel='+rel+']').eq(0).position().top,radio=parseFloat(leftElm.attr('rel'));	
				if( h < leftElmH){
					if(leftElmH-newTopA < h){
						leftElm.css({top:-1*(leftElmH-h)+'px'});
						scrollBar.css({top:(leftElmH-h)/radio+'px'});
						}else{
						leftElm.css({top:-1*newTopA+'px'});
						scrollBar.css({top:newTopA/radio+'px'});
						}
					}else{
						leftElm.css({top:-1*newTopA+'px'});
						}
		return false;
	});
$('.showAndBrand .brandArea .menu_a a').on('click',function(){
		var elm=$('.showAndBrand .brandArea .brand_b'), leftElm=elm.find('.overview'),scrollBar=elm.find('.thumb'),h=elm.height(),leftElmH=leftElm.height();
		var rel=$(this).attr('rel'),newEle=elm.find('li[rel='+rel+']'),newTopA,radio=parseFloat(leftElm.attr('rel'));	
				if(newEle.length > 0){
					newTopA=newEle.eq(0).position().top;
					}else{
					return false;
					}
				if(leftElmH-newTopA < h){
					leftElm.css({top:-1*(leftElmH-h)+'px'});
					scrollBar.css({top:(leftElmH-h)/radio+'px'});
					}else{
					leftElm.css({top:-1*newTopA+'px'});
					scrollBar.css({top:newTopA/radio+'px'});
					}
		return false;
	});
		
});		
//选择品牌，分类
$('.keywordsArea .list .checkedA').mouseenter(function(){
		var rel=$(this).attr('isClick');
		$(this).next().show();
		if(rel!=1){
			$(this).next().find('.checkedListAScroll').tinyscrollbar({sizethumb: 'auto',size:'auto'}); 
			$(this).attr({isClick:'1'});
		}
	}).mouseleave(function(){
		$(this).next().hide();
	});
$('.checkedListA').mouseenter(function(){
		$(this).show();
	}).mouseleave(function(){
		$(this).hide();
	});	
// sideNav 

$(window).scroll(function(){
    var top = $(window).scrollTop(),todayFocusOffSetTop=$('.todayFocus').offset().top;
    if (top > todayFocusOffSetTop) {
        $(".sideNav").fadeIn(200);
    } else {
        $(".sideNav").fadeOut(200);
    }
	});

$('.sideNav a:lt(8)').click(function(){
		var rel=$(this).attr('rel'),offsetTop_='';
				if(!rel){return false;}
				if(rel=='html'){
					offsetTop_=0;
					}else{
					offsetTop_=$('.'+rel).offset().top;
					}
	 $('html,body').animate({scrollTop: offsetTop_}, 100);		
	 return false;			
	});

		
//新品上鲜
(function($){
	var scrollArea=$('.scrollPicArea'),scrollAreaW=scrollArea.find('.area').width(), ul=scrollArea.find('ul'),allLi=ul.children(),liW=allLi.outerWidth(true),num=Math.ceil(scrollAreaW/liW), len=allLi.length-num,thisAdd=0,prev=scrollArea.find('.prev'),next=scrollArea.find('.next');
			prev.hide();
			scrollArea.on('click','.next',function(){
					if(!ul.is(':animated')){
							thisAdd++;
							if(thisAdd >= len){thisAdd=len;$(this).hide();}
							ul.animate({marginLeft:-1*thisAdd*liW+'px'},'normal',function(){prev.show();});						
						}
					return false;
				});
			scrollArea.on('click','.prev',function(){
					if(!ul.is(':animated')){
							thisAdd--;
							if(thisAdd <= 0){thisAdd=0;$(this).hide();}
							ul.animate({marginLeft:-1*thisAdd*liW+'px'},'normal',function(){next.show();});						
						}
					return false;
				});
	
})(jQuery);		
//精品栏目下广告
(function($){
	var allLi=$('.adBox li'),auto,setT=4000,isAuto=true,setId=null;
			allLi.each(function(){
				var 	txt=$.trim($(this).find('.oneAd').text());
						if(txt.length < 1){$(this).remove();}
				});
			if($('.adBox li').length < 4){ return false;}
			auto=function(){
					if(isAuto){
							allLi.hide().filter(':lt(2)').show();
							isAuto=false;
						}else{
							allLi.hide().filter(':gt(1)').show();
							isAuto=true;
						}
				}
			setId=setInterval(auto,setT);							
})(jQuery);
//添加19大背景色
/*
(function($){
	var auto,setT=4000;
			$('html').css({background:'url("http://new-img1.ol-img.com/assets/ad_picture/s1016_bk_bgA.jpg") 50% 0 no-repeat',paddingTop:'484px'});
			auto=function(){
				$('html').animate({paddingTop:'320px'},'normal');
				}
			setTimeout(auto,setT);							
})(jQuery)
*/
$(function(){
	// 首页banner广告去除放大缩小
	var fDate = new Date(),
		f_year = fDate.getFullYear(),
		f_month = fDate.getMonth()+1,
		f_day = fDate.getDate();
	if(f_year == '2018' && f_month == '5'){
		if(f_day == '2' || f_day == '3' || f_day == '8'){
			$('.bannerArea .list li').eq(1).addClass('ad');
		}
	}
});
