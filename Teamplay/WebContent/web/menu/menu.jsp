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
Shadowbox.init({
	players:["iframe"]
});
function nutirition()
{
	Shadowbox.open({
		content:'web/menu/nutrition.jsp',
		player:'iframe',
		title:'��������',
		width:800,
		height:500
	});
}
</script>
</head>
<body>
 <center>
  <h3>Menu</h3>
   <table border=0 width=500>
    <tr>
     <td align=center>
      <a href=""><img src="web/image/1955fire.png" border=0 width=300>&nbsp;B&B ���̾�</a></td>
     <td align=center> 
      <a href=""><img src="web/image/1955smoky.png" border=0 width=300>&nbsp;B&B ����Ű</a></td>
     <td align=center> 
      <a href=""><img src="web/image/1955.png" border=0 width=300>&nbsp;B&B</a></td>
     
    </tr>
    <tr>
     <td align=center> 
      <a href=""><img src="web/image/bacontomato.png" border=0 width=300>&nbsp;������ �丶��</a></td>
     <td align=center>  
      <a href=""><img src="web/image/double1955.png" border=0 width=300>&nbsp;���� B&B</a></td>
     <td align=center>  
      <a href=""><img src="web/image/doublebulgogi.png" border=0 width=300>&nbsp;���� �Ұ��</a></td>
     
    </tr>
    <tr>
     <td align=center>
      <a href=""><img src="web/image/doublequater.png" border=0 width=300>&nbsp;���� ���� B&B</a></td>
     <td align=center> 
      <a href=""><img src="web/image/quaterpounder.png" border=0 width=300>&nbsp;���� B&B</a></td>
     <td align=center> 
      <a href=""><img src="web/image/tomatocheese.png" border=0 width=300>&nbsp;�丶�� ġ��</a></td>
     
    </tr>
    <tr>
      <buttton value="��������" onclick="nutirition()" ><img src="web/images/info.jpg" width=50 height=50></buttton>
   
   </tr>
   </table>
 </center>
</body>
</html>