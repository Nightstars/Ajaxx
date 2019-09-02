<%--
  Created by IntelliJ IDEA.
  User: Chris
  Date: 2019/8/30
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="jquery/jquery_3.4.1.js"></script>
    <script>
        /*$().ready(function() {
            $("select[name=province]").change(function(){
                // $(this) = $("select[name=province]")
                // this 对应的DOM对象
                // 获取选中的选项的下标
                var index = $(this).prop("selectedIndex");
                alert("ok："+this.selectedIndex +"," + $(this).prop("selectedIndex"));
                // 清空市下拉框的所有选项
                $("select[name=city] option").remove();
                // 获得下标对应的城市(??)- 数据存在客户端   数据放在服务器端
                var arr = [["南京","苏州","无锡","南通","盐城"],
                    ["宝山","徐汇","松江"],
                    ["杭江","宁波","温州","台州","湖州","绍兴"],
                    ["济南","青岛市","淄博市","东营"],
                    ["太原","大同","长治市","吕梁"]];
                // 再将这些城市加到市这个下拉框中,一维数组
                var citys = arr[index];
                // 遍历，JS，each
//					for(var i=0;i<citys.length;i++) {
//						var str = "<option>"+citys[i]+"</option>";
//						$("select[name=city]").append(str);
//					}
                // each方法遍历
                $.each(citys,function(index,name){
                    var str = "<option>"+name+"</option>";
                    $("select[name=city]").append(str);
                });

            });
        });*/
        $(function () {
            $("select[name=province]").change(function () {
                //alert("ok"+this.selectedIndex)
                $.ajax({
                    type:"post",
                    url:"${pageContext.request.contextPath}/cityServlet",
                    data:"id="+this.selectedIndex,
                    success:function (result) {
                        //alert(result);
                        var citys=JSON.parse(result);
                        $("select[name=city] option").remove();
                        $.each(citys,function(index,name){
                            var str = "<option>"+name+"</option>";
                            $("select[name=city]").append(str);
                        });
                    }
                });
            });
        });
    </script>
</head>
<body>
省：<select name="province" >
    <option>江苏</option>
    <option>上海</option>
    <option>浙江</option>
    <option>山东</option>
    <option>山西</option>
</select>
市：<select name="city">
    <option>南京</option>
    <option>苏州</option>
    <option>无锡</option>
    <option>南通</option>
    <option>盐城</option>
</select>
</body>
</html>
