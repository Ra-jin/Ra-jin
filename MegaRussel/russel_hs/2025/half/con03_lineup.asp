<!-- tab04. 입학 안내 -->
<div class="cont js-cont">
	<!-- cont11 -->
	<div class="cont11">
        <div class="inner">
			<h3 class="tit mb70">2026 반수반 모집요강</h3>
			
			<!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6874
            Else '실서버
                AGM_CD = 1956
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

			<h3 class="tit mt100 mb70">2026 반수반 수강료 안내</h3>
			<div class="tbl-box">
				<div class="box">
					<p class="mb20 fz18">등록 예약금 : 80만원 (수강료에 포함. 입학취소 시 전액환불)<br>
						<span class="fz14">** 입금방법 : 가상계좌로 입금. 가상계좌는 서류심사 후 합격자에 한해 신청자 휴대폰 문자(카카오톡)로 발송</span></p>
					<p class="txt-botline fz18">월 수강료 : 395만원 (30일 기준)</p>
					<ul class="list-base mt0">
						<li>수강료 : 1,391,000</li>
						<li>식비 : 735,000</li>
						<li>진학지도비 : 50,000</li>
						<li>기숙사비 : 1,774,000</li>
					</ul>
					<ul class="list-05">
						<li>모의고사비,교재비,콘텐츠비,단체복비는 별도납부</li>
						<li>자습전용관 비용은 별도로 받지 않음</li>
						<li>단체복은 초기 입소시 1회 납부 (동복,하복)</li>
						<li>1인실 기숙사 1개월 기준 30만원 추가발생</li>
						<li>해당 수강료는 2인실 기준이며, 3인실 선택 시 월 수강료는 380만원임</li>
					</ul>
				</div>	
			</div>

			<h3 class="tit mt100">2026 반수반 수업안내</h3>
			<div class="tbl-box">
				<p class="full-b-stxt mt50">1) 필수수업 구성</p>
				<table class="tbl-01 type02">
					<colgroup>
						<col style="width:;">
						<col style="width:;">
						<col style="width:;">
						<col style="width:;">
						<col style="width:;">
						<col style="width:;">
					</colgroup>
					<thead>
						<tr>
							<th>항목</th>
							<th>국어<br>
								(독서+문학)</th>
							<th>수학<br>
								(미적/확통/기하 중 선택)</th>
							<th>필수선택1</th>
							<th>필수선택2</th>
							<th>총합</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="b-l-n">주당 수업시간</td>
							<td>3.5T</td>
							<td>7T</td>
							<td>3.5T</td>
							<td>3.5T</td>
							<td>17.5T</td>
						</tr>
					</tbody>
				</table>
				<p class="l-txt">** 필수선택수업은 최소 2과목 이상 선택해야 하며, 추가 선택에 따른 비용은 없습니다.<br>
					** 언매, 화작은 시즌 중 특강으로 선택 가능합니다.</p>

				<p class="txt-left mt50">&lt;공통필수-TEST&gt;</p>
				<table class="tbl-01 type02">
					<colgroup>
						<col style="width:;">
						<col style="width:;">
						<col style="width:;">
						<col style="width:;">
					</colgroup>
					<thead>
						<tr>
							<th></th>
							<th>국수영탐<br>
								일일/주간 TEST</th>
							<th>영어듣기</th>
							<th>체육</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="b-l-n">주당 수업시간</td>
							<td>8T</td>
							<td>2.5T</td>
							<td>1T</td>
						</tr>
					</tbody>
				</table>

				<p class="full-b-stxt mt50">2) 필수선택 수업</p>
				<table class="tbl-01 type02">
					<colgroup>
						<col style="width:;">
						<col style="width:;">
						<col style="width:;">
						<col style="width:;">
						<col style="width:;">
						<col style="width:;">
					</colgroup>
					<thead>
						<tr>
							<th>항목</th>
							<th>영어</th>
							<th>탐구(사/과탐)</th>
							<th>수리논술</th>
							<th>인문논술</th>
							<th>한국사</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="b-l-n" rowspan="2">필수<br>선택수업</td>
							<td>3.5T</td>
							<td>과목당 3.5T</td>
							<td>3.5T</td>
							<td>3.5T</td>
							<td>3.5T</td>
						</tr>
						<tr>
							<td colspan="5">최소 택 2과목</td>
						</tr>
					</tbody>
				</table>
				<p class="l-txt">사회탐구 (9과목) : 전과목 개설(현장강의)<br>
					과학탐구 (8과목) : 전과목 개설(현장강의)</p>

				<p class="full-b-stxt mt50">3) 자율선택수업 : 시기별 학생 필요에 따른 선택수업</p>
				<table class="tbl-01 type02">
					<colgroup>
						<col style="width:20%;">
						<col style="width:;">
					</colgroup>
					<tbody>
						<tr>
							<th class="bg-th" rowspan="5">국어</th>
							<td class="txt-left">N수 고난도 독서 집중반</td>
						</tr>
						<tr>
							<td class="txt-left">실전 모의고사 연습</td>
						</tr>
						<tr>
							<td class="txt-left">언어와 매체 - 문법의 체계완성</td>
						</tr>
						<tr>
							<td class="txt-left">언어와 매체 - 실전연습을 통한 개념완성</td>
						</tr>
						<tr>
							<td class="txt-left">화법과 작문 - 개념 및 실전연습(개설 예정)</td>
						</tr>
						<tr>
							<th class="bg-th" rowspan="4">수학</th>
							<td class="txt-left">핫도그 (스팟수업) : 도형,그래프 정복하기</td>
						</tr>
						<tr>
							<td class="txt-left">키에사 (스팟수업) : 수특 함수 및 정적분</td>
						</tr>
						<tr>
							<td class="txt-left">오메가 수학 핵심 문제풀이</td>
						</tr>
						<tr>
							<td class="txt-left">오메가 수학 문제를 통한 핵심개념 정리</td>
						</tr>
						<tr>
							<th class="bg-th" rowspan="2">영어</th>
							<td class="txt-left">문제 유형별 타겟공략</td>
						</tr>
						<tr>
							<td class="txt-left">수능시너지 - 긴문장 해석 FOCUS</td>
						</tr>
					</tbody>
				</table>
				<p class="l-txt">** 자율선택 수업은 국/수/영/탐구 중 보완이 필요한 부분을 학생 스스로 추가 선택하여 들을 수 있으며 시기별로 다양한 강좌들이 개설됩니다.<br>
					** 수업 선택에 따른 비용발생은 없습니다.<br>
					** 재원생들의 요청 및 의견을 반영한 강좌가 개설될 수 있으며, 신청은 입소 후 담임선생님 안내에 따라 자유롭게 신청할 수 있습니다.<br>
					** 신청방법은 입소 후 학원에서 지급되는 1인 1탭에 설치되어 있는 최상위권 러셀기숙(=파랑새앱)으로 신청할 수 있습니다.</p>
			</div>

			<!-- 입학 절차 안내 -->
			<div class="process-wrap mt100">
				<h3 class="tit ">2026 반수반 입학 절차 안내</h3>
				<a class="i-process" href="/russel_hs/school/supply.asp"><img src="<%=img_path_russelhs%>/2025/half/i-process.png" alt=""></a>
				<ul class="a-process step-over full-step">
					<li>
						<div class="flag">STEP 1</div>
						<div class="tp3">
							<p>온라인 상담</p>
							<ul class="list-03">
								<li>학원 홈페이지</li>
								<li>1:1 문의게시판</li>
							</ul>
						</div>
						<div class="tp3">
							<p>전화 상담</p>
							<ul class="list-03">
								<li>유선상 입학상담<br>
									(031.326.5000)</li>
							</ul>
						</div>
						<div>
							<p>방문 상담</p>
							<ul class="list-03">
								<li>학원 방문예약(전화)</li>
								<li>방문 전 온라인 원서접수</li>
								<li>방문 상담</li>
							</ul>
						</div>
					</li>
					<li>
						<div class="flag">STEP 2</div>
						<p>원서접수</p>
						<ul class="list-03">
							<li>온라인 원서접수</li>
							<li>성적정보 필수기입</li>
							<li>성적표 첨부</li>
						</ul>
					</li>
					<li>
						<div class="flag">STEP 3</div>
						<p>서류심사</p>
						<ul class="list-03">
							<li>입학여부 전화 안내</li>
							<li>전형 자격요건 확인</li>
							<li>학원 규칙 준수 여부<br>
								확인</li>
						</ul>
					</li>
					<li>
						<div class="flag">STEP 4</div>
						<p>등록</p>
						<ul class="list-03">
							<li>등록 예약금 납부</li>
							<li>입학일 확인</li>
							<li>제출서류 안내</li>
						</ul>
					</li>
					<li>
						<div class="flag">STEP 5</div>
						<p>입학</p>
						<ul class="list-03">
							<li>잔금납부</li>
							<li>제출 서류 확인</li>
							<li>입학 준비물 안내</li>
							<li>입학 일시 준수</li>
						</ul>
					</li>
				</ul>
			</div>
        </div>
    </div>
