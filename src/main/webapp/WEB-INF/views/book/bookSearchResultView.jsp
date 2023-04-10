<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 검색 결과</title>
<!-- 		<style>
			#wrap{
				margin:0 auto;
				width: 100%;
				text-align: center;
			}
			
			table{
				margin:0 auto;
				width: 800px;
			}
			
			table th{ 
				background-color: skyblue;
			}
		</style> -->
	</head>
	<body>
		<div id="wrap">
			<hr>
			<h3>상품 검색 결과</h3>
			<table border="1">
					<tr>
						<th>도서번호</th>
                        <th>도서명</th>
                        <th>저자</th>
                        <th>가격</th>
                        <th>발행일</th>
                        <th>재고</th>
						<th>사진</th>
					</tr>					
					<c:choose>
						<c:when test="${empty bkList}">
								<tr align="center">
									<td colspan="7">찾는 상품이 없습니다</td>
								</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="bkList" items="${bkList }">
                                <tr>
                                    <td><a href="<c:url value='/book/detailViewBook/${bkList.bookNo}'/>">${bkList.bookNo}</a></td>
                                    <td>${bkList.bookName}</td>
                                    <td>${bkList.bookAuthor}</td>
                                    <td>${bkList.bookPrice}</td>
                                    <td><fmt:formatDate value="${bkList.bookDate}" pattern="yyyy-MM-dd"/></td>
                                    <td>${bkList.bootStock}</td>
                                    <td><img src="<c:url value='/images/${bkList.bookNo}.jpg'/>" width="30" height="30"/></td>
                                </tr>
                            </c:forEach>
			         </c:otherwise>
			   </c:choose>      
				</table><br><br>
				
				<a href="<c:url value='/'/>">메인 화면으로 이동</a>
			</div>
	</body>
</html>
