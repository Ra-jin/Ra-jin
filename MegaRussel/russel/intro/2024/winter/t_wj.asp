<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학 절차 안내 -->
            <h3>2025 윈터스쿨 <strong>입학 절차</strong></h3>
            
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit mb0"><span>1</span> 온라인 원서접수 후<br>
                            사전예약금 납부
                            <a href="https://corewj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173" class="btn-gray-s">원서접수 바로가기 </a>
                        </p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span> 입학 기준 확인 후<br>
                            성적표 제출
                        </p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span>단과 강의<br>
                            선택 및 결제
                        </p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>4</span> 윈터스쿨<br>
                            최종 등록 확인
                        </p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit mt0">1) 온라인 원서접수 후 사전예약금 납부</p>
                    <div class="box">
                    </div>
                    <p class="tit">2) 입학 기준 확인 후 성적표 제출
                    </p>
                    <div class="box">
                        <ul class="list-05 mt5">
                            <li>모집요강 참고</li>
                        </ul>
                    </div>
                    <p class="tit">3) 단과 강의 선택 및 결제
                    </p>
                    <div class="box">
                    </div>        
                    <p class="tit">4) 윈터스쿨 최종 등록 확인
                    </p>
                    <div class="box">
                    </div>               
                </div>
            </div>
            <!-- //입학 절차 안내 -->

            <!-- 모집요강 및 장학혜택 -->
            <h3 class="tit mt100">2025 윈터스쿨 <strong>모집요강 및 장학혜택</strong></h3>
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5657
            Else '실서버
                AGM_CD = 1736
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