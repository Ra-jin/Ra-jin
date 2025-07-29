<div class="layer-pop01 layer">
	<a href="javascript:void(0)" class="bt-close"><img src="<%=Application("img_path_russel")%>/intro/2025/half/bt_close.png" alt="닫기"></a>
	<p class="stit">종합반 수업과 바자관 표준 시간표로 구성한 <strong>종합반 학습 시간표</strong></p>
	<div class="layer-wrap">
		<% If sCampusCode = "CD0349" Then '울산 %>
		<table class="tbl-01 type02">
			<colgroup>
				<col style="width:7%" />
				<col style="width:7%" />
				<col style="width:auto" />
				<col style="width:auto" />
				<col style="width:7%" />
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
					<th colspan="2">구분</th>
					<th>시작시간</th>
					<th>종료시간</th>
					<th>자습시간</th>
					<th>월요일</th>
					<th>화요일</th>
					<th>수요일</th>
					<th>목요일</th>
					<th>금요일</th>
					<th>토요일</th>
					<th>일요일<br>
					(공휴일)</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th rowspan="4" class="bg-th">오전</th>
					<td class="bg-th">0교시</td>
					<td class="bg-th">AM 07:00</td>
					<td class="bg-th">AM 07:50</td>
					<td class="bg-th">50분</td>
					<td colspan="6">선택자습</td>
					<td rowspan="11">선택자습</td>
				</tr>
				<tr>
					<td class="bg-th">1교시</td>
					<td class="bg-th">AM 08:00</td>
					<td class="bg-th">AM 08:40</td>
					<td class="bg-th">40분</td>
					<td colspan="5" class="sub-gr">
						영어 프로그램
					</td>
					<td>선택자습</td>
				</tr>
				<tr>
					<td class="bg-th">2교시</td>
					<td class="bg-th">AM 08:50</td>
					<td class="bg-th">AM 10:10</td>
					<td class="bg-th">80분</td>
					<td rowspan="2" class="sub-or">
						의무자습<br>
						/상담
					</td>
					<td rowspan="2" class="sub-pp">탐구A</td>
					<td rowspan="2" class="sub-bl">수학A</td>
					<td rowspan="2" class="sub-or">
						의무자습<br>
						/상담
					</td>
					<td rowspan="2" class="sub-db">국어 특강<br>
					(선택 수업)</td>
					<td rowspan="2" class="sub-gr">영어<br>
					(선택 수업)</td>
				</tr>
				<tr>
					<td class="bg-th">3교시</td>
					<td class="bg-th">AM 10:30</td>
					<td class="bg-th">PM 12:10</td>
					<td class="bg-th">100분</td>
				</tr>
				<tr>
					<th colspan="2">점심식사</th>
					<th>PM 12:10</th>
					<th>PM 01:10</th>
					<th>60분</th>
					<td colspan="6">-</td>
				</tr>
				<tr>
					<th rowspan="3" class="bg-th">오후</th>
					<td class="bg-th">4교시</td>
					<td class="bg-th">PM 01:10</td>
					<td class="bg-th">PM 02:20</td>
					<td class="bg-th">70분</td>
					<td class="bg-gray" rowspan="3">수리논술<br>
					(선택 수업)</td>
					<td class="sub-pk" rowspan="3">국어</td>
					<td class="sub-or" rowspan="3">의무자습<br>
					/상담</td>
					<td class="sub-dg" rowspan="3">탐구B</td>
					<td class="sub-or" rowspan="3">의무자습<br>
					/상담</td>
					<td class="sub-yl" rowspan="3">수학B</td>
				</tr>
				<tr>
					<td class="bg-th">5교시</td>
					<td class="bg-th">PM 02:40</td>
					<td class="bg-th">PM 04:00</td>
					<td class="bg-th">80분</td>
				</tr>
				<tr>
					<td class="bg-th">6교시</td>
					<td class="bg-th">PM 04:20</td>
					<td class="bg-th">PM 05:30</td>
					<td class="bg-th">70분</td>
				</tr>
				<tr>
					<th colspan="2">저녁식사</th>
					<th>PM 05:30</th>
					<th>PM 06:30</th>
					<th>60분</th>
					<td colspan="6">-</td>
				</tr>
				<tr>
					<th rowspan="2" class="bg-th">저녁</th>
					<td class="bg-th">7교시</td>
					<td class="bg-th">PM 06:30</td>
					<td class="bg-th">PM 08:00</td>
					<td class="bg-th">90분</td>
					<td rowspan="2" colspan="6" class="sub-or">
						의무자습/상담
					</td>
				</tr>
				<tr>
					<td class="bg-th">8교시</td>
					<td class="bg-th">PM 08:20</td>
					<td class="bg-th">PM 09:50</td>
					<td class="bg-th">90분</td>
				</tr>
				<tr>
					<th colspan="2">귀가</th>
					<th>PM 09:50</th>
					<th>PM 10:10</th>
					<th>20분</th>
					<td colspan="7">-</td>
				</tr>
				<tr>
					<th rowspan="2" class="bg-th">심야</th>
					<td class="bg-th">9교시</td>
					<td class="bg-th">PM 10:10</td>
					<td class="bg-th">PM 11:00</td>
					<td class="bg-th">50분</td>
					<td rowspan="2" colspan="6">선택자습</td>
					<td rowspan="2">(이용불가)</td>
				</tr>
				<tr>
					<td class="bg-th">10교시</td>
					<td class="bg-th">PM 11:10</td>
					<td class="bg-th">AM 12:00</td>
					<td class="bg-th">50분</td>
				</tr>
			</tbody>
		</table>
		<p class="r-stxt mt10">* 평일 오전 영어 프로그램은 영단어&듣기TEST로 진행되며 학원별 운영은 상이할 수 있습니다.</p>

		<% ElseIf sCampusCode = "CD0342" Then '대구 %>
		<table class="tbl-01 type02">
			<colgroup>
				<col style="width:7%" />
				<col style="width:7%" />
				<col style="width:auto" />
				<col style="width:auto" />
				<col style="width:7%" />
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
					<th colspan="2">구분</th>
					<th>시작시간</th>
					<th>종료시간</th>
					<th>자습시간</th>
					<th>월요일</th>
					<th>화요일</th>
					<th>수요일</th>
					<th>목요일</th>
					<th>금요일</th>
					<th>토요일</th>
					<th>일요일<br>
					(공휴일)</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th rowspan="4" class="bg-th">오전</th>
					<td>0교시</td>
					<td>AM 07:00</td>
					<td>AM 07:50</td>
					<td>50분</td>
					<td colspan="6">선택자습</td>
					<td rowspan="11">선택자습</td>
				</tr>
				<tr>
					<td>1교시</td>
					<td>AM 08:00</td>
					<td>AM 08:40</td>
					<td>40분</td>
					<td colspan="6" class="bg-gray">
						영어 프로그램
					</td>
				</tr>
				<tr>
					<td>2교시</td>
					<td>AM 08:50</td>
					<td>AM 10:10</td>
					<td>80분</td>
					<td rowspan="2" class="sub-or">의무자습<br>
						/상담</td>
					<td rowspan="2" class="sub-pp">탐구A</td>
					<td rowspan="2" class="sub-bl">수학A</td>
					<td rowspan="2" class="sub-or">
						의무자습<br>
						/상담
					</td>
					<td rowspan="2" class="sub-db">국어 특강<br>
					(선택 수업)</td>
					<td rowspan="2" class="sub-gr">영어<br>
					(선택 수업)</td>
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
					<td colspan="6">-</td>
				</tr>
				<tr>
					<th rowspan="3" class="bg-th">오후</th>
					<td>4교시</td>
					<td>PM 01:10</td>
					<td>PM 02:20</td>
					<td>70분</td>
					<td class="bg-gray" rowspan="3">수리논술<br>
					(선택 수업)</td>
					<td class="sub-pk" rowspan="3">국어</td>
					<td class="sub-or" rowspan="3">의무자습<br>
					/상담</td>
					<td class="sub-dg" rowspan="3">탐구B</td>
					<td class="sub-or" rowspan="3">의무자습<br>
					/상담</td>
					<td class="sub-yl" rowspan="3">수학B</td>
				</tr>
				<tr>
					<td>5교시</td>
					<td>PM 02:40</td>
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
					<td colspan="6">-</td>
				</tr>
				<tr>
					<th rowspan="2" class="bg-th">저녁</th>
					<td>7교시</td>
					<td>PM 06:30</td>
					<td>PM 08:00</td>
					<td>90분</td>
					<td rowspan="2" colspan="6" class="sub-or">
						의무자습/상담
					</td>
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
					<td colspan="7">-</td>
				</tr>
				<tr>
					<th rowspan="2" class="bg-th">심야</th>
					<td>9교시</td>
					<td>PM 10:10</td>
					<td>PM 11:00</td>
					<td>50분</td>
					<td rowspan="2" colspan="6">선택자습</td>
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
		<p class="r-stxt mt10">* 해당 시간표는 예시사항으로 배정된 반에 따라 상이할 수 있습니다.</p>
		<% ElseIf sCampusCode = "CD0249" Then '러셀영통 %>
		<table class="tbl-01 type02">
			<colgroup>
				<col style="width:7%" />
				<col style="width:7%" />
				<col style="width:auto" />
				<col style="width:auto" />
				<col style="width:7%" />
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
					<th colspan="2">구분</th>
					<th>시작시간</th>
					<th>종료시간</th>
					<th>자습시간</th>
					<th>월요일</th>
					<th>화요일</th>
					<th>수요일</th>
					<th>목요일</th>
					<th>금요일</th>
					<th>토요일</th>
					<th>일요일<br>
					(공휴일)</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th rowspan="4" class="bg-th">오전</th>
					<td class="bg-th">1교시</td>
					<td>AM 08:00</td>
					<td>AM 08:30</td>
					<td>30분</td>
					<td colspan="6" class="sub-or">의무자습/상담</td>
					<td rowspan="5">선택자습</td>
				</tr>
				<tr>
					<td class="bg-th">조회</td>
					<td>AM 08:30</td>
					<td>AM 08:40</td>
					<td>10분</td>
					<td colspan="6"></td>
				</tr>
				<tr>
					<td class="bg-th">2교시</td>
					<td>AM 08:50</td>
					<td>AM 10:10</td>
					<td>80분</td>
					<td rowspan="2" class="sub-or">
						의무자습<br>
						/상담
					</td>
					<td rowspan="2" class="sub-pp">국어/<br>
						영어<br>
						or<br>
						의무자습</td>
					<td rowspan="2" class="sub-bl">수학<br>
						or<br>
						의무자습</td>
					<td rowspan="2" class="sub-pp">국어/<br>
						영어<br>
						or<br>
						의무자습
					</td>
					<td rowspan="2" class="sub-or">의무자습<br>
						/상담</td>
					<td rowspan="2" class="sub-gr">생윤<br>
					(선택 수업)</td>
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
					<td colspan="6">-</td>
				</tr>
				<tr>
					<th rowspan="3" class="bg-th">오후</th>
					<td class="bg-th">4교시</td>
					<td>PM 01:10</td>
					<td>PM 02:20</td>
					<td>70분</td>
					<td class="bg-gray" rowspan="3">지구과학Ⅰ<br>
						or<br>
						의무자습</td>
					<td class="sub-pk" rowspan="3">물리학Ⅰ<br>
						or<br>
						의무자습</td>
					<td class="sub-or" rowspan="3">화학Ⅰ<br>
						or<br>
						의무자습</td>
					<td class="sub-dg" rowspan="3">생명과학Ⅰ<br>
						or<br>
						의무자습</td>
					<td class="sub-bl" rowspan="3">수학<br>
						or<br>
						의무자습</td>
					<td class="sub-or" rowspan="3">의무자습<br>
						/상담</td>
					<td class="sub-gr" rowspan="3">생윤<br>
						(선택 수업)</td>
				</tr>
				<tr>
					<td class="bg-th">5교시</td>
					<td>PM 02:40</td>
					<td>PM 04:00</td>
					<td>80분</td>
				</tr>
				<tr>
					<td class="bg-th">6교시</td>
					<td>PM 04:30</td>
					<td>PM 05:30</td>
					<td>60분</td>
				</tr>
				<tr>
					<th colspan="2">저녁식사</th>
					<td>PM 05:30</td>
					<td>PM 06:40</td>
					<td>70분</td>
					<td colspan="6">-</td>
					<td rowspan="3">선택자습</td>
				</tr>
				<tr>
					<th rowspan="2" class="bg-th">저녁</th>
					<td class="bg-th">7교시</td>
					<td>PM 06:40</td>
					<td>PM 08:10</td>
					<td>90분</td>
					<td class="sub-bl" rowspan="2">수학<br>
						(선택 수업)</td>
					<td class="sub-pp" rowspan="2">정법/<br>
						윤사<br>
						(선택 수업)</td>
					<td class="sub-bl" rowspan="2">수학/<br>
						인문논술<br>
						(선택 수업)</td>
					<td class="sub-gg" rowspan="2">사문<br>
						(선택 수업)</td>
					<td class="sub-yl" rowspan="2">수리논술<br>
						(선택 수업)</td>
					<td class="sub-gg" rowspan="2">사문<br>
						(선택 수업)</td>
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
					<td>PM 10:10</td>
					<td>10분</td>
					<td colspan="7">-</td>
				</tr>
				<tr>
					<th rowspan="2" class="bg-th">심야</th>
					<td class="bg-th">9교시</td>
					<td>PM 10:10</td>
					<td>PM 11:00</td>
					<td>50분</td>
					<td rowspan="2" colspan="6">선택자습</td>
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
		<% ElseIf sCampusCode = "CD0340" Then '러셀CORE 광주 %>
		<table class="tbl-01 type02">
			<colgroup>
				<col style="width:7%" />
				<col style="width:7%" />
				<col style="width:auto" />
				<col style="width:auto" />
				<col style="width:7%" />
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
					<th colspan="2">구분</th>
					<th>시작시간</th>
					<th>종료시간</th>
					<th>자습시간</th>
					<th>월요일</th>
					<th>화요일</th>
					<th>수요일</th>
					<th>목요일</th>
					<th>금요일</th>
					<th>토요일</th>
					<th>일요일<br>
					(공휴일)</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th rowspan="4" class="bg-th">오전</th>
					<td>0교시</td>
					<td>AM 07:00</td>
					<td>AM 07:50</td>
					<td>50분</td>
					<td colspan="6">선택자습</td>
					<td rowspan="11">선택자습</td>
				</tr>
				<tr>
					<td>1교시</td>
					<td>AM 08:00</td>
					<td>AM 08:40</td>
					<td>40분</td>
					<td class="bg-gray" colspan="6">의무자습/상담</td>
				</tr>
				<tr>
					<td>2교시</td>
					<td>AM 08:50</td>
					<td>AM 10:10</td>
					<td>80분</td>
					<td rowspan="2" class="sub-or">
						의무자습<br>
						/상담
					</td>
					<td rowspan="2" class="sub-pp">탐구A</td>
					<td rowspan="2" class="sub-bl">수학A</td>
					<td rowspan="2" class="sub-or">의무자습<br>
						/상담</td>
					<td rowspan="2" class="sub-gg">국어 특강<br>
						(선택 수업)
					</td>
					<td rowspan="2" class="sub-gr">영어<br>
						(선택 수업)</td>
				</tr>
				<tr>
					<td>3교시</td>
					<td>AM 10:30</td>
					<td>PM 12:10</td>
					<td>100분</td>
				</tr>
				<tr>
					<th class="bg-th" colspan="2">점심식사</th>
					<td>PM 12:10</td>
					<td>PM 01:10</td>
					<td>60분</td>
					<td colspan="6">-</td>
				</tr>
				<tr>
					<th rowspan="3" class="bg-th">오후</th>
					<td>4교시</td>
					<td>PM 01:10</td>
					<td>PM 02:20</td>
					<td>70분</td>
					<td class="bg-gray" rowspan="3">수리논술<br>
						(선택 수업)</td>
					<td class="sub-pk" rowspan="3">국어</td>
					<td class="sub-or" rowspan="3">의무자습<br>
						/상담</td>
					<td class="sub-dg" rowspan="3">탐구B</td>
					<td class="sub-or" rowspan="3">의무자습<br>
						/상담</td>
					<td class="sub-yl" rowspan="3">수학B</td>
				</tr>
				<tr>
					<td>5교시</td>
					<td>PM 02:40</td>
					<td>PM 04:00</td>
					<td>80분</td>
				</tr>
				<tr>
					<td>6교시</td>
					<td>PM 04:20</td>
					<td>PM 05:30</td>
					<td>60분</td>
				</tr>
				<tr>
					<th class="bg-th" colspan="2">저녁식사</th>
					<td>PM 05:30</td>
					<td>PM 06:40</td>
					<td>70분</td>
					<td colspan="6">-</td>
				</tr>
				<tr>
					<th rowspan="2" class="bg-th">저녁</th>
					<td>7교시</td>
					<td>PM 06:40</td>
					<td>PM 08:10</td>
					<td>90분</td>
					<td class="sub-or" colspan="6" rowspan="2">의무자습/상담</td>
				</tr>
				<tr>
					<td>8교시</td>
					<td>PM 08:30</td>
					<td>PM 10:00</td>
					<td>90분</td>
				</tr>
				<tr>
					<th class="bg-th" colspan="2">귀가</th>
					<td>PM 10:00</td>
					<td>PM 10:30</td>
					<td>30분</td>
					<td colspan="7">-</td>
				</tr>
				<tr>
					<th rowspan="2" class="bg-th">심야</th>
					<td>9교시</td>
					<td>PM 10:30</td>
					<td>PM 11:40</td>
					<td>70분</td>
					<td rowspan="2" colspan="6">선택자습</td>
					<td rowspan="2">(이용불가)</td>
				</tr>
				<tr>
					<td>10교시</td>
					<td>PM 11:50</td>
					<td>AM 01:00</td>
					<td>70분</td>
				</tr>
			</tbody>
		</table>
		<p class="r-stxt mt10">* 해당 시간표는 예시사항으로 배정된 반에 따라 상이할 수 있습니다.</p>
		<% End If %>
	</div>
</div>