</div>

<!-- tab02. 학습계획 및 일과표 -->
<div class="cont js-cont">
	<!-- cont12 -->
	<div class="cont12">
        <h3 class="tit mb60">수능 시간표를 따라가는 <strong>최상위권 전문관 표준 일과표</strong><br>
			<span>실전 감각 최적화 가능</span></h3>
        <div class="inner">
			<div class="tbl-box" style="display:flex;">
				<table class="tbl-01 type02">
					<colgroup>
						<col style="width: 25%;">
						<col style="width: 25%;">
						<col style="width:auto">
					</colgroup>
					<thead>
						<tr>
							<th colspan="3" class="bg-th txt-black">월요일 ~ 토요일</th>
						</tr>
						<tr>
							<th class="b-l-n">교시</th>
							<th>시간</th>
							<th>일과내용</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th class="bg-th row" rowspan="3">0교시</th>
							<th class="bg-th">06:20~07:30</th>
							<td>기상, 세면, 아침 식사<br>
								자습관 입실</td>
						</tr>
						<tr>
							<th class="bg-th b-l">07:30~07:40</th>
							<td>자습관 인원 점검<br>
								(자리 이동 금지)</td>
						</tr>
						<tr>
							<th class="bg-th b-l">07:40~08:20</th>
							<td>학습계획서 작성<br>
								명상의 시간, 수능 체조</td>
						</tr>
						<tr>
							<th class="bg-th">1교시</th>
							<th class="bg-th">08:30~09:30</th>
							<td rowspan="3">오전 수업 및 의무 자습</td>
						</tr>
						<tr>
							<th class="bg-th">2교시</th>
							<th class="bg-th">09:45~10:45</th>
						</tr>
						<tr>
							<th class="bg-th">3교시</th>
							<th class="bg-th">11:00~12:00</th>
						</tr>
						<tr>
							<th class="bg-th">점심식사</th>
							<th class="bg-th">12:00~13:00</th>
							<td>점심식사</td>
						</tr>
						<tr>
							<th class="bg-th">영어듣기</th>
							<th class="bg-th">13:00~13:20</th>
							<td>영어 듣기 (수능 체조)</td>
						</tr>
						<tr>
							<th class="bg-th">4교시</th>
							<th class="bg-th">13:30~14:30</th>
							<td rowspan="3">
								오후 수업 / 의무 자습<br>
								질의응답
							</td>
						</tr>
						<tr>
							<th class="bg-th">5교시</th>
							<th class="bg-th">14:45~15:45</th>
						</tr>
						<tr>
							<th class="bg-th">6교시</th>
							<th class="bg-th">16:00~17:00</th>
						</tr>
						<tr>
							<th class="bg-th">담임 시간</th>
							<th class="bg-th">17:10~17:20</th>
							<td>자습 및 담임 시간</td>
						</tr>
						<tr>
							<th class="bg-th">저녁 식사</th>
							<th class="bg-th">17:20~18:20</th>
							<td>저녁 식사 (수능체조)</td>
						</tr>
						<tr>
							<th class="bg-th">7교시</th>
							<th class="bg-th">18:30~19:30</th>
							<td rowspan="2">저녁 수업 / 의무 자습<br>
								질의응답</td>
						</tr>
						<tr>
							<th class="bg-th">8교시</th>
							<th class="bg-th">19:45~20:45</th>
						</tr>
						<tr>
							<th class="bg-th">9교시</th>
							<th class="bg-th">21:00~23:00</th>
							<td>
								저녁 수업 / 의무 자습<br>
								일과종료, 일일TEST
							</td>
						</tr>
					</tbody>
				</table>
				<table class="tbl-01 type02 ml30">
					<colgroup>
						<col style="width: 25%;">
						<col style="width: 25%;">
						<col style="width:auto">
					</colgroup>
					<thead>
						<tr>
							<th colspan="3" class="bg-th txt-black">일요일</th>
						</tr>
						<tr>
							<th class="b-l-n">교시</th>
							<th>시간</th>
							<th>일과내용</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th class="bg-th" rowspan="2">0교시</th>
							<th class="bg-th">07:00~08:10</th>
							<td>기상, 세면, 아침 식사<br>
								자습관 입실</td>
						</tr>
						<tr>
							<th class="bg-th b-l">08:10 ~ 08:20</th>
							<td>자습관 인원 점검<br>
								(자리 이동 금지)<br><br>
								학습계획서 작성,<br>
								수능 체조</td>
						</tr>
						<tr>
							<th class="bg-th">1교시</th>
							<th class="bg-th">08:30~09:30</th>
							<td rowspan="3">의무 자습</td>
						</tr>
						<tr>
							<th class="bg-th">2교시</th>
							<th class="bg-th">09:45~10:45</th>
						</tr>
						<tr>
							<th class="bg-th">3교시</th>
							<th class="bg-th">11:00~12:00</th>
						</tr>
						<tr>
							<th class="bg-th">점심식사</th>
							<th class="bg-th">12:00~13:00</th>
							<td>점심 식사 (수능 체조)</td>
						</tr>
						<tr>
							<th class="bg-th">4교시</th>
							<th class="bg-th">13:10~14:20</th>
							<td>의무 자습</td>
						</tr>
						<tr>
							<th class="bg-th">Healing<br>
							Time</th>
							<th class="bg-th">14:30~16:50</th>
							<td>Healing Time 및 종교활동</td> 
						</tr>
						<tr>
							<th class="bg-th">담임 시간</th>
							<th class="bg-th">17:00~17:20</th>
							<td>자습 및 담임 시간</td>
						</tr>
						<tr>
							<th class="bg-th">저녁 식사</th>
							<th class="bg-th">17:20~18:20</th>
							<td>저녁 식사 (수능 체조)</td>
						</tr>
						<tr>
							<th class="bg-th">7교시</th>
							<th class="bg-th">18:30~19:30</th>
							<td rowspan="2">의무 자습 / 주간 TEST</td>
						</tr>
						<tr>
							<th class="bg-th">8교시</th>
							<th class="bg-th">19:45~20:45</th>
						</tr>
						<tr>
							<th class="bg-th">9교시</th>
							<th class="bg-th">21:00~22:00</th>
							<td>의무 자습<br>
								일과 종료</td>
						</tr>
					</tbody>
				</table>
			</div>
			<p class="r-txt">* 위 일과표는 학원 사정에 의해 변경될 수 있으며 변경 시, 사전공지/안내예정</p>
        </div>
    </div>
	<!-- // cont12 -->

	<!-- bottom-bar -->
    <div class="bottom-bar">
        <p data-aos="fade-down" data-aos-offset="100">
			짧은 시간 더 높은 목표 대학에 합격하는 공식<br>
			최상위권 전문관 러셀 기숙학원 반수반<br>
			<strong>다시 도전하는 최상위권 대학 합격의 꿈 ,<br>
				최상위권 전문관에서 시작하는 것이 가장 강력한 경쟁력입니다.</strong>
        </p>
    </div>
</div>