<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
    <meta http-equiv="Content-Script-Type" content="text/javascript" />
    <meta http-equiv="Content-Style-Type" content="text/css" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>온라인 결제</title>
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <link rel="apple-touch-icon" href="https://russel.megastudy.net/russel/Data/apple-touch-icon-iphone.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="https://russel.megastudy.net/russel/Data/apple-touch-icon-ipad.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="https://russel.megastudy.net/russel/Data/apple-touch-icon-iphone4.png" />
    <link rel="apple-touch-icon-precomposed" href="/apple-touch-icon.png" />
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400,500,700,900&display=swap&subset=korean" rel="stylesheet">
    <link rel="stylesheet" href="reset.css">
    <link rel="stylesheet" href="online_payment.css">
</head>
<body>
    <div class="wrap">
        <header class="sub type02">
            <div>
                <p class="location"><span class="pc-only">온라인 결제</span> <strong>결제완료</strong></p>
                <div>
                    <p class="logo"><img src="<%=Application("img_path_russel")%>/onlinepayment/logo_wh.png" alt="러셀" /></p>
                </div>
            </div>
        </header>
        <section class="sub-wrap">
            <div class="inBox type03">
                <div class="comple-txt">
                    <p class="txt02">온라인 결제가 <span class="txt-blue">완료</span>되었습니다.</p>
                    <div class="pic"><img src="<%=Application("img_path_russel")%>/onlinepayment/payment_img.png" alt="" /></div>
                </div>
                <!-- pc -->
                <a href="https://russel.megastudy.net/russel/mypage/student/account_list.asp" class="link-btn pc-only">결제내역 확인하기</a>
                <a href="https://russel.megastudy.net/intro/gateway.asp" class="btn-blue pc-only">
                    <span>러셀 인트로 메인 바로가기</span>
                </a>
                <!-- mo -->
                <a href="https://mrussel.megastudy.net/mypage/student/account_list.asp" class="link-btn mo-only">결제내역 확인하기</a>
                <a href="https://mrussel.megastudy.net/intro/intro.asp" class="btn-blue mo-only">
                    <span>메인으로 이동</span>
                </a>
            </div>
        </section>
    </div>
</body>
</html>