<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->
<!-- #include virtual="/intro/2021/mocktest/address_search_inc.asp" -->
<%
	formFilter()

	If gLoginOk = True Then
		strSql = ""
	   	strSql = strSql & " SELECT uAddr_new "
		strSql = strSql & " FROM campus_dev.megastudy.dbo.MG_Member  WITH(NOLOCK)  "
    	strSql = strSql & " WHERE uId='" & gLoginMemId & "' "

		Set objRs = russelobjDb.sqlQuery(strSql, 3)
		
		uAddr_new = ""
		If Not (objRs.EoF And objRs.BoF) Then
		    uAddr_new = objRs(0)
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
<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual = "/inc/head.asp" -->
</head>

	<style>	
	.info-list li {padding-right:0!important}
	</style>
<script>
	function inputHSCH(code, type, name) {
		$('#SH_SCH_NM').val(name);
	}

		
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
    function fncSubmit() {
        if (submitCnt != 0) {
            alert('이미 등록 중입니다.')
            return false;
        }
		it = document.form1

		if (!$('input:radio[name=gender]').is(':checked')) {
			alert('성별을 입력하세요.'); $('#man').focus(); return false;
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
            alert('학교명을 입력하세요.'); $('#school').focus(); return false;
        }
        if (jQuery.trim($('#SH_EXAM_ADDR').val()).length < 1) {
            alert('응시장소를 선택하세요.'); $('#SH_EXAM_ADDR').focus(); return false;
        }
        if (jQuery.trim($('#SH_GRD').val()).length < 1) {
            alert('학년을 입력하세요.'); $('#SH_GRD').focus(); return false;
        }
        if (jQuery.trim($('#SH_ADDR').val()).length < 1) {
            alert('거주지를 입력하세요.'); $('#SH_ADDR').focus(); return false;
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
		
		
		var privacyAgr = $('#no').is(':checked');
		if (privacyAgr == false){
			alert('개인 정보 수집·이용에 동의해주세요.'); $('#no').focus(); return false;
		}

		 if (confirm('신청하시겠습니까?')) {
            submitCnt = submitCnt + 1;
            it.submit();
        }
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
<form name="form1" id="form1" method="post" action="pop_mock_RegEx.asp">
<div class="pay-pop">
    <p class="tit"><strong>2024 러셀 수능 실전 모의체험 신청하기</strong></p>
    <div class="pay-pop-in">
		<div class="pop-info">
			<ul class="info-list">
				<li>
					<strong>성명</strong>
					<span><input type="text" style="width:100%" value="<%=gLoginMemName%>"/></span>
				</li>
				<li>
					<strong>성별</strong>
					<span>
						<label for="man"><input type="radio" name="gender" id="man" value="남자"> 남</label>
						<label for="woman"><input type="radio" name="gender" id="woman" value="여자"> 여</label>
					</span>
				</li>
				<li>
					<strong>생년월일</strong>
					<span>
						<div class="input-day">
							<input type="text" name="SH_BIRTH1" id="SH_BIRTH1" maxlength="4"><span>년</span>
							<input type="text" name="SH_BIRTH2" id="SH_BIRTH2" maxlength="2"><span>월</span>
							<input type="text" name="SH_BIRTH3" id="SH_BIRTH3" maxlength="2"><span>일</span>
						</div>
					</span>
				</li>
				<li>
					<strong>학생 연락처</strong>
					<span>
						<div class="input-tel">
							<select name="cel_no1" id="cel_no1">
								<option value="010" <% If uMobile1 = 010 Then %>selected <% End If %>>010</option>
								<option value="011" <% If uMobile1 = 011 Then %>selected <% End If %>>011</option>
								<option value="016" <% If uMobile1 = 016 Then %>selected <% End If %>>016</option>
								<option value="017" <% If uMobile1 = 017 Then %>selected <% End If %>>017</option>
								<option value="018" <% If uMobile1 = 018 Then %>selected <% End If %>>018</option>
								<option value="019" <% If uMobile1 = 019 Then %>selected <% End If %>>019</option>
							</select>
							<input type="number" name="cel_no2" id="cel_no2" value="<%=uMobile2%>" title="전화번호 가운데 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);"><span>-</span>
							<input type="number" name="cel_no3" id="cel_no3" value="<%=uMobile3%>" title="전화번호 마지막 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);">
						</div>
					</span>
				</li>
				<li>
					<strong>학부모 연락처</strong>
					<span>
						<div class="input-tel">
							<select name="cel_no4" id="cel_no4">
								<option value="010" <% If pMobile1 = 010 Then %>selected  <% End If %>>010</option>
								<option value="011" <% If pMobile1 = 011 Then %>selected <% End If %>>011</option>
								<option value="016" <% If pMobile1 = 016 Then %>selected <% End If %>>016</option>
								<option value="017" <% If pMobile1 = 017 Then %>selected <% End If %>>017</option>
								<option value="018" <% If pMobile1 = 018 Then %>selected <% End If %>>018</option>
								<option value="019" <% If pMobile1 = 019 Then %>selected <% End If %>>019</option>
							</select>
							<input type="number" name="cel_no5" id="cel_no5" value="<%=pMobile2%>" title="전화번호 가운데 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);"><span>-</span>
							<input type="number" name="cel_no6" id="cel_no6" value="<%=pMobile3%>" title="전화번호 마지막 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);">
						</div>
					</span>
				</li>
				<li>
					<strong><label for="school">학교명</label></strong>
					<span>
						<input type="text" id="SH_SCH_NM" class="js-bt-school js-mask" name="SH_SCH_NM" readonly style="width:67%"><a href="#" class="bt-school js-bt-school js-mask">학교검색</a>
					</span>
				</li>
				<li>
					<strong>응시장소</strong>
					<span>
						<select name="SH_EXAM_ADDR" id="SH_EXAM_ADDR" style="width:67%">
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
						</select><a href="javascript:;" onclick="showMap();" class="bt-school" style="font-size: 1.2rem;letter-spacing: -1.5px;">학원별 위치</a><br>
						<span class="color-red f10 mt5" style="width:100%;display:block;line-height: 1.5;">※ 러셀대치는 고2 수험생만 신청 가능합니다. </span>
					</span>
				</li>
				<li>
					<strong>학년</strong>
					<span>
						<select name="SH_GRD" id="SH_GRD" style="width:100%;">
							<option value="">선택하세요</option>
							<option value="고2">고2</option>
							<option value="고1">고1</option>
							<option value="중3">중3</option>
						</select>
					</span>
				</li>

				<li>
					<strong>거주지</strong>
					<span>
						<input style="width:64%;" type="text" name="SH_ADDR" id="SH_ADDR" value="" readonly onclick="getRoadSearchPopOpen()"  />
						<a href="javascript:;" onclick="getRoadSearchPopOpen()" class="bt-school">검색</a>
					</span>
				</li>
				<li>
					<strong>국어/수학 선택 과목</strong>
					<span>
						<select  name="SH_SEL_KOR" id="SH_SEL_KOR" style="width:47%;margin-right:2%;" onclick="">
							<option value="">국어 선택</option>
							<option value="언어와 매체">언어와 매체</option>
							<option value="화법과 작문">화법과 작문</option>
						</select>
						<select  name="SH_SEL_MATH" id="SH_SEL_MATH" style="width:47%" onclick="">
							<option value="">수학 선택</option>
							<option value="확률과 통계">확률과통계</option>
							<option value="미적분">미적분</option>
							<option value="기하">기하</option>
						</select>
					</span>
				</li>
				<li>
					<strong>탐구 선택 과목</strong>
					<span>
						<select  name="SH_SEL_TAM1" id="SH_SEL_TAM1" style="width:47%;margin-right:2%;" onchange="fncTamSet1()">
							<option value="1">1과목 선택</option>
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
						<select  name="SH_SEL_TAM2" id="SH_SEL_TAM2" style="width:47%" onchange="fncTamSet2()">
							<option value="2">2과목 선택</option>
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
					</span>
				</li>
			</ul>
			<ul class="list-bullet m0 color-gray-03">
				<li>상기 입력된 정보로 수능 실전 모의체험 시험에 응시합니다. 빠진 항목 없이 입력 바랍니다.</li>
			</ul>
		</div>
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
	<div class="agree-box">
		<h4>개인정보 수집·이용 동의</h4>
		<div class="terms-box">
			<strong class="color-gray">러셀 학원은 아래와 같이 개인정보를 수집·이용하고자 합니다. 내용을 자세히 읽으신 후 동의 여부를 결정하여 주십시오.</strong><br><br>
			
			※ 근거 : 개인정보 보호법 제15조 및 제22조[수집항목] 학생의 이름, 연락처, 성별, 생년월일, 학년, 계열, 학교명, 주소, 학부모의 연락처<br>[수집목적] 학원 재원 정보 조회, 학원 수강 관련 정보제공 등에 사용<br>[개인정보의 보유 및 이용기간] 재원 정보 조회 후 1년 이내 파기

		</div>
		<p class="terms-info">위의 개인정보 수집ㆍ이용에 대한 동의를 거부할 권리가 있습니다.<br>그러나 동의를 거부하실 경우, 모의체험 서비스 내용 변경 안내와 이벤트 당첨 및 장학 혜택 관련 지원에 제한이 있을 수 있으며, 홈페이지 이용에 제한은 없습니다.</p>
		<p class="agree-txt text-align-left" style="margin-left: 4%;">
			<input type="checkbox" id="no" name="privacyAgr" value="Y"> <label for="no">개인정보 수집·이용에 동의합니다.</label>
		</p>
		<div class="marketing-box mt20">
			<h4>마케팅 활용 동의 및 광고 수신 동의</h4>
			<div class="terms-info">
				<strong>마케팅 활용 동의 및 광고 수신 동의</strong><br>
				설명회, 입시 정보 및 학원 강좌 정보 등 다양한 학원 정보를 제공합니다.
			</div>
			<p class="agree-txt text-align-left">
				<input type="checkbox" id="myes" name="smsAgree" value="Y"> <label for="myes">SMS 수신 동의 (선택)</label> &nbsp;
				<input type="checkbox" id="mno" name="emailAgree" value="Y"> <label for="mno">E-Mail 수신 동의 (선택)</label>
			</p>
		</div>
		<p class="bt-blue bt-w94 mt20"><a href="#_" onclick="fncSubmit()">신청하기</a></p>
	</div>
	<!-- //pop-info -->
	<!-- 닫기 버튼 -->
	<a href="javascript:window.close()" style="position:absolute;top:0;right:6%;font-size:30px;">X</a>
</div>
</form> 
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
		window.open('/intro/2023/csat/pop_map.asp?sel='+text+'','_blank','scrollbars=yes,width=680,height=560');
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

</script>
</body>
</html>