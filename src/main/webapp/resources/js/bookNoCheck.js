/**
 * login.js
 */
$(document).ready(function(){
    $('#NoCheckbt').on('click',function(){
        event.preventDefault();
        
        var bookNo = $('#bookNo').val();

        $.ajax({
            type:"post",
            url:"bookNoCheck",
            data:{"bookNo":bookNo},
            dataType:'text',
            success:function(result){
                if(result == "success"){
                    alert("사용 가능한 번호입니다.");
                }
                else
                    alert("사용할 수 없는 번호입니다.");
            },
            error:function(){

            },
            complete:function(){

            }
    	});
    });
});