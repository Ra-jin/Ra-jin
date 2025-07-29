<%
Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	' method.asp 인클루드 안한 페이지에서 오류날 수 있지만, 안쓰는 페이지가 없을거라 가정
    Case "CD0345":  codeCampus = "cw"  '코어창원
                    link_danka = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1286"

    Case "CD0346":  codeCampus = "cj"  '코어청주
                    link_danka = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1287"


End Select
%>
<div class="visual">
    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/switch/v_img01_<%=codeCampus%>.jpg" alt="" /></p>
    <div class="switch-motion">
        <p class="img nsu"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/switch/v-nsu.jpg" alt="N수" /></p>
        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/switch/v-regular.jpg" alt="재학생" /></p>
    </div>
    <div class="visual-info">
        <div>
            <!--모집 대상-->
            <dl>
                <dt>모집 대상</dt>
                <dd>평일만 이용이 가능한 N수생<br>
                    타 지역, 자사고&middot;특목고,<br>
                    기숙학교 재학생 중<br>
                    주중에 학원 이용이 불가한 학생<br>
                    (한정 인원 모집)
                </dd>
            </dl>
            <!--개강일-->
            <dl class="mt10">
                <dt>개강일</dt>
                <dd>3월 1일(수)</dd>
            </dl>
            <!--접수 방법-->
            <dl class="mt10">
                <dt>접수 방법</dt>
                <dd>현장 접수 (온라인 접수 불가)</dd>
            </dl>
        </div>
    </div>
</div>
<div class="fixed-bar">
    <a href="#">모집안내 바로가기</a>
    <!-- 마감말풍선 -->
    <!-- <p class="ico-end-b">남자반 마감</p> -->
</div>