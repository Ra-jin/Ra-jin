<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!--프로모션 영역-->
<!-- <div class="cont-pro">
    <p><img src="<%=Application("img_path_russel")%>/m_russel/core_cw/2025/first/cont_pro_img.jpg" alt=""></p>
</div> -->
<!--//프로모션 영역-->

<!-- 입학 절차 -->
<div class="recruit-wrap">
    <div class="inner">
        <p class="recruit-tit">입학 절차</p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>온라인<br> 
                    원서접수</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>성적표 제출/<br>
                사전예약금 납부
                </span>
            </li>
        </ul>
        <ul class="setp-diagram">
            <li>
                <div><strong>3</strong></div>
                <span>1월 단과 <br>
                    강의 선택<br>
                    및 결제</span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>우선선발반<br>
                    최종 등록<br>
                    확인</span>
            </li>
        </ul>   
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 온라인 원서접수 <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corecw.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179';" class="bt-gray-s ml10">원서접수 바로가기</a></p>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 성적표 제출/사전예약금 납부
                </p>
                <ul class="list-star m0 mt0">
                    <li>성적표 제출 시 반편성 및 사전예약금 납부 안내
                    </li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 단과 강의 선택 및 결제</p>
                <ul class="list-star m0 mt0">
                    <li>반에  따라 수강 강좌 수 상이</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit mb0">4) 우선선발반 최종 등록 확인</p>
            </div>
        </div>
    </div>
</div>

<!-- 모집요강 및 지원혜택 -->
<div class="recruit-wrap type02">
    <div class="inner">
        <p class="recruit-tit">모집요강 및 지원혜택</p>
        
            
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6723
        Else '실서버
            AGM_CD = 1805
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
<!-- //모집요강 및 장학혜택 -->