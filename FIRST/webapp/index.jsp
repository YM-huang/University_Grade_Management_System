<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>登录</title>
    <link rel="stylesheet" href="static/lib/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/lib/particles/css/style.css">
    <script src="static/lib/jQuery/jquery.min.js"></script>
    <script src="static/lib/bootstrap/js/bootstrap.min.js"></script>
    <script language="JavaScript" type="text/javascript">
        (function() {
            'use strict';
            window.addEventListener('load', function() {
                var forms = document.getElementsByClassName('needs-validation');
                var validation = Array.prototype.filter.call(forms, function(form) {
                    form.addEventListener('submit', function(event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
    </script>
    <style>
        .container{
            position: relative;
            width: 350px;
            font-size: 12px;
            line-height: 50px;
            border: 1px solid #dbdbdb;
            border-radius: 10px;
            top: 50px;
            background-color: #dbdbdb;
            opacity: 0.7;
        }
        body{
            background-color: white;
            background-image: url("static/images/background.png");
            background-size: cover;
        }
        #particles-js {
            position: fixed;
            top: 0;
            left: 0;
        }
        label{
            font-size: 15px;
        }
        .navbar-nav {
            float: none;
            text-align:center;
            font-size: 15px;
        }
        ul.nav.navbar-nav  li {
            float:none;
            display: inline-block;
            margin: 0em;
        }
        button{
            width: 300px;
        }
    </style>
</head>
<body>
<div id="particles-js"></div>
<div class="container">
    <form action="LoginServlet" class="needs-validation" novalidate>
        <div align="center">
            <img src="static/images/logo.png" alt="寰宇">
            <h2 style="font-size: 20px;">登录</h2>
        </div>
        <br>
        <nav class="navbar navbar-default" role="navigation">
            <div class="container-fluid">
                <ul class="nav navbar-nav">
                    <li><a href="index.jsp"><span class="glyphicon glyphicon-home"></span> 主页</a></li>
                </ul>
            </div>
        </nav>
        <div class="form-group">
            <label for="role">身份</label>
            <br>
            <select name="role" id="role" style="width: 320px;height: 35px;">
                <option value="管理员">管理员</option>
                <option value="普通教师">普通教师</option>
                <option value="学生">学生</option>
            </select>
            <div class="invalid-feedback">请选择身份</div>
        </div>
        <div class="form-group">
            <label for="no">工号/学号</label>
            <input type="text" class="form-control" id="no" name="no" placeholder="请输入您的工号/学号" pattern="[0-9]{0,12}" required>
            <div class="invalid-feedback">请输入正确的工号/学号</div>
        </div>
        <div class="form-group">
            <label for="password">密码</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="请输入您的密码" pattern="[A-Za-z0-9]{6,10}" required>
            <div class="invalid-feedback">请输入正确的密码</div>
        </div>
        <div class="form-group" align="center">
            <button type="submit" class="btn btn-primary" id="btnSubmit">登录</button>
        </div>
    </form>
</div>
<script src="static/lib/particles/particles.min.js"></script>
<script src="static/lib/particles/js/app.js"></script>
</body>
</html>