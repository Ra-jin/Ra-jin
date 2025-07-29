<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->
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
	IF curYmdhmin >= 202311161400 Then '수정/취소 마감
		modify = false
	End If

    If gLoginOk = True Then
		
		strSql = ""
		strSql = strSql &" SELECT EM_NUM "
		strSql = strSql &" FROM MS_EVTRUSSEL_MAS WITH(NOLOCK) "
		strSql = strSql &" WHERE EM_TITLE LIKE '%2024 수능 실전%' AND EM_DEL_FLG ='N'"

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
<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual = "/inc/head.asp" -->
	<style>	
	.info-list li {padding-right:0!important}
	</style>
</head>
<body>
<div class="pay-pop">
    <p class="tit"><strong>2024 러셀 수능 실전 모의체험</strong></p>
    <div class="pay-pop-in">
		<div class="pop-info">		
	
			<ul class="info-list">
				<li>
					<strong>성명</strong>
					<span><%=SH_MEM_NM%></span>
				</li>
				<li>				
					<strong>성별</strong>
					<span><%=SH_SEX%></span>
				</li>
				<li>			
					<strong>생년월일</strong>
					<span>
						<%=ArrSH_BIRTH(0)%>년
						<%=ArrSH_BIRTH(1)%>월
						<%=ArrSH_BIRTH(2)%>일
					</span>
				</li>
				<li>				
					<strong>학생 연락처</strong>
					<span><%=SH_MEMTEL_NO%></span>
				</li>
				<li>
					<strong>학부모 연락처</strong>
					<span><%=SH_PARTEL_NO%></span>
				</li>
				<li>
					<strong><label for="school">학교명</label></strong>
					<span><%=SH_SCH_NM %></span>
				</li>
				<li>
					<strong>응시장소</strong>
					<span><%=SH_EXAM_ADDR %></span>
						<!--<div class="location on">
							<h4>강남 (러셀 강남학원)</h4>
							<p>서울 서초구 사임당로 178  이즈타워 2층<br>서울 서초구 서초동 1337-14 이즈타워 2층<br>강남역 신분당선 5번 출구(도보 5분)</p>
							<p>02-6954-1010</p>
							<div><img src="<%=Application("img_path_russel")%>/notice/2019/mocktest/gn_map.jpg" alt="" /></div>
						</div>	
					</span>-->
				</li>
				<li>
					<strong>학년</strong>
					<span><%=SH_GRD%></span>
				</li>

				<li>
					<strong>거주지</strong>
					<span><%=SH_ADDR%></span>
				</li>
				<li>
					<strong>국어/수학 선택 과목</strong>
					<span>
						국어 : <%=SH_SEL_KOR%><br>
						수학 : <%=SH_SEL_MATH%>
					</span>
				</li>
				<li>
					<strong>탐구 선택 과목</strong>
					<span>
						1과목 : <%=SH_SEL_TAM1%><br>
						2과목 : <%=SH_SEL_TAM2%>
					</span>
				</li>
			</ul>	
			<ul class="pt-list">
				<li>
					<p class="s-txt-info">※ 상기 입력된 정보로 수능 실전 모의체험 시험에 응시합니다. </p>
					<p class="s-txt-info">※ 신청 정보 수정 및 취소는 11월 15일(수) 오후 2시까지 가능합니다.</p>
				</li>
			</ul>
		</div>
		<!-- //pop-info -->	
		<!-- btn -->	
		
		<% 'if modify = true then%>
		<% If curYmdhmin < 202311151400 then %>
			<p class="bt-box-02 bt-sev" style="margin:0 4%;background:#fff">
				<a href="javascript:;" onclick="window.open('/intro/2023/csat/pop_modify.asp','popup_mock','width=680,height=560,left=100,top=200,scrollbars=yes')" class="bt-b ml0 ">수정하기</a>
				<a href="javascript:;" onclick="cancle_go() "href="#_" class="bt-g">취소하기</a>
			</p>
		<% end if %>
		<% 'end if %>
	
		<form name="form1" id="form1" method="post" action="pop_mock_RegEx.asp">	
			<input type="hidden" name="Mode" value="cancle">
		</form>
		
		<!-- //btn -->	
	</div>
	<!-- //pay-pop-in -->
	
	<!-- 닫기 버튼 -->
	<a href="javascript:window.close()" style="position:absolute;top:0;right:6%;font-size:30px;">X</a>
</div>
<!-- //pay-pop -->
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
	if (confirm('접수 취소 후, 재신청은 11월 15일 오후 2시까지 가능합니다. 접수 취소하시겠습니까?')) {
        submitCnt = submitCnt + 1;
        it.submit();
    }
}
</script>

