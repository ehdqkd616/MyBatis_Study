<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#infoTable{margin: auto;}
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<h1 align="center">내 정보 보기</h1>
	<form action="${ contextPath }/memberUpdateForm.me" method="post">
		<table id="infoTable">
			<tr>
				<td width="100px">* 아이디</td>
				<td>${member.userId}</td>
			</tr>
			<tr>
				<td>* 이름</td>
				<td>${member.userName}</td>
			</tr>
			<tr>
				<td> &nbsp;&nbsp;이메일</td>
				<td>${member.email}</td>
			</tr>
			<tr>
				<td> &nbsp;&nbsp;생년월일</td>
				<td>${member.birthDay}</td>
			</tr>
			<tr>
				<td> &nbsp;&nbsp;전화번호</td>
				<td>${member.phone}</td>
			</tr>
			<tr>
				<td> &nbsp;&nbsp;주소</td>
				<td>${member.address}</td>
			</tr>
			<tr>
				<td> &nbsp;&nbsp;성별</td>
				<td> <!-- 남자/여자로 출력 -->
					<c:if test="${member.gender == 'M'}">남자</c:if>
					<c:if test="${member.gender == 'F'}">여자</c:if> 
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div align="center">
						<br>
						<button type="button" onclick="location.href='${ contextPath }/memberPwdUpdateForm.me'">비밀번호 변경</button>
						<input type="submit" value="내 정보 수정">
						<button type="button" onclick="deleteMember();">회원 탈퇴</button>
					</div>
				</td>
			</tr>
		</table>
	</form>
	
	<script>
		function deleteMember() {
			var bool = confirm("정말로 탈퇴하시겠습니까?");
			
			if(bool){
				location.href='mdelete.me';
			}
			
		}
	</script>
	
</body>
</html>