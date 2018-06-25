<%--
  Created by IntelliJ IDEA.
  User: Roninwz
  Date: 2018/6/21
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset='utf-8'>
    <title></title>
    <style></style>
</head>
<body>

<script type="text/javascript" language="javascript">
    var flashTitlePlayer = {
        start: function (msg) {
            this.title = document.title;
            if (!this.action) {
                try {
                    this.element = document.getElementsByTagName('title')[0];
                    this.element.innerHTML = this.title;
                    this.action = function (ttl) {
                        this.element.innerHTML = ttl;
                    };
                } catch (e) {
                    this.action = function (ttl) {
                        document.title = ttl;
                    }
                    delete this.element;
                }
                this.toggleTitle = function () {
                    this.action('【' + this.messages[this.index = this.index == 0 ? 1 : 0] + '】欢迎访问简明现代魔法');
                };
            }
            this.messages = [msg];
            var n = msg.length;
            var s = '';
            if (this.element) {
                var num = msg.match(/\w/g);
                if (num != null) {
                    var n2 = num.length;
                    n -= n2;
                    while (n2 > 0) {
                        s += " ";
                        n2--;
                    }
                }
            }
            while (n > 0) {
                s += '　';
                n--;
            };
            this.messages.push(s);
            this.index = 0;
            this.timer = setInterval(function () {
                flashTitlePlayer.toggleTitle();
            }, 1000);
        },
        stop: function () {
            if (this.timer) {
                clearInterval(this.timer);
                this.action(this.title);
                delete this.timer;
                delete this.messages;
            }
        }
    };
    function flashTitle(msg) {
        flashTitlePlayer.start(msg);
    }
    function stopFlash() {
        flashTitlePlayer.stop();
    }

</script>

<input type='button' value='开始闪动' class='btn_1' onclick="flashTitle('您有5条消息')" />
<input type='button' value='停止闪动' class='btn_1' onclick="stopFlash()" />

</body>
</html>
