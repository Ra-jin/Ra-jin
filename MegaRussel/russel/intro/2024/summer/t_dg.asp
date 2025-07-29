<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit">러셀 대구 썸머스쿨 <strong>입학 절차 안내</strong></h3>
            <!-- <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담/원서접수</p>
                    <ul class="list-03">
                        <li>방문/전화/온라인 상담</li>
                        <li>온라인 원서 접수</li>
                        <li>사전예약금 납부</li>
                    </ul>
                    <% if curYmdhmin < 202404301000 then %>
                    <a class="bt-apply" href="javascript:alert(`4/30(화) 10시 부터 가능합니다.`);">원서접수 바로가기</a>
                    <% else %>
                    <a class="bt-apply" href="https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166">원서접수 바로가기</a>
                    <% end if %>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>반 편성</p>
                    <ul class="list-03">
                        <li>성적표 제출 </li>
                        <li>모집 기준 상 반 편성</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>단과강좌 등록</p>
                    <ul class="list-03">
                        <li>수강강좌 수에 맞춰 <br>단과등록</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>온라인/현장 등록</p>
                    <ul class="list-03">
                        <li>온라인 결제링크 발송</li>
                        <li>미납 시 합격 취소</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <li>7/20(토) 개강</li>
                        <li>개강 전 OT 진행 예정</li>
                    </ul>
                </li>
            </ul> -->

            <div class="step-wrap">
                <div class="step-box" style="border-radius: 20px;">
                    <p class="tit">■ [1단계] 온라인 원서 접수 및 성적표 제출</p>
                    <div class="box">
                        <p class="fz18 fw400">- 성적표 확인 후 사전등록금 결제 링크 발송</p>
                        <p class="fz18 fw400">- 사전 등록금 : 62만원</p>
                        <ul class="list-02">
                            <li>온라인 원서접수 시, 성적표 제출은 필수입니다.</li>
                            <li>사전 등록이 완료되면 추후 안내에 따라 최종 등록(단과 선택)을 진행하게 됩니다.</li>
                            <li>사전 등록금은 썸머스쿨 바자관 비용으로 대체됩니다.</li>
                        </ul>
                    </div>
                    <p class="tit">■ [2단계] 수업(단과) 선택 및 최종 등록</p>
                    <div class="box">
                        <p class="fz18 fw400">- 단과 등록 기간 : 6/3(월) 9시~6/30(일) 예정</p>
                        <p class="fz18 fw400">- 등록 방법 : 러셀 대구 홈페이지 또는 학원 방문 접수</p>
                        <p class="fz18 fw400">- 등록 비용 : 단과 수업에 따라 상이</p>
                        <ul class="list-02">
                            <li class="red_txt">러셀 대구 모든 단과 수업은 썸머스쿨 입학과 관계없이 수강할 수 있습니다.</li>
                        </ul>
                    </div>
                    <p class="tit">■ [3단계] 입학 및 개강</p>
                    <div class="box">
                        <ul class="list-02">
                            <li>7/20(토) 개강</li>
                            <li>개강 전 OT 진행 예정</li>
                        </ul>
                    </div>
                </div>
            </div>



            <h3 class="tit" style="margin-top: 130px;">러셀 대구 썸머스쿨 <strong>모집요강</strong></h3>
            <!-- tab-wrap  -->
            <div class="tab-cont-wrap tbl-box">
                <div class="bt-tab">
                    <a href="javascript:void(0)" class="on"><strong>고3</strong></a>
                    <a href="javascript::void(0)"><strong>고2</strong></a>
                </div>

                <div class="cont-box on mt30">
                    <!-- 모집요강 자동화 시스템 영역 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 5504
                    Else '실서버
                        AGM_CD = 1590
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
                <div class="cont-box mt30">
                    <!-- 모집요강 자동화 시스템 영역 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 5513
                    Else '실서버
                        AGM_CD = 1591
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

            <div>

            </div>
        </div>
    </div>
</div>

<script>
    $(function(){
        tabMenu('.bt-tab','.cont-box');
    })
</script>