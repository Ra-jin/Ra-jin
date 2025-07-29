<% 
txtCampus = "러셀"
tit01 = "개강일"
tit02 = "접수 방법"
tit03 = "입학 문의"
txtDate = "매월 초 순차 개강"
txtRecruit = "현장 접수 ｜ 현재 접수 중"
txtStudent = "고1&middot;2&middot;3"
txtConsult = "｜ 전화 상담 031.341.6500"
img_url = "intro"
visual_02 = "" '상단 비주얼 2번째 타입
play_url = "https://tv.naver.com/embed/26799486"
regular = "https://russel.megastudy.net/intro/danka/2022/09/go3.asp" '정규특강 URL
special = "https://russel.megastudy.net/intro/danka/2022/10/final.asp " '기말고사 대비


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "CD0247": txtCampus = "러셀 강남"  '강남
                   img_url = "russel_gn"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                   img_url = "russel"

    Case "CD0245": txtCampus = "러셀 목동"   '목동
                   img_url = "russel_md"

    Case "CD0250": txtCampus = "러셀 부천"   '부천
                   img_url = "russel_bc"

	Case "CD0244": txtCampus = "러셀 분당"   '분당
                   img_url = "russel_bd"

	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                   img_url = "russel_ct"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                   img_url = "russel_yt"

    Case "CD0257": txtCampus = "러셀 중계"   '중계
                   img_url = "russel_jg"

	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                   img_url = "russel_pc"
                   regular = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1232" '정규특강 URL
                   special = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=247" '기말고사 대비

	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                   img_url = "core_gj"
	Case "CD0341": txtCampus = "러셀CORE 대전"   '코어대전
                   img_url = "core_dj"

	'Case "CD0258": txtDate = "기숙"
	'Case "CD0331": r_title = "삽자루 수학학원"
	'Case "CD0342": txtDate = "대구"	
End Select 
%>
<!-- visual -->
<div class="visual <%=visual_02%>">
    <p class="v-bg"></p>
    <p class="ico"><%=txtStudent%></p>
    <div class="img-txt">
        <p class="vis-t01">오직 <%=txtStudent%>을 위한 맞춤 관리</p>
        <p class="vis-t02"><img src="<%=Application("img_path_russel")%>/intro/2023/pickel/v_txt02.png" alt="" /></p>
        <p class="vis-t03"><img src="<%=Application("img_path_russel")%>/intro/2023/pickel/v_txt03.png" alt="" /></p>
        <p class="vis-t04"><strong>고1&middot;2&middot;3을 위한 관리</strong>는 달라야 합니다.<br><strong>최상위권이 집결</strong>하는 <strong><%=txtCampus%>에서 대입 성공을 시작</strong>하세요.</p>
    </div>

    

    <!-- 안내정보/퀵메뉴 -->
    <div class="vis-info">
        <div>
            <p><%=tit01%></p>
            <p><%=txtDate%></p>
        </div>
        <div>
            <p><%=tit02%></p>
            <p><%=txtRecruit%></p>
        </div>
        <% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0248" Then '러셀평촌 %>
        <div>
            <p><%=tit03%></p>
            <p><a href="https://russelpc.megastudy.net/russel/info/qna/qna.asp" class="bt-apply">온라인 상담</a> <%=txtConsult%></p>
        </div>       
        <% End If %>       
    </div>
    <!-- 퀵메뉴 -->
    <!-- <div class="quick">
        <div class="box box01">
            <p class="tit">수능&내신 대비 단과</p>
            <div class="info">
                <p>
                    <strong class="stit">수능까지 탄탄한 커리큘럼</strong>
                    <a href="<%=regular%>" class="stxt arrow">[고3] 정규·특강 단과</a>
                </p>
                <p>
                    <strong class="stit">내신&수능 우위 선점</strong>
                    <a href="<%=final%>" class="stxt arrow">[고2·1]<br> 중간/기말고사 대비</a>
                </p>
            </div>
        </div>
        <div class="box box01">
            <p class="tit">재원생 전용</p>
            <div class="info">
                <p>
                    <strong class="stit">면학분위기로 소문난</strong>
                    <a href="https://russelpc.megastudy.net/russel_pc/info/study_hall/study_hall.asp" class="stxt arrow">바른공부 자습전용관</a>
                </p>
                <p>
                    <strong class="stit">재원생 전용<br>프리미엄 콘텐츠</strong>
                    <a href="https://russelpc.megastudy.net/russel_pc/2021/student_zone/index.asp" class="stxt arrow">재원생 Zone</a>
                </p>
            </div>
        </div>
        <a class="video" href="javascript:void(0);" onclick="playPop('<%=play_url%>')"><img src="<%=Application("img_path_russel")%>/intro/2023/pickel/btn_play.jpg" alt=""></a>
    </div> -->
    <!-- //퀵메뉴 -->
    <!-- //안내정보/퀵메뉴 -->
</div>
<!-- //visual -->
