<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<%
	formFilter()
	
    If Not gLoginOk Then
        ScriptBegin
        ScriptWrite "alert('로그인 후 이용가능합니다.');"
        ScriptWrite "self.close();"
        ScriptEnd
		Response.End
    End If

	modify = true
	IF curYmdhmin >= 202411131400 Then '수정/취소 마감
		modify = false
	End If

    If gLoginOk = True Then
		
		strSql = ""
		strSql = strSql &" SELECT EM_NUM "
		strSql = strSql &" FROM MS_EVTRUSSEL_MAS WITH(NOLOCK) "
		strSql = strSql &" WHERE EM_TITLE LIKE '%2025 수능 실전 모의체험%' AND EM_DEL_FLG ='N'"

		Set objRs = russelobjdb.sqlQuery(strSql, 3)
		If Not (objRs.EoF And objRs.BoF) Then
			EM_NUM = objRs(0)
		End If
		objRs.close
		Set objRs = Nothing

	    strSql = ""
	    strSql = strSql & " SELECT ED_MEM_NM, ED_MEM_SEX, CONVERT(char(10), ED_MEM_BIRTH, 21), ED_HP_NO, ED_TEL_NO, ED_MEM_SCH, ED_CONTS, ED_MEM_GRADE, ED_FLD_1, ED_FLD_2, ED_FLD_3 ,ED_FLD_4, ED_ADDRESS "
	    strSql = strSql & " FROM MS_EVTRUSSEL_DTL WITH(NOLOCK)  "
	    strSql = strSql & " WHERE ED_EM_NUM = '"&EM_NUM&"'  "
		strSql = strSql & " 	AND ED_MEM_ID = '" & gLoginMemid & "' "
		strSql = strSql & " 	AND ED_MEM_TYPE = '1' "

	    Set objRs = russelobjdb.sqlQuery(strSql, 1)
	   
	    If Not (objRs.EoF And objRs.BoF) Then
		    SH_MEM_NM    	= objRs(0)
            SH_SEX    		= objRs(1)
            ArrSH_BIRTH  	= split(objRs(2),"-")
            SH_MEMTEL_NO 	= (Trim(objRs(3)))
            SH_PARTEL_NO 	= (Trim(objRs(4)))
            SH_SCH_NM    	= objRs(5)
            SH_EXAM_ADDR    = objRs(6)
            SH_GRD       	= objRs(7)
          	SH_SEL_KOR 		= objRs(8)
			SH_SEL_MATH 	= objRs(9)
            SH_SEL_TAM1  	= objRs(10)
            SH_SEL_TAM2  	= objRs(11)
			SH_ADDR      	= objRs(12)
	    End If
	    objRs.close
	    Set objRs = Nothing

	    If SH_MEM_NM = "" Then
		    %>
		    <script>
				alert("등록된 데이터가 없습니다.");
				self.close();
		    </script> 
		    <%
		    response.end
	    End If
    End If
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="title" content="메가패스" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->	
	<link rel="stylesheet" type="text/css" href="/common/css/2021/pop.css" />
