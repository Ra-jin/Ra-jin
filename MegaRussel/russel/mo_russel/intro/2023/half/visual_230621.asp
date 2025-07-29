<%
tit_01 = "개강일"
txt_01 = "7월 순차 개강"
tit_02 = "접수 방법"
txt_02 = "현장 또는 온라인 접수 온라인 접수<span>* 자세한 내용은 학원별 모집 요강 참조</span>"
tit_03 = ""
txt_03 = ""

url_half = "/intro/danka/2023/04/half.asp"
url_am = "/intro/danka/2023/07/am.asp"
url_regular = "/intro/danka/2023/07/go3.asp"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	' method.asp 인클루드 안한 페이지에서 오류날 수 있지만, 안쓰는 페이지가 없을거라 가정

    Case "CD0247": '강남
                   txt_campus = "러셀 강남"
                   campusName = "cont_gn"
                   txt_01 = "5월 순차 개강"
                   txt_02 = "온라인 접수 <!-- <a href='https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=155' class='bt-gray-s btn-pc'>원서접수 바로가기</a> -->"
                   url_am = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1389"
                   url_regular = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1348"
                   url_half = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1330"

    Case "CD0001": '대치
                   txt_campus = "러셀 대치"
                   campusName = "cont_dc"
                   txt_01 = "상시입학(매주 월/목)"
                   txt_02 = "온라인 접수 <!-- <a href='https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=155' class='bt-gray-s btn-pc'>원서접수 바로가기</a> -->"
                   url_am = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1390"
                   url_regular = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1349"
                   url_half = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1331"
                   end_txt = "전반 마감<br>대기자 접수 중"

    Case "CD0245": '목동
                   txt_campus = "러셀 목동"
                   campusName = "cont_md"
                   txt_01 = "4/3(월) 개강"
                   txt_02 = "현장 접수(현재 모집 중)"
                   url_am = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1391"
                   url_regular = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1350"
                   url_half = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1332"

    Case "CD0250": '부천
                   txt_campus = "러셀 부천"
                   campusName = "cont_bc"
                   txt_01 = "6/1(목)부터 순차 개강"
                   txt_02 = "현장 접수"
                   url_am = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1392"
                   url_regular = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1351"
                   url_half = "곧 공개됩니다."

	Case "CD0244": '분당
                   txt_campus = "러셀 분당"
                   campusName = "cont_bd"
                   campusName02 = "russel_bd"
                   tit_01 = "접수 기간"
                   txt_01 = "<b>현재 접수 中</b><br><span class='f11'>(*모집요강 지원자격 해당자 순 접수)</span>"
                   txt_02 = "<b>온라인 원서 접수 후 성적표 제출</b><br>* <span class='f11'>온라인 원서 접수를 완료하면 이후 입학 절차를 개별적으로 안내해드립니다.</span>"
                   url_am = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1393"
                   url_regular = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1352"
                   url_half = "곧 공개됩니다."

	Case "CD0246": '센텀
                   txt_campus = "러셀 센텀"
                   campusName = "cont_ct"
                   tit_01 = "접수 기간 "
                   txt_01 = "현재 모집 중"
                   txt_02 = "현장 또는 온라인 접수 <!-- <a href='https://russelct.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=155' class='bt-gray-s btn-pc'>원서접수 바로가기</a> -->"
                   url_am = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1398"
                   url_regular = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1358"
                   url_half = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1333"

    Case "CD0249": '영통
                   txt_campus = "러셀 영통"
                   campusName = "cont_yt"
                   txt_01 = "6월 순차 개강"
                   txt_02 = "현장 접수"
                   url_am = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1394"
                   url_regular = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1353"
                   url_half = "곧 공개됩니다."

    Case "CD0257": '중계
                   txt_campus = "러셀 중계"
                   campusName = "cont_jg"
                   txt_01 = "매월 초 개강"
                   txt_02 = "전석 마감 (대기자 접수 中)"
                   url_am = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1395"
                   url_regular = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1354"
                   url_half = "곧 공개됩니다."
                   end_txt = "전석 마감<br>(대기자 접수 中)"

	Case "CD0248": '평촌
                   txt_campus = "러셀 평촌"
                   campusName = "cont_pc"
                   txt_01 = "6/2(금) 개강"
                   txt_02 = "현장 접수"
                   url_am = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1396"
                   url_regular = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1355"
                   url_half = "곧 공개됩니다."

	Case "CD0342": '대구
                   txt_campus = "러셀 대구"
                   campusName = "cont_dg"
                   txt_01 = "6월 순차 개강"
                   txt_02 = "온라인 접수<br>*온라인 원서 접수 완료 시, 이후 입학절차에 대해 개별적으로 안내"
                   url_am = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1397"
                   url_regular = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1356"
                   url_half = "곧 공개됩니다."

	Case "CD0340": '코어광주
                   txt_campus = "러셀CORE 광주"
                   campusName = "cont_gj"
                   txt_01 = "6월 순차 개강"
                   txt_02 = "현장 접수"
                   url_regular = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1359"
                   url_half = "곧 공개됩니다."

	Case "CD0341": '코어대전
                   txt_campus = "러셀CORE 대전"
                   campusName = "cont_dj"
                   txt_01 = "5월 순차적 개강"
                   txt_02 = "현장 또는 온라인 접수"
                   url_regular = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1360"
                   url_half = "곧 공개됩니다."

	Case "CD0343": '코어원주
                   txt_campus = "러셀CORE 원주"
                   campusName = "cont_wj"
                   txt_01 = "매월 초 개강"
                   txt_02 = "현장 또는 온라인 접수"
                   url_regular = "https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1361"
                   url_half = "https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1334"

	Case "CD0344": '코어전주
                   txt_campus = "러셀CORE 전주"
                   campusName = "cont_jj"
                   txt_01 = "상시 입학(매주 월/금)"
                   txt_02 = "현장 또는 온라인 접수" 
                   url_regular = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1362"
                   url_half = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1335"

	Case "CD0345": '코어창원
                   txt_campus = "러셀CORE 창원"
                   campusName = "cont_cw"
                   txt_01 = "매월 초 개강"
                   txt_02 = "현장 또는 온라인 접수"
                   url_regular = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1363"
                   url_half = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1337"

	Case "CD0346": '코어청주
                   txt_campus = "러셀CORE 청주"
                   campusName = "cont_cj"
                   txt_01 = "7월 순차 개강"
                   txt_02 = "현장 또는 온라인 접수"
                   url_regular = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1364"
                   url_half = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1336"

