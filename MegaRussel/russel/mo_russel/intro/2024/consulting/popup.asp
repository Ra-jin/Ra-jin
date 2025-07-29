<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->
<%
	Call formFilter()
	
	If Not gLoginOk Then
    	ScriptBegin
    	ScriptWrite "alert('로그인 후 이용하실 수 있습니다.');"
    	ScriptWrite "self.close();"
    	ScriptEnd
    	response.end
	End If

		' 예약 상태 확인
	If gLoginOk = True Then 
        strSql = ""
        strSql = strSql &" SELECT count(*) as cnt "
        strSql = strSql &" FROM MR_EVT_CONSULT2020 WITH(NOLOCK) "
        strSql = strSql &" WHERE EC_TYPE = 'C' "
		strSql = strSql & " 	AND EC_YEAR = 2024 " ' 2024 학년도
		strSql = strSql & " 	AND EC_AGREE2_YN in ('1','2')  " '예약 대기/완료상태
	    strSql = strSql &"      AND EC_MEM_ID = '"&gLoginMemId&"'"
		
        Set objRs = russelobjdb.sqlQuery(strSql, 3)
        If Not (objRs.EoF And objRs.BoF) Then
            applyStatus = objRs(0)
        End If
        objRs.close
        Set objRs = Nothing
	Else
        applyStatus = 0
    End If

	' If curYmdhmin >= 202312300000 and applyStatus = 0 Then
    '     ScriptBegin
    '     ScriptWrite "alert('마감되었습니다.');"
    '     ScriptWrite "self.close();"
    '     ScriptEnd
    '     response.end
    ' End If	

	Dim arrDate(9)
	Set dicLocation = server.CreateObject("Scripting.Dictionary") ' 설명회 장소
	Set dicMaxRegCnt = server.CreateObject("Scripting.Dictionary") ' 마감인원
	Set dicRegCnt = server.CreateObject("Scripting.Dictionary") ' 접수인원

	'------------------------------
	' 설명회 날짜 추가
	'------------------------------
	arrDate(0) = "12-23"
	arrDate(1) = "12-24"
	arrDate(2) = "12-25"
	arrDate(3) = "12-26"
	arrDate(4) = "12-27"
	arrDate(5) = "12-28"
	arrDate(6) = "12-29"
	arrDate(7) = "12-30"
	arrDate(8) = "12-31"
	arrDate(9) = "01-01"

	'------------------------------
	' 설명회 날짜별 장소 추가
	'------------------------------
	dicLocation.add "12-23", "대치"
	dicLocation.add "12-24", "분당"
	dicLocation.add "12-25", "대구"
	dicLocation.add "12-26", "대구"
	dicLocation.add "12-27", "목동"
	dicLocation.add "12-28", "대치"
	dicLocation.add "12-29", "목동"
	dicLocation.add "12-30", "분당"
	dicLocation.add "12-31", "대치"
	dicLocation.add "01-01", "대치"

	'------------------------------
	' 설명회 날짜별 마감인원 추가
	'------------------------------
	dicMaxRegCnt.add "12-23", "16"
	dicMaxRegCnt.add "12-24", "16"
	dicMaxRegCnt.add "12-25", "22"
	dicMaxRegCnt.add "12-26", "22"
	dicMaxRegCnt.add "12-27", "16"
	dicMaxRegCnt.add "12-28", "16"
	dicMaxRegCnt.add "12-29", "16"
	dicMaxRegCnt.add "12-30", "16"
	dicMaxRegCnt.add "12-31", "10"
	dicMaxRegCnt.add "01-01", "10"

	'------------------------------
	' 설명회 날짜별 접수인원 초기화
	'------------------------------
	for each key in dicMaxRegCnt.keys
		dicRegCnt.add key, "0"
	next

	mode = "apply" 

	' 날짜별 접수인원 조회
	strSql = ""
	strSql = strSql & "	SELECT EC_HOPE_DT, CNT = COUNT(1) "
	strSql = strSql & "	FROM MR_EVT_CONSULT2020 WITH (NOLOCK) "
	strSql = strSql & "	WHERE EC_TYPE = 'C' "
	strSql = strSql & "		AND EC_YEAR = 2024 " ' 2024 학년도
	strSql = strSql & "		AND EC_AGREE2_YN in ('1','2')  " '예약 대기/완료상태
	strSql = strSql & "	GROUP BY  EC_HOPE_DT "
	Set objRs = russelobjdb.sqlQuery(strSql, 3)
	If Not (objRs.EoF And objRs.BoF) Then
		Do until objRs.EOF
			dicRegCnt(cstr(objRs(0))) = cstr(objRs(1))
			objRs.movenext
		loop
	End If
	objRs.close
	Set objRs = Nothing

	IF applyStatus > 0 then
		mode = "modify"

		strSql = ""
	    strSql = strSql & " SELECT "
		strSql = strSql & " [EC_CD] "
		strSql = strSql & " , [EC_MEM_ID] "
    	strSql = strSql & " , [EC_MEM_NM] "
        strSql = strSql & " , [EC_SEX] "
        strSql = strSql & " , [EC_SCH_NM] "
        strSql = strSql & " , [EC_LINE] "
        strSql = strSql & " , [EC_CLASS] "
        strSql = strSql & " , [EC_STU_MOBILE] "
        strSql = strSql & " , [EC_STU_EMAIL] "
        strSql = strSql & " , [EC_PAT_MOBILE] "
        strSql = strSql & " , [EC_PAT_EMAIL] "
        strSql = strSql & " , [EC_LIKE_UNIV1] "
        strSql = strSql & " , [EC_LIKE_UNIV2] "
        strSql = strSql & " , [EC_LIKE_UNIV3] "
       	strSql = strSql & " , [EC_LOW_UNIV] "
        strSql = strSql & " , [EC_LIKE_LINE] "
        strSql = strSql & " , [EC_POS_REGION] "
        strSql = strSql & " , [EC_CONSULT_CONTENT] "
        strSql = strSql & " , [EC_AGREE1_YN] "
        strSql = strSql & " , [EC_AGREE2_YN] "
       	strSql = strSql & " , [EC_PATH] "
        strSql = strSql & " , [EC_HOPE_DT] "
        strSql = strSql & " , [EC_REG_DT] "
        strSql = strSql & " , [EC_TYPE] "
		strSql = strSql & " , [EC_APPLYNUM1] "
		strSql = strSql & " , [EC_APPLYNUM2] "
		strSql = strSql & " , [EC_APPLYNUM3] "
		strSql = strSql & " , [EC_LASTYEAR_UNIV] "
		strSql = strSql & " , [EC_LIKE_UNIV4] "
		strSql = strSql & " , [EC_LIKE_UNIV5] "
		strSql = strSql & " , [EC_AGREE3_YN] "
		
		strSql = strSql & " FROM MR_EVT_CONSULT2020 WITH(NOLOCK)  "
	    strSql = strSql & " WHERE EC_TYPE = 'C' "
		strSql = strSql & " 	AND EC_AGREE2_YN in ('1','2') " '완료상태
		strSql = strSql & " 	AND EC_YEAR = 2024 " ' 2024 학년도
		strSql = strSql & " 	AND EC_MEM_ID = '" & gLoginMemid & "' "
		
		Set objRs = russelobjdb.sqlQuery(strSql, 1)
	   
	 	If Not (objRs.EoF And objRs.BoF) Then
			EC_CD	= objRs(0)
            EC_MEM_ID	= objRs(1)
            EC_MEM_NM	= objRs(2)
            EC_SEX	= objRs(3) 
            EC_SCH_NM	= objRs(4) 
            EC_LINE	= objRs(5)
            EC_CLASS	= objRs(6) 
            EC_STU_MOBILE	= splitPhone(Trim(objRs(7)))
            EC_STU_EMAIL	= split(objRs(8),"@")
            EC_PAT_MOBILE	= splitPhone(Trim(objRs(9))) 
            EC_PAT_EMAIL	= split(objRs(10),"@")        
            EC_LIKE_UNIV1	= objRs(11)
            EC_LIKE_UNIV2	= objRs(12) 
            EC_LIKE_UNIV3	= objRs(13) 
          	EC_LOW_UNIV	= objRs(14) 
            EC_LIKE_LINE 	= objRs(15)
            EC_POS_REGION	= objRs(16)
            EC_CONSULT_CONTENT 	= objRs(17)
            EC_AGREE1_YN	= objRs(18) 
            EC_AGREE2_YN	= objRs(19)
          	EC_PATH	= objRs(20) 
            EC_HOPE_DT 	= objRs(21)
            EC_REG_DT 	= objRs(22)
            EC_TYPE	= objRs(23)
            EC_APPLYNUM1 	= objRs(24)
            EC_APPLYNUM2 	= objRs(25)
            EC_APPLYNUM3 	= objRs(26)
            EC_LASTYEAR_UNIV  = objRs(27)
			EC_LIKE_UNIV4 =  objRs(28)
			EC_LIKE_UNIV5 =  objRs(29)
			EC_AGREE3_YN =  objRs(30)
		End If
	   	objRs.close
	    Set objRs = Nothing

	    If EC_MEM_ID = "" Then
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
	<link rel="stylesheet" type="text/css" href="./style.css" />
