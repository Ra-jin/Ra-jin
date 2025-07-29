<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 연간 운영 계획 -->
            <h3 class="tit">러셀 강남 재학생반 <strong>연간 운영 안내</strong></h3>
            <table class="tbl-plan">
                <colgroup>
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                </colgroup>
                <thead>
                    <tr>
                        <th>1월</th>
                        <th>2월</th>
                        <th>3~6월</th>
                        <th class="on">7~8월<span>전반마감</span></th>
                        <th class="on">9~11월<span>현재 모집중 </span></th>
                        <th>11~12월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>윈터스쿨</td>
                        <td>윈터스쿨 PLUS</td>
                        <td>재학생 최상위권반</td>
                        <td>썸머스쿨<br><a href="https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166">대기자 원서접수 바로가기</a></td>
                        <td>[고3] 파이널 정규반<br>
                            [고2, 고1] 재학생 최상위권반</td>
                        <td>[중3]<br>고등 대비반</td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt">
                ※ 입학 시기에 따라 모집요강 및 지원혜택이 다릅니다. 입학 시기에 해당하는 모집요강을 확인해주시기 바랍니다.<br>
                ※ 원서접수는 최초 입학생만 하시면 됩니다. (예 : 현재 재원생은 썸머스쿨 원서접수 불필요 / 재등록 별도 안내)
            </p>

            <!-- 입학절차 -->
            <h3 class="tit mt100">러셀 강남 썸머스쿨 <strong>입학 절차 안내</strong></h3>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span>원서접수</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>성적표 제출</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span>강의 등록</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>4</span>최종 등록</p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit">1) 원서접수 <a href="https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166" class="btn-gray-s ml_10">대기자 원서접수 바로가기</a></p>
                    <div class="box">
                        <ul class="shape-list mt5">
                            <li>원서접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차가 안내됩니다.</li>
                        </ul>
                    </div>
                    <p class="tit">2) 성적표 제출 <a href="https://pf.kakao.com/_hKnRb" target="_blank" class="btn-gray-s ml_10">성적표 제출하기</a></p>
                    <div class="box">
                        <ul class="shape-list">
                            <li>제출 방법 : 성적표 제출하기 버튼 클릭 > 카톡 채널 "러셀강남학원 입학처" 추가 > 상담원 채팅 > 성적표 이미지 파일 전송</li>
                            <li>문서 번호가 작성된 증명서 제출은 필수이며, 위조한 증명서로 판명될 경우 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                            <li>성적표 확인 후 반편성이 확정되며, <span class="red_txt">성적표 미 제출 시 그린반으로 배정됩니다.</span></li>
                        </ul>
                    </div>
                    <p class="tit">3) 강의 등록 <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1610" class="btn-gray-s ml_10 mr5">고3 시간표</a>
                        <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=315" class="btn-gray-s">고2 시간표</a></p>
                    <div class="box">
                        <ul class="shape-list">
                            <li>반별 필수 수강 시수에 맞춰 강의를 등록합니다.</li>
                        </ul>
                    </div>
                    <p class="tit">4) 최종 등록</p>
                    <div class="box">
                        <ul class="shape-list">
                            <li>강의 등록이 완료되면 마이페이지에서 바자관 등록이 가능합니다.</li>
                            <li>바자관 등록 확인 후 사전예약금은 순차적으로 환불해 드립니다. (요청 불필요)</li>
                            <li class="red_txt">개강 전 입학 취소 시 사전 예약금, 자습관 및 단과 결제 비용은 전액 환불됩니다.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100">러셀 강남 썸머스쿨 <strong>모집요강 및 지원혜택</strong></h3>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 5534
                Else '실서버
                    AGM_CD = 1611
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
            <!-- //모집요강 및 장학혜택 -->
                
            
        </div>
    </div>
    <!-- //cont00 -->
</div>