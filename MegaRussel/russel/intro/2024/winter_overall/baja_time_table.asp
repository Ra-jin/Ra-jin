<div class="layer-pop01 layer">
	<a href="javascript:void(0)" class="bt-close"><img src="<%=Application("img_path_russel")%>/intro/2024/half/bt_close.png" alt="닫기"></a>
	<p class="stit">바른공부 자습전용관 표준 시간표</p>
	<div class="layer-wrap">
		<% If sCampusCode = "CD0349" Then '울산 %>
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
		<p class="r-stxt mt10">* 평일 오전 영어 프로그램은 영단어&amp;듣기TEST로 진행되며 학원별 운영은 상이할 수 있습니다.</p>

		<% ElseIf sCampusCode = "CD0342" Then '대구 %>
		<table class="tbl-01">
			<colgroup>
				<col style="width:6%" />
				<col style="width:8%" />
				<col style="width:15%" />
				<col style="width:6%" />
				<col style="width:auto" />
				<col style="width:auto" />
				<col style="width:auto" />
				<col style="width:auto" />
				<col style="width:auto" />
				<col style="width:auto" />
				<col style="width:auto" />
			</colgroup>
			<thead>
				<tr>
					<th colspan="2">교시</th>
					<th colspan="2">시간</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
					<th>일<br>
                        (공휴일)
                    </th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th class="bg-sky" rowspan="4">오전</th>
					<td class="bg-sky">0교시</td>
					<td>AM07:00 - AM07:50</td>
					<td>50분</td>
					<td colspan="6"><span class="ico-txt s">선택자습</span></td>
					<td rowspan="11"><span class="ico-txt s">선택자습</span></td>
				</tr>
				<tr>
					<td class="bg-sky">1교시</td>
					<td>AM08:00 - AM08:40</td>
					<td>40분</td>
					<td colspan="6" class="bg-gray"><span>영어 프로그램</span></td>
				</tr>
				<tr>
					<td class="bg-sky">2교시</td>
					<td>AM08:50 - AM10:10</td>
					<td>80분</td>
					<td rowspan="2" class="bg-lp">의무자습<br>/상담</td>
					<td rowspan="2" class="bg-bl">탐구A</td>
					<td rowspan="2" class="bg-gr">수학A</td>
					<td rowspan="2" class="bg-lp">의무자습<br>/상담</td>
					<td rowspan="2" class="bg-dp">국어 특강<br>(선택수업)</td>
					<td rowspan="2" class="bg-or">영어<br>(선택수업)</td>
				</tr>
				<tr>
					<td class="bg-sky">3교시</td>
					<td>AM10:30 - PM12:10</td>
					<td>100분</td>
				</tr>
				<tr>
					<th class="bg-sky" colspan="2">점심식사</th>
					<td>PM12:10 - PM01:10</td>
					<td>60분</td>
					<td colspan="6">-</td>
				</tr>
				<tr>
					<th class="bg-sky" rowspan="3">오후</th>
					<td class="bg-sky">4교시</td>
					<td>PM01:10 - PM02:20</td>
					<td>70분</td>
					<td rowspan="3" class="bg-vl">수리논술<br>(선택수업)</td>
					<td rowspan="3" class="bg-pk">국어</td>
					<td rowspan="3">의무자습<br>/상담</td>
					<td rowspan="3" class="bg-sk">탐구B</td>
					<td rowspan="3">의무자습<br>/상담</td>
					<td rowspan="3" class="bg-lg">수학B</td>
				</tr>
				<tr>
					<td class="bg-sky">5교시</td>
					<td>PM02:40 - PM04:00</td>
					<td>80분</td>
				</tr>
				<tr>
					<td class="bg-sky">6교시</td>
					<td>PM04:20 - PM05:30</td>
					<td>70분</td>
				</tr>
				<tr>
					<th class="bg-sky" colspan="2">저녁식사</th>
					<td>PM05:30 - PM06:30</td>
					<td>60분</td>
					<td colspan="6">-</td>
				</tr>
				<tr>
					<th class="bg-sky" rowspan="2">저녁</th>
					<td class="bg-sky">7교시</td>
					<td>PM06:30 - PM08:00</td>
					<td>90분</td>
					<td colspan="6" rowspan="2">의무자습/상담</td>
				</tr>
				<tr>
					<td class="bg-sky">8교시</td>
					<td>PM08:20 - PM09:50</td>
					<td>90분</td>
				</tr>
				<tr>
					<th class="bg-sky" colspan="2">귀가</th>
					<td>PM09:50 - PM10:10</td>
					<td>20분</td>
					<td colspan="7">-</td>
				</tr>
			</tbody>
		</table>
		<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
		<table class="tbl-01">
			<colgroup>
				<col style="width:8%" />
				<col style="width:10%" />
				<col style="width:auto" />
				<col style="width:10%" />
				<col style="width:auto" />
				<col style="width:14%" />
				<col style="width:14%" />
			</colgroup>
			<thead>
				<tr>
					<th colspan="2">교시</th>
					<th colspan="2">시간</th>
					<th>월~금</th>
					<th>토</th>
					<th>공휴일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th rowspan="4" class="bg-sky">오전</th>
					<td class="bg-sky">0교시</td>
					<td class="bg-sky">AM 07:00 ~ 07:50</td>
					<td class="bg-sky">50분</td>
					<td colspan="2"><span class="ico-txt r">선택자습</span></td>
					<td rowspan="11"><span class="ico-txt r">선택자습</span></td>
				</tr>
				<tr>
					<td class="bg-sky">1교시</td>
					<td class="bg-sky">AM 08:00 ~ 08:40</td>
					<td class="bg-sky">40분</td>
					<td rowspan="3" colspan="2"><span class="ico-txt b">정규자습<br>/진학지도</span></td>
				</tr>
				<tr>
					<td class="bg-sky">2교시</td>
					<td class="bg-sky">AM 08:50 ~ 10:10</td>
					<td class="bg-sky">80분</td>
				</tr>
				<tr>
					<td class="bg-sky">3교시</td>
					<td class="bg-sky">AM 10:30 ~ 12:10</td>
					<td class="bg-sky">100분</td>
				</tr>
				<tr>
					<th colspan="2" class="bg-sky">점심식사</th>
					<td class="bg-sky">PM 12:10 ~ 13:10</td>
					<td class="bg-sky">60분</td>
					<td colspan="2">-</td>
				</tr>
				<tr>
					<th rowspan="3" class="bg-sky">오후</th>
					<td class="bg-sky">4교시</td>
					<td class="bg-sky">PM 01:10 ~ 02:20</td>
					<td class="bg-sky">70분</td>
					<td rowspan="3" colspan="2"><span class="ico-txt b">정규자습<br>/진학지도</span></td>
				</tr>
				<tr>
					<td class="bg-sky">5교시</td>
					<td class="bg-sky">PM 02:40 ~ 04:00</td>
					<td class="bg-sky">80분</td>
				</tr>
				<tr>
					<td class="bg-sky">6교시</td>
					<td class="bg-sky">PM 04:20 ~ 05:30</td>
					<td class="bg-sky">70분</td>
				</tr>
				<tr>
					<th colspan="2" class="bg-sky">저녁식사</th>
					<td class="bg-sky">PM 05:30 ~ 06:40</td>
					<td class="bg-sky">70분</td>
					<td colspan="2">-</td>
				</tr>
				<tr>
					<th rowspan="2" class="bg-sky">저녁</th>
					<td class="bg-sky">7교시</td>
					<td class="bg-sky">PM 06:40 ~ 08:10</td>
					<td class="bg-sky">90분</td>
					<td rowspan="2" colspan="2"><span class="ico-txt b">정규자습<br>/진학지도</span></td>
				</tr>
				<tr>
					<td class="bg-sky">8교시</td>
					<td class="bg-sky">PM 08:30 ~ 10:00</td>
					<td class="bg-sky">90분</td>
				</tr>
				<tr>
					<th colspan="2" class="bg-sky">귀가</th>
					<td class="bg-sky">PM 10:00 ~ 10:30</td>
					<td class="bg-sky">30분</td>
					<td colspan="2">-</td>
					<td></td>
				</tr>
				<tr>
					<th rowspan="2" class="bg-sky">심야</th>
					<td class="bg-sky">9교시</td>
					<td class="bg-sky">PM 10:30 ~ 11:40</td>
					<td class="bg-sky">70분</td>
					<td rowspan="2" colspan="3"><span class="ico-txt r">선택자습</span></td>
				</tr>
				<tr>
					<td class="bg-sky">10교시</td>
					<td class="bg-sky">PM 11:50 ~ 01:00</td>
					<td class="bg-sky">70분</td>
				</tr>
			</tbody>
		</table>
		<% End If %>
	</div>
</div>
