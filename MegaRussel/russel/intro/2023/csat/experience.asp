<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<%
    rtnUrl = Request.Servervariables("PATH_INFO")

	' surveyFlag = true
	' If curYmdhmin >= 202011160000 Then
    '     surveyFlag = false
    ' End If

    ' flag = 1

	' If curYmdhmin < 202111180800 Then
	' 	flag = 2
	' elseif curYmdhmin >= 202111180800 Then '응시하기 버튼 클릭시 응시 페이지 이동
	' 	flag = 3
	' End if

	apply = true
	IF curYmdhmin >= 202311151400 Then '신청/수정 마감
		apply = false
	End If

	strSql = ""
	strSql = strSql &" SELECT EM_NUM "
	strSql = strSql &" FROM MS_EVTRUSSEL_MAS WITH(NOLOCK) "
	strSql = strSql &" WHERE EM_TITLE LIKE '%2024 수능 실전%' AND EM_DEL_FLG ='N' "

	Set objRs = russelobjdb.sqlQuery(strSql, 3)
	If Not (objRs.EoF And objRs.BoF) Then
		EM_NUM = objRs(0)
	ELSE
		EM_NUM = 0 'EM_NUM이 없는 경우 아래 카운트 수 체크 시 오류 발생하여 해당 부분
	End If
	objRs.close
	Set objRs = Nothing

	'기본 카운트 설정 수
	strSql = ""
	strSql = strSql & " SELECT SUM(CONVERT(int,ED_COUNT)) AS CNT "
	strSql = strSql & " FROM MS_EVTRUSSEL_DTL WITH(NOLOCK) "
	strSql = strSql & " WHERE ED_EM_NUM = " & EM_NUM

	Set objRs = russelobjdb.sqlQuery(strSql, 1)
	If Not (objRs.EoF And objRs.BoF) Then
		addCnt = objRs("CNT")
	end if
	objRs.close
	Set objRs = Nothing

	'실제 접수자
	strSql = ""
	strSql = strSql & " SELECT COUNT(*) AS REALCNT "
	strSql = strSql & " FROM MS_EVTRUSSEL_DTL WITH(NOLOCK) "
	strSql = strSql & " WHERE ED_EM_NUM = '"&EM_NUM&"' AND ED_MEM_TYPE = '1' "

	Set objRs = russelobjdb.sqlQuery(strSql, 1)
	If Not (objRs.EoF And objRs.BoF) Then
		realCnt = objRs("REALCNT")
	end if
	objRs.close
	Set objRs = Nothing

	function format(ByVal szString, ByVal Expression)
        If len(szString) < len(Expression) Then
            format = left(Expression, len(Expression)-len(szString)) & szString
        Else
            format = szString
        End If
    End function

    If isnull(cnt) Then
        cnt = realCnt
    End If

	cnt = addCnt + realCnt

	applyCnt  = format(cnt, "0000")

	If gLoginOk = True Then
        strSql = ""
        strSql = strSql &" SELECT count(*) as cnt "
        strSql = strSql &" FROM MS_EVTRUSSEL_DTL WITH(NOLOCK) "
        strSql = strSql &" WHERE ED_EM_NUM = '"&EM_NUM&"' "
	    strSql = strSql &"      AND ED_MEM_ID = '"&gLoginMemId&"'"
		strSql = strSql &"      AND ED_MEM_TYPE = '1'"

		Set objRs = russelobjdb.sqlQuery(strSql, 3)
        If Not (objRs.EoF And objRs.BoF) Then
            applyStatus = objRs(0)
        End If
        objRs.close
        Set objRs = Nothing

    Else
        applyStatus = 0
    End If

