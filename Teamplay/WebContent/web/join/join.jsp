<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
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
				<td width="20%"><p class="your-para">아이디</p></td>
				<td width="80%" align="left" class="send">
					<input type="text" name="id" size="20" readonly class="form-control" placeholder="@email.com">
					<input type="button" name="idcheck" value="중복체크" class="btn btn-default">
				</td>
				
			</tr>
			<tr>
				<td width="20%" rowspan="2"><p class="your-para">비밀번호</p></td>
				<td width="80%" align="left">
					<input type="password" name="pwd" size="35" class="form-control">
					
				</td>
			</tr>
			<tr>
				
				<td width="80%" align="left">
					<input type="password" name="pwd2" size="35" placeholder="재입력" class="form-control">
				</td>
			</tr>
			<tr>
				<td width="20%"><p class="your-para">이름</p></td>
				<td width="80%" align="left">
					<input type="text" name="name" size="35" class="form-control">
				</td>
			</tr>
			<tr>
				<td width="20%"><p class="your-para">생년월일</p></td>
				<td width="80%" align="left">
					<input type="date" name="bday" class="form-control">
				</td>
			</tr>
			<tr>
				<td width="30%"><p class="your-para">성별</p></td>
				<td width="70%" align="left">
				<input class="btn btn-default dropdown-toggle" type="radio" name="sex" value="남자" checked="">남자
					<input type="radio" name="sex" value="여자">여자
				</td>
			</tr>
			
			<tr>
				<td width=20%><p class=your-para>전화번호</p></td>
				<td width=80% align=left >
					<input type=text id="usertel1" name="tel1" size=6 class="form-control">- 
    			    <input type=text id="usertel2" name="tel2" size=7 class="form-control">-
					<input type=text id="usertel3" name="tel3" size=7 class="form-control">
				</td>
			</tr>
			
			<tr>
				<td width="20%"><p class="your-para">우편번호</p></td>
				<td width="80%" align="left">
					<input type="text" id="userpost" name="post" size="15" readonly class="form-control">
					<input type="button" value="우편번호 검색" name="postfind" class="btn btn-default">
					
				</td>
			</tr>
			
			
			
			<tr>
				<td width="20%" rowspan="2"><p class="your-para">주소</p></td>
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
					<input type="submit" value="가입하기">
				</td>
			</tr> 
			
			<!-- <tr>
				<td width="20%"><p class="your-para">이메일</p></td>
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
