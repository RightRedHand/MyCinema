<%--
  Created by IntelliJ IDEA.
  User: ziking丶
  Date: 2020/11/1
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- 可选的Bootstrap主题文件（一般不使用） -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>
    <script src="http://cdn.static.runoob.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="movie.css"/>
</head>
<body>
<header id="h1">
    <img id="l1" src="img/logo.jpg" >
    <span id="wel">欢迎登录选票系统！</span><br />
</header>
<div class="main">
    <div class="main_right">
        <div class="info">
            <p>亲爱的用户，你好&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<button type="button" class="btn btn-danger">注销</button><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myInfo">
                信息</button>
                <!-- 模态框 begin-->
            <div class="modal fade" id="myInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">查看已选场次</h4>
                        </div>
                        <div class="modal-body">
                            <table border="1px">
                            <tr>
                                <td>电影名</td>
                                <td>时间</td>
                                <td>票价</td>
                            </tr>
                            <c:forEach var="cc" items="${list}">
                                    <tr>
                                        <td>${cc.mname}</td>
                                        <td>>${cc.mdate}</td>
                                        <td>35</td>
                                    </tr>
                            </c:forEach>
                            </table>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div>
            <!-- 模态框 end--></p>
        </div>
        <div class="box">
            <div class="function">
                <p>[HOT!]十月巨制，《我和我的家乡》已上线，欢迎观影!&emsp;&emsp;<button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal1">点击购票</button>
                <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title">《我和我的家乡》确认选票</h4>
                            </div>
                            <div class="modal-body">
                                请您选择我和我的家乡电影的日期
                                <form method="post" action="UserServlet?op=choosemovie1">
                                    <select id="movietime1" name="movie">
                                        <option>--选择时间--</option>
                                        <option value="12:00">12:00</option>
                                        <option value="14:00">14:00</option>
                                        <option value="16:00">16:00</option>
                                        <option value="18:00">18:00</option>
                                        <option value="20:00">20:00</option>
                                        <option value="22:00">22:00</option>
                                    </select>
                                    <input value="提交" class="btn btn-default"  type="submit">
                                </form>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

                            </div>
                        </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                </div><!-- /.modal --></p>
                <p>[HOT!]十月巨制，《中国女排》已上线，欢迎观影!&emsp;&emsp;&emsp;&emsp;<button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal2">点击购票</button>
                <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title">《中国女排》确认选票</h4>
                            </div>
                            <div class="modal-body">
                                请您选择中国女排的日期
                                <form method="post" action="UserServlet?op=choosemovie2">
                                    <select id="movietime2"  name="movie">
                                        <option>--选择时间--</option>
                                        <option value="12:00">12:00</option>
                                        <option value="14:00">14:00</option>
                                        <option value="16:00">16:00</option>
                                        <option value="18:00">18:00</option>
                                        <option value="20:00">20:00</option>
                                        <option value="22:00">22:00</option>
                                    </select>
                                    <input value="提交" class="btn btn-default"  type="submit">
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

                            </div>
                        </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                </div><!-- /.modal --></p>
                <p>[HOT!]十月巨制，《姜子牙》已上线，欢迎观影!&emsp;&emsp;&emsp;&emsp;&emsp;<button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal3">点击购票</button>
                <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title">《姜子牙》确认选票</h4>
                            </div>
                            <div class="modal-body">
                                请您选择姜子牙的日期
                                <form method="post" action="UserServlet?op=choosemovie3">
                                    <select id="movietime3"  name="movie">
                                        <option>--选择时间--</option>
                                        <option value="12:00">12:00</option>
                                        <option value="14:00">14:00</option>
                                        <option value="16:00">16:00</option>
                                        <option value="18:00">18:00</option>
                                        <option value="20:00">20:00</option>
                                        <option value="22:00">22:00</option>
                                    </select>
                                    <input value="提交" class="btn btn-default"  type="submit">
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

                            </div>
                        </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                </div><!-- /.modal --></p>
            </div>
            <div class="form">
                <table class="news">
                    <!-- 轮播图 -->
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <a href="https://movie.douban.com/subject/25907124/?from=showing" target="_blank">
                                    <img src="img/姜子牙.jpg" alt="..." style="width: 1156px; height: 650px;">
                                </a>
                            </div>
                            <div class="item">
                                <a href="https://movie.douban.com/subject/30128916/?from=showing" target="_blank">
                                    <img src="img/中国女排.jpg" alt="..." style="width: 1156px; height: 650px;">
                                </a>
                            </div>
                            <div class="item">
                                <a href="https://movie.douban.com/subject/35051512/?from=showing" target="_blank">
                                    <img src="img/我和我的家乡.jpg" alt="..." style="width: 1156px; height: 650px;">
                                </a>
                            </div>

                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>

