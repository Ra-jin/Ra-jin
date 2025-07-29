<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<!--첫번째 타이틀만 margin-top 140px(mt140), 나머지는 모두 margin-top 100px(mt100)로 클래스 추가 필수-->
<!--스페셜 페이지 있을 경우, 첫번째 타이틀에 margin-top 클래스 삭제-->
<div class="cont js-cont russel_md">
    <div class="s-page">
        <p class="s-tit">러셀 목동 재수생 우선선발반 <span>이벤트</span></p>
        <div>
            <img src="<%=Application("img_path_russel")%>/russel_mokdong/2025/first/s_page_img.png" alt="" />
        </div>
    </div>
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 -->
            <h3 class="tit"><strong>입학절차</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>
                        학원 방문 & <br>
                        자습관 등록 신청서 작성
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>
                        성적표 제출 및 <br>
                        단과 & 자습관 실등록
                    </p>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>학원 방문 & 자습관 등록 신청서 작성</p>
                    <div class="box">   
                        <ul class="list-04">
                            <li><span class="red_txt">전반 마감으로 온라인에서 대기자 접수 먼저 진행해야 합니다.</span><a class="bt-apply" href="https://russelmd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179">대기자 접수 바로가기</a></li>
                            <li>잔여석 발생 시, 등록 가능 대상자는 문자 발송 및 유선 연락 예정이며, 현장 방문 실등록하셔야합니다.</li>
                            <li>재수생 우선선발반 등록은 <span class="red_txt">‘현장’에서만</span> 가능합니다.</li>
                            <li><span class="red_txt">성적표도 같이 지참</span>해서 방문해 주셔야 합니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>성적표 제출 및 단과 & 자습관 실등록</p>
                    <div class="box">   
                        <ul class="list-04">
                            <li>현장 등록 시, 성적표 제출은 필수입니다. (미제출 시 “그린반”으로 배정됩니다.)</li>
                            <li class="red_txt">성적표 재제출로 인한 전형 변경은 12/30(월)까지만 가능합니다.</li>
                            <li class="red_txt">입학 성적과 관계 없이 입학 시 [2025 수능] 성적표는 별도 추가 제출하셔야 합니다.</li>
                            <li>위조한 성적증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                            <li>전형별 모집요강에 따른 의무 T수를 충족 및 유지해야 합니다. (“T”는 주당 수업 시간 의미)</li>
                            <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>유의사항</span>러셀 목동 이용 유의사항</p>
                    <div class="box">   
                        <ul class="list-04">
                            <li class="red_txt">평일 월~금 '오전/오후' 시간 러셀 목동학원 이용 필수 (단, 타학원/과외의 경우 담임선생님 협의 후 인정)</li>
                            <li class="red_txt">타학원/과외는 평일 저녁/주말 이용 권장</li>
                            <li>3월부터 주 4일 이상 자습관 출석해야합니다. (주 6일 기준) / 특이사항 발생 시, 담임 선생님과 상담 후 결정하셔야 합니다.</li>
                            <li>3월 기준, 전체 자리 및 담임 재배정이 진행됩니다.</li>
                            <li class="red_txt">
                                HS 전용관은 3월부터 운영될 예정이며, HS 1반 재원생에게 우선권이 부여됩니다. <br>
                                : HS 1반 中 입학 순서에 따라 HS관으로 좌석 변동 후, 남은 좌석은 HS 2반 입학 순서대로 배정됩니다.
                            </li>
                            <li>승강반 제도에 의한 반 변경은 4월 / 7월 / 10월에 진행됩니다. <span class="underline">(HS반은 월 1회 별도 강반 심사가 진행됩니다.)</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차 상세설명-->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100"><strong>모집요강 및 지원혜택</strong></h3>
            <div class="tbl-box type02">

                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 5681
                Else '실서버
                    AGM_CD = 1761
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
            <!-- //모집요강 및 지원혜택 -->
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



