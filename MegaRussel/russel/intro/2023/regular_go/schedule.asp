<div class="inner-cont">
	<% If sCampusCode = "INTRO" Or sCampusCode = "CD0246" OR sCampusCode = "CD0342" Or sCampusCode = "CD0343" Or sCampusCode = "CD0345" Then '인트로/센텀/대구/원주/창원 %>
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
	<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
	<table class="tbl-01">
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
	
	<p class="r-txt mt10">※ 사회적 거리두기 단계에 따라 운영시간은 달라질 수 있습니다.</p>
	<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
	<table class="tbl-01">
		<colgroup>
			<col style="width:8%" />
			<col style="width:8%" />
			<col style="width:auto" />
			<col style="width:8%" />
			<col style="width:auto" />
			<col style="width:auto" />
			<col style="width:auto" />
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
	<p class="r-txt mt10">※ 사회적 거리두기 단계에 따라 운영시간은 달라질 수 있습니다.</p>
	<% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
	<table class="tbl-01">
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
				<td colspan="2" rowspan="3">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td colspan="2">08:50 ~ 10:10</td>
				<td>80분</td>
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
				<td rowspan="3" colspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
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
	<p class="r-txt mt10">※ 사회적 거리두기 단계에 따라 운영시간은 달라질 수 있습니다.</p>
	<% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
	<table class="tbl-01">
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
				<td colspan="2" rowspan="3">
					<span class="ico-txt b">의무자습</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td colspan="2">08:50 ~ 10:10</td>
				<td>80분</td>
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
				<td rowspan="3" colspan="2">
					<span class="ico-txt b">의무자습</span>
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
	<p class="r-txt mt10">※ 사회적 거리두기 단계에 따라 운영시간은 달라질 수 있습니다.</p>
	
	<% ElseIf sCampusCode = "CD0249" Then '러셀영통 %>		
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
				<td>6교시</td>
				<td>PM 04:20</td>
				<td>PM 05:20</td>
				<td>60분</td>
				<td><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>조회</td>
				<td>PM 05:20</td>
				<td>PM 05:30</td>
				<td>10분</td>	
				<td><span class="ico-txt s">선택자습</span></td>
			</tr>
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
	<p class="tar mt10 gray fz11">* 학원사정에 따라 운영시간이 변경될 수 있으니, 학원으로 확인 바랍니다.</p>

	<% ElseIf sCampusCode = "CD0247" Then '러셀강남 %>
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
				<th>월요일~토요일</th>
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
			</tr>
			<tr>
				<td>1교시</td>
				<td>AM 08:00</td>
				<td>AM 08:40</td>
				<td>40분</td>
				<td rowspan="3">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td>AM 08:50</td>
				<td>AM 10:10</td>
				<td>80분</td>
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
				<td colspan="2">-</td>
			</tr>
			<tr>
				<th rowspan="3" class="bg-sky">오후</th>
				<td>4교시</td>
				<td>PM 01:10</td>
				<td>PM 02:20</td>
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
				<td colspan="2">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">저녁</th>
				<td>7교시</td>
				<td>PM 06:30</td>
				<td>PM 08:00</td>
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
				<td>PM 08:20 </td>
				<td>PM 09:50</td>
				<td>90분</td>
			</tr>
			<tr>
				<th colspan="2">귀가</th>
				<td>PM 09:50</td>
				<td>PM 10:10</td>
				<td>20분</td>
				<td colspan="2">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">심야</th>
				<td>9교시</td>
				<td>PM 10:10</td>
				<td>PM 11:00</td>
				<td>50분</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
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
	<% ElseIf sCampusCode = "CD0001" Then '러셀대치 %>
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
	<p class="r-txt mt10">※ 사회적 거리두기 단계에 따라 운영시간은 달라질 수 있습니다.</p>
	<% ElseIf sCampusCode = "CD0245" Then '러셀목동 %>
	<table class="tbl-01">
		<colgroup>
			<col style="width:10%">
			<col style="width:15%">
			<col style="width:auto">
			<col style="width:10%">
			<col style="width:13%">
			<col style="width:13%">
			<col style="width:13%">
		</colgroup>
		<thead>
			<tr>
				<th colspan="2">교시</th>
				<th colspan="2">자습시간</th>
				<th>월~금</th>
				<th>토</th>
				<th>일(공휴일)</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th>조조</th>
				<td>0교시</td>
				<td>AM07:00 - AM07:50</td>
				<td>50분</td>
				<td>선택학습</td>
				<td>선택학습</td>
				<td>선택학습</td>
			</tr>
			<tr>
				<th rowspan="3">오전</th>
				<td class="bg-sky">1교시</td>
				<td class="bg-sky">AM08:00 - AM08:40</td>
				<td class="bg-sky">40분</td>
				<td class="bg-sky" rowspan="3">단과수업/<br>의무자습/<br>담임상담</td>
				<td class="bg-sky" rowspan="3">단과수업/<br>의무자습/<br>담임상담</td>
				<td rowspan="3">선택자습</td>
			</tr>
			<tr class="bg-sky">
				<td>2교시</td>
				<td>AM08:50 - AM10:20</td>
				<td>90분</td>
			</tr>
			<tr class="bg-sky">
				<td>3교시</td>
				<td>AM10:30 - PM12:10</td>
				<td>100분</td>
			</tr>
			<tr>
				<th colspan="2">점심식사</th>
				<td>PM12:10 - PM01:10</td>
				<td>60분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="3">오후</th>
				<td class="bg-sky">4교시</td>
				<td class="bg-sky">PM01:10 - PM02:20</td>
				<td class="bg-sky">70분</td>
				<td class="bg-sky" rowspan="3">단과수업/<br>의무자습/<br>담임상담</td>
				<td class="bg-sky" rowspan="3">단과수업/<br>의무자습/<br>담임상담</td>
				<td rowspan="3">선택자습</td>
			</tr>
			<tr class="bg-sky">
				<td>5교시</td>
				<td>PM02:40 - PM04:00</td>
				<td>80분</td>
			</tr>
			<tr class="bg-sky">
				<td>6교시</td>
				<td>PM04:20 - PM05:30</td>
				<td>70분</td>
			</tr>
			<tr>
				<th colspan="2">저녁식사</th>
				<td>PM05:30 - PM06:30</td>
				<td>60분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2">저녁</th>
				<th class="bg-sky">7교시</th>
				<td class="bg-sky">PM06:30 - PM08:10</td>
				<td class="bg-sky">100분</td>
				<td class="bg-sky" rowspan="2">단과수업/<br>의무자습/<br>담임상담</td>
				<td class="bg-sky" rowspan="2">단과수업/<br>의무자습/<br>담임상담</td>
				<td rowspan="2">선택자습</td>
			</tr>
			<tr class="bg-sky">
				<td>8교시</td>
				<td>PM08:30 - PM10:00</td>
				<td>90분</td>
			</tr>
			<tr>
				<th colspan="2">귀가</th>
				<td>PM10:00 - PM10:10</td>
				<td>10분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2">심야</th>
				<td>9교시</td>
				<td>PM10:10 - PM11:00</td>
				<td>50분</td>
				<td rowspan="2">선택자습</td>
				<td colspan="2" rowspan="2">(이용불가)</td>
			</tr>
			<tr>
				<td>10교시</td>
				<td>PM11:00 - AM12:00</td>
				<td>60분</td>
			</tr>
		</tbody>
	</table>
	<p class="r-txt mt10">※ 심야 자습은 코로나 방역 지침 단계에 따라 시행 여부가 변경될 수 있습니다.</p>
	<% ElseIf sCampusCode = "CD0250" Then '러셀부천 %>
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
				<th rowspan="3" class="bg-sky">오전</th>
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
				<td>PM 01:30</td>
				<td>20분</td>
				<td colspan="3"><span class="ico-txt p">영어 프로그램</span> 	*듣기·단어 등 일자별 컨텐츠 상이</td>
			</tr>
			<tr>
				<th rowspan="3" class="bg-sky">오후</th>
				<td>4교시</td>
				<td>PM 01:30</td>
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
				<td>PM 06:40</td>
				<td>60분</td>
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
				<th colspan="2">귀가</th>
				<td>PM 10:00 </td>
				<td>PM 10:30</td>
				<td>20분</td>
				<td colspan="3">※ 빠르고 조용히 귀가</td>
			</tr>
			<tr>
				<th class="bg-sky">심야</th>
				<td>9교시</td>
				<td>PM 10:30</td>
				<td>PM 12:00</td>
				<td>50분</td>
				<td colspan="2"><span class="ico-txt s">선택자습</span></td>
				<td>미운영</td>
			</tr>
		</tbody>
	</table>
	<p class="r-txt mt10">※ 사회적 거리두기 단계에 따라 운영시간은 달라질 수 있습니다.</p>
	<% ElseIf sCampusCode = "CD0244" Then '러셀분당 %>
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
				<th>월 ~ 토</th>
				<th>일(공휴일)</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th rowspan="3" class="bg-sky">오전</th>
				<td>1교시</td>
				<td>AM 08:00</td>
				<td>AM 08:50</td>
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
				<td>AM 09:00</td>
				<td>AM 10:20</td>
				<td>80분</td>
			</tr>
			<tr>
				<td>3교시</td>
				<td>AM 10:40</td>
				<td>PM 12:10</td>
				<td>80분</td>
			</tr>
			<tr>
				<th colspan="2">점심식사</th>
				<td>PM 12:10</td>
				<td>PM 13:20</td>
				<td>70분</td>
				<td colspan="2">-</td>
			</tr>
			<tr>
				<th rowspan="3" class="bg-sky">오후</th>
				<td>4교시</td>
				<td>PM 13:20</td>
				<td>PM 14:10</td>
				<td>50분</td>
				<td rowspan="3">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt v">단과수업</span>
					<span class="ico-txt r">상담</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>5교시</td>
				<td>PM 14:30</td>
				<td>PM 15:50</td>
				<td>80분</td>
			</tr>
			<tr>
				<td>6교시</td>
				<td>PM 16:10</td>
				<td>PM 05:30</td>
				<td>80분</td>
			</tr>
			<tr>
				<th colspan="2">저녁식사</th>
				<td>PM 05:30</td>
				<td>PM 06:40</td>
				<td>90분</td>
				<td colspan="2">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">저녁</th>
				<td>7교시</td>
				<td>PM 06:40</td>
				<td>PM 08:10</td>
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
				<td>PM 08:30</td>
				<td>PM 10:00</td>
				<td>90분</td>
			</tr>
			<tr>
				<th colspan="2">귀가</th>
				<td>PM 10:00</td>
				<td>PM 10:20</td>
				<td>-</td>
				<td colspan="2">-</td>
			</tr>
			<tr>
				<th class="bg-sky" rowspan="2">심야</th>
				<td>9교시</td>
				<td>PM 10:20</td>
				<td>PM 11:20</td>
				<td>60분</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span> (신청서 제출)</td>
				<td rowspan="2">(이용불가)</td>
			</tr>
			<tr>
				<td>10교시</td>
				<td>PM 11:30</td>
				<td>AM 00:30</td>
				<td>60분</td>
			</tr>
		</tbody>
	</table>
	<% ElseIf sCampusCode = "CD0257" Then '러셀중계 %>
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
				<th rowspan="3" class="bg-sky">오전</th>
				<td>1교시</td>
				<td>AM 08:00</td>
				<td>AM 08:40</td>
				<td>40분</td>
				<td rowspan="3">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt r">진학지도</span>
				</td>
				<td rowspan="3">
					<span class="ico-txt b">의무자습</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td>AM 08:50</td>
				<td>AM 10:10</td>
				<td>80분</td>
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
				<td rowspan="3">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt r">진학지도</span>
				</td>
				<td rowspan="3"><span class="ico-txt b">의무자습</span></td>
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
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">저녁</th>
				<td>7교시</td>
				<td>PM 06:40</td>
				<td>PM 08:10</td>
				<td>90분</td>
				<td rowspan="2">
					<span class="ico-txt b">의무자습</span>
					<span class="ico-txt r">진학지도</span>
				</td>
				<td rowspan="2"><span class="ico-txt b">의무자습</span></td>
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
				<td>PM 10:00 </td>
				<td>PM 10:30</td>
				<td>30분</td>
				<td colspan="3">-</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">심야</th>
				<td>9교시</td>
				<td>PM 10:30</td>
				<td>PM 11:40</td>
				<td>70분</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
				<td rowspan="2" colspan="2">(이용불가)</td>
			</tr>
			<tr>
				<td>10교시</td>
				<td>PM 11:50</td>
				<td>AM 01:00</td>
				<td>70분</td>
			</tr>
		</tbody>
	</table>
	<p class="r-txt mt10">※ 사회적 거리두기 단계에 따라 운영시간은 달라질 수 있습니다.</p>			
	<% ElseIf sCampusCode = "CD0341" Then '러셀CORE 대전 %>
	<table class="tbl-01">
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
				<td colspan="2" rowspan="3">
					<span class="ico-txt b">의무자습</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>2교시</td>
				<td>AM 08:50</td>
				<td>AM 10:10</td>
				<td>80분</td>
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
				<td colspan="3">■ 5분전 입실 완료</td>
			</tr>
			<tr>
				<th rowspan="3" class="bg-sky">오후</th>
				<td>4교시</td>
				<td>PM 01:10</td>
				<td>PM 02:20</td>
				<td>70분</td>
				<td rowspan="3" colspan="2">
					<span class="ico-txt b">의무자습</span>
				</td>
				<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>5교시</td>
				<td>PM 02:40</td>
				<td>PM 04:00</td>
				<td>80분</td>
			</tr>
			<tr>
				<td>6교시</td>
				<td>PM 04:20 </td>
				<td>PM 05:30</td>
				<td>70분</td>
			</tr>
			<tr>
				<th colspan="2">저녁식사</th>
				<td>PM 05:30</td>
				<td>PM 06:30</td>
				<td>60분</td>
				<td colspan="3">■ 5분전 입실 완료</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">저녁</th>
				<td>7교시</td>
				<td>PM 06:30</td>
				<td>PM 08:00</td>
				<td>90분</td>
				<td rowspan="2" colspan="2">
					<span class="ico-txt b">의무자습</span>
				</td>
				<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
			</tr>
			<tr>
				<td>8교시</td>
				<td>PM 08:20</td>
				<td>PM 09:50</td>
				<td>90분</td>
			</tr>
			<tr>
				<th colspan="2">귀가</th>
				<td>PM 09:50</td>
				<td>PM 10:10</td>
				<td>20분</td>
				<td colspan="3">■ 심야자습 시작 전 퇴실</td>
			</tr>
			<tr>
				<th rowspan="2" class="bg-sky">심야</th>
				<td>9교시</td>
				<td>PM 10:10</td>
				<td>PM 11:00</td>
				<td>50분</td>
				<td colspan="2" rowspan="2"><span class="ico-txt s">선택자습</span></td>
				<td rowspan="2" class="red_txt">심야자습<br>없음</td>
			</tr>
			<tr>
				<td>10교시</td>
				<td>PM 11:10</td>
				<td>AM 12:00</td>
				<td>50분</td>
			</tr>
		</tbody>
	</table>
	<% End If %>

	<% If sCampusCode = "INTRO" Then '인트로 %>
	<p class="r-txt mt10">* 평일 오전 영어 프로그램은 영단어&amp;듣기TEST로 진행되며 학원별 운영은 상이할 수 있습니다.<br>* 학원별 운영 시간표는 상이하므로 학원별 페이지를 확인하시기 바랍니다.
	</p>
	<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
	<p class="r-txt mt10">※ 사회적 거리두기 단계에 따라 운영시간은 달라질 수 있습니다.</p>
	<% ElseIf sCampusCode = "CD0342" Then '대구 %>
	<p class="r-txt mt10">* 평일 오전 영어 프로그램은 영단어&amp;듣기TEST로 진행되며 학원별 운영은 상이할 수 있습니다.<br>* 학원 운영에 따라 시간표는 변동될 수 있습니다.
	</p>
	<% end if %>
</div>
