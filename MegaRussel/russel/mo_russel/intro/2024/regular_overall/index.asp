<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
  <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2025 러셀 정규반 N수" />
    <meta name="keywords" content="2025 러셀 정규반 N수, N수 정규반, 정규반 N수, 러셀 정규반, 정규반, N수, wjdrbqks" />
	<meta name="description" content="단과 수업과 의무자습을 한방에!" />
	<link rel="stylesheet" type="text/css" href="./style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
</head>

<body>
  <!-- #include virtual = "/inc/header.asp" -->
  <h2 class="sub-tit">
      <!-- #include virtual = "/inc/bt_back.asp" -->
      <strong class="tit">2025 재수종합반</strong>
  </h2>
  <% If campus_code = "CD0340" OR campus_code = "CD0349" OR campus_code = "CD0249" OR campus_code = "CD0342" OR campus_code = "CD0257" Then '코어광주/울산 %>
    <section class="sub-wrap">
        <div class="regular-wrap">
            <!--visual-->
            <!-- #include virtual = "/intro/2024/regular_overall/visual.asp" -->
            <!--//visual-->

            <!-- contents -->
            <div class="container <%=campusName%>">
                <!-- fix-menu -->
                <ul class="fix-menu js-fix-menu">
                    <li class="on">러셀 재수종합반</li>
                    <% If campus_code = "CD0349" Then '울산 %>
                    <li>최상위권 집결, 러셀</li>
                    <% ElseIf campus_code = "CD0257" Then '중계 %>
                    <li>수능 목표 성적과<br>대학 합격을 위한 <%=txtCampus%></li>
                    <% Else %>
                    <li>최상위권 집결,<br>
                    <%=txtCampus%></li>
                    <% End If %>
                    <li><%=tabTxt03%></li>
                    <li>수업 안내</li>
                    <li>재수종합반<br>
                    시스템</li>
                </ul>
                <!--// fix-menu -->

                <!-- 러셀재수종합반 tab01 -->
                <!-- #include virtual = "/intro/2024/regular_overall/tab01.asp" -->
                <!-- //러셀재수종합반 -->

                <!-- 최상위권 집결 tab02 -->
                <!-- #include virtual = "/intro/2024/regular_overall/tab02.asp" -->
                <!-- //최상위권 집결 -->

                <!-- 모집요강 tab03 -->
                <!-- #include virtual = "/intro/2024/regular_overall/tab03.asp" -->
                <!-- //모집요강 -->
                
                <!-- 수업안내 tab04 -->
                <!-- #include virtual = "/intro/2024/regular_overall/tab04.asp" -->
                <!-- //수업안내 -->
                
                <!-- 재수종합반 시스템 tab05 -->
                <!-- #include virtual = "/intro/2024/regular_overall/tab05.asp" -->
                <!-- //재수종합반 시스템 -->
            
                <p><a href="tel:<%=tel%>" class="bt-tel"><span>문의전화 <%=tel%></span></a></p>
                <p><a href="<%=pc_url%>intro/2024/regular_overall/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
            </div>
            <!-- //contents -->
        </div>
    </section>
    
    <% End If %>
    <!-- #include virtual = "/inc/footer.asp" -->
    <script src="./ui.js"></script>
    <script>
   
        // 영상캐스트 영상 팝업
        function CastPopup(url){
            var sUrl = url.toLowerCase();
            var wnd = window.open("", "talk", "width=554,height=316,scrollbars=0,resizable=no,location=no");
            
            // 네이버tv
            if (sUrl.indexOf('naver.com') > -1) {
                sUrl = sUrl.replace("/v/", "/embed/");
                wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+sUrl+"' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' allow='autoplay' allowfullscreen></iframe>");
            // 유튜브
            } else {
                wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"' frameborder='no' scrolling='no' allowfullscreen></iframe>");
            }
        }
    </script>
</body>
</html>