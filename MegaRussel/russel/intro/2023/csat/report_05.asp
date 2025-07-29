<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<%
    rtnUrl = Request.Servervariables("PATH_INFO")
	
	' 이벤트 마감일(2023-12-12 까지)
	nDT_event_end = 202312130000

	' 이벤트 기간 체크
	sEvtImgClsNm = ""		'이벤트 IMG class
	If curYmdhmin > nDT_event_end Then
		sEvtImgClsNm = " on"
	End If
	
	apply = true
	IF curYmdhmin >= 202311151400 Then '신청/수정 마감
		apply = false
	End If

	If InStr(request.servervariables("server_name"),"dev.megastudy.net") > 0 Then
		ED_EM_NUM_EXAM = 9084 '개발서버
	else
		ED_EM_NUM_EXAM = 116
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

	
	if gLoginMemId = "hgyttgjm0713" or gLoginMemId = "sbs420808" or gLoginMemId = "moongawon" or gLoginMemId = "huiwon522" or gLoginMemId = "jh20060905" or gLoginMemId = "aqaqx2" then '학원 오프라인 추가자 접근 가능하게
		exam_cnt = 1
	end if
	
	' if exam_cnt = 0 then
	' 	call js_redirect("/intro/2023/csat/experience.asp", "러셀 수능 모의체험 신청 학생만 확인 가능합니다.")
	' end if 
	
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
			<span onclick="location.href='./experience.asp';">러셀 수능 실전 모의체험</span>
			<span onclick="location.href='./apply.asp';" class="on">성적 분석 리포트</span>
		</div>
	</div>
	
	<!-- tab 02 -->
	<div class="cont-box on">
		<div class="cont06">
			<div class="inner pb0">
				<p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/tab02_tit01.png" alt="성적 분석 리포트" /></p>
				<ul class="menu-list">
					<li><a href="apply.asp#report">성적 통지표</a></li>
					<li><a href="report_02.asp#report">등급컷</a></li>
					<li><a href="report_03.asp#report">성적 분석</a></li>
					<!-- <li><span href="javascript:void(0)" onclick="alert('11/22(수) 공개됩니다.');">성적 분석</span></li> -->
					<li><a href="http://www.megastudy.net/Entinfo/2024_jiwon/exam/exam_common_new/Explain/Explain_ex.asp?seq=319" target="_blank">해설강의</a></li>
					<li class="on"><a href="report_05.asp#report">후기 이벤트</a></li>
				</ul>
			</div>
			<div class="tab-wrap">
				<div class="tab-content on event">
					<!-- event-wrap -->
					<div class="event-wrap">
						<div class="inner">
							<!-- event-info -->
							<div class="event-info">
								<div class="tit"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/tit_event.png" alt="2022 러셀 수능 실전 모의체험 후기 이벤트" /></div>
								<p class="s-txt">
									러셀 학원에서 수능 실전 모의체험 응시 후 <br>
									<strong>수능 실전 모의체험 후기와 느낀 점을 정성껏 남겨주신 20명을 추첨하여 <br>
									GS25 모바일 상품권(3천원권)</strong>을 선물로 드립니다.
								</p>
								<div class="box-gift">
									<dl class="g-txt">
										<dt><img src="<%=Application("img_path_russel")%>/intro/2023/csat/stit_event01.jpg" alt="참여 기간" /></dt>
										<dd>11월 17일(금) ~ 12월 12일(화)</dd>
										<dt><img src="<%=Application("img_path_russel")%>/intro/2023/csat/stit_event02.jpg" alt="참여 대상" /></dt>
										<dd><strong>2024학년도 러셀 수능 실전 모의체험 응시자 누구나</strong></dd>
										<dt><img src="<%=Application("img_path_russel")%>/intro/2023/csat/stit_event03.jpg" alt="참여 방법" /></dt>
										<dd><span class="t-s">STEP 1</span> 러셀 학원에서 수능 실전 모의체험을 응시한다.<br>
											<span class="t-s">STEP 2</span> 회원 정보를 최신으로 업데이트한다. <a href="https://russel.megastudy.net/russel/mypage/student/my_info.asp">[회원정보 수정]</a><br>
											<span class="t-s">STEP 3</span> 수능 실전 모의체험을 본 후기와 느낀 점을 <br><span style="padding-left:67px">댓글로 남기면 참여완료!</span></dd>
										<dt><img src="<%=Application("img_path_russel")%>/intro/2023/csat/stit_event04.jpg" alt="당첨자 발표" /></dt>
										<dd>12월 19일(화) (당첨자 개별 안내)</dd>
									</dl>
									<div class="g-img">
										<img src="<%=Application("img_path_russel")%>/intro/2023/csat/img_planer.jpg" alt="" />
									</div>
								</div>
							</div>
							<!-- //event-info -->

							<!-- box-input -->
							<div class="box-input">
								<div class="in">
									<p><input type="checkbox" id="privacyAgr_02" name="privacyAgr" value="Y"/> <label for="privacyAgr_02">이벤트 당첨 상품 발송을 위한 개인정보 수집·이용 동의 (필수)</label></p>
									<p>
										<textarea name="" id="comments" cols="30" rows="10" placeholder="러셀 수능 실전 모의체험에 참여한 소감과 느낀 점을 정성껏 남겨주세요!&#13;&#10;최소 30자 이상 작성해 주세요."></textarea><input type="button" value="참여하기" onclick="fncEvtGO()"/>
									</p>
								</div>
								<p class="tit-notice">※ 유의사항 안내</p>
								<ul class="list-notice">
									<li>- 당첨자 발표는 12월 19일(화) 당첨자에 한해 개별 안내됩니다.</li>
									<li>- 당첨 상품은 이벤트 참여 시, 입력한 휴대폰 번호로 기프티콘이 발송됩니다.</li>
									<li>- 휴대폰 번호 미기입 시 당첨자 선정에서 제외되며, 오기입한 경우 재발송이 불가하므로 기프티콘 수령을 위해 <strong>12/18(월)까지 회원 정보를 꼭 업데이트</strong>해 주세요. <a href="https://russel.megastudy.net/russel/mypage/student/my_info.asp" target="_blank">[회원정보 수정]</a></li>
									<li>- 이벤트 참여 혜택은 ID, 연락처 당 1회만 제공됩니다.</li>
									<li>- 당첨자는 러셀 수능 실전모의체험을 신청 후 응시 완료한 회원에 한해 선정되며, 신청 후 미응시한 회원은 당첨자 선정에서 제외됩니다.</li>
								</ul>
							</div>
							<!-- //box-input -->
							
							<!-- 이벤트종료 클래스 on 추가 시 display:none -->
							<div class="event-end <%=sEvtImgClsNm%>">
								<img src="<%=Application("img_path_russel")%>/notice/2021/mocktest/ico_event_end.png" alt="이벤트종료" />
							</div>
							<!-- //이벤트종료 -->
						</div>
					</div>
					<!-- //event-wrap -->
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

