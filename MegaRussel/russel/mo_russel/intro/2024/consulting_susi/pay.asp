<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual = "/inc/head.asp" -->
    <style>
        body, html {
            margin: 0;
            padding: 0;
            width: 100%;
            height: 100%;
            overflow:hidden;
        }
        iframe {
            width: 100%;
            height: 100%;
            border: none;
        }
    </style>
</head>
<body>
<%
    Cole_Cd = VARS("Cole_Cd")
%>
    <script>
        document.domain = 'megastudy.net';
        var payPop = window.open("/mypage/student/account_pay_chk.asp?Mode=Register&Cole_Cd=<%=Cole_Cd%>", "popup");
    </script>
</body>
</html>