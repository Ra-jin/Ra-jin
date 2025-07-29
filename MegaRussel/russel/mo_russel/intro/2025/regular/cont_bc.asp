<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<style>
    .type02 .alarm-txt {color:#565E71;font-size:calc(28vw/7.2);letter-spacing:-0.5px;}
</style>

<div class="recruit-wrap">
    <div class="inner">
        <!-- 이벤트 전형 -->
        <!-- <p class="recruit-tit">러셀 부천 이벤트 전형 개설 (24.12~25.02 등록 한정)</p>
        <p class="text-align-left f16 bold mt20">┃자물쇠반 : <strong class="txt-red">의무시수 없이</strong> 바자관 비용 지불 후 자습관 이용</p>
        <p class="text-align-left f14 bold mt10">■ 모집 대상 : 의무시수 없이 자습관만 이용하며 자습시간을 확보하고 싶은 학생</p>
        <p class="text-align-left f14 bold mt10">■ 모집 시기  : <strong class="txt-red">12/1(일)부터 선착순 마감</strong></p>
        <p class="text-align-left f14 bold mt10">■ 입학 일정  :1/1(수)부터 순차 입학</p>
        <p class="text-align-left f14 bold mt10">■ 운영 안내</p>
        <ul class="list-dot" style="margin:0;">
            <li>의무시수 없음. 단, <span class="txt-red">단과 수강 시 지원혜택 없음</span>(할인 혜택 원할 경우 정규반 이동)</li>
            <li>이외 학생 관리, 바자관 규정 등 나머지 사항은 정규반과 동일하게 운영</li>
        </ul>
        <p class="text-align-left f14 bold mt10">■ 수강료 : 620,000원 (1개월 이용료)</p>
        <p class="text-align-left f14 bold mt10">■ 모집 방법 : 원서접수 후 등록 개별 안내</p>
        <div class="tbl-scroll-x mt20">

            <table class="tbl-type01" style="width:200%">
                <colgroup>
                    <col style="width:63px;" />
                    <col style="width:auto;" />
                    <col style="width:auto;" />
                    <col style="width:7%;" />
                    <col style="width:auto;" />
                    <col style="width:auto;" />
                    <col style="width:27%;" />
                </colgroup>
                <thead>
                    <tr class="low">
                        <th style="position: relative !important;">반편성</th>
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
                        <th class="bg-sky" style="position: relative !important;">자물쇠반</th>
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
        </div> -->

        <!-- 입학 절차 -->
        <p class="recruit-tit">입학 절차 안내</p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>입학 상담</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>등록</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>입학</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 입학 상담</p>
                <ul class="m0 f14">
                    <li>① 방문상담 : 상담일시 예약 필수</li>
                    <li>② 온라인 상담<a href="https://pf.kakao.com/_sFgGxj" class="bt-gray-s ml10">바로가기</a></li>
                    <li>③ 유선상담 032.265.1010</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 등록</p>
                <ul class="m0 f14">
                    <li>①모집요강 확인</li>
                    <li>② 단과 수업 선택 및 등록 (현장 또는 온라인 결제)</li>
                    <li>
                        ③ 서류 제출 및
                        바른공부 자습전용관 등록
                    </li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 입학</p>
                <p class="stxt">신규생 오리엔테이션 참석 필수</p>
                <ul class="list-bullet m0 mt0">
                    <li>등록생에게 별도 안내</li>
                </ul>
            </div>
        </div>


        <!-- 모집요강 및 지원혜택 -->
        <p class="recruit-tit">모집요강 및 지원혜택</p>
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6739
        Else '실서버
            AGM_CD = 1821
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

