<%--
  Created by IntelliJ IDEA.
  User: ziking丶
  Date: 2020/9/28
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>小米商城后台管理系统</title>
    <link rel="stylesheet" href="src/css/layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">电影选票</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">控制台</a></li>
            <li class="layui-nav-item"><a href="">商品管理</a></li>
            <li class="layui-nav-item"><a href="">用户</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    贤心
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">注销</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">所有商品</a>
                    <dl class="layui-nav-child">
                        <dd><a href="shanchu.jsp" class="loadURL" name="shanchu.jsp" >商品列表</a></dd>
                        <dd><a href="insertProducts.jsp" class="loadURL" name="insertProducts.jsp" >新增商品</a></dd>
                        <dd><a href="upload.jsp" class="loadURL" onclick="x()">上传图片</a></dd>

                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">所有用户</a>
                    <dl class="layui-nav-child">
                        <dd><a href="Userafter.jsp" class="loadURL" name="Users.html" >用户列表</a></dd>

                        <dd><a href="">超链接</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">管理员操作</a>
                    <dl class="layui-nav-child">
                        <dd><a href="" class="loadURL" name="" >管理员列表</a></dd>
                        <dd><a href="" class="loadURL" name="" >新增管理员</a></dd>

                        <dd><a href="">超链接</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">云市场</a></li>
                <li class="layui-nav-item"><a href="">发布商品</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;" id="content">欢迎进入小米商城后台管理界面,请您进行操作</div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
    </div>
</div>
<script src="src/layui.all.js"></script>
<script src="src/jquery-3.4.1.min.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });

    $(function () {
        $(".loadURL").each(function () {
            $(this).click(function () {
                $("#content").load($(this).attr("href"));
                return false;
            })
        })
    })
    function x(){
        $("#content").load($(this).attr("href"));
        return false;
    }

</script>


</body>
</html>
