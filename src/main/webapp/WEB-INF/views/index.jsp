<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
    </head>
    <body>
        <img src="images/bookMain.jpg" width="30" height="30">
        <h3>Book_mybatis입니다.</h3>
        <br>
        <a href="<c:url value='/book/bookListAll'/>">도서전체 조회</a>
        <a href="<c:url value='/book/bookNewForm'/>">도서입력</a><br>

        <a href="<c:url value='/book/bookSearchForm1'/>">상품검색1</a><br>
		<a href="<c:url value='/book/bookSearchForm2'/>">상품검색2</a><br>
        
    </body>
</html>