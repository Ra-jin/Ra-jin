<%
txt_campus = "2024"
pc_url = "https://russel.megastudy.net"
c_url = "russel"
open_tit = "개강일"
open_cont = "1월 순차적 개강"
method_tit = "접수 방법"
method_cont = "현장 또는 온라인 접수"
inquiry_tit = "입학문의"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	' method.asp 인클루드 안한 페이지에서 오류날 수 있지만, 안쓰는 페이지가 없을거라 가정
    Case "CD0247": txt_campus = "러셀 강남"  '강남
                   pc_url = "https://russelgn.megastudy.net"
                   c_url = "russel_gn"
                   open_tit = "모집 기간"
                   open_cont = "2022년 12월 ~ 2023년 2월 12일"
                   method_cont = "온라인 원서 접수<br><span>* 원서접수 확인 후 개별 안내 예정</span>"

    Case "CD0001": txt_campus = "러셀 대치"   '대치
                   pc_url = "https://russeldc.megastudy.net"
                   c_url = "russel"
                   open_cont = "1/2(월)"
                   method_cont = "온라인 접수"

    Case "CD0245": txt_campus = "러셀 목동"   '목동
                   pc_url = "https://russelmd.megastudy.net"
                   c_url = "russel_mokdong"
                   open_cont = "1/2(월) 개강"
                   method_cont = "현장 접수"

	Case "CD0248": txt_campus = "러셀 평촌"   '평촌
                   pc_url = "https://russelpc.megastudy.net"
                   c_url = "russel_pc"
                   open_cont = "2/1(수) 개강"
                   method_cont = "현장 접수"

    Case "CD0250": txt_campus = "러셀 부천"   '부천
                   pc_url = "https://russelbc.megastudy.net"
                   c_url = "russel_bc"
                   open_cont = "2/1(수)부터 순차적 개강"
                   method_cont = "현장 접수"

    Case "CD0244": txt_campus = "러셀 분당"   '분당
                   pc_url = "https://russelbd.megastudy.net"
                   c_url = "russel_bundang"
                   open_cont = "1/2(월)부터 순차적 개강"
                   method_cont = "온라인 원서 접수"

	Case "CD0246": txt_campus = "러셀 센텀"   '센텀
                   pc_url = "https://russelct.megastudy.net"
                   c_url = "russel_ct"
                   open_cont = "12월 30일(금) 개강"
                   method_cont = "현장 또는 온라인 접수"

    Case "CD0249": txt_campus = "러셀 영통"   '영통
                   pc_url = "https://russelyt.megastudy.net"
                   c_url = "russel_yt"
                   open_cont = "2월 신규생 모집 중"
                   method_cont = "현장 접수"

    Case "CD0257": txt_campus = "러셀 중계"   '중계
                   pc_url = "https://russeljg.megastudy.net"
                   c_url = "russel_jg"
                   open_cont = "1차 : 2/1(수), 2차 : 2/13(월)"
                   method_cont = "현장 접수"

    Case "CD0342": txt_Campus = "러셀 대구" '대구
                   campusName = "russel_dg"
                   pc_url = "https://russeldg.megastudy.net"
                   c_url = "russel_dg"
                   open_cont = "1월 2일(월) 개강"
                   method_cont = "현장 또는 온라인 접수"

	Case "CD0340": txt_campus = "러셀CORE 광주"   '광주
                   pc_url = "https://coregj.megastudy.net"
                   c_url = "core_gj"
                   open_cont = "12/1(목)"
                   method_cont = "현장 또는 온라인 접수"

	Case "CD0341": txt_campus = "러셀 CORE 대전"   '대전
                   pc_url = "https://coredj.megastudy.net"
                   c_url = "core_dj"
                   open_cont = "2월 초 개강"
                   method_cont = "현장 또는 온라인 접수"

    Case "CD0343": txt_campus = "러셀CORE 원주"  '코어원주
                   c_url = "core_wj"
                   open_cont = "1월 순차적 개강"
                   method_cont = "현장 또는 온라인 접수"

    Case "CD0344": txt_campus = "러셀CORE 전주"  '코어전주
                   c_url = "core_jj"
                   open_cont = "1월 순차적 개강"
                   method_cont = "현장 또는 온라인 접수"

    Case "CD0345": txt_campus = "러셀CORE 창원"  '코어창원
                   c_url = "core_cw"
                   open_cont = "1월 순차적 개강"
                   method_cont = "현장 또는 온라인 접수"

    Case "CD0346": txt_campus = "러셀CORE 청주"  '코어청주
                   c_url = "core_cj"
                   open_cont = "1월 순차적 개강"
                   method_cont = "현장 또는 온라인 접수"

End Select
%>

<!--하단 고정바-->
<div class="fixed-bar">
    <a href="#">모집안내 바로가기</a>
</div>
<!--//하단 고정바-->

<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0247" Then '러셀강남 %>
<p class="banner img"><a href="https://mrusselgn.megastudy.net/board/notice_view.asp?code=25373"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/top_banner.jpg" alt=""></a></p>
<% End If %>

<div class="visual" id="visual">
    <% If campus_code = "CD0340" or campus_code = "CD0341" or campus_code = "CD0343" or campus_code = "CD0344" or campus_code = "CD0345" or campus_code = "CD0346" Then '코어광주/대전/원주/전주/창원/청주 %>
    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/core_visual_bg.jpg" alt="러셀CORE"></p>
    <% ElseIf campus_code = "INTRO" Then '인트로 %>
    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/intro_visual_bg.jpg" alt="인트로"></p>
    <% ElseIf campus_code = "CD0342" Then '러셀대구 %>
    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/dg_visual_bg.jpg" alt="대구"></p>
    <% Else %>
    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/visual_bg.jpg" alt="러셀"></p>
    <% End If %>

    <% If campus_code <> "CD0342" Then '러셀대구 제외%>
	<!-- 영상 버튼 -->
	<div class="btn-video">
		<a href="javascript:void(0);" onclick="playPopup('https://tv.naver.com/embed/31274000?autoPlay=true')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/midea_banner.png" alt="동영상 플레이 버튼"></a>
	</div>
    <script>
		function playPopup(url){
			var sUrl = url.toLowerCase();
			var wnd = window.open("", "media", "width=auto,height=auto,scrollbars=0,resizable=no,location=no");

			// 네이버tv
			if (sUrl.indexOf('naver.com') > -1) {
				sUrl = sUrl.replace("/v/", "/embed/");
				wnd.document.write("<div style='position:absolute;top:50%;left:0;width:100%;transform:translateY(-50%);padding-top:55%;height:0;'><iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+sUrl+"?autoPlay=true&mute=1&playsinline=1' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' allow='autoplay' allowfullscreen></iframe></div>");
				wnd.document.title="경쟁자보다 앞설 수 있는 확실한 골든타임! 2024 러셀 재수생 우선선발반";
			// 유튜브
			} else {
				wnd.document.write("<div style='position:absolute;top:50%;left:0;width:100%;transform:translateY(-50%);padding-top:55%;height:0;'><iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"?autoPlay=true&mute=1&playsinline=1' frameborder='no' scrolling='no' allowfullscreen></iframe></div>");
			}
		}
    </script>
	<!-- //영상 버튼 -->
    <% End If %>

</div>

<!-- 조정식/양승진 설명회 팝업 -->
<!--#include virtual="/intro/pop/2022/pop_pre.asp" -->
<!-- 조정식/양승진 설명회 팝업 -->