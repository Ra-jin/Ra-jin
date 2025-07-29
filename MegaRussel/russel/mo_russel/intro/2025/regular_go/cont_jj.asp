<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!-- 입학 절차 -->
<div class="recruit-wrap">
    <div class="inner">
        <!--연간 운영 계획-->
        <p class="recruit-tit"><strong>연간 운영 계획</strong></p>
        <table class="tbl-plan-new typeB">
            <colgroup> 
                <col style="width:25%">
                <col style="width:25%">
                <col style="width:25%">
                <col style="width:25%">
                <col style="width:25%">
            </colgroup>
            <tbody>
                <tr>
                    <th>모집 대상</th>
                    <td>고3</td>               
                    <td>고2</td>               
                    <td>고1</td>               
                </tr>
                <tr>
                    <th>1~2월</th>
                    <td colspan="3">윈터스쿨</td>
                </tr>
                <tr>
                    <th>3~6월</th>
                    <td colspan="3">재학생 정규반</td>
                </tr>
                <tr>
                    <th>7~8월</th>
                    <td colspan="3">썸머스쿨</td>
                </tr>
                <tr>
                    <th>9~11월</th>
                    <td>
                        재학생 <br> 
                        정규반
                    </td>
                    <td>
                        재학생  <br>
                        정규반, <br>
                        고2  <br>
                        수능 시작반
                    </td>
                    <td>
                        재학생  <br>
                        정규반
                    </td>
                </tr>
                <tr>
                    <th>11~12월</th>
                    <td>-</td>
                    <td>
                        재학생  <br>
                        정규반, <br>
                        고2  <br>
                        수능 시작반
                    </td>
                    <td>
                        재학생  <br>
                        정규반
                    </td>
                </tr>
            </tbody>
        </table>
        <p class="color-gray-03 f11 text-align-right mt10">
            * 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며, <br> 변동 시 별도 안내드립니다.
        </p>

        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>
                    온라인<br> 
                    원서 접수 후<br> 
                    사전예약금 납부
                </span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>
                    입학기준<br>
                    확인 후<br>
                    성적표 제출
                </span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>
                    단과 강의 <br>
                    선택 및 결제
                </span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>
                    입학확정 및 <br> 좌석배정 안내
                </span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit mb0" style="display:inline-block;margin-right: 5px;">
                    1) 온라인 원서접수 후 사전예약금 납부 
                    <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184';" class="bt-gray-s ml10">원서접수 바로가기</a>
                    <!-- <a onclick="alert('추후 오픈 예정입니다.');" class="bt-gray-s ml10">원서접수 바로가기</a> -->
                </p>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 입학기준 확인 후 성적표 제출</p>
                <ul class="list-bullet m0 mt0">
                    <li>성적표 제출 방식 : 문자 안내 예정</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit mb0">3) 단과 강의 선택 및 결제</p>
            </div>

            <div class="step-txt">
                <p class="step-tit mb0">4) 입학확정 및 좌석배정 안내</p>
            </div>
        </div>

        <p class="recruit-tit"><strong>모집요강 및 장학혜택</strong></p>
        
            
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6826
        Else '실서버
            AGM_CD = 1906
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