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


function postFind()
{
	Shadowbox.open({
		content:'web/join/postfind.jsp',
		player:'iframe',
		title:'�����ȣ ã��',
		width:450,
		height:350
	});
}
function idFind()
{
	Shadowbox.open({
		content:'web/join/idcheck.jsp',
		player:'iframe',
		title:'���̵�ã��',
		width:300,
		height:200
	});
}
</script>
</head>
<body>
	<div class="container">
	<form method=post action="">
		<center>
		<br>
		<br>
		<h2 class="heading text-center">Join </h2>
		<br>
		<br>
		<table class="table" border="0" width="500" height="550">
			<tbody><tr>
				<td width="20%"><p class="your-para">���̵�</p></td>
				<td width="80%" align="left" class="send">
					<input type="text" name="id" size="20" readonly class="form-control" placeholder="@email.com">
					<input type="button" name="idcheck" value="�ߺ�üũ" class="btn btn-default" onclick="idFind()">
				</td>
				
			</tr>
			<tr>
				<td width="20%" rowspan="2"><p class="your-para">��й�ȣ</p></td>
				<td width="80%" align="left">
					<input type="password" name="pwd" size="35" class="form-control">
					
				</td>
			</tr>
			<tr>
				
				<td width="80%" align="left">
					<input type="password" name="pwd2" size="35" placeholder="���Է�" class="form-control">
				</td>
			</tr>
			<tr>
				<td width="20%"><p class="your-para">�̸�</p></td>
				<td width="80%" align="left">
					<input type="text" name="name" size="35" class="form-control">
				</td>
			</tr>
			<tr>
				<td width="20%"><p class="your-para">�������</p></td>
				<td width="80%" align="left">
					<input type="date" name="bday" class="form-control">
				</td>
			</tr>
			<tr>
				<td width="30%"><p class="your-para">����</p></td>
				<td width="70%" align="left">
				<input class="btn btn-default dropdown-toggle" type="radio" name="sex" value="����" checked="">����
					<input type="radio" name="sex" value="����">����
				</td>
			</tr>
			
			<tr>
				<td width=20%><p class=your-para>��ȭ��ȣ</p></td>
				<td width=80% align=left >
					<input type=text id="usertel1" name="tel1" size=6 class="form-control">- 
    			    <input type=text id="usertel2" name="tel2" size=7 class="form-control">-
					<input type=text id="usertel3" name="tel3" size=7 class="form-control">
				</td>
			</tr>
			
			<tr>
				<td width="20%"><p class="your-para">�����ȣ</p></td>
				<td width="80%" align="left">
					<input type="text" id="userpost" name="post" size="15" readonly class="form-control">
					<input type="button" value="�����ȣ �˻�" name="postfind" onclick="postFind()" class="btn btn-default" >
					
				</td>
			</tr>
			
			
			
			<tr>
				<td width="20%" rowspan="2"><p class="your-para">�ּ�</p></td>
				<td>
					<input type="text" id="useraddr1" name="addr1" size="35" readonly class="form-control">
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" id="useraddr2" name="addr2" size="35" class="form-control">
				</td>
			</tr>
			<tr>
				<td class="send" colspan="3" align="center">
					<br>
					<input type="submit" value="�����ϱ�">
				</td>
			</tr> 
			
		
			<!-- <tr>
				<td width="20%"><p class="your-para">�̸���</p></td>
				<td width="80%" align="left">
					<input type="text" name="email" size="35" class="form-control">
				</td>
			</tr>
			-->
		</tbody></table>

		
		</center>
	</form>
	</div>
</body>
</html>
