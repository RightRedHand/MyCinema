<%--
  Created by IntelliJ IDEA.
  User: ziking丶
  Date: 2020/10/26
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>影院系统</title>
    <!-- CSS only -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <!-- JS, Popper.js, and jQuery -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
    <script src="./js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="./js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="login.css"/>
</head>
<body>
<!-- 头部 -->
<header id="h1">
    <img id="l1" src="img/logo.png" >
    <span id="wel">欢迎登录选票系统！</span><br />
    <div id="nohave">没有账号?
        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">
            <span class="glyphicon glyphicon-user"style="margin-right: 5px;"></span>
            注册</button>
        <!-- 模态框 begin-->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">用户注册</h4>
                    </div>
                    <div class="modal-body">
                        <!-- 注册表单 begin-->
                        <form class="form-horizontal" method="post" action="../UserServlet?op=regist" role="form">
                            <div class="form-group">
                                <label for="inputtext" class="col-sm-2 control-label">用户名</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputtext" placeholder="请输入用户名">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="inputPassword3" placeholder="请输入密码">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox"> 记住此账号
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-default">注册</button>
                                </div>
                            </div>
                        </form>
                        <!-- 登陆表单 end-->
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" data-dismiss="modal">确认</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>
        <!-- 模态框 end-->
    </div>
</header>
<!-- 主体 -->
<div id="m1">
    <img id="s1" src="img/fuchouzhe.jpg" >
    <form action="UserServlet?op=login" method="post" id="f1">
        <table id="t1">
            <tr>
                <td>
                    <input type="text" name="username" placeholder="用户名"/>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="password" name="password" placeholder="密码" />
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" name="tijiao" value="登录" onclick="login"/>
                </td>
            </tr>
        </table>
    </form>

</div>
<!-- 尾部 -->
<footer id="footer"></footer>
</body>
</html>
