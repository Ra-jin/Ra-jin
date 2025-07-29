<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!-- 입학 절차 -->
<div class="recruit-wrap">
    <div class="inner">
        <p class="recruit-tit">입학 절차</p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>온라인<br>원서 접수 후<br> 
                    사전 예약금 납부<br>
                    (성적표 지참)</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>입학기준<br>
                    확인 후<br>
                    성적표 제출</span>
            </li>
        </ul>
        <ul class="setp-diagram">
            <li>
                <div><strong>3</strong></div>
                <span>1월 단과<br>
                    강의 선택<br>
                    및 결제</span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>우선선발반<br>
                    최종 등록<br>확인</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit mb0" style="display:inline-block;margin-right: 5px;">1) 온라인 원서 접수 후 사전예약금 납부<br>(성적표 지참)
                    <a onclick="alert('추후 오픈 예정입니다.');" class="bt-gray-s ml10">원서접수 바로가기</a></p>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 입학기준 확인 후 성적표 제출</p>
                <ul class="list-star m0 mt0">
                    <li>성적표 제출 방식<br>(온라인, 러셀CORE 광주 카카오채널, 현장 제출)<br>
                        <a href="https://pf.kakao.com/_swxoCb" class="bt-gray-s">성적표 제출 [바로가기]</a></li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 1월 단과 강의 선택 및 결제</p>
                <ul class="list-star m0 mt0">
                    <li>현장 또는 온라인 결제 가능<br>
                    <a href="https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1815" class="bt-gray-s">정규&middot;특강 단과 [바로가기]</a></li>
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
        <div class="tbl-box">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5692
            Else '실서버
                AGM_CD = 1772
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
<!-- //모집요강 및 장학혜택 -->