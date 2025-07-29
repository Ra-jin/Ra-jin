<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont russel_dc">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 모집요강 -->
            <h3 class="tit">2025 재수종합반[반수] <strong>모집요강 및 지원혜택</strong></h3>
            <div class="tbl-box">
                <p class="full-tit-sq">2025년 종합반(반수) 모집개요</p>
                <table class="tbl-01 type02">
                    <colgroup>
                        <col style="width:15%;">
                        <col style="width:;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-th">모집대상</th>
                            <td class="txt_left">2026학년도 수능 대비 N수생 (과탐 · 사탐 · 사과탐 선택자)</td>
                        </tr>
                        <tr>
                            <th class="bg-th">개강일</th>
                            <td class="txt_left">매월 초 개강</td>
                        </tr>
                        <tr>
                            <th class="bg-th">수업 과목</th>
                            <td class="txt_left">국어, 수학, 영어, 과탐(물리1, 화학1, 생명과학1, 지구과학1), 사탐(사회문화, 생활과윤리, 윤리와사상, 정치와법)</td>
                        </tr>
                        <tr>
                            <th class="bg-th">접수 방법</th>
                            <td class="txt_left">현장접수</td>
                        </tr>
                        <tr>
                            <th class="bg-th">수강료</th>
                            <td class="txt_left">1,320,000원 (4주 기준)<br>
                                ※ 위 수강료는 그린반 기준입니다.<br>
                                ※ 지정 단과 수강 시 50% 지원되며, 모든 단과가 아닌 지정된 단과에 한하여 지원됩니다.</td>
                        </tr>
                        <tr>
                            <th class="bg-th">제출 서류</th>
                            <td class="txt_left">* 2025학년도 수능성적 증명서, 6월, 9월 평가원 모의고사 성적표 중 택 1 <br>
                                * 내신성적증명서(1학년 1학기부터 3학년 1학기(중간/기말 포함 학기말)까지 성적 반영) 1부<br>
                                ※ 수능 성적표(또는 평가원 모의고사 성적표)와 내신성적표 중 택 1 제출<br>
                                ※ 반에 따라 6,9월 평가원 성적표 적용이 안되는 반이 있으므로 입학기준 확인 필요<br>
                                ※ 단과 수강 50% 지원은 모든 단과가 아닌 <strong>지정된 단과</strong>에 한하여 지원됩니다.</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <p class="full-tit-sq">2025년 종합반(반수) 입학 기준 및 지원 혜택</p>

            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6849
            Else '실서버
                AGM_CD = 1932
            End If

            strSql = " SELECT AGM_CONTENT FROM MR_ACA_GUIDE_MAS WITH(NOLOCK) WHERE AGM_IDX = " & AGM_CD
            Set Rs = russelobjdb.sqlQuery(strSql,1)
            If Not (Rs.eof Or Rs.bof) Then
                dbContents = UnsafeQuery(Rs("AGM_CONTENT"))
                dbContents = Replace(Replace(Trim(dbContents),"<IMG ", "<IMG name='img_desc' "),"<img ", "<img name='img_desc' ")
                dbContents = Replace(Replace(dbContents,"ja_va_sc","javascript"),"a_lert","alert")
            End If
            Rs.close
            Set Rs = Nothing
            Response.Write dbContents
            %>
            <!-- //모집요강 자동화 시스템 영역 -->
            
                
        </div>
    </div>
    <!-- //cont00 -->
</div>

<!-- <script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script> -->