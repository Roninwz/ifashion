function basePath(){
    //获取当前网址，如： http://localhost:8080/ems/Pages/Basic/Person.jsp
    var curWwwPath = window.document.location.href;
    //获取主机地址之后的目录，如： /ems/Pages/Basic/Person.jsp
    var pathName = window.document.location.pathname;
    var pos = curWwwPath.indexOf(pathName);
    //获取主机地址，如： http://localhost:8080
    var localhostPath = curWwwPath.substring(0, pos);
    //获取带"/"的项目名，如：/ems
    var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
    //获取项目的basePath   http://localhost:8080/ems/
    var basePath=localhostPath+projectName+"/";
    return basePath;
};
var basePath=basePath();


$(function() {
    //  alert('d');

    $('input[type=text]').focusin(function() {
        $(this).css('border', '1px solid #3F89EC');
        $(this).parent().siblings('.mes').find('.error').hide().end().find('.tip').show();
    }).focusout(function() {
        $(this).css('border', '1px solid #ddd');
        $(this).parent().siblings('.mes').find('.tip').hide();
    });

    //z
    $('input[type=password]').focusin(function() {
        $(this).css('border', '1px solid #3F89EC');
        $(this).parent().siblings('.mes').find('.error').hide().end().find('ul').show();
        $(this).parent().next('.mes').find('.pwd_icon').removeClass('pwdok').removeClass('pwdno').html('○');
        $(this).parent().next('.mes').find('.pwd_tip').css('color', '#999');
    }).focusout(function() {
        $(this).css('border', '1px solid #ddd');
        $(this).parent().siblings('.mes').find('ul').hide();
    });

    if ('placeholder' in document.createElement('input')) {
        $('input').eq(0).focus();
    }

    $('input').keyup(function() {
        if ($(this).val()) {
            $(this).next('.clear').show();
        }
    });

    $('.clear').click(function() {
        $(this).prev('input').val('');
        $(this).parent().next('.mes').find('.pwd_icon').removeClass('pwdok').removeClass('pwdno').html('○');
        $(this).parent().next('.mes').find('.pwd_tip').css('color', '#999');
        $(this).prev('input').focus();
        $(this).hide();
    });

    $('#usr').blur(function() {
        if (isUsr()) {

            var username=$("input[id='usr']").val();
            var datas={"username":username};
            $.ajax({
                type: 'POST',
                url: basePath + 'user/ajaxRegUsername.action',
                dataType: 'json', //表示返回值的数据类型
                contentType: 'application/json;charset=UTF-8', //内容类型
                traditional: true, //使json格式的字符串不会被转码
                data: JSON.stringify(datas),
                success: function (data) {
                    //alert(data);
                    // alert(data.username);
                    if(data.username!=null){
                        $('#usr').parent().siblings('.mes').find('.error').show().find('span').eq(0).removeClass().addClass('error_icon').next('span').html('用户名已存在');


                        setTimeout(function(){
                            $("input[id='usr']").focus();
                        },3000);



                    }
                    //alert("e");
                }
            });




            $(this).parent().siblings('.mes').find('.error').show().find('span').eq(0).removeClass().addClass('ok_icon').next('span').html('');
        } else {
            if ($('#usr').val()) {
                $(this).parent().siblings('.mes').find('.error').show().find('span').eq(0).removeClass().addClass('error_icon').next('span').html('用户名不能超过7个汉字或14个字符');
            }
        };
    });

    //z


    var isUsr = function() {
        return /^[0-9A-Za-z\u4e00-\u9fa5]{1,14}$/.test($('#usr').val());
    }

    $('#tel').blur(function() {
        if (isTel()) {
            //alert('q');
        //判断手机号是否已被注册
            var tel=$("input[id='tel']").val();
            var datas={"tel":tel};
                //alert(tel);

                // ajax发送手机号验证码

                $.ajax({
                    type: 'POST',
                    url: basePath + 'user/ajaxRegTel.action',
                    dataType: 'json', //表示返回值的数据类型
                    contentType: 'application/json;charset=UTF-8', //内容类型
                    traditional: true, //使json格式的字符串不会被转码
                    data: JSON.stringify(datas),
                    success: function (data) {
                        //alert(data);
                       // alert(data.username);
                        if(data.username!=null){
                            $('#tel').parent().siblings('.mes').find('.error').show().find('span').eq(0).removeClass().addClass('error_icon').next('span').html('手机号码已存在');
                            setTimeout(function(){
                                $("input[id='tel']").focus();
                            },3000);
                        }
                        //alert("e");
                    }
                });












            $(this).parent().siblings('.mes').find('.error').show().find('span').eq(0).removeClass().addClass('ok_icon').next('span').html('');
        } else {
            if ($('#tel').val()) {
                $(this).parent().siblings('.mes').find('.error').show().find('span').eq(0).removeClass().addClass('error_icon').next('span').html('手机号码格式不正确');
            }
        };
    });

    var isTel = function() {
        return /^1\d{10}$/.test($('#tel').val()) || /^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/.test($('#tel').val());
    }

    $('#pwd').keyup(function() {
        if (checkLength()) {
            $(this).parent().siblings('.mes').find('.pwd_icon').eq(0).html('').removeClass('pwdno').addClass('pwdok');
            $(this).parent().next('.mes').find('.pwd_tip').eq(0).css('color', '#999');
        } else {
            $(this).parent().siblings('.mes').find('.pwd_icon').eq(0).html('').removeClass('pwdok').addClass('pwdno');
            $(this).parent().siblings('.mes').find('.pwd_tip').eq(0).css('color', 'red');
        }

        if (checkChar()) {
            $(this).parent().siblings('.mes').find('.pwd_icon').eq(1).html('').removeClass('pwdno').addClass('pwdok');
            $(this).parent().next('.mes').find('.pwd_tip').eq(1).css('color', '#999');
        } else {
            $(this).parent().siblings('.mes').find('.pwd_icon').eq(1).html('').removeClass('pwdok').addClass('pwdno');
            $(this).parent().siblings('.mes').find('.pwd_tip').eq(1).css('color', 'red');
        }

        if (!checkSpace()) {
            $(this).parent().siblings('.mes').find('.pwd_icon').eq(2).html('').removeClass('pwdno').addClass('pwdok');
            $(this).parent().next('.mes').find('.pwd_tip').eq(2).css('color', '#999');
        } else {
            $(this).parent().siblings('.mes').find('.pwd_icon').eq(2).html('').removeClass('pwdok').addClass('pwdno');
            $(this).parent().siblings('.mes').find('.pwd_tip').eq(2).css('color', 'red');
        }

        if (!$('#pwd').val()) {
            $(this).parent().next('.mes').find('.pwd_icon').removeClass('pwdok').removeClass('pwdno').html('○');
            $(this).parent().next('.mes').find('.pwd_tip').css('color', '#999');
        }
    });

    var checkLength = function() {
        return $('#pwd').val().length >= 6 && $('#pwd').val().length <= 14;
    }

    var checkChar = function() {
        return /[0-9a-zA-Z|\.]/.test($('#pwd').val());
    }

    var checkSpace = function() {
        return /\s/g.test($('#pwd').val());
    }

    $('.regBtn').click(function() {
        // && checkAgree()
        if (isUsr() && isTel() && checkLength() && checkChar() && !checkSpace()) {
            // alert('注册成功');
        } else {

            if (!isUsr()) {
                $('#usr').css('border', '1px solid red');
                $('#usr').parent().siblings('.mes').find('.error').show().find('span').eq(0).removeClass().addClass('error_icon').next('span').html('请您填写用户名');
            }

            if (!isTel()) {
                $('#tel').css('border', '1px solid red');
                $('#tel').parent().siblings('.mes').find('.error').show().find('span').eq(0).removeClass().addClass('error_icon').next('span').html('请您填写手机号');
            }

            if (checkYzm()) {
                $('#yzm').css('border', '1px solid red');
                $('#yzm').parent().siblings('.mes').find('.error').show().find('span').eq(0).removeClass().addClass('error_icon').next('span').html('请您填写验证码');
            }

            if (!checkLength() || !checkChar() || checkSpace()) {
                $('.mes').find('ul').hide();
                $('#pwd').css('border', '1px solid red');
                $('#pwd').parent().siblings('.mes').find('.error').show().find('span').eq(0).removeClass().addClass('error_icon').next('span').html('请输入密码');
            }

        }
    });

    var checkYzm = function() {
        return true;
    }

    var tel;
    //获取短信验证码
    var validCode = true;
    $(".msgs").click(function() {
        tel=$("input[id='tel']").val();
      var datas={"tel":tel};
        if (isTel()) {
            //alert(tel);

            // ajax发送手机号验证码

            $.ajax({
                type: 'POST',
                url: basePath + 'user/ajaxgetcode.action',
                dataType: 'json', //表示返回值的数据类型
                contentType: 'application/json;charset=UTF-8', //内容类型
                traditional: true, //使json格式的字符串不会被转码
                data: JSON.stringify(datas),
                success: function (data) {
                   // alert(data);
                    //alert("e");
                }
            });


            alert("w");
                var time = 30;
                var code = $(this);
                if (validCode) {
                    validCode = false;
                    code.addClass("msgs1");
                    var t = setInterval(function() {
                        time--;
                        code.html(time + "秒");
                        if (time == 0) {
                            clearInterval(t);
                            code.html("重新获取");
                            validCode = true;
                            code.removeClass("msgs1");

                        }
                    }, 1000)
                }
            } else {
                //clearInterval(t);
                alert("手机号不能为空");
                return false;
            }

    });





    // var checkAgree = function(){  
    // if($('#agree').is(':checked')){  
    //     return true; 
    // 	}else{  

    //     return false;  
    //     }  
    // }  


});