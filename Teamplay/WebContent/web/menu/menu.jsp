<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="web/shadow/css/shadowbox.css"/>
<script type="text/javascript" src="web/shadow/js/shadowbox.js"></script>
<script type="text/javascript">

var httpRequest=null;
function createHttpRequest(){
	if(window.ActiveXObject){
		return new ActiveXObject("Msxml2.XMLHTTP");
	}
	else if(window.XMLHttpRequest){
		return new XMLHttpRequest();
	}
	else {
		return null;
	}
}
function sendMessage(tno){
	httpRequest=createHttpRequest();
	httpRequest.open("GET", "web/menu/material.jsp?tno="+tno, true);
	httpRequest.onreadystatechange=result;
	httpRequest.send(null);
}
function result(){
	if(httpRequest.readyState==4){
		if(httpRequest.status==200){
			var div=document.getElementById("materialPrint");
			//alert(httpRequest.responseText);
			div.innerHTML=httpRequest.responseText;
		}
	}
}

Shadowbox.init({
	players:["iframe"]
});
function nutirition()
{
	Shadowbox.open({
		content:'web/menu/nutrition.jsp',
		player:'iframe',
		title:'영양정보',
		width:800,
		height:500
	});
}
</script>
</head>
<body>
 <center>
  
  <h3>버거만들기</h3>
  <p>
		<input type=button value="기존버거" onclick="sendMessage(10)">
		<input type=button value="step1. 번 선택하기" onclick="sendMessage(20)">
		<input type=button value="step2. 패티 선택하기" onclick="sendMessage(30)">
		<input type=button value="step3. 치즈 더하기" onclick="sendMessage(40)">
		<input type=button value="step4. 채소 추가하기" onclick="sendMessage(50)">
		<input type=button value="step5. 소스 선택하기" onclick="sendMessage(60)">
		<input type=button value="step6. 프리미엄 토핑하기" onclick="sendMessage(70)">
		
		<p>
		
		<div id="materialPrint"></div>
  <p>
   <table border=0 width=500>
    <tr>
     <td align=center>
      <a href=""><img src="web/image/1955fire.png" border=0 width=300>&nbsp;B&B 파이어</a></td>
     <td align=center> 
      <a href=""><img src="web/image/1955smoky.png" border=0 width=300>&nbsp;B&B 스모키</a></td>
     <td align=center> 
      <a href=""><img src="web/image/1955.png" border=0 width=300>&nbsp;B&B</a></td>
     
    </tr>
    <tr>
     <td align=center> 
      <a href=""><img src="web/image/bacontomato.png" border=0 width=300>&nbsp;베이컨 토마토</a></td>
     <td align=center>  
      <a href=""><img src="web/image/double1955.png" border=0 width=300>&nbsp;더블 B&B</a></td>
     <td align=center>  
      <a href=""><img src="web/image/doublebulgogi.png" border=0 width=300>&nbsp;더블 불고기</a></td>
     
    </tr>
    <tr>
     <td align=center>
      <a href=""><img src="web/image/doublequater.png" border=0 width=300>&nbsp;더블 쿼터 B&B</a></td>
     <td align=center> 
      <a href=""><img src="web/image/quaterpounder.png" border=0 width=300>&nbsp;쿼터 B&B</a></td>
     <td align=center> 
      <a href=""><img src="web/image/tomatocheese.png" border=0 width=300>&nbsp;토마토 치즈</a></td>
     
    </tr>
    <tr>

      <buttton value="영양정보" onclick="nutirition()" ><img src="web/images/info.jpg" width=50 height=50></buttton>
   
   </tr>
   </table>
 </center>
</body>
</html>