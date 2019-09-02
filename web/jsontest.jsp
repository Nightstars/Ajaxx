<%--
  Created by IntelliJ IDEA.
  User: Chris
  Date: 2019/8/30
  Time: 11:05
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
    <script type="text/javascript" src="js/myfile.js"></script>
    <script>
        var arr=["JSP","ASP","PHP"];
        var str=JSON.stringify(arr);
        var str1="[\"JSP\",\"ASP\",\"PHP\",200]";
        var arr1=JSON.parse(str);
        console.log("str="+str);
        console.log("str="+str1);
        console.log("arr="+arr1);
        var obj={ "name" :"tom", "age" :20}
        var str2=JSON.stringify(obj);
        console.log("str="+str2);
        str='{ "name" :"tom", "age" :20}';
        var obj2=JSON.parse(str);
        console.log(obj2.name);
        console.log(obj2.age);
    </script>
    <script>
        $(function () {
           $("#btn_test").click(function () {
              $.ajax({
                  type:"POST",
                  url:"${pageContext.request.contextPath}/jsonDemoServlet",
                  dataType:"json",
                  success:function (result) {
                      //alert(result+"---"+result.length);
                      alert(result[0].id+","+result[0].name+","+result[0].age);
                  }
              }) ;
           });
        });
    </script>
</head>
<body>
    <div id="container">
        <button id="btn_test" class="btn btn-success" style="margin-top: 12px;width: 100%;">测试</button>
    </div>
</body>
</html>
