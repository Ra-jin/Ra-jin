<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="container">
    <!-- 입학절차안내 -->
    <p class="recruit-tit pt0">2023년 러셀 영통 썸머스쿨<br><strong>입학 절차</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>온라인<br>사전접수(마감)</span><br>
            <a href="https://russelyt.megastudy.net/russel/info/waiting/list.asp?ClsCode=2" class="bt-gray-s" onclick="alert('온라인 대기 접수는 PC 페이지에서 가능합니다.')">온라인 대기 바로가기</a>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>시간표 공지 및<br>
            실등록 안내</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>현장 실등록&amp;<br>
            성적표 제출</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit">1) 온라인 사전 접수(전체 마감)</p>
            <p><strong class="f16" style="color: #626262;">■ 사전 접수 기간 안내(마감)</p>
            <ul class="list-bar mb10">
                <li>4/18(화) 오후 2시<br>
                    ※ 선착순 온라인 접수, 사전등록금 290,000원
                </li>
            </ul>
            <p><strong class="f16" style="color: #626262;">■ 유의사항</p>
            <ul class="list-bar">
                <li>사전예약금 접수는 선착순으로 진행되었으며, 현재 마감되어  온라인으로 대기 신청해주시기 바랍니다.</li>
                <li>예약금을 납부한 사전접수자들에 한해 실등록 안내 예정입니다.</li>
                <li>대기자는 사전접수자 등록 완료 후 잔여석에 따라 순차적으로 안내 예정입니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 시간표 공지 및 실등록 안내</p>
            <ul class="list-star">
                <li>시간표는 추후공지 됩니다.</li>
                <li>썸머스쿨 기간은 7/15(토) ~ 8/20(일) 5주 과정이며, 3주 이상은 필수로 사용해야 합니다.</li>
                <li>학사일정에 따른 바자관 입학일 조정은 불가합니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 현장 실등록 &amp; 성적표 제출</p>

            <ul class="list-bar">
                <li>공지해드린 실등록 기간 내 학원으로 방문하여 유효한 성적표 제출 및 신청서를 작성합니다.</li>
                <li>신청서 제출 및 단과 및 바른공부 자습전용관 비용 전체 결제해 주시면 최종 등록이 완료됩니다.</li>
            </ul>

        </div>
    </div>
    <!-- //입학절차안내 -->
    <!-- 모집요강 및 장학혜택 -->
    <p class="recruit-tit">2023년 러셀 영통 썸머스쿨<br><strong>모집요강 및 장학혜택</strong></p>
    
    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 1224
        Else '실서버
            AGM_CD = 1246
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

