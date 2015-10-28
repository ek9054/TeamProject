<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method=post action="">
		<center>
		<br>
		<br>
		<h2 class="heading text-center">Join </h2>
		<br>
		<br>
		
		<table border=0 width=350 height=400>
			<tr>
				<td width=20%><p class=your-para>아이디</p></td>
				<td width=80% align=left class="send" >
					<input type=text name=id size=16 class="form-control">
					<input type=button name=idcheck value=중복체크 class="btn btn-default">
				</td>
				
			</tr>
			<tr>
				<td width=20%><p class=your-para>비밀번호</p></td>
				<td width=80% align=left>
					<input type=password name=pwd size=30 class="form-control">
					
				</td>
			</tr>
			<tr>
				<td width=20%><p class=your-para></p></td>
				<td width=80%align=left>
					<input type=password name=pwd2 size=30 placeholder=재입력 class="form-control">
				</td>
			</tr>
			<tr>
				<td width=20%><p class=your-para>이름</p></td>
				<td width=80% align=left>
					<input type=text name=name size=12 class="form-control">
				</td>
			</tr>
			<tr>
				<td width=20%><p class=your-para>생년월일</p></td>
				<td width=80% align=left>
					<input type=date name="bday">
				</td>
			</tr>
			<tr>
				<td width=30%><p class=your-para>성별</p></td>
				<td width=70% align=left>
				<input type=radio name=sex value=남자 checked>남자
					<input type=radio name=sex value=여자 >여자
				</td>
			</tr>
			<tr>
				<td width=20%><p class=your-para>우편번호</p></td>
				<td width=80% align=left>
					<input type=text id="userpost" name="post"  size=10 class="form-control">
					<input type=button value="우편번호 검색" name=postfind class="btn btn-default">
					
				</td>
			</tr>
			<tr>
				<td width=20%><p class=your-para>주소</p></td>
				<td>
					<input type=text id="useraddr1" name="addr1" size=30 class="form-control">
					<input type=text id="useraddr2" name="addr2" size=30 class="form-control">
				</td>
			</tr>
			<tr>
				<td width=20%><p class=your-para>전화번호</p></td>
				<td width=80% align=left>
				<select id="usertel" name="tel1">
						<option>010</option>
						<option>011</option>
						<option>017</option>
					</select>
					<input type=text id="usertel2" name="tel2" size=10 class="form-control">-
					<input type=text id="usertel3" name="tel3" size=10 class="form-control">
				</td>
			</tr>
			<tr>
				<td width=20%><p class=your-para>이메일</p></td>
				<td width=80% align=left>
					<input type=text name=email size=30 class="form-control">
				</td>
			</tr>
			<tr>
				<td class="send" colspan=3 align=center >
					<br>
					<input type="submit" value=가입하기 >
				</td>
			</tr>
		</table>
		
		
		</center>
	</form>
</body>
</html>
