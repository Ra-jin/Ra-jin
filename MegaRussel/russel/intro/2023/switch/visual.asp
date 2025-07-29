<%
Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	' method.asp 인클루드 안한 페이지에서 오류날 수 있지만, 안쓰는 페이지가 없을거라 가정
	Case "CD0345":  codeCampus = "cw"  '코어창원
                    link_danka = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1286"

	Case "CD0346":  codeCampus = "cj"  '코어청주
                    link_danka = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1287"

End Select
%>
    <div class="visual-area">
        <div class="inner">
            <div class="bg-img"><img src="<%=Application("img_path_russel")%>/intro/2023/switch/visual_bg.png" alt="" /></div>
            <div class="visual-tit">
				<p><img src="<%=Application("img_path_russel")%>/intro/2023/switch/visual_stit.png" alt="성공적인 수험 생활을 위한 효율적인 생활,학습 관리!" /></p>
				<p><img src="<%=Application("img_path_russel")%>/intro/2023/switch/visual_tit01_<%=codeCampus%>.png" alt="" /></p>
                <div class="switch-motion">
                    <div class="nsu"><img src="<%=Application("img_path_russel")%>/intro/2023/switch/visual_img02.jpg" alt="N수" /></div>
                    <div class="regular"><img src="<%=Application("img_path_russel")%>/intro/2023/switch/visual_img01.jpg" alt="재학생" /></div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2023/switch/visual_tit02.png" alt="스위치반" /></p>
                </div>
            </div>
            <div class="visual-info">
                <!--모집 대상-->
                <dl>
                    <dt>모집 대상</dt>
                    <dd>평일만 이용이 가능한 N수생<br>
                        타 지역, 자사고&middot;특목고, 기숙학교 재학생 중 주중에 학원 이용이 불가한 학생 (한정 인원 모집)
                    </dd>
                </dl>
                <!--개강일-->
                <dl class="mt30">
                    <dt>개강일</dt>
                    <dd>3월 1일(수)</dd>
                </dl>
                <!--접수 방법-->
                <dl class="mt30">
                    <dt>접수 방법</dt>
                    <dd>현장 접수 (온라인 접수 불가)</dd>
                </dl>
            </div>
        </div>
        <!-- quick 배너 -->
        <div class="quick">
			<p class="b-tit">2024 수능 대비 단과</p>
            <a href="<%=link_danka%>" class="q-ban">
				<span>수능까지 체계적인<br>과목별/수준별 맞춤 단과</span>
				<strong>정규&middot;특강 단과</strong>
			</a>
        </div>
    </div>