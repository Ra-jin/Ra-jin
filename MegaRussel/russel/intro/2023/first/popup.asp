<!DOCTYPE html>
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Page.asp" -->
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="" />
	<link rel="shortcut icon" type="image/x-icon" href="#" />
	<title>메가스터디 러셀</title>
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400,500,700&display=swap&subset=korean" rel="stylesheet">	
	<link rel="stylesheet" type="text/css" href="/russel/library/css/common.css" />
	<link rel="stylesheet" type="text/css" href="/russel/library/css/style.css" />
	<script type="text/javascript" src="/russel/public/jquery/jquery-1.8.3.min.js"></script>

	<style>
		.first{padding:30px 20px 40px 20px;}
		.first .text{font-size:15px;line-height: 1.4;text-align: center;margin-bottom: 20px;font-weight: bold;background:none;}
		.first .text strong{color: #4aa9ba;}
		.first .box{border: 1px solid #ededed;background: #fbfbfb;padding:13px 20px 13px 20px;font-size:12px;letter-spacing: -1px;margin-bottom: 10px;}
		.first .box h4{padding:0 0 10px 6px;margin:0;font-size:13px;color: #ee3b41;background: url(https://russeldata.megastudy.net/campus/images/campus/library/russel/entinfo/ic_reservation.gif) 0 4px no-repeat;}
		.first .box .ch{padding:10px 0 0 0;color: #2d2d2d;letter-spacing: -1px;}
		.first .box .ch input{margin-right: 4px;}
		.first .info{border: 3px solid #ededed;padding:13px 13px 13px 13px;}
		.first .info h4{font-size:15px;color: #212121;padding-bottom: 13px;margin:0;}
		.first .info ul{font-size:13px;padding:0 0 0 0;}
		.first .info li{background: url(https://russeldata.megastudy.net/campus/images/campus/library/russel/entinfo/ic_reservation2.gif) 0 4px no-repeat;padding:0 0 4px 8px;line-height: 1;}
		.first .board_view_type_02 table{width:100%;}
		.first_btn{width:248px;font-size:16px;background: #ee3b41 url(https://russeldata.megastudy.net/campus/images/campus/library/russel/entinfo/bg_reservation.gif) 100% 50% no-repeat;padding-bottom: 18px;}
		.first .input_box{padding:20px;padding-right:0;border:1px solid #eee;text-align:center;}
		.first .input_box label{display:inline-block;margin-right:20px;}

	</style>
	

<script language="javascript" src="/russel/Public/Js/Util.js"></script>
<script language="javascript" src="/russel/Public/Basic.js"></script>
<script>
	function inputHSCH(code, type, name) {
		form1.V_SCH_NM.value = name;
	}

	function fncSubmit() {
		// if (form1.V_NAME.value == "") {
		// 	alert("이름을 입력해주세요.");
		// 	return;
		// }

		if ($('input[name=V_ACA_NM]:checked').val() === undefined) {
			alert("관심학원을 선택해주세요.");
			return;
		}

		if (form1.V_CEL_NO1.value == "" || form1.V_CEL_NO2.value == "" || form1.V_CEL_NO3.value == "") {
			alert("학생 연락처를 입력해주세요.");
			return;
		}

		if (form1.V_PAR_NO1.value == "" || form1.V_PAR_NO2.value == "" || form1.V_PAR_NO3.value == "") {
			alert("학부모 연락처를 입력해주세요.");
			return;
		}

		// if ($('input[name=V_GENDER]:checked').val() === undefined) {
		// 	alert("성별을 선택해주세요.");
		// 	return;
		// }

		// if (form1.V_BIRTH_YEAR.value == "" || form1.V_BIRTH_MONTH.value == "" || form1.V_BIRTH_DAY.value == "") {
		// 	alert("생년월일을 입력해주세요.");
		// 	return;
		// }

		// if (form1.V_GRADE.value == "") {
		// 	alert("학년을 입력해주세요.");
		// 	return;
		// }

		if (form1.V_MAJOR.value == "") {
			alert("계열을 입력해주세요.");
			return;
		}

		// if (form1.V_SCH_NM.value == "") {
		// 	alert("학교명을 입력해주세요.");
		// 	return;
		// }

		// if (form1.V_ADDRESS.value == "") {
		// 	alert("주소를 입력해주세요.");
		// 	return;
		// }

		if ($('input[name=V_AGREE]:checked').val() != "Y") {
			alert("개인정보 수집/이용에 동의 해주세요.");
			return;
		}

		if (confirm("신청 완료 후 입력하신 정보는 수정되지 않습니다.\n신청하시겠습니까?")) {
			form1.submit();
		}
	}
</script>
</head>
<body>
<form name="form1" method="post" action="./popup_sql.asp">
	<div class="g_my_pop">
		<h2 class="tit">학원 문자 수신 알리미 서비스</h2>
		<div class="first">
			<p class="text"><strong>학원 문자 수신 알리미 서비스</strong>를 신청하시면<br>2024 <% If GetCampusVarsSiteMGC("_CAMPUS_CODE_")  = "CD0248" Then '평촌일 경우 %>N수 정규반<%else%>재수생 우선선발반<%end if%> 관련 정보를 안내드립니다.</p>
			<div class="board_view_type_02">
				<h4 class="h4_type_02">
					신청자 정보 <span class="fz13 pl10">※ 학생의 정보로 입력해주세요.</span>
				</h4>
				<table class="mb20">
					<colgroup>
						<col width="120">
						<col>
					</colgroup>
					<tbody>
						<tr>
							<th><strong class="require">*</strong>관심 학원</th>
							<td>
								<label><input type="checkbox" name="V_ACA_NM" value="강남"> 강남</label>
								<label><input type="checkbox" name="V_ACA_NM" value="대치"> 대치</label>
								<label><input type="checkbox" name="V_ACA_NM" value="목동"> 목동</label>
								<label><input type="checkbox" name="V_ACA_NM" value="부천"> 부천</label>
								<label><input type="checkbox" name="V_ACA_NM" value="분당"> 분당</label>
								<label><input type="checkbox" name="V_ACA_NM" value="영통"> 영통</label>
								<label><input type="checkbox" name="V_ACA_NM" value="중계"> 중계</label>
								<label><input type="checkbox" name="V_ACA_NM" value="평촌"> 평촌</label>
								<label><input type="checkbox" name="V_ACA_NM" value="대구"> 대구</label>
								<label><input type="checkbox" name="V_ACA_NM" value="센텀"> 센텀</label><br>
								<label><input type="checkbox" name="V_ACA_NM" value="광주"> CORE 광주</label>
								<label><input type="checkbox" name="V_ACA_NM" value="대전"> CORE 대전</label>
								<label><input type="checkbox" name="V_ACA_NM" value="원주"> CORE 원주</label>
								<label><input type="checkbox" name="V_ACA_NM" value="전주"> CORE 전주</label>
								<label><input type="checkbox" name="V_ACA_NM" value="창원"> CORE 창원</label>
								<label><input type="checkbox" name="V_ACA_NM" value="청주"> CORE 청주</label><br>
								<label><input type="checkbox" name="V_ACA_NM" value="기숙"> 기숙</label><br>
							</td>
						</tr>
						<tr>
							<th scope="row">이름</th>
							<td><input name="V_NAME" id="reserv_name" type="text" value="" class="txt w140" /></td>
						</tr>
						<tr>
							<th scope="row"><strong class="require">*</strong>학생 연락처</th>
							<td>
								<select name="V_CEL_NO1" id="V_CEL_NO1">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="017">017</option>
									<option value="016">016</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
								<span class="line">-</span>
								<input type="text" name="V_CEL_NO2" id="V_CEL_NO2" class="txt w44" style="ime-mode:disabled;" maxlength="4" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
								<span class="line">-</span>
								<input type="text" name="V_CEL_NO3" id="V_CEL_NO3" class="txt w44" style="ime-mode:disabled;" maxlength="4" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
							</td>
						</tr>
						<tr>
							<th scope="row"><strong class="require">*</strong>학부모 연락처</th>
							<td>
								<select name="V_PAR_NO1" id="V_PAR_NO1">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="017">017</option>
									<option value="016">016</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
								<span class="line">-</span>
								<input type="text" name="V_PAR_NO2" id="V_PAR_NO2" class="txt w44" style="ime-mode:disabled;" maxlength="4" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
								<span class="line">-</span>
								<input type="text" name="V_PAR_NO3" id="V_PAR_NO3" class="txt w44" style="ime-mode:disabled;" maxlength="4" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
							</td>
						</tr>
						<tr>
							<th scope="row">성별</th>
							<td>
								<label><input type="radio" name="V_GENDER" value="남자"> 남자</label>
								<label><input type="radio" name="V_GENDER" value="여자"> 여자</label>
							</td>
						</tr>
						<tr>
							<th><strong class="require">*</strong>계열</th>
							<td>
								<select name="V_MAJOR" id="">
									<option value="">전체</option>
									<option value="인문">인문</option>
									<option value="자연">자연</option>
									<option value="예체능">예체능</option>
									<option value="공통">공통</option>	
								</select>
							</td>
						</tr>
						<tr>
							<th>주소(시/도/구/동)</th>
							<td>
								<input type="text" name="V_ADDRESS" class="txt w100"  id="">
							</td>
						</tr>				
						
					</tbody>
				</table>
				<p class="blue darkgray">※ 알리미 신청이 완료되면 입력한 정보는 수정 또는 취소되지 않습니다.<br>&nbsp;&nbsp;&nbsp;수정 또는 취소를 원할 경우 러셀, 각 학원으로 연락주시기 바랍니다.</p>

				<div class="memCombine privacyAgree">
					<h4>개인정보 수집·이용 동의 안내</h4>
					<div class="privacyAgreeBox">
						러셀 학원은 아래와 같이 개인정보를 수집 및 이용하고자 합니다. 내용을 자세히 읽으신 후 동의 여부를 결정하여 주십시오.
                        <br><br>
						※ 근거 : 개인정보 보호법 제15조 및 제22조
						<div>							
							(필수) 개인정보 수집 및 이용 동의<br>
                            - 수집 목적 : 학년/학원별 러셀 학원 및 입시 정보 안내 문자 서비스 제공<br>
                            - 수집 항목 : 학생 연락처, 학부모 연락처, 계열, 관심 학원<br>
                            - 보유 기간 : 동의일로부터 1년
						</div>
					</div>
					<div class="privacyAgr">
						<input type="radio" id="privacyAgr_01" name="V_AGREE" value= "N" checked="checked" /><label for="privacyAgr_01">동의하지 않습니다.</label>
						<input type="radio" id="privacyAgr_02" name="V_AGREE" value= "Y" /><label for="privacyAgr_02">동의합니다.</label>
					</div>
					<div class="privacyAgreeBox mt30">
						<div>			
                            (선택) 개인정보 수집 및 이용 동의<br>
                            - 수집 목적 : 학년/학원별 러셀 학원 및 입시 정보 안내 문자 서비스 제공<br>
                            - 수집 항목 : 이름, 성별, 주소<br>
                            - 보유 기간 : 동의일로부터 1년
						</div>
					</div>
					<div class="privacyAgr">
						<input type="radio" id="privacyAgr_03" name="V_AGREE_02" value= "N" checked="checked" /><label for="privacyAgr_03">동의하지 않습니다.</label>
						<input type="radio" id="privacyAgr_04" name="V_AGREE_02" value= "Y" /><label for="privacyAgr_04">동의합니다.</label>
					</div>
                    <p class="iptt mt30">위의 개인정보 수집ㆍ이용에 대한 동의를 거부할 권리가 있습니다.<br />그러나 동의를 거부하실 경우 '학원 문자 수신 알리미 서비스'를 이용하실 수 없으며, 홈페이지 이용에 제한은 없습니다.</p>
				</div>
				<div class="btn_box_type_01" style="text-align:center">
					<a href="javascript:;" onclick="fncSubmit()" class="btn_type_19 first_btn" style="padding:0;">알리미 신청하기</a>
				</div>
			</div>
		</div>
	</div>
	<div style="text-align:right; padding-right:20px">
		<span class="btn_type_close" onclick="window.close()">창닫기</span>
	</div>
</form>
</body>
</html>