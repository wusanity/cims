//创建对象
function ajaxFunction(){
 var xmlHttp;
 try{
 // 适用于IE7+, Firefox, Chrome, Opera, Safari
 xmlHttp=new XMLHttpRequest();
 }
 catch(e){
 try{
 //Internet Explorer
 xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
 }
 catch(e){
 try{
 // 适用于IE6, IE5
 xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
 }
 catch(e){
 xmlHttp=false;
 }
 }
 }
 return xmlHttp;
 }

var flag=ture;
 function CheckUserName(){
 //获取jsp页面输入的值
var name=document.getElementById("first").value;
 if(name==""||name==null){
 document.getElementById("span01").innerHTML="<font color='red'>一级指标不能为空！</font>"
 flag=false;
 }else{
 //1.创建对象
var request=ajaxFunction();
 //2.发送请求
request.open("POST","/cims/checkIndex",true);//true表示异步提交
//注册状态改变监听，获取服务器传送过来的数据
request.onreadystatechange=function(){
 //readyState==4表示请求已经完成，且响应已就绪。status==200表示“OK”
if(request.readyState==4 && request.status==200){
var data=request.responseText;//获取CheckUserNameServlet中response中存储的值
if(data == 1){
 document.getElementById("span01").innerHTML="<font color='red'>一级指标已存在！</font>"
 flag=false;
 }else{
 document.getElementById("span01").innerHTML="<font color='green'>√</font>"
 flag=true;
 }
 }
 }
 //如果是post方式带数据，那么这里要添加头，说明提交的数据类型是一个经过url编码的form表单数据
request.setRequestHeader("Content-type","application/x-www-form-urlencoded;charset=UTF-8");
 //带数据过去，在send方法里填写表单数据
request.send("name="+name);
 }
 return flag;
 }