</head>
<body>
<div class="popup">
	<h1 class="">2025 러셀 수능 실전 모의체험</h1>	
	<div class="pop-info">	
		<form name="form1" id="form1" method="post" action="pop_mock_RegEx.asp">	
			<input type="hidden" name="Mode" value="cancle">
		</form>
		
		<table class="pop-input-table view">
			<colgroup>
				<col width="170px">
				<col width="*">
			</colgroup>
			<tbody>
				<tr>
					<th><p>성명</p></th>
					<td><%=SH_MEM_NM%></td>
				</tr>
				<tr>
					<th><p>성별</p></th>
					<td><%=SH_SEX%></td>
				</tr>
				<tr>
					<th><p>생년월일</p></th>
					<td>
						<%=ArrSH_BIRTH(0)%>년
						<%=ArrSH_BIRTH(1)%>월
						<%=ArrSH_BIRTH(2)%>일
					</td>
				</tr>
				<tr>
					<th><p>학생 연락처</p></th>
					<td><%=SH_MEMTEL_NO%></td>
				</tr>	
				<tr>
					<th><p>학부모 연락처</p></th>
					<td><%=SH_PARTEL_NO%></td>
				</tr>
				<tr>
					<th><p>학교명</p></th>
					<td><%=SH_SCH_NM %></td>
				</tr>
				<tr>
					<th><p>응시장소</p></th>
					<td><%=SH_EXAM_ADDR %></td>
					<!--<td>
						<% If SH_EXAM_ADDR = "러셀강남" Then %>
							<div class="location on">
								<h4>강남 (러셀 강남학원)</h4>
								<p>서울 서초구 사임당로 178  이즈타워 2층<br>서울 서초구 서초동 1337-14 이즈타워 2층<br>강남역 신분당선 5번 출구(도보 5분)</p>
								<p>02-6954-1010</p>
								<div><img src="<%=Application("img_path_russel")%>/notice/2019/mocktest/gn_map.jpg" alt="" /></div>
							</div>
						
						<% ElseIf SH_EXAM_ADDR = "러셀대치" Then %>					
							<div class="location on" id="loc1" >
								<h4>대치 (러셀 대치학원)</h4>
								<p>서울시 강남구 남부순환로 2942 풍림빌딩 6층<br>서울 강남구 대치1동 507-1 풍림빌딩 6층<br>3호선 대치역 8번 출구 옆 하나은행 건물<br>02-2138-1010</p>
								<div><img src="<%=Application("img_path_russel")%>/notice/2019/mocktest/dc_map.jpg" alt="" /></div>
							</div>
						
						<% ElseIf SH_EXAM_ADDR = "러셀목동" Then %>						
							<div class="location on" id="loc2" >
								<h4>목동 (러셀 목동학원)</h4>
								<p>서울 양천구 신월로 358 남부필타운 7층 (르노삼성자동차 건물)<br>서울 양천구 신정동 1018-5 (남부필타운 7층)<br>남부지방법원에서 신정네거리역 사거리 방향 도보 2분<br>02-6932-1010</p>
								<div><img src="<%=Application("img_path_russel")%>/notice/2019/mocktest/md_map.jpg" alt="" /></div>
							</div>							
						<% ElseIf SH_EXAM_ADDR = "러셀부천" Then %>						
							<div class="location on" id="loc3" >
								<h4>부천 (러셀 부천학원)</h4>
								<p>경기도 부천시 길주로 231크리스탈 빌딩 3층<br>경기도 부천시 중동 1035-1 크리스탈빌딩 3층<br>7호선 부천시청역 5번 출구 도보 5분<br>032-265-1010</p>
								<div><img src="<%=Application("img_path_russel")%>/notice/2019/mocktest/bc_map.jpg" alt="" /></div>
							</div>
						
						<% ElseIf SH_EXAM_ADDR = "러셀분당" Then %>					
							<div class="location on" id="loc4" >
								<h4>분당 (러셀 분당학원)</h4>
								<p>경기도 성남시 분당구 성남대로 381 폴라리스빌딩 4층<br>경기도 성남시 분당구 정자동 15-3 폴라리스빌딩 4층<br>신분당선 정자역 5번 출구 도보 1분<br>031-629-1010</p>
								<div><img src="<%=Application("img_path_russel")%>/notice/2019/mocktest/bd_map.jpg" alt="" /></div>
							</div>
						
						<% ElseIf SH_EXAM_ADDR = "러셀센텀" Then %>					
							<div class="location on" id="loc5" >
								<h4>센텀 (러셀 센텀학원)</h4>
								<p>부산광역시 해운대구 센텀2로 29 메커스빌딩11층<br>부산광역시 해운대구 우동 1509 센텀메커스빌딩 11층<br>부산 2호선 센텀시티역 9번 출구 도보 5분<br>051-715-1010</p>
								<div><img src="<%=Application("img_path_russel")%>/notice/2019/mocktest/ct_map.jpg" alt="" /></div>
							</div>
						
						<% ElseIf SH_EXAM_ADDR = "러셀영통" Then %>
							<div class="location on" id="loc6" >
								<h4>영통 (러셀 영통학원)</h4>
								<p>경기도 수원시 영통구 봉영로 1623 드림피아 빌딩 4층<br>경기도 수원시 영통구 영통동 958-1, 드림피아 빌딩 4층<br>분당선 영통역 8번 출구 도보 5분<br>031-251-1010</p>
								<div><img src="<%=Application("img_path_russel")%>/notice/2019/mocktest/yt_map.jpg" alt="" /></div>
							</div>
						
						<% ElseIf SH_EXAM_ADDR = "러셀중계" Then %>
							<div class="location on" id="loc7" >
								<h4>중계 (러셀 중계학원)</h4>
								<p>서울시 노원구 한글비석로 242 삼부프라자 5층<br>서울시 노원구 중계동 364-19 삼부프라자 5층<br>중계동 은행사거리 학원가<br>02-6316-1010</p>
								<div><img src="<%=Application("img_path_russel")%>/notice/2019/mocktest/jg_map.jpg" alt="" /></div>
							</div>
						
						<% ElseIf SH_EXAM_ADDR = "러셀평촌" Then %>
							<div class="location on" id="loc8" >
								<h4>평촌 (러셀 평촌학원) </h4>
								<p>경기도 안양시 동안구 평촌대로 125 진평프라자 2층<br>경기도 안양시 동안구 호계동 1065-1 진평프라자 2층<br>평촌 학원가(평촌 먹거리촌 5문 앞)<br>031-341-6500</p>
								<div><img src="<%=Application("img_path_russel")%>/notice/2019/mocktest/pc_map.jpg" alt="" /></div>
							</div>	

						<% ElseIf SH_EXAM_ADDR = "온라인" Then %>
							<div class="location on">
								<h4 style="line-height:45px;">온라인</h4>
								<p class="mb10">*수험생 개별 비대면 공간<br>*PC 접속 : 러셀 온라인 수능 실전모의체험 <strong>[응시하기]</strong> 페이지<br>*해당 페이지는 12/2(수) 오후 2시 이후 공개됩니다.</p>
							</div>
						<% End If%>
					</td>-->
				</tr>
				<tr>					
					<th><p>학년</p></th>
					<td><%=SH_GRD%></td>
				</tr>
				<tr>
					<th><p>거주지</p></th>
					<td><%=SH_ADDR%></td>
				</tr>
				<tr>
					<th><p>국어/수학<br>선택과목</p></th>
					<td>
						국어 : <%=SH_SEL_KOR%><br>
						수학 : <%=SH_SEL_MATH%>
					</td>
				</tr>
				<tr>
					<th><p>탐구<br>선택 과목</p></th>
					<td>1과목 : <%=SH_SEL_TAM1%><br>2과목 : <%=SH_SEL_TAM2%></td>
				</tr>				
			</tbody>
		</table>
		<ul class="bottom-list">
			<li>※ 상기 입력된 정보로 수능 실전 모의체험 시험에 응시합니다. </li>
			<li>※ 신청 정보 수정 및 취소는 11월 13일(수) 오후 2시까지 가능합니다.</li>
		</ul>
	</div>
	<!-- //pop-info -->
	<!-- btn -->	
	
	<% 'if modify = true then %>
	<% If curYmdhmin < 202411131400 then %>
		<div class="pop-btn-wrap">
			<a href="javascript:void(0)" onclick="modify_go()" class="btn-gray">수정하기</a>
			<a href="javascript:void(0)" onclick="cancle_go()" class="btn-white">취소하기</a>
		</div>
	<% end if %>
	<% 'end if %>
	<!-- //btn -->	
</div>
<!-- //popup -->
</body>
</html>

<script>
function cancle_go(){
	  var submitCnt = 0;
	if (submitCnt != 0) {
        alert('이미 취소 중입니다.')
        return false;
    }
	
	it = document.form1
	if (confirm('취소 하시겠습니까?')) {
        submitCnt = submitCnt + 1;
        it.submit();
    }
}

function modify_go(){
	window.open('/intro/2024/csat/pop_modify.asp','popup_mock','width=650,height=560,scrollbars=yes')
}
</script>
