<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
    var c = $('.list_item .company_nm .str_tit').length; // +1 제거 (올바른 개수 유지)
    console.log("Total count:", c);

    function sendAjaxRequest(i) {
        if (i >= c) {
            console.log("All requests completed.");
            return;
        }

        let key = $('.interested_corp:eq('+i+')').attr('csn'); // 선택자 수정
        console.log("Requesting key:", key, "Index:", i);

        if (key) { // key가 존재할 때만 요청
            $.ajax({
                type: 'POST',
                url: 'crawl.do',
                data: {"key": key, "i": i},
                success: function(response) {
                    console.log("Success:", response);
                },
                error: function(xhr, status, error) {
                    console.error("Error:", error);
                }
            });
        } else {
            console.warn("Skipping index", i, "- key not found.");
        }

        setTimeout(function(){
            sendAjaxRequest(i + 1);
        }, 3000); // 3초 간격으로 실행
    }

    sendAjaxRequest(0); // 첫 번째 호출
});
</script>
</head>
<body>

</body>
</html>