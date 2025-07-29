<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2025 재학생 종합반" />
    <meta name="keywords" content="2025 재학생 종합반, 재학생 종합반, 정규반 재학생, 러셀 정규반, 정규반, 재학생, wjdrbqks" />
    <meta name="description" content="단과 수업과 의무자습을 한방에!" />
    <link rel="stylesheet" type="text/css" href="./style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
    <link rel="stylesheet" href="/css/aos.css">
</head>
<body ontocuhstart>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <% If campus_code = "CD0247" Then '강남 %>
    <strong class="tit">2025 재학생 최상위권반</strong>
    <% ElseIf campus_code = "CD0244" Then '분당 %>
    <strong class="tit">2025 재학생(고3) 정규반</strong>
    <% ElseIf campus_code = "CD0250" Then '부천 %>
    <strong class="tit">2025 고3 정규반</strong>
    <% Else %>
    <strong class="tit">2025 재학생 종합반</strong>
    <% End If %>
</h2>
<section class="sub-wrap">
    <!-- regular-go-wrap -->
    <div class="regular-go-wrap">
        
        <!--visual-->
        <!-- #include virtual = "/intro/2024/regular_go_overall/visual.asp" -->
        <!--//visual-->
        
        <!-- container -->
        <div class="container <%=campusName%>">
            <!-- fix-menu -->
            <ul class="fix-menu js-fix-menu">
                <% If campus_code = "INTRO" Then '인트로 %>
                <li class="on"> 최상위권 집결,<br>러셀</li>
                <li>재학생에 최적화된<br>시스템</li>
                <li> 학원별<br>모집안내</li>
                <% ElseIf campus_code = "CD0349" OR campus_code = "CD0344" OR campus_code = "CD0345" OR campus_code = "CD0346" OR campus_code = "CD0343" Then '울산/코어전주/코어창원/코어청주/코어원주 %>
                <li class="on">
                    <%=txtCampus%><br>모집요강 및 <br><%=menuTab01%>
                </li>
                <li> 최상위권 집결,<br>러셀</li>
                <li>재학생에<br>최적화된<br>시스템</li>
                <% Else %>
                <li class="on">
                    <%=txtCampus%><br>모집요강 및 <br><%=menuTab01%>
                </li>
                <li> <%=menuTab02%><br><%=txtCampus%></li>
                <li>재학생에<br>최적화된<br>시스템</li>
                <% End If %>
            </ul>
            <!--// fix-menu -->

            <% If campus_code <> "INTRO" Then '인트로 제외 %>
            <!-- cont00 학원별 모집안내 -->
            <div class="cont00 js-cont-wrap js-cont">
                <div class="inner">
                    <p class="recruit-tit">
                        <% If campus_code = "CD0247" or campus_code = "CD0244" or campus_code = "CD0250" Then '강남/분당/부천 %>
                        <%=txtCampus%>&nbsp;<%=mjinfo_tit%><br><strong>모집안내</strong>
                        <% Else %>
                        <%=txtCampus%> 재학생 종합반<br><strong>모집안내</strong>
                        <% End If %>
                    </p>
                    <div class="tbl-box type01">
                        <table class="tbl-type01">
                            <colgroup>
                                <col style="width: 30%">
                                <col style="width: auto">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th class="bg-sky"><%=tit_01%></th>
                                    <td class="text-align-left"><%=txt_01%></td>
                                </tr>
                                <% If campus_code <> "CD0244" and campus_code <> "CD0250" Then '분당/부천 제외 %>
                                <tr>
                                    <th class="bg-sky"><%=tit_03%></th>
                                    <td class="text-align-left"><%=txt_03%></td>
                                </tr>
                                <% End If %>   
                                <tr>
                                    <th class="bg-sky"><%=tit_02%></th>
                                    <td class="text-align-left"><%=txt_02%></td>
                                </tr>            
                            </tbody>
                        </table> 
                        
                        <!--마감딱지-->
                        <!-- <div class="ico-end" style="top: 0vw;right: 0vw;"><p><%=endText%></p></div> -->
                        <!--//마감딱지-->
                    </div>

                    <!-- 원서접수 버튼 -->
                    <% If campus_code = "CD0247" OR campus_code = "CD0001" OR campus_code = "CD0244" OR campus_code = "CD0245" OR campus_code = "CD0341" OR campus_code = "CD0344" OR campus_code = "CD0346" OR campus_code = "CD0345" OR campus_code = "CD0343" Then '강남/대치/분당/목동/코어대전/전주/청주/창원/원주 %>
                    <a href="<%=apply_url%>" onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.')" class="btn-link mt20" target="_blank"><%=apply_txt%></a>
                    <% ElseIf campus_code = "CD0250" or campus_code = "CD0248" OR campus_code = "CD0249" OR campus_code = "CD0257" Then '부천/평촌/영통/중계 %>
                    <% ElseIf campus_code = "CD0342" Then '대구 %>
                        <a <% If curYmdhmin < 202402051000 then %> onclick="alert('추후 오픈 예정입니다.')" <%else%> onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.')" href="https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168" <%end if%> class="btn-link mt20"><%=apply_txt%></a>
                    <% Else %>
                    <a href="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                    <% End If %>
                    <!-- //원서접수 버튼 -->


                    <!--학원별 컨텐츠 -->
                    <%
                        dirFile = "/intro/2024/regular_go_overall/"&campusName02&".asp"
                        Server.Execute(dirFile)
                    %>
                    <!-- //학원별 컨텐츠 -->
                </div>
            </div>
            <!-- // cont00 학원별 모집안내 -->
            <% End If %>

            <!-- tab -->
            <!-- #include virtual = "/intro/2024/regular_go_overall/tab01.asp" -->
            <!-- #include virtual = "/intro/2024/regular_go_overall/tab02.asp" -->


            
            <div class="mask-bg" style="display: none;"></div>

            <!--//content-->
            <% If campus_code <> "INTRO" Then '인트로 제외 %>
            <p><a href="tel:<%=tel%>" class="bt-tel"><span>문의전화 <%=tel%></span></a></p>
            <% End If %>
            <p><a href="<%=pc_url%>/intro/2024/regular_go/index.asp" target="_blank" class="bt-pc">PC페이지로 이동</a></p>
        </div>
    </div>
</section>

<!--  공통 하단 -->
<!-- #include virtual = "/inc/footer.asp" -->
<!--  // 공통 하단-->

<!-- script -->
<script src="/js/aos.js"></script>
<script src="./ui.js"></script>
<script>
    //aos fadeup 효과
    AOS.init({     
        offset: 300,
        duration: 500,
        easing: 'ease-in-sine',
        delay: 0,
        once: true
    });
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