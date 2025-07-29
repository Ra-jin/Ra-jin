<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/Public/Security.asp" -->
<!-- #include virtual="/intro/2021/mocktest/address_search_inc.asp" -->
<%
    formFilter()

	' If True Then	'신청마감 : 수정불가 (2019-11-13 HJH 추가)
    '     ScriptBegin
    '     ScriptWrite "alert('잘못된 접근입니다.');"
    '     ScriptWrite "self.close();"
    '     ScriptEnd
    '     response.end
    ' End If

    If Not gLoginOk Then
        ScriptBegin
        ScriptWrite "alert('로그인 후 이용하실 수 있습니다.');"
        ScriptWrite "self.close();"
        ScriptEnd
        response.end
    End If

 	If gLoginOk = True Then
		
		strSql = ""
		strSql = strSql &" SELECT EM_NUM"
		strSql = strSql &" FROM MS_EVTRUSSEL_MAS WITH(NOLOCK)"
		strSql = strSql &" WHERE EM_TITLE LIKE '%2025 수능 실전 모의체험%' AND EM_DEL_FLG ='N' "

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
            SH_MEMTEL_NO 	= split(objRs(3), "-")
       		SH_PARTEL_NO 	= split(objRs(4), "-")
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
<script>
	
	$(document).ready(function(){
		$('#SH_EXAM_ADDR').on('change', function() {
			if ($('#SH_EXAM_ADDR').val() == '러셀대치'){
				$("select option[value*='고1']").prop('disabled',true);
				$("select option[value*='중3']").prop('disabled',true);
			}
			else{
				$("select option[value*='고1']").prop('disabled',false);
				$("select option[value*='중3']").prop('disabled',false);
			}
		});
	});

	var submitCnt = 0;
    function fncSubmit2() {
        if (submitCnt != 0) {
            alert('이미 등록 중입니다.')
            return false;
        }
		it = document.form1

		if (!$('input:radio[name=gender]').is(':checked')) {
			alert('성별을 입력하세요.'); $('#man').focus(); return false;
		}

		if($('#SH_BIRTH2').val() < 1 || $('#SH_BIRTH2').val() > 12 ){
			alert('생년월일 월을 확인하세요.'); $('#SH_BIRTH2').focus(); return false;
		}
		if($('#SH_BIRTH3').val() < 1 || $('#SH_BIRTH3').val() > 31 ){
			alert('생년월일 일을 확인하세요.'); $('#SH_BIRTH3').focus(); return false;
		}
        if (jQuery.trim($('#SH_BIRTH1').val()).length < 1) {
            alert('생년월일 년도를 입력하세요.'); $('#SH_BIRTH1').focus(); return false;
        }
        if (jQuery.trim($('#SH_BIRTH2').val()).length < 1) {
            alert('생년월일 월을 입력하세요.'); $('#SH_BIRTH2').focus(); return false;
        }
        if (jQuery.trim($('#SH_BIRTH3').val()).length < 1) {
            alert('생년월일 일을 입력하세요.'); $('#SH_BIRTH3').focus(); return false;
        }
        if (jQuery.trim($('#cel_no2').val()).length < 1 || jQuery.trim($('#cel_no3').val()).length < 1) {
            alert('연락처(학생)을 입력하세요.'); $('#cel_no2').focus(); return false;
        }
        if (jQuery.trim($('#cel_no5').val()).length < 1 || jQuery.trim($('#cel_no6').val()).length < 1) {
            alert('연락처(학부모)을 입력하세요.'); $('#cel_no5').focus(); return false;
        }

        if (jQuery.trim($('#SH_SCH_NM').val()).length < 1) {
            alert('학교명을 입력하세요.'); $('#SH_SCH_NM').focus(); return false;
        }

       	// 온라인 + 서울/경기/부산/광주/대전/원주/전주/창원/청주 예외처리
		// if (($.trim($('#SH_EXAM_ADDR').val()).length > 0) && ($.trim($('#SH_ADDR').val()).length > 0)){
		// 	if ( $('#SH_EXAM_ADDR').val() == '온라인' ) {
		// 		var strAddr = $('#SH_ADDR').val();
		// 		if ((strAddr.indexOf("서울") != -1) || (strAddr.indexOf("경기") != -1) || (strAddr.indexOf("부산") != -1) || (strAddr.indexOf("대전") != -1) || (strAddr.indexOf("광주") != -1) || (strAddr.indexOf("대구") != -1) || (strAddr.indexOf("원주") != -1) || (strAddr.indexOf("전주") != -1)|| (strAddr.indexOf("창원") != -1)|| (strAddr.indexOf("청주") != -1)) {
		// 			alert('온라인 2022 수능 실전 모의체험은\n서울/경기/부산/대전/광주/원주/전주/창원/청주 外 지역 거주 수험생만 신청 가능합니다.');
		// 			return false;
		// 		}
		// 	}
		// }
		
		if (jQuery.trim($('#SH_EXAM_ADDR').val()).length < 1) {
            alert('응시장소를 선택하세요.'); $('#SH_EXAM_ADDR').focus(); return false;
        }

		if (jQuery.trim($('#SH_GRD').val()).length < 1) {
            alert('학년을 입력하세요.'); $('#SH_GRD').focus(); return false;
        }
        
		if (jQuery.trim($('#SH_ADDR').val()).length < 1) {
            alert('거주지를 입력하세요.'); $('#SH_ADDR').focus(); return false;
		}

		if (jQuery.trim($('#SH_SEL_KOR').val()).length < 1) {
            alert('국어 선택 과목을 입력하세요.'); $('#SH_SEL_KOR').focus(); return false;
        }
        if (jQuery.trim($('#SH_SEL_MATH').val()).length < 1) {
            alert('수학 선택 과목을 입력하세요.'); $('#SH_SEL_MATH').focus(); return false;
		}
        if (jQuery.trim($('#SH_SEL_TAM1').val()).length < 2) {
            alert('탐구 선택 과목1을 입력하세요.'); $('#SH_SEL_TAM1').focus(); return false;
        }
        if (jQuery.trim($('#SH_SEL_TAM2').val()).length < 2) {
            alert('탐구 선택 과목2을 입력하세요.'); $('#SH_SEL_TAM2').focus(); return false;
		}

		var privacyAgr = $('input[name="privacyAgr"]:checked').val();
		if (privacyAgr == "N"){
			alert('개인 정보 수집·이용에 동의해주세요.'); $('#privacyAgr_02').focus(); return false;
		}

        if (confirm('접수 완료 후, 신청 정보 수정은 11월 13일 오후 2시까지 가능합니다. 수정하시겠습니까?')) {
			submitCnt = submitCnt + 1;
            it.submit();
        }
	}
</script> 
<body>
<div class="pay-pop">
    <p class="tit"><strong>2025 러셀 수능 실전 모의체험</strong></p>
    <div class="pay-pop-in">
    	<div class="pop-info">
			<form name="form1" id="form1" method="post" action="pop_mock_RegEx.asp">
			<input type="hidden" name="Mode" value="UPD" />
			<ul class="info-list">
				<li>
					<strong>성명</strong>
					<span><%=gLoginMemName %></span>
				</li>
				<li>
					<strong>성별</strong>
					<span>
						<label for="man"><input type="radio" name="gender" id="man" value="남자" <%if SH_SEX="남자" then%>checked <%end if%>>남</label>
						<label for="woman"><input type="radio" name="gender" id="woman" value="여자" <%if SH_SEX="여자" then%>checked <%end if%>>여</label>
					</span>
				</li>
				<li>
					<strong>생년월일</strong>
					<span>
						<div class="input-day">
							<input type="text" name="SH_BIRTH1" id="SH_BIRTH1" maxlength="4" value="<%=ArrSH_BIRTH(0)%>"><span>년</span>
							<input type="text" name="SH_BIRTH2" id="SH_BIRTH2" maxlength="2" value="<%=ArrSH_BIRTH(1)%>"><span>월</span>
							<input type="text" name="SH_BIRTH3" id="SH_BIRTH3" maxlength="2" value="<%=ArrSH_BIRTH(2)%>"><span>일</span>
						</div>
					</span>
				</li>
				<li>
					<strong>학생 연락처</strong>
					<span>
						<div class="input-tel">
							<select name="cel_no1" id="cel_no1">
								<option value="010" <% If SH_MEMTEL_NO(0) = "010" Then %>selected <% End If %>>010</option>
								<option value="011" <% If SH_MEMTEL_NO(0) = "011" Then %>selected <% End If %>>011</option>
								<option value="016" <% If SH_MEMTEL_NO(0) = "016" Then %>selected <% End If %>>016</option>
								<option value="017" <% If SH_MEMTEL_NO(0) = "017" Then %>selected <% End If %>>017</option>
								<option value="018" <% If SH_MEMTEL_NO(0) = "018" Then %>selected <% End If %>>018</option>
								<option value="019" <% If SH_MEMTEL_NO(0) = "019" Then %>selected <% End If %>>019</option>
							</select>
							<input type="number" name="cel_no2" id="cel_no2" value="<%=SH_MEMTEL_NO(1)%>" title="전화번호 가운데 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);"><span>-</span>
							<input type="number" name="cel_no3" id="cel_no3" value="<%=SH_MEMTEL_NO(2)%>" title="전화번호 마지막 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);">
						</div>
					</span>
				</li>
				<li>
					<strong>학부모 연락처</strong>
					<span>
						<div class="input-tel">
							<select name="cel_no4" id="cel_no4">
								<option value="010" <% If SH_PARTEL_NO(0) = "010" Then %>selected  <% End If %>>010</option>
								<option value="011" <% If SH_PARTEL_NO(0) = "010" = "011" Then %>selected <% End If %>>011</option>
								<option value="016" <% If SH_PARTEL_NO(0) = "010" = "016" Then %>selected <% End If %>>016</option>
								<option value="017" <% If SH_PARTEL_NO(0) = "010" = "017" Then %>selected <% End If %>>017</option>
								<option value="018" <% If SH_PARTEL_NO(0) = "010" = "018" Then %>selected <% End If %>>018</option>
								<option value="019" <% If SH_PARTEL_NO(0) = "010" = "019" Then %>selected <% End If %>>019</option>
							</select>
							<input type="number" name="cel_no5" id="cel_no5" value="<%=SH_PARTEL_NO(1)%>" title="전화번호 가운데 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);"><span>-</span>
							<input type="number" name="cel_no6" id="cel_no6" value="<%=SH_PARTEL_NO(2)%>" title="전화번호 마지막 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);">
						</div>
					</span>
				</li>
				<li>
					<strong><label for="school">학교명</label></strong>
					<span><input type="text" id="SH_SCH_NM" class="js-bt-school js-mask" name="SH_SCH_NM" value="<%=SH_SCH_NM%>" readonly style="width:65%"><a href="#" class="bt-school js-bt-school js-mask">학교검색</a></span>
				</li>
				<li>
					<strong>응시장소</strong>
					<span>
						<select  name="SH_EXAM_ADDR" id="SH_EXAM_ADDR"style="width:65%">
							<option value="">선택하세요</option>
							<option value="러셀강남" <%if SH_EXAM_ADDR = "러셀강남" then%> selected <%end if%> >러셀 강남</option>
							<option value="러셀대치" <%if SH_EXAM_ADDR = "러셀대치" then%> selected <%end if%> >러셀 대치</option>
							<option value="러셀목동" <%if SH_EXAM_ADDR = "러셀목동" then%> selected <%end if%> >러셀 목동</option>
							<option value="러셀부천" <%if SH_EXAM_ADDR = "러셀부천" then%> selected <%end if%> >러셀 부천</option>
							<option value="러셀분당" <%if SH_EXAM_ADDR = "러셀분당" then%> selected <%end if%> >러셀 분당</option>
							<option value="러셀영통" <%if SH_EXAM_ADDR = "러셀영통" then%> selected <%end if%> disabled>러셀 영통[신청마감]</option>
							<option value="러셀중계" <%if SH_EXAM_ADDR = "러셀중계" then%> selected <%end if%> >러셀 중계</option>
							<option value="러셀평촌" <%if SH_EXAM_ADDR = "러셀평촌" then%> selected <%end if%> >러셀 평촌</option>
							<option value="러셀대구" <%if SH_EXAM_ADDR = "러셀대구" then%> selected <%end if%> >러셀 대구</option>
							<option value="러셀센텀" <%if SH_EXAM_ADDR = "러셀센텀" then%> selected <%end if%> >러셀 센텀</option>
							<option value="러셀울산" <%if SH_EXAM_ADDR = "러셀울산" then%> selected <%end if%> >러셀 울산</option>
							<option value="러셀CORE 광주" <%if SH_EXAM_ADDR = "러셀CORE 광주" then%> selected <%end if%> >러셀CORE 광주</option>
							<option value="러셀CORE 대전" <%if SH_EXAM_ADDR = "러셀CORE 대전" then%> selected <%end if%> >러셀CORE 대전</option>
							<option value="러셀CORE 원주" <%if SH_EXAM_ADDR = "러셀CORE 원주" then%> selected <%end if%> >러셀CORE 원주</option>
							<option value="러셀CORE 전주" <%if SH_EXAM_ADDR = "러셀CORE 전주" then%> selected <%end if%> >러셀CORE 전주</option>
							<option value="러셀CORE 창원" <%if SH_EXAM_ADDR = "러셀CORE 창원" then%> selected <%end if%> >러셀CORE 창원</option>
							<option value="러셀CORE 청주" <%if SH_EXAM_ADDR = "러셀CORE 청주" then%> selected <%end if%> >러셀CORE 청주</option>
						</select>
						<a href="javascript:;" onclick="showMap();" class="bt-school ml0 f12">학원별 위치</a>
					</span>
				</li>
				<li>
					<strong>학년</strong>
					<span>
						<select name="SH_GRD" id="SH_GRD" style="width:100%;">
							<option value="">선택하세요</option>
							<option value="고2" <%if SH_GRD="고2" then%> selected <%end if%>>현 고2</option>
							<option value="고1" <%if SH_GRD="고1" then%> selected <%end if%>>현 고1</option>
							<option value="중3" <%if SH_GRD="중3" then%> selected <%end if%>>현 중3</option>
						</select>
					</span>
				</li>

				<li>
					<strong>거주지</strong>
					<input style="width:64%;" type="text" name="SH_ADDR" id="SH_ADDR" value="<%=SH_ADDR%>" readonly onclick="getRoadSearchPopOpen()"  />
					<a href="javascript:;" onclick="getRoadSearchPopOpen()" class="bt-school">검색</a>
				</li>
				<li>
					<strong>국어/수학 선택 과목</strong>
					<span>
						<select  name="SH_SEL_KOR" id="SH_SEL_KOR" style="width:47%;margin-right:2%;" onclick="">
							<option value="">국어 선택</option>
							<option value="화법과 작문" <%if SH_SEL_KOR = "화법과 작문" then%> selected <%end if%>>화법과 작문</option>
							<option value="언어와 매체" <%if SH_SEL_KOR = "언어와 매체" then%> selected <%end if%>>언어와 매체</option>
						</select>
						<select  name="SH_SEL_MATH" id="SH_SEL_MATH" style="width:47%" onclick="">
							<option value="">수학 선택</option>
							<option value="확률과 통계" <%if SH_SEL_MATH = "확률과 통계" then%> selected <%end if%>>확률과 통계</option>
							<option value="미적분" <%if SH_SEL_MATH = "미적분" then%> selected <%end if%>>미적분</option>
							<option value="기하" <%if SH_SEL_MATH = "기하" then%> selected <%end if%>>기하</option>
						</select>
					</span>
				</li>
				<li>
					<strong>탐구 선택 과목</strong>
					<span>
						<select  name="SH_SEL_TAM1" id="SH_SEL_TAM1" style="width:47%;margin-right:2%;" onchange="fncTamSet1()">
							<option value="1">1과목 선택</option>
							<option value="생활과윤리" <%if SH_SEL_TAM1 = "생활과윤리" then%> selected <%end if%>>생활과 윤리</option>
							<option value="윤리와사상" <%if SH_SEL_TAM1 = "윤리와사상" then%> selected <%end if%>>윤리와 사상</option>
							<option value="한국지리" <%if SH_SEL_TAM1 = "한국지리" then%> selected <%end if%>>한국지리</option>
							<option value="세계지리" <%if SH_SEL_TAM1 = "세계지리" then%> selected <%end if%>>세계지리</option>
							<option value="동아시아사" <%if SH_SEL_TAM1 = "동아시아사" then%> selected <%end if%>>동아시아사</option>
							<option value="세계사" <%if SH_SEL_TAM1 = "세계사" then%> selected <%end if%>>세계사</option>
							<option value="정치와법" <%if SH_SEL_TAM1 = "정치와법" then%> selected <%end if%>>정치와법</option>
							<option value="경제" <%if SH_SEL_TAM1 = "경제" then%> selected <%end if%>>경제</option>
							<option value="사회문화" <%if SH_SEL_TAM1 = "사회문화" then%> selected <%end if%>>사회문화</option>
							<option value="물리학I" <%if SH_SEL_TAM1 = "물리학I" then%> selected <%end if%>>물리학I</option>
							<option value="화학I" <%if SH_SEL_TAM1 = "화학I" then%> selected <%end if%>>화학I</option>
							<option value="생명과학I" <%if SH_SEL_TAM1 = "생명과학I" then%> selected <%end if%>>생명과학I</option>
							<option value="지구과학I" <%if SH_SEL_TAM1 = "지구과학I" then%> selected <%end if%>>지구과학I</option>
							<option value="물리학II" <%if SH_SEL_TAM1 = "물리학II" then%> selected <%end if%>>물리학II</option>
							<option value="화학II" <%if SH_SEL_TAM1 = "화학II" then%> selected <%end if%>>화학II</option>
							<option value="생명과학II" <%if SH_SEL_TAM1 = "생명과학II" then%> selected <%end if%>>생명과학II</option>
							<option value="지구과학II" <%if SH_SEL_TAM1 = "지구과학II" then%> selected <%end if%>>지구과학II</option>
						</select>
						<select  name="SH_SEL_TAM2" id="SH_SEL_TAM2" style="width:47%" onchange="fncTamSet2()">
							<option value="2">2과목 선택</option>
							<option value="생활과윤리" <%if SH_SEL_TAM2 = "생활과윤리" then%> selected <%end if%>>생활과 윤리</option>
							<option value="윤리와사상" <%if SH_SEL_TAM2 = "윤리와사상" then%> selected <%end if%>>윤리와 사상</option>
							<option value="한국지리" <%if SH_SEL_TAM2 = "한국지리" then%> selected <%end if%>>한국지리</option>
							<option value="세계지리" <%if SH_SEL_TAM2 = "세계지리" then%> selected <%end if%>>세계지리</option>
							<option value="동아시아사" <%if SH_SEL_TAM2 = "동아시아사" then%> selected <%end if%>>동아시아사</option>
							<option value="세계사" <%if SH_SEL_TAM2 = "세계사" then%> selected <%end if%>>세계사</option>
							<option value="정치와법" <%if SH_SEL_TAM2 = "정치와법" then%> selected <%end if%>>정치와법</option>
							<option value="경제" <%if SH_SEL_TAM2 = "경제" then%> selected <%end if%>>경제</option>
							<option value="사회문화" <%if SH_SEL_TAM2 = "사회문화" then%> selected <%end if%>>사회문화</option>
							<option value="물리학I" <%if SH_SEL_TAM2 = "물리학I" then%> selected <%end if%>>물리학I</option>
							<option value="화학I" <%if SH_SEL_TAM2 = "화학I" then%> selected <%end if%>>화학I</option>
							<option value="생명과학I" <%if SH_SEL_TAM2 = "생명과학I" then%> selected <%end if%>>생명과학I</option>
							<option value="지구과학I" <%if SH_SEL_TAM2 = "지구과학I" then%> selected <%end if%>>지구과학I</option>
							<option value="물리학II" <%if SH_SEL_TAM2 = "물리학II" then%> selected <%end if%>>물리학II</option>
							<option value="화학II" <%if SH_SEL_TAM2 = "화학II" then%> selected <%end if%>>화학II</option>
							<option value="생명과학II" <%if SH_SEL_TAM2 = "생명과학II" then%> selected <%end if%>>생명과학II</option>
							<option value="지구과학II" <%if SH_SEL_TAM2 = "지구과학II" then%> selected <%end if%>>지구과학II</option>
						</select>
					</span>
				</li>
			</ul>
			<ul class="list-bullet m0 color-gray-03">
				<li>상기 입력된 정보로 수능 실전 모의체험 시험에 응시합니다. 빠진 항목 없이 입력 바랍니다.</li>
			</ul>
		</div>
		<!-- 학교 검색 팝업 -->
		<div class="layer-info js-school-find">
			<div class="inner">
				<p class="tit">학교 검색</p>
				<div class="find-school">
					<div>
						<input type="text" id="kword" name="kword" style="width:67%" /><a href="javascript:;" onclick="getList();" class="bt-school">학교검색</a>
					</div>
					<div class="result-wrap">
						<p class="stit">검색 결과</p>
						<div id="search-result" class="list">
							<p class="text-align-center color-gray-03">검색 결과가 없습니다.</p>
						</div>
					</div>
				</div>
				<a href="#" class="bt-close js-layer-close js-close-mask"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close.png" alt="닫기"></a>
			</div>
		</div>
		<!-- //학교 검색 팝업 -->
		</form> 
		<!-- //pop-info -->
		<!-- btn -->
		<% IF curYmdhmin <= 202411131400 Then %>
			<p class="bt-blue bt-w94 mt20"><a href="javascript:;" onclick="fncSubmit2()">수정하기</a></p>
		<% end if %>

		<!-- //btn -->
	</div>
	
	<!-- 닫기 버튼 -->
	<a href="javascript:window.close()" style="position:absolute;top:0;right:6%;font-size:30px;">X</a>
</div>
<script type="text/javascript">
	$(function(){
        $(".js-bt-school").on("click",function(){
            $(".js-school-find").css("display","block")
        })
        $(".js-layer-close").on("click",function(){
            $(".js-school-find").css("display","none")
        })
    })

	function getList(){
		var kword = $("#kword").val();
		$.ajax({
			method: "GET",
			url : "./school_list.asp",
			data : {
				kword:escape(kword)
			},
			dataType: "html"
		}).done(function(html) {
			$("#search-result").html(html);
		});
	}

	function sch_insert(code,type,name,area){
		$("#kword").val("");
		$("#search-result").html("");
		$("#SH_SCH_NM").val(name);
		$(".js-layer-close").click();
	}	
	
	function showMap(){
		var text = $('#SH_EXAM_ADDR option:selected').val();
		window.open('./pop_map.asp?sel='+text+'','_blank','scrollbars=yes,width=680,height=800');
	}
    function fncTamSet2() {
		var text = $('#SH_SEL_TAM2 option:selected').val();
		$("#SH_SEL_TAM1 option").attr("disabled", false);
		$('#SH_SEL_TAM1 option[value='+text+']').prop('disabled', true);
	}
	function fncTamSet1() {
		var text = $('#SH_SEL_TAM1 option:selected').val();
		$("#SH_SEL_TAM2 option").attr("disabled", false);
		$('#SH_SEL_TAM2 option[value='+text+']').prop('disabled', true);
	}

	window.onload = function(){
		fncTamSet1();
		fncTamSet2();
	}

</script>
</body>
</html>
