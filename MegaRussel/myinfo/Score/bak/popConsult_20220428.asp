<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<%
	sTry_CD          = fncRequest("try_cd")
	sIsTec 			 = GetLoginCookie("isTec")
	sNow			 = FormatDateTime(Now, 2) & " " & FormatDateTime(Now, 4)
%>
<html lang="ko">
<head>
	<meta charset="euc-kr" />
	<title>상담정보 - 성적조회시스템</title>
	<!-- #include virtual = "/include/head.asp" -->
	<script>
		function filedown(path, name) {
			var agent = navigator.userAgent.toLowerCase();
			if ( (navigator.appName == 'Netscape' && agent.indexOf('trident') != -1) || (agent.indexOf("msie") != -1)) {
				// ie일 경우
				var xhr = new XMLHttpRequest();
				xhr.onloadstart = function () {
					xhr.responseType = 'blob';
				};
				xhr.onload = function () {
					navigator.msSaveOrOpenBlob(xhr.response, name);
				};
				xhr.open("GET", path, true);
				xhr.send();
			}else{
				// ie가 아닐 경우
				var link = document.createElement('a');
				link.href = path;
				link.download = name;
				runSource.document.body.appendChild(link);
				link.click();
				runSource.document.body.removeChild(link);
			}
		}

		function fileupload(mode, field_nm) {
			form1.mod.value = mode; 
			form1.field_nm.value = field_nm;
			form1.submit();
		}

		function filedelete(mode, field_nm) {
			form1.mod.value = mode; 
			form1.field_nm.value = field_nm;
			form1.submit();
		}

		function saveTecAnswer(objButton) {
			var curNode = $(objButton).parents('.tecanswer');

			form1.tec_answer_idx.value = $(objButton).parents('.tecanswer').find('[name=areaTecAnswerIdx]').val()
			form1.tec_answer_title.value = curNode.find('[name=areaTecAnswerTitle]').val();
			form1.tec_answer.value = curNode.find('[name=areaTecAnswer]').val();
			form1.tec_answer_retdt.value = curNode.find('[name=areaTecAnswerRegDt]').val();
			form1.mod.value='tec_answer';
			form1.submit();
		}

		function addTecAnswerArea(objButton) {
			var sNow = '<%=sNow%>';
			var newNode = $(objButton).parents('.tecanswer').clone();
			newNode.find('[name=areaTecAnswerIdx]').val('');
			newNode.find('[name=areaTecAnswerTitle]').val('');
			newNode.find('[name=areaTecAnswerRegDt]').val(sNow);
			newNode.find('[name=areaTecAnswer]').val('');
			$(objButton).remove();
			$('.tecanswer-wrap').append(newNode);
			autosize($('textarea'));
		}

		function removeTecAnswerArea(objButton) {
			if ($(objButton).parents('.tecanswer').find('[name=areaTecAnswerIdx]').val() == "") {
				if ($('.tecanswer').length > 1) {
					if ($(objButton).prev().length == 1) {
						$(objButton).parents('.tecanswer').prev().children('.addBtn-wrap-fr').prepend($(objButton).prev());
					}
					$(objButton).parents('.tecanswer').remove();
				}
			} else {
				if (confirm("상담내용이 함께 삭제됩니다.\n삭제하시겠습니까?")) {
					form1.tec_answer_idx.value = $(objButton).parents('.tecanswer').find('[name=areaTecAnswerIdx]').val()
					form1.mod.value = 'tec_answer_del'; 
					form1.submit();
				}
			}
		}
	</script>
	<script src="../js/autosize.min.js"></script>
</head>
<body>
<div class="wrap">
	<header class="pop-header no-fix">
		<h2>상담정보</h2>
		<a href="javascript:fnc_pop();" class="score-top-btn">전체시험정보</a>
		<a href="javascript:void(0)" onclick="window.print();" class="top-print"><img src="<%=Application("img_path_russel")%>/myinfo/common/icon_print.png" alt=""></a>
		<span class="btn-close" onclick="window.close();">x</span>
	</header>

	<section class="popup-content">
		<div class="content-in">
			<div class="title-box">
				<h3 class="title">시험 정보</h3>
				<p class="txt-al-r">※ (▲)는 직전시험 기준으로 노출</p>
			</div>
			<div class="tb-type1">
				<table summary="이 표는 시험정보를 제공하며 시험일자, 시험명, 수험번호, 이름, 원점수총합, 표준점수총합, 백분위총합으로 구성되어있습니다." class="mo-table consult-info">
					<caption>시험 정보</caption>
					<colgroup>
						<col style="width:35%;">
						<col style="width:*;">
						<col style="width:*;">
						<col style="width:*;">
						<col style="width:*;">
						<col style="width:*;">
						<col style="width:*;">
						<col style="width:*;">
						<col style="width:*;">
						<col style="width:*;">
					</colgroup>
					<thead>
						<tr>
							<th>시험일자</th>
							<th class="bg-b">원점수</th>
							<th class="bg-b">백분위</th>
							<th class="bg-b">등급평균</th>
							<th class="bg-b">국어</th>
							<th class="bg-b">수학</th>
							<th class="bg-b">영어</th>
							<th class="bg-b">한국사</th>
							<th class="bg-b">탐구1</th>
							<th class="bg-b">탐구2</th>
						</tr>
					</thead>
					<tbody><%
						strSQL = ""
						strSQL = strSQL & " SELECT		TOP 2 A.TM_TRY_NM, B.TOTAL_OPT, B.TOTAL_PPT, B.AVG_GPT, A.MS_LANG_OPT, A.MS_MATH_OPT, A.MS_ENG_OPT, A.MS_SEL3_OPT, A.MS_SEL1_OPT, A.MS_SEL2_OPT "
						strSQL = strSQL & " FROM		( "
						strSQL = strSQL & " 				SELECT		A.TM_TRY_CD, A.TM_TRY_NM, A.TM_REG_DT, B.MS_MEM_CD, B.MS_LANG_OPT, B.MS_MATH_OPT, B.MS_ENG_OPT, MS_SEL3_OPT, MS_SEL1_OPT, MS_SEL2_OPT "
						strSQL = strSQL & " 				FROM		AMS_TRY_MAS A (NOLOCK) "
						strSQL = strSQL & " 				INNER JOIN	AMS_MEM_SCORE B (NOLOCK) ON A.TM_TRY_CD = B.MS_TRY_CD "
						strSQL = strSQL & " 				WHERE		YEAR(TM_REG_DT) = YEAR(GETDATE()) "
						strSQL = strSQL & " 			) A "
						strSQL = strSQL & " LEFT JOIN	( "
						strSQL = strSQL & " 				SELECT		MS_TRY_CD, MS_MEM_CD "
						strSQL = strSQL & " 							, SUM(ISNULL(MS_LANG_OPT, 0) + ISNULL(MS_MATH_OPT, 0) + ISNULL(MS_SEL1_OPT, 0) + ISNULL(MS_SEL2_OPT, 0)) AS TOTAL_OPT  "
						strSQL = strSQL & " 							, SUM(ISNULL(MS_LANG_SPT, 0) + ISNULL(MS_MATH_SPT, 0) + ISNULL(MS_SEL1_SPT, 0) + ISNULL(MS_SEL2_SPT, 0)) AS TOTAL_SPT "
						strSQL = strSQL & " 							, SUM(ISNULL(MS_LANG_PPT, 0) + ISNULL(MS_MATH_PPT, 0) + ISNULL(MS_SEL1_PPT, 0) + ISNULL(MS_SEL2_PPT, 0)) AS TOTAL_PPT "
						strSQL = strSQL & " 							, SUM(ISNULL(MS_LANG_GPT, 0) + ISNULL(MS_MATH_GPT, 0) + ISNULL(MS_SEL1_GPT, 0) + ISNULL(MS_SEL2_GPT, 0)) / 4 AS AVG_GPT "
						strSQL = strSQL & " 				FROM		AMS_MEM_SCORE "
						strSQL = strSQL & " 				GROUP BY	MS_TRY_CD, MS_MEM_CD "
						strSQL = strSQL & " 			) B ON A.TM_TRY_CD = B.MS_TRY_CD AND A.MS_MEM_CD = B.MS_MEM_CD "
						strSQL = strSQL & " WHERE		A.MS_MEM_CD = '" & nRmsMemCd & "' "
						strSQL = strSQL & " AND			A.TM_REG_DT <= (SELECT TM_REG_DT FROM AMS_TRY_MAS (NOLOCK) WHERE TM_TRY_CD = '" & sTry_CD & "') "
						strSQL = strSQL & " ORDER BY	A.TM_REG_DT DESC, A.TM_TRY_CD DESC "

						Set RS = amsobjdb.sqlQuery(strSQL,3)

						If RS.EOF <> True Then
							DO WHILE NOT RS.EOF %>
								<tr>
									<td data-label="시험일자"><%=RS("TM_TRY_NM")%></td>
									<td data-label="원점수"><%=RS("TOTAL_OPT")%></td>
									<td data-label="백분위"><%=RS("TOTAL_PPT")%></td>
									<td data-label="등급평균"><%=RS("AVG_GPT")%></td>
									<td data-label="국어"><%=RS("MS_LANG_OPT")%></td>
									<td data-label="수학"><%=RS("MS_MATH_OPT")%></td>
									<td data-label="영어"><%=RS("MS_ENG_OPT")%></td>
									<td data-label="한국사"><%=RS("MS_SEL3_OPT")%></td>
									<td data-label="탐구1"><%=RS("MS_SEL1_OPT")%></td>
									<td data-label="탐구2"><%=RS("MS_SEL2_OPT")%></td>
									<!--(<span class="fc-b">▲12</span>)
									(<span class="fc-r">▼0.1</span>)
									(<span class="fc-b">-</span>)-->
								</tr>
								<% RS.MoveNext
							LOOP
						ELSE %>
							<tr>
								<td colspan="10">시험 정보가 없습니다.</td>
							</tr><%
						END IF

						RS.close
						Set RS = Nothing %>
					</tbody>
				</table>
			</div>
			<div class="title-box mt30">
				<h3 class="title">성적비교 - 국수탐(2)</h3>
				<p class="txt-al-r">※ 백분위 총합, <span>전국</span> 기준</p>
			</div>

			<div class="tb-type1 box-horizon">
				<div class="in-horizon">
					<table summary="이 표는 성적비교 제공하며 과목, 내성적, 학원평균, 상위30%점수, 상위20%점수, 상위10%점수, 정오표로 구성되어있습니다.">
						<caption>성적비교 정보</caption>
						<colgroup>
							<col style="width:5%;">
							<col style="width:5%;">
							<col style="width:5%;">
							<col style="width:5%;">
							<col style="width:5%;">
							<col style="width:5%;">
							<col style="width:5%;">
						</colgroup>
						<thead>
							<tr>
								<th>과목</th>
								<th class="bg-b">내성적</th>
								<th>학원평균</th>
								<th>상위 30%<br>(cut 점수)</th>
								<th>상위 20%<br>(cut 점수)</th>
								<th>상위 10%<br>(cut 점수)</th>
								<th>정오표</th>
							</tr>
						</thead>
						<tbody><%
							strSQL = ""
							strSQL = strSQL & " SELECT		ISNULL(A.MS_LANG_PPT, 0) AS MS_LANG_PPT, ISNULL(A.MS_MATH_PPT, 0) AS MS_MATH_PPT, ISNULL(A.MS_SEL1_PPT, 0) AS MS_SEL1_PPT, ISNULL(A.MS_SEL2_PPT, 0) AS MS_SEL2_PPT "
							strSQL = strSQL & " 			, ROUND(B.AVG_LANG_PPT,0) AS AVG_LANG_PPT, ROUND(B.AVG_MATH_PPT,0) AS AVG_MATH_PPT, ROUND(B.AVG_SEL1_PPT,0) AS AVG_SEL1_PPT, ROUND(B.AVG_SEL2_PPT, 0) AS AVG_SEL2_PPT "
							strSQL = strSQL & " 			, ISNULL(C.TS_LANG_CUT30, 0) AS TS_LANG_CUT30, ISNULL(C.TS_MATH_CUT30, 0) AS TS_MATH_CUT30, ISNULL(C.TS_SEL1_CUT30, 0) AS TS_SEL1_CUT30, ISNULL(C.TS_SEL2_CUT30, 0) AS TS_SEL2_CUT30 "
							strSQL = strSQL & " 			, ISNULL(C.TS_LANG_CUT20, 0) AS TS_LANG_CUT20, ISNULL(C.TS_MATH_CUT20, 0) AS TS_MATH_CUT20, ISNULL(C.TS_SEL1_CUT20, 0) AS TS_SEL1_CUT20, ISNULL(C.TS_SEL2_CUT20, 0) AS TS_SEL2_CUT20 "
							strSQL = strSQL & " 			, ISNULL(C.TS_LANG_CUT10, 0) AS TS_LANG_CUT10, ISNULL(C.TS_MATH_CUT10, 0) AS TS_MATH_CUT10, ISNULL(C.TS_SEL1_CUT10, 0) AS TS_SEL1_CUT10, ISNULL(C.TS_SEL2_CUT10, 0) AS TS_SEL2_CUT10 "
							strSQL = strSQL & " 			, MS_LANG_CD, MS_MATH_CD, MS_SEL1_CD, MS_SEL2_CD "
							strSQL = strSQL & " 			, dbo.UF_GET_COM_DTL(111,MS_SEL1_CD) AS MS_SEL1_NM "
							strSQL = strSQL & " 			, dbo.UF_GET_COM_DTL(111,MS_SEL2_CD) AS MS_SEL2_NM "
							strSQL = strSQL & " 			, (SELECT COUNT(*) FROM AMS_TRY_ANSWER (NOLOCK) WHERE TA_TRY_CD = A.MS_TRY_CD AND TA_MEM_CD = A.MS_MEM_CD AND TA_SUBJ_CD = MS_LANG_CD) AS LANG_ANSWER_CNT "
							strSQL = strSQL & " 			, (SELECT COUNT(*) FROM AMS_TRY_ANSWER (NOLOCK) WHERE TA_TRY_CD = A.MS_TRY_CD AND TA_MEM_CD = A.MS_MEM_CD AND TA_SUBJ_CD = MS_MATH_CD) AS MATH_ANSWER_CNT "
							strSQL = strSQL & " 			, (SELECT COUNT(*) FROM AMS_TRY_ANSWER (NOLOCK) WHERE TA_TRY_CD = A.MS_TRY_CD AND TA_MEM_CD = A.MS_MEM_CD AND TA_SUBJ_CD = MS_SEL1_CD) AS SEL1_ANSWER_CNT "
							strSQL = strSQL & " 			, (SELECT COUNT(*) FROM AMS_TRY_ANSWER (NOLOCK) WHERE TA_TRY_CD = A.MS_TRY_CD AND TA_MEM_CD = A.MS_MEM_CD AND TA_SUBJ_CD = MS_SEL2_CD) AS SEL2_ANSWER_CNT "
							strSQL = strSQL & " 			, replace(replace(REPLACE(CONVERT(VARCHAR(MAX), C.TS_EXAM_TREND), CHAR(13)+char(10), '<br/>'), char(10)+CHAR(13), '<br/>'), ' ', '&nbsp;') AS TS_EXAM_TREND "
							strSQL = strSQL & " 			, TC_STU_QUESTION "
							strSQL = strSQL & " 			, TS_TEC_FILE1_NM, TS_TEC_FILE1_PATH, TS_TEC_FILE2_NM, TS_TEC_FILE2_PATH, TS_TEC_FILE3_NM, TS_TEC_FILE3_PATH "
							strSQL = strSQL & " FROM		AMS_MEM_SCORE A (NOLOCK) "
							strSQL = strSQL & " LEFT JOIN	(SELECT MS_TRY_CD, AVG(MS_LANG_PPT) AS AVG_LANG_PPT, AVG(MS_MATH_PPT) AS AVG_MATH_PPT, AVG(MS_SEL1_PPT) AS AVG_SEL1_PPT, AVG(MS_SEL2_PPT) AS AVG_SEL2_PPT FROM AMS_MEM_SCORE (NOLOCK) GROUP BY MS_TRY_CD) B ON A.MS_TRY_CD = B.MS_TRY_CD "
							strSQL = strSQL & " LEFT JOIN	AMS_TRY_SUMMARY C (NOLOCK) ON A.MS_TRY_CD = C.TS_TRY_CD "
							strSQL = strSQL & " LEFT JOIN	AMS_TRY_CONSULT D (NOLOCK) ON A.MS_TRY_CD = D.TC_TRY_CD AND A.MS_MEM_CD = D.TC_MEM_CD "
							strSQL = strSQL & " WHERE		A.MS_TRY_CD = '" & sTry_CD & "' "
							strSQL = strSQL & " AND			A.MS_MEM_CD = '" & nRmsMemCd & "' "

							Set RS = amsobjdb.sqlQuery(strSQL,3)

							if RS.BOF OR RS.EOF then %>
								<tr>
									<td colspan="7">성적 데이터 없음</td>
								</tr><% 
							else 
								MY_LANG_PPT = RS("MS_LANG_PPT")
								MY_MATH_PPT = RS("MS_MATH_PPT")
								MY_SEL1_PPT = RS("MS_SEL1_PPT")
								MY_SEL2_PPT = RS("MS_SEL2_PPT")
								MY_TOTAL_PPT = cint(MY_LANG_PPT) + cint(MY_MATH_PPT) + cint(MY_SEL1_PPT) + cint(MY_SEL2_PPT)

								ACA_AVG_LANG_PPT = RS("AVG_LANG_PPT")
								ACA_AVG_MATH_PPT = RS("AVG_MATH_PPT")
								ACA_AVG_SEL1_PPT = RS("AVG_SEL1_PPT")
								ACA_AVG_SEL2_PPT = RS("AVG_SEL2_PPT")
								ACA_AVG_TOTAL_PPT = cint(ACA_AVG_LANG_PPT) + cint(ACA_AVG_MATH_PPT) + cint(ACA_AVG_SEL1_PPT) + cint(ACA_AVG_SEL2_PPT)

								LANG_CUT30 = RS("TS_LANG_CUT30")
								MATH_CUT30 = RS("TS_MATH_CUT30")
								SEL1_CUT30 = RS("TS_SEL1_CUT30")
								SEL2_CUT30 = RS("TS_SEL2_CUT30")
								TOTAL_CUT30 = cint(LANG_CUT30) + cint(MATH_CUT30) + cint(SEL1_CUT30) + cint(SEL2_CUT30)

								LANG_CUT20 = RS("TS_LANG_CUT20")
								MATH_CUT20 = RS("TS_MATH_CUT20")
								SEL1_CUT20 = RS("TS_SEL1_CUT20")
								SEL2_CUT20 = RS("TS_SEL2_CUT20")
								TOTAL_CUT20 = cint(LANG_CUT20) + cint(MATH_CUT20) + cint(SEL1_CUT20) + cint(SEL2_CUT20)

								LANG_CUT10 = RS("TS_LANG_CUT10")
								MATH_CUT10 = RS("TS_MATH_CUT10")
								SEL1_CUT10 = RS("TS_SEL1_CUT10")
								SEL2_CUT10 = RS("TS_SEL2_CUT10")
								TOTAL_CUT10 = cint(LANG_CUT10) + cint(MATH_CUT10) + cint(SEL1_CUT10) + cint(SEL2_CUT10)

								LANG_SUBJ_CD		= RS("MS_LANG_CD")
								MATH_SUBJ_CD		= RS("MS_MATH_CD")
								SEL1_SUBJ_CD		= RS("MS_SEL1_CD")
								SEL2_SUBJ_CD		= RS("MS_SEL2_CD")
								
								SEL1_SUBJ_NM		= RS("MS_SEL1_NM")
								SEL2_SUBJ_NM		= RS("MS_SEL2_NM")

								LANG_ANSWER_CNT		= RS("LANG_ANSWER_CNT")
								MATH_ANSWER_CNT		= RS("MATH_ANSWER_CNT")
								SEL1_ANSWER_CNT			= RS("SEL1_ANSWER_CNT")
								SEL2_ANSWER_CNT			= RS("SEL2_ANSWER_CNT")

								EXAM_TREND = RS("TS_EXAM_TREND")
								STU_QUESTION = RS("TC_STU_QUESTION")

								TEC_FILE1_NM = RS("TS_TEC_FILE1_NM")
								TEC_FILE1_PATH = RS("TS_TEC_FILE1_PATH")
								TEC_FILE2_NM = RS("TS_TEC_FILE2_NM")
								TEC_FILE2_PATH = RS("TS_TEC_FILE2_PATH")
								TEC_FILE3_NM = RS("TS_TEC_FILE3_NM")
								TEC_FILE3_PATH = RS("TS_TEC_FILE3_PATH")
								%>

								<tr>
									<td class="h2">국어</td>
									<td class="fc-b"><%=MY_LANG_PPT%></td>
									<td><%=ACA_AVG_LANG_PPT%></td>
									<td><%=LANG_CUT30%></td>
									<td><%=LANG_CUT20%></td>
									<td><%=LANG_CUT10%></td>
									<td><%if LANG_ANSWER_CNT > 0 then %><a href="#none" class="btnType-b-s" onclick="popTable('<%=sTry_CD%>','<%=LANG_SUBJ_CD%>');return false;">정오표</a> <%end if%></td>
								</tr>
								<tr>
									<td class="h2">수학</td>
									<td class="fc-b"><%=MY_MATH_PPT%></td>
									<td><%=ACA_AVG_MATH_PPT%></td>
									<td><%=MATH_CUT30%></td>
									<td><%=MATH_CUT20%></td>
									<td><%=MATH_CUT10%></td>
									<td><%if MATH_ANSWER_CNT > 0 then %><a href="#none" class="btnType-b-s" onclick="popTable('<%=sTry_CD%>','<%=MATH_SUBJ_CD%>');return false;">정오표</a> <%end if%></td>
								</tr>
								<tr>
									<td>탐구1<br/><span class="txt-gray">(<%=SEL1_SUBJ_NM%>)</span></td>
									<td class="fc-b"><%=MY_SEL1_PPT%></td>
									<td><%=ACA_AVG_SEL1_PPT%></td>
									<td><%=SEL1_CUT30%></td>
									<td><%=SEL1_CUT20%></td>
									<td><%=SEL1_CUT10%></td>
									<td><%if SEL1_ANSWER_CNT > 0 then %><a href="#none" class="btnType-b-s" onclick="popTable('<%=sTry_CD%>','<%=SEL1_SUBJ_CD%>');return false;">정오표</a> <%end if%></td>
								</tr>
								<tr>
									<td>탐구2<br/><span class="txt-gray">(<%=SEL2_SUBJ_NM%>)</span></td>
									<td class="fc-b"><%=MY_SEL2_PPT%></td>
									<td><%=ACA_AVG_SEL2_PPT%></td>
									<td><%=SEL2_CUT30%></td>
									<td><%=SEL2_CUT20%></td>
									<td><%=SEL2_CUT10%></td>
									<td><%if SEL2_ANSWER_CNT > 0 then %><a href="#none" class="btnType-b-s" onclick="popTable('<%=sTry_CD%>','<%=SEL2_SUBJ_CD%>');return false;">정오표</a> <%end if%></td>
								</tr>
								<tr class="bg-b">
									<td class="h2">종합</td>
									<td><%=MY_TOTAL_PPT%></td>
									<td class="fc-black"><%=ACA_AVG_TOTAL_PPT%></td>
									<td class="fc-black"><%=TOTAL_CUT30%></td>
									<td class="fc-black"><%=TOTAL_CUT20%></td>
									<td class="fc-black"><%=TOTAL_CUT10%></td>
									<td class="fc-black"></td>
								</tr>

							<% end if
							RS.close
							Set RS = Nothing %>
						</tbody>
					</table>
				</div>
			</div>
			<div class="title-box mt30">
				<h3 class="title">출제경향</h3>
			</div>
			<div class="textbox-gray"><%=EXAM_TREND%></div>
			<form method="post" name="form1" target="runSource" action="popConsult_sql.asp" enctype="MULTIPART/FORM-DATA">
				<input type="hidden" name="mod" value="" />
				<input type="hidden" name="try_cd" value="<%=sTry_CD%>" />
				<input type="hidden" name="field_nm" value="" />
				<input type="hidden" name="tec_answer_idx" value="" />
				<input type="hidden" name="tec_answer_title" value="" />
				<input type="hidden" name="tec_answer" value="" />
				<input type="hidden" name="tec_answer_retdt" value="" />
				<div class="title-box mt30">
					<h3 class="title">시험 관련 문의사항 & 느낀점 (학생)</h3>
					<div class="txt-al-r">
						<a href="#" onclick="javascript:form1.mod.value='stu_question'; form1.submit();" class="btnTypeB-blue">저장</a>
					</div>
				</div>
				<div class="textbox-white">
					<textarea name="stu_question"><%=STU_QUESTION%></textarea>
				</div>
				<!--
				<div class="file-wrap disabled">
					<label for="">학생 : </label>
					<input type="file" name="" id="" disabled>
					<a href="" class="btnTypeB-blue">저장</a>
				</div>
				-->
				<div class="file-wrap">
					<label for="">선생님1 : </label>
					<% if TEC_FILE1_NM <> "" then %>
						<p><span onclick="javascript:filedown('<%=TEC_FILE1_PATH%>', '<%=TEC_FILE1_NM%>');"><%=TEC_FILE1_NM%></span>
						<% if sIsTec = "Y" then %>
							<button onclick="javascript:filedelete('tec_file_delete', '1');">X</button></p>
						<% end if %>
					<% else %>
						<% if sIsTec = "Y" then %>
							<input type="file" name="tec_file1">
							<a href="#" onclick="javascript:fileupload('tec_file_upload', '1');" class="btnTypeB-blue">저장</a>
						<% end if %>
					<% end if %>
				</div>
				<div class="file-wrap">
					<label for="">선생님2 : </label>
					<% if TEC_FILE2_NM <> "" then %>
						<p><span onclick="javascript:filedown('<%=TEC_FILE2_PATH%>', '<%=TEC_FILE2_NM%>');"><%=TEC_FILE2_NM%></span>
						<% if sIsTec = "Y" then %>
							<button onclick="javascript:filedelete('tec_file_delete', '2');">X</button></p>
						<% end if %>
					<% else %>
						<% if sIsTec = "Y" then %>
							<input type="file" name="tec_file2">
							<a href="#" onclick="javascript:fileupload('tec_file_upload', '2');" class="btnTypeB-blue">저장</a>
						<% end if %>
					<% end if %>
				</div>
				<div class="file-wrap">
					<label for="">선생님3 : </label>
					<% if TEC_FILE3_NM <> "" then %>
						<p><span onclick="javascript:filedown('<%=TEC_FILE3_PATH%>', '<%=TEC_FILE3_NM%>');"><%=TEC_FILE3_NM%></span>
						<% if sIsTec = "Y" then %>
							<button onclick="javascript:filedelete('tec_file_delete', '2');">X</button></p>
						<% end if %>
					<% else %>
						<% if sIsTec = "Y" then %>
							<input type="file" name="tec_file3">
							<a href="#" onclick="javascript:fileupload('tec_file_upload', '3');" class="btnTypeB-blue">저장</a>
						<% end if %>
					<% end if %>
				</div>
				<p class="txt-bottom">※ 파일명은 년월_영문.확장자명, ex) 업로드 경로.확장자.doc</p>
				<div class="tecanswer-wrap"><%
					strSQL = ""
					strSQL = strSQL & " SELECT		TCS_CD, TSC_TEC_ANSWER_TITLE, TCS_TEC_ANSWER,  CONVERT(CHAR(16), TCS_REG_DT, 20) AS TCS_REG_DT "
					strSQL = strSQL & " FROM		AMS_TRY_CONSULT_SUB (NOLOCK) "
					strSQL = strSQL & " WHERE		TCS_TRY_CD = '" & sTry_CD & "' "
					strSQL = strSQL & " AND			TCS_MEM_CD = '" & nRmsMemCd & "' "
					strSQL = strSQL & " ORDER BY	TCS_CD "

					Set RS = amsobjdb.sqlQuery(strSQL,3)

					If RS.EOF <> True Then
						FOR i=0 to RS.RecordCount - 1 %>
							<div class="tecanswer">
								<input type="hidden" name="areaTecAnswerIdx" value="<%=RS("TCS_CD")%>" />
								<div class="title-box mt30">
									<h3 class="title addBtn-wrap"><label for=""><input type="text" name="areaTecAnswerTitle" id="" value="<%=RS("TSC_TEC_ANSWER_TITLE")%>"></label></h3>
									<div class="txt-al-r input-list">
										<p>
											<label><input type="text" name="areaTecAnswerRegDt" id="day" class="txt-day" value="<%=RS("TCS_REG_DT")%>"></label>
										</p>
										<% if sIsTec = "Y" then %>
										<p>
											<!--
											<span class="imgCheck">
												<input type="checkbox" title="선택" id="snsCk" name="snsCk" value="Y">
											</span>
											<label for="snsCk" class="txt-snsCk">상담 SMS 알림</label>
											-->
											<a href="#" onclick="javascript:saveTecAnswer(this);" class="btnTypeB-blue">저장</a>
										</p>
										<% end if %>
									</div>
								</div>
								<div class="textbox-white">
									<textarea name="areaTecAnswer" ><%=RS("TCS_TEC_ANSWER")%></textarea>
								</div>
								<div class="addBtn-wrap-fr">
									<% if sIsTec = "Y" then %>
										<% IF i = RS.RecordCount - 1 THEN %>
										<input type="button" class="add-btn" value="+ 영역추가" onclick="javascript:addTecAnswerArea(this);">
										<% END IF %>
										<input type="button" class="add-btn" value="- 영역삭제" onclick="javascript:removeTecAnswerArea(this);">
									<% end if %>
								</div>
							</div>
						<% RS.MoveNext
						NEXT
					ELSE %>
						<div class="tecanswer">
							<input type="hidden" name="areaTecAnswerIdx" value="" />
							<div class="title-box mt30">
								<h3 class="title addBtn-wrap"><label for=""><input type="text" name="areaTecAnswerTitle" id="" value="상담내용"></label></h3>
								<div class="txt-al-r input-list">
									<p>
										<label><input type="text" name="areaTecAnswerRegDt" id="day" class="txt-day" value="<%=sNow%>"></label>
									</p>
									<% if sIsTec = "Y" then %>
									<p>
										<!--
										<span class="imgCheck">
											<input type="checkbox" title="선택" id="snsCk" name="snsCk" value="Y">
										</span>
										<label for="snsCk" class="txt-snsCk">상담 SMS 알림</label>
										-->
										<a href="#" onclick="javascript:saveTecAnswer(this);" class="btnTypeB-blue">저장</a>
									</p>
									<% end if %>
								</div>
							</div>
							<div class="textbox-white">
								<textarea name="areaTecAnswer" ></textarea>
							</div>
							<div class="addBtn-wrap-fr">
								<% if sIsTec = "Y" then %>
								<input type="button" class="add-btn" value="+ 영역추가" onclick="javascript:addTecAnswerArea(this);">
								<input type="button" class="add-btn" value="- 영역삭제" onclick="javascript:removeTecAnswerArea(this);">
								<% end if %>
							</div>
						</div>
					<% END IF

					RS.close
					Set RS = Nothing %>
				</div>

				<!-- <div class="title-box mt30">
					<h3 class="title">담임선생님 한마디</h3><% 
					if sIsTec = "Y" then %>
						<div class="txt-al-r input-list">
							<p>
								<label for="day" class="txt-snsCk">상담날짜</label>
								<input type="text" name="" id="day" class="txt-day">
							</p>
							<p>
								<span class="imgCheck">
									<input type="checkbox" title="선택" id="snsCk" name="snsCk" value="Y">
								</span>
								<label for="snsCk" class="txt-snsCk">상담 내용 저장 시 안내 SMS발송</label>
								<a href="#" onclick="javascript:form1.mod.value='tec_answer'; form1.submit();" class="btnTypeB-blue">저장</a>
							</p>
						</div><% 
					end if %>
				</div>
				<div class="textbox-gray">
					<textarea name="tec_answer"><%=TEC_ANSWER%></textarea>
				</div> -->
			</form>
		</div>
		<iframe name="runSource" width="0" height="0"></iframe>
	</section>
</div>
<script>
	//정오표
	function popTable(try_cd, subj_cd){
		window.open("popSchedule.asp?try_cd="+try_cd+"&subj_cd="+subj_cd,"","width=1000, height=520, resizable=no, scrollbars=yes, status=no, left=50px, top=100px");
	}
	function fnc_pop(){
		window.open('popAllresult.asp','popAllresult','width=1020, height=768, resizable=no, scrollbars=yes, status=no, left=50px, top=100px');
	}


	$(document).ready(function() {
		autosize($('textarea'));
	});

		
</script>

</body>
</html>
