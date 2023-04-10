<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>도서 검색</title>
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/bookSearch1.js'/>"></script>
	</head>
	<body>
		<h3>도서 검색</h3>
		<form id="bkSearchForm">
			<select id="type" name="type">
				<option value="">검색 조건 선택</option>
				<option value="bookName">도서명</option>
				<option value="bookAuthor">저자</option>
			</select>
			<input type="text" name="keyword">
			<input type="submit" value="검색">
		</form>
		
		<!-- 검색 결과 출력  -->
		<div id="searchResultBox"></div>
	</body>
</html>