<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner02">

            <p class="mb60"><img src="<%=Application("img_path_russel")%>/russel/2023/winter/cont00_tit02.png" alt="입학 절차 안내"></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span> 원서접수/예약금 결제</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span> 단과 수업 선택 및 등록</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span> 최종 등록</p>
                    </div>
                </div>
            </div>
            <div class="step-box">
                <p class="tit">1) 온라인 원서 접수
                    <% if curYmdhmin >= 202309011300 then %>
                    <a style="margin-left: 5px;" href="https://russeldc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158" class="btn-gray-s">대기자 원서접수 바로가기</a>
                    <% end if %>
                </p>
                <div class="box">
                    <ul class="shape-list">
                        <li class="stxt">온라인 원서 접수 - 학원 홈페이지에서 '학생ID'로 로그인 (학부모 ID 불가)</li>
                        <li class="stxt">성적표 사진 첨부 - 2023 전국모의고사 3,6,9월 성적 중 택 1 반영 (9월 성적은 발급 후 추후 적용 / 11월 전국모의고사는 12월로 변경되어 미적용)<br>
                            <p style="padding-left:111px">- 전국 단위 자사고, 과학고, 영재고는 별도 문의</p></li>
                        <li class="stxt"> 사전예약금 납부한 학생, 학부모 대상으로 입학 절차 안내 예정입니다.</li>
                        <li class="stxt">원서접수 마지막 단계에서 사전 예약금 (62만원)까지 결제해 주셔야 원서접수가 완료됩니다. <br>
                            <p class="red_txt">(결제창은 팝업으로 안내됩니다. 결제창이 보이지 않는 경우, 팝업 허용 후 다시 원서접수 버튼을 눌러 주시면 됩니다.)</p>
                        </li>
                    </ul>
                </div>
                <p class="tit">2) 단과 수업 선택 및 등록 (등록방법 - 학원 홈페이지)  </p>
                <div class="box">
                    <ul class="shape-list">
                        <li class="stxt">사전에 바자관 반별 *최저 입학기준 확인 필요</li>
                        <li class="stxt">학습 성향 및 수준, 바자관 반별 모집요강에 맞게 수강 희망 단과 선택과 등록 (마감 강좌 대기 중인 경우, 시수에 포함되지 않음)</li>
                        <li class="stxt">최종 등록 전, 단과 강좌 변경 및 취소 가능</li>
                        <li class="stxt">바자관 지원혜택은 등록 강좌를 [완강] 한 경우에만 적용됩니다.</li>
                    </ul>
                </div>
                <p class="tit">3) 최종 등록 (등록방법 - 학원 내부 일괄 처리 예정) </p>
                <div class="box">
                    <ul class="shape-list">
                        <li class="stxt">바자관 등록 전, 단과 수업 등록 필수</li>
                        <li class="stxt">*최저입학기준 미달 시, 바자관 등록 및 윈터스쿨 이용 불가</li>
                        <li class="stxt">개인별 단과 등록 총 합산시수(T)에 맞춰 바자관 이용료 지원</li>
                        <li class="stxt red_txt">개강 전 입학 취소 시 사전 예약금 및 단과 결제 비용은 전액 환불됩니다.</li>
                        <li class="stxt red_txt">최종등록 완료 후, 문자 안내 발송(확정된 반은 “마이페이지 - 결제내역” 에서 확인 가능) 
                        </li>
                    </ul>
                </div>
            </div>

            <p class="mt100 mb90"><img src="<%=Application("img_path_russel")%>/russel/2023/winter/cont00_tit01.png" alt="모집요강 및 장학혜택"></p>
            <!-- <div class="sns-wrap">
                <p class="txt">
                    2024 윈터스쿨 모집요강 및 지원혜택은 <strong class="txt-blue02">추후 공개</strong>됩니다.<br><br>
                    <span class="ico"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_tip.png" alt="tip"></span>
                    학원 문자 수신 알리미를 신청하시면,<br>
                    윈터스쿨 소식을 더 빠르게 받아보실 수 있습니다.
                </p>
                <a class="armbtn" href="javascript:fncAlarmPop();">학원 문자 수신 알리미 신청하기</a>
            </div> -->

            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 2341
                Else '실서버
                    AGM_CD = 1365
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