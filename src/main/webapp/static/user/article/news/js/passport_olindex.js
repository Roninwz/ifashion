function getCookieLogin(C) {
    var D = document.cookie.indexOf(C + "=");
    var A = D + C.length + 1;
    if ((!D) && (C != document.cookie.substring(0, C.length))) {
        return null
    }
    if (D == -1) {
        return null
    }
    var B = document.cookie.indexOf(";", A);
    if (B == -1) {
        B = document.cookie.length
    }
    //return unescape(document.cookie.substring(A, B))
	return decodeURIComponent(document.cookie.substring(A, B));
}

var uname = getCookieLogin("USERNAME"),
    uid = getCookieLogin("oluid");
var referurl=encodeURIComponent(location.href);
var onlyladyIndexPage=document.getElementById('onlyladyIndexPage');
if (uname && uid) {
    var str = "<a href=\"http://my.onlylady.com/home.php?mod=space&do=home\" class=\"purple\">Hi\uff0c" + uname + "</a> | <a href=\"http://my.onlylady.com/home.php?mod=space&do=home\" >\u4e2a\u4eba\u4e2d\u5fc3</a> | <a href=\"http://bbs.onlylady.com/api.php?mod=ul&referer="+referurl+"\" target=\"_self\">\u9000\u51fa</a>";
			  if(!onlyladyIndexPage){
			  str+=' | <a href="http://blog.onlylady.com/home.php?mod=space&do=index">\u535a\u5ba2</a>';
			  }
	} else {		
    var str = '<a target="_self" href="http://bbs.onlylady.com/member.php?mod=logging&action=login&referer='+referurl+'" rel="nofollow">\u767b\u5f55</a> | '+
			  '<a target="_self" href="http://bbs.onlylady.com/member.php?mod=register&referer='+referurl+'" rel="nofollow">\u6ce8\u518c</a>';
			  if(!onlyladyIndexPage){
			  str+=' | <a target="_self" href="http://blog.onlylady.com/" class="t_my">\u535a\u5ba2</a>';
			  }
}
$(".login").html(str);