End Select
%>
<% If campus_code = "CD0247" Then '강남 %>
<!-- <p class="img"><a href="https://mrusselgn.megastudy.net/board/notice_view.asp?code=27479"><img src="<%=Application("img_path_russel")%>/m_russel/banner/2023/banner_freshman.jpg" alt=""></a></p> -->
<% End If %>
<div class="visual-wrap">
    <p class="v-01 img-bg" style="opacity:1"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/half/visual_01.jpg" alt=""></p>
    <p class="v-02 img-bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/half/visual_02.jpg" alt=""></p>
    <p class="v-txt txt-01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/half/visaul_txt01.png" alt=""></p>
    <p class="v-txt txt-02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/half/visaul_txt02.png" alt=""></p>

    <% If campus_code = "CD0244" Then '분당 %>
    <!-- <p class="v-03 img-bg bd"><img src="<%=Application("img_path_russel")%>/m_russel/russel_bd/2023/half/visual_03.jpg" alt=""></p> -->
    <p class="v-03 img-bg bd"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/half/visual_03.jpg" alt=""></p>
    <p class="img-needle img bd"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/half/img_needle.png" alt=""></p>
    <p class="v-txt txt-03"><img src="<%=Application("img_path_russel")%>/m_russel/russel_bd/2023/half/visaul_txt03.png" alt=""></p>
    <p class="v-txt txt-04 bd"><strong>더 빠르게, 더 강력하게, 더 확실하게!</strong>최상위권이 집결하는 러셀에서 반수 성공을 시작하세요.</p>
    <ul class="info-box bd">
        <li>
            <p><%=tit_01%></p>
            <p><%=txt_01%></p>
        </li>
    </ul>
    <% Else %>
    <p class="v-03 img-bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/half/visual_03.jpg" alt=""></p>
    <p class="img-needle img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/half/img_needle.png" alt=""></p>
    <p class="v-txt txt-03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/half/visaul_txt03.png" alt=""></p>
    <p class="v-txt txt-04"><strong>더 빠르게, 더 강력하게, 더 확실하게!</strong>최상위권이 집결하는 <% IF isCore = 1 Then %>러셀CORE<% Else %>러셀<% End If %>에서 반수 성공을 시작하세요.</p>
    <ul class="info-box">
        <li>
            <p><%=tit_01%></p>
            <p><%=txt_01%></p>
        </li>

        <% If campus_code = "INTRO" Then '인트로 %>
        <li>
            <p><%=tit_02%></p>
            <p><%=txt_02%></p>
        </li>
        <% End If %>
    </ul>
    <% End If %>
    <!-- 영상배너 -->
    <a class="video-circle" href="javascript:void(0);" onclick="playPopup('https://tv.naver.com/embed/35138567?autoPlay=true')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/half/video_circle.png" alt=""></a>

    <script>
		function playPopup(url){
			var sUrl = url.toLowerCase();
			var wnd = window.open("", "media", "width=auto,height=auto,scrollbars=0,resizable=no,location=no");

			// 네이버tv
			if (sUrl.indexOf('naver.com') > -1) {
				sUrl = sUrl.replace("/v/", "/embed/");
				wnd.document.write("<div style='position:absolute;top:50%;left:0;width:100%;transform:translateY(-50%);padding-top:55%;height:0;'><iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+sUrl+"?autoPlay=true&mute=1&playsinline=1' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' allow='autoplay' allowfullscreen></iframe></div>");
				wnd.document.title="불필요한 시간은 줄이고, 자습은 최대로 2024 반수반";
			// 유튜브
			} else {
				wnd.document.write("<div style='position:absolute;top:50%;left:0;width:100%;transform:translateY(-50%);padding-top:55%;height:0;'><iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"?autoPlay=true&mute=1&playsinline=1' frameborder='no' scrolling='no' allowfullscreen></iframe></div>");
			}
		}
    </script>
    <!-- //영상배너 -->
</div>



