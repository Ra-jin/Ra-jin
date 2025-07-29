<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->
<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual = "/inc/head.asp" -->
	<style>
		select {height:38px;}
		input[type="text"], input[type="number"], input[type="password"] {height:39px;}
		.info-list li label, .info-list li input {vertical-align: top;}
	</style>
</head>
<body>
<form name="form1" method="post" action="./popup_sql.asp">
<div class="input-pop">
	<p class="tit"><strong>학원 문자 수신 알리미 서비스</strong></p>
	<div class="pay-pop-in">
		<p class="txt">학원 문자 수신 알리미 서비스를 신청하시면<br>2024 재수생 우선선발반  관련 정보를 안내드립니다.</p>
	</div>
	<div class="cont-box-left cont-input">
		<h3>신청자 정보 <span class="stxt">※ 학생의 정보로 입력해주세요.</span></h3>
		<ul class="info-list">
			<li>
				<strong><label for="name">이름</label></strong>
                <span><input type="text" name="V_NAME" id="V_NAME" value="" style="width:100%" /></span>
			</li>
			<li>
				<strong>학생 연락처<span class="txt-red">*</span></strong>
				<span>
					<div class="input-tel">
						<select name="V_CEL_NO1" id="V_CEL_NO1" >
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select>
						<input type="number" name="V_CEL_NO2" id="V_CEL_NO2" title="전화번호 가운데 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);" /><span >-</span>
						<input type="number" name="V_CEL_NO3" id="V_CEL_NO3" title="전화번호 마지막 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);" />
					</div>
				</span>
			</li>
			<li>
				<strong>학부모 연락처<span class="txt-red">*</span></strong>
				<span>
					<div class="input-tel">
						<select name="V_PAR_NO1" id="V_PAR_NO1" >
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select>
						<input type="number" name="V_PAR_NO2" id="V_PAR_NO2" title="전화번호 가운데 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);" /><span >-</span>
						<input type="number" name="V_PAR_NO3" id="V_PAR_NO3" title="전화번호 마지막 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);" />
					</div>
				</span>
			</li>
			<li>
				<strong>성별</strong>
				<span>
					<label><input type="radio" name="V_GENDER" value="남자"> 남자</label>
					<label><input type="radio" name="V_GENDER" value="여자"> 여자</label>
				</span>
			</li>
			<li>
				<strong>계열<span class="txt-red">*</span></strong>
				<span>
					<select name="V_MAJOR" id="" style="width:100%" onchange=""> 
						<option value="인문">인문</option>
						<option value="자연">자연</option>
						<option value="예체능">예체능</option>
						<option value="공통">공통</option>
					</select>
				</span>
			</li>
			<li>
				<strong><label for="address">주소(시/도/구/동)</label></strong>
				<span><input type="text" name="V_ADDRESS" id="address" value="" style="width:100%" /></span>
			</li>
		</ul>		
	</div>
	<div class="cont-box-left cont-input">
		<h3>관심 학원<span class="txt-red">*</span> <span class="stxt">※ 여러 학원을 중복으로 선택할 수 있습니다.</span></h3>
		<p class="stit">러셀</p>
		<div class="input-list">
			<label><input type="checkbox" name="V_ACA_NM" value="강남"> 강남</label>
			<label><input type="checkbox" name="V_ACA_NM" value="대치"> 대치</label>
			<label><input type="checkbox" name="V_ACA_NM" value="목동"> 목동</label>
			<label><input type="checkbox" name="V_ACA_NM" value="부천"> 부천</label>
			<label><input type="checkbox" name="V_ACA_NM" value="분당"> 분당</label>
			<br>
			<label><input type="checkbox" name="V_ACA_NM" value="센텀"> 센텀</label>
			<label><input type="checkbox" name="V_ACA_NM" value="영통"> 영통</label>
			<label><input type="checkbox" name="V_ACA_NM" value="중계"> 중계</label>
			<label><input type="checkbox" name="V_ACA_NM" value="평촌"> 평촌</label>
			<label><input type="checkbox" name="V_ACA_NM" value="기숙"> 기숙</label>
			<label><input type="checkbox" name="V_ACA_NM" value="대구"> 대구</label>
		</div>	
		<p class="stit">러셀 CORE</p>	
		<div class="input-list">
			<label><input type="checkbox" name="V_ACA_NM" value="광주"> 광주</label>
			<label><input type="checkbox" name="V_ACA_NM" value="대전"> 대전</label>
			<label><input type="checkbox" name="V_ACA_NM" value="원주"> 원주</label>
			<label><input type="checkbox" name="V_ACA_NM" value="전주"> 전주</label>
			<label><input type="checkbox" name="V_ACA_NM" value="창원"> 창원</label>
			<label><input type="checkbox" name="V_ACA_NM" value="청주"> 청주</label>
		</div>
	</div>
	<div class="cont-box-left">
		<p class="f12">※ 알리미 신청이 완료되면 입력한 정보는 수정 또는 취소되지 않습니다.<br> &nbsp; &nbsp;수정 또는 취소를 원할 경우 러셀, 각 학원으로 연락주시기 바랍니다.
		</p>
	</div>
	
	<div class="agree-box">
		<h4>개인정보 수집·이용 동의</h4>
		<div class="terms-box">
			<strong>러셀학원은 아래와 같이 개인정보를 수집&middot;이용하고자 합니다.<br>내용을 자세히 읽으신 후 동의 여부를 결정하여 주십시오.</strong><br><br>

			(필수) 개인정보 수집 및 이용 동의<br>
            - 수집 목적 : 학년/학원별 러셀 학원 및 입시 정보 안내 문자 서비스 제공<br>
            - 수집 항목 : 학생 연락처, 학부모 연락처, 계열, 관심 학원<br>
            - 보유 기간 : 동의일로부터 1년
		</div>
		<p class="agree-txt">
            <input type="radio" id="privacyAgr_01" name="V_AGREE" value= "N" /> <label for="privacyAgr_01">동의하지 않습니다.</label>
            <input type="radio" id="privacyAgr_02" name="V_AGREE" value= "Y" /> <label for="privacyAgr_02">동의합니다.</label>
        </p>
		<div class="terms-box mt20">
            (선택) 개인정보 수집 및 이용 동의<br>
            - 수집 목적 : 학년/학원별 러셀 학원 및 입시 정보 안내 문자 서비스 제공<br>
            - 수집 항목 : 이름, 성별, 주소<br>
            - 보유 기간 : 동의일로부터 1년
		</div>
		<p class="agree-txt">
            <input type="radio" id="privacyAgr_03" name="V_AGREE_02" value= "N" /> <label for="privacyAgr_03">동의하지 않습니다.</label>
            <input type="radio" id="privacyAgr_04" name="V_AGREE_02" value= "Y" /> <label for="privacyAgr_04">동의합니다.</label>
        </p>
		<p class="terms-info">
			위의 개인정보 수집ㆍ이용에 대한 동의를 거부할 권리가 있습니다.<br>그러나 동의를 거부하실 경우 <span class="color-red">‘학원 문자 수신 알리미 서비스’</span>를 이용하실 수 없으며, 홈페이지 이용에 제한은 없습니다.
		</p>
		<p class="bt-blue bt-w94 mt20"><a href="javascript:;" onclick="fncSubmit()">알리미 신청하기</a></p>
	</div>
