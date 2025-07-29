<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<!--첫번째 타이틀만 margin-top 140px(mt140), 나머지는 모두 margin-top 100px(mt100)로 클래스 추가 필수-->
<!--스페셜 페이지 있을 경우, 첫번째 타이틀에 margin-top 클래스 삭제-->
<div class="cont js-cont russel_bc">
    
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <h3 class="tit mt140"><strong>러셀 부천 재수생 이벤트 전형 개설 (24.12~25.02 등록 한정)</strong></h3>
            <div class="tbl-box type02">
                <p class="full-tit-sq">자물쇠반 : <strong class="red_txt">의무시수 없이</strong> 바자관 추가 비용을 지불하고 자습관 이용 </p>
            </div>
            <p class="txt_left fz16 bold">■ 모집 대상 : 의무시수 없이 자습관만 이용하며 자습시간을 확보하고 싶은 학생</p>
            <p class="txt_left fz16 bold mt10">■ 모집 시기 : <strong class="red_txt">12/1(일)부터 선착순 마감</strong></p>
            <p class="txt_left fz16 bold mt10">■ 입학 일정 : 1/1(수)부터 순차 입학</p>
            <p class="txt_left fz16 bold mt10">■ 운영 안내</p>
            <ul class="list-03">
                <li>의무시수 없음. 단,<strong class="red_txt"> 단과 수강 시 지원혜택 없음</strong>(할인 혜택 원할 경우 정규반 이동)</li>
                <li>이외 학생 관리, 바자관 규정 등 나머지 사항은 정규반과 동일하게 운영</li>
            </ul>
            <p class="txt_left fz16 bold mt10">■ 수강료 : 620,000원 (1개월 이용료)</p>
            <p class="txt_left fz16 bold mt10">■ 모집 방법 : 원서접수 후 등록 개별 안내</p>
            <table class="tbl-01 type02 mt20">
                <colgroup>
                    <col style="width:8%;" />
                    <col style="width:auto;" />
                    <col style="width:auto;" />
                    <col style="width:7%;" />
                    <col style="width:auto;" />
                    <col style="width:auto;" />
                    <col style="width:27%;" />
                </colgroup>
                <thead>
                    <tr class="low">
                        <th>반편성</th>
                        <th>인정시험(택1)</th>
                        <th>성적 반영 과목</th>
                        <th>등급합</th>
                        <th>단과 필수 수강시수</th>
                        <th>바자관 장학혜택</th>
                        <th>단과 수강 시수별 바자관 지원혜택</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="bg-sky">자물쇠반</th>
                        <td>수능/6평/9평</td>
                        <td>국수영탐(1) 중 3개</td>
                        <td>10</td>
                        <td>-</td>
                        <td>-</td>
                        <td>해당없음<br />
                        (*바자관 지원혜택을 원할 경우 정규반 등록)</td>
                    </tr>
                </tbody>
            </table>
            <!-- 입학절차 -->
            <h3 class="tit mt100"><strong>입학 절차</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담</p>
                    <ul class="list-base">
                        <li>① 방문상담 : 상담일시 예약 필수</li>
                        <li>② 온라인 상담 <a href="https://pf.kakao.com/_sFgGxj" class="btn-gray-s">바로가기</a></li>
                        <li>③ 유선상담 032.265.1010</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>등록</p>
                    <ul class="list-base">
                        <li>① 모집요강 확인</li>
                        <li>
                            ② 단과 수업 선택 및 등록 <br>
                            (현장 또는 온라인 결제)
                        </li>
                        <li>
                            ③ 성적표 제출 및  <br>
                            바른공부 자습전용관 등록 (현장 등록)
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>입학</p>
                    <ul class="list-base">
                        <li>
                            신규생 오리엔테이션 참석 필수 <br>
                            ※ 등록생에게 별도 안내
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100"><strong>모집요강 및 지원혜택</strong></h3>
            <div class="tab-cont-wrap tbl-box type02 mt100">
                <!-- <div class="bt-tab">
                    <a href="javascript::void(0)" class="on"><strong>12월</strong></a>
                    <a href="javascript::void(0)"><strong>1월</strong></a>
                </div> -->
                    <!-- 모집요강 자동화 시스템 영역 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 5685
                    Else '실서버
                        AGM_CD = 1765
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
            
            <!-- <h3 class="tit mt100"><strong>러셀 부천 재수생 우선선발반 12월 커리큘럼</strong></h3>
            <div class="tbl-box type02">
  
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 5702
                    Else '실서버
                        AGM_CD = 1780
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
                    
            </div> -->

        </div>
    </div>
    <!-- //cont00 -->
</div>

<script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script>