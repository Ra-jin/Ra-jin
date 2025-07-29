<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<%
    Call formFilter

    ' 결제모듈 필수 변수
    LecTotalPrice = "350000"
    pAcaCD = 70
    gLoginMemName = "김희경"
    LecName = "링크페이 테스트상품"

    '링크페이 전용 변수
    sLinkCd = "43"
    sSetCd = "2688171"
    sMemCd = "113233"

    sCompUrl = "/linkpay_test.asp"

    sTemp = "44443/113233"
    Response.Write strEncode(sTemp) & "<br/>"

    Response.Write VARS("v") & "<br/>"
    Response.Write strDecode(VARS("v")) & "<br/>"
%>


<meta charset="euc-kr" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<script type="text/javascript" src="/js/jquery-1.12.4.min.js"></script>

<!--#include virtual="/payment/lgdacom/lgdacom_inc.asp"-->
<button class="payment" onclick="javascript:PlugProcess();">결제하기</button>

<div>
    <span>2024.12.03 17:18 git test</span><br/>
</div>

<script>
    function PlugProcess(){
        launchCrossPlatform();
        return;
    }
</script>