var loginDialog = {
	isLogin: false,
	markup:'<div class="login-dialog">\
					<a class="close" href="javascript:;"></a>\
					<h2>登录</h2>\
					<div class="box">\
						<div class="other">\
							<span>使用已有账号登录</span>\
							<a href="http://passport.bazaar.com.cn/?m=user&a=weixinlogin" class="wx" title="微信账号登录">微信账号登录</a>\
							<a href="http://passport.bazaar.com.cn/?m=user&a=weibologin" class="sina" title="新浪帐号登录">新浪帐号登录</a>\
			                <a href="http://passport.bazaar.com.cn/?m=user&a=qqlogin" class="qq" title="腾讯账号登录">腾讯账号登录</a>\
			            </div>\
			            <p class="error"></p>\
			            <form class="login-form">\
			            	<input type="hidden" class="formhash" name="formhash" value="" />\
			            	<div class="username form-txt">\
			            		<label for="">用户名</label>\
			            		<input type="text" class="p-input"  name="username">\
			            	</div>\
			            	<div class="password form-txt">\
			            		<label for="">密码</label>\
			            		<input type="password" class="p-input" name="password">\
			            	</div>\
			            	<div class="login-info">\
			            		<p class="checkbox"><span class="checked"></span>记住我的登陆状态<input type="checkbox" class="auto-login" /></p>\
			            		<a href="http://passport.bazaar.com.cn/register.shtml" target="_blank">注册</a>\
			            	</div>\
			            	<input type="button" class="submit-btn" value="登 录" />\
			            </form>\
					</div>\
				</div>',
	styles:'<style>\
				.mask-layer{ position: fixed;width: 100%; height: 100%;background: url("http://new-icon.bazaar.net.cn/common/images/mask-bg.png") 0 0 repeat;left: 0;right: 0;top: 0;bottom: 0;z-index: 99998;}\
				.login-dialog{position:fixed; width:728px;height:440px; left:50%; top:50%; margin:-220px 0 0 -364px; background:#fff;-webkit-box-shadow:0 0 20px #555; -moz-box-shadow:0 0 20px #555; box-shadow:0 0 20px #555; z-index:99999;}\
				.login-cnt .login-dialog{position: static; margin:0 auto;-webkit-box-shadow:none; -moz-box-shadow:none; box-shadow:none; border:1px solid #c2c0c0;}\
				.login-dialog .close,.login-dialog h2,.login-dialog .other a,.checkbox span{background: url("http://new-icon.bazaar.net.cn/common/images/login-icon.png") no-repeat;}\
				.login-dialog .close{ position: absolute; top: 10px;right: 10px; width: 30px;height: 30px;display: block; background-position:0 -616px;}\
				.login-dialog h2{width:350px; height:45px;background-position:0 0; padding:30px 0 25px 0; margin:0 auto; background-position: left 30px;text-indent: -9999px;}\
				.login-dialog .box{ width:524px; margin:0 auto;}\
				.login-dialog .other{height:66px;line-height:66px;padding:0 25px; border-bottom:1px solid #bfbfbf;}\
				.login-dialog .other span{ display:inline-block; font-size:18px; width:200px;}\
				.login-dialog .other a{ display:inline-block; width:60px; height:60px; margin-left:22px; text-indent: -9999px;}\
				.login-dialog .other a.wx{background-position:0 -526px;}\
				.login-dialog .other a.sina{background-position:-83px -526px;}\
				.login-dialog .other a.qq{background-position:-164px -526px;}\
				.login-form{padding:10px 25px;}\
				.login-form .form-txt{margin-bottom:15px;}\
				.login-form label{display:inline-block;width: 150px; height:38px;line-height:38px; font-size:16px; }\
				.login-form .p-input{ display:inline-block; width:213px; height:36px;padding-left:90px; border:1px solid #d8d8d8;background: #fafafa url("http://new-icon.bazaar.net.cn/common/images/login-icon.png") no-repeat; }\
				.login-form .username .p-input{background-position: 0 -435px; }\
				.login-form .password .p-input{background-position: 0 -474px ;}\
				.login-form .login-info{color:#888;font-size:13px;margin-bottom:20px;}\
				.login-form .login-info a{color:#888;text-decoration: underline;}\
				.checkbox{display:inline-block;width:195px;margin-left:90px;}\
				.checkbox span{display:inline-block;width: 17px; height:17px;vertical-align: middle; margin-right:10px;background-position: -87px -614px;}\
				.checkbox span.checked{background-position: -57px -614px;}\
				.login-dialog .checkbox input{display: none;}\
				.submit-btn{display:block;width:178px;height:40px;line-height:40px;color:#fff;font-size:18px;background:red;border:none;margin:0 auto;}\
				.login-dialog .error{color:red;text-align:center;padding-top:10px; height:24px;}\
			</style>',
	init:function (p) {
		var self = this;
		$('head').append(this.styles);
		if(p){
			$(p).append(this.markup);
		}else{
			$('body').append('<div class="mask-layer"></div>')
			$('body').append(this.markup);
		}
		self.dialogBox = $(".login-dialog");
		self.maskLayer = $('.mask-layer');
		self.commonInput = self.dialogBox.find(".p-input");
		self.nameInput = self.dialogBox.find(".username input");
		self.pwdInput = self.dialogBox.find(".password input");
		self.hashInput = self.dialogBox.find(".formhash");
		self.autoLogin = self.dialogBox.find(".auto-login");
		self.checkbox = self.dialogBox.find(".checkbox");
		self.submitBtn = self.dialogBox.find(".submit-btn");
		self.errorText = self.dialogBox.find(".error");
		self.closeBtn = self.dialogBox.find(".close");

		var autoOpen = arguments[1] ? arguments[1] : false;
		if (autoOpen == false) {
			//设置cookie
			$.cookie('trends_bazaar_bef_login',window.location.href,{ expires: 3600,domain:"bazaar.com.cn", path: "/" });
		}

		
		//为什么得到formhash,在哪里得到
		$.get('http://passport.bazaar.com.cn/getformhash.shtml', function(data){
			data = eval("("+data+")");
			self.hashInput.val(data.formhash);
	    });
		self.bindEvent();
		
	},
	bindEvent:function(){
		var self = this;
		self.closeBtn.on('click',function(){
			self.close();
		});
		self.submitBtn.on('click',function(){
			self.checkForm();
		});
		self.checkbox.on('click',function(){
			$(this).find('span').toggleClass('checked').end().find('input').click();
		});
		self.checkbox.find('input').on('click',function(e){
			e.stopPropagation();
		});
		self.commonInput.bind('focus',function(){
			self.errorText.html('');
		});
		
	},
	checkForm:function(){
		var self = this;
		var name = $.trim(self.nameInput.val()),
			pwd = $.trim(self.pwdInput.val()),
			hash = self.hashInput.val(),
			check = 0;

		if(name == ''){
			self.promptMsg(1);
			return;
		}
		if(pwd == ''){
			self.promptMsg(2);
			return ;
		}
		if(self.checkbox.find('span').hasClass('checked')){
			check = 1;
		}
		var data={username:name,password:pwd,remember:check,formhash:hash,referer:'',ajax:1};
		self.ajaxLogin(data);
	},
	show:function(){
		var self = this;
		self.maskLayer.show();
		self.dialogBox.show();
	},
	close: function(){
		var self = this;
		self.dialogBox.remove();
		if(self.maskLayer){
			self.maskLayer.remove();
		}
	},
	promptMsg:function(n){
		var self = this;
		if(n == 1){
			self.errorText.html('用户名不能为空');
		}
		if(n == 2){
			self.errorText.html('密码不能为空！');
		}
		if(n ==3 ){
			self.errorText.html('验证码不能为空！');
		}
		if(n ==4 ){
			self.errorText.html('验证码错误！');
		}
		if(n ==5 ){
			self.errorText.html('密码错误！');
		}
		if(n ==6 ){
			self.errorText.html('没有此用户！');
		}
		if(n ==7){
			self.errorText.html('您输入错误次数过多，请15分钟后再试！');
		}
		if(n ==8){
			self.errorText.html('验证问题错误！');
		}
	},
	ajaxLogin:function(mydata){
		var self = this;
		$.post('http://passport.bazaar.com.cn/login.shtml',mydata,function(data){
			data = eval("("+data+")");
			if(data.err == 0){
				$.cookie('trends_bazaar_auth', data.auth, { expires: 3600*24*7,domain:"bazaar.com.cn", path: "/" });
				$.cookie('trends_bazaar_uinfo', data.uinfo, { expires: 3600,domain:"bazaar.com.cn", path: "/" });
				self.close();
				//referer什么用？
				if(data.referer!=''&&data.referer!=null){
					location = data.referer;
				} else {
					location.reload();
				}
			}else{
				self.promptMsg(data.err);
			}
		})
	},
	logout:function(){
		var self = this;
		$.cookie('trends_bazaar_bef_login', window.location.href, { domain:"bazaar.com.cn", path: "/" });  
		window.location.href="http://passport.bazaar.com.cn/logout.shtml";
	}
}