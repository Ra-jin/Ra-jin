
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tit01 = "모집 대상"
tit02 = "수업 기간"
tit03 = "접수 기간"
tit04 = "접수 방법"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	' method.asp 인클루드 안한 페이지에서 오류날 수 있지만, 안쓰는 페이지가 없을거라 가정

	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
					campusName = "core_gj"

					txt01 = "현 고1, 고2"
					txt02 = "11/24(금) ~ 12/23(토)"
					txt03 = "10/12(목)부터 접수 시작"
					txt04 = "온라인 접수 / 현장 접수<a class='bt-apply' href='https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=161'>원서접수 바로가기</a>"
					call_num = "전화 문의<br>062) 462-1010"

					date01 ="23년 12월"
					date02 ="23년 12월말 ~ (9주)"
					date03 ="24년 3월 ~ 24년 11월"

					grade = "고1~고2"

					tbl_tit ="고1/고2"
					bubble01_width = "295px"
					bubble01_height = "140px"
					bubble01_top = "60px"
					bubble01_left = "433px"
					
					bubble02_width = "298px"
					bubble02_height = "120px"
					bubble02_top = "347px"
					bubble02_left = "590px"

					bubble01_txt = "수능 시간표와 동일한 <br> 바자관 시간표로 <strong>수능 리듬에 <br> 익숙해질 수 있습니다.</strong>"
					bubble02_txt = "<strong>충분한 자습시간 확보와 <br> 담임선생님의 밀착 케어 시간!</strong>"



	Case "CD0341": txtCampus = "러셀CORE 대전"   '코어대전
					campusName = "core_dj"

					txt01 = "현 고1, 고2"
					txt02 = "11/27(월) ~ 12/29(금)"
					txt03 = "10/12(목)부터 접수 시작"
					txt04 = "온라인 접수 / 현장 접수<a class='bt-apply' href='https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=161'>원서접수 바로가기</a>"
					call_num = "전화 문의<br>042) 381-2020"
					date01 ="23년 12월"
					date02 ="24년 1월 ~ (8주)"
					date03 ="24년 3월 ~ 24년 11월"

					grade = "고1~고2"
					tbl_tit ="고1/고2 시간표"
					bubble01_width = "295px"
					bubble01_height = "140px"
					bubble01_top = "60px"
					bubble01_left = "433px"
					
					bubble02_width = "298px"
					bubble02_height = "120px"
					bubble02_top = "295px"
					bubble02_left = "597px"

					bubble01_txt = "수능 시간표와 동일한 <br> 바자관 시간표로 <strong>수능 리듬에 <br> 익숙해질 수 있습니다.</strong>"
					bubble02_txt = "<strong>충분한 자습시간 확보와 <br> 담임선생님의 밀착 케어 시간!</strong>"



	Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
					campusName = "core_wj"
					txt01 = "현 중3"
					txt02 = "12/1(금) ~ 12/31(일)"
					txt03 = "10/12(목)부터 접수 시작"
					txt04 = "온라인 접수 / 현장 접수<a class='bt-apply' href='https://corewj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=161'>원서접수 바로가기</a>"
					call_num = "전화 문의<br>033) 901-2020"
					date01 ="23년 12월"
					date02 ="24년 1월 ~ (8주)"
					date03 ="24년 3월 ~ 24년 11월"

					grade = "중3"
					tbl_tit ="중3 시간표"
					bubble01_width = "295px"
					bubble01_height = "140px"
					bubble01_top = "70px"
					bubble01_left = "465px"
					
					bubble02_width = "298px"
					bubble02_height = "120px"
					bubble02_top = "732px"
					bubble02_left = "800px"
					

					bubble01_txt = "수능 시간표와 동일한 <br> 바자관 시간표로 <strong>수능 리듬에 <br> 익숙해질 수 있습니다.</strong>"
					bubble02_txt = "<strong>수학 개념 수업 진행으로 <br> 탄탄한 기본기 확립!</strong>"




	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
					campusName = "core_jj"
					txt01 = "현 중3, 고1, 고2"
					txt02 = "12/1(금) ~ 12/29(금)"
					txt03 = "10/12(목)부터 접수 시작"
					txt04 = "온라인 접수 / 현장 접수<a class='bt-apply' href='https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=161'>원서접수 바로가기</a>"
					call_num = "전화 문의<br>063) 905-3030"
					date01 ="23년 11월 ~ (6주)"
					date02 ="24년 1월 ~ (8주)"
					date03 ="24년 3월 ~ 24년 11월"

					grade = "중3~고2"
					tbl_tit =""

					bubble01_width = "295px"
					bubble01_height = "140px"
					bubble01_top = "-5px"
					bubble01_left = "374px"
					
					bubble02_width = "298px"
					bubble02_height = "120px"
					bubble02_top = "190px"
					bubble02_left = "547px"

					bubble03_width = "295px"
					bubble03_height = "140px"
					bubble03_top = "-14px"
					bubble03_left = "375px"

					bubble04_width = "298px"
					bubble04_height = "120px"
					bubble04_top = "227px"
					bubble04_left = "681px"

	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
					campusName = "core_cw"
					txt01 = "현 중3, 고1, 고2"
					txt02 = "11/20(월) ~ 12/31(일)"
					txt03 = "10/12(목)부터 접수 시작"
					txt04 = "온라인 접수 / 현장 접수<a class='bt-apply' href='https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=161'>원서접수 바로가기</a>"
					call_num = "전화 문의<br>055) 605-1010"
					date01 ="23년 11월 20일 ~"
					date02 ="23년 12월 29일 ~ (8주)"
					date03 ="24년 3월 ~ 24년 11월"
					
					grade = "중3~고2"
					tbl_tit =""

					bubble01_width = "295px"
					bubble01_height = "140px"
					bubble01_top = "-5px"
					bubble01_left = "374px"
					
					bubble02_width = "298px"
					bubble02_height = "120px"
					bubble02_top = "246px"
					bubble02_left = "547px"
					
					bubble03_width = "295px"
					bubble03_height = "140px"
					bubble03_top = "-14px"
					bubble03_left = "375px"

					bubble04_width = "298px"
					bubble04_height = "120px"
					bubble04_top = "200px"
					bubble04_left = "554px"

	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
					campusName = "core_cj"
					txt01 = "현 중3, 고1, 고2"
					txt02 = "12/1(금) ~ 12/29(금)"
					txt03 = "10/12(목)부터 접수 시작"
					txt04 = "온라인 접수 / 현장 접수<a class='bt-apply' href='https://corecj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=161'>원서접수 바로가기</a>"
					call_num = "전화 문의<br>043) 908-1010"
					date01 ="23년 12월"
					date02 ="24년 1월 ~ (8주)"
					date03 ="24년 3월 ~ 24년 11월"

					grade = "중3~고2"
					tbl_tit =""

					bubble01_width = "295px"
					bubble01_height = "140px"
					bubble01_top = "-5px"
					bubble01_left = "374px"
					
					bubble02_width = "298px"
					bubble02_height = "120px"
					bubble02_top = "246px"
					bubble02_left = "547px"
					
					bubble03_width = "295px"
					bubble03_height = "140px"
					bubble03_top = "-14px"
					bubble03_left = "375px"

					bubble04_width = "298px"
					bubble04_height = "120px"
					bubble04_top = "142px"
					bubble04_left = "554px"


	'Case "CD0258": txtDate = "기숙"
	'Case "CD0331": r_title = "삽자루 수학학원"
End Select
%>

<div class="visual-area">
	<div class="bg"></div>
	<div class="visual-wrap">
		<p class="v-tit tit01"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/v-tit01.png" alt="러셀CORE학원명" /></p>
		<p class="v-tit tit02"><img src="<%=Application("img_path_russel")%>/core/pre_winter/v-tit02.png" alt="프리윈터스쿨" /></p>
		<div class="cal-wrap">
			<p class="v-img img01"><img src="<%=Application("img_path_russel")%>/core/pre_winter/calendar.png" alt="캘린더" /></p>
			<p class="v-img img02"><img src="<%=Application("img_path_russel")%>/core/pre_winter/december.png" alt="12월" /></p>
		</div>
		<p class="v-img img03"><img src="<%=Application("img_path_russel")%>/core/pre_winter/lighting.png" alt="빛나는 효과" /></p>
		<p class="v-txt">
			최상위권 전문 입시 담임선생님의 관리와 <br>
			수능과 동일한 시간표로 규칙적인 학습 생활을 경험하세요. <br>
			지금, <b>생활패턴이 안정되어야 공부에 몰입</b>할 수 있습니다.
		</p>
		<div class="v-info">
			<div class="line line01">
				<dl>
					<dt><%=tit01%></dt>
					<dd><%=txt01%></dd>
				</dl>
				<dl>
					<dt><%=tit02%></dt>
					<dd><%=txt02%></dd>
				</dl>
			</div>
			<div class="line line02">
				<dl>
					<dt><%=tit03%></dt>
					<dd><%=txt03%></dd>
				</dl>
				<dl>
					<dt><%=tit04%></dt>
					<dd><%=txt04%></dd>
				</dl>
			</div>
		</div>	
	</div>

	<!--마감딱지-->
	<!-- <div class="ico-end" style="top: 640px;right:calc(50% - 390px);"><div><%=icoEnd%></div></div> -->
	<!--//마감딱지-->

	<!-- quick배너 -->
	<div class="quick">
		<p class="b-tit">상담 안내</p>
		<a class="q-ban" href="/russel/info/qna/qna.asp">
			온라인 문의
		</a>
		<a class="q-ban fin" href="javascript:void(0);">
			<%=call_num%>
		</a>
		<a href="/intro/2023/winter/index.asp" class="mt25"><img src="<%=Application("img_path_russel")%>/core/pre_winter/quick_winter.png" alt="윈터스쿨" /></a>
	</div>
	<!--// quick배너 -->
	<div class="bg-back"></div>
</div>
