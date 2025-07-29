<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_dc">

    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 -->
            <h3 class="tit"><strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>원서접수 방법 및 합격자 발표</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>단과 수업 선택 및 등록</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>바자관 최종 등록(문자 안내)</p>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>원서접수 방법 및 합격자 발표 <a href="https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180" class="btn-gray-s">온라인 원서접수 바로가기</a></p>
                    <div class="box">
                        <ul class="list-02">
                            <li>원서접수 방법 [온라인]<br>
                               &middot; 반드시 “학생 ID” 로그인 (학부모 ID 불가)<br>
                               &middot; 상단 우측 메뉴 [바른공부 자습전용관] - “모집요강”에서 원서접수<br>
                               &middot; 수능, 평가원, 내신 성적 등 해당반 성적 증빙자료 첨부 [필수]<br>
                               &middot; 성적표 미제출시, 그린반 임의 배정 
                            </li>
                        </ul>
                        <ul class="list-02">
                            <li>합격자 발표 [입학 절차 포함 문자 안내]</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>단과 수업 선택 및 등록</p>
                    <div class="box">
                        <ul class="list-02">
                            <li>등록 방법 [온라인 또는 학원 방문]<br>
                               &middot; 합격자는 학습 성향 및 수준, 반별 모집요강에 맞게 희망 단과 선택 및 등록<br>
                               &middot; 의무시수(최저 입학기준) 미충족시, 바자관 이용 불가<br>
                               &middot; 개강한 단과는 학원에서 등록 가능 (대기신청 단과는 시수 미포함)<br>
                               &middot; 안내 기한까지 단과 미등록시, 원서접수 취소
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>바자관 최종 등록(문자 안내)</p>
                    <div class="box">
                        <ul class="list-02">
                            <li>등록 방법 [온라인 또는 학원 방문]<br>
                               &middot; 반별 모집요강과 개인별 단과 수강 시수( T )에 따라 바자관 지원혜택 적용<br>
                               &middot; 최종 등록 전, 단과 변경 및 취소 가능 ( 카드혜택 취소 유의 )<br>
                               &middot; 입학 전 담임선생님 및 좌석 배정 문자 안내 <br>
                               &middot; 입학 후 담임선생님에게 성적 증명서 추가 제출 必 ( 성적표 위조 방지 )<br>
                               &middot; 학원 문의는 러셀 대치 홈페이지 온라인 상담글 또는 전화 이용 ( 02-2138-1010 )
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차 상세설명-->

            <!-- 모집요강 -->
            <h3 class="tit mt100"><strong>모집요강 및 지원혜택</strong></h3>
            
                
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6775
            Else '실서버
                AGM_CD = 1856
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
    <!-- //cont00 -->
</div>

<!-- <script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script> -->




















<!-- <p class="full-tit-sq"><span class="blue_txt">[2월 개강반]</span>&nbsp;바자관 지원 혜택</p>

<p class="txt_left fz16 bold mt10"><span style="font-size:14px;">★ 매주 월/목 바자관 등록 순 입학★<br />
★ 3월 1일부터, 3월 개강반 바자관 지원 혜택 적용 (기존 재원생 포함) ★<br />
★ 3월 1일부터 N수 전문관 (3F~5F)으로 전면 자리 이동&nbsp;★</span></p>

<p class="full-stit non-type">■ 성적 우수자 장학 지원 혜택 (바자관 이용료)</p>

<p class="tar mb10"><strong class="fz14">*바자관 이용료 한달 63만원 기준</strong></p>

<table class="tbl-01 type02">
	<colgroup>
		<col style="width:20%" />
		<col style="width:auto" />
		<col style="width:20%" />
		<col style="width:auto" />
	</colgroup>
	<thead>
		<tr>
			<th>반</th>
			<th>지원금액</th>
			<th style="border-left:2px dashed #dfdfdf;">반</th>
			<th>지원금액</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th class="bg-th">HS-1반</th>
			<td>23만원</td>
			<th class="bg-th" style="border-left:2px dashed #dfdfdf;">HS-2반</th>
			<td>10만원</td>
		</tr>
	</tbody>
