<div class="inner-cont">
	<% If sCampusCode = "CD0247" Then '강남 %>
	<table class="tbl-01">
		<colgroup>
			<col style="width:10%" />
			<col style="width:10%" />
			<col style="width:11%" />
			<col style="width:11%" />
			<col style="width:10%" />
			<col style="width:%" />
			<col style="width:%" />
			<col style="width:15%" />
		</colgroup>
		<thead>
			<tr>
				<th colspan="2">구분</th>
				<th>시작시간</th>
				<th>종료시간</th>
				<th>자습시간</th>
				<th>월요일~금요일</th>
				<th>토요일</th>
				<th>일요일</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th rowspan="4" class="bg-sky">오전</th>
				<td>0교시</td>
				<td>AM 07:00</td>
				<td>AM 07:50</td>
				<td>50분</td>
				<td><span class="ico-txt s">선택자습</span></td>
				<td><span class="ico-txt s">선택자습</span></td>
				<td><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>1교시</td>
				<td>AM 08:00</td>
				<td>AM 08:40</td>
				<td>40분</td>
				<td><span class="ico-txt p">영어 프로그램</span></td>
				<td rowspan="3">
					<span class="ico-txt b">의무<br>자습</span>
					<span class="ico-txt v">단과<br>수업</span>
					<span class="ico-txt r">상<br>담</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td>AM 08:50</td>
				<td>AM 10:10</td>
				<td>80분</td>
				<td rowspan="2">
					<span class="ico-txt b">의무<br>자습</span>
					<span class="ico-txt v">단과<br>수업</span>
					<span class="ico-txt r">상<br>담</span>
				</td>
			</tr>
			<tr>
				<td>3교시</td>
				<td>AM 10:30</td>
				<td>PM 12:10</td>
				<td>100분</td>
			</tr>
			<tr>
				<th colspan="2">점심식사</th>
				<td>PM 12:10</td>
				<td>PM 01:10</td>
				<td>60분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="3" class="bg-sky">오후</th>
				<td>4교시</td>
				<td>PM 01:10</td>
				<td>PM 02:20</td>
				<td>70분</td>
				<td rowspan="3" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>5교시</td>
				<td>PM 02:40 </td>
				<td>PM 04:00</td>
				<td>80분</td>
			</tr>
			<tr>
				<td>6교시</td>
				<td>PM 04:20</td>
				<td>PM 05:30</td>
				<td>70분</td>
			</tr>
			<tr>
				<th colspan="2">저녁식사</th>
				<td>PM 05:30</td>
				<td>PM 06:30</td>
				<td>60분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">저녁</th>
				<td>7교시</td>
				<td>PM 06:30</td>
				<td>PM 08:00</td>
				<td>90분</td>
				<td rowspan="2" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>8교시</td>
				<td>PM 08:20 </td>
				<td>PM 09:50</td>
				<td>90분</td>
			</tr>
			<tr>
				<th colspan="2">귀가</th>
				<td>PM 09:50</td>
				<td>PM 10:10</td>
				<td>20분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">심야</th>
				<td>9교시</td>
				<td>PM 10:10</td>
				<td>PM 11:00</td>
				<td>50분</td>
				<td colspan="2" rowspan="2"><span class="ico-txt s">선택자습</span></td>
				<td rowspan="2">(이용불가)</td>
			</tr>
			<tr>
				<td>10교시</td>
				<td>PM 11:10</td>
				<td>AM 12:00</td>
				<td>50분</td>
			</tr>
		</tbody>
	</table>
	<p class="r-txt mt10">* 평일 오전 영어 프로그램은 영단어&amp;듣기시험으로 진행되며, 학원 사정에 따라 변경될 수 있습니다.</p>
	<% ElseIf sCampusCode = "CD0001" Then '대치 %>
	<table class="tbl-01">
		<colgroup>
			<col style="width:10%" />
			<col style="width:10%" />
			<col style="width:11%" />
			<col style="width:11%" />
			<col style="width:10%" />
			<col style="width:%" />
			<col style="width:%" />
			<col style="width:15%" />
		</colgroup>
		<thead>
			<tr>
				<th colspan="2">구분</th>
				<th>시작시간</th>
				<th>종료시간</th>
				<th>자습시간</th>
				<th>월요일~금요일</th>
				<th>토요일</th>
				<th>일(공휴일)</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th rowspan="4" class="bg-sky">오전</th>
				<td>0교시</td>
				<td>AM 07:00</td>
				<td>AM 07:50</td>
				<td>50분</td>
				<td><span class="ico-txt s">선택자습</span></td>
				<td><span class="ico-txt s">선택자습</span></td>
				<td><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>1교시</td>
				<td>AM 08:00</td>
				<td>AM 08:50</td>
				<td>50분</td>
				<td><span class="ico-txt p">영어 프로그램</span></td>
				<td rowspan="3">
					<span class="ico-txt b">의무<br>자습</span>
					<span class="ico-txt v">단과<br>수업</span>
					<span class="ico-txt r">상<br>담</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td>AM 09:10</td>
				<td>AM 10:30</td>
				<td>80분</td>
				<td rowspan="2">
					<span class="ico-txt b">의무<br>자습</span>
					<span class="ico-txt v">단과<br>수업</span>
					<span class="ico-txt r">상<br>담</span>
				</td>
			</tr>
			<tr>
				<td>3교시</td>
				<td>AM 10:50</td>
				<td>PM 12:10</td>
				<td>80분</td>
			</tr>
			<tr>
				<th colspan="2">점심식사</th>
				<td>PM 12:10</td>
				<td>PM 01:20</td>
				<td>70분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="3" class="bg-sky">오후</th>
				<td>4교시</td>
				<td>PM 01:20</td>
				<td>PM 02:30</td>
				<td>70분</td>
				<td rowspan="3" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>5교시</td>
				<td>PM 02:50 </td>
				<td>PM 04:00</td>
				<td>70분</td>
			</tr>
			<tr>
				<td>6교시</td>
				<td>PM 04:20</td>
				<td>PM 05:30</td>
				<td>70분</td>
			</tr>
			<tr>
				<th colspan="2">저녁식사</th>
				<td>PM 05:30</td>
				<td>PM 06:40</td>
				<td>70분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">저녁</th>
				<td>7교시</td>
				<td>PM 06:40</td>
				<td>PM 08:10</td>
				<td>90분</td>
				<td rowspan="2" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>8교시</td>
				<td>PM 08:30</td>
				<td>PM 10:00</td>
				<td>90분</td>
			</tr>
			<tr>
				<th colspan="2">귀가</th>
				<td>PM 10:00</td>
				<td>PM 10:20</td>
				<td>20분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">심야</th>
				<td>9교시</td>
				<td>PM 10:20</td>
				<td>PM 11:00</td>
				<td>40분</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
				<td colspan="2" rowspan="2">(이용불가)</td>
			</tr>
			<tr>
				<td>10교시</td>
				<td>PM 11:10</td>
				<td>AM 12:00</td>
				<td>50분</td>
			</tr>
		</tbody>
	</table>
	<p class="r-txt mt10">* 학원 사정에 따라 운영시간은 달라질 수 있습니다.</p>
	<% ElseIf sCampusCode = "CD0245" Then '목동 %>
	<table class="tbl-01">
		<colgroup>
			<col style="width:10%" />
			<col style="width:10%" />
			<col style="width:11%" />
			<col style="width:11%" />
			<col style="width:10%" />
			<col style="width:%" />
			<col style="width:%" />
			<col style="width:15%" />
		</colgroup>
		<thead>
			<tr>
				<th colspan="2">구분</th>
				<th>시작시간</th>
				<th>종료시간</th>
				<th>자습시간</th>
				<th>월요일~금요일</th>
				<th>토요일</th>
				<th>일(공휴일)</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th rowspan="4" class="bg-sky">오전</th>
				<td>0교시</td>
				<td>AM 07:00</td>
				<td>AM 07:50</td>
				<td>50분</td>
				<td><span class="ico-txt s">선택자습</span></td>
				<td><span class="ico-txt s">선택자습</span></td>
				<td><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>1교시</td>
				<td>AM 08:00</td>
				<td>AM 08:30</td>
				<td>30분</td>
				<td rowspan="3" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td>AM 08:40</td>
				<td>AM 10:00</td>
				<td>80분</td>
			</tr>
			<tr>
				<td>3교시</td>
				<td>AM 10:20<br>
					(10:30 별도 타종 진행)
				</td>
				<td>PM 12:10</td>
				<td>110분</td>
			</tr>
			<tr>
				<th colspan="2">점심식사</th>
				<td>PM 12:10</td>
				<td>PM 01:10</td>
				<td>60분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="3" class="bg-sky">오후</th>
				<td>4교시</td>
				<td>PM 01:10</td>
				<td>PM 02:20</td>
				<td>70분</td>
				<td rowspan="3" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>5교시</td>
				<td>PM 02:40 </td>
				<td>PM 04:00</td>
				<td>80분</td>
			</tr>
			<tr>
				<td>6교시</td>
				<td>PM 04:20</td>
				<td>PM 05:30</td>
				<td>70분</td>
			</tr>
			<tr>
				<th colspan="2">저녁식사</th>
				<td>PM 05:30</td>
				<td>PM 06:30</td>
				<td>60분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">저녁</th>
				<td>7교시</td>
				<td>PM 06:30</td>
				<td>PM 08:10</td>
				<td>100분</td>
				<td rowspan="2" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>8교시</td>
				<td>PM 08:30 </td>
				<td>PM 10:00</td>
				<td>90분</td>
			</tr>
			<tr>
				<th colspan="2">귀가</th>
				<td>PM 10:00</td>
				<td>PM 10:10</td>
				<td>10분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">심야</th>
				<td>9교시</td>
				<td>PM 10:10</td>
				<td>PM 11:00</td>
				<td>50분</td>
				<td colspan="2" rowspan="2"><span class="ico-txt s">선택자습</span></td>
				<td rowspan="2">(이용불가)</td>
			</tr>
			<tr>
				<td>10교시</td>
				<td>PM 11:00</td>
				<td>AM 12:00</td>
				<td>60분</td>
			</tr>
		</tbody>
	</table>
	<p class="r-txt mt10">* 학원 사정에 따라 운영시간은 달라질 수 있습니다.</p>
	<!-- 부천 -->
	<% ElseIf sCampusCode = "CD0250" Then '부천 %>
	<table class="tbl-01 mb80">
		<colgroup>
			<col style="width:10%" />
			<col style="width:10%" />
			<col style="width:11%" />
			<col style="width:11%" />
			<col style="width:10%" />
			<col style="width:%" />
			<col style="width:%" />
			<col style="width:15%" />
		</colgroup>
		<thead>
			<tr>
				<th colspan="2">구분</th>
				<th>시작시간</th>
				<th>종료시간</th>
				<th>자습시간</th>
				<th>월요일~금요일</th>
				<th>토요일</th>
				<th>일(공휴일)</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th rowspan="4" class="bg-sky">오전</th>
				<td>1교시</td>
				<td>AM 08:00</td>
				<td>AM 08:30</td>
				<td>30분</td>
				<td rowspan="4" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="4"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td>AM 08:40</td>
				<td>AM 10:00</td>
				<td>80분</td>
			</tr>
			<tr>
				<td>활력체조</td>
				<td>AM 10:20</td>
				<td>AM 10:30</td>
				<td>10분</td>
		</tr>
			<tr>
				<td>3교시</td>
				<td>AM 10:30</td>
				<td>AM 12:10</td>
				<td>100분</td>
			</tr>
			<tr>
				<th colspan="2">점심식사</th>
				<td>PM 12:10</td>
				<td>PM 01:10</td>
				<td>60분</td>
				<td colspan="3">※ 5분 전 입실</td>
			</tr>
			<tr>
				<th colspan="2">일일 테스트</th>
				<td>PM 01:10</td>
				<td>PM 01:20</td>
				<td>10분</td>
				<td colspan="3"><span class="ico-txt p">영어 프로그램</span> 	*듣기·단어 등 일자별 컨텐츠 상이</td>
			</tr>
			<tr>
				<th rowspan="4" class="bg-sky">오후</th>
				<td>담임조회</td>
				<td>PM 13:20</td>
				<td>PM 13:30</td>
				<td>10분</td>
				<td colspan="3"></td>
			</tr>
			<tr>
				<td>4교시</td>
				<td>PM 01:30</td>
				<td>PM 02:20</td>
				<td>50분</td>
				<td rowspan="3" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>5교시</td>
				<td>PM 02:40 </td>
				<td>PM 04:00</td>
				<td>80분</td>
			</tr>
			<tr>
				<td>6교시</td>
				<td>PM 04:20</td>
				<td>PM 05:30</td>
				<td>70분</td>
			</tr>
			<tr>
				<th colspan="2">저녁식사</th>
				<td>PM 05:30</td>
				<td>PM 06:40</td>
				<td>70분</td>
				<td colspan="3">※ 5분 전 입실</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">저녁</th>
				<td>7교시</td>
				<td>PM 06:40</td>
				<td>PM 08:10</td>
				<td>90분</td>
				<td rowspan="2" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>8교시</td>
				<td>PM 08:30 </td>
				<td>PM 10:00</td>
				<td>90분</td>
			</tr>
			<tr>
				<th colspan="2">담임 종례 및 귀가</th>
				<td>PM 10:00 </td>
				<td>PM 10:20</td>
				<td>20분</td>
				<td colspan="3">※ 빠르고 조용히 귀가</td>
			</tr>
			<tr>
				<th class="bg-sky">심야</th>
				<td>9교시</td>
				<td>PM 10:20</td>
				<td>PM 12:00</td>
				<td>100분</td>
				<td colspan="2"><span class="ico-txt s">선택자습</span></td>
				<td>미운영</td>
			</tr>
		</tbody>
	</table>
	<!-- 분당 -->
	<% ElseIf sCampusCode = "CD0244" Then '분당 %>
	<table class="tbl-01">
		<colgroup>
			<col style="width:10%" />
			<col style="width:10%" />
			<col style="width:11%" />
			<col style="width:11%" />
			<col style="width:10%" />
			<col style="width:%" />
			<col style="width:15%" />
		</colgroup>
		<thead>
			<tr>
				<th colspan="2">구분</th>
				<th>시작시간</th>
				<th>종료시간</th>
				<th>자습시간</th>
				<th>월~토</th>
				<th>일(공휴일)</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th rowspan="3" class="bg-sky">오전</th>
				<td>1교시</td>
				<td>08:00</td>
				<td>08:50</td>
				<td>50분</td>
				<td rowspan="3">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td>09:00</td>
				<td>10:20</td>
				<td>80분</td>
			</tr>
			<tr>
				<td>3교시</td>
				<td>10:40</td>
				<td>12:20</td>
				<td>100분</td>
			</tr>
			<tr>
				<th colspan="2">점심식사</th>
				<td>12:20</td>
				<td>13:30</td>
				<td>60분</td>
				<td colspan="2">-</td>
			</tr>
			<tr>
				<th rowspan="3" class="bg-sky">오후</th>
				<td>4교시</td>
				<td>13:30</td>
				<td>14:40</td>
				<td>70분</td>
				<td rowspan="3">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>5교시</td>
				<td>15:00</td>
				<td>16:10</td>
				<td>70분</td>
			</tr>
			<tr>
				<td>6교시</td>
				<td>16:30</td>
				<td>17:30</td>
				<td>60분</td>
			</tr>
			<tr>
				<th colspan="2">저녁식사</th>
				<td>17:30</td>
				<td>18:40</td>
				<td>70분</td>
				<td colspan="2">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">저녁</th>
				<td>7교시</td>
				<td>18:40</td>
				<td>20:10</td>
				<td>90분</td>
				<td rowspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>8교시</td>
				<td>20:30</td>
				<td>22:00</td>
				<td>90분</td>
			</tr>
			<tr>
				<th colspan="2">귀가</th>
				<td>22:00</td>
				<td>22:20</td>
				<td>20분</td>
				<td colspan="2">-</td>
			</tr>
			<tr>
				<th class="bg-sky" rowspan="2">심야</th>
				<td>9교시</td>
				<td>22:20</td>
				<td>23:10</td>
				<td>50분</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span> (신청서 제출)</td>
				<td rowspan="2">(이용불가)</td>
			</tr>
			<tr>
				<td>10교시</td>
				<td>23:20</td>
				<td>24:10</td>
				<td>50분</td>
			</tr>
		</tbody>
	</table>
	<p class="r-txt mt10">※ 바자관 표준 시간표는 층별 및 시기별 학습 전략에 따라 유동적으로 운영됩니다.</p>
	<!-- 센텀 -->
	<% ElseIf sCampusCode = "CD0246" Then '센텀 %>
	<table class="tbl-01 mb80">
		<colgroup>
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:11%">
			<col style="width:11%">
			<col style="width:10%">
			<col style="width:%">
			<col style="width:%">
			<col style="width:15%">
		</colgroup>
		<thead>
			<tr>
				<th colspan="2">구분</th>
				<th>시작시간</th>
				<th>종료시간</th>
				<th>자습시간</th>
				<th>월요일~금요일</th>
				<th>토요일</th>
				<th>일(공휴일)</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th rowspan="4" class="bg-sky">오전</th>
				<td>0교시</td>
				<td>AM 07:00</td>
				<td>AM 07:50</td>
				<td>50분</td>
				<td><span class="ico-txt s">선택자습</span></td>
				<td><span class="ico-txt s">선택자습</span></td>
				<td><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>1교시</td>
				<td>AM 08:00</td>
				<td>AM 09:00</td>
				<td>60분</td>
				<td rowspan="3">
					<span class="ico-txt p mb5">영어단어TEST</span><br>
					<span class="ico-txt b mb5">의무자습</span><br>
					<span class="ico-txt v mb5">단과수업</span><br>
					<span class="ico-txt r">담임상담</span>
				</td>
				<td rowspan="3">
					<span class="ico-txt b mb5">의무자습</span><br>
					<span class="ico-txt v mb5">단과수업</span><br>
					<span class="ico-txt r">담임상담</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td>AM 09:20</td>
				<td>AM 10:40</td>
				<td>80분</td>
			</tr>
			<tr>
				<td>3교시</td>
				<td>AM 11:00</td>
				<td>PM 12:30</td>
				<td>90분</td>
			</tr>
			<tr>
				<th colspan="2">점심식사</th>
				<td>PM 12:30</td>
				<td>PM 01:30</td>
				<td>60분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="3" class="bg-sky">오후</th>
				<td>4교시</td>
				<td>PM 01:30</td>
				<td>PM 02:40</td>
				<td>70분</td>
				<td rowspan="3">
					<span class="ico-txt p mb5">영어듣기TEST</span><br>
					<span class="ico-txt b mb5">의무자습</span><br>
					<span class="ico-txt v mb5">단과수업</span><br>
					<span class="ico-txt r">담임상담</span>
				</td>
				<td rowspan="3">
					<span class="ico-txt b mb5">의무자습</span><br>
					<span class="ico-txt v mb5">단과수업</span><br>
					<span class="ico-txt r">담임상담</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>5교시</td>
				<td>PM 03:00 </td>
				<td>PM 04:10</td>
				<td>70분</td>
			</tr>
			<tr>
				<td>6교시</td>
				<td>PM 04:30</td>
				<td>PM 05:30</td>
				<td>60분</td>
			</tr>
			<tr>
				<th colspan="2">저녁식사</th>
				<td>PM 05:30</td>
				<td>PM 06:30</td>
				<td>60분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">저녁</th>
				<td>7교시</td>
				<td>PM 06:30</td>
				<td>PM 08:10</td>
				<td>100분</td>
				<td rowspan="2">
					<span class="ico-txt b mb5">의무자습</span><br>
					<span class="ico-txt v mb5">단과수업</span><br>
					<span class="ico-txt r">담임상담</span>
				</td>
				<td rowspan="2">
					<span class="ico-txt b mb5">의무자습</span><br>
					<span class="ico-txt v mb5">단과수업</span><br>
					<span class="ico-txt r">담임상담</span>
				</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>8교시</td>
				<td>PM 08:30 </td>
				<td>PM 10:00</td>
				<td>90분</td>
			</tr>
			<tr>
				<th colspan="2">귀가</th>
				<td>PM 10:00</td>
				<td>PM 10:10</td>
				<td>10분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">심야</th>
				<td>9교시</td>
				<td>PM 10:10</td>
				<td>PM 11:00</td>
				<td>50분</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
				<td rowspan="2">(이용불가)</td>
				<td rowspan="2">(이용불가)</td>
			</tr>
			<tr>
				<td>10교시</td>
				<td>PM 11:00</td>
				<td>AM 12:00</td>
				<td>60분</td>
			</tr>
		</tbody>
	</table>
	<% ElseIf sCampusCode = "CD0249" Then '영통 %>
	<table class="tbl-01">
		<colgroup>
			<col style="width:10%" />
			<col style="width:10%" />
			<col style="width:11%" />
			<col style="width:11%" />
			<col style="width:10%" />
			<col style="width:auto" />
			<col style="width:auto" />
			<col style="width:15%" />
		</colgroup>
		<thead>
			<tr>
				<th colspan="2">구분</th>
				<th>시작시간</th>
				<th>종료시간</th>
				<th>자습시간</th>
				<th>월요일~금요일</th>
				<th>토요일</th>
				<th>일(공휴일)</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th rowspan="5" class="bg-sky">오전</th>
				<td>0교시</td>
				<td>AM 07:00</td>
				<td>AM 07:50</td>
				<td>50분</td>
				<td colspan="2"><span class="ico-txt s">선택자습</span></td>
				<td><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>1교시</td>
				<td>AM 08:00</td>
				<td>AM 08:30</td>
				<td>30분</td>
				<td rowspan="4" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>조회</td>
				<td>AM 08:30</td>
				<td>AM 08:40</td>
				<td>10분</td>
				<td><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td>AM 08:50</td>
				<td>AM 10:10</td>
				<td>80분</td>
				<td><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>3교시</td>
				<td>AM 10:30</td>
				<td>PM 12:10</td>
				<td>100분</td>
				<td><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<th colspan="2">점심식사</th>
				<td>PM 12:10</td>
				<td>PM 01:10</td>
				<td>60분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="4" class="bg-sky">오후</th>
				<td>4교시</td>
				<td>PM 01:10</td>
				<td>PM 02:20</td>
				<td>70분</td>
				<td rowspan="4" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>5교시</td>
				<td>PM 02:40</td>
				<td>PM 04:00</td>
				<td>80분</td>
				<td><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>종례</td>
				<td>PM 04:00</td>
				<td>PM 04:10</td>
				<td>10분</td>
				<td><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>6교시</td>
				<td>PM 04:30</td>
				<td>PM 05:30</td>
				<td>60분</td>
				<td><span class="ico-txt s">선택자습</span></td>
			</tr>
			<!-- <tr>
				<td>조회</td>
				<td>PM 05:20</td>
				<td>PM 05:30</td>
				<td>10분</td>
				<td><span class="ico-txt s">선택자습</span></td>
			</tr> -->
			<tr>
				<th colspan="2">저녁식사</th>
				<td>PM 05:30</td>
				<td>PM 06:40</td>
				<td>70분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">저녁	</th>
				<td>7교시</td>
				<td>PM 06:40</td>
				<td>PM 08:10</td>
				<td>90분</td>
				<td rowspan="2" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>8교시</td>
				<td>PM 08:30</td>
				<td>PM 10:00</td>
				<td>90분</td>
				<td><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<th colspan="2">귀가</th>
				<td>PM 10:00</td>
				<td>PM 10:10</td>
				<td>10분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">심야</th>
				<td>9교시</td>
				<td>PM 10:10</td>
				<td>AM 11:00</td>
				<td>50분</td>
				<td rowspan="2" colspan="2"><span class="ico-txt s">선택자습</span></td>
				<td rowspan="2">(이용불가)</td>
			</tr>
			<tr>
				<td>10교시</td>
				<td>PM 11:10</td>
				<td>AM 12:00</td>
				<td>50분</td>
			</tr>
		</tbody>
	</table>
	<p class="r-txt mt10">* 학원 사정에 따라 운영시간은 달라질 수 있습니다.</p>
	<!-- 중계 -->
	<% ElseIf sCampusCode = "CD0257" Then '러셀중계 %>
	<table class="tbl-01">
		<colgroup>
			<col style="width:10%" />
			<col style="width:10%" />
			<col style="width:%" />
			<col style="width:%" />
			<col style="width:13%" />
			<col style="width:13%" />
			<col style="width:13%" />
		</colgroup>
		<thead>
			<tr>
				<th>구분</th>
				<th>교시</th>
				<th colspan="2">자습시간</th>
				<th>월요일~금요일</th>
				<th>토요일</th>
				<th>일</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th rowspan="3" class="bg-sky">오전</th>
				<td>1교시</td>
				<td>AM 08:00 ~ AM 08:40</td>
				<td>40분</td>
				<td rowspan="3" colspan="2">
					<span class="ico-txt b">의무자습</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span><br><span class="red_txt">(OPEN 09:00)</span></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td>AM 08:50 ~ AM 10:20</td>
				<td>90분</td>
			</tr>
			<tr>
				<td>3교시</td>
				<td>AM 10:30 ~ PM 12:10</td>
				<td>100분</td>
			</tr>
			<tr>
				<th colspan="2">점심시간</th>
				<td>PM 12:10 ~ PM 01:10</td>
				<td>60분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="3" class="bg-sky">오후</th>
				<td>4교시</td>
				<td>PM 01:10 ~ PM 02:20</td>
				<td>70분</td>
				<td rowspan="3" colspan="2">
					<span class="ico-txt b">의무자습</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>5교시</td>
				<td>PM 02:40 ~ PM 04:00</td>
				<td>80분</td>
			</tr>
			<tr>
				<td>6교시</td>
				<td>PM 04:20 ~ PM 05:30</td>
				<td>70분</td>
			</tr>
			<tr>
				<th colspan="2">저녁시간</th>
				<td>PM 05:30 ~ PM 06:30</td>
				<td>60분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">저녁</th>
				<td>7교시</td>
				<td>PM 06:30 ~ PM 08:10</td>
				<td>100분</td>
				<td rowspan="2" colspan="2">
					<span class="ico-txt b">의무자습</span>
				</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>8교시</td>
				<td>PM 08:30 ~ PM 10:00</td>
				<td>90분</td>
			</tr>
			<tr>
				<th colspan="2">하원</th>
				<td>PM 10:00 ~ PM 10:10</td>
				<td>10분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">심야</th>
				<td>9교시</td>
				<td>PM 10:10 ~ PM 11:00</td>
				<td>50분</td>
				<td rowspan="2" colspan="2"><span class="ico-txt s">선택자습</span></td>
				<td rowspan="2" colspan="1">(이용불가)</td>
			</tr>
			<tr>
				<td>10교시</td>
				<td>PM 11:10 ~ AM 12:00</td>
				<td>50분</td>
			</tr>
		</tbody>
	</table>
	<p class="r-txt mt10">※ 학원 운영에 따라 바자관 운영시간표는 달라질 수 있습니다.</p>

	<!-- 평촌 -->
	<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
	<table class="tbl-01">
		<colgroup>
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:auto">
			<col style="width:11%">
			<col style="width:auto">
			<col style="width:auto">
		</colgroup>
		<thead>
			<tr>
				<th colspan="2">교시</th>
				<th colspan="2">자습시간</th>
				<th>월~금</th>
				<th>토요일</th>
				<th>일요일</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th class="bg-sky">조조(선택)</th>
				<td>0교시</td>
				<td>07:00 ~ 07:50</td>
				<td>50분</td>
				<td><span class="ico-txt s">선택자습</span></td>
				<td><span class="ico-txt s">선택자습</span></td>
				<td><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<th class="bg-sky" rowspan="3">오전</th>
				<td>1교시</td>
				<td>08:00 ~ 08:50</td>
				<td>50분</td>
				<td rowspan="3" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수강</span>
					<span class="ico-txt r">개별상담</span>
					<span class="ico-txt p">질의응답</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td>09:10 ~ 10:20</td>
				<td>70분</td>
			</tr>
			<tr>
				<td>3교시</td>
				<td>10:40 ~ 12:10</td>
				<td>90분</td>
			</tr>
			<tr>
				<th colspan="2">점심식사</th>
				<td>12:10 ~ 13:20</td>
				<td>70분</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
			</tr>
			<tr>
				<th rowspan="3" class="bg-sky">오후</th>
				<td>4교시</td>
				<td>13:20 ~ 14:30</td>
				<td>70분</td>
				<td rowspan="3" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수강</span>
					<span class="ico-txt r">개별상담</span>
					<span class="ico-txt p">질의응답</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>5교시</td>
				<td>14:50 ~ 16:00</td>
				<td>70분</td>
			</tr>
			<tr>
				<td>6교시</td>
				<td>16:20 ~ 17:30</td>
				<td>70분</td>
			</tr>
			<tr>
				<th colspan="2">저녁식사</th>
				<td>17:30 ~ 18:40</td>
				<td>70분</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">저녁</th>
				<td>7교시</td>
				<td>18:40 ~ 20:10</td>
				<td>90분</td>
				<td rowspan="2" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수강</span>
					<span class="ico-txt r">개별상담</span>
					<span class="ico-txt p">질의응답</span>
				</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>8교시</td>
				<td>20:30 ~ 22:00</td>
				<td>90분</td>
			</tr>
			<tr>
				<th colspan="2">귀가</th>
				<td>22:00 ~ 22:30</td>
				<td>30분</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
			</tr>
			<tr>
				<th class="bg-sky">심야(선택)</th>
				<td>9교시</td>
				<td>22:30 ~ 00:00</td>
				<td>90분</td>
				<td><span class="ico-txt s">선택자습</span></td>
				<td colspan="2">(이용불가)</td>
			</tr>
		</tbody>
	</table>
	<p class="r-txt mt10">* 학원 운영에 따라 상세 시간은 달라질 수 있습니다.</p>
	<% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
	<table class="tbl-01">
		<colgroup>
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:11%">
			<col style="width:11%">
			<col style="width:10%">
			<col style="width:auto">
			<col style="width:auto">
		</colgroup>
		<thead>
			<tr>
				<th colspan="2">교시</th>
				<th>시작시간</th>
				<th>종료시간</th>
				<th>자습시간</th>
				<th>월~토<br>(공휴일 포함)</th>
				<th><span class="red_txt">일</span></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th rowspan="3" class="bg-sky">오전</th>
				<td>1교시</td>
				<td>08:00</td>
				<td>08:50</td>
				<td>50분</td>
				<td rowspan="3">
					<span class="ico-txt b">의무자습</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td>09:00</td>
				<td>10:20</td>
				<td>80분</td>
			</tr>
			<tr>
				<td>3교시</td>
				<td>10:40</td>
				<td>12:20</td>
				<td>100분</td>
			</tr>
			<tr>
				<th colspan="2">점심식사</th>
				<td>12:20</td>
				<td>13:30</td>
				<td>70분</td>
				<td>학원식당<br>이용 가능</td>
				<td>학원식당<br>이용 불가</td>
			</tr>
			<tr>
				<th rowspan="3" class="bg-sky">오후</th>
				<td>4교시</td>
				<td>13:30</td>
				<td>14:00</td>
				<td>30분</td>
				<td rowspan="3"><span class="ico-txt b">의무자습</span></td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>5교시</td>
				<td>14:00</td>
				<td>15:30</td>
				<td>90분</td>
			</tr>
			<tr>
				<td>6교시</td>
				<td>15:50 </td>
				<td>17:20</td>
				<td>90분</td>
			</tr>
			<tr>
				<th colspan="2">저녁식사</th>
				<td>17:20</td>
				<td>18:30</td>
				<td>70분</td>
				<td>학원식당<br>이용 가능</td>
				<td>학원식당<br>이용 불가</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">저녁</th>
				<td>7교시</td>
				<td>18:30</td>
				<td>20:00</td>
				<td>90분</td>
				<td rowspan="2">
					<span class="ico-txt b">의무자습</span>
				</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>8교시</td>
				<td>20:20</td>
				<td>22:00</td>
				<td>100분</td>
			</tr>
			<tr>
				<th colspan="2">귀가</th>
				<td>22:00</td>
				<td>22:10</td>
				<td colspan="3">10분</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">심야</th>
				<td>9교시</td>
				<td>22:10</td>
				<td>23:00</td>
				<td>50분</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
				<td rowspan="2" class="red_txt">심야자습<br>없음</td>
			</tr>
			<tr>
				<td>10교시</td>
				<td>23:10</td>
				<td>24:00</td>
				<td>50분</td>
			</tr>
		</tbody>
	</table>
	<p class="r-txt mt10">* 학원 사정에 따라 운영시간은 달라질 수 있습니다.</p>
	<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
	<table class="tbl-01 mb80">
		<colgroup>
			<col style="width:10%" />
			<col style="width:10%" />
			<col style="width:auto" />
			<col style="width:10%" />
			<col style="width:auto" />
			<col style="width:auto" />
			<col style="width:10%" />
		</colgroup>
		<thead>
			<tr>
				<th>구분</th>
				<th>교시</th>
				<th colspan="2">시간</th>
				<th>월~금요일</th>
				<th>토요일</th>
				<th>공휴일</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th rowspan="4" class="bg-sky">오전</th>
				<td>0교시</td>
				<td>07:00 ~ 07:50</td>
				<td>50분</td>
				<td colspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>1교시</td>
				<td>08:00 ~ 08:40</td>
				<td>40분</td>
				<td rowspan="3"><span class="ico-txt b">의무자습<br>/진학지도</span></td>
				<td rowspan="3"><span class="ico-txt b">의무자습</span></td>
				<td rowspan="3"><span class="ico-txt v">선택<br>학습</span></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td>08:50 ~ 10:10</td>
				<td>80분</td>
			</tr>
			<tr>
				<td>3교시</td>
				<td>10:30 ~ 12:10</td>
				<td>100분</td>
			</tr>
			<tr>
				<th colspan="2">점심식사</th>
				<td>12:10 ~ 13:10</td>
				<td>60분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="3" class="bg-sky">오후</th>
				<td>4교시</td>
				<td>13:10 ~ 14:20</td>
				<td>70분</td>
				<td rowspan="3"><span class="ico-txt b">의무자습<br>/진학지도</span></td>
				<td rowspan="3"><span class="ico-txt b">의무자습</span></td>
				<td rowspan="3"><span class="ico-txt v">선택<br>학습</span></td>
			</tr>
			<tr>
				<td>5교시</td>
				<td>14:40 ~ 16:00</td>
				<td>80분</td>
			</tr>
			<tr>
				<td>6교시</td>
				<td>16:20 ~ 17:30</td>
				<td>70분</td>
			</tr>
			<tr>
				<th colspan="2">저녁식사</th>
				<td>17:30 ~ 18:40</td>
				<td>70분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">저녁</th>
				<td>7교시</td>
				<td>18:40 ~ 20:10</td>
				<td>90분</td>
				<td rowspan="2"><span class="ico-txt b">의무자습<br>/진학지도</span></td>
				<td rowspan="2"><span class="ico-txt b">의무자습</span></td>
				<td rowspan="2"><span class="ico-txt v">선택<br>학습</span></td>
			</tr>
			<tr>
				<td>8교시</td>
				<td>20:30 ~ 22:00</td>
				<td>90분</td>
			</tr>
			<tr>
				<th colspan="2">귀가</th>
				<td>22:00 ~ 22:30</td>
				<td>30분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">심야</th>
				<td>9교시</td>
				<td>22:30 ~ 23:40</td>
				<td>70분</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
				<td rowspan="2" colspan="2">이용불가</td>
			</tr>
			<tr>
				<td>10교시</td>
				<td>24:50 ~ 01:00</td>
				<td>70분</td>
			</tr>
		</tbody>
	</table>
	<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
	<table class="tbl-01">
		<colgroup>
			<col style="width:10%" />
			<col style="width:10%" />
			<col style="width:15%" />
			<col style="width:10%" />
			<col style="width:%" />
			<col style="width:%" />
			<col style="width:15%" />
		</colgroup>
		<thead>
			<th colspan="2">구분</th>
			<th colspan="2">자습시간</th>
			<th>월~금</th>
			<th>토요일</th>
			<th>일요일(공휴일)</th>
		</thead>
		<tbody>
			<tr>
				<th rowspan="4" class="bg-sky">오전</th>
				<td>1교시</td>
				<td>8:00~08:30</td>
				<td>30분</td>
				<td colspan="2"><span class="ico-txt b mb5">의무자습</span><br><span class="mb5 pl20 pr20 ico-txt p">영어 프로그램</span></td>
				<td rowspan="4"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>조회</td>
				<td>8:30~08:40</td>
				<td>10분</td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td>8:50~10:10</td>
				<td>80분</td>
				<td colspan="2" rowspan="2">
					<span class="ico-txt b">의무<br>자습</span>
					<span class="ico-txt v">단과<br>수업</span>
					<span class="ico-txt r">상<br>담</span>
				</td>
			</tr>
			<tr>
				<td>3교시</td>
				<td>10:20~12:00</td>
				<td>100분</td>
			</tr>
			<tr>
				<th colspan="2">점심식사</th>
				<td>12:00~13:10</td>
				<td>70분</td>
				<td colspan="3"></td>
			</tr>
			<tr>
				<th rowspan="4" class="bg-sky">오후</th>
				<td>4교시</td>
				<td>13:10~14:20</td>
				<td>70분</td>
				<td colspan="2" rowspan="3">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="4"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>5교시</td>
				<td>14:30~15:40</td>
				<td>70분</td>
			</tr>
			<tr>
				<td>6교시</td>
				<td>15:50~17:00</td>
				<td>70분</td>
			</tr>
			<tr>
				<td>종례</td>
				<td>17:10~17:30</td>
				<td>20분</td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<th colspan="2">저녁식사</th>
				<td>17:30~18:40</td>
				<td>70분</td>
				<td colspan="3"></td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">저녁</th>
				<td>7교시</td>
				<td>18:40~20:10</td>
				<td>90분</td>
				<td colspan="2" rowspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>8교시</td>
				<td>20:30~22:00</td>
				<td>90분</td>
			</tr>
			<tr>
				<th colspan="2">귀가</th>
				<td>22:00~22:20</td>
				<td>20분</td>
				<td colspan="3"></td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">심야</th>
				<td>9교시</td>
				<td>22:20~23:00</td>
				<td>40분</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
				<td colspan="2" rowspan="2">(이용불가)</td>
			</tr>
			<tr>
				<td>10교시</td>
				<td>23:10~24:00</td>
				<td>50분</td>
			</tr>
		</tbody>
	</table>
	<p class="r-txt mt10">* 학원 사정에 따라 운영시간은 달라질 수 있습니다.</p>
	<!-- 코어전주 -->
	<% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
	<table class="tbl-01 mb80">
		<colgroup>
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:11%">
			<col style="width:11%">
			<col style="width:10%">
			<col style="width:auto">
			<col style="width:auto">
			<col style="width:15%">
		</colgroup>
		<thead>
			<tr>
				<th colspan="2">구분</th>
				<th colspan="3">자습시간</th>
				<th>월요일~금요일</th>
				<th>토요일</th>
				<th>일(공휴일)</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th rowspan="3" class="bg-sky">오전</th>
				<td>1교시<br><span class="blue_txt">(조회)</span></td>
				<td colspan="2">08:00 ~ 08:30<br><span class="blue_txt">(08:30 ~ 08:40)</span></td>
				<td>30분<br><span class="blue_txt">(10분)</span></td>
				<td><span class="ico-txt p">영단어 TEST</span></td>
				<td><span class="ico-txt b">의무자습</span></td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td colspan="2">08:50 ~ 10:10</td>
				<td>80분</td>
				<td colspan="2" rowspan="2">
					<span class="ico-txt b">의무<br>자습</span>
					<span class="ico-txt v">단과<br>수업</span>
					<span class="ico-txt r">상<br>담</span>
				</td>
			</tr>
			<tr>
				<td>3교시</td>
				<td colspan="2">10:30 ~ 12:10</td>
				<td>100분</td>
			</tr>
			<tr>
				<th colspan="2">점심식사</th>
				<td colspan="2">12:10 ~ 13:10</td>
				<td>60분</td>
				<td colspan="2">자체 식당 운영</td>
				<td>자유식</td>
			</tr>
			<tr>
				<th rowspan="3" class="bg-sky">오후</th>
				<td>4교시</td>
				<td colspan="2">13:10 ~ 14:20</td>
				<td>70분</td>
				<td rowspan="3">
					<span class="ico-txt p mb5">영어듣기 TEST</span><br>
					<span class="ico-txt b">의무<br>자습</span>
					<span class="ico-txt v">단과<br>수업</span>
					<span class="ico-txt r">상<br>담</span>
				</td>
				<td rowspan="3">
					<span class="ico-txt b">의무<br>자습</span>
					<span class="ico-txt v">단과<br>수업</span>
					<span class="ico-txt r">상<br>담</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>5교시</td>
				<td colspan="2">14:40 ~ 16:00</td>
				<td>80분</td>
			</tr>
			<tr>
				<td>6교시<br><span class="blue_txt">(종례)</span></td>
				<td colspan="2">16:20 ~ 17:30<br><span class="blue_txt">(17:20 ~ 17:30)</span></td>
				<td>60분<br><span class="blue_txt">(10분)</span></td>
			</tr>
			<tr>
				<th colspan="2">저녁식사</th>
				<td colspan="2">17:30 ~ 18:40</td>
				<td>70분</td>
				<td colspan="2">자체 식당 운영</td>
				<td>자유식</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">저녁</th>
				<td>7교시</td>
				<td colspan="2">18:40 ~ 20:10</td>
				<td>90분</td>
				<td rowspan="2" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>8교시</td>
				<td colspan="2">20:30 ~ 22:00</td>
				<td>90분</td>
			</tr>
			<tr>
				<th colspan="2">귀가</th>
				<td colspan="2">22:00 ~ 22:10</td>
				<td>10분</td>
				<td colspan="3">귀가</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">심야</th>
				<td>9교시</td>
				<td colspan="2">22:10 ~ 23:00</td>
				<td>50분</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
				<td rowspan="2" colspan="2">(이용불가)</td>
			</tr>
			<tr>
				<td>10교시</td>
				<td colspan="2">23:10 ~ 24:00</td>
				<td>50분</td>
			</tr>
		</tbody>
	</table>
	<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
	<table class="tbl-01">
		<colgroup>
			<col style="width:10%" />
			<col style="width:10%" />
			<col style="width:15%" />
			<col style="width:10%" />
			<col style="width:%" />
			<col style="width:%" />
			<col style="width:15%" />
		</colgroup>
		<thead>
			<tr>
				<th colspan="2">교시</th>
				<th colspan="2">자습시간</th>
				<th>월~금</th>
				<th>토요일</th>
				<th>일(공휴일)</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th rowspan="4" class="bg-sky">오전</th>
				<td>0교시</td>
				<td>AM 07:00~AM 07:50</td>
				<td>50분</td>
				<td><span class="ico-txt s">선택자습</span></td>
				<td colspan="2">-</td>
			</tr>
			<tr>
				<td>1교시</td>
				<td>AM 08:00~AM 08:40</td>
				<td>40분</td>
				<td><span class="ico-txt p">영어 프로그램</span>
					<span class="ico-txt g">조례</span>
				</td>
				<td rowspan="3">
					<span class="ico-txt b">의무<br>자습</span>
					<span class="ico-txt v">단과<br>수업</span>
					<span class="ico-txt r">상<br>담</span>
					<span class="ico-txt g">조<br>례</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td>AM 08:50~AM 10:10</td>
				<td>80분</td>
				<td rowspan="2">
					<span class="ico-txt b">의무<br>자습</span>
					<span class="ico-txt v">단과<br>수업</span>
					<span class="ico-txt r">상<br>담</span>
				</td>
			</tr>
			<tr>
				<td>3교시</td>
				<td>AM 10:30~PM 12:10</td>
				<td>100분</td>
			</tr>
			<tr>
				<th colspan="2">점심식사</th>
				<td>PM 12:10~PM 01:10</td>
				<td>60분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="3" class="bg-sky">오후</th>
				<td>4교시</td>
				<td>PM 01:10~PM 02:20</td>
				<td>70분</td>
				<td rowspan="3" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
					<span class="ico-txt g">조&middot;종례</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>5교시</td>
				<td>PM 02:40~PM 04:00</td>
				<td>80분</td>
			</tr>
			<tr>
				<td>6교시</td>
				<td>PM 04:20~PM 05:30</td>
				<td>70분</td>
			</tr>
			<tr>
				<th colspan="2">저녁식사</th>
				<td>PM 05:30~PM 06:30</td>
				<td>60분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">저녁</th>
				<td>7교시</td>
				<td>PM 06:30~PM 08:00</td>
				<td>90분</td>
				<td rowspan="2" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
					<span class="ico-txt g">종례</span>
				</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>8교시</td>
				<td>PM 08:20~PM 09:50</td>
				<td>90분</td>
			</tr>
			<tr>
				<th colspan="2">귀가</th>
				<td>PM 09:50~PM 10:10</td>
				<td>20분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">심야</th>
				<td>9교시</td>
				<td>PM 10:10~PM 11:00</td>
				<td>50분</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
				<td rowspan="2" colspan="2">-</td>
			</tr>
			<tr>
				<td>10교시</td>
				<td>PM 11:10~AM 12:00</td>
				<td>50분</td>
			</tr>
		</tbody>
	</table>
	<p class="r-txt mt10">* 학원 사정에 따라 운영시간은 달라질 수 있습니다.</p>
	<% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
	<table class="tbl-01 mb80">
		<colgroup>
			<col style="width:10%" />
			<col style="width:10%" />
			<col style="width:15%" />
			<col style="width:10%" />
			<col style="width:%" />
			<col style="width:%" />
			<col style="width:15%" />
		</colgroup>
		<thead>
			<tr>
				<th colspan="2">구분</th>
				<th colspan="2">자습시간</th>
				<th>월요일 ~ 금요일</th>
				<th>토요일</th>
				<th>일(공휴일)</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th rowspan="3" class="bg-sky">오전</th>
				<td>1교시<br><span class="blue">(조회)</span></td>
				<td>08:00 ~ 08:30<br>
					<span class="blue">(08:30 ~ 08:40)</span></td>
				<td>30분<br><span class="blue">(10분)</span></td>
				<td><span class="ico-txt p">영어 프로그램</span></td>
				<td rowspan="3">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td>08:50 ~ 10:10</td>
				<td>80분</td>
				<td rowspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
			</tr>
			<tr>
				<td>3교시</td>
				<td>10:30 ~ 12:10</td>
				<td>100분</td>
			</tr>
			<tr>
				<td colspan="2">점심식사</td>
				<td>12:10 ~ 13:10</td>
				<td>60분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="3" class="bg-sky">오후</th>
				<td>4교시</td>
				<td>13:10 ~ 14:20</td>
				<td>70분</td>
				<td colspan="2" rowspan="3">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>5교시</td>
				<td>14:40 ~ 16:00</td>
				<td>80분</td>
			</tr>
			<tr>
				<td>6교시<span class="blue"><br>(종례)</span></td>
				<td>16:20 ~ 17:30<br><span class="blue">(17:20 ~ 17:30)</span></td>
				<td>60분<br><span class="blue">(10분)</span></td>
			</tr>
			<tr>
				<td colspan="2">저녁식사</td>
				<td>17:30 ~ 18:40</td>
				<td>70분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">저녁</th>
				<td>7교시</td>
				<td>18:40 ~ 20:10</td>
				<td>90분</td>
				<td colspan="2" rowspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>8교시</td>
				<td>20:30 ~ 22:00</td>
				<td>90분</td>
			</tr>
			<tr>
				<td colspan="2">귀가</td>
				<td>22:00 ~ 22:10</td>
				<td>10분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">심야</th>
				<td>9교시</td>
				<td>22:10 ~ 23:00</td>
				<td>50분</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
				<td colspan="2" rowspan="2">이용불가</td>
			</tr>
			<tr>
				<td>10교시</td>
				<td>23:10 ~ 24:00</td>
				<td>50분</td>
			</tr>
		</tbody>
	</table>
	<% Else %>
	<table class="tbl-01">
		<colgroup>
			<col style="width:10%" />
			<col style="width:10%" />
			<col style="width:11%" />
			<col style="width:11%" />
			<col style="width:10%" />
			<col style="width:%" />
			<col style="width:%" />
			<col style="width:15%" />
		</colgroup>
		<thead>
			<tr>
				<th colspan="2">구분</th>
				<th>시작시간</th>
				<th>종료시간</th>
				<th>자습시간</th>
				<th>월요일~금요일</th>
				<th>토요일</th>
				<th>일(공휴일)</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th rowspan="4" class="bg-sky">오전</th>
				<td>0교시</td>
				<td>AM 07:00</td>
				<td>AM 07:50</td>
				<td>50분</td>
				<td><span class="ico-txt s">선택자습</span></td>
				<td><span class="ico-txt s">선택자습</span></td>
				<td><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>1교시</td>
				<td>AM 08:00</td>
				<td>AM 08:40</td>
				<td>40분</td>
				<td><span class="ico-txt p">영어 프로그램</span></td>
				<td rowspan="3">
					<span class="ico-txt b">의무<br>자습</span>
					<span class="ico-txt v">단과<br>수업</span>
					<span class="ico-txt r">상<br>담</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td>AM 08:50</td>
				<td>AM 10:10</td>
				<td>80분</td>
				<td rowspan="2">
					<span class="ico-txt b">의무<br>자습</span>
					<span class="ico-txt v">단과<br>수업</span>
					<span class="ico-txt r">상<br>담</span>
				</td>
			</tr>
			<tr>
				<td>3교시</td>
				<td>AM 10:30</td>
				<td>PM 12:10</td>
				<td>100분</td>
			</tr>
			<tr>
				<th colspan="2">점심식사</th>
				<td>PM 12:10</td>
				<td>PM 01:10</td>
				<td>60분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="3" class="bg-sky">오후</th>
				<td>4교시</td>
				<td>PM 01:10</td>
				<td>PM 02:20</td>
				<td>70분</td>
				<td rowspan="3" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>5교시</td>
				<td>PM 02:40 </td>
				<td>PM 04:00</td>
				<td>80분</td>
			</tr>
			<tr>
				<td>6교시</td>
				<td>PM 04:20</td>
				<td>PM 05:30</td>
				<td>70분</td>
			</tr>
			<tr>
				<th colspan="2">저녁식사</th>
				<td>PM 05:30</td>
				<td>PM 06:30</td>
				<td>60분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">저녁</th>
				<td>7교시</td>
				<td>PM 06:30</td>
				<td>PM 08:00</td>
				<td>90분</td>
				<td rowspan="2" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>8교시</td>
				<td>PM 08:20 </td>
				<td>PM 09:50</td>
				<td>90분</td>
			</tr>
			<tr>
				<th colspan="2">귀가</th>
				<td>PM 09:50</td>
				<td>PM 10:10</td>
				<td>20분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">심야</th>
				<td>9교시</td>
				<td>PM 10:10</td>
				<td>PM 11:00</td>
				<td>50분</td>
				<td colspan="2" rowspan="2"><span class="ico-txt s">선택자습</span></td>
				<td rowspan="2">(이용불가)</td>
			</tr>
			<tr>
				<td>10교시</td>
				<td>PM 11:10</td>
				<td>AM 12:00</td>
				<td>50분</td>
			</tr>
		</tbody>
	</table>
		<% If sCampusCode = "CD0342" OR sCampusCode = "CD0349" Then '대구/울산 %>
		<p class="r-txt mt10">* 평일 오전 영어 프로그램은 영단어&amp;듣기TEST로 진행되며 학원별 운영은 상이할 수 있습니다.</p>
		<% Else %>
		<p class="r-txt mt10">* 평일 오전 영어 프로그램은 영단어&amp;듣기TEST로 진행되며 학원별 운영은 상이할 수 있습니다.<br>
			* 학원별 운영 시간표는 상이하므로 학원별 페이지를 확인하시기 바랍니다.</p>
		<% End If %>
	<% End If %>
</div>
