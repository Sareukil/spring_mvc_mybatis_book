/**
 * bookSearch1.js
 */
//'<fmt:formatDate value="result[i].prdDate" pattern="yyyy-MM-dd"/> </td></tr>'
$(document).ready(function(){
    $('#bkSearchForm').on('submit', function(){ 	
        event.preventDefault(); 		
        
        //폼에 입력한 값들을 쿼리 스트링 방식의 데이터로 변환 : serialize() 사용
        //type=prdName&keyword=노트북 형식으로 만들어서 전송
        var formData = $(this).serialize();
        // 이렇게 보내고 컨트롤러에서 HashMap으로 받음 		
        
        // 서버에 전송하고 결과 받아서 처리
        $.ajax({
            type:"post",
            url:"bookSearch1",
            data: formData,
            success:function(result){
                // 컨트롤러가 ArrayList를 반환한 것을 result로 받음
                // <div id="searchResultBox">에 테이블 형태로
                // 받은 개수만큼 반복문으로 출력
                $('#searchResultBox').empty();
                $('#searchResultBox').append('<table id="resultTable" border="1" width="600">' + 
                       '<tr><th>도서번호</th><th>도서명</th><th>저자</th><th>가격</th>' + 
                       '<th>발행일</th><th>재고</th></tr>');
                       
               // 검색 결과 없는 경우
               if(result == ""){
                   $('#resultTable').append('<tr align="center"><td colspan="6">찾는 상품이 없습니다</td></tr>');
               } else {
                   for(var i=0; i < result.length; i++) {
                    var date = new Date(result[i].bookDate);
                    var year = ("0" + (date.getFullYear())).slice(-4);
                    var month = ("0" + (1 + date.getMonth())).slice(-2);
                    var day = ("0" + date.getDate()).slice(-2);
                    
                       $('#resultTable').append('<tr><td>' + result[i].bookNo + '</td><td>' +
                                                                                           result[i].bookName + '</td><td>' +
                                                                                           result[i].bookAuthor + '</td><td>' +
                                                                                           result[i].bookPrice + '</td><td>' +
                                                                                           year + '-' + month +'-' +day + '</td><td>' +
                                                                                           result[i].bootStock + '</td></tr>');
                   }                                                                      
               }
               $('#searchResultBox').append('</table>');
            },
            error:function(){
                alert("실패");
            }
        }); // ajax 종료 	
    });// submit 종료
});