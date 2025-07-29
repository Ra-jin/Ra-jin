<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_bc">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <p class="mb70"><img src="<%=Application("img_path_russel")%>/russel_bc/2024/first/cont00_tit01.png" alt="러셀 부천 재수생 우선선발반 입학 절차 안내"></p>
            <div class="tbl-box">

                <p class="full-tit-sq">입학 절차 안내</p>

                <table class="tbl-01">
                    <colgroup>
                        <col style="width:30%" />
                        <col style="width:40%" />
                        <col style="width:30%" />
                    </colgroup>
                    <thead>
                        <tr>
                            <th>1. 입학 상담</th>
                            <th>2. 등록</th>
                            <th>3. 입학</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="t_left">① 방문상담 : 상담일시 예약 필수<br />
                            ② 온라인 상담 <a class="btn-gray-r" href="https://pf.kakao.com/_sFgGxj">바로가기</a><br />
                            ③ 유선상담 032.265.1010</th>
                            <td class="t_left">① 모집요강 확인<br />
                            ② 단과 수업 선택 및 등록 (현장 또는 온라인 결제) 
                            <!-- <a class="btn-gray-r" href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1227">바로가기</a> -->
                            <br />
                            ③ 성적표 제출 및 바른공부 자습전용관 등록 (현장 등록)</td>
                            <td class="t_left">신규생 오리엔테이션 참석 필수<br />
                            ※ 등록생에게 별도 안내</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel_bc/2024/first/cont00_tit02.png" alt="러셀 부천 재수생 우선선발반 모집요강 및 지원혜택"></p>
            <div class="event-banner">
                <p><img src="<%=Application("img_path_russel")%>/russel_bc/2024/first/banner_special.png" alt="2025 재수생 우선선발반 HS반1 특별 혜택"></p>
                <a href="/russel_bc/2023/focus/index.asp"><img src="<%=Application("img_path_russel")%>/russel_bc/2024/first/badge_special.png" alt="N수 국수영 집중반"></a>
            </div>
            <!-- tab-wrap  -->
            <div class="tab-cont-wrap">
                <!-- bt-tab -->
                <!-- <div class="bt-tab">
                    <a href="javascript:void(0)" class="on"><strong>12월</strong></a>
                    <a href="javascript::void(0)"><strong>1~2월</strong></a>
                </div> -->
                <!-- //bt-tab -->

                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 3362
                Else '실서버
                    AGM_CD = 1387
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
            <!-- //tab-wrap  -->
        </div>
    </div>
    <!-- //cont00 -->
</div>

<script>
    $(function(){
        tabMenu('.bt-tab','.cont-box');

        // 1월 탭 막기
        // $('.bt-tab a').eq(2).off('click').on('click',function(e){
        //     e.preventDefault()
        //     // location.href='https://russelbc.megastudy.net/russel/info/notice/notice_view.asp?Code=26359&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1'
        // });
    })
</script>