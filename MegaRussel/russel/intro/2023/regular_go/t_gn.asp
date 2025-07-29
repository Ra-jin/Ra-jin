<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00" style="padding-top: 220px;">
        <div class="inner02">

            <!--연간운영계획-->
            <p class="mb60"><img src="<%=Application("img_path_russel")%>/russel_gn/2023/regular_go/cont00_tit01.png" alt="재학생반 연간 운영 계획"></p>
            <table class="tbl-plan">
                <colgroup>
                    <col style="width:20%" />
                    <col style="width:20%" />
                    <col style="width:20%" />
                    <col style="width:20%" />
                    <col style="width:20%" />
                </colgroup>
                <thead>
                    <tr>
                        <th>1월</th>
                        <th>2월</th>
                        <th>3~6월</th>
                        <th>7~8월</th>
                        <th class="on">9~11월  <span>현재 모집중</span></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>윈터스쿨</td>
                        <td>윈터스쿨 PLUS</td>
                        <td>재학생 최상위권반</td>
                        <td>썸머스쿨</td>
                        <td>재학생 최상위권반 (고2, 고1)<br><a href="https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=152" alt="">온라인 원서접수</a></td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt">※ 입학 시기에 따라 모집요강 및 장학혜택이 다릅니다. 입학 시기에 해당하는 모집요강을 확인해주시기 바랍니다.</p>
            <!--//연간운영계획-->

            <!--입학절차안내-->
            <p class="mb60 mt100"><img src="<%=Application("img_path_russel")%>/russel_gn/2023/regular_go/cont00_tit02.png" alt="입학 절차 안내"></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span> 온라인 원서접수</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span> 성적표 제출</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span> 최종 등록</p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit">1) 2024 재학생 최상위권반 원서접수<a href="https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=152" class="btn-gray-s" style="margin-left: 10px;">온라인 원서 접수 바로가기</a></p>
                    <div class="box">
                        <ul class="shape-list">
                            <li>원서접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차 안내가 이뤄집니다. </li>
                        </ul>
                    </div>
                    <p class="tit">2) 성적표 제출 <a href="https://pf.kakao.com/_hKnRb" class="btn-gray-s">성적표 제출하기</a></p>
                    <div class="box">
                        <ul class="shape-list">
                            <li>원서접수 후, <span class="blue">성적표 제출하기 버튼 클릭 > 러셀 강남 입학처 플친 추가 > 상담원 채팅 > 성적표 이미지 파일을 전송</span>해주시기 바랍니다. </li>
                            <li>문서 번호가 작성된 성적증명서 제출은 필수이며, 위조한 성적증명서로 판명될 경우 수강료 납부 및 퇴원 절차를 진행합니다. </li>
                            <li><span class="blue">성적표 미 제출 시 그린반으로 배정</span>됩니다.</li>
                        </ul>
                    </div>
                    <p class="tit">3) 최종 등록</p>
                    <div class="box">
                        <p class="step-tit">모집요강 확인 및 단과 수강 신청 (결제) <a href="https://russelgn.megastudy.net/russel/info/notice/notice_view.asp?Code=25371&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1" class="btn-gray-s">시간표 보러가기</a></p>
                        <ul class="shape-list">
                            <li>성적표 제출 후 반편성이 완료되면, 단과 수강 여부를 결정하고 단과 등록을 완료 합니다. (단과 온라인 결제)</li>
                            <li>단과 결제 완료 후, 학원으로 연락주시면 자습관 등록 안내 드립니다. </li>
                            <li><strong class="blue2">급식 이용 시 등원일 3일 전(평일 기준)까지 등록을 완료</strong>해 주시기 바랍니다.<br>(예시 : 월요일 등원 시, 전주 수요일까지 등록해야 월요일 급식 예약 가능)</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차안내-->

            <p class="mb60 mt100"><img src="<%=Application("img_path_russel")%>/russel_gn/2023/regular_go/cont00_tit03.png" alt="모집요강 및 장학혜택"></p>
            <div class="tbl-box">

            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 1122
            Else '실서버
                AGM_CD = 1144
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
    </div>
    <!-- //cont00 -->
</div>