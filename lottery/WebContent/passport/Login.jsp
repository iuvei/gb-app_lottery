<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>玩家登录</title>
    <link rel="icon" sizes="144x144" href="${resRoot}/images/favicon.png?v=${rcVersion}" />
    <link href="${resRoot}/themes/default/login.css" rel='stylesheet' type='text/css' />
    <%@ include file="/include/include.js.jsp" %>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</head>
<body>
<div class="main">
    <div class="login-form">
        <h1>玩家登录</h1>
        <div class="head">
            <img src="${resRoot}/images/avatar.png"/>
        </div>
        <form method="post" name="loginForm">
            <input type="text" name="username" class="text" placeholder="请输入玩家账号" onfocus="this.select()" autocomplete="off" />
            <input type="password" name="password" placeholder="请输入账号密码" onfocus="this.select()" autocomplete="off" />
            <div style="display: none">
                <input type="hidden" name="type" value="top">
                <input type="hidden" name="captcha" value="<%=SessionManagerCommon.getAttribute("S_CAPTCHA_PREFIX_loginTop") %>" />
                <img src="${root}/captcha/loginTop.html?t=<%=new Date().getTime() %>" data-code="loginTop" style="display: none">
            </div>
            <div class="submit">
                <button type="button" onclick="login()" class="login">登录</button>
            </div>
            <p><a href="#">忘记密码 ?</a></p>
        </form>
    </div>
</div>
<div class="copy-right">
    <p>Copyright &copy; 2017 GB Lottery Inc. All rights reserved.</p>
</div>
</body>
</html>

<script>
    function login() {
        var $form = $('[name=loginForm]');
        var username = $('[name=username]').val();
        var password = $('[name=password]').val();
        var url = root + '/passport/login.html';
        if(username && password) {
            $.ajax({
                type: 'POST',
                headers: {'Soul-Requested-With': 'XMLHttpRequest'},
                url: url,
                data: $form.serialize(),
                dataType: 'JSON',
                beforeSend: function () {
                    var tip = '<img src="' + resRoot + '/images/tail-spin.svg" width="22">&nbsp;<span>登录中...</span>';
                    $('.login').attr('disabled', 'disabled').html(tip);
                },
                success: function(data){
                    if (data.success) {
                        window.location.replace(root + '/hall/index.html');
                    } else {
                        layer.msg('账号或密码错误');
                        window.location.reload();
                    }
                },
                complete: function () {
                    $('.login').removeAttr('disabled').html('登录');
                }
            })
        } else {
            layer.msg('请输入账号和密码');
        }
    }

    $(".login-form input").keydown(function(e) {
        if (e.which == 13) {
            $(".login").trigger("click");
        }
    });
</script>