</div>
<script>

	function maxLengthCheck(object){
        if (object.value.length > object.maxLength){
            object.value = object.value.slice(0, object.maxLength);
        }    
	}
	
	function onlyNumber(obj) {
        var key;
        var keychr; 

        key = event.keyCode
        keychr = String.fromCharCode(key);        
		var keyCd = obj;

        //console.log("keyCd = " + key);

         
        if ((key == 8) || (key == 9) || (key == 13) || (key == 37) || (key == 39) || (key == 46) || (key == 116) || (key == 95) || (key == 96) || (key == 97) || (key == 98)
            || (key == 99) || (key == 100) || (key == 101) || (key == 102) || (key == 103) || (key == 104) || (key == 105) || (key == 229)) {
            return true;
        } else if ((("0123456789").indexOf(keychr) > -1)) {
            return true;
        
        } else { 
        
            event.returnValue = false;
            alert("숫자만 입력 가능합니다.");
            jQuery(obj).val('');
        }
	}


	function fncSubmit() {
		// if ($('input[name=V_NAME]').val() == "") {
		// 	alert("이름을 입력해주세요.");
		// 	return;
		// }

		if ($('input[name=V_CEL_NO2]').val() == "" || $('input[name=V_CEL_NO3]').val() == "") {
			alert("학생 연락처를 입력해주세요.");
			return;
		}

		if ($('input[name=V_PAR_NO2]').val() == "" || $('input[name=V_PAR_NO3]').val() == "") {
			alert("학부모 연락처를 입력해주세요.");
			return;
		}

		// if ($('input[name=V_GENDER]:checked').val() === undefined) {
		// 	alert("성별을 선택해주세요.");
		// 	return;
		// }

		// if ($('select[name=V_BIRTH_YEAR]').val() == "" || $('select[name=V_BIRTH_MONTH]').val() == "" || $('select[name=V_BIRTH_DAY]').val() == "") {
		// 	alert("생년월일을 입력해주세요.");
		// 	return;
		// }

		// if ($('select[name=V_GRADE]').val() == "") {
		// 	alert("학년을 입력해주세요.");
		// 	return;
		// }

		if ($('select[name=V_MAJOR]').val() == "") {
			alert("계열을 입력해주세요.");
			return;
		}

		// if ($('input[name=V_SCH_NM]').val() == "") {
		// 	alert("학교명을 입력해주세요.");
		// 	return;
		// }

		// if ($('input[name=V_ADDRESS]').val() == "") {
		// 	alert("주소를 입력해주세요.");
		// 	return;
		// }

		if ($('input[name=V_ACA_NM]:checked').val() === undefined) {
			alert("관심학원을 선택해주세요.");
			return;
		}

		if ($('input[name=V_AGREE]:checked').val() != "Y") {
			alert("개인정보 수집/이용에 동의 해주세요.");
			return;
		}

		if ($('input[name=V_AGREE_02]:checked').val() == undefined) {
			alert("개인정보 수집/이용 선택항목에 체크 해주세요.");
			return;
		}

		if (confirm("신청 완료 후 입력하신 정보는 수정되지 않습니다.\n신청하시겠습니까?")) {
			form1.submit();
		}
	}
</script>
</form>
</body>
</html>