$(function(){	
var defaultitle =$("#searchpro")[0].defaultValue; //"请输入品牌（拼音、英文、缩写）、产品名称或关键字";
var search_key={ keys:defaultitle,url:"" };
var d = typeof search_key == "undefined"?"":search_key;
		$("#searchpro").focus(function(){
                   
			if($(this).val()==defaultitle) $(this).val(""); 
		});	
		$("#searchpro").blur(function(){
			if($(this).val()=="" || $(this).val()==defaultitle){
				if(d.keys) $(this).val(d.keys); else $(this).val(defaultitle); 
			}
		});	

		$("#J_search_sub").click(function(e){
			e.stopPropagation();
			var key = $("#searchpro").val();
			if(d.keys&&d.url&&key==d.keys){
				window.open(d.url);
				return;
			}
			if(key==defaultitle){
			   window.open("http://search.onlylady.com/");
				return;
			}
			if(key!=defaultitle && key!="" ){
			$("#searchPage").submit();
			}else{
				var start = 255,end = 80,temp = 255,step = 10,interval = 10,isHalf = false;
				var t = setInterval(function(){
					if(temp>end && !isHalf){
						if(temp-end>step){
							temp-=step;
						} else {
							temp=end;
							isHalf = true;
						}
						$("#J_search_key").css("backgroundColor","rgb("+start+","+temp+","+temp+")");
						$("#J_search_key").css("color","#FFFFFF");
					}else{
						if(start-temp>step) {
							temp+=step;
						}else{
							temp = start;
							$("#J_search_key").css("color","#999999");
							clearInterval(t);
						}
						$("#J_search_key").css("backgroundColor","rgb("+start+","+temp+","+temp+")");
					}
				},interval);
			}
		});
		$('.navSearch .search').click(function(e){
				e.stopPropagation();
			});
//nav子菜单切换
			var navAll=$('.navSearch .nav1 a:not(:last)');
			navAll.on('mouseenter',function(){
					var ii=navAll.index($(this));
							$(this).addClass('here').siblings().removeClass('here').parents('.navSearch').find('.navChilren li').hide().eq(ii).show();
				});
			$('.navSearch  .w1180').on('mouseleave',function(){
					navAll.removeClass('here').eq(0).addClass('here').parents('.navSearch').find('.navChilren li').hide().eq(0).show();
				});;
//开启关闭搜索
	$('.navSearch .nav1 .searchBt').on('click',function(){
					$('.navSearch .search').animate({height:'120px'},'normal',function(){});
					return false;
		});
	$('.navSearch .search .closeSearchbtn').on('click',function(){
					$('#auto_brand').hide();$("#searchpro").val(defaultitle);
					$('.navSearch .search').css({overflow:'hidden'}).animate({height:'0'},'normal',function(){});
					return false;
		});
    });