</table>

<p class="full-stit non-type">■ 의무시수 &amp; 단과 수강 시 지원 혜택</p>

<p class="tar mb10"><strong class="fz14">*바자관 이용료 한달 63만원 기준</strong></p>

<table class="tbl-01 type02">
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
			<th class="p-accent-t p-accent-l p-accent-b">0원<br />
			<strong class="red_txt">★ 전액 지원 ★</strong></th>
			<td class="p-accent-t p-accent-b">7.0T 이상</td>
			<td class="p-accent-t p-accent-b">10.0T 이상</td>
			<td class="p-accent-t p-accent-b">13.0T 이상</td>
			<td class="p-accent-t p-accent-b">15.0T 이상</td>
			<td class="p-accent-t p-accent-b">16.5T 이상</td>
			<td class="p-accent-t p-accent-b p-accent-r">17.5T 이상</td>
		</tr>
		<tr>
			<th>230,000원<br />
			<strong class="red_txt">[40만원 지원]</strong></th>
			<td>3.5T 이상</td>
			<td>7.0T 이상</td>
			<td>10.0T 이상</td>
			<td>12.0T 이상</td>
			<td>14.0T 이상</td>
			<td>15.0T 이상</td>
		</tr>
		<tr>
			<th>400,000원<br />
			<strong class="red_txt">[23만원 지원] </strong></th>
			<td>장학지원혜택<br />
			<span style="color:#FF0000;">*의무시수 미적용</span></td>
			<td>3.5T 이상</td>
			<td>7.0T 이상</td>
			<td>9.0T 이상</td>
			<td>11.0T 이상</td>
			<td>12.0T 이상</td>
		</tr>
		<tr>
			<th>530,000원<br />
			<strong class="red_txt">[10만원 지원] </strong></th>
			<td>-</td>
			<td>장학지원혜택<br />
			<span style="color: rgb(255, 0, 0);">*의무시수 미적용</span></td>
			<td>5.0T 이상</td>
			<td>7.0T 이상</td>
			<td>9.0T 이상</td>
			<td>10.0T 이상</td>
		</tr>
		<tr>
			<th>630,000원<br />
			<strong class="red_txt">[최저입학기준] </strong></th>
			<td>-</td>
			<td>-</td>
			<td><span style="color: rgb(255, 0, 0);">*의무시수 미적용</span></td>
			<td>3.5T 이상<br />
			<span style="color:#FF0000;">*의무시수</span></td>
			<td>7.0T 이상<br />
			<span style="color:#FF0000;">*의무시수</span></td>
			<td>9.0T 이상<br />
			<span style="color:#FF0000;">*의무시수</span></td>
		</tr>
	</tbody>
</table>

<p class="txt_left fz16 bold mt10">[참고1] 바자관 지원 혜택 유의사항</p>

<ul class="list-03">
	<li>최저 입학기준(의무시수) 미달 시, 바자관 이용 불가</li>
	<li>단과 수강에 따른 바자관 지원 혜택은 수강 강좌를 &#39;완강&#39;한 경우에만 적용 (회차 환불 시,, 해당 강좌는 시수 미적용)</li>
	<li>단과 환불 또는 추가로 인한 시수 변경 시, , 지원 혜택 재적용</li>
	<li>단과 개강 이후에도 다른 단과로 변경 가능 (시수 변경 시, 지원 혜택 재적용)</li>
	<li>바자관 환불은 퇴원일 기준이며, 반드시 담임선생님 확인 후 가능</li>
	<li>위조된 성적 증명서는 지원 받은 수강료 전액 납부 및 강제 퇴원 절차를 진행</li>
	<li>성적 증명서 미제출 시, 그린반으로 입학<br />
	※ 모집요강은 학원 사정에 의해 변동 가능</li>
</ul> -->