</head>
<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
	<!-- #include virtual = "/inc/bt_back.asp" -->
	<strong class="tit">2024 정시 지원 컨설팅 온라인 접수</strong>
</h2>
<form name="form1" id="form1" method="post" action="./popup_Reg.asp" enctype="multipart/form-data">
<input type="hidden" name="mode" id="mode" value="<%=mode%>">
<input type="hidden" name="mem_status_apply" id="mem_status_apply" <%if EC_AGREE2_YN ="1" then%> value="<%=EC_HOPE_DT%>" <%else%> value="" <%end if%>>
<input type="hidden" name="mem_status_relay" id="mem_status_relay" <%if EC_AGREE2_YN ="2" then%> value="<%=EC_HOPE_DT%>" <%else%> value="" <%end if%>>
<input type="hidden" name="consult_place" id="consult_place" value="">

<div class="input-pop consult-pop pt50">
	<div class="pay-pop-in">
		<p class="txt txt-red">
            ※ 컨설팅 예약 수정 및 취소는 온라인 1:1 상담게시판 및 02-3498-4388(평일 10:00 ~ 18:00 운영, 주말 불가)로 문의주시기 바랍니다. <br>
			※ 제출 서류 첨부가 안 되는 경우, rsc@megastudy.net으로 첨부하여 보내주시기 바랍니다. <br>
			※ 컨설팅 취소 및 환불은 상담 일자로부터 2일(48시간) 전 까지만 가능합니다. <br>
			※ 고른기회(사회통합, 차상위, 한부모 등), 농어촌, 예체능, 특성화고교전형 등 특수전형과 전문대 상담은 진행하지 않습니다.
        </p>
	</div>
	<div class="cont-box-left cont-input">
        <div class="con-essential">
            <h3>1. 컨설팅 희망일 선택<span class="txt-red">*</span></h3>
            <p>(<span class="txt-red">*</span>)표시 필수입력사항</p>
        </div>
		<div class="info-list pr5">
			<p class="txt txt-red text-align-left p0">
				※ 상담은 아래 장소 및 일자에만 진행되며, 상담 시간은 유선 안내 시 조정합니다 <br>
				※ 대기: 대기 상태로, 신청이 가능할 시 순차적으로 별도 연락 드릴 예정입니다.				
			</p>
			<p class="mt10 f11">
				<span class="r-btn-bk mr5">예약</span> 신청 가능 <span class="r-btn-wh mr5 ml10">대기</span> 대기 가능
			</p>
            <p class="c-tit mt10">2023.12</p>
			<% if applyStatus = 0 then %>
			<p class="text-align-right mb10"><a href="javascript:void(0);" onclick="reservCheckCancel();" class="r-btn-wh">날짜 선택 초기화</a></p>
			<% end if %>
			<div class="tbl-wrap">
				<table class="tbl-type01 t-calendar">
					<colgroup>
						<col style="width:20%;">
						<col style="width:20%;">
						<col style="width:20%;">
						<col style="width:20%;">
						<col style="width:20%;">
					</colgroup>
					<thead>
						<tr>
							<th class="bg-sky">12/23(토)</th>
							<th class="bg-sky">12/24(일)</th>
							<th class="bg-sky">12/25(월)</th>
							<th class="bg-sky">12/26(화)</th>
							<th class="bg-sky">12/27(수)</th>
						</tr>
					</thead>
					<tbody>
						<tr><%
						For i = 0 To 4 %>
							<%=CAL_TD(arrDate(i))%>
						<% Next %>
						</tr>
					</tbody>
				</table>
				<table class="tbl-type01 t-calendar">
					<colgroup>
						<col style="width:20%;">
						<col style="width:20%;">
						<col style="width:20%;">
						<col style="width:20%;">
						<col style="width:20%;">
					</colgroup>
					<thead>
						<tr>
							<th class="bg-sky">12/28(목)</th>
							<th class="bg-sky">12/29(금)</th>
							<th class="bg-sky">12/30(토)</th>
							<th class="bg-sky">12/31(일)</th>
							<th class="bg-sky">1/1(월)</th>
						</tr>
					</thead>
					<tbody>
						<tr><%
						For i = 5 To 9 %>
							<%=CAL_TD(arrDate(i))%>
						<% Next %>
						</tr>
					</tbody>
				</table>
			</div>
		</div>		
	</div>
	<div class="cont-box-left cont-input">
		<h3>2. 기본정보<span class="txt-red">*</span> <span class="txt-red">※ 반드시 ‘학생’ 인적사항으로 입력</span></h3>
		<ul class="info-list">
            <li>
				<strong><label for="name">성명</label></strong>
                <span><input type="text" name="name" id="name" value="<%=gLoginMemName%>" style="width:100%" /></span>
			</li>
            <li>
				<strong>성별</strong>
				<span>
					<label><input type="radio" name="gender" id="man" value="M" <% IF EC_SEX = "M" THEN %> checked <%end if%>> 남</label>
					<label><input type="radio" name="gender" id="woman" value="F" <% IF EC_SEX = "F" THEN %> checked <%end if%>> 여</label>
				</span>
			</li>
            <li>
				<strong><label for="school">학교명</label></strong>
				<span>
					<input type="hidden" name="school_cd" id="school_cd">
					<input type="text" name="SH_SCH_NM" id="SH_SCH_NM" value="<%=EC_SCH_NM%>" style="width:67%" /><a href="javascript:void(0);" class="bt-school js-bt-school js-mask">검색</a>
				</span>
			</li>
			<li>
				<strong>생년월일<br><span class="f12">예시)20020401</span></strong>
				<span>
					<span><input type="text" name="birth" id="birth" value="<%=EC_LOW_UNIV%>" style="width:100%" /></span>
				</span>
			</li>
            <li>
				<strong>고3/재수생</strong>
				<span>
					<label for="go3"><input type="radio" name="grade" id="go3" value="고3" <% IF EC_CLASS = "고3" THEN %> checked <%end if%> >고3</label>
					<label for="repeater"><input type="radio" name="grade" id="repeater" value="재수생" <% IF EC_CLASS = "재수생" THEN %> checked <%end if%> >재수생</label>
				</span>
			</li>
			<li <% IF EC_CLASS = "고3" or EC_CLASS = "" THEN %> style="display:none;" <% end if %> class="n_student">
				<strong>전년도 정시<br>지원 대학</strong>
				<span>
					<span><input type="text" name="last_univ" id="last_univ" value="<%=EC_LASTYEAR_UNIV%>" size="70" style="width:100%"></span>
				</span>
			</li>
            <li>
				<strong>계열</strong>
				<span>
					<select  name="department" id="department" style="width:100%" onchange=""> 
                        <option value="">선택</option>
						<option value="인문" <% IF EC_LINE = "인문" THEN %> SELECTED <%end if%>>인문</option>
						<option value="자연" <% IF EC_LINE = "자연" THEN %> SELECTED <%end if%> >자연</option>
					</select>
				</span>
			</li>
            <li>
				<strong>학생 핸드폰</strong>
				<span>
					<div class="input-tel">
						<select name="cel_no1" id="cel_no1" >
							<option value="010" <% If 	LEFT(EC_STU_MOBILE,3) = "010" Then %>selected <% End If %>>010</option>
							<option value="011" <% If 	LEFT(EC_STU_MOBILE,3) = "011" Then %>selected <% End If %>>011</option>
							<option value="016" <% If 	LEFT(EC_STU_MOBILE,3) = "016" Then %>selected <% End If %>>016</option>
							<option value="017" <% If 	LEFT(EC_STU_MOBILE,3) = "017" Then %>selected <% End If %>>017</option>
							<option value="018" <% If 	LEFT(EC_STU_MOBILE,3) = "018" Then %>selected <% End If %>>018</option>
							<option value="019" <% If 	LEFT(EC_STU_MOBILE,3) = "019" Then %>selected <% End If %>>019</option>
							<option value="070" <% If 	LEFT(EC_STU_MOBILE,3) = "070" Then %>selected <% End If %>>070</option>
							<option value="080" <% If 	LEFT(EC_STU_MOBILE,3) = "080" Then %>selected <% End If %>>080</option>
							<option value="없음">없음</option>
						</select>
						<input type="number" name="cel_no2" id="cel_no2" title="전화번호 가운데 자리" value="<%=MID(EC_STU_MOBILE,5,4)%>" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);" /><span >-</span>
						<input type="number" name="cel_no3" id="cel_no3" title="전화번호 마지막 자리" value="<%=RIGHT(EC_STU_MOBILE,4)%>" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);" />
					</div>
				</span>
			</li>
			<li>
				<strong>학생 이메일</strong>
				<span>
					<div class="in-email">
						<input type="text" name="email_no1" id="email_no1" style="width:26%" <% if mode = "modify" then %> value="<%=EC_STU_EMAIL(0)%>" <%else%> value="" <% end if %> title="이메일 첫번째 자리">
						<span>@</span>
						<input type="text" name="email_no3" id="email_no3" style="width:30%" <% if mode = "modify" then %> value="<%=EC_STU_EMAIL(1)%>"  <%else%> value="" <% end if %> title="이메일 마지막 자리" class="input-disabled">
						<select name="email_no2" id="email_no2" style="width:30%">
							<option value="선택하세요">선택</option>
							<option value="naver.com" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "naver.com" Then %>selected <% End If %> <% end if %>>naver.com</option>
							<option value="hanmail.net" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "hanmail.net" Then %>selected <% End If %> <% end if %>>hanmail.net</option>
							<option value="daum.net" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "daum.net" Then %>selected <% End If %> <% end if %>>daum.net</option>
							<option value="nate.com" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "nate.com" Then %>selected <% End If %> <% end if %>>nate.com</option>
							<option value="yahoo.co.kr" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "yahoo.co.kr" Then %>selected <% End If %> <% end if %>>yahoo.co.kr</option>
							<option value="hotmail.com" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "hotmail.com" Then %>selected <% End If %> <% end if %>>hotmail.com</option>
							<option value="paran.com" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "paran.com" Then %>selected <% End If %> <% end if %>>paran.com</option>
							<option value="gmail.com" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "gmail.com" Then %>selected <% End If %> <% end if %>>gmail.com</option>
							<option value="hanmir.com" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "hanmir.com" Then %>selected <% End If %> <% end if %>>hanmir.com</option>
							<option value="dreamwiz.com" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "dreamwiz.com" Then %>selected <% End If %> <% end if %>>dreamwiz.com</option>
							<option value="" <% if mode = "modify" then %> <% If EC_LIKE_UNIV4 = "" Then %>selected <% End If %> <% end if %> >직접입력</option>
						</select>
					</div>
				</span>
			</li>
			<li>
				<strong>학부모 핸드폰</strong>
				<span>
					<div class="input-tel">
						<select name="cel2_no1" id="cel2_no1" >
							<option value="010" <% If 	LEFT(EC_PAT_MOBILE,3) = "010" Then %>selected <% End If %>>010</option>
							<option value="011" <% If 	LEFT(EC_PAT_MOBILE,3) = "011" Then %>selected <% End If %>>011</option>
							<option value="016" <% If 	LEFT(EC_PAT_MOBILE,3) = "016" Then %>selected <% End If %>>016</option>
							<option value="017" <% If 	LEFT(EC_PAT_MOBILE,3) = "017" Then %>selected <% End If %>>017</option>
							<option value="018" <% If 	LEFT(EC_PAT_MOBILE,3) = "018" Then %>selected <% End If %>>018</option>
							<option value="019" <% If 	LEFT(EC_PAT_MOBILE,3) = "019" Then %>selected <% End If %>>019</option>
							<option value="070" <% If 	LEFT(EC_PAT_MOBILE,3) = "070" Then %>selected <% End If %>>070</option>
							<option value="080" <% If 	LEFT(EC_PAT_MOBILE,3) = "080" Then %>selected <% End If %>>080</option>
							<option value="없음">없음</option>
						</select>
						<input type="number" name="cel2_no2" id="cel2_no2" title="전화번호 가운데 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);" value="<%=MID(EC_PAT_MOBILE,5,4)%>" /><span >-</span>
						<input type="number" name="cel2_no3" id="cel2_no3" title="전화번호 마지막 자리" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);" value="<%=RIGHT(EC_PAT_MOBILE,4)%>" />
					</div>
				</span>
			</li>
			<li>
				<strong>학부모 이메일</strong>
				<span>
					<div class="in-email">
						<input type="text" name="email2_no1" id="email2_no1" style="width:26%;" <% if mode = "modify" then %> value="<%=EC_PAT_EMAIL(0)%>" <%else%> value="" <%end if%>  title="이메일 첫번째 자리">
						<span>@</span>
						<input type="text" name="email2_no3" id="email2_no3" style="width:30%"  <% if mode = "modify" then %>  value="<%=EC_PAT_EMAIL(1)%>" <%else%> value="" <%end if%>  title="이메일 마지막 자리" class="input-disabled">
						<select name="email2_no2" id="email2_no2" style="width:30%">
							<option value="선택하세요" selected="">선택</option>
							<option value="naver.com" <% if mode = "modify" then %> <% If EC_PAT_EMAIL(1) = "naver.com" Then %>selected <% End If %> <% End If %>>naver.com</option>
							<option value="hanmail.net" <% if mode = "modify" then %> <% If EC_PAT_EMAIL(1) = "hanmail.net" Then %>selected <% End If %> <% End If %>>hanmail.net</option>
							<option value="daum.net" <% if mode = "modify" then %> <% If EC_PAT_EMAIL(1) = "daum.net" Then %>selected <% End If %> <% End If %>>daum.net</option>
							<option value="nate.com" <% if mode = "modify" then %> <% If EC_PAT_EMAIL(1) = "nate.com" Then %>selected <% End If %> <% End If %>>nate.com</option>
							<option value="yahoo.co.kr" <% if mode = "modify" then %> <% If EC_PAT_EMAIL(1) = "yahoo.co.kr" Then %>selected <% End If %> <% End If %>>yahoo.co.kr</option>
							<option value="hotmail.com" <% if mode = "modify" then %> <% If EC_PAT_EMAIL(1) = "hotmail.com" Then %>selected <% End If %> <% End If %>>hotmail.com</option>
							<option value="paran.com" <% if mode = "modify" then %> <% If EC_PAT_EMAIL(1) = "paran.com" Then %>selected <% End If %> <% End If %>>paran.com</option>
							<option value="gmail.com" <% if mode = "modify" then %> <% If EC_PAT_EMAIL(1) = "gmail.com" Then %>selected <% End If %> <% End If %>>gmail.com</option>
							<option value="hanmir.com" <% if mode = "modify" then %> <% If EC_PAT_EMAIL(1) = "hanmir.com" Then %>selected <% End If %> <% End If %>>hanmir.com</option>
							<option value="dreamwiz.com" <% if mode = "modify" then %> <% If EC_PAT_EMAIL(1) = "dreamwiz.com" Then %>selected <% End If %> <% End If %>>dreamwiz.com</option>
							<option value="" <% if mode = "modify" then %> <% If EC_LIKE_UNIV5 = "" Then %>selected <% End If %> <% end if %>>직접입력</option>
						</select>
					</div>
				</span>
			</li>
		</ul>		
	</div>
	<div class="cont-box-left cont-input">
        <div class="con-essential02">
            <h3>3. 관심대학&amp;학과<span class="txt-red">*</span> <span class="txt-red">※ 1개 군 이상 필수 입력</span></h3>
        </div>
		<p class="txt-red pr5">관심대학 및 학과는 상담 시 참고자료로 활용하며, 군별 희망대학이 여러 개일 경우 [5.상담 희망 내용]에 추가 기재 바랍니다.</p>
		<div class="pr5 mt20">
			<table class="tbl-type01 t-uni">
				<colgroup>
					<col style="width:30%">
					<col style="width:70%">
				</colgroup>
				<thead>
					<tr>
						<th>모집 군</th>
						<th>대학/학과명</th>
					</tr>
				</thead>
				<tbody>
					<input type="hidden" name="uni_num" value="">
					<tr>
						<th>
							<strong><label for="">가군</label></strong>
						</th>
						<td>
							<span>
								<input type="text" title="대학/학과명" name="V_UNI_NM1" id="V_UNI_NM1" value="<%=EC_LIKE_UNIV1%>"  style="width:60%"/>
								<input type="hidden" name="V_UNI_CD1" id="V_UNI_CD1" value="" />
								<input type="hidden" name="V_MAJOR_CD1" id="V_MAJOR_CD1" value=""/>
								<a href="javascript:;" onclick="open_uni('1')" class="js-bt-uni js-mask">검색</a>
							</span>
						</td>
					</tr>
					<tr>
						<th>
							<strong><label for="">나군</label></strong>
						</th>
						<td>
							<span>
								<input type="text" title="대학/학과명" name="V_UNI_NM2" id="V_UNI_NM2" value="<%=EC_LIKE_UNIV2%>" readonly style="width:60%" />
								<input type="hidden" name="V_UNI_CD2" id="V_UNI_CD2" value="" />
								<input type="hidden" name="V_MAJOR_CD2" id="V_MAJOR_CD2" value=""/>
								<a href="javascript:;" onclick="open_uni('2')" class="js-bt-uni js-mask">검색</a>
							</span>
						</td>
					</tr>
					<tr>
						<th>
							<strong><label for="">다군</label></strong>
						</th>
						<td>
							<span>
								<input type="text" title="대학/학과명" name="V_UNI_NM3" id="V_UNI_NM3" value="<%=EC_LIKE_UNIV3%>" readonly style="width:60%"/>
								<input type="hidden" name="V_UNI_CD3" id="V_UNI_CD3" value="" />
								<input type="hidden" name="V_MAJOR_CD3" id="V_MAJOR_CD3" value=""/>
								<a href="javascript:;" onclick="open_uni('3')" class="js-bt-uni js-mask">검색</a>
							</span>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="cont-box-left cont-input">
        <div class="con-essential02">
            <h3>4. 지원성향<span class="txt-red">*</span>  <span class="txt-red">※ 1개 이상 필수 입력</span></h3>
        </div>
		<div class="pr5 mt20">
			<table class="tbl-type01 t-tendency">
				<colgroup>
					<col style="width:30%">
					<col style="width:70%">
				</colgroup>
				<tbody>
					<tr>
						<th rowspan="3">
							<strong><label for="">지원<br>성향</label></strong>
						</th>
						<td>
							상향 ( <span><input type="text" name="up_apply" id="up_apply" value="<%=EC_APPLYNUM1%>" onkeydown="onlyNumber(event);"></span> ) 장
						</td>
					</tr>
					<tr>
						<td>
							적정 ( <span><input type="text" name="mid_apply" id="mid_apply" value="<%=EC_APPLYNUM2%>" onkeydown="onlyNumber(event);"></span> ) 장
						</td>
					</tr>
					<tr>
						<td>
							하향 ( <span><input type="text" name="down_apply" id="down_apply" value="<%=EC_APPLYNUM3%>" onkeydown="onlyNumber(event);"></span> ) 장
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="cont-box-left cont-input">
		<h3>5. 상담 희망 내용<span class="txt-red">*</span></h3>
		<div class="info-list pr5">
			<div><textarea name="consult_content" id="consult_content" style="width:100%;" onkeyup="checkLength();" rows="5" placeholder="상담희망 내용을 구체적으로 입력해주세요. (최대 500자)"><%=EC_CONSULT_CONTENT%></textarea>
			</div>
			<script>
				function checkLength(){
					if($('#consult_content').val().length >500){
						$('#consult_content').val($('#consult_content').val().substring(0,500));
						alert('최대 500자를 넘기셨습니다.');
					}
				}
			</script>
		</div>
	</div>
	<div class="cont-box-left cont-input">
		<h3>6.수능 성적표 첨부<span class="txt-red">*</span> <br> 
			<span class="txt-red">※ 실성적표 발급 전인 경우, <br> 가채점 성적이 기재된 파일 혹은 사진 첨부</span> 
		</h3>
		<ul class="info-list">
            <li>
				<strong><label for="">수능 성적표</label></strong>
				<span class="file">
					<input type="text" name="V_FILE_PATH" id="V_FILE_PATH" value="<%=EC_LIKE_LINE%>" readonly />
					<% If EC_LIKE_LINE <> "" Then %>
					<a href="javascript:;" class="backUni" onclick="javascript:form1.V_FILE_PATH.value='';form1.csat_change_num.value='2';">X</a>
					<% end if %>
					<span>파일<br>첨부<input type="file" name="csat_file" id="csat_file" onChange="javascript:fileExtenstionCheck(this);" /></span>
				</span>
			</li>
			<input type="hidden" name="csat_change_num" value="0">
		</ul>
		<p class="f12 pr5">* jpg, png, pdf, bmp, ZIP, PDF 파일로 첨부 해 주시기 바랍니다. (용량 2MB 미만)</p>
	</div>

	<div class="cont-box-left cont-input">
		<h3>7. 내신 성적표 첨부(선택)</h3>
		<ul class="info-list">
            <li>
				<strong><label for="">내신 성적표</label></strong>
				<span class="file">
					<input type="text" name="V_FILE_PATH02" id="V_FILE_PATH02" value="<%=EC_POS_REGION%>" readonly />
					<% If EC_POS_REGION <> "" Then %>
					<a href="javascript:;" class="backUni" onclick="javascript:form1.V_FILE_PATH02.value='';form1.susi_change_num.value='2';">X</a>
					<% end if %>
					<span>파일<br>첨부<input type="file" name="susi_file" id="susi_file" onChange="javascript:fileExtenstionCheck02(this);"/></span>
				</span>
			</li>
			<input type="hidden" name="susi_change_num" value="0">
		</ul>
		<p class="f12 pr5">
			* 서울대, 고려대(교과우수전형) 정시 지원 희망시, 내신 성적표를 반드시 첨부해 주시기 바랍니다. <br>
		  	* jpg, png, pdf, bmp, ZIP, PDF 파일로 첨부 해 주시기 바랍니다. 
		   (용량 2MB 미만)
		</p>
	</div>
	
	<div class="agree-box">
		<h4>개인정보 수집·이용 동의<span class="txt-red">*</span></h4>
		<div class="terms-box">
			[수집항목] 성명, 성별, 생년월일, 계열, 휴대폰 번호, 이메일, 학교, 학년 학교생활기록부 및 기타 제출서류 관련사항<br>
			[수집목적] 서비스 제공: 컨설팅 진행을 위한 기본 분석 자료로 활용 / 고객관리: 컨설팅 완료 후 만족도 조사를 위한 연락처 활용
		</div>
		<p class="terms-info">
			※ 위의 개인정보 수집·이용에 대한 동의를 거부할 권리가 있습니다. 단, 거부  시 정시 컨설팅 신청에 제한을 받을 수 있습니다.<br>
			※ 보유기간은 수집 후 1년 동안 보유하며 이후 파기하는 것을 원칙으로 합니다.
		</p>
		<p class="agree-txt"><input type="checkbox"  name="agree_1" id="agree_1" value="Y" <% if EC_AGREE1_YN = "Y" then %> checked <%end if%>  /> <label for="yes">동의합니다.</label></p>

		<h4 class="mt20">마케팅 목적 개인정보 활용에 대한 동의 (선택)</h4>
		<div class="terms-box">
			[수집목적] 당사 (메가스터디교육㈜)의 사이트 프로모션 페이지 및 SNS/블로그/유튜브 등의 공식채널 내 제작물로 활용
		</div>		
		<p class="agree-txt"><input type="checkbox"  name="agree_3" id="agree_3" value="Y" <% if EC_AGREE3_YN = "Y" then %> checked <%end if%> /> <label for="yes">동의합니다.</label></p>

		<p class="terms-info">
			※ 위의 개인정보 수집·이용에 대한 동의를 거부할 권리가 있습니다. 단, 거부 시 상담에 제한을 받을 수 있습니다.	<br>
			※ 보유기간은 수집 후 1년 동안 보유하며 이후 파기하는 것을 원칙으로 합니다.
		</p>

		<% IF applyStatus = 0 then %>
		<p class="bt-blue bt-w94 mt20"><a href="javascript:;" onclick="fncSubmit()">상담 신청 완료</a></p>
		<% end if %>
		
		<% IF applyStatus > 0 AND curYmdhmin <= 202212170000 THEN %>
		<!-- D: 11/17(목)~12/16(금)까지 최초 신청에 한해 버튼 노출 -->
		<p class="mt20 bt-type02">
			<a href="javascript:;" onclick="cancle();" class="bt-gray">상담 취소</a>
			<a href="javascript:;" onclick="fncSubmit();" class="bt-gray02">수정 완료</a>
		</p>
		<% end if %>

		<% IF applyStatus > 0 AND curYmdhmin >= 202212170000 then %>
		<!-- D: 12/17(토)부터 [확인] 버튼만 노출 -->
		<p class="bt-line-gray bt-w94 mt20"><a onclick="winClose();">확인</a></p>
		<% end if %>
		

	</div>
	</form>

	<!-- 고등학교 검색 팝업 -->
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
			<a href="javascript:void(0);" class="bt-close js-layer-close js-close-mask"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close.png" alt="닫기"></a>
		</div>
	</div>
	<!-- //고등학교 검색 팝업 -->

	<!-- 대학교 검색 팝업 -->
	<div class="layer-info js-uni-find">
		<div class="inner">
			<p class="tit">학교 검색</p>
			<div class="popupUniversity">
				<div class="searchWrap">
					
					<!--<div class="searchBox">
						<label for="inputUniversity">대학교 명 입력 <span>(검색어 예: 서울대학교, 서울대)</span></label>
						<input type="text" id="inputUniversity" value="대학" />
						<a href="#"><img src="<%=Application("img_path_russel")%>/event/2018/fellow/btn_search.png" alt="검색"></a>
					</div>-->
					
					<form name="school_search" action="./popup_school_list.asp">
					<input type="hidden" name="V_TYPE" id="V_TYPE" value="" />
					<input type="hidden" name="V_MODE" id="V_MODE" value="" />
					<div class="major">
						<div class="majorList" id="srarch_uni">
							<span class="title">대학교 명</span>
							<div class="searchBox">
								<!--<label for="inputUniversity">대학교 명 입력</label>-->
								<input type="text" id="inputUniversity" name="V_UNI_NM" id="V_UNI_NM" value=""   />
								<input type="hidden" name="V_UNI_CD" id="V_UNI_CD" value="" />
								<a href="javascript:;" onClick="javascript:go_search('U');"><img src="<%=Application("img_path_russel")%>/event/2018/fellow/btn_search2.png" alt="검색" /></a>
								<a id="backUni" class="backUni" href="javascript:;" onClick="javascript:showUni();"><img src="<%=Application("img_path_russel")%>/event/2018/fellow/back_uni.gif" alt="" /></a>
							</div>
						</div>
						<div class="majorList" id="srarch_major">
							<span class="title">학과</span>
							<div class="searchBox">
								<!--<label for="inputMajor">학과 명 입력</label>-->
								<input type="text" id="inputMajor" name="V_MAJOR_NM" id="V_MAJOR_NM" value="AA" />
								<input type="hidden" name="V_MAJOR_CD" id="V_MAJOR_CD" value="" />
								<a href="javascript:;" onClick="javascript:go_search('M');"><img src="<%=Application("img_path_russel")%>/event/2018/fellow/btn_search2.png" alt="검색" /></a>
							</div>
						</div>
					</div>
					</form>
					<p id="input_uni_nm">대학교 명을 입력해주세요.</p>
					<p id="input_major_nm">학과 명을 입력해주세요.</p>
					<!--<p>검색결과가 없습니다. 검색어에 잘못된 철자가 없는지, 정확한 내용을 다시 한번 확인해 주세요.</p>-->
					<p id="info" class="info">*학교 검색 후, 학과를 입력해주세요.</p>
				</div>
				<iframe id="list" name="list" frameborder="0" scrolling="no" src="popup_school_list.asp" marginwidth="0" marginheight="0" style="width:100%;height:193px" vspace="0" hspace="0"></iframe>
			</div>
			<a href="javascript:void(0);" class="bt-close js-layer-close js-close-mask"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close.png" alt="닫기"></a>
		</div>
	</div>
	
	<script>
		var sKind = "M";
	
		$( document ).ready(function() {
			showUni();

			<% if applyStatus > 0  then %>
				buttonAllHide();

				<% if EC_AGREE2_YN = "1" THEN %>
				$("#"+'<%=EC_HOPE_DT%>').text("예약완료");
				<% ELSE %>
				$("#"+'<%=EC_HOPE_DT%>').text("대기완료");
				<% END IF %>
			<% end if %>
		});

		
		function showUni() {
			$("#srarch_uni").show();
			$("#inputUniversity").val('');
			
			$("#V_MODE").val("");

		    $("#inputUniversity").removeAttr("readonly");
	
			if (sKind == "M") {
				$("#info").show();
			} else {
				$("#info").hide();
			}
			$("#srarch_major").hide();
			$("#input_uni_nm").hide();
			$("#input_major_nm").hide();
			$("#list").hide();
			$("#backUni").hide();
		}
	
		function showMajor() {
			$("#inputUniversity").attr('readonly', 'true');
			$("#srarch_major").show();
			$("#backUni").show();
	
			$('#info').hide();
			$("#input_uni_nm").hide();
			$("#input_major_nm").hide();
			$("#list").hide();
		}
	
		function go_search(mode) {
			if(mode=="U" && school_search.V_UNI_NM.value == "") {
				$("#input_uni_nm").show();
				return;
			}
			if(mode=="M" && school_search.V_MAJOR_NM.value == "") {
				$("#input_major_nm").show();
				return;
			}
			
			if(mode=="U"){
				school_search.V_MAJOR_NM.value = "";
			}
			
			school_search.target = "list";
			school_search.V_MODE.value = mode;
			school_search.submit();
	
			$("#list").show();
		}
	
		function finish() {
			var uni_num = form1.uni_num.value
			
			$("#V_UNI_NM"+uni_num).val(school_search.V_UNI_NM.value + " " + school_search.V_MAJOR_NM.value);
			$("#V_UNI_CD"+uni_num).val(school_search.V_UNI_CD.value);
			$("#V_MAJOR_CD"+uni_num).val(school_search.V_MAJOR_CD.value);
			
			$(".js-layer-close").click();
		}
	</script>
	<!-- //대학교 검색 팝업 -->
 
