<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<html lang="ko">
<head>
	<meta charset="euc-kr" />
	<title>성적상담 - 성적상담시스템</title>
	<!-- #include virtual = "/include/head.asp" -->
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
		var data, options, chart;

		google.charts.load('current', {'packages':['corechart']});
		google.charts.setOnLoadCallback(getChart);

		function getChart() {
			var PT_TYPE = $(":input:radio[name=PT_TYPE]:checked").val();
			var SUBJECT = $('.subTabList .on a').html();	

			$.ajax({
				method: "POST",
				url: "chartdata_ax.asp",
				contentType: 'application/x-www-form-urlencoded; charset=euc-kr',
				data: {"rms_mem_cd": "<%=nRmsMemCd%>" , "pt_type": PT_TYPE, "subject": escape(SUBJECT)},
				error: function(data) {
					alert("그래프 데이터 로드에 실패 하였습니다.");
				},
				success : function(data) {
					drawChart(data);
				}
			});
		}

		function drawChart(sData) {
			var PT_TYPE = $(":input:radio[name=PT_TYPE]:checked").val();
			var SUBJECT = $('.subTabList .on a').html();	
			var PT_TYPE_NM, VAL_MIN, VAL_MAX;

			if (PT_TYPE == "SPT") {
				PT_TYPE_NM = "표준점수";
			} else if (PT_TYPE == "PPT") {
				PT_TYPE_NM = "백분위";
			} else if (PT_TYPE == "GPT") {
				PT_TYPE_NM = "등급";
			}

			switch (SUBJECT) {
				case "총점":
					if (PT_TYPE == "SPT") {
						VAL_MIN = 160;
						VAL_MAX = 450;
					} else if (PT_TYPE == "PPT") {
						VAL_MIN = 120;
						VAL_MAX = 300;
					} else if (PT_TYPE == "GPT") {
						VAL_MIN = 0;
						VAL_MAX = 30;
					}
					break;
				case "국어":
				case "수학":
				case "영어":
					if (PT_TYPE == "SPT") {
						VAL_MIN = 90;
						VAL_MAX = 150;
					} else if (PT_TYPE == "PPT") {
						VAL_MIN = 40;
						VAL_MAX = 100;
					} else if (PT_TYPE == "GPT") {
						VAL_MIN = 0;
						VAL_MAX = 10;
					}
					break;
				case "탐구1":
				case "탐구2":
				case "한국사":
					if (PT_TYPE == "SPT") {
						VAL_MIN = 40;
						VAL_MAX = 80;
					} else if (PT_TYPE == "PPT") {
						VAL_MIN = 40;
						VAL_MAX = 100;
					} else if (PT_TYPE == "GPT") {
						VAL_MIN = 0;
						VAL_MAX = 10;
					}
					break;
			
				default:
					break;
			}

			data = new google.visualization.DataTable();
			data.addColumn('string', '시험이름');
			data.addColumn('number', PT_TYPE_NM);
			data.addColumn({type: 'string', role: 'annotation'});

			sData.split("||").forEach(function (element) {
				data.addRows([eval(element)]);
			});

			options = {
				legend: { position: 'bottom' },
				height: 500,
				colors: ['#de325a'],
				vAxis: {
					viewWindowMode:'explicit',
					viewWindow: {min: VAL_MIN, max: VAL_MAX}
				}
			};

			chart = new google.visualization.LineChart(document.getElementsByClassName('subTabConList on')[0]);

			chart.draw(data, options);
		}

		$(window).resize(function() {			
			chart.draw(data, options);
		});
    </script>
</head>
<body>
<div class="wrap">
	<header class="sub">
		<a href="/index.asp" class="btnPrev">성적조회</a>
		
		<!-- #include virtual = "/include/header.asp" -->
		<!-- <ul class="info">
			<li class="student"><%=gLoginMemName%>(<%=nRmsMemCd%>)</li>
		</ul>
		<a href="javascript:void(0);" onclick="javascript:location.href='<%=header_addr2%>/russel/member/logout.asp?rtnUrl=<%=header_addr2%>';" class="btnClose btnLogout">로그아웃</a> -->
	</header>
	<section class="sub">
		<div class="inBox inBoxBtm">
			<div class="tabCommon">
				<ul class="tabList">
					<li><a href="result.asp">성적조회</a></li>
					<li class="on"><a href="consulting.asp">성적상담</a></li>
				</ul>
				<div class="tabCon">
					<div class="tabConList">
						<h2 class="blind">성적조회</h2>
					</div>
					<div class="tabConList">
						<!-- 타이틀 부분 -->
						<div class="title-wrap">
							<h3 class="title">성적추이</h3>
							<div class="txt-info">
								<!--
								<span class="line-sample line-b">백분위</span>
								<span class="line-sample line-y">등급</span>
								-->
								<input type="radio" name="PT_TYPE" id="PT_SPT" value="SPT" onChange="javascript:getChart();" checked/>
								<label for="PT_SPT">표준점수</label>
								<input type="radio" name="PT_TYPE" id="PT_PPT" value="PPT" onChange="javascript:getChart();"/>
								<label for="PT_PPT">백분위</label>
								<input type="radio" name="PT_TYPE" id="PT_GPT" value="GPT" onChange="javascript:getChart();"/>
								<label for="PT_GPT">등급</label>
							</div>
						</div>
						<!-- //타이틀 부분 -->
						<!-- 그래프 영역 -->
						<div class="subtabBox">
							<ul class="subTabList">
								<li class="on"><a href="#none">총점</a></li>
								<li><a href="#none">국어</a></li>
								<li><a href="#none">수학</a></li>
								<li><a href="#none">영어</a></li>
								<li><a href="#none">탐구1</a></li>
								<li><a href="#none">탐구2</a></li>
								<li><a href="#none">한국사</a></li>
							</ul>
							<div class="subTabCon" style="height:500px;width:100%">
								<div class="subTabConList on" id="curve_chart">
								</div>
								<div class="subTabConList">
								</div>
								<div class="subTabConList">
								</div>
								<div class="subTabConList">
								</div>
								<div class="subTabConList">
								</div>
								<div class="subTabConList">
								</div>
								<div class="subTabConList">
								</div>
							</div>
						</div>
						<!-- //그래프 영역 -->
						<h3 class="title">성적상담</h3>
						<div class="tb-type2">
							<table summary="이 표는 미수령현황을 제공하며 교재명, 수령여부로 구성되어있습니다.">
								<caption>미수령현황</caption>
								<colgroup>
									<col style="width:10%;">
									<col style="width:15%;">
									<col style="width:55%;">
									<col style="width:20%;">
								</colgroup>
								<thead>
									<tr>
										<th>회차</th>
										<th>날짜</th>
										<th>제목</th>
										<th>상태</th>
									</tr>
								</thead>
								<tbody><%
									strSQL = ""
									strSQL = strSQL & " SELECT		ROW_NUMBER() OVER (ORDER BY TM_REG_DT DESC) AS ROW_NO, TM_TRY_CD, CONVERT(CHAR(10), TM_REG_DT, 102) AS TRY_DT, A.TM_TRY_NM "
									strSQL = strSQL & " 			, CASE WHEN (SELECT COUNT(*) FROM AMS_TRY_CONSULT_SUB (NOLOCK) WHERE TCS_TRY_CD = A.TM_TRY_CD AND TCS_MEM_CD = B.MS_MEM_CD) = 0 THEN 'N' ELSE 'Y' END AS FINISH_YN"
									strSQL = strSQL & " FROM		AMS_TRY_MAS A (NOLOCK) "
									strSQL = strSQL & " INNER JOIN	AMS_MEM_SCORE B (NOLOCK) ON A.TM_TRY_CD = B.MS_TRY_CD "
									strSQL = strSQL & " INNER JOIN	AMS_TRY_SUMMARY C (NOLOCK) ON A.TM_TRY_CD = C.TS_TRY_CD "
									strSQL = strSQL & " LEFT JOIN	AMS_TRY_CONSULT D (NOLOCK) ON A.TM_TRY_CD = D.TC_TRY_CD AND B.MS_MEM_CD = D.TC_MEM_CD "
									strSQL = strSQL & " WHERE		YEAR(TM_REG_DT) = YEAR(GETDATE()) "
									strSQL = strSQL & " AND			B.MS_MEM_CD = '" & nRmsMemCd & "' "
									strSQL = strSQL & " ORDER BY	TM_REG_DT DESC "

									Set RS = amsobjdb.sqlQuery(strSQL,3)

									If RS.EOF <> True Then
										DO WHILE NOT RS.EOF %>
											<tr>
												<td><%=RS("ROW_NO")%></td>
												<td><%=RS("TRY_DT")%></td>
												<td class="con"><a href="#" class="subject" onclick="fnc_pop('<%=RS("TM_TRY_CD")%>');return false;"><%=RS("TM_TRY_NM")%></a></td><%
												if RS("FINISH_YN") = "Y" THEN %>
													<td class="fc-b">완료</td><%
												else %>
													<td class="fc-r">미상담</td><%
												end if %>
											</tr>
											<% RS.MoveNext
                                        LOOP
                                    END IF

									RS.close
                                    Set RS = Nothing %>
									<!--
									<td class="fc-b">완료</td>
									<td class="fc-r">미상담</td>
									-->
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
<!-- footer -->
<!-- #include virtual = "/include/footer.asp" -->
<!-- //footer -->
<script>
	function fnc_pop(try_cd){
		window.open("popConsult.asp?try_cd="+try_cd,"","width=1000, height=800, resizable=no, scrollbars=yes, status=no, left=50px, top=100px");
	}
</script>
</body>
</html>
