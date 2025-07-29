<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/Public/Security.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!-- #include virtual="/intro/2021/mocktest/address_search_inc.asp" -->

<%
    formFilter()

	' If True Then	'신청마감 : 수정불가 (2019-11-13 HJH 추가)
    '     ScriptBegin
    '     ScriptWrite "alert('잘못된 접근입니다.');"
    ' 	ScriptWrite "self.close();"
    ' 	ScriptEnd
    ' 	response.end
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
			SH_MEM_NM   	= objRs(0)
     		SH_SEX    		= objRs(1)
     		ArrSH_BIRTH  	= split(objRs(2),"-")
			'splitPhone(Trim(objRs(3)))
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

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="title" content="메가패스" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" type="text/css" href="/common/css/2021/pop.css" />
</head>
<style>
.pop-input-table.view td{padding-top:5px!important;padding-bottom:5px!important;font-size:17px!important}
</style>
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
	
	function inputHSCH(code, type, name) {
		$('#SH_SCH_NM').val(name);
	}

	function inputAddr_new(area_code, addr_idx, addr_num, zip_1, zip_2, addr_str) {
		var f = document.form1;
		f.SH_ADDR.value = addr_str;
	}

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
        if (jQuery.trim($('#SH_EXAM_ADDR').val()).length < 1) {
			alert('응시장소를 선택하세요.');
			$('#SH_EXAM_ADDR').focus();
			return false;
        }
        if (jQuery.trim($('#SH_GRD').val()).length < 1) {
            alert('학년을 입력하세요.'); $('#SH_GRD').focus(); return false;
        }
        if (jQuery.trim($('#SH_ADDR').val()).length < 1) {
            alert('거주지를 입력하세요.'); $('#SH_ADDR').focus(); return false;
		}


		// 온라인 + 서울/경기/부산/광주/대전/원주/전주/창원/청주 예외처리
		if (($.trim($('#SH_EXAM_ADDR').val()).length > 0) && ($.trim($('#SH_ADDR').val()).length > 0)){
			if ( $('#SH_EXAM_ADDR').val() == '온라인' ) {
				var strAddr = $('#SH_ADDR').val();
				if ((strAddr.indexOf("서울") != -1) || (strAddr.indexOf("경기") != -1) || (strAddr.indexOf("부산") != -1) || (strAddr.indexOf("대전") != -1) || (strAddr.indexOf("광주") != -1) || (strAddr.indexOf("대구") != -1) || (strAddr.indexOf("원주") != -1) || (strAddr.indexOf("전주") != -1)|| (strAddr.indexOf("창원") != -1)|| (strAddr.indexOf("청주") != -1)) {
					alert('온라인 2024 수능 실전 모의체험은\n서울/경기/부산/대전/광주/원주/전주/창원/청주 外 지역 거주 수험생만 신청 가능합니다.');
					return false;
				}
			}
		}

		if (jQuery.trim($('#SH_SEL_KOR').val()).length < 1) {
            alert('국어 선택 과목을 입력하세요.'); $('#SH_SEL_KOR').focus(); return false;
        }
        if (jQuery.trim($('#SH_SEL_MATH').val()).length < 1) {
            alert('수학 선택 과목을 입력하세요.'); $('#SH_SEL_MATH').focus(); return false;
		}
        if (jQuery.trim($('#SH_SEL_TAM1').val()).length < 1) {
            alert('탐구 선택 과목1을 입력하세요.'); $('#SH_SEL_TAM1').focus(); return false;
        }
        if (jQuery.trim($('#SH_SEL_TAM2').val()).length < 1) {
            alert('탐구 선택 과목2을 입력하세요.'); $('#SH_SEL_TAM2').focus(); return false;
		}
		
		// var privacyAgr = $('#privacyAgr_02').is(':checked');
		// if (privacyAgr == false){
		// 	alert('개인 정보 수집·이용에 동의해주세요.'); $('#privacyAgr_02').focus(); return false;
		// }

        if (confirm('접수 완료 후, 신청 정보 수정은 11월 13일 오후 2시까지 가능합니다. 수정하시겠습니까?')) {
            submitCnt = submitCnt + 1;
            it.submit();
        }
	}
</script>
<body>
<div class="popup">
	<h1 class="">2025 러셀 수능 실전 모의체험</h1>
	<div class="pop-info">
	<div style="width:647px;margin:0 auto;">
	<form name="form1" id="form1" method="post" action="pop_mock_RegEx.asp">
        <input type="hidden" name="Mode" value="UPD" />

		<table class="pop-input-table view">
			<colgroup>
				<col width="170px">
				<col width="*">
			</colgroup>
			<tbody>
				<tr>
					<th><p>성명</p></th>
					<td><%=gLoginMemName %></td>
				</tr>
				<tr>
					<th><p>성별</p></th>
					<td class="input-radio">
						<label for="man"><input type="radio" name="gender" id="man" value="남자" <%if SH_SEX="남자" then%>checked <%end if%>>남</label>
						<label for="woman"><input type="radio" name="gender" id="woman" value="여자" <%if SH_SEX="여자" then%>checked <%end if%>>여</label>
					</td>
				</tr>
				<tr>
					<th><p>생년월일</p></th>
					<td>
						<div class="input-day">
							<label><input type="text" name="SH_BIRTH1" id="SH_BIRTH1" maxlength="4" value="<%=ArrSH_BIRTH(0)%>"><span>년</span></label>
							<label><input type="text" name="SH_BIRTH2" id="SH_BIRTH2" maxlength="2" value="<%=ArrSH_BIRTH(1)%>"><span>월</span></label>
							<label><input type="text" name="SH_BIRTH3" id="SH_BIRTH3" maxlength="2" value="<%=ArrSH_BIRTH(2)%>"><span>일</span></label>
						</div>
					</td>
				</tr>
				<tr>
					<th><p>학생 연락처</p></th>
					<td>
						<div class="input-tel" style="text-align: left;">
                            <select name="cel_no1" id="cel_no1" style="width:150px;text-align:left;">
								<option value="010" <% If 	SH_MEMTEL_NO(0) = "010" Then %>selected <% End If %>>010</option>
								<option value="011" <% If 	SH_MEMTEL_NO(0) = "011" Then %>selected <% End If %>>011</option>
								<option value="016" <% If 	SH_MEMTEL_NO(0) = "016" Then %>selected <% End If %>>016</option>
								<option value="017" <% If 	SH_MEMTEL_NO(0) = "017" Then %>selected <% End If %>>017</option>
								<option value="018" <% If 	SH_MEMTEL_NO(0) = "018" Then %>selected <% End If %>>018</option>
								<option value="019" <% If 	SH_MEMTEL_NO(0) = "019" Then %>selected <% End If %>>019</option>
                            </select>
                            <span>- </span><input type="text" style="width:150px;" name="cel_no2" id="cel_no2" value="<%=SH_MEMTEL_NO(1)%>" title="전화번호 가운데 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);"><span> - </span>
							<input type="text" style="width:150px;" name="cel_no3" id="cel_no3" value="<%=SH_MEMTEL_NO(2)%>" title="전화번호 마지막 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);">
                        </div>
					</td>
				</tr>
				<tr>
					<th><p>학부모 연락처</p></th>
					<td>
						<div class="input-tel" style="text-align: left;">
                            <select name="cel_no4" id="cel_no4" style="width:150px;text-align:left;">
								<option value="010" <% If SH_PARTEL_NO(0) = "010" Then %>selected  <% End If %>>010</option>
								<option value="011" <% If SH_PARTEL_NO(0) = "010" = "011" Then %>selected <% End If %>>011</option>
								<option value="016" <% If SH_PARTEL_NO(0) = "010" = "016" Then %>selected <% End If %>>016</option>
								<option value="017" <% If SH_PARTEL_NO(0) = "010" = "017" Then %>selected <% End If %>>017</option>
								<option value="018" <% If SH_PARTEL_NO(0) = "010" = "018" Then %>selected <% End If %>>018</option>
								<option value="019" <% If SH_PARTEL_NO(0) = "010" = "019" Then %>selected <% End If %>>019</option>
								<img src="<%=Application("img_path_russel")%>/m_russel/common/bg_sel02.png" alt="">
                            </select>
                            <span>- </span><input type="text" style="width:150px;" style="width:100px;" name="cel_no5" id="cel_no5" value="<%=SH_PARTEL_NO(1)%>" title="전화번호 가운데 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);"><span> - </span>
							<input type="text" style="width:150px;" name="cel_no6" id="cel_no6" value="<%=SH_PARTEL_NO(2)%>" title="전화번호 마지막 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);">
                        </div>
					</td>
				</tr>
				<tr>
					<th><p>학교명</p></th>
					<td>
						<div class="btn-wrap">
							<input type="text" name="SH_SCH_NM" id="SH_SCH_NM" value="<%=SH_SCH_NM%>" readonly onclick="MM_openBrWindow('/russel/member/popup_school.asp?kind=H', 'popup', 'width=500,height=380')" />
							<a href="javascript:;" onClick="MM_openBrWindow('/russel/member/popup_school.asp?kind=H','popup','width=500,height=380')">검색</a>
						</div>
					</td>
				</tr>
				<tr>
					<th><p>응시장소</p></th>
					<td>
						<div class="btn-wrap">
							<select class="w346" name="SH_EXAM_ADDR" id="SH_EXAM_ADDR">
								<option value="">선택하세요</option>
								<option value="러셀강남" <% If SH_EXAM_ADDR="러셀강남" Then%> selected <% End If %> >러셀 강남</option>
								<option value="러셀대치" <% If SH_EXAM_ADDR="러셀대치" Then%> selected <% End If %> >러셀 대치</option>
								<option value="러셀목동" <% If SH_EXAM_ADDR="러셀목동" Then%> selected <% End If %> >러셀 목동</option>
								<option value="러셀부천" <% If SH_EXAM_ADDR="러셀부천" Then%> selected <% End If %>>러셀 부천</option>
								<option value="러셀분당" <% If SH_EXAM_ADDR="러셀분당" Then%> selected <% End If %>>러셀 분당</option>
								<option value="러셀영통" <% If SH_EXAM_ADDR="러셀영통" Then%> selected <% End If %> disabled>러셀 영통[신청마감]</option>
								<option value="러셀중계" <% If SH_EXAM_ADDR="러셀중계" Then%> selected <% End If %>>러셀 중계</option>
								<option value="러셀평촌" <% If SH_EXAM_ADDR="러셀평촌" Then%> selected <% End If %> >러셀 평촌</option>
								<option value="러셀대구" <% If SH_EXAM_ADDR="러셀대구" Then%> selected <% End If %> >러셀 대구</option>
								<option value="러셀센텀" <% If SH_EXAM_ADDR="러셀센텀" Then%> selected <% End If %> >러셀 센텀</option>
								<option value="러셀울산" <% If SH_EXAM_ADDR="러셀울산" Then%> selected <% End If %> >러셀 울산</option>
								<option value="러셀CORE 광주" <% If SH_EXAM_ADDR="러셀CORE 광주" Then%> selected <% End If %> >러셀CORE 광주</option>
								<option value="러셀CORE 대전" <% If SH_EXAM_ADDR="러셀CORE 대전" Then%> selected <% End If %> >러셀CORE 대전</option>
								<option value="러셀CORE 원주" <% If SH_EXAM_ADDR="러셀CORE 원주" Then%> selected <% End If %> >러셀CORE 원주</option>
								<option value="러셀CORE 전주" <% If SH_EXAM_ADDR="러셀CORE 전주" Then%> selected <% End If %> >러셀CORE 전주</option>
								<option value="러셀CORE 창원" <% If SH_EXAM_ADDR="러셀CORE 창원" Then%> selected <% End If %> >러셀CORE 창원</option>
								<option value="러셀CORE 청주" <% If SH_EXAM_ADDR="러셀CORE 청주" Then%> selected <% End If %> >러셀CORE 청주</option>
							</select>
							<a class="fz15" href="javascript:;" onclick="showMap();" class="btn-small">학원별 위치</a>
							<span class="fz12">※ 러셀대치는 고2 수험생만 신청 가능합니다. </span>
						</div>
					</td>
				</tr>
				<tr>
					<th><p>학년</p></th>
					<td>
						<select name="SH_GRD" id="SH_GRD" style="width:100%;">
							<option value="">선택하세요</option>
							<option value="고2" <%if SH_GRD="고2" then%> selected <%end if%>>고2</option>
							<option value="고1" <%if SH_GRD="고1" then%> selected <%end if%>>고1</option>
							<option value="중3" <%if SH_GRD="중3" then%> selected <%end if%>>중3</option>
						</select>
					</td>
				</tr>
				<tr>
					
					<th><p>거주지</p></th>
					<td>
					<div class="btn-wrap">
						<input style="vertical-align:middle;" type="text" name="SH_ADDR" id="SH_ADDR" value="<%=SH_ADDR%>" readonly onclick="getRoadSearchPopOpen()"/>
						<!--<a href="javascript:;" onClick="MM_openBrWindow('/russel/public/zipcode/zipcode_new.asp','zipcode','scrollbars=no,width=500,height=600')">검색</a>-->
						<a href="javascript:;" onclick="getRoadSearchPopOpen()">검색</a>
					</div>

				</tr>
				<tr>
					<th colspan="2"><p>국어/수학 선택 과목</p></th>
				</tr>
				<tr>
					<td colspan="2">
						<select  name="SH_SEL_KOR" id="SH_SEL_KOR" style="width:48%;margin-right:3%;" onclick="">
							<option value="">국어 선택</option>
							<option value="화법과 작문" <%if SH_SEL_KOR = "화법과 작문" then%> selected <%end if%>>화법과 작문</option>
							<option value="언어와 매체" <%if SH_SEL_KOR = "언어와 매체" then%> selected <%end if%>>언어와 매체</option>
						</select>
						<select  name="SH_SEL_MATH" id="SH_SEL_MATH" style="width:48%" onclick="">
							<option value="">수학 선택</option>
							<option value="확률과 통계" <%if SH_SEL_MATH = "확률과 통계" then%> selected <%end if%>>확률과통계</option>
							<option value="미적분" <%if SH_SEL_MATH = "미적분" then%> selected <%end if%>>미적분</option>
							<option value="기하" <%if SH_SEL_MATH = "기하" then%> selected <%end if%>>기하</option>
						</select>
					</td>
				</tr>
				<tr>
					<th colspan="2"><p>탐구 선택 과목</p></th>
				</tr>
				<tr>
					<td colspan="2">
						<select  name="SH_SEL_TAM1" id="SH_SEL_TAM1" style="width:48%;margin-right:3%;" onchange="fncTamSet1()">
							<option value="">1과목 선택</option>
							<option value="생활과윤리" <%if SH_SEL_TAM1 = "생활과윤리" then%> selected <%end if%>>생활과윤리</option>
							<option value="윤리와사상" <%if SH_SEL_TAM1 = "윤리와사상" then%> selected <%end if%>>윤리와사상</option>
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
						<select  name="SH_SEL_TAM2" id="SH_SEL_TAM2" style="width:48%" onchange="fncTamSet2()">
							<option value="">2과목 선택</option>
							<option value="생활과윤리" <%if SH_SEL_TAM2 = "생활과윤리" then%> selected <%end if%>>생활과윤리</option>
							<option value="윤리와사상" <%if SH_SEL_TAM2 = "윤리와사상" then%> selected <%end if%>>윤리와사상</option>
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

					</td>
				</tr>
			</tbody>
		</table>
		<ul class="bottom-list">
			<li>※ 상기 입력된 정보로 수능 실전 모의체험 시험에 응시합니다. 빠진 항목 없이 입력 바랍니다.</li>
		</ul>
	</div>
	</form>
	<!-- //pop-info -->
	<!-- btn -->
    </div>
	
	<% if curYmdhmin <= 202411131400 then %>
	<div class="pop-btn-wrap">
		<a onclick="fncSubmit2()" class="btn-gray">수정하기</a>
	</div>
	<% end if %>
	<!-- //btn -->
</div>
<script type="text/javascript">
	function showMap(){
		var text = $('#SH_EXAM_ADDR option:selected').val();
		window.open('/intro/2024/csat/pop_map.asp?sel='+text+'','_blank','scrollbars=yes,width=680,height=800');
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
