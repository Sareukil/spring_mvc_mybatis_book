<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>상품 상세 조회</title>
    </head>
    <body>
        <h3>상품 상세 조회</h3>
        <table border="1" width="300">
			<tr><td>도서번호 </td><td>${bkList.bookNo}</td></tr>
			<tr><td>도서명 </td><td>${bkList.bookName}</td></tr>
			<tr><td>저자 </td><td>${bkList.bookAuthor}</td></tr>
			<tr><td>가격 </td><td>${bkList.bookPrice}</td></tr>
			<tr><td>발행일 </td><td><fmt:formatDate value="${bkList.bookDate}" pattern="yyyy-MM-dd"/></td></tr>
			<tr><td>제조일 </td><td>${bkList.bootStock}</td></tr>
        </table>
        <br>
        <a href="<c:url value='/'/>">메인 화면으로 이동</a><br>
        <a href="<c:url value='/book/updateBookForm/${bkList.bookNo}'/>">수정 화면</a><br>
        <a href="javascript:deleteCheck();">도서 정보 삭제</a><br>
        <script>
            function deleteCheck(){
                var answer = confirm("삭제하시겠습니까?");
                if(answer){
                    location.href="/bookex/book/deleteBook/${bkList.bookNo}";
                }
            }
        </script>
    </body>
</html>