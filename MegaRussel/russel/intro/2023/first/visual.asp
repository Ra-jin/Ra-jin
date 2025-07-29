
<%
txtCampus = "러셀"
campusName = "intro"
tit01 = "개강일"
txt01 = "11월 순차적 개강"
tit02 = "접수방법"
txt02 = "현장 또는 온라인 접수"
coment = "* 자세한 내용은 학원별 모집 요강 참조"
coment02 = "12월 바른공부 자습전용관 전액 지원"
coment03 = "(월 62만원 상당)"

qTxt01 = "1~2월"
qTxt02 = "정규&middot;특강 단과"
quickUrl = "https://russel.megastudy.net/intro/danka/2023/01/go3.asp"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txt01 = "1월 순차적 개강" '인트로

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    tit01 = "모집 기간"
                    txt01 = "2022년 12월 ~ 2023년 2월 12일"
                    txt02 = "온라인 원서 접수"
                    coment = "* 원서 접수 확인 후 개별 안내 예정"
                    quickUrl = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1224"
                    applyUrl = "https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=147"
                    txtRecruit = ""

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel_dc"
                    txt01 = "1/2(월)"
                    txt02 = "온라인 접수"
                    coment = ""
                    quickUrl = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1225"

    Case "CD0245": txtCampus = "러셀 목동"   '목동
                    campusName = "russel_mokdong"
                    txt01 = "1/2(월) 개강"
                    txt02 = "현장 접수"
                    coment = ""
                    quickUrl = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1226"

    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
                    txt01 = "2/1(수)부터 순차적 개강"
                    txt02 = "현장 접수"
                    coment = ""
                    quickUrl = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1227"
                    qTxt01 = "2월"

	Case "CD0244": txtCampus = "러셀 분당"   '분당
                    campusName = "russel_bundang"
                    txt01 = "1/2(월)부터 순차적 개강"
                    txt02 = "추후 공지"
                    tit02 = "모집 기간"
                    txt02 = "11/23(수) ~ 1/31(화)"
                    coment = ""
                    quickUrl = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1228"

	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
                    txt01 = "12월 30일(금) 개강"
                    txt02 = "현장 또는 온라인 접수"
                    coment = ""
                    quickUrl = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1229"
                    applyUrl = "https://russelct.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=147"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    txt01 = "2월 신규생 모집 중"
                    txt02 = "현장 접수"
                    coment = ""
                    quickUrl = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1230"

    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    tit01 = "개강"
                    campusName = "russel_jg"
                    txt01 = "1차 : 2/1(수), 2차 : 2/13(월)"
                    txt02 = "현장 접수"
                    coment = ""
                    quickUrl = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1231"
                    applyUrl = "https://russeljg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=147"
                    qTxt01 = "2월"

	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"
                    txt01 = "2/1(수) 개강"
                    txt02 = "현장 접수"
                    coment = ""
                    quickUrl = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1232"


	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"
                    txt01 = "12/1(목)"
                    txt02 = "현장 또는 온라인 접수"
                    coment = ""
                    quickUrl = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1233"
                    applyUrl = "https://coregj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=147"

	Case "CD0341": txtCampus = "러셀CORE 대전"   '코어대전
                    campusName = "core_dj"
                    txt01 = "2월 초 개강"
                    txt02 = "현장 또는 온라인 접수"
                    coment = ""
                    quickUrl = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1234"
                    applyUrl = "https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=147"

    Case "CD0342": txtCampus = "러셀 대구" '대구
                   campusName = "russel_dg"
                   txt01 = "1월 2일(월) 개강"
                   txt02 = "현장 또는 온라인 접수"
                   quickUrl = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1263"
                   applyUrl = "https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=147"
                   coment = ""

    Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                   campusName = "core_wj"
                   txt01 = "1월 순차적 개강"
                   txt02 = "현장 또는 온라인 접수"
                   coment = ""
                   quickUrl = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1259"
                   applyUrl = "https://corewj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=147"

    Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                   campusName = "core_jj"
                   txt01 = "1월 순차적 개강"
                   txt02 = "현장 또는 온라인 접수"
                   coment = ""
                   quickUrl = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1260"
                   applyUrl = "https://corejj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=147"

    Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                   campusName = "core_cw"
                   txt01 = "1월 순차적 개강"
                   txt02 = "현장 또는 온라인 접수"
                   coment = ""
                   quickUrl = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1261"
                   applyUrl = "https://corecw.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=147"

    Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                   campusName = "core_cj"
                   txt01 = "1월 순차적 개강"
                   txt02 = "현장 또는 온라인 접수"
                   coment = ""
                   quickUrl = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1262"
                   applyUrl = "https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=147"


	'Case "CD0258": txtDate = "기숙"
	'Case "CD0331": r_title = "삽자루 수학학원"
End Select
%>