</div>
<script>
	//고등학교 검색
	$(function(){
        $(".js-bt-school").on("click",function(){
            $(".js-school-find").css("display","block")
        })
        $(".js-layer-close").on("click",function(){
            $(".js-school-find").css("display","none")
        })
	
	})
	
	//대학교 검색
	function open_uni(code){
		$(".js-bt-uni").on("click",function(){
			// 군 설정
			school_search.V_TYPE.value = code;
			
			showUni();
			form1.uni_num.value = code
			$(".js-uni-find").css("display","block")
		})
        
		$(".js-layer-close").on("click",function(){
            $(".js-uni-find").css("display","none")
        })
	}

	// 예약 버튼 숨기기
	function buttonAllHide() {
		$('.t-calendar a').hide();
	}
    
	// 예약, 대기
	function reservCheck(date,place,bWating) {
		var sModeName = '';
		
		if (bWating == 'true') {
			sModeName = '대기';
		} else {
			sModeName = '예약';
		}

		if (confirm(sModeName + "하시겠습니까?") == true){    //확인
			buttonAllHide();
			
			$("#"+date).text(sModeName + "완료");

			if (bWating == 'true') {
				form1.mem_status_relay.value = date;
				form1.consult_place.value = place;
			} else {
				form1.mem_status_apply.value = date;
				form1.consult_place.value = place;
			}
			
		}else{   //취소
			return false;
		}

	}

	// 날짜 선택 초기화
	function reservCheckCancel() {
		if (form1.mem_status_relay.value != ''
			|| form1.mem_status_apply.value != ''
			|| form1.consult_place.value != ''
		) {
			if (confirm('선택한 날짜를 초기화 하시겠습니까?')) {
				$('.t-calendar a').show();
				$('.status_text').text('');

				form1.mem_status_relay.value = '';
				form1.mem_status_apply.value = '';
				form1.consult_place.value = '';
			}
		} else {
			alert('선택하신 날짜가 없습니다.');
			return false;
		}
	}

	function cancle(){

		form1.mode.value = 'cancle';

		if (confirm("상담을 취소하시겠습니까?") == true){    //확인
			document.form1.submit();
		}else{   //취소
			return false;
		}

	}

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

	function getList(){
		var kword = $("#kword").val();
		$.ajax({
			method: "GET",
			url : "/entinfo/entry_pt/school_list.asp",
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
		$("#school_cd").val(code);
		$(".js-layer-close").click();
	}

	// 재수생선택시 오픈
	$("input[name='grade']").change(function(){
		if($("input[name='grade']:checked").val() == '재수생'){
			$('.n_student').show();
		}	
		else{
			$('.n_student').hide();
		}
	});


	$(function(){
		// 학생 이메일
		$('#email_no2').change(function(){
			$("#email_no2 option:selected").each(function () {
				if($(this).val() == ""){
					$("#email_no3").attr("disabled",false); //활성화
				}else{
					$("#email_no3").attr("disabled",true); //활성화
				}
			});
		});
		//학부모 이메일
		$('#email2_no2').change(function(){
			$("#email2_no2 option:selected").each(function () {
				if($(this).val() == ""){
					$("#email2_no3").attr("disabled",false); //활성화
				}else{
					$("#email2_no3").attr("disabled",true); //활성화
				}
			});
		});
	});

	$(function(){
		// 학생 이메일
		$('#email_no2').change(function(){
			$("#email_no2 option:selected").each(function () {
				var email = $("#email_no2").val();
				$("#email_no3").val(email);
			});
		});
		//학부모 이메일
		$('#email2_no2').change(function(){
			$("#email2_no2 option:selected").each(function () {
				var email = $("#email2_no2").val();
				$("#email2_no3").val(email);
			});
		});
	});
	
	function fncSubmit() {

		var f = document.form1;
		
		if($.trim($('#mem_status_apply').val()).length < 1 && $.trim($('#mem_status_relay').val()).length < 1 ){
			alert('컨설팅 희망일을 선택해주세요.'); return;
		}
		
		if($.trim($('#SH_SCH_NM').val()).length < 1){
			 alert('학교명을 입력해주세요.'); $('#SH_SCH_NM').focus(); return;
		}

		if($.trim($('#birth').val()).length < 1){
			 alert('생년월일을 입력해주세요.'); $('#birth').focus(); return;
		}

		if($.trim($('#birth').val()).length < 8){
			 alert('생년월일은 8글자로 입력해주세요.\n예시)20030101'); $('#birth').focus(); return;
		}
	
		if($('input[name="grade"]:checked').val() == undefined){
			alert('학년을 입력하세요.'); $('input[name=grade]').focus(); return;
		}


		if (jQuery.trim($('#department').val()).length < 1) {
			alert('계열을 입력하세요.');
			$('#department').focus();
			return false;
        }

		if($('input[name="grade"]:checked').val() == "재수생"){
			if($.trim($('input[name=last_univ]').val()).length < 1){
			 	alert('재수생의 경우,전년도 지원 대학&학과는 필수 입력입니다.'); $('input[name=last_univ]').focus(); return;
			}
		}
		
		if($.trim($('#cel_no1').val()) != "없음"){
		    if($.trim($('#cel_no2').val()).length < 1 || $.trim($('#cel_no3').val()).length < 1){
			  alert('학생 연락처를 입력해주세요.'); $('#cel_no2').focus(); return;
		    }
		}
		
		if($.trim($('#email_no1').val()).length < 1 || $.trim($('#email_no2').val()) == "선택하세요"){
			alert('학생 이메일을 입력해주세요.'); $('#email_no1').focus(); return;
		}
		
		if($.trim($('#email_no2').val()) == ""){
			if($.trim($('#email_no3').val()).length < 1){
				alert('학생 이메일을 입력해주세요.'); $('#email_no3').focus(); return;
			}
		}
        
		if($.trim($('#cel2_no1').val()) != "없음"){
		    if($.trim($('#cel2_no2').val()).length < 1 || $.trim($('#cel2_no3').val()).length < 1){
			  alert('학부모 연락처를 입력해주세요.'); $('#cel2_no2').focus(); return;
		    }
		}

		if($.trim($('#email2_no1').val()).length < 1 || $.trim($('#email2_no2').val()) == "선택하세요"){
			alert('학부모 이메일을 입력해주세요.'); $('#email2_no1').focus(); return;
		}
		
		if($.trim($('#email2_no2').val()) == ""){
			if($.trim($('#email2_no3').val()).length < 1){
				alert('학부모 이메일을 입력해주세요.'); $('#email2_no3').focus(); return;
			}
		}
		
		if($.trim($('input[name=V_UNI_NM1]').val()).length < 1
			&& $.trim($('input[name=V_UNI_NM2]').val()).length < 1
			&& $.trim($('input[name=V_UNI_NM3]').val()).length < 1
		){
			 alert('관심대학 및 학과 1순위는 필수 입력입니다.'); $('input[name=V_UNI_NM1]').focus(); return;
		}

		if($.trim($('input[name=up_apply]').val()).length < 1 && $.trim($('input[name=mid_apply]').val()).length < 1 && $.trim($('input[name=down_apply]').val()).length < 1 ){
			 alert('지원성향을 1개 이상 입력해주세요.'); return;
		}

		if($.trim($('#consult_content').val()).length < 1){
			alert('상담 희망내용을 입력해주세요.'); $('#consult_content').focus(); return;
		}

		if($.trim($('input[name=V_FILE_PATH]').val()).length < 1){
			alert('수능성적표 파일을 첨부해주세요.'); $('#V_FILE_PATH').focus(); return;
		}

		if( $("input[name=agree_1]:checkbox:checked").length < 1){
			alert('개인정보수집 및 활용에 대한 동의에 동의해주셔야 상담 신청이 접수가 가능합니다.'); $('#agree1').focus(); return;
		}		

		document.form1.submit();
	}
	
	//수능성적표 첨부
	function fileExtenstionCheck(file) {
		var _filename = $(file).val();
		var _fileLen = _filename.length;
		var _lastDot = _filename.lastIndexOf('.');
		
		if (_filename == "") return;
		
		// 확장자 명만 추출한 후 소문자로 변경
		var _fileExt = _filename.substring((_lastDot + 1), _fileLen).toLowerCase();

		if (_fileExt != "jpg" && _fileExt != "png" && _fileExt != "bmp" && _fileExt != "ZIP" && _fileExt != "PDF" && _fileExt != "pdf" && _fileExt != "JPG" && _fileExt != "PNG" && _fileExt != "BMP" && _fileExt != "zip") {
			alert("jpg, png, pdf, bmp, ZIP, PDF 파일로 첨부해 주시기 바랍니다.");
			return;
		}

		// 사이즈체크
        var maxSize  = 2 * 1024 * 1024    
        var fileSize = 0;

  		// 브라우저 확인
  		var browser=navigator.appName;
  
  		// 익스플로러일 경우
  		if (browser=="Microsoft Internet Explorer")
  		{
    		var oas = new ActiveXObject("Scripting.FileSystemObject");
    		fileSize = oas.getFile( file.value ).size;
  		}
  		// 익스플로러가 아닐경우
  		else
  		{
    		fileSize = file.files[0].size;
  		}

		// alert("파일사이즈 : "+ fileSize +", 최대파일사이즈 : 2MB");

        if(fileSize > maxSize)
        {
            alert("첨부파일 사이즈는 2MB 이내로 등록 가능합니다.    ");
            return;
        }

		form1.csat_change_num.value = '1';
		form1.V_FILE_PATH.value=$(file).val();
	}
	//내신성적표 첨부	
	function fileExtenstionCheck02(file) {
		var _filename02 = $(file).val();
		var _fileLen02 = _filename02.length;
		var _lastDot02 = _filename02.lastIndexOf('.');
		
		if (_filename02 == "") return;
		
		// 확장자 명만 추출한 후 소문자로 변경
		var _fileExt = _filename02.substring((_lastDot02 + 1), _fileLen02).toLowerCase();

		if (_fileExt != "jpg" && _fileExt != "png" && _fileExt != "bmp" && _fileExt != "ZIP" && _fileExt != "PDF" && _fileExt != "pdf" && _fileExt != "JPG" && _fileExt != "PNG" && _fileExt != "BMP" && _fileExt != "zip") {
			alert("jpg, png, pdf, bmp, ZIP, PDF 파일로 첨부해 주시기 바랍니다.");
			return;
		}

		// 사이즈체크
        var maxSize  = 2 * 1024 * 1024    
        var fileSize = 0;

  		// 브라우저 확인
  		var browser=navigator.appName;
  
  		// 익스플로러일 경우
  		if (browser=="Microsoft Internet Explorer")
  		{
    		var oas = new ActiveXObject("Scripting.FileSystemObject");
    		fileSize = oas.getFile( file.value ).size;
  		}
  		// 익스플로러가 아닐경우
  		else
  		{
    		fileSize = file.files[0].size;
  		}

		// alert("파일사이즈 : "+ fileSize +", 최대파일사이즈 : 2MB");

        if(fileSize > maxSize)
        {
            alert("첨부파일 사이즈는 2MB 이내로 등록 가능합니다.    ");
            return;
        }

		form1.susi_change_num.value = '1';
		form1.V_FILE_PATH02.value=$(file).val();
	}

	// 창닫기
	function winClose() {
		window.open('', '_self').close();
	}

</script>
</body>
</html>

<%
	FUNCTION CAL_TD(sDate)
		' 변수 초기화
		sTdClass = ""
		bWating = true
		sBtnClass = ""
		sBtnText = ""
		
		' 셀 배경색 (학원별 클래스명)
		Select Case dicLocation(sDate)
			Case "대치":
				sTdClass = "bg-yellow"
			Case "분당":
				sTdClass = "bg-green"
			Case "대구":
				sTdClass = "bg-blue"
			Case "목동":
				sTdClass = "bg-pink"
		End Select

		IF cint(dicRegCnt(sDate)) < cint(dicMaxRegCnt(sDate)) THEN
			' 예약중
			bWating = false
			sBtnClass = "r-btn-bk"
			sBtnText = "예약"
		ELSE
			' 대기
			sBtnClass = "r-btn-wh"
			sBtnText = "대기"
		END IF

		CAL_TD = ""
		CAL_TD = CAL_TD & "<td class='" & sTdClass & "'>"
		CAL_TD = CAL_TD & "		<p>"
		CAL_TD = CAL_TD & "			" & dicLocation(sDate)
		if bWating then
		CAL_TD = CAL_TD & "			<span>마감</span>"
		end if
		CAL_TD = CAL_TD & "		</p>"
		CAL_TD = CAL_TD & "		<a href='javascript:void(0);' onclick=""reservCheck('" & sDate & "', '" & dicLocation(sDate) & "', '" & lcase(bWating) & "')"" class='" & sBtnClass & "'>" & sBtnText & "</a>"
		CAL_TD = CAL_TD & "		<strong id='" & sDate & "' class='status_text'></strong>"
		CAL_TD = CAL_TD & "</td>"
	END FUNCTION
%>