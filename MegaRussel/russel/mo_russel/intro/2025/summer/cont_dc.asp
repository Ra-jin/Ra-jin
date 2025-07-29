<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!-- 입학 절차 -->
<div class="recruit-wrap">
    <div class="inner">
        <!-- 입학 절차 -->
		<p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>원서 접수 방법 <br>  [온라인]</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>단과 등록 방법<br> [온라인]</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>바자관 등록 방법<br>  [학원 내부 진행]</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 원서 접수 방법 [온라인]
                    <a class="bt-gray-s ml10" onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russeldc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'">원서접수 바로가기</a>
				</p>
                <ul class="list-dot ml0">
					<li>반드시 “학생 ID” 로그인 ( 학부모 ID 접수시, 등록 불가 )</li>
					<li>상단 우측 메뉴 [ 바른공부 자습전용관 ] - 썸머스쿨 “모집요강”에서 원서 접수</li>
					<li>원서 접수  완료 후, 예약금 63만원 결제(필수)</li>
					<li class="bold color-red">예약금 미결제시 원서 접수 취소 처리</li>
					<li>결제한 예약금은 썸머스쿨 바른공부 자습전용관 비용으로 변경</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 단과 등록 방법 [온라인]</p>
                <ul class="list-dot m0 mt0">
					<li>모집요강에 맞게 희망 단과 선택 및 등록 (등록 안내문자 발송 예정)</li>
					<li>의무 시수 (입학 기준)  미충족시, 바자관 이용 불가</li>
					<li>개강한 단과는 학원에서 등록 가능 ( 대기신청 단과는 시수 미포함 )</li>
					<li>안내 기한까지 단과 미등록 시, 원서 접수 취소</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 바자관 등록 방법 [학원 내부 진행]</p>
                <ul class="list-dot m0 mt0">
					<li>개인별 단과 수강 시수 ( T )에 따라 바자관 지원 혜택 적용( 8/18 부터 순차적 진행 예정 )</li>
					<li>최종 등록 전, 단과 변경 및 취소 가능 ( 카드혜택 취소 유의 )</li>
					<li>입학 전 담임 선생님 및 좌석 배정 문자 안내 </li>
					<li>학원 문의는 러셀 대치 홈페이지 온라인 상담글 또는 전화 이용 ( 02-2138-1010 )</li>
					<li>학원 현장 방문 불필요(학원 카드 결제 수단 변경은 입학일 이후 가능)</li>
                </ul>
            </div>
        </div>

        <!-- 모집요강 및 지원혜택 -->
		<p class="recruit-tit"><strong>모집 요강 및 지원 혜택</strong></p>
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6929
        Else '실서버
            AGM_CD = 2012
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





<!-- <p class="recruit-stit"><span class="color-blue">[2월 개강반]</span>&nbsp;바자관&nbsp;지원 혜택</p>

<p class="recruit-stxt non-type">★ 매주 월/목 바자관 등록 순 입학★<br />
★ 3월 1일부터, 3월 개강반 바자관 지원 혜택 적용 (기존 재원생 포함) ★<br />
★ 3월 1일부터 N수 전문관 (3F~5F)으로 전면 자리 이동</p>

<p class="recruit-stxt mt10">■ 성적 우수자 장학 지원 혜택 (바자관 이용료)</p>

<p class="text-align-right f11">*바자관 이용료 한달 63만원 기준</p>

<table class="tbl-type01 tbl-center">
	<colgroup>
		<col style="width:20%" />
		<col style="width:auto" />
		<col style="width:20%" />
		<col style="width:auto" />
	</colgroup>
	<thead>
		<tr>
			<th>반</th>
			<th style="border-right:2px dashed #dfdfdf;">지원금액</th>
			<th>반</th>
			<th>지원금액</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th class="bg-sky">HS-1반</th>
			<td style="border-right:2px dashed #dfdfdf;">23만원</td>
			<th class="bg-sky">HS-2반</th>
			<td>10만원</td>
		</tr>
	</tbody>
</table>

<p class="recruit-stit">의무시수 &amp; 단과 수강시&nbsp;지원 혜택</p>