<!-- visual-area -->
<div class="visual-area">
    <p><img src="<%=Application("img_path_russel")%>/intro/2023/first/visual.png" alt="" /></p>
    <div class="inner">
        <div class="visual-tit">
            <% If sCampusCode = "CD0342" Then '대구 %>
            <p><img src="<%=Application("img_path_russel")%>/russel_dg/2023/first/visual_tit.png" alt="최상위권 수준별 맞춤 단과 X 바른공부 자습전용관" /></p>
            <% else %>
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/first/visual_tit.png" alt="단과 수업과 의무자습을 한방에!" /></p>
            <% end if %>
            <% If sCampusCode = "CD0340" Or sCampusCode = "CD0341" Or sCampusCode = "CD0343" Or sCampusCode = "CD0344" Or sCampusCode = "CD0345" Or sCampusCode = "CD0346" Then '코어광주/코어대전/코어원주/코어전주/코어창원/코어청주 %>
            <p class="tilt-in-left-1 pt60"><img src="<%=Application("img_path_russel")%>/intro/2023/first/visual_tit04.png" alt="2024 러셀 코어" /></p>
            <% else %>
            <p class="tilt-in-left-1 pt60"><img src="<%=Application("img_path_russel")%>/intro/2023/first/visual_tit02.png" alt="2024 러셀" /></p>
            <% end if %>
            <p class="tilt-in-left-1 delay pt30"><img src="<%=Application("img_path_russel")%>/intro/2023/first/visual_tit03.png" alt="재수생 우선선발반" /></p>

            <p class="s-tit">
                경쟁자보다 앞설 수 있는 확실한 골든타임!<br>
                <strong>한발 더 빠르게 시작하면 대입 성공이 더 확실해 집니다.</strong>
            </p>
        </div>

        <% If sCampusCode = "CD0250" Then '분당 %>
        <div class="visual-info bc">
        <% else %>
        <div class="visual-info">
        <% end if %>
            <% If sCampusCode = "CD0244" Then '분당 %>
            <dl>
                <dt><%=tit01%></dt>
                <dd class="bd"><%=txt01%></dd>
            </dl>
            <% else %>
            <dl>
                <dt><%=tit01%></dt>
                <dd><%=txt01%></dd>
            </dl>
            <% end if %>
            <% If sCampusCode = "CD0245" Then '목동 %>
            <dl>
                <dt>접수기간</dt>
                <dd>현재 모집 중 [마감 임박]</dd>
            </dl>
            <% end if %>
            <dl>
                <dt><%=tit02%></dt>
                <% If sCampusCode = "CD0247" Or sCampusCode = "CD0341" Then '강남/대전 %>
                <dd class="con-link">
                    <%=txt02%><br><span><%=coment%></span>
                    <a href="<%=applyUrl%>">원서접수 바로가기 </a>
                </dd>
                <% ElseIf sCampusCode = "CD0001" Then '대치 %>
                <dd class="con-link">
                    <%=txt02%><br><span><%=coment%></span>
                    <a <%if curYmdhmin < 202212021100 then %> onclick="alert('12/2(금) 오전 11시부터 접수 가능합니다.')" <%else%> href='https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=147' <% end if %>>원서접수 바로가기</a>
                </dd>
                <% ElseIf sCampusCode = "CD0343" Or sCampusCode = "CD0346" Or sCampusCode = "CD0246" Or sCampusCode = "CD0344" Or sCampusCode = "CD0345" Or sCampusCode = "CD0342" Then '원주/청주/센텀/전주/창원/대구 %>
                <dd class="con-link">
                    <%=txt02%><br><span><%=coment%></span>
                    <a style="padding: 5px 5px 0;" href="<%=applyUrl%>">온라인 접수 바로가기 </a>
                </dd>
                <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                <dd class="bd">
                    <%=txt02%>
                    <p class="sub-t">*모집요강 지원자격 해당자순 접수</p>
                </dd>
                <% ElseIf sCampusCode = "CD0340" Then '광주 %>
                <dd class="con-link" style="padding-right: 160px !important;">
                    <%=txt02%>
                    <a href="<%=applyUrl%>">원서접수 바로가기 </a>
                </dd>
                <% else %>
                <dd>
                    <%=txt02%><br><span><%=coment%></span>
                </dd>
                <% end if %>
            </dl>
            <% If sCampusCode = "CD0250" Then '부천 %>
            <dl>
                <dt>입학문의</dt>
                <dd>
                    <a href="https://russelbc.megastudy.net/russel/info/qna/qna.asp" class="underline">온라인 상담</a>
                    ㅣ 전화 상담 032.265.1010
                </dd>
            </dl>
            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
            <!-- <dl class="pc">
                <dt>12월 수강생 혜택</dt>
                <dd>12월 단과 3과목 수강 시 <br>
                    <strong>12월 바른공부 자습전용관 전액 지원</strong>
                </dd>
            </dl> -->
            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <dl>
                <dt>접수 방법</dt>
                <dd class="con-link bd">온라인 원서 접수
                    <a style="right: -35px;" href="https://russelbd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=147">접수하기 </a><br><p class="sub-t">*이후 입학 절차 개별 안내 예정</p>
                </dd>
            </dl>
            <% end if %>
        </div>
        <!-- //visual-info -->

        <!--마감ico-->
        <% If sCampusCode = "CD0245" Then '목동 %>
        <div class="ico-deadline" style="top: 540px;left: 50%;margin-left: 360px;"><div><strong>마감 임박</strong><p></p></div></div>
        <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
        <div class="ico-deadline" style="top: 540px;left: 50%;margin-left: 360px;"><div><strong>마감 임박</strong><p></p></div></div>
        <% end if %>
        <!--//마감ico-->
    </div>

    <!--quick 플로팅배너-->
    <div class="quick" style="display: none;">

        <% If sCampusCode = "CD0247" Then '강남 %>
        <a href="https://russelgn.megastudy.net/russel/info/notice/notice_view.asp?Code=25373&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1" class="mb20">
            <span><img src="<%=Application("img_path_russel")%>/russel_gn/2023/regular/right_banner.png" alt="재수 성공 전략 설명회" /></span>
        </a>

        <% End If %>


        <p class="b-tit">2024 수능 대비 단과</p>
        <!-- 공통 -->
        <a href="<%=quickUrl%>" class="q-ban">
            <span><%=qTxt01%></span>
            <strong><%=qTxt02%></strong>
        </a>
        <!-- //공통 -->
        <!-- 영상배너 -->
        <a href="javascript:void(0);" onclick="playPopup('https://tv.naver.com/embed/31274000?autoPlay=true')" class="mt15">
            <span><img src="<%=Application("img_path_russel")%>/intro/2023/first/midea_banner.jpg" alt="동영상 플레이 버튼" /></span>
        </a>
        <!-- //영상배너 -->
    </div>
    <!--//quick 플로팅배너-->

	<script>
        $(function(){
            $('quick').remove()
        })
		//영상 팝업
		function playPopup(url){
			var sUrl = url.toLowerCase();
			var wnd = window.open("", "media", "width=790,height=478,scrollbars=0,resizable=no,location=no");

			// 네이버tv
			if (sUrl.indexOf('naver.com') > -1) {
				sUrl = sUrl.replace("/v/", "/embed/");
				wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+sUrl+"' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' allow='autoplay' allowfullscreen></iframe>");
				wnd.document.title="경쟁자보다 앞설 수 있는 확실한 골든타임! 2024 러셀 재수생 우선선발반";
			// 유튜브
			} else {
				wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"?autoPlay=true' frameborder='no' scrolling='no' allowfullscreen></iframe>");
			}
		}

	</script>
</div>
<!-- //visual-area -->


<!-- fix-menu -->
<nav class="fix-menu-wrap">
    <div class="fix-menu type01 js-fix-menu" style="display: none;">
        <div class="menu">
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <a class="on" href="javascript:void(0);">결과로 증명하는<br><strong>재수생 우선선발반</strong></a>
            <a href="javascript:void(0);">대입 성공의 경쟁력<br><strong>재수생 맞춤 시스템</strong></a>
            <a href="javascript:void(0);">학원별<br><strong>모집요강 및 장학혜택</strong></a>

            <% ElseIf sCampusCode = "CD0247" Then '강남 %>
            <a class="on" href="javascript:void(0);"><%=txtCampus%> 재수생 우선선발반<br><strong>모집요강 및 장학혜택</strong></a>
            <a href="javascript:void(0);">결과로 증명하는<br><strong>재수생 우선선발반</strong></a>
            <a href="javascript:void(0);">대입 성공의 경쟁력<br><strong>재수생 맞춤 시스템</strong></a>

            <% ElseIf sCampusCode = "CD0342" Then '대구 %>
            <a class="on" href="javascript:void(0);">재수생 우선선발반<br><strong>모집요강 및 장학혜택</strong></a>
            <a href="javascript:void(0);">결과로 증명하는<br><strong>재수생 우선선발반</strong></a>
            <a href="javascript:void(0);">대입 성공의 경쟁력<br><strong>재수생 맞춤 시스템</strong></a>

            <% Else %>
            <a class="on" href="javascript:void(0);"><%=txtCampus%> 재수생 우선선발반<br><strong>모집요강 및 장학혜택</strong></a>
            <a href="javascript:void(0);">결과로 증명하는<br><strong>재수생 우선선발반</strong></a>
            <a href="javascript:void(0);">대입 성공의 경쟁력<br><strong>재수생 맞춤 시스템</strong></a>

            <% End If %>
        </div>
    </div>
</nav>
<!-- //fix-menu -->

<!-- 조정식/양승진 설명회 팝업 -->
<!--#include virtual="/intro/pop/2022/pop_pre.asp" -->
<!-- 조정식/양승진 설명회 팝업 -->