function fncEvtGO(){

	<% If ValueCheck(gLoginOk) = False Or gLoginOk = False Then %>
		<%
			rtnUrl = Request.Servervariables("PATH_INFO")
			If Request.Servervariables("REQUEST_METHOD") = "GET" Then
				rtnUrl = rtnUrl & "?" & Request.Servervariables("QUERY_STRING")
			End If
		%>
			alert('로그인 후 이용가능합니다.');
			location.replace('/russel/member/login.asp?rtnUrl=<%=Server.URLEncode(rtnUrl)%>');
			return;
	<% Else %>
		<% If exam_cnt = 0 Then %>
			alert('러셀 수능 모의체험\n응시 학생만 참여 가능합니다.');
			return;
		<% Else %>
			var comments = $.trim($('#comments').val());
			var len = comments.length;
			//alert(len);
			if (len == 0){
				alert('응시후기를 입력하세요.');
				return;
			} else if (len < 30 ) {
				alert('최소 30자 이상 입력해주세요.');
				return;
			}
			//var privacyAgr = $("input:checkbox[name='NAME']").is(":checked");
			var privacyAgr = $('input:checkbox[name=privacyAgr]').is(':checked');
			if (!(privacyAgr)) {
				alert('개인정보 수집·이용에 동의해주세요.');
				$('#privacyAgr_02').focus();
				return;
			}
			var params = {
				mode:"reg",
				cmt:escape($.trim(comments))
			};
			//alert('ㅎㅎ');
			$.ajax({
				type: "POST",
				url : "./reg_json.asp",
				dataType: 'json',
				data: params
			}).done(function(data) {
				if(data.isok == 1) {
					alert(data.msg);
					$("#comments").val("");
					$("input:checkbox[id='privacyAgr_02']").prop("checked", false);
					//$('.popup-box').css('display','');
				} else {
					alert(data.msg);
				}
			})
		<% End If %>
	<% End If %>	
}	
</script>
<script src="/intro/2023/csat/ui.js"></script>
</body>
</html>