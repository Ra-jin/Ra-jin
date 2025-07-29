<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap pb0 pt0">
    <!-- 입학 절차 -->
    <p class="recruit-tit">러셀CORE 창원<br><strong>윈터스쿨 입학 절차</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>온라인 원서접수 후<br>사전예약금 납부</span>
            <!-- <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.');" href="https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158" class="bt-gray-s ml10">원서접수 바로가기</a> -->
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>입학기준 확인 후<br>성적표 제출</span>
            <span class="txt">※ 성적표 제출 방식 : 별도 안내 예정</span>
        </li>
    </ul>
    <ul class="setp-diagram mt20">
        <li>
            <div><strong>3</strong></div>
            <span>단과 강의 <br> 선택 및 결제</span>
            <!-- <span class="txt">※ 단과 강의 1월 중순 결제 가능</span> -->
        </li>
        <li>
            <div><strong>4</strong></div>
            <span>윈터스쿨<br>최종 등록 확인</span>
        </li>
    </ul>

    <!-- 모집요강 및 지원 혜택 -->
    <p class="recruit-tit">
        러셀CORE 창원 윈터스쿨<br><strong>모집요강</strong>
    </p>

    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 2306
        Else '실서버
            AGM_CD = 1330
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
