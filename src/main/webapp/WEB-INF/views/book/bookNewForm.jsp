<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>productForm</title>
		<script src="../js/jquery-3.6.1.min.js"></script>
		<script src="../js/bookNoCheck.js"></script>
	</head>
	<body>
		<h3>상품 정보 등록</h3>
		<form method="post" action="/bookex/book/bookInsert">
		<table>
			<tr><td>도서번호 <input type="text" id="bookNo" name="bookNo"></td><td><button id="NoCheckbt">중복확인</button></td></tr>
			<tr><td>도서명 <input type="text"name="bookName"></td></tr>
			<tr><td>저자 <input type="text"name="bookAuthor"></td></tr>
			<tr><td>가격 <input type="text"name="bookPrice"></td></tr>
			<tr><td>발행일 <input type="text"name="bookDate"></td></tr>
			<tr><td>재고 <input type="text"name="bootStock"></td></tr>
			<tr><td colspan="2"><input type="submit" value="등록"> 
 				<input type="reset" value="취소"></td>
 			</tr>		
			<br>
			 <a href="<c:url value='/'/>">메인 화면으로 이동</a>
		</table>
		</form>
	</body>
</html>
