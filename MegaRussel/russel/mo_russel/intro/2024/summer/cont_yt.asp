<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">

    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">러셀 영통 썸머스쿨<br><strong>입학 절차 안내</strong></p>
    
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>온라인 <br> 사전 접수 <br>(마감)</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>시간표 공지 및 <br> 실등록 안내</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>현장 실등록 & <br> 성적표 제출</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;"> 1) ) 온라인 사전 접수(전체 마감)
            </p>
            <p class="recruit-stit m0 mb5">사전 접수 기간 안내(마감)
            </p>
            <ul class="list-bar m0">
                <li>4/22(월) 오후 2시
                </li>
            </ul>
            <ul class="list-bullet m0 mb5">
                <li>선착순 온라인 접수, 사전등록금 145,000원
                </li>
            </ul>
            <p class="recruit-stit m0 mb5">유의사항
            </p>
            <ul class="list-bar m0">
                <li>사전예약금 접수는 선착순으로 진행되었으며, 현재 마감되어.  온라인으로 대기 신청해주시기 바랍니다.</li>
                <li>예약금을 납부한 사전접수자들에 한 해 실등록 안내 예정입니다. </li>
                <li>대기자는 사전접수자 등록 완료 후 잔여석에 따라 순차적으로 안내 예정입니다.</li>
                <li>예약금은 실 등록 시 환불 되는 금액입니다.</li>
                <li>추후 전형에 해당하는 증빙서류 미제출시,입학이 제한될 수 있습니다.</li>
            </ul>
            <% if curYmdhmin < 202404221400 then %>
            <a href="javascript:void(0)" onclick="alert('4/22(월) 오후 2시부터 선착순 접수입니다. *팝업해제 필수*')" class="btn-link mt20">사전접수 바로가기</a>
            <% else %>
            <!-- <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.')" href="https://russelyt.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166" class="btn-link mt20">사전접수 바로가기</a> -->
            <% end if %>
            <a onclick="alert('PC 페이지에서 이용 가능합니다.')" href="https://russelyt.megastudy.net/russel/info/waiting/list.asp?ClsCode=2" class="btn-link mt20">온라인 대기 바로가기</a>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 시간표 공지 및 실등록 안내</p>
            <ul class="list-star m0">
                <li>시간표는 추후 공지 됩니다.</li>
                <li>썸머스쿨 기간은 7/20(토) ~ 8/18(일) 5주 과정이며, 3주 이상은 필수로 사용해야 합니다.</li>
                <li>학사일정에 따른 바자관 입학일 조정은 불가합니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 현장 실등록 & 성적표 제출</p>
            <ul class="list-bar m0">
                <li>공지된 실등록 기간 내 학원으로 방문하여 유효한 성적표 제출 및 신청서를 작성합니다.</li>
                <li>신청서 제출과 단과, 바른공부자습전용관 비용 전체를 결제하면 최종 등록이 완료됩니다.</li>
            </ul>
        </div>
    </div>


    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 영통 썸머스쿨<br><strong>모집요강 및 지원혜택</strong></p>
    
    <div class="tbl-box p0 pt10">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 5538
        Else '실서버
            AGM_CD = 1617
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