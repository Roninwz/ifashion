$(document).ready(function(){
	
	/**获取最后焦点**/
		$.fn.setCursorPosition = function(position){
			if(this.lengh == 0) return this;
			return $(this).setSelection(position, position);
		}

		$.fn.setSelection = function(selectionStart, selectionEnd) {
			if(this.lengh == 0) return this;
			input = this[0];

			if (input.createTextRange) {
				var range = input.createTextRange();
				range.collapse(true);
				range.moveEnd('character', selectionEnd);
				range.moveStart('character', selectionStart);
				range.select();
			} else if (input.setSelectionRange) {
				input.focus();
				input.setSelectionRange(selectionStart, selectionEnd);
			}

			return this;
		}

		$.fn.focusEnd = function(){
			this.setCursorPosition(this.val().length);
		}
	/*******End********/

	$(".reply_box").hide();
	//$(".pic_do_review").hide();
	$('.huifu').live('click',function(e){
		var $that = $(this);
		if($that.data('isHidden')===undefined){
			$that.parent().parent().find(".reply_box").show();
            //调用
		    $($that.parent().parent().find(".reply_box .reply_input textarea")).focusEnd();
            
			$that.data('isHidden',false);
			return;
		}

		if(!$that.data('isHidden')){
			$that.parent().parent().find(".reply_box").hide();
			$that.data('isHidden',true);
			
		}else{
			$that.parent().parent().find(".reply_box").show();
			//调用
		    $($that.parent().parent().find(".reply_box .reply_input textarea")).focusEnd();
			$that.data('isHidden',false);
			
		}
	});
	//$(".pic_do_review .fn-right a.disabled").click(function(e){
	//	var huifuBtn = $(this).parents('.pic_do_review').siblings('.date').find('.huifu');
	//	$(this).parent().parent().parent().hide();
	//	huifuBtn.data('isHidden',true);
	//})
	$(".comment_item:last").css({"border":"none"});
	
	
	// 登录弹出框 start
	$('.loginPanel .closeBtn').bind('click',function(e){
		$('.loginPanel').fadeOut();
	});
	// 登录弹出框 end
	
	
	// 遮罩层  
	$(".login_wb,.login_qq").click(function(){
		var h = $(document).height();
		var winH = $(window).height();
		
		$('.mask').css({ 'height': h });
		$('.overlay').css({ 'top': winH/2-200 });
		$(".mask").show();
		$('.overlay').fadeIn();
	});
})