%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="" />
    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
    <meta name="keywords" content="" />
	<meta name="description" content="" />
	<link rel="stylesheet" type="text/css" href="/intro/2023/csat/style.css" />
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
	<!--#include virtual="/intro/2023/csat/visual.asp" -->
	<!-- //visual -->


	<div class="bt-tab" id="report">
		<div class="inner">
			<span class="on">러셀 수능 실전 모의체험</span>
			<span onclick="location.href='./apply.asp';">성적 분석 리포트</span>
		</div>
	</div>

	<!-- <div class="bt-tab">
		<div class="in">
			<a href="javascript:void(0)" class="on"><img src="<%=Application("img_path_russel")%>/notice/2021/mocktest/bt_tab01.jpg" alt="신청하기" /></a>
			<a href="exam.asp"><img src="<%=Application("img_path_russel")%>/notice/2021/mocktest/bt_tab02.jpg" alt="응시하기" /></a>
			<a href="<%=sReportTabLink%>"><img src="<%=Application("img_path_russel")%>/notice/2021/mocktest/bt_tab03.jpg" alt="성적분석 리포트" /></a>
		</div>
	</div> -->

	<!-- tab 01 -->
	<div class="cont-box on">
		<!-- cont01 -->
		<div class="cont01">
			<div class="inner">
				<p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/tit01.jpg" alt="실제 수능 당일, 실제 수능의 현장감을 그대로 전국 러셀 학원 동시 시행" /></p>
				<!-- 지도 loop -->
				<div class="map-wrap">
					<ul class="map-txt">
						<li class="gn on">러셀 강남</li>
						<li class="dc">러셀 대치</li>
						<li class="md">러셀 목동</li>
						<li class="bc">러셀 부천</li>
						<li class="bd">러셀 분당</li>
						<li class="yt">러셀 영통</li>
						<li class="jg">러셀 중계</li>
						<li class="pc">러셀 평촌</li>
						<li class="dg">러셀 대구</li>
						<li class="ct">러셀 센텀</li>
						<li class="us">러셀 울산</li>
						<li class="core-gj">러셀CORE 광주</li>
						<li class="core-dj">러셀CORE 대전</li>
						<li class="core-wj">러셀CORE 원주</li>
						<li class="core-jj">러셀CORE 전주</li>
						<li class="core-cw">러셀CORE 창원</li>
						<li class="core-cj">러셀CORE 청주</li>
					</ul>
					<ul class="map-img">
						<li class="gn on">러셀<br>
							강남</li>
						<li class="dc">러셀<br>
							대치</li>
						<li class="md">러셀 목동</li>
						<li class="bc">러셀 부천</li>
						<li class="bd">러셀 분당</li>
						<li class="yt">러셀 영통</li>
						<li class="jg">러셀 중계</li>
						<li class="pc">러셀 평촌</li>
						<li class="dg">러셀 대구</li>
						<li class="ct">러셀 센텀</li>
						<li class="us" style="height: 28px;">러셀 울산</li>
						<li class="core-gj">러셀CORE 광주</li>
						<li class="core-dj">러셀CORE 대전</li>
						<li class="core-wj">러셀CORE 원주</li>
						<li class="core-jj">러셀CORE 전주</li>
						<li class="core-cw">러셀CORE <br>
							창원</li>
						<li class="core-cj">러셀CORE 청주</li>
					</ul>
				</div>
				<!-- //지도 loop -->
				<div class="map-banner">
					<img src="<%=Application("img_path_russel")%>/intro/2023/csat/map_banner.jpg" alt="집에서 가까운 러셀학원 어디서든 2024 수능 실전 모의체험이 가능합니다. 학원 위치 자세히 보기"  usemap="#bannerLink"/>
					<map name="bannerLink">
						<area shape="rect" coords="794,44,1081,104" href="javascript:void(0)" onclick="fn_eventGo('./pop_map.asp')">
				   </map>
				</div>
			</div>
		</div>
		<!-- //cont01 -->

		<!-- cont02 -->
		<div class="cont02">
			<p><img src="<%=Application("img_path_russel")%>/intro/2023/csat/tit02.jpg" alt="러셀 수능 실전 모의체험 미리보기" /></p>
			<div class="inner02">
				<p><img src="<%=Application("img_path_russel")%>/intro/2023/csat/q01_tit.jpg" alt="수능 실전 모의체험, 어떻게 치러지나요?" /></p>
				<p class="mt60"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/q01_img01.jpg" alt="" /></p>
				<p class="mt15"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/q01_img02.jpg" alt="" /></p>
			</div>
		</div>
		<!-- //cont02 -->

		<!-- cont03 -->
		<div class="cont03">
			<div class="inner">
				<p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/q02_tit.jpg" alt="수능 실전 모의체험은 어떤 의미를 갖나요?" /></p>
				<p class=""><img src="<%=Application("img_path_russel")%>/intro/2023/csat/q02_img01.jpg" alt="" /></p>
				<p class="r-txt">* 2023 러셀 수능 실전 모의체험 이벤트 내 후기 중 일부 내용을 발췌하였습니다.
				</p>
				<p class="mt70 mb40"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/q02_stit.jpg" alt="수능 실전 모의체험 성적 분석 리포트" /></p>
				<p class=""><img src="<%=Application("img_path_russel")%>/intro/2023/csat/q02_img02.jpg" alt="" /></p>
			</div>
		</div>
		<!-- cont03 -->

		<!-- cont04 -->
		<div class="cont04">
			<p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/q03_tit.jpg" alt="수능 실전 모의체험 응시자에게는 어떤 혜택이 있나요? " /></p>
			<div class="inner02">
				<div class="tab-benefit">
					<a href="#" class="on"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/cont04_tab01.jpg" alt="특별 장학 혜택" /></a>
					<a href="#"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/cont04_tab02.jpg" alt="응시생 대상 설명회" /></a>
					<a href="#"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/cont04_tab03.jpg" alt="성적 분석 리포트" /></a>
				</div>

				<!-- 특별 장학 혜택 -->
				<div class="cont-benefit pb80 on">
					<img src="<%=Application("img_path_russel")%>/intro/2023/csat/cont04_tab_img01.jpg" />
				</div>

				<!-- 응시생 대상 설명회 -->
				<div class="cont-benefit pb15">
					<img src="<%=Application("img_path_russel")%>/intro/2023/csat/cont04_tab_img02.jpg" />
					<p class="r-txt mt50">* 설명회 일정 및 상세 내용은 학원마다 상이할 수 있으며, 학원별로 안내드립니다.</p>
				</div>

				<!-- 성적 분석 리포트 -->
				<div class="cont-benefit pb60">
					<p class="mb30"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/cont04_tab_img03.jpg" alt="" /></p>
					<div class="swiper-container slide-report">
						<div class="swiper-wrapper">
						<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/cont04_tab_slide01.jpg" /></div>
						<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/cont04_tab_slide02.jpg" /></div>
						<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/cont04_tab_slide03.jpg" /></div>
						</div>
						<!-- Add Arrows -->
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
					</div>
				</div>

			</div>
		</div>
		<!-- cont04 -->

		<!-- cont05 -->
		<div class="cont05" id="scrollArea">
			<p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/tit03.jpg" alt="러셀 수능 실전 모의체험 현장 & 온라인 신청 및 응시 안내" /></p>
			<div class="inner02">
				<table class="mocktest-table" id="register-info">
					<colgroup>
						<col style="width:10%">
						<col style="width:auto">
					</colgroup>
					<thead class="main-thead">
						<tr>
							<th class="fz22">구분</th>
							<th class="offline"><span>현장</span> 응시 안내</th>
						</tr>
					</thead>
					<tbody class="main-tbody">
						<tr>
							<th>대상</th>
							<td class="txt-left">실제 수능 시험을 미리 경험해보고 싶은 현재 고2 수험생
								<br><span class="gray">※ 현재 중3, 고1 학생도 신청 가능하며, 현장에서는 응시장소에서 진행합니다. <strong class="gray">(*러셀 대치는 고2만 신청 가능합니다.)</strong></span>
							</td>
						</tr>
						<tr>
							<th>일시</th>
							<td class="txt-left">
								<strong>2023년 11월 16일(목)  오후 2시 30분</strong> <span class="red">※ 11월 15일(수) 오후 2시 신청마감 ※</span>
							</td>
						</tr>
						<tr>
							<th>응시료</th>
							<td class="txt-left">전액 지원</td>
						</tr>
						<tr>
							<th>신청 방법</th>
							<td>
								<ul class="list-03">
									<li>러셀 학원 사이트 가입 후 <u>온라인으로만 신청 가능</u>합니다. <a href="javascript:fn_eventGo('write');">[신청하기]</a></li>
									<li>러셀 학원 사이트 신규 회원 신청안내 : <a <%if gLoginOk = true then%>href="javascript:void(0)" onClick="alert('이미 로그인하였습니다.')" <%else%> href="https://campus.megastudy.net/member/join.asp" <%end if%>>회원가입</a> → 로그인 → [신청하기] 버튼 클릭 → 신청서 작성 → 제출 → 신청 완료</li>
								</ul>
								<ul class="list-02">
									<li>응시장소 및 선택과목 변경이 필요한 경우 상단 [신청 확인하기] 버튼을 클릭하여 <u class="red_txt">11/15(수) 오후 2시까지 변경 가능합니다.</u>
									</li>
									<li><u class="red_txt">응시하고자 하는 학생의 ID로 신청</u>해야 현장 응시 및 성적처리 후 성적 분석 리포트 열람이 가능합니다.</li>
									<li><u class="red_txt">부모님 또는 타인의 ID로 신청할 경우 현장 응시가 제한</u>되거나 정상적인 모의체험 이용이 불가합니다.</li>
								</ul>
							</td>
						</tr>
						<tr>
							<th>장소</th>
							<td class="txt-left">러셀 강남, 대치, 목동, 부천, 분당, 영통, 중계, 평촌, 대구, 센텀, 울산<br>러셀CORE 광주, 대전, 원주, 전주, 창원, 청주
							<br><a href="javascript:;" onclick="MM_openBrWindow('/intro/2023/csat/pop_map.asp','popup_map','width=735,height=700,scrollbars=yes');">[장소 자세히 보기]</a></td>
						</tr>
						<tr>
							<th>준비물</th>
							<td class="txt-left">신분증, 컴퓨터용 사인펜, 개인 도시락(저녁)</td>
						</tr>
						<tr>
							<th>시험 시간표</th>
							<td class="test-schedule" style="padding: 20px 0 20px 15px;">
							<!-- sub table -->
							<table class="sub-table">
								<colgroup>
									<col style="width:20%">
									<col style="width:20%">
									<col style="width:25%">
									<col style="width:35%">
								</colgroup>
								<thead class="sub-thead">
									<tr>
										<th>교시</th>
										<th>과목</th>
										<th>문항 수</th>
										<th>시험시간</th>
									</tr>
								</thead>
								<tbody class="sub-tbody">
									<tr>
										<td><strong>1교시</strong></td>
										<td>국어</td>
										<td>45문항</td>
										<td>14:30 ~ 15:50 (80분)</td>
									</tr>
									<tr>
										<td><strong>2교시</strong></td>
										<td>수학</td>
										<td>30문항</td>
										<td>16:20 ~ 18:00 (100분)</td>
									</tr>
									<tr>
										<td colspan="3"><strong>저녁시간</strong></td>
										<td>18:00 ~ 19:00 (60분)</td>
									</tr>
									<tr>
										<td><strong>3교시</strong></td>
										<td>영어</td>
										<td>45문항</td>
										<td>19:20 ~ 20:30 (70분)</td>
									</tr>
									<tr>
										<td><strong>4교시</strong></td>
										<td>탐구</td>
										<td>각 20문항 (2과목)</td>
										<td>21:00 ~ 22:00 (60분)</td>
									</tr>
								</tbody>
							</table>
							<!-- //sub table -->
							</td>
						</tr>
						<tr>
							<th>응시 후<br>
							성적 공개 일정</th>
							<td>
								<ul class="list-03">
									<li><strong>11/17(금)</strong> : 성적분석 리포트 내 <strong>등급컷, 해설강의</strong> 오픈</li>
									<li><strong>11/22(수)</strong> : 성적분석 리포트 내 <strong>가채점 성적통지표</strong> 오픈</li>
									<li><strong>12/12(화)</strong> : 성적분석 리포트 내 <strong>실채점 성적통지표</strong> 오픈</li>
								</ul>
								<ul class="list-02">
									<li>위 일정은 학원 사정에 따라 변경 될 수 있습니다.
									</li>
								</ul>
							</td>
						</tr>
						<tr class="notice">
							<th>유의사항</th>
							<td>
								<ul class="list-03">
									<li>시험장에는 <strong>오후 2시까지 입실</strong>해주세요.</li>
									<li>입실 후 시험장 외부 출입이 불가합니다. (저녁식사 지참 必)</li>
									<li>한국사는 별도 시험 진행없이, 시험지만 제공됩니다.</li>
									<li>학원별 예약 인원 초과 시, 사전 마감될 수 있습니다.</li>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>
				<p><a href="https://russel.megastudy.net/intro/2023/winter/index.asp" target="_blank"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/banner_winter.jpg" alt="2024 러셀 윈터스쿨" /></a></p>
			</div>
		</div>
		<!-- //cont05 -->

		<div class="campus-info">
			<div class="tit"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/tab02_tit04.jpg" alt="러셀 학원 문의/상담 안내" /></div>
			<!-- 학원별 신청 안내 -->
			<!--#include virtual="/common/inc/campus_list_basic.asp" -->
			<!-- //학원별 신청 안내 -->
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


function fn_eventGo(flg){

    var flg = flg;

	if(flg == "write"){
        <% If gLoginOk = false Then %>
            alert("로그인 후 신청 가능합니다.");
			location.href="/russel/member/login.asp?rtnUrl=%2Fintro%2F2023%2Fcsat%2Fapply%2Easp%3F"
			return;
		<% End If %>
    	if ('<%=applyStatus%>' == "0"){
            alert("반드시 응시하고자 하는 학생의 ID로 신청하시기 바랍니다.");
            window.open('/intro/2023/csat/pop_apply.asp','popup_mock','scrollbars=yes,width=720,height=900');
            return;
        } else {
            window.open('/intro/2023/csat/pop_view.asp','popup_mock','scrollbars=yes,width=720,height=900');
            return;
        }
    }
	else if(flg == "modify"){
		<% If gLoginOk = false Then %>
            alert("로그인 후 이용 가능합니다.");
			location.href="/russel/member/login.asp?rtnUrl=%2Fintro%2F2023%2Fcsat%2Fapply%2Easp%3F"
			return;
		<% End If %>

		if ('<%=applyStatus%>' == "0"){
			alert("수능 실전 모의체험 신청 확인은 사전 신청자만 이용가능합니다.");
			return;
        } else {
            window.open('/intro/2023/csat/pop_view.asp','popup_mock','scrollbars=yes,width=720,height=900');
            return;
        }
	}
	else if(flg == "end"){
        alert("마감되었습니다.");
    }

	window.open(flg ,'popup_mock','scrollbars=yes,width=720,height=900');
}

</script>
<script src="/intro/2023/csat/ui.js"></script>
</body>
</html>