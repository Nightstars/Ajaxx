<%--
  Created by IntelliJ IDEA.
  User: Chris
  Date: 2019/8/29
  Time: 15:41
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
    <script>
        $(function () {
            $(":input").keyup(function () {
                $.ajax(
                    {
                        type:"POST",
                        url:"${pageContext.request.contextPath}/sugServlet",
                        data:"name="+this.value,
                        success:function (result) {
                            var arr=result.split(",");
                            $("select option").remove();
                            $.each(arr,function (index,name) {
                                $("select").append("<option>"+name+"</option>");
                            });
                        }
                    }
                )
            });
        });
    </script>
</head>
<body>
    <div class="form-group form-group-lg form-inline" style="width: 300px;margin: 15px auto 0;text-align: center">
        <label for="name">请输入</label>
        <div class="col-sm-10">
            <input class="form-control" type="text" id="name" placeholder="Large input">
        </div>
        <select class="form-control" style="width: 100%;">
        </select>
    </div>
</body>
</html>
