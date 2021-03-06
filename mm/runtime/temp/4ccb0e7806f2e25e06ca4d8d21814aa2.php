<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:69:"D:\phpStudy\WWW\mm\public/../application/index\view\regist\index.html";i:1493717767;}*/ ?>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>注册</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="__STATIC__/css/login.css">
</head>
<body>

<div class="login-container" style="height:100%">
    <div class="clouds clouds-footer"></div>
    <div class="clouds"></div>
    <div class="clouds clouds-fast"></div>
    <div id="login_form" class="container">
    <form action='regist_submit' method="post" class="content">
            <div class="people">
                <div class="tou"></div>
                <div id="left-hander" class="initial_left_hand transition"></div>
                <div id="right-hander" class="initial_right_hand transition"></div>
            </div>
            <ul class='register'>
                <li>
                  <h2>
                  用户注册<span>UserRegist</span>
                  </h2>
                </li>
                <li>
                  <input style="display:none" type="text" name="user_name"/>
                    <input required="required"
                           pattern="^\S{4,}$"
                           title="请输入4位及以上的字符"
                           type="text"
                           name="user_name"
                           autocomplete="off"
                           autofocus="autofocus"
                           class="login-input username"
                           placeholder="请输入用户名"/>
                </li>
                <li>
                  <input style="display:none" type="text" name="UserEmail"/>
                    <input required="required"
                           pattern="^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+$"
                           title="请输入正确邮箱地址"
                           type="text"
                           name="UserEmail"
                           autocomplete="off"
                           autofocus="autofocus"
                           class="login-input username"
                           placeholder="请输入邮箱"/>
                </li>
                <li>
                <input style="display:none" type="password" name="UserPasswd"/>
                    <input required="required"
                           pattern="^\S{6,}$"
                           title="请输入6位及以上的字符"
                           type="password"
                           name="UserPasswd"
                           autocomplete="off"
                           class="login-input password"
                           placeholder="请输入密码"/>
                </li>
                <li class="text-center">
                    <button type="submit" class="layui-btn">立 即 注 册</button>
                </li>
            </ul>
        </form>
  </div>
</div>
</body>
</html>