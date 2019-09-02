function ajax1() {
    //1.创建XMLHhhoRequest对象
    xhr=new XMLHttpRequest();
    //2.注册onreadystatechange事件
    xhr.onreadystatechange=callBack;
    //3.准备数据
    //3.发送请求
    xhr.open("get","/ajax_json/ajax1Servlet?id=100",true);
    xhr.send(null);
}
function callBack() {
    //alert(xhr.readyState);
    if(xhr.readyState==4&&xhr.status==200){
        alert(xhr.responseText);
    }
}
function ajax2() {
    //1.创建XMLHhhoRequest对象
    xhr1=new XMLHttpRequest();
    //2.注册onreadystatechange事件
    xhr1.onreadystatechange=callBack1;
    //3.准备数据
    //3.发送请求
    xhr1.open("get","/ajax_json/Ajax2Servlet",true);
    xhr1.send(null);
}
function callBack1() {
    //alert(xhr.readyState);
    if (xhr1.readyState == 4) {
        //alert(xhr1.responseText);
        var time=xhr1.responseText;
        document.getElementById("time").value=time;
    }
}