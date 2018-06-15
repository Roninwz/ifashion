//ad 下拉 收起
(function ($) {	
	if($("#crazynavdown .b1").children().length < 1 && $("#crazynavdown .b2").children().length < 1){ return false;}
	ol_ad_seed=1000;
	crz_s = $("#crazynavdown .s");
	crz_b = $("#crazynavdown .b");
	var b_html = crz_b.html();
	
	if(typeof(olfullad_pd)!='undefined'&&olfullad_pd==1){ol_ad_seed=12000;}
	if(typeof(olfullad_pd)!='undefined'&&olfullad_pd==2){ol_ad_seed=16000;}
	if($("#crazynavdown .s").html()!=""){crz_s.append('<span class="zz"></span>')}
	if($("#crazynavdown .b1").html()!="" || $("#crazynavdown .b2").html()!=""){setTimeout(crazynavopen,ol_ad_seed);}
	$("#crazynavdown .s .zz").click(function(){crazynavopen();/*crz_b.html(b_html);*/})
	var interval = 10600;
	/*target = new Date(2013,5,6),
	now = new Date();
	if(now>=target) interval = 15600;*/
	if($('#ts_name').attr('time')){
		interval = $('#ts_name').attr('time')
	}
	var myDate = new Date(),
		now_year = myDate.getFullYear(),
		now_month = myDate.getMonth()+1,
		now_day = myDate.getDate();
	if(now_year == '2017'){
		if(now_month == '12'){
			if(now_day == '15' || now_day == '27'){interval = 20600;}
		}
	}
    function crazynavopen() {
//    	crz_b.html(b_html);
        setTimeout(function(){
        	crz_b.append("<span class=close></span>");
	        $("#crazynavdown .b .close").click(function () {
	            crazynavclose();
	        });
	        crz_s.slideUp(300);
			/*if(!sbes1.html()){
				sbes1.append(b1_html)
			}
			if(!sbes2.html()){
				sbes2.append(b2_html)
			}*/
			if($("#crazynavdown .b1").children().length <1){$("#crazynavdown .b1").hide();}
			if($("#crazynavdown .b2").children().length <1){$("#crazynavdown .b2").hide();}
	        crz_b.slideDown(600);
	        clearFlag = setTimeout(function () {
	            crazynavclose()
	        }, interval);
        },1);
    }
    function crazynavclose() {
    	
        window.clearTimeout(clearFlag);
        $("#crazynavdown .close").css("display", "none");
        $("#crazynavdown .zz").css("display", "block");
        crz_s.slideDown(300);
        crz_b.slideUp(600);
        setTimeout(function(){
        	//crz_b.html('');
        },600);
		//setTimeout(function(){sbes1.html('');sbes2.html('')},600)
		
	}
})(jQuery);