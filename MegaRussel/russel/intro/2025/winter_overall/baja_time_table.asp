<div class="layer-pop01 layer">
	<a href="javascript:void(0)" class="bt-close"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/bt_close.png" alt="닫기"></a>
	<p class="stit">바른공부 자습전용관 표준 시간표</p>
	<div class="layer-wrap">
		<% If sCampusCode = "CD0349" Then '러셀울산 %>
		<table class="tbl-01 type02">
			<colgroup>
				<col style="width:10%" />
				<col style="width:10%" />
				<col style="width:11%" />
				<col style="width:11%" />
				<col style="width:11%" />
				<col style="width:auto" />
				<col style="width:auto" />
				<col style="width:auto" />
			</colgroup>
			<thead>
				<tr class="low">
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
					<th class="bg-th" rowspan="4">오전</th>
					<td class="bg-th">0교시</td>
					<td>AM 07:00</td>
					<td>AM 07:50</td>
					<td>50분</td>
					<td><span class="ico-txt s">선택자습</span></td>
					<td><span class="ico-txt s">선택자습</span></td>
					<td><span class="ico-txt s">선택자습</span></td>
				</tr>
				<tr>
					<td class="bg-th">1교시</td>
					<td>AM 08:00</td>
					<td>AM 08:40</td>
					<td>40분</td>
					<td><span class="ico-txt p">영어 프로그램</span></td>
					<td rowspan="3">
						<span class="ico-txt b mb5">의무자습</span><br>
						<span class="ico-txt v mb5">단과수업</span><br>
						<span class="ico-txt r">상담</span>
					</td>
					<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
				</tr>
				<tr>
					<td class="bg-th">2교시</td>
					<td>AM 08:50</td>
					<td>AM 10:10</td>
					<td>80분</td>
					<td rowspan="2">
						<span class="ico-txt b mb5">의무자습</span><br>
						<span class="ico-txt v mb5">단과수업</span><br>
						<span class="ico-txt r">상담</span>
					</td>
				</tr>
				<tr>
					<td class="bg-th">3교시</td>
					<td>AM 10:20</td>
					<td>PM 12:00</td>
					<td>100분</td>
				</tr>
				<tr>
					<th class="bg-th" colspan="2">점심식사</th>
					<td>PM 12:00</td>
					<td>PM 01:20</td>
					<td>80분</td>
					<td colspan="3">-</td>
				</tr>
				<tr>
					<th class="bg-th" rowspan="3">오후</th>
					<td class="bg-th">4교시</td>
					<td>PM 01:20</td>
					<td>PM 02:30</td>
					<td>70분</td>
					<td colspan="2" rowspan="3">
						<span class="ico-txt b">의무자습</span>
						<span class="ico-txt v">단과수업</span>
						<span class="ico-txt r">상담</span>
					</td>
					<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
				</tr>
				<tr>
					<td class="bg-th">5교시</td>
					<td>PM 02:50</td>
					<td>PM 04:00</td>
					<td>70분</td>
				</tr>
				<tr>
					<td class="bg-th">6교시</td>
					<td>PM 04:20</td>
					<td>PM 05:30</td>
					<td>70분</td>
				</tr>
				<tr>
					<th class="bg-th" colspan="2">저녁식사</th>
					<td>PM 05:30</td>
					<td>PM 06:40</td>
					<td>70분</td>
					<td colspan="3">-</td>
				</tr>
				<tr>
					<th class="bg-th" rowspan="2">저녁</th>
					<td class="bg-th">7교시</td>
					<td>PM 06:40</td>
					<td>PM 08:10</td>
					<td>90분</td>
					<td colspan="2" rowspan="2">
						<span class="ico-txt b">의무자습</span>
						<span class="ico-txt v">단과수업</span>
						<span class="ico-txt r">상담</span>
					</td>
					<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
				</tr>
				<tr>
					<td class="bg-th">8교시</td>
					<td>PM 08:30</td>
					<td>PM 10:00</td>
					<td>90분</td>
				</tr>
				<tr>
					<th class="bg-th" colspan="2">귀가</th>
					<td>PM 10:00</td>
					<td>PM 10:10</td>
					<td>10분</td>
					<td colspan="3">-</td>
				</tr>
				<tr>
					<th class="bg-th" rowspan="2">심야</th>
					<td class="bg-th">9교시</td>
					<td>PM 10:10</td>
					<td>PM 11:00</td>
					<td>50분</td>
					<td colspan="2" rowspan="2"><span class="ico-txt s">선택자습</span></td>
					<td rowspan="2">(이용불가)</td>
				</tr>
				<tr>
					<td class="bg-th">10교시</td>
					<td>PM 11:10</td>
					<td>AM 12:00</td>
					<td>50분</td>
				</tr>
			</tbody>
		</table>
		<p class="r-stxt mt10">* 평일 오전 영어 프로그램은 영단어&듣기TEST로 진행됩니다.</p>

		<% ElseIf sCampusCode = "CD0342" Then '러셀대구 %>
		<table class="tbl-01 type02">
			<colgroup>
				<col style="width:10%" />
				<col style="width:10%" />
				<col style="width:11%" />
				<col style="width:11%" />
				<col style="width:11%" />
				<col style="width:auto" />
				<col style="width:auto" />
				<col style="width:auto" />
			</colgroup>
			<thead>
				<tr class="low">
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
					<th class="bg-th" rowspan="4">오전</th>
					<td class="bg-th">0교시</td>
					<td>AM 07:00</td>
					<td>AM 07:50</td>
					<td>50분</td>
					<td><span class="ico-txt s">선택자습</span></td>
					<td><span class="ico-txt s">선택자습</span></td>
					<td><span class="ico-txt s">선택자습</span></td>
				</tr>
				<tr>
					<td class="bg-th">1교시</td>
					<td>AM 08:00</td>
					<td>AM 08:40</td>
					<td>40분</td>
					<td><span class="ico-txt p">영어 프로그램</span></td>
					<td rowspan="3">
						<span class="ico-txt b mb5">의무자습</span><br>
						<span class="ico-txt v mb5">단과수업</span><br>
						<span class="ico-txt r">상담</span>
					</td>
					<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
				</tr>
				<tr>
					<td class="bg-th">2교시</td>
					<td>AM 08:50</td>
					<td>AM 10:10</td>
					<td>80분</td>
					<td rowspan="2">
						<span class="ico-txt b mb5">의무자습</span><br>
						<span class="ico-txt v mb5">단과수업</span><br>
						<span class="ico-txt r">상담</span>
					</td>
				</tr>
				<tr>
					<td class="bg-th">3교시</td>
					<td>AM 10:30</td>
					<td>PM 12:10</td>
					<td>100분</td>
				</tr>
				<tr>
					<th class="bg-th" colspan="2">점심식사</th>
					<td>PM 12:10</td>
					<td>PM 01:10</td>
					<td>60분</td>
					<td colspan="3">-</td>
				</tr>
				<tr>
					<th class="bg-th" rowspan="3">오후</th>
					<td class="bg-th">4교시</td>
					<td>PM 01:10</td>
					<td>PM 02:20</td>
					<td>70분</td>
					<td colspan="2" rowspan="3">
						<span class="ico-txt b">의무자습</span>
						<span class="ico-txt v">단과수업</span>
						<span class="ico-txt r">상담</span>
					</td>
					<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
				</tr>
				<tr>
					<td class="bg-th">5교시</td>
					<td>PM 02:40</td>
					<td>PM 04:00</td>
					<td>80분</td>
				</tr>
				<tr>
					<td class="bg-th">6교시</td>
					<td>PM 04:20</td>
					<td>PM 05:30</td>
					<td>70분</td>
				</tr>
				<tr>
					<th class="bg-th" colspan="2">저녁식사</th>
					<td>PM 05:30</td>
					<td>PM 06:30</td>
					<td>60분</td>
					<td colspan="3">-</td>
				</tr>
				<tr>
					<th class="bg-th" rowspan="2">저녁</th>
					<td class="bg-th">7교시</td>
					<td>PM 06:30</td>
					<td>PM 08:00</td>
					<td>90분</td>
					<td colspan="2" rowspan="2">
						<span class="ico-txt b">의무자습</span>
						<span class="ico-txt v">단과수업</span>
						<span class="ico-txt r">상담</span>
					</td>
					<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
				</tr>
				<tr>
					<td class="bg-th">8교시</td>
					<td>PM 08:20</td>
					<td>PM 09:50</td>
					<td>90분</td>
				</tr>
				<tr>
					<th class="bg-th" colspan="2">귀가</th>
					<td>PM 09:50</td>
					<td>PM 10:10</td>
					<td>20분</td>
					<td colspan="3">-</td>
				</tr>
				<tr>
					<th class="bg-th" rowspan="2">심야</th>
					<td class="bg-th">9교시</td>
					<td>PM 10:10</td>
					<td>PM 11:00</td>
					<td>50분</td>
					<td colspan="2" rowspan="2"><span class="ico-txt s">선택자습</span></td>
					<td rowspan="2">(이용불가)</td>
				</tr>
				<tr>
					<td class="bg-th">10교시</td>
					<td>PM 11:10</td>
					<td>AM 12:00</td>
					<td>50분</td>
				</tr>
			</tbody>
		</table>
		<p class="r-stxt mt10">* 평일 오전 영어 프로그램은 영단어&듣기TEST로 진행되며 학원별 운영은 상이할 수 있습니다.<br>
			* 학원별 운영 시간표는 상이하므로 학원별 페이지를 확인하시기 바랍니다.</p>
		<% ElseIf sCampusCode = "CD0249" Then '러셀영통 %>
		<table class="tbl-01 type02">
			<colgroup>
				<col style="width:12%" />
				<col style="width:12%" />
				<col style="width:auto" />
				<col style="width:15%" />
				<col style="width:17%" />
				<col style="width:17%" />
			</colgroup>
			<thead>
				<tr>
					<th>구분</th>
					<th>교시</th>
					<th colspan="2">시간</th>
					<th>월~토</th>
					<th>일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th rowspan="3" class="bg-th">오전</th>
					<td>1교시<br>(조회)</td>
					<td>08:00 ~ 08:30</td>
					<td>30분</td>
					<td rowspan="3"><span class="ico-txt b">의무</span></td>
					<td>미운영</td>
				</tr>
				<tr>
					<td>2교시</td>
					<td>08:50 ~ 10:10</td>
					<td>80분</td>
					<td rowspan="2"><span class="ico-txt s">선택</span></td>
				</tr>
				<tr>
					<td>3교시</td>
					<td>10:30 ~ 12:10</td>
					<td>100분</td>
				</tr>
				<tr>
					<th colspan="2">점심시간</th>
					<td>12:10 ~ 13:10</td>
					<td>60분</td>
					<td colspan="2"></td>
				</tr>
				<tr>
					<th rowspan="3" class="bg-th">오후</th>
					<td>4교시</td>
					<td>13:10 ~ 14:20</td>
					<td>70분</td>
					<td rowspan="3"><span class="ico-txt b">의무</span></td>
					<td rowspan="3"><span class="ico-txt s">선택</span></td>
				</tr>
				<tr>
					<td>5교시</td>
					<td>14:40 ~ 16:10</td>
					<td>90분</td>
				</tr>
				<tr>
					<td>6교시</td>
					<td>16:30 ~ 17:30</td>
					<td>60분</td>
				</tr>
				<tr>
					<th colspan="2">저녁시간</th>
					<td>17:30 ~ 18:40</td>
					<td>70분</td>
					<td colspan="2"></td>
				</tr>
				<tr>
					<th rowspan="2" class="bg-th">저녁</th>
					<td>7교시<br>(종례)</td>
					<td>18:40 ~ 20:10</td>
					<td>90분</td>
					<td rowspan="2"><span class="ico-txt b">의무</span></td>
					<td rowspan="2"><span class="ico-txt s">선택</span></td>
				</tr>
				<tr>
					<td class="b-l">8교시</td>
					<td>20:30 ~ 22:00</td>
					<td>90분</td>
				</tr>
				<tr>
					<th colspan="2">귀가시간</th>
					<td>22:00 ~ 22:10</td>
					<td>10분</td>
					<td colspan="2"></td>
				</tr>
				<tr>
					<th colspan="2">심야1교시</th>
					<td>22:10 ~ 23:00</td>
					<td>50분</td>
					<td rowspan="2">신청자</td>
					<td rowspan="2">미운영</td>
				</tr>
				<tr>
					<th colspan="2">심야2교시</th>
					<td>23:10 ~ 24:00</td>
					<td>50분</td>
				</tr>
			</tbody>
		</table>
		<p class="r-stxt mt10">* 학원 사정 상, 운영시간은 변경될 수 있습니다.</p>
		
		<% ElseIf sCampusCode = "CD0340" Then '러셀CORE 광주 %>
		<table class="tbl-01 type02">
			<colgroup>
				<col style="width:9%" />
				<col style="width:9%" />
				<col style="width:auto" />
				<col style="width:auto" />
				<col style="width:9%" />
				<col style="width:auto" />
				<col style="width:auto" />
				<col style="width:auto" />
			</colgroup>
			<thead>
				<tr class="low">
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
					<th rowspan="4" class="bg-th">오전</th>
					<td class="bg-th">0교시</td>
					<td>AM 07:00</td>
					<td>AM 07:50</td>
					<td>50분</td>
					<td colspan="2"><span class="ico-txt s">선택자습</span></td>
					<td rowspan="4"><span class="ico-txt s">선택자습</span></td>
				</tr>
				<tr>
					<td class="bg-th">1교시</td>
					<td>AM 08:00</td>
					<td>AM 08:40</td>
					<td>40분</td>
					<td rowspan="3"><span class="ico-txt b">의무자습<br>/진학지도</span></td>
					<td rowspan="3"><span class="ico-txt v">의무자습</span></td>
				</tr>
				<tr>
					<td class="bg-th">2교시</td>
					<td>AM 08:50</td>
					<td>AM 10:10</td>
					<td>80분</td>
				</tr>
				<tr>
					<td class="bg-th">3교시</td>
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
					<th rowspan="3" class="bg-th">오후</th>
					<td class="bg-th">4교시</td>
					<td>PM 01:10</td>
					<td>PM 02:20</td>
					<td>70분</td>
					<td rowspan="3"><span class="ico-txt b">의무자습<br>/진학지도</span></td>
					<td rowspan="3"><span class="ico-txt v">의무자습</span></td>
					<td rowspan="3"><span class="ico-txt s">선택자습</span></td>
				</tr>
				<tr>
					<td class="bg-th">5교시</td>
					<td>PM 02:40</td>
					<td>PM 04:00</td>
					<td>80분</td>
				</tr>
				<tr>
					<td class="bg-th">6교시</td>
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
					<th rowspan="2" class="bg-th">저녁</th>
					<td class="bg-th">7교시</td>
					<td>PM 06:40</td>
					<td>PM 08:10</td>
					<td>90분</td>
					<td rowspan="2"><span class="ico-txt b">의무자습<br>/진학지도</span></td>
					<td rowspan="2"><span class="ico-txt v">의무자습</span></td>
					<td rowspan="2"><span class="ico-txt s">선택자습</span></td>
				</tr>
				<tr>
					<td class="bg-th">8교시</td>
					<td>PM 08:30</td>
					<td>PM 10:00</td>
					<td>90분</td>
				</tr>
				<tr>
					<th colspan="2">귀가</th>
					<td>PM 10:00</td>
					<td>PM 10:30</td>
					<td>30분</td>
					<td colspan="3">-</td>
				</tr>
				<tr>
					<th rowspan="2" class="bg-th">심야</th>
					<td class="bg-th">9교시</td>
					<td>PM 10:30</td>
					<td>PM 11:40</td>
					<td>70분</td>
					<td rowspan="2" colspan="2"><span class="ico-txt s">선택자습</span></td>
					<td rowspan="2">-</td>
				</tr>
				<tr>
					<td class="bg-th">10교시</td>
					<td>PM 11:50</td>
					<td>AM 01:00</td>
					<td>70분</td>
				</tr>
			</tbody>
		</table>
		<p class="r-stxt mt10">* 평일 오전 영어 프로그램은 영단어&듣기TEST로 진행되며 학원별 운영은 상이할 수 있습니다.<br>
			* 학원별 운영 시간표는 상이하므로 학원별 페이지를 확인하시기 바랍니다.</p>

		<% End If %>
	</div>
</div>