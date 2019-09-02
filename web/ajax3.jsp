<%--
  Created by IntelliJ IDEA.
  User: Chris
  Date: 2019/8/29
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/mystyle.css">
    <script type="text/javascript" src="jquery/jquery_3.4.1.js"></script>
    <script type="text/javascript" src="bootstrap4.3.1/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#subtn").click(function () {
                $.post(
                    "${pageContext.request.contextPath}/ajax3Servlet",
                    "name="+$("#name").val()+"&"+"age="+$("#age").val(),
                    function (msg) {
                        alert(msg);
                    }
                )
            });
            var user={"name":"tom","age":"20"}
            $("#subtn1").click(function () {
                $.post(
                    "${pageContext.request.contextPath}/ajax3Servlet",
                    user,
                    function (msg) {
                        alert(msg);
                    }
                )
            });
            $("#subtn2").click(function () {
                alert($("form").serialize());
                $.post(
                    "${pageContext.request.contextPath}/ajax3Servlet",
                    $("form[name=myform]").serialize(),
                    function (msg) {
                        alert(msg);
                    }
                )
            });
        });
    </script>
</head>
<body>
<div class="containe1">
    <form name="myform">
        <div class="form-group form-inline">
            <label for="name">用户名:</label>
            <input type="text" class="form-control" id="name" placeholder="Username" onkeyup="ajax2()" style="margin-left: 12px;">
        </div>
        <div class="form-group form-inline">
            <label for="age">年&nbsp;&nbsp;&nbsp;龄:</label>
            <input type="text" class="form-control" id="age" placeholder="age" style="margin-left: 12px;" >
        </div>
        <button id="subtn" class="btn btn-success" style="width: 70%;">测试</button><br>
        <button id="subtn1" class="btn btn-info" style="width: 70%;margin-top: 15px;">测试1</button><br>
        <button id="subtn2" class="btn btn-warning" style="width: 70%;margin-top: 15px;">测试1</button><br>
    </form>
</div>
</body>
</html>