<p class="text-align-right f11">*바자관 이용료 한달 63만원 기준</p>

<div class="tbl-scroll-x">
<table class="tbl-type01 tbl-center" style="width:200%">
	<colgroup>
		<col style="width:auto;" />
		<col style="width:auto;" />
		<col style="width:auto;" />
		<col style="width:auto;" />
		<col style="width:auto;" />
		<col style="width:auto;" />
		<col style="width:auto;" />
	</colgroup>
	<thead>
		<tr>
			<th rowspan="2">바자관 이용료</th>
			<th colspan="6">개인별 단과 등록 총 합산 시수(T)</th>
		</tr>
		<tr>
			<th>HS 1반</th>
			<th>HS 2반</th>
			<th>서/의치대반</th>
			<th>연고대반</th>
			<th>블루반</th>
			<th>그린반</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th class="red-t red-l red-b bg-wh">0원<br />
			<strong class="color-red">★ 전액 지원 ★</strong></th>
			<td class="red-t red-b">7.0T 이상</td>
			<td class="red-t red-b">10.0T 이상</td>
			<td class="red-t red-b">13.0T 이상</td>
			<td class="red-t red-b">15.0T 이상</td>
			<td class="red-t red-b">16.5T 이상</td>
			<td class="red-t red-b red-r">17.5T 이상</td>
		</tr>
		<tr>
			<th class="bg-wh">230,000원<br />
			<strong class="color-red">[40만원 지원]</strong></th>
			<td>3.5T 이상</td>
			<td>7.0T 이상</td>
			<td>10.0T 이상</td>
			<td>12.0T 이상</td>
			<td>14.0T 이상</td>
			<td>15.0T 이상</td>
		</tr>
		<tr>
			<th class="bg-wh">400,000원<br />
			<strong class="color-red">[23만원 지원] </strong></th>
			<td>장학지원혜택</td>
			<td>3.5T 이상</td>
			<td>7.0T 이상</td>
			<td>9.0T 이상</td>
			<td>11.0T 이상</td>
			<td>12.0T 이상</td>
		</tr>
		<tr>
			<th class="bg-wh">530,000원<br />
			<strong class="color-red">[10만원 지원] </strong></th>
			<td class="bg-gray">-</td>
			<td>장학지원혜택</td>
			<td>5.0T 이상</td>
			<td>7.0T 이상</td>
			<td>9.0T 이상</td>
			<td>10.0T 이상</td>
		</tr>
		<tr>
			<th class="bg-wh">630,000원<br />
			<strong class="color-red">[최저입학기준] </strong></th>
			<td class="bg-gray">-</td>
			<td class="bg-gray">-</td>
			<td>최저입학기준</td>
			<td>3.5T 이상<br />
			<span class="color-red f11">*최저입학기준</span></td>
			<td>7.0T 이상<br />
			<span class="color-red f11">*최저입학기준</span></td>
			<td>9.0T 이상<br />
			<span class="color-red f11">*최저입학기준</span></td>
		</tr>
	</tbody>
</table>
</div>

<p class="notice-tit">[참고1] 바자관 지원 혜택 유의사항</p>

<ul class="list-dot ml0">
	<li>최저 입학기준(의무시수) 미달 시, 바자관 이용 불가</li>
	<li>단과 수강에 따른 바자관 지원 혜택은 수강 강좌를 &#39;완강&#39;한 경우에만 적용 (회차 환불 시,, 해당 강좌는 시수 미적용)</li>
	<li>단과 환불 또는 추가로 인한 시수 변경 시, , 지원 혜택 재적용</li>
	<li>단과 개강 이후에도 다른 단과로 변경 가능 (시수 변경 시, 지원 혜택 재적용)</li>
	<li>바자관 환불은 퇴원일 기준이며, 반드시 담임선생님 확인 후 가능</li>
	<li>위조된 성적 증명서는 지원 받은 수강료 전액 납부 및 강제 퇴원 절차를 진행</li>
	<li>성적 증명서 미제출 시, 그린반으로 입학<br />
	※ 모집요강은 학원 사정에 의해 변동 가능</li>
</ul> -->