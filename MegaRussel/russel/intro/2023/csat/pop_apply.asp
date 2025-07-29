<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!-- #include virtual="/intro/2021/mocktest/address_search_inc.asp" -->
<%
	formFilter()
	
	If curYmdhmin >= 202311151400 then 
		' ScriptBegin
        ' ScriptWrite "alert('신청 마감되었습니다.');"
        ' ScriptWrite "self.close();"
        ' ScriptEnd
        ' response.end
	End If

	If gLoginOk = True Then
		strSql = ""
	    strSql = strSql & " SELECT a.uAddr_new, a.uMobile_enc, c.pMobile_enc "
	    strSql = strSql & " FROM MG_Member a WITH(NOLOCK)  "
        strSql = strSql & "		LEFT OUTER JOIN MG_Member_Parent c WITH(NOLOCK) ON a.code = c.Mcode "
	    strSql = strSql & " WHERE a.uId='" & gLoginMemId & "' "

	    Set objRs = objdb.sqlQuery(strSql, 1)
	    uAddr_new = ""
	    If Not (objRs.EoF And objRs.BoF) Then
		    uAddr_new = objRs(0)
            uMobile = splitPhone(strDecode(objRs(1)))

			If uMobile <> "" Then
				uMobileList = split(uMobile, "-")
				If Ubound(uMobileList) = 3 Then
					uMobile1 = uMobileList(0)
					uMobile2 = uMobileList(1)
					uMobile3 = uMobileList(2)
				End If
			End If

			
            pMobile = splitPhone(strDecode(objRs(2)))
			If pMobile <> "" Then

				pMobileList = split(pMobile, "-")
				If Ubound(pMobileList) = 3 Then
					pMobile1 = pMobileList(0)
					pMobile2 = pMobileList(1)
					pMobile3 = pMobileList(2)
				End If
			End If

	    End If
	    objRs.close
	    Set objRs = Nothing

		strSql = ""
		strSql = strSql &" SELECT EM_NUM "
		strSql = strSql &" FROM MS_EVTRUSSEL_MAS WITH(NOLOCK)"
		strSql = strSql &" WHERE EM_TITLE LIKE '%2024 수능 실전%' AND EM_DEL_FLG ='N' "

		Set objRs = russelobjdb.sqlQuery(strSql, 3)
		If Not (objRs.EoF And objRs.BoF) Then
			EM_NUM = objRs(0)
		End If
		objRs.close
		Set objRs = Nothing

		strSql = ""
	    strSql = strSql & " SELECT ED_MEM_NM"
	    strSql = strSql & " FROM MS_EVTRUSSEL_DTL WITH(NOLOCK)  "
	    strSql = strSql & " WHERE ED_EM_NUM = '"&EM_NUM&"'  "
		strSql = strSql & " 	AND ED_MEM_ID = '" & gLoginMemid & "' "
		strSql = strSql & " 	AND ED_MEM_TYPE = '1' "

	    Set objRs = russelobjdb.sqlQuery(strSql, 1)
	    sReservExistedName = ""
	    If Not (objRs.EoF And objRs.BoF) Then
		    sReservExistedName = objRs(0)
	    End If
	    objRs.close
	    Set objRs = Nothing

	    If sReservExistedName <> "" Then
		    %>
		    <script>
		    alert("<%=sReservExistedName%>님은 이미 등록 되어있습니다.");
		    self.close();
		    </script>
		    <%
		    response.end
	    End If
	Else
		%>
		<script>
		alert("로그인 후 신청해주세요.");
		self.close();
		</script>
		<%
		response.end
    End If

%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="title" content="" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" type="text/css" href="/common/css/2021/pop.css" />
</head>
<style>
.pop-input-table td{padding-top:5px!important;padding-bottom:5px!important;font-size:17px!important}
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
	
    function fncSubmit() {
        if (submitCnt != 0) {
            alert('이미 등록 중입니다.')
            return false;
        }
		it = document.form1

		if (!$('input:radio[name=gender]').is(':checked')) {
			alert('성별을 입력하세요.'); $('#man').focus(); return false;
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
		
		if ($('#SH_BIRTH1').val() < 1900 || $('#SH_BIRTH1').val() > 2030){ 
        	alert('생년월일 년도를 확인하세요.'); $('#SH_BIRTH2').focus(); return false;
    	}

		if($('#SH_BIRTH2').val() < 1 || $('#SH_BIRTH2').val() > 12 ){
			alert('생년월일 월을 확인하세요.'); $('#SH_BIRTH2').focus(); return false;
		}
		
		if($('#SH_BIRTH3').val() < 1 || $('#SH_BIRTH3').val() > 31 ){
			alert('생년월일 일을 확인하세요.'); $('#SH_BIRTH3').focus(); return false;
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

		var privacyAgr = $('#privacyAgr_02').is(':checked');

		if (privacyAgr == false){
			alert('개인 정보 수집·이용에 동의해주세요.'); $('#privacyAgr_02').focus(); return false;
		}

        if (confirm('신청하시겠습니까?')) {
            submitCnt = submitCnt + 1;
            it.submit();
        }
	}
	
	
function GetLastDay(date){
  
    if(date == null)
        date = document.getElementById("year").value;
 
    var result = document.getElementById("result");
 
    var year, month;
    var lastday;
 
    year = Number(date.substr(0,4));
    month = Number(date.substr(4,2));
 
    if(month < 1 || month > 12){
        alert("달을 정확하게 입력하세요");
        document.getElementById("year").value = "";
        document.getElementById("year").focus();
        return;
    }
    if(month == 2){
        if(year%4 == 0 && year%100 != 0 || year%400 == 0){
          lastday = 29;
        }else{
          lastday = 28;
        }
    }else if(month == 4 || month == 6 || month == 9 || month == 11){
        lastday = 30;
    }else{
        lastday = 31;
    }    
 
    return lastday;
}
	
	
	function onlyNumber() {
        var key;
        var keychr;

        key = event.keyCode
        keychr = String.fromCharCode(key);

        if ((key == 8) || (key == 9) || (key == 13) || (key == 37) || (key == 39) || (key == 46) || (key == 116) || (key == 95) || (key == 96) || (key == 97) || (key == 98)
            || (key == 99) || (key == 100) || (key == 101) || (key == 102) || (key == 103) || (key == 104) || (key == 105)) {
            return true;
        } else if ((("0123456789").indexOf(keychr) > -1)) {
            return true;
        } else {
            event.returnValue = false;
            alert("숫자만 입력 가능합니다.");
        }
    }
	function maxLengthCheck(object){
        if (object.value.length > object.maxLength){
            object.value = object.value.slice(0, object.maxLength);
        }
    }
</script>

<body>
<div class="popup">
	<h1 class="">2024 러셀 수능 실전 모의체험</h1>
	<div class="pop-info">
	<form name="form1" id="form1" method="post" action="./pop_mock_RegEx.asp">
	
		<table class="pop-input-table">
			<colgroup>
				<col width="170px">
				<col width="*">
			</colgroup>
			<tbody>
				<tr>
					<th><p>성명</p></th>
					<td><%=gLoginMemName%></td>
				</tr>
				<tr>
					<th><p>성별</p></th>
					<td class="input-radio">
						<label for="man"><input type="radio" name="gender" id="man" value="남자">남</label>
						<label for="woman"><input type="radio" name="gender" id="woman" value="여자">여</label>
					</td>
				</tr>
				<tr>
					<th><p>생년월일</p></th>
					<td>
						<div class="input-day">
							<label><input type="text" name="SH_BIRTH1" id="SH_BIRTH1" maxlength="4"><span>년</span></label>
							<label><input type="text" name="SH_BIRTH2" id="SH_BIRTH2" maxlength="2"><span>월</span></label>
							<label><input type="text" name="SH_BIRTH3" id="SH_BIRTH3" maxlength="2"><span>일</span></label>
						</div>
					</td>
				</tr>
				<tr>
					<th><p>학생 연락처</p></th>
					<td>
						<div class="input-tel">
                            <select name="cel_no1" id="cel_no1" style="width:120px;text-align:left;">
								<option value="010" <% If uMobile1 = "010" Then %>selected <% End If %>>010</option>
								<option value="011" <% If uMobile1 = "011" Then %>selected <% End If %>>011</option>
								<option value="016" <% If uMobile1 = "016" Then %>selected <% End If %>>016</option>
								<option value="017" <% If uMobile1 = "017" Then %>selected <% End If %>>017</option>
								<option value="018" <% If uMobile1 = "018" Then %>selected <% End If %>>018</option>
								<option value="019" <% If uMobile1 = "019" Then %>selected <% End If %>>019</option>
                            </select>
                            <span>- </span><input type="text" style="width:120px;" name="cel_no2" id="cel_no2" value="<%=uMobile2%>" title="전화번호 가운데 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);"><span> -</span>
							<input type="text" name="cel_no3" style="width:120px;" id="cel_no3" value="<%=uMobile3%>" title="전화번호 마지막 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);">
                        </div>
					</td>
				</tr>
				<tr>
					<th><p>학부모 연락처</p></th>
					<td>
						<div class="input-tel">
                            <select name="cel_no4" id="cel_no4" style="width:120px;text-align:left;">
								<option value="010" <% If pMobile1 = "010" Then %>selected  <% End If %>>010</option>
								<option value="011" <% If pMobile1 = "011" Then %>selected <% End If %>>011</option>
								<option value="016" <% If pMobile1 = "016" Then %>selected <% End If %>>016</option>
								<option value="017" <% If pMobile1 = "017" Then %>selected <% End If %>>017</option>
								<option value="018" <% If pMobile1 = "018" Then %>selected <% End If %>>018</option>
								<option value="019" <% If pMobile1 = "019" Then %>selected <% End If %>>019</option>
                            </select>
                            <span> - </span><input type="text" style="width:120px;" name="cel_no5" id="cel_no5" value="<%=pMobile2%>" title="전화번호 가운데 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);"><span> -</span>
							<input type="text" name="cel_no6" style="width:120px;" id="cel_no6" value="<%= pMobile3%>" title="전화번호 마지막 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);">
                        </div>
					</td>
				</tr>
				<tr>
					<th><p>학교명</p></th>
					<td>
						<div class="btn-wrap">
							<input type="text" name="SH_SCH_NM" id="SH_SCH_NM" value="" readonly onclick="MM_openBrWindow('/russel/member/popup_school.asp?kind=H', 'popup', 'width=500,height=380')" />
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
								<option value="러셀강남">러셀 강남</option>
								<option value="러셀대치">러셀 대치</option>
								<option value="러셀목동">러셀 목동</option>
								<option value="러셀부천">러셀 부천</option>
								<option value="러셀분당" disabled>러셀 분당[신청 마감]</option>
								<option value="러셀영통" disabled>러셀 영통[신청 마감]</option>
								<option value="러셀중계">러셀 중계</option>
								<option value="러셀평촌">러셀 평촌</option>
								<option value="러셀대구">러셀 대구</option>
								<option value="러셀센텀">러셀 센텀</option>
								<option value="러셀울산">러셀 울산</option>
								<option value="러셀CORE 광주">러셀CORE 광주</option>
								<option value="러셀CORE 대전">러셀CORE 대전</option>
								<option value="러셀CORE 원주">러셀CORE 원주</option>
								<option value="러셀CORE 전주">러셀CORE 전주</option>
								<option value="러셀CORE 창원">러셀CORE 창원</option>
								<option value="러셀CORE 청주">러셀CORE 청주</option>
							</select><a style="margin: 0 0 0 13px;" href="javascript:;" onclick="showMap();" class="btn-small fz15">학원별 위치</a>
							<span class="fz12">※ 러셀 대치는 고2 수험생만 신청 가능합니다.
							</span>
						</div>
						
					</td>
				</tr>
				<tr>
					<th><p>학년</p></th>
					<td>
						<select name="SH_GRD" id="SH_GRD" style="width:100%;">
							<option value="">선택하세요</option>
							<option value="고2">고2</option>
							<option value="고1">고1</option>
							<option value="중3">중3</option>
						</select>
					</td>
				</tr>
				<tr>
					
					<th><p>거주지</p></th>
					<td>
					<div class="btn-wrap">
						<input type="text" name="SH_ADDR" id="SH_ADDR" value="" readonly  onclick="getRoadSearchPopOpen()" />
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
							<option value="화법과 작문">화법과 작문</option>
							<option value="언어와 매체">언어와 매체</option>
						</select>
						<select  name="SH_SEL_MATH" id="SH_SEL_MATH" style="width:48%" onclick="">
							<option value="">수학 선택</option>
							<option value="확률과 통계">확률과 통계</option>
							<option value="미적분">미적분</option>
							<option value="기하">기하</option>
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
							<option value="생활과윤리">생활과윤리</option>
							<option value="윤리와사상">윤리와사상</option>
							<option value="한국지리">한국지리</option>
							<option value="세계지리">세계지리</option>
							<option value="동아시아사">동아시아사</option>
							<option value="세계사">세계사</option>
							<option value="정치와법">정치와법</option>
							<option value="경제">경제</option>
							<option value="사회문화">사회문화</option>
							<option value="물리학I">물리학I</option>
							<option value="화학I">화학I</option>
							<option value="생명과학I">생명과학I</option>
							<option value="지구과학I">지구과학I</option>
							<option value="물리학II">물리학II</option>
							<option value="화학II">화학II</option>
							<option value="생명과학II">생명과학II</option>
							<option value="지구과학II">지구과학II</option>
						</select>
						<select  name="SH_SEL_TAM2" id="SH_SEL_TAM2" style="width:48%" onchange="fncTamSet2()">
							<option value="">2과목 선택</option>
							<option value="생활과윤리">생활과윤리</option>
							<option value="윤리와사상">윤리와사상</option>
							<option value="한국지리">한국지리</option>
							<option value="세계지리">세계지리</option>
							<option value="동아시아사">동아시아사</option>
							<option value="세계사">세계사</option>
							<option value="정치와법">정치와법</option>
							<option value="경제">경제</option>
							<option value="사회문화">사회문화</option>
							<option value="물리학I">물리학I</option>
							<option value="화학I">화학I</option>
							<option value="생명과학I">생명과학I</option>
							<option value="지구과학I">지구과학I</option>
							<option value="물리학II">물리학II</option>
							<option value="화학II">화학II</option>
							<option value="생명과학II">생명과학II</option>
							<option value="지구과학II">지구과학II</option>
						</select>

					</td>
				</tr>
			</tbody>
		</table>
		<ul class="bottom-list">
			<li>※ 상기 입력된 정보로 수능 실전 모의체험 시험에 응시합니다. 빠진 항목 없이 입력 바랍니다.</li>
		</ul>
	</div>
	<!-- //pop-info -->
	<!-- privacy -->
	<div class="memCombine privacyAgree">
		<h4>개인정보 수집·이용 동의</h4>
		<div class="privacyAgreeBox">
			<strong style="line-height:2;">러셀 학원은 아래와 같이 개인정보를 수집·이용하고자 합니다. 내용을 자세히 읽으신 후 동의 여부를 결정하여 주십시오.</strong><br>
			<strong style="line-height:1.6;">※ 근거 : 개인정보 보호법 제15조 및 제22조</strong><br>
			<div>
				<strong>※ 근거 : 개인정보 보호법 제15조 및 제22조</strong>[수집항목] 학생의 이름, 연락처, 성별, 생년월일, 학년, 계열, 학교명, 주소, 학부모의 연락처<br>[수집목적] 학원 재원 정보 조회, 학원 수강 관련 정보제공 등에 사용<br>[개인정보의 보유 및 이용기간] 재원 정보 조회 후 1년 이내 파기
			</div>
		</div>
		<p class="iptt">위의 개인정보 수집ㆍ이용에 대한 동의를 거부할 권리가 있습니다.<br>그러나 동의를 거부하실 경우, 모의체험 서비스 내용 변경 안내와 이벤트 당첨 및 장학 혜택 관련 지원에 제한이 있을 수 있으며, 홈페이지 이용에 제한은 없습니다.</p>
		<div class="privacyAgr">
			<!-- <input type="radio" id="privacyAgr_01" name="privacyAgr" value="N" checked="checked"><label for="privacyAgr_01">아니오, 동의하지 않습니다.</label> -->
			<input type="checkbox" id="privacyAgr_02" name="privacyAgr" value="Y"><label for="privacyAgr_02">개인정보 수집·이용에 동의합니다.</label>
		</div>
	</div>
	<div class="memCombine privacyAgree">
		<h4>마케팅 활용 동의 및 광고 수신 동의</h4>
		<div class="privacyAgreeBox">
			<p>설명회, 입시 정보 및 학원 강좌 정보 등 다양한 학원 정보를 제공합니다.</p>
			<div class="privacyAgr" style="text-align:left;">
				<input style="margin:0 0 10px;text-align:left;" type="checkbox" id="smsAgree" name="smsAgree" value="Y"><label style="vertical-align:2px;color:#3f3f3f;" for="privacyAgr_01">SMS 수신 동의 (선택)</label><br>
				<input style="margin:0;text-align:left;" type="checkbox" id="emailAgree" name="emailAgree" value="Y"><label style="vertical-align:-2px;color:#3f3f3f;" for="privacyAgr_02">E-Mail 수신 동의 (선택)</label>
			</div>
		</div>

	</div>
	</form>
	<!-- //privacy -->
	<!-- btn -->
	<div class="pop-btn-wrap">
		<a href="#_" onclick="fncSubmit()" class="btn-blue">신청하기</a>
	</div>
	<!-- //btn -->
</div>
<script type="text/javascript">
	function showMap(){
		var text = $('#SH_EXAM_ADDR option:selected').val();
		window.open('/intro/2023/csat/pop_map.asp?sel='+text+'','_blank','scrollbars=yes,width=680,height=800');
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
<!-- //popup -->
</body>
</html>


