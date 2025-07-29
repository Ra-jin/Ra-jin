<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 연간 운영 계획 -->
            <h3 class="tit">러셀 센텀 재학생 대상 <strong>연간 운영 계획</strong></h3>
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
                        <th>12월</th>
                        <th>1월<!-- <span>현재 모집중</span>--></th>
                        <th class="on">2월 <span>대기 접수 중</span></th>
                        <th>3~6월</th>
                        <th>7~8월</th>
                        <th>9~11월</th>
                        <th>11~12월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>사전이용기간<br>
                            <span class="fz13">[ 12/23(월) ~ 12/31(화) ]<br>
                                ※ 전액장학지원<br>
                                 [윈터스쿨 실등록자에 한 함]</span></td>
                        <td>윈터스쿨<br>
                            <span class="fz13">[ 1/1(수) ~ 2/2(일) ]</span></td>
                        <td>윈터스쿨 PLUS<br>
                            <span class="fz13">[ 2/3(월) ~ 3/2(일) ]</span><br>
                            <a href="https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173">대기자 원서접수</a></td>
                        <td>재학생<br>
                        정규반</td>
                        <td>썸머스쿨</td>
                        <td>파이널<br>
                        정규반</td>
                        <td>프리<br>
                        윈터스쿨</td>
                    </tr>
                </tbody>
            </table>
            <!-- 입학 절차 -->
            <h3 class="tit mt100">2025 윈터스쿨 <strong>입학 절차</strong></h3>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span>원서접수</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>성적표 제출</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span>강좌 선택 및 결제</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>4</span>최종 등록</p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit mt0">1) 원서접수</p>
                    <div class="box">
                        <p class="fz16 fw400">
                            ① 온라인 원서접수 ②사전 예약금 납부
                            <a href="https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173" class="btn-gray-s ml_10">대기자 원서접수 바로가기</a>
                        </p>
                        <ul class="list-03 mt5">
                            <li>사전 예약금 (58만원)까지 결제해 주셔야 원서접수가 완료됩니다.
                            </li>
                            <li>원서접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차가 안내됩니다. </li>
                        </ul>
                    </div>
                    <p class="tit">2) 성적표 제출</p>
                    <div class="box">
                        <ul class="list-03 mt5">
                            <li>모집요강이 확정되면 성적표 제출 안내드리며, 성적표 확인 후 반배정 확정됩니다.</li>
                            <li>성적표 미제출 시 그린반으로 배정됩니다. </li>
                        </ul>
                    </div>
                    <p class="tit">3) 강좌 선택 및 결제</p>
                    <div class="box">
                        <ul class="list-03 mt5">
                            <li>윈터특강 시간표가 확정되면 의무 T수에 따른 강의 등록 안내 드립니다. </li>
                        </ul>
                    </div>
                    <p class="tit">4) 최종 등록</p>
                    <div class="box">
                        <ul class="list-03 mt5">
                            <li>강의 등록 내역 확인 후 바른공부 자습전용관 최종 등록해 드립니다.  </li>
                            <li>예약금은 전액 환불됩니다.
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- //입학 절차 -->

            <!-- 모집요강 및 장학혜택 -->
            <h3 class="tit mt100">2025 윈터스쿨 <strong>모집요강 및 장학혜택</strong></h3>

            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5617
            Else '실서버
                AGM_CD = 1696
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
            <!-- //모집요강 및 장학혜택 -->
        </div>
    </div>
</div>

<script>
    // 환불/취소 약관 팝업
    $('.r-pop-open').click(function(){
        $('.r-layer-wrap').addClass('on');
    })
    $('.r-layer-wrap .close-btn').click(function(){
        $('.r-layer-wrap').removeClass('on');
    })
</script>