<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="post.css"/>
<script type="text/javascript">
function postfind()
{
	var f=document.post_frm;
	if(f.dong.value=="")
	{
		alert("��/��/���� �Է��ϼ���");
		f.dong.focus()
		return;
	}
	f.submit();
	
}
</script>
</head>
<body>
	<div id="post_wrapper">
		<form id="postForm" name="post_frm" method=post action="postfind_result.jsp">
			<p>
				<label for="userdong">�Է�</label>
				<input type=text id="userdong" name="dong">
				<input type=button id="userdongBtn" value="ã��" onclick="postfind()">
			</p>
			<p>
				<label></label>
				<span style="text-align:right">��/��/���� �Է��ϼ���</span>
			</p>
			<span id="postPrint"></span>
		</form>
	</div>
</body>
</html>