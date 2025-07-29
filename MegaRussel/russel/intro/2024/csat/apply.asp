<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<% If ValueCheck(gLoginOk) = False Or gLoginOk = False Then %>
	<script>
		alert("로그인 후 이용 가능합니다.");
	</script>
<% End if %>

<!-- #include virtual="/russel/Public/login_check.asp" -->

<%	

	' OPEN_CSAT = "Y"
	' If curYmdhmin < 202311220000 then '11/22 전까지는 샘플용 성적표 노출 
	' 	OPEN_CSAT = "N"
	' End If
	

	If InStr(request.servervariables("server_name"),"dev.megastudy.net") > 0 Then
		ED_EM_NUM_EXAM = 10099 '개발서버
	else
		ED_EM_NUM_EXAM = 128
	end if

	

	exam_cnt = 0

    strSql = ""
	strSql = strSql & " SELECT COUNT(*) "
	strSql = strSql & " FROM MS_EVTRUSSEL_DTL WITH(NOLOCK) "
	strSql = strSql & " WHERE 1=1 "
	strSql = strSql & " 	AND ED_EM_NUM = " & ED_EM_NUM_EXAM
	strSql = strSql & " 	AND ED_MEM_ID = '" & gLoginMemId & "' "
	strSql = strSql & "		AND ED_MEM_TYPE = '1' "


	Set objRs = russelobjdb.sqlQuery(strSql, 3)
    If Not (objRs.EoF And objRs.BoF) Then
        exam_cnt = objRs(0)
    End If
    objRs.close
	Set objRs = Nothing

	
	if gLoginMemId = "haming52" or gLoginMemId = "sjw1831111" or gLoginMemId = "rladbrua1117" or gLoginMemId = "sophie1217" or gLoginMemId = "jwpak11" or gLoginMemId = "minwoo1456" or gLoginMemId = "yeonwoo0224" then '학원 오프라인 추가자 접근 가능하게
		exam_cnt = 1
	end if

	if exam_cnt = 0  then 
		call js_redirect("/intro/2024/csat/experience.asp", "러셀 수능 모의체험 신청 학생만 확인 가능합니다.")
	end if 

%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="" />
    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
    <meta name="keywords" content="" />
	<meta name="description" content="" />
	<link rel="stylesheet" type="text/css" href="/intro/2024/csat/style.css" />
	<link rel="stylesheet" type="text/css" href="/common/css/table.css" />
</head>
<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- mock-wrap -->
<% If GetCampusVarsSiteMGC("_CAMPUS_KIND_") = "gisuk" Then '기숙 %>
<div class="mock-wrap" style="margin-top:-50px">
<% Else %>
<div class="mock-wrap">
<% End If %>
	<!-- visual -->
	<!--#include virtual="/intro/2024/csat/visual.asp" -->
	<!-- //visual -->
	
	<div class="bt-tab" id="report">
		<div class="inner">
			<span onclick="location.href='./experience.asp';">러셀 수능 실전 모의체험</span>
			<span onclick="location.href='./apply.asp';" class="on">성적 분석 리포트</span>
		</div>
	</div>
	
	<!-- tab 02 -->
	<div class="cont-box on">
		<div class="cont06">
			<div class="inner pb0">
				<p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/tab02_tit01.png" alt="성적 분석 리포트" /></p>
				<ul class="menu-list">
					<li class="on"><a href="apply.asp#report">성적 통지표</a></li>
					<li><a href="report_02.asp#report">등급컷</a></li>
					<li><a href="report_03.asp#report">성적 분석</a></li>
					<!-- <li><span href="javascript:void(0)" onclick="alert('11/20(수) 공개됩니다.');">성적 분석</span></li> -->
					<li><a href="https://www.megastudy.net/Entinfo/2025_jiwon/exam/exam_common_new/Explain/Explain_ex.asp?seq=334" target="_blank">해설강의</a></li>
				</ul>
			</div>
			<div class="tab-wrap">
				<div class="tab-content on">
					<div class="cont-wrap">
						<p class="stit">러셀 수능 실전 모의체험 <strong>성적 통지표</strong></p>
						<div class="box">
							<p class="btit"><strong>2025학년도 러셀 수능 실전 모의체험</strong> <span>성적 통지표</span>(실채점 기준)</p>
							<table class="tbl-01">
								<colgroup>
									<col style="width: ;">
									<col style="width: ;">
									<col style="width: ;">
									<col style="width: ;">
									<col style="width: ;">
									<col style="width: ;">
								</colgroup>
								<thead>
									<tr class="low">
										<th>수험번호</th>
										<th>성명</th>
										<th colspan="2">소속학원</th>
										<th class="b-r" colspan="2">응시장소</th>
									</tr>
								</thead>
							<%

									strSql = ""
									strSql = strSql & " SELECT SS_YEAR "
									strSql = strSql & " 	, SS_RMS_MEM_CD "
									strSql = strSql & " 	, SS_MEM_ID "
									strSql = strSql & " 	, SS_MEM_NM "
									strSql = strSql & " 	, SS_ACA_NM "
									
									strSql = strSql & " 	, SS_LANG_OPT "
									strSql = strSql & " 	, SS_LANG_SPT "
									strSql = strSql & " 	, SS_LANG_GPT "
									strSql = strSql & " 	, SS_LANG_PPT "
									
									strSql = strSql & " 	, SS_MATH_OPT "
									strSql = strSql & " 	, SS_MATH_SPT "
									strSql = strSql & " 	, SS_MATH_GPT "
									strSql = strSql & " 	, SS_MATH_PPT "
									
									strSql = strSql & " 	, SS_ENG_OPT "
									strSql = strSql & " 	, SS_ENG_SPT "
									strSql = strSql & " 	, SS_ENG_GPT "
									strSql = strSql & " 	, SS_ENG_PPT "
									
									strSql = strSql & " 	, SS_SEL1_OPT "
									strSql = strSql & " 	, SS_SEL1_SPT "
									strSql = strSql & " 	, SS_SEL1_GPT "
									strSql = strSql & " 	, SS_SEL1_PPT "
									
									strSql = strSql & " 	, SS_SEL2_OPT "
									strSql = strSql & " 	, SS_SEL2_SPT "
									strSql = strSql & " 	, SS_SEL2_GPT "
									strSql = strSql & " 	, SS_SEL2_PPT "

									strSql = strSql & "  	, ISNULL((SELECT TOP 1 CD_COM_CLS FROM MegaRMS.DBO.AMS_COM_DTL WITH(NOLOCK) WHERE CD_COM_CD = 111 AND CD_DTL_CD = SS_LANG_CD), '선택없음') AS SS_LANG_NM "
									strSql = strSql & "  	, ISNULL((SELECT TOP 1 CD_COM_CLS FROM MegaRMS.DBO.AMS_COM_DTL WITH(NOLOCK) WHERE CD_COM_CD = 111 AND CD_DTL_CD = SS_MATH_CD), '선택없음') AS SS_MATH_NM "
									strSql = strSql & "  	, ISNULL((SELECT TOP 1 CD_COM_CLS FROM MegaRMS.DBO.AMS_COM_DTL WITH(NOLOCK) WHERE CD_COM_CD = 111 AND CD_DTL_CD = SS_ENG_CD),  '선택없음') AS SS_ENG_NM "
									strSql = strSql & "  	, ISNULL((SELECT TOP 1 CD_COM_CLS FROM MegaRMS.DBO.AMS_COM_DTL WITH(NOLOCK) WHERE CD_COM_CD = 111 AND CD_DTL_CD = SS_SEL1_CD), '선택없음') AS SS_SEL1_NM "
									strSql = strSql & "  	, ISNULL((SELECT TOP 1 CD_COM_CLS FROM MegaRMS.DBO.AMS_COM_DTL WITH(NOLOCK) WHERE CD_COM_CD = 111 AND CD_DTL_CD = SS_SEL2_CD), '선택없음') AS SS_SEL2_NM "
									
									strSql = strSql & " FROM MR_SAT_SCORE_2022 (NOLOCK) "
									strSql = strSql & " WHERE 1=1 "
									strSql = strSql & " 	AND	SS_YEAR = 2025 "
									strSql = strSql & " 	AND	SS_MEM_ID = '" & gLoginMemId & "'"

									Set Rs = russelobjdb.sqlQuery(strSql, 2)
									If Not (Rs.EoF And Rs.BoF) Then
										dbMEM_CD		= RS("SS_RMS_MEM_CD")
										dbMEM_NM		= RS("SS_MEM_NM")
										dbACA_NM		= RS("SS_ACA_NM")
										
										dbLANG_SUBJ_NM	= RS("SS_LANG_NM")
										dbMATH_SUBJ_NM	= RS("SS_MATH_NM")
										dbENG_SUBJ_NM	= RS("SS_ENG_NM")
										dbSEL1_SUBJ_NM	= RS("SS_SEL1_NM")
										dbSEL2_SUBJ_NM	= RS("SS_SEL2_NM")

										dbLANG_OPT		= RS("SS_LANG_OPT")
										dbMATH_OPT		= RS("SS_MATH_OPT")
										dbENG_OPT 		= RS("SS_ENG_OPT")
										dbSEL1_OPT		= RS("SS_SEL1_OPT")
										dbSEL2_OPT		= RS("SS_SEL2_OPT")

										dbLANG_SPT		= RS("SS_LANG_SPT")
										dbMATH_SPT		= RS("SS_MATH_SPT")
										dbSEL1_SPT		= RS("SS_SEL1_SPT")
										dbSEL2_SPT		= RS("SS_SEL2_SPT")

										dbLANG_PPT		= RS("SS_LANG_PPT")
										dbMATH_PPT		= RS("SS_MATH_PPT")
										dbSEL1_PPT		= RS("SS_SEL1_PPT")
										dbSEL2_PPT		= RS("SS_SEL2_PPT")

										dbLANG_GPT		= RS("SS_LANG_GPT")
										dbMATH_GPT		= RS("SS_MATH_GPT")
										dbENG_GPT		= RS("SS_ENG_GPT")
										dbSEL1_GPT		= RS("SS_SEL1_GPT")
										dbSEL2_GPT		= RS("SS_SEL2_GPT")

									
										if ValueCheck(dbLANG_OPT) = false then
											dbLANG_OPT = "미응시"
											dbLANG_SPT = "-"
											dbLANG_PPT = "-"
											dbLANG_GPT = "-"
										end if

										if ValueCheck(dbMATH_OPT) = false then
											dbMATH_OPT = "미응시"
											dbMATH_SPT = "-"
											dbMATH_PPT = "-"
											dbMATH_GPT = "-"
										end if

										if ValueCheck(dbENG_OPT) = false then
											dbENG_OPT = "미응시"
											dbENG_PPT = "-"
											dbENG_GPT = "-"
										end if

										if ValueCheck(dbSEL1_OPT) = false then
											dbSEL1_OPT = "미응시"
											dbSEL1_SPT = "-"
											dbSEL1_PPT = "-"
											dbSEL1_GPT = "-"
										end if

										if ValueCheck(dbSEL2_OPT) = false then
											dbSEL2_OPT = "미응시"
											dbSEL2_SPT = "-"
											dbSEL2_PPT = "-"
											dbSEL2_GPT = "-"
										end if

									End If

									Rs.close
									set Rs = nothing
							%>
								<tbody>
									<tr>
										<td><%=dbMEM_CD%></td>
										<td><%=dbMEM_NM%></td>
										<td colspan="2">러셀학원</td>
										<td  class="b-r" colspan="2"><%=dbACA_NM%></td>
									</tr>
									<tr>
										<td rowspan="2">구분</td>
										<td>국어영역</td>
										<td>수학영역</td>
										<td rowspan="2">영어영역</td>
										<td class="b-r" colspan="2">탐구영역</td>
									</tr>
									<tr>
										<td><%=dbLANG_SUBJ_NM%></td>
										<td><%=dbMATH_SUBJ_NM%></td>
										<td><%=dbSEL1_SUBJ_NM%></td>
										<td class="b-r"><%=dbSEL2_SUBJ_NM%></td>
									</tr>
									<tr>
										<td>원점수</td>
										<td><%=dbLANG_OPT%></td>
										<td><%=dbMATH_OPT%></td>
										<td><%=dbENG_OPT%></td>
										<td><%=dbSEL1_OPT%></td>
										<td class="b-r"><%=dbSEL2_OPT%></td>
									</tr>
									<tr>
										<td>표준점수</td>
										<!-- <td><%=dbLANG_SPT%></td>
										<td><%=dbMATH_SPT%></td> -->
										<td rowspan="3" class="diagonal"></td>
										<td rowspan="3" class="diagonal"></td>
										<td>-</td>
										<td><%=dbSEL1_SPT%></td>
										<td class="b-r"><%=dbSEL2_SPT%></td>
									</tr>
									<tr>
										<td>백분위</td>
										<!-- <td><%=dbLANG_PPT%></td>
										<td><%=dbMATH_PPT%></td>  -->
										<td>-</td>
										<td><%=dbSEL1_PPT%></td>
										<td class="b-r"><%=dbSEL2_PPT%></td>
									</tr>
									<tr>
										<td>등급</td>
										<!-- <td><%=dbLANG_GPT%></td>
										<td><%=dbMATH_GPT%></td>  -->
										<td><%=dbENG_GPT%></td>
										<td ><%=dbSEL1_GPT%></td>
										<td class="b-r"><%=dbSEL2_GPT%></td>
									</tr>
								</tbody>
							
								<!-- <tbody>
									<tr>
										<td>000000</td>
										<td>ㅇㅇㅇ</td>
										<td colspan="2">러셀학원</td>
										<td  class="b-r" colspan="2">온라인</td>
									</tr>
									<tr>
										<td rowspan="2">구분</td>
										<td>국어영역</td>
										<td>수학영역</td>
										<td rowspan="2">영어영역</td>
										<td class="b-r" colspan="2">탐구영역</td>
									</tr>
									<tr>
										<td>-</td>
										<td>기하</td>
										<td>생활과 윤리</td>
										<td class="b-r">한국지리</td>
									</tr>
									<tr>
										<td>원점수</td>
										<td>미응시</td>
										<td>15</td>
										<td>20</td>
										<td>4</td>
										<td class="b-r">5</td>
									</tr>
									<tr>
										<td>예상 표준점수</td>
										<td rowspan="3" class="diagonal"></td>
										<td rowspan="3" class="diagonal"></td>
										<td rowspan="2">-</td>
										<td>29</td>
										<td class="b-r">30</td>
									</tr>
									<tr>
										<td>예상 백분위</td>
										<td>0</td>
										<td class="b-r">1</td>
									</tr>
									<tr>
										<td>예상 등급</td>
										<td>8</td>
										<td>9</td>
										<td class="b-r">9</td>
									</tr>
								</tbody> -->
						
							</table>
							<p class="date">2024.12.10</p>
							<p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/cont06_logo.png" alt="러셀로고" /></p>
							<!-- <p class="sample"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/ico_sample.png" alt="샘플도장" /></p> -->
						</div>
						<ul class="list-02">
							<li>수험생이 미응시하거나 해당이 없는 경우는 ‘-’ 로 노출됩니다.</li>
							<li>수능 성적 발표 후에는 국어, 수학 원점수만 제공됩니다.
							</li>
							<!-- 12/10(화) 삭제예정 -->
							<!-- <li>실채점 성적은 12/10(화)에 업데이트 반영됩니다.</li> -->
							<!-- //12/10(화) 삭제예정 -->
						</ul>
						<p class="stit">
							<!-- 2025학년도 대학수학능력시험 <strong>출제 방향 및 범위</strong> -->
							2025학년도 대학수학능력시험 <strong>성적 분석 결과</strong>
							<!-- <a class="down-btn" href="https://www.kice.re.kr/boardCnts/view.do?boardID=10023&boardSeq=5092094&lev=0&m=050101&searchType=S&statusYN=W&page=1&s=kice" target="_blank">출제방향 보도자료</a> -->
							<a class="down-btn" href="https://www.suneung.re.kr/boardCnts/view.do?boardID=1500230&boardSeq=5089472&lev=0&m=0302&s=suneung" target="_blank">성적 분석 결과 보도자료</a>
							<a class="down-btn" href="https://www.suneung.re.kr/boardCnts/list.do?boardID=1500234&m=0403&s=suneung&searchStr=" target="_blank">대학수학능력시험 기출문제 다운로드</a>
						</p>
						<p class="bold mt40 mb5 fz18">1. 영역/과목별 응시자 현황</p>
						<p class="bold mt10 mb5 fz16">(1) 영역/과목별 응시자 현황</p>
						<table class="tbl-01">
							<colgroup>
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
							</colgroup>
							<thead>
								<tr class="low">
									<th rowspan="2">영역</th>
									<th rowspan="2">국어</th>
									<th rowspan="2">수학</th>
									<th rowspan="2">영어</th>
									<th rowspan="2">한국사</th>
									<th colspan="3">탐구</th>
									<th rowspan="2">제2외국어/한문</th>
								</tr>
								<tr class="low">
									<th>사회&middot;과학</th>
									<th>직업</th>
									<th>계</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th class="bg-gray">인원(명)</th>
									<td>461,252
									</td>
									<td>443,233</td>
									<td>459,352</td>
									<td>463,486</td>
									<td>447,507</td>
									<td>3,628</td>
									<td>451,135</td>
									<td>44,102</td>
								</tr>
								<tr>
									<th class="bg-gray">비율(%) <sup>*</sup></th>
									<td>99.5</td>
									<td>95.6</td>
									<td>99.1</td>
									<td>100</td>
									<td>96.6(99.2)
									</td>
									<td>0.8(0.8)
									</td>
									<td>97.3(100.0)
									</td>
									<td>9.5</td>
								</tr>
							</tbody>
						</table>
						<p class="gray fz14">*전체 응시자(한국사 기준)에 대한 비율임. ‘탐구’ 영역의 괄호 안 비율은 탐구 영역 응시자(계)에 대한 비율임.
						</p>
						<p class="bold mt10 mb5 fz16">(2) 국어/수학영역 선택 과목별 응시자 현황</p>
						<table class="tbl-01">
							<colgroup>
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
							</colgroup>
							<thead>
								<tr class="low">
									<th rowspan="2">구분</th>
									<th colspan="3">국어</th>
									<th colspan="4">수학</th>
								</tr>
								<tr class="low">
									<th>화법과 작문</th>
									<th>언어와 매체</th>
									<th>계</th>
									<th>확률과 통계</th>
									<th>미적분</th>
									<th>기하</th>
									<th>계</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th class="bg-gray">인원(명)</th>
									<td>290,372</td>
									<td>170,880</td>
									<td>461,252</td>
									<td>202,266</td>
									<td>227,232</td>
									<td>13,735</td>
									<td>443,233</td>
								</tr>
								<tr>
									<th class="bg-gray">비율(%)</th>
									<td>63</td>
									<td>37</td>
									<td>100</td>
									<td>45.6</td>
									<td>51.3</td>
									<td>3.1</td>
									<td>100</td>
								</tr>
							</tbody>
						</table>
						<p class="bold mt10 mb5 fz16">(3) 탐구영역 선택 과목별 응시자 현황</p>
						<table class="tbl-01">
							<colgroup>
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
							</colgroup>
							<thead>
								<tr class="low">
									<th>과목명</th>
									<th>인원(명)</th>
									<th>과목명</th>
									<th>인원(명)</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th class="bg-gray">생활과 윤리</th>
									<td>157,938</td>
									<td class="bg-gray">물리학Ⅰ</td>
									<td>58,049</td>
								</tr>
								<tr>
									<th class="bg-gray">윤리와 사상</th>
									<td>39,787</td>
									<td class="bg-gray">화학Ⅰ</td>
									<td>44,074</td>
								</tr>
								<tr>
									<th class="bg-gray">한국지리</th>
									<td>34,933</td>
									<td class="bg-gray">생명과학Ⅰ</td>
									<td>129,818</td>
								</tr>
								<tr>
									<th class="bg-gray">세계지리</th>
									<td>30,002</td>
									<td class="bg-gray">지구과학Ⅰ</td>
									<td>142,672</td>
								</tr>
								<tr>
									<th class="bg-gray">동아시아사</th>
									<td>17,521</td>
									<td class="bg-gray">물리학Ⅱ</td>
									<td>5,148</td>
								</tr>
								<tr>
									<th class="bg-gray">세계사</th>
									<td>15,457</td>
									<td class="bg-gray">화학Ⅱ</td>
									<td>5,360</td>
								</tr>
								<tr>
									<th class="bg-gray">경제</th>
									<td>6,030</td>
									<td class="bg-gray">생명과학Ⅱ</td>
									<td>6,909</td>
								</tr>
								<tr>
									<th class="bg-gray">정치와 법</th>
									<td>29,915</td>
									<td class="bg-gray">지구과학Ⅱ</td>
									<td>4,508</td>
								</tr>
								<tr>
									<th class="bg-gray">사회&middot;문화</th>
									<td>164,456</td>
									<td class="diagonal02"></td>
									<td></td>
								</tr>
							</tbody>
						</table>
						<p class="bold mt10 mb5 fz16">(4) 국어, 수학, 영어영역 응시자의 탐구 영역별 응시 비율</p>
						<table class="tbl-01">
							<colgroup>
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
							</colgroup>
							<thead>
								<tr class="low">
									<th rowspan="2" colspan="3">구분</th>
									<th colspan="3">국어</th>
									<th colspan="4">수학</th>
									<th rowspan="2">영어</th>
								</tr>
								<tr class="low">
									<th>화법과 <br> 작문</th>
									<th>언어와 <br> 매체</th>
									<th>소계</th>
									<th>확률과 <br> 통계</th>
									<th>미적분</th>
									<th>기하</th>
									<th>소계</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th rowspan="6" class="b-r bg-gray">사회&middot;과학 <br> 탐구</th>
									<th rowspan="2" class="b-r bg-gray">사회</th>
									<th class="bg-gray">인원(명)</th>
									<td>166,761</td>
									<td>57,497</td>
									<td>224,258</td>
									<td>170,541</td>
									<td>35,268</td>
									<td>3,659</td>
									<td>209,468</td>
									<td>223,191</td>
								</tr>
								<tr>
									<th class="bg-gray">비율(%)</th>
									<td class="bg-sky">57.4</td>
									<td>33.6</td>
									<td>48.6</td>
									<td class="bg-sky">84.3</td>
									<td>15.5</td>
									<td>26.7</td>
									<td>47.3</td>
									<td>48.6</td>
								</tr>
								<tr>
									<th rowspan="2" class="b-r bg-gray">과학</th>
									<th class="bg-gray">인원(명)</th>
									<td>80,600</td>
									<td>93,488</td>
									<td>174,088</td>
									<td>10,944</td>
									<td>155,142</td>
									<td>7,860</td>
									<td>173,946</td>
									<td>174,051</td>
								</tr>
								<tr>
									<th class="bg-gray">비율(%)</th>
									<td>27.8</td>
									<td class="bg-sky">54.7</td>
									<td>37.7</td>
									<td>5.4</td>
									<td class="bg-sky">68.3</td>
									<td class="bg-sky">57.2</td>
									<td>39.2</td>
									<td>37.9</td>
								</tr>
								<tr>
									<th rowspan="2" class="b-r bg-gray">사회+과학</th>
									<th class="bg-gray">인원(명)</th>
									<td>31,461</td>
									<td>16,069</td>
									<td>47,530</td>
									<td>12,489</td>
									<td>32,648</td>
									<td>1,749</td>
									<td>46,886</td>
									<td>47,357</td>
								</tr>
								<tr>
									<th class="bg-gray">비율(%)</th>
									<td>10.8</td>
									<td>9.4</td>
									<td>10.3</td>
									<td>6.2</td>
									<td>14.4</td>
									<td>12.7</td>
									<td>10.6</td>
									<td>10.3</td>
								</tr>
								<tr>
									<th colspan="2" rowspan="2" class="b-r bg-gray">직업탐구</th>
									<th class="bg-gray">인원(명)</th>
									<td>2,730</td>
									<td>823</td>
									<td>3,553</td>
									<td>1,835</td>
									<td>1,192</td>
									<td>177</td>
									<td>3,204</td>
									<td>3,454</td>
								</tr>
								<tr>
									<th class="bg-gray">비율(%)</th>
									<td>1</td>
									<td>0.5</td>
									<td>0.8</td>
									<td>0.9</td>
									<td>0.5</td>
									<td>1.3</td>
									<td>0.7</td>
									<td>0.7</td>
								</tr>
								<tr>
									<th colspan="2" rowspan="2" class="b-r bg-gray">미응시</th>
									<th class="bg-gray">인원(명)</th>
									<td>8,820</td>
									<td>3,003</td>
									<td>11,823</td>
									<td>6,457</td>
									<td>2,982</td>
									<td>290</td>
									<td>9,729</td>
									<td>11,299</td>
								</tr>
								<tr>
									<th class="bg-gray">비율(%)</th>
									<td>3</td>
									<td>1.8</td>
									<td>2.6</td>
									<td>3.2</td>
									<td>1.3</td>
									<td>2.1</td>
									<td>2.2</td>
									<td>2.5</td>
								</tr>
								<tr>
									<th colspan="2" rowspan="2" class="b-r bg-gray">계</th>
									<th class="bg-gray">인원(명)</th>
									<td>290,372</td>
									<td>170,880</td>
									<td>461,252</td>
									<td>202,266</td>
									<td>227,232</td>
									<td>13,735</td>
									<td>443,233</td>
									<td>459,352</td>
								</tr>
								<tr>
									<th class="bg-gray">비율(%)</th>
									<td>100</td>
									<td>100</td>
									<td>100</td>
									<td>100</td>
									<td>100</td>
									<td>100</td>
									<td>100</td>
									<td>100</td>
								</tr>
							</tbody>
						</table>
						<p class="bold mt40 mb5 fz18">2. 영역/과목별 등급 구분 표준점수와 인원 및 비율</p>
						<p class="bold mt10 mb5 fz16">(1) 국어, 수학, 영어 영역</p>
						<table class="tbl-01">
							<colgroup>
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
							</colgroup>
							<thead>
								<tr class="low">
									<th rowspan="2">등급</th>
									<th colspan="3">국어</th>
									<th colspan="3">수학</th>
									<th colspan="3">영어</th>
								</tr>
								<tr class="low">
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th class="bg-gray">1</th>
									<td>131</td>
									<td>20,150</td>
									<td>4.37</td>
									<td>131</td>
									<td>18,199</td>
									<td>4.11</td>
									<td>90</td>
									<td>28,587</td>
									<td>6.22</td>
								</tr>
								<tr>
									<th class="bg-gray">2</th>
									<td>125</td>
									<td>32,740</td>
									<td>7.1</td>
									<td>123</td>
									<td>32,881</td>
									<td>7.42</td>
									<td>80</td>
									<td>75,100</td>
									<td>16.35</td>
								</tr>
								<tr>
									<th class="bg-gray">3</th>
									<td>117</td>
									<td>57,162</td>
									<td>12.39</td>
									<td>117</td>
									<td>56,977</td>
									<td>12.85</td>
									<td>70</td>
									<td>98,149</td>
									<td>21.37</td>
								</tr>
								<tr>
									<th class="bg-gray">4</th>
									<td>107</td>
									<td>80,470</td>
									<td>17.45</td>
									<td>110</td>
									<td>78,413</td>
									<td>17.69</td>
									<td>60</td>
									<td>99,320</td>
									<td>21.62</td>
								</tr>
								<tr>
									<th class="bg-gray">5</th>
									<td>96</td>
									<td>88,252</td>
									<td>19.13</td>
									<td>96</td>
									<td>79,753</td>
									<td>17.99</td>
									<td>50</td>
									<td>69,897</td>
									<td>15.22</td>
								</tr>
								<tr>
									<th class="bg-gray">6</th>
									<td>84</td>
									<td>77,796</td>
									<td>16.87</td>
									<td>78</td>
									<td>79,117</td>
									<td>17.85</td>
									<td>40</td>
									<td>41,611</td>
									<td>9.06</td>
								</tr>
								<tr>
									<th class="bg-gray">7</th>
									<td>72</td>
									<td>56,519</td>
									<td>12.25</td>
									<td>72</td>
									<td>56,793</td>
									<td>12.81</td>
									<td>30</td>
									<td>24,969</td>
									<td>5.44</td>
								</tr>
								<tr>
									<th class="bg-gray">8</th>
									<td>63</td>
									<td>32,902</td>
									<td>7.13</td>
									<td>69</td>
									<td>26,051</td>
									<td>5.88</td>
									<td>20</td>
									<td>17,212</td>
									<td>3.75</td>
								</tr>
								<tr>
									<th class="bg-gray">9</th>
									<td>63미만</td>
									<td>15,261</td>
									<td>3.31</td>
									<td>69미만</td>
									<td>15,049</td>
									<td>3.4</td>
									<td>20미만</td>
									<td>4,507</td>
									<td>0.98</td>
								</tr>
							</tbody>
						</table>
						<p class="bold mt10 mb5 fz16">(2) 한국사, 사회탐구 영역</p>
						<table class="tbl-01">
							<colgroup>
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
							</colgroup>
							<thead>
								<tr class="low">
									<th rowspan="2">등급</th>
									<th colspan="3">한국사</th>
									<th colspan="3">생활과 윤리</th>
									<th colspan="3">윤리와 사상</th>
									<th colspan="3">한국지리</th>
									<th colspan="3">세계지리</th>
								</tr>
								<tr class="low">
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th class="bg-gray">1</th>
									<td>40</td>
									<td>90,950</td>
									<td>19.62</td>
									<td>68</td>
									<td>6,688</td>
									<td>4.23</td>
									<td>66</td>
									<td>2,173</td>
									<td>5.46</td>
									<td>67</td>
									<td>1,550</td>
									<td>4.44
									</td>
									<td>66</td>
									<td>1,247</td>
									<td>4.16</td>
								</tr>
								<tr>
									<th class="bg-gray">2</th>
									<td>35</td>
									<td>72,061</td>
									<td>15.55</td>
									<td>64</td>
									<td>11,195</td>
									<td>7.09</td>
									<td>63</td>
									<td>2,441</td>
									<td>6.14</td>
									<td>64</td>
									<td>3,305</td>
									<td>9.46</td>
									<td>63</td>
									<td>3,161</td>
									<td>10.54</td>
								</tr>
								<tr>
									<th class="bg-gray">3</th>
									<td>30</td>
									<td>73,674</td>
									<td>15.9</td>
									<td>59</td>
									<td>19,984</td>
									<td>12.65</td>
									<td>59</td>
									<td>5,347</td>
									<td>13.44</td>
									<td>60</td>
									<td>3,694</td>
									<td>10.57</td>
									<td>60</td>
									<td>2,934</td>
									<td>9.78</td>
								</tr>
								<tr>
									<th class="bg-gray">4</th>
									<td>25</td>
									<td>72,408</td>
									<td>15.62</td>
									<td>52</td>
									<td>28,891</td>
									<td>18.29</td>
									<td>53</td>
									<td>7,326</td>
									<td>18.41</td>
									<td>53</td>
									<td>5,765</td>
									<td>16.5</td>
									<td>54</td>
									<td>4,771</td>
									<td>15.9</td>
								</tr>
								<tr>
									<th class="bg-gray">5</th>
									<td>20</td>
									<td>62,758</td>
									<td>13.54</td>
									<td>46</td>
									<td>32,103</td>
									<td>20.33</td>
									<td>46</td>
									<td>6,714</td>
									<td>16.87</td>
									<td>44</td>
									<td>8,499</td>
									<td>24.33</td>
									<td>46</td>
									<td>6,301</td>
									<td>21</td>
								</tr>
								<tr>
									<th class="bg-gray">6</th>
									<td>15</td>
									<td>44,764</td>
									<td>9.66</td>
									<td>42</td>
									<td>22,959</td>
									<td>14.54</td>
									<td>41</td>
									<td>6,873</td>
									<td>17.27</td>
									<td>41</td>
									<td>4,616</td>
									<td>13.21</td>
									<td>40</td>
									<td>5,998</td>
									<td>19.99</td>
								</tr>
								<tr>
									<th class="bg-gray">7</th>
									<td>10</td>
									<td>34,158</td>
									<td>7.37</td>
									<td>38</td>
									<td>19,035</td>
									<td>12.05</td>
									<td>37</td>
									<td>4,846</td>
									<td>12.18</td>
									<td>38</td>
									<td>5,352</td>
									<td>15.32</td>
									<td>37</td>
									<td>2,986</td>
									<td>9.95</td>
								</tr>
								<tr>
									<th class="bg-gray">8</th>
									<td>5</td>
									<td>11,380</td>
									<td>2.46</td>
									<td>34</td>
									<td>12,718</td>
									<td>8.05</td>
									<td>35</td>
									<td>2,896</td>
									<td>7.28</td>
									<td>37</td>
									<td>835</td>
									<td>2.39</td>
									<td>34</td>
									<td>2,244</td>
									<td>7.48</td>
								</tr>
								<tr>
									<th class="bg-gray">9</th>
									<td>5미만</td>
									<td>1,333</td>
									<td>0.29</td>
									<td>34미만</td>
									<td>4,365</td>
									<td>2.76</td>
									<td>35미만</td>
									<td>1,171</td>
									<td>2.94</td>
									<td>37미만</td>
									<td>1,317</td>
									<td>3.77</td>
									<td>34미만</td>
									<td>360</td>
									<td>1.2</td>
								</tr>
							</tbody>
						</table>
						<table class="tbl-01">
							<colgroup>
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
							</colgroup>
							<thead>
								<tr class="low">
									<th rowspan="2">등급</th>
									<th colspan="3">동아시아사</th>
									<th colspan="3">세계사</th>
									<th colspan="3">경제</th>
									<th colspan="3">정치와법</th>
									<th colspan="3">사회문화</th>
								</tr>
								<tr class="low">
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th class="bg-gray">1</th>
									<td>66</td>
									<td>935</td>
									<td>5.34</td>
									<td>66</td>
									<td>1,042</td>
									<td>6.74</td>
									<td>69</td>
									<td>255</td>
									<td>4.23</td>
									<td>65</td>
									<td>1,215</td>
									<td>4.06</td>
									<td>65</td>
									<td>9,486</td>
									<td>5.77</td>
								</tr>
								<tr>
									<th class="bg-gray">2</th>
									<td>64</td>
									<td>1,283</td>
									<td>7.32</td>
									<td>64</td>
									<td>892</td>
									<td>5.77</td>
									<td>65</td>
									<td>436</td>
									<td>7.23</td>
									<td>62</td>
									<td>3,619</td>
									<td>12.1</td>
									<td>62</td>
									<td>10,313</td>
									<td>6.27</td>
								</tr>
								<tr>
									<th class="bg-gray">3</th>
									<td>60</td>
									<td>2,002</td>
									<td>11.43</td>
									<td>60</td>
									<td>1,716</td>
									<td>11.1</td>
									<td>59</td>
									<td>775</td>
									<td>12.85</td>
									<td>59</td>
									<td>3,346</td>
									<td>11.19</td>
									<td>59</td>
									<td>19,019</td>
									<td>11.56</td>
								</tr>
								<tr>
									<th class="bg-gray">4</th>
									<td>54</td>
									<td>2,880</td>
									<td>16.44</td>
									<td>53</td>
									<td>2,717</td>
									<td>17.58</td>
									<td>52</td>
									<td>986</td>
									<td>16.35</td>
									<td>55</td>
									<td>3,953</td>
									<td>13.21</td>
									<td>54</td>
									<td>33,719</td>
									<td>20.5</td>
								</tr>
								<tr>
									<th class="bg-gray">5</th>
									<td>45</td>
									<td>3,675</td>
									<td>20.97</td>
									<td>45</td>
									<td>3,220</td>
									<td>20.83</td>
									<td>45</td>
									<td>1,248</td>
									<td>20.7</td>
									<td>47</td>
									<td>6,007</td>
									<td>20.08</td>
									<td>48</td>
									<td>26,554</td>
									<td>16.15</td>
								</tr>
								<tr>
									<th class="bg-gray">6</th>
									<td>40</td>
									<td>3,717</td>
									<td>21.21</td>
									<td>41</td>
									<td>2,352</td>
									<td>15.22</td>
									<td>41</td>
									<td>1,032</td>
									<td>17.11</td>
									<td>40</td>
									<td>5,615</td>
									<td>18.77</td>
									<td>41</td>
									<td>28,714</td>
									<td>17.46</td>
								</tr>
								<tr>
									<th class="bg-gray">7</th>
									<td>38</td>
									<td>1,597</td>
									<td>9.11</td>
									<td>38</td>
									<td>2,081</td>
									<td>13.46</td>
									<td>39</td>
									<td>739</td>
									<td>12.26</td>
									<td>37</td>
									<td>3,020</td>
									<td>10.1</td>
									<td>36</td>
									<td>20,578</td>
									<td>12.51</td>
								</tr>
								<tr>
									<th class="bg-gray">8</th>
									<td>35</td>
									<td>1,127</td>
									<td>6.43</td>
									<td>36</td>
									<td>1,018</td>
									<td>6.59</td>
									<td>36</td>
									<td>362</td>
									<td>6</td>
									<td>34</td>
									<td>2,391</td>
									<td>7.99</td>
									<td>32</td>
									<td>12,640</td>
									<td>7.69</td>
								</tr>
								<tr>
									<th class="bg-gray">9</th>
									<td>35미만</td>
									<td>305</td>
									<td>1.74</td>
									<td>36미만</td>
									<td>419</td>
									<td>2.71</td>
									<td>36미만</td>
									<td>197</td>
									<td>3.27</td>
									<td>34미만</td>
									<td>749</td>
									<td>2.5</td>
									<td>32미만</td>
									<td>3,433</td>
									<td>2.09</td>
								</tr>
							</tbody>
						</table>
						<p class="bold mt10 mb5 fz16">(3) 과학탐구 영역</p>
						<table class="tbl-01">
							<colgroup>
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
							</colgroup>
							<thead>
								<tr class="low">
									<th rowspan="2">등급</th>
									<th colspan="3">물리학Ⅰ</th>
									<th colspan="3">화학Ⅰ</th>
									<th colspan="3">생명과학Ⅰ</th>
									<th colspan="3">지구과학Ⅰ</th>
								</tr>
								<tr class="low">
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th class="bg-gray">1</th>
									<td>65</td>
									<td>2,511</td>
									<td>4.33</td>
									<td>65</td>
									<td>2,599</td>
									<td>5.9</td>
									<td>65</td>
									<td>5,926</td>
									<td>4.56</td>
									<td>67</td>
									<td>6,099</td>
									<td>4.27</td>
								</tr>
								<tr>
									<th class="bg-gray">2</th>
									<td>63</td>
									<td>3,993</td>
									<td>6.88</td>
									<td>63</td>
									<td>3,021</td>
									<td>6.85</td>
									<td>62</td>
									<td>9,374</td>
									<td>7.22</td>
									<td>63</td>
									<td>13,626</td>
									<td>9.55</td>
								</tr>
								<tr>
									<th class="bg-gray">3</th>
									<td>59</td>
									<td>7,992</td>
									<td>13.77</td>
									<td>59</td>
									<td>6,553</td>
									<td>14.87</td>
									<td>58</td>
									<td>22,062</td>
									<td>16.99</td>
									<td>59</td>
									<td>13,927</td>
									<td>9.76</td>
								</tr>
								<tr>
									<th class="bg-gray">4</th>
									<td>54</td>
									<td>10,875</td>
									<td>18.73</td>
									<td>54</td>
									<td>6,674</td>
									<td>15.14</td>
									<td>55</td>
									<td>14,938</td>
									<td>11.51</td>
									<td>53</td>
									<td>26,787</td>
									<td>18.78</td>
								</tr>
								<tr>
									<th class="bg-gray">5</th>
									<td>47</td>
									<td>9,988</td>
									<td>17.21</td>
									<td>46</td>
									<td>8,047</td>
									<td>18.26</td>
									<td>48</td>
									<td>26,620</td>
									<td>20.51</td>
									<td>46</td>
									<td>27,323</td>
									<td>19.15</td>
								</tr>
								<tr>
									<th class="bg-gray">6</th>
									<td>40</td>
									<td>10,811</td>
									<td>18.62</td>
									<td>40</td>
									<td>8,512</td>
									<td>19.31</td>
									<td>41</td>
									<td>22,931</td>
									<td>17.66</td>
									<td>41</td>
									<td>23,534</td>
									<td>16.5</td>
								</tr>
								<tr>
									<th class="bg-gray">7</th>
									<td>37</td>
									<td>5,873</td>
									<td>10.12</td>
									<td>37</td>
									<td>4,744</td>
									<td>10.76</td>
									<td>36</td>
									<td>15,840</td>
									<td>12.2</td>
									<td>37</td>
									<td>16,286</td>
									<td>11.41</td>
								</tr>
								<tr>
									<th class="bg-gray">8</th>
									<td>34</td>
									<td>4,396</td>
									<td>7.57</td>
									<td>34</td>
									<td>3,024</td>
									<td>6.86</td>
									<td>32</td>
									<td>7,181</td>
									<td>5.53</td>
									<td>35</td>
									<td>10,920</td>
									<td>7.65</td>
								</tr>
								<tr>
									<th class="bg-gray">9</th>
									<td>34미만</td>
									<td>1,610</td>
									<td>2.77</td>
									<td>34미만</td>
									<td>900</td>
									<td>2.04</td>
									<td>32미만
									</td>
									<td>4,946</td>
									<td>3.81</td>
									<td>35미만</td>
									<td>4,170</td>
									<td>2.92</td>
								</tr>
							</tbody>
						</table>
						<table class="tbl-01 mb70">
							<colgroup>
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
								<col style="width: %;">
							</colgroup>
							<thead>
								<tr class="low">
									<th rowspan="2">등급</th>
									<th colspan="3">물리학Ⅱ</th>
									<th colspan="3">화학Ⅱ</th>
									<th colspan="3">생명과학Ⅱ</th>
									<th colspan="3">지구과학Ⅱ</th>
								</tr>
								<tr class="low">
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
									<th>점수</th>
									<th>인원(명)</th>
									<th>비율(%)</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th class="bg-gray">1</th>
									<td>69</td>
									<td>251</td>
									<td>4.88</td>
									<td>69</td>
									<td>226</td>
									<td>4.22</td>
									<td>67</td>
									<td>345</td>
									<td>4.99</td>
									<td>70</td>
									<td>183</td>
									<td>4.06</td>
								</tr>
								<tr>
									<th class="bg-gray">2</th>
									<td>66</td>
									<td>321</td>
									<td>6.24</td>
									<td>64</td>
									<td>443</td>
									<td>8.26</td>
									<td>63</td>
									<td>647</td>
									<td>9.36</td>
									<td>65</td>
									<td>355</td>
									<td>7.87</td>
								</tr>
								<tr>
									<th class="bg-gray">3</th>
									<td>59</td>
									<td>717</td>
									<td>13.93</td>
									<td>59</td>
									<td>576</td>
									<td>10.75</td>
									<td>59</td>
									<td>694</td>
									<td>10.04</td>
									<td>60</td>
									<td>517</td>
									<td>11.47</td>
								</tr>
								<tr>
									<th class="bg-gray">4</th>
									<td>51</td>
									<td>780</td>
									<td>15.15</td>
									<td>52</td>
									<td>909</td>
									<td>16.96</td>
									<td>53</td>
									<td>1,098</td>
									<td>15.89</td>
									<td>50</td>
									<td>826</td>
									<td>18.32</td>
								</tr>
								<tr>
									<th class="bg-gray">5</th>
									<td>44</td>
									<td>1,399</td>
									<td>27.18</td>
									<td>46</td>
									<td>1,149</td>
									<td>21.44</td>
									<td>46</td>
									<td>1,466</td>
									<td>21.22</td>
									<td>44</td>
									<td>1,136</td>
									<td>25.2</td>
								</tr>
								<tr>
									<th class="bg-gray">6</th>
									<td>41</td>
									<td>774</td>
									<td>15.03</td>
									<td>41</td>
									<td>1,008</td>
									<td>18.81</td>
									<td>41</td>
									<td>1,101</td>
									<td>15.94</td>
									<td>41</td>
									<td>903</td>
									<td>20.03</td>
								</tr>
								<tr>
									<th class="bg-gray">7</th>
									<td>40</td>
									<td>367</td>
									<td>7.13</td>
									<td>38</td>
									<td>518</td>
									<td>9.66</td>
									<td>38</td>
									<td>875</td>
									<td>12.66</td>
									<td>40</td>
									<td>113</td>
									<td>2.51</td>
								</tr>
								<tr>
									<th class="bg-gray">8</th>
									<td>37</td>
									<td>387</td>
									<td>7.52</td>
									<td>36</td>
									<td>412</td>
									<td>7.69</td>
									<td>35</td>
									<td>497</td>
									<td>7.19</td>
									<td>37</td>
									<td>378</td>
									<td>8.39</td>
								</tr>
								<tr>
									<th class="bg-gray">9</th>
									<td>37미만</td>
									<td>152</td>
									<td>2.95</td>
									<td>36미만</td>
									<td>119</td>
									<td>2.22</td>
									<td>35미만</td>
									<td>186</td>
									<td>2.69</td>
									<td>37미만</td>
									<td>97</td>
									<td>2.15</td>
								</tr>
							</tbody>
						</table>
						<!-- <table class="tbl-01 mb70">
							<colgroup>
								<col style="width: 15%;">
								<col style="width: %;">
								<col style="width: %;">
							</colgroup>
							<thead>
								<tr class="low">
									<th>영역 / 문항 수</th>
									<th>출제 방향</th>
									<th>출제 범위</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>국어 / 45문항</th>
									<td class="pl5">
										<ul class="list-04">
											<li>평가 목표는 2018학년도 입학생부터 적용된 2015 개정 고등학교 국어과 교육과정의 목표와 내용에 기초하여 설정하였다.</li>
											<li>국어과 교육과정에서 설정한 지식과 기능에 대한 이해력, 출제 과목별 교과서를 통해 학습한 지식과 기능을 다양한 담화나 글에 적용할 수 있는 창의적 사고력을 중점적으로 측정하고자 하였다.</li>
											<li>평가 문항은 국어 영역의 출제 과목인 ‘독서’, ‘문학’, ‘화법과 작문’, ‘언어와 매체’ 교과서에 제시된 학습 목표와 학습 활동을 평가 상황에 맞게 변형하여 개발하였다.</li>
											<li>국어과 교육과정과 교과서에 기초하여 출제함으로써 학교 교육의 정상화에 기여하고, EBS 수능 교재를 연계하여 출제함으로써 학생들의 시험 준비 부담을 경감하고자 하였다.</li>
										</ul>
									</td>
									<td class="txt-left pl5">
										‘독서’, ‘문학’, ‘화법과 작문’, ‘언어와 매체’ 등 출제 과목별 교육과정에서 제시한 목표와 내용을 바탕으로 하여 출제하되, 폭넓고 다양한 국어 능력을 평가하기 위해 다양한 소재의 지문과 자료를 활용하여 출제하였다. 또한 지문의 소재를 특정 분야로 제한하지 않고 교육적으로 가치 있는 소재를 두루 취하였다.
									</td>
								</tr>
								<tr>
									<th>수학 / 30문항</th>
									<td class="pl5">
										<ul class="list-03">
											<li>평가 목표는 2015 개정 수학과 교육과정의 목표와 내용에 기초하여 설정하였다.</li>
											<li>교육과정의 내용을 충실히 반영하여 고등학교 수학교육에 긍정적인 영향을 미칠 수 있는 문항을 출제하고자 하였다.</li>
											<li>고등학교까지 학습을 통해 습득한 수학의 개념과 원리를 적용하여 문제를 이해하고 해결하는 능력을 측정할 수 있는 문항을 출제하는 데 중점을 두었다.</li>
											<li>복잡한 계산을 지양하고, 반복 훈련으로 얻을 수 있는 기술적 요소나 공식을 단순하게 적용하여 해결할 수 있는 문항보다 교육과정에서 다루는 기본 개념에 대한 충실한 이해와 종합적인 사고력을 필요로 하는 문항을 출제하고자 하였다.</li>
										</ul>
									</td>
									<td class="txt-left pl5">공통과목과 선택과목으로 구분되며 세부과목별 교육과정 내용과 수준에 맞추어 출제하였다. 공통과목은 ‘수학Ⅰ’과 ‘수학Ⅱ’ 내용 전체에서 출제하였으며, 선택과목은 ‘확률과 통계’, ‘미적분’, ‘기하’ 내용 전체에서 출제하였다.
									</td>
								</tr>
								<tr>
									<th>영어 / 45문항</th>
									<td class="pl5">
										<ul class="list-03">
											<li>2015 개정 영어과 교육과정에 제시된 다양한 소재의 지문과 자료를 활용하되 교육과정 기본 어휘와 시험 과목 수준에서 사용 빈도가 높은 어휘를 사용하여 출제한다.</li>
											<li>동일한 능력을 측정하는 유사한 문항 유형을 가감하거나 교체할 수 있는 모듈형 원칙에 따라 검사지를 구성한다.</li>
											<li>영어의 유창성뿐만 아니라 정확성을 강조하여 균형 있는 언어 사용 능력을 측정하기 위해 언어형식과 어휘 문항을 포함한다.</li>
											<li>듣기는 원어민의 대화 담화를 듣고 이해하는 능력을 측정하고, 말하기는 불완전 대화 담화를 듣고 적절한 의사소통 기능을 적용하여 이를 완성하는 능력을 간접적으로 측정한다.</li>
											<li>읽기는 배경지식 및 글의 단서를 활용하여 의미를 이해하는 상호작용적 독해 능력을 측정하고, 쓰기는 글의 내용을 이해하고 이를 문장으로 요약하거나 문단을 구성할 수 있는 능력을 간접적으로 측정한다.</li>
										</ul>
									</td>
									<td class="txt-left pl5">‘영어Ⅰ’과 ‘영어Ⅱ’ 과목을 바탕으로 하여 다양한 소재의 지문과 자료를 활용하여 출제하였다.
									</td>
								</tr>
								<tr>
									<th>한국사 / 20문항</th>
									<td class="pl5">
										<ul class="list-03">
											<li>한국사에 대한 기본 소양을 갖추었는지를 평가하기 위해 핵심적이고 중요한 내용을 중심으로 평이하게 출제하였다.</li>
											<li>단원 시대별로 편중되지 않고 고르게 교육과정의 핵심 내용 위주로 출제하여 학교 수업을 통해 교육과정을 충실히 이수한 학생이라면 높은 등급을 받을 수 있도록 출제하였다.</li>
										</ul>
									</td>
									<td class="txt-left pl5">한국사 교육과정의 범위와 수준에 맞추었다. 문항의 소재는 9종 교과서에 공통으로 수록되어 있는 내용이 활용되었다.
									</td>
								</tr>
								<tr>
									<th>사회탐구 / 과목별 20문항</th>
									<td class="txt-left pl5">
										교과목의 특성에 따라 윤리적, 지리적, 역사적, 사회적 상황 등을 소재로 제시하고, 인문&middot;사회과학적 접근 방법을 사용하여 대학 교육을 받는데 필요한 인문&middot;사회과학적 탐구 능력과 사회 문제 해결을 위한 창의적 사고력을 측정하는 문항을 출제하였다.

									</td>
									<td class="txt-left pl5">
										‘생활과 윤리’, ‘윤리와 사상’, ‘한국지리’, ‘세계지리’, ‘동아시아사’, ‘세계사’, ‘경제’, ‘정치와 법’, ‘사회&middot;문화’ 등 9개 선택 과목의 2015 개정 교육과정 범위와 수준에 맞추었다. 문항의 소재는 교육과정이나 교과서 및 이와 연계된 일상생활적인 내용, 기타 시사적인 내용 등이 활용되었다.

									</td>
								</tr>
								<tr>
									<th>과학탐구 / 과목별 20문항</th>
									<td class="txt-left pl5">대학 교육을 이수하는 데 필요한 과학 개념에 대한 이해와 적용 능력 및 과학적 탐구 사고력을 2015 개정 고등학교 과학과 교육과정의 내용과 수준에 따라 다양한 탐구 상황에서 측정할 수 있도록 문항을 출제하였다.

									</td>
									<td class="txt-left pl5">선택과목인 ‘물리학Ⅰ’, ‘화학Ⅰ’, ‘생명과학Ⅰ’, ‘지구과학Ⅰ’, ‘물리학Ⅱ’, ‘화학Ⅱ’, ‘생명과학Ⅱ’, ‘지구과학Ⅱ’의 8개 과목이 출제 범위에 해당한다. 이들 과목에서 다루는 주요 개념을 고루 평가할 수 있도록 출제하였다.

									</td>
								</tr>
							</tbody>
						</table> -->
					</div>
				</div>
			</div>
		</div>
	</div>

</div>
<!-- //mock-wrap -->

<!--  공통 하단 //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->

<script>

	$(document).ready(function(){
		//수능 모의체험 혜택 탭
		$(".tabs").click(function(){
			var click = $(this).attr("data-tab");
			$(".tabs").removeClass("on");
			$(".dis").removeClass("on");
			$(this).addClass("on");
			$("#"+click).addClass("on");
		});
	});

</script>
<script src="/intro/2023/csat/ui.js"></script>
</body>
</html>