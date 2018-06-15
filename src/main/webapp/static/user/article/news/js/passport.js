function domId(A) {
    return document.getElementById(A)
}
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
if (uname && uid) {
    var str = "<a href=\"http://my.onlylady.com/home.php?mod=space&do=home\" class=\"t_uname\">HI\uff0c" + uname + "</a> | <a href=\"http://bbs.onlylady.com/api.php?mod=ul&referer="+referurl+"\" target=\"_self\">\u9000\u51fa</a>";
} else {		
    var str = '<a target="_self" class="login" href="http://bbs.onlylady.com/member.php?mod=logging&action=login&referer='+referurl+'">[ÇëµÇÂ¼]</a> '+
		'<a target="_self" class="register" href="http://bbs.onlylady.com/member.php?mod=register&referer='+referurl+'">×¢²á</a> ';
}
domId("login").innerHTML = str;
