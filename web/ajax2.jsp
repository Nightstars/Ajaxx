<%--
  Created by IntelliJ IDEA.
  User: Chris
  Date: 2019/8/29
  Time: 13:51
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
    <script type="text/javascript" src="js/myjquery.js.js"></script>
    <script>
        $(document).ready(function () {
            $("#btn").click(function () {
                $.ajax(
                    {
                        type:"POST",
                        url:"/ajax_json/ajax1Servlet",
                        data:"id=Test",
                        success:function (msg) {
                            alert(msg);
                        }
                    }
                );
            });
            $("#btn1").click(function () {
                $.ajax(
                    {
                        type:"GET",
                        url:"/ajax_json/Ajax2Servlet",
                        success:function (msg) {
                            alert("Time now:   "+msg);
                        }
                    }
                );
            });
            $("#name").keyup(function () {
                $.ajax(
                    {
                        type:"GET",
                        url:"${pageContext.request.contextPath}/Ajax2Servlet",
                        success:function (msg) {
                            $("#time").val(msg);
                        }
                    }
                );
            })
        });
    </script>
</head>
<body>
    <div id="container">
        <button id="btn" class="btn btn-info" style="width: 180px;">Button</button><br>
        <button id="btn1" class="btn btn-success" style="width: 180px;margin-top: 15px;">Button</button>
    </div>
    <div class="containe1">
        <div class="form-group form-inline">
            <label for="name">用户名:</label>
            <input type="text" class="form-control" id="name" placeholder="Username" onkeyup="ajax2()" style="margin-left: 12px;">
        </div>
        <div class="form-group form-inline">
            <label for="time">时&nbsp;&nbsp;&nbsp;间:</label>
            <input type="text" class="form-control" id="time" placeholder="time" style="margin-left: 12px;" readonly name="time">
        </div>
    </div>
</body>
</html>
