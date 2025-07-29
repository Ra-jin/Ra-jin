<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<%
	
	If Not gLoginOk Then
        ScriptBegin
        ScriptWrite "alert('로그인 후 이용하실 수 있습니다.');"
        ScriptWrite "self.close();"
        ScriptEnd
        response.end
    End If

	mode = "apply" 

	'예약 상태 확인
	strSql = ""
	strSql = strSql & " SELECT EC_HOPE_DT, COUNT(EC_HOPE_DT) as cnt "
	strSql = strSql & " FROM MR_EVT_SUSI_CONSULT2024 WITH(NOLOCK) "
	strSql = strSql & " WHERE 1=1 and ec_agree2_yn in('1','2') "
	strSql = strSql & " GROUP BY EC_HOPE_DT "

	Set objRs = russelobjdb.sqlQuery(strSql,3)
	arrList = Null
	If Not (objRs.EoF And objRs.BoF) Then
		arrList = objRs.getrows
	End If
	objRs.close
	Set objRs = Nothing

	DC_0729 = 0  '대치 		7/29
	DC_0730 = 0  '대치 		7/30	
	MD_0805 = 0  '목동 		8/5
	MD_0806 = 0  '목동		8/6
	DC_0812 = 0	 '대치		8/12
	DC_0813 = 0	 '대치		8/13
	DC_0819 = 0	 '대치		8/19
	MD_0902 = 0  '목동 		9/2
	MD_0903 = 0  '목동 		9/3
	DG_0815 = 0  '대구 		8/15
	DG_0826 = 0  '대구		8/26

	If isarray(arrList) = False Then 
	Else 
		For n=0 To ubound(arrList,2)
			consultDate = arrList(0,n)
			consultDateCnt = arrList(1,n)
			
			'대치
			If consultDateCnt >= 12 Then '대기상태
				if consultDate = "07-29" then
					DC_0729 = 1
				END if
				if consultDate = "07-30" then
					DC_0730 = 1
				END if
				if consultDate = "08-12" then
					DC_0812 = 1
				END if
				if consultDate = "08-13" then
					DC_0813 = 1
				End if
			End If
			
			'대치테스트용
			' If consultDateCnt >= 2 Then '대기상태
			' 	if consultDate = "08-19" then
			' 		DC_0819 = 1
			' 	End if
			' End If
			
			If consultDateCnt >= 13 Then 
				if consultDate = "08-19" then
					DC_0819 = 1
				End if
			End If

			'목동
			If consultDateCnt >= 12 Then 
				if consultDate = "08-05" then
					MD_0805 = 1
				end if
			End If

			If consultDateCnt >= 14 Then '해당 날짜 14명 이후 대기로 변경 (2023-08-01 김예은님 요청)
				if consultDate = "08-06" then
					MD_0806 = 1
				end if
			End If

			If consultDateCnt >= 15 Then '해당 날짜 15명 이후 대기로 변경 (2023-07-31 강희경 파트장님 요청)
				if consultDate = "08-15" then
					DG_0815 = 1
				end if
				if consultDate = "08-26" then
					DG_0826 = 1
				end if
				if consultDate = "09-02" then
					MD_0902 = 1
				end if
				if consultDate = "09-03" then
					MD_0903 = 1
				end if
			End If
		Next
	End If

	
	If gLoginOk = True Then 
        strSql = ""
        strSql = strSql &" SELECT count(*) as cnt "
        strSql = strSql &" FROM MR_EVT_SUSI_CONSULT2024 WITH(NOLOCK) "
        strSql = strSql &" WHERE EC_TYPE = 'C' "
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
	
	' If curYmdhmin >= 202307280000 and applyStatus = 0 Then
    '     ScriptBegin
    '     ScriptWrite "alert('마감되었습니다.');"
    '     ScriptWrite "self.close();"
    '     ScriptEnd
    '     response.end
    ' End If	
	
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
		strSql = strSql & " , [EC_LIKE_UNIV4] "
		strSql = strSql & " , [EC_LIKE_UNIV5] "
		strSql = strSql & " , [EC_LIKE_UNIV6] "
        strSql = strSql & " , [EC_BIRTH] "
		strSql = strSql & " , [EC_CONSULT_CONTENT] "
		strSql = strSql & " , [EC_CONSULT_PLACE] "
        strSql = strSql & " , [EC_AGREE1_YN] "
        strSql = strSql & " , [EC_AGREE2_YN] "
		strSql = strSql & " , [EC_AGREE3_YN] "
       	strSql = strSql & " , [EC_PATH] "
        strSql = strSql & " , [EC_HOPE_DT] "
        strSql = strSql & " , [EC_REG_DT] "
        strSql = strSql & " , [EC_TYPE] "
		strSql = strSql & " , [EC_APPLYNUM1] "
		strSql = strSql & " , [EC_APPLYNUM2] "
		strSql = strSql & " , [EC_APPLYNUM3] "
		strSql = strSql & " , [EC_LASTYEAR_UNIV] "
		
		strSql = strSql & " FROM MR_EVT_SUSI_CONSULT2024 WITH(NOLOCK)  "
	    strSql = strSql & " WHERE EC_TYPE = 'C' "
		strSql = strSql & " 	AND EC_AGREE2_YN in ('1','2') " '완료상태
		strSql = strSql & " 	AND EC_MEM_ID = '" & gLoginMemid & "' "
		
		Set objRs = russelobjdb.sqlQuery(strSql, 1)
	   
	 	If Not (objRs.EoF And objRs.BoF) Then
			EC_CD				= objRs(0)
            EC_MEM_ID			= objRs(1)
            EC_MEM_NM			= objRs(2)
            EC_SEX				= objRs(3) 
            EC_SCH_NM			= objRs(4) 
            EC_LINE				= objRs(5)
            EC_CLASS			= objRs(6) 
            EC_STU_MOBILE		= splitPhone(Trim(objRs(7)))
            EC_STU_EMAIL		= split(objRs(8),"@")
            EC_PAT_MOBILE		= splitPhone(Trim(objRs(9))) 
            EC_PAT_EMAIL		= split(objRs(10),"@")        
            EC_LIKE_UNIV1		= objRs(11)
            EC_LIKE_UNIV2		= objRs(12) 
            EC_LIKE_UNIV3		= objRs(13)
			EC_LIKE_UNIV4		= objRs(14) 
			EC_LIKE_UNIV5		= objRs(15) 
			EC_LIKE_UNIV6		= objRs(16) 
          	EC_BIRTH			= objRs(17) 
            EC_CONSULT_CONTENT 	= objRs(18)
			EC_CONSULT_PLACE 	= objRs(19) 
            EC_AGREE1_YN		= objRs(20) 
            EC_AGREE2_YN		= objRs(21)
			EC_AGREE3_YN		= objRs(22)
          	EC_PATH				= objRs(23) 
            EC_HOPE_DT 			= objRs(24)
            EC_REG_DT 			= objRs(25)
            EC_TYPE				= objRs(26)
            EC_APPLYNUM1 		= objRs(27)
            EC_APPLYNUM2 		= objRs(28)
            EC_APPLYNUM3 		= objRs(29)
            EC_LASTYEAR_UNIV  	= objRs(30)
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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
	<meta name="title" content="상세정보등록수정" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, 
	maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr"/>
	
	<title>메가스터디 러셀</title>

	<link rel="stylesheet" type="text/css" href="/common/css/responsive/reset.css">
	<link rel="stylesheet" type="text/css" href="/common/css/responsive/common.css">
    <!-- //공통 css -->
    <style>
		.pop-consult {padding-top:53px;font-size:16px;}
		.pop-consult h1 {text-align:center;font-size:30px;line-height:1;}
		.pop-consult .notice-txt {margin-top:24px;color:#E30C0C;font-size:14px;line-height:2;padding:0 24px;margin-bottom:40px;}
		.pop-consult .info-wrap {border-top:10px solid #f2f2f2;padding:24px;}
		.pop-consult h2 {font-size:20px;font-weight:bold;padding-bottom:17px;border-bottom:1px solid #eaeaea;margin-bottom:17px;}
		.pop-consult h2 span {font-weight:400}
		.pop-consult h3 {font-size:18px;font-weight:bold;padding-bottom:17px;border-bottom:1px solid #eaeaea;margin-bottom:17px;}
		
		/* table tbl-pop */
		.tbl-pop > div {display:flex;}
		.tbl-pop dl {display:flex;align-items:center;width:50%;}
		.tbl-pop dl:nth-child(2) {margin-left:15px;}
		.tbl-pop dl dt{font-weight:400;padding:15px 15px 15px 7px;text-align:left;width:29%;box-sizing:border-box;}
		.tbl-pop dl dt.tit-dot {position:relative;padding-left:7px;}
		.tbl-pop dl dt.tit-dot:before {content:'';width:3px;height:3px;border-radius:999px;background-color:#d9d9d9;position:absolute;top:27px;left:0;}
		.tbl-pop dl dd {width:71%;}
		.tbl-pop dl dd.nsu-change {display:flex;align-items:center;}
		.tbl-pop dl dd.nsu-change div:first-child {display:flex;flex-wrap:wrap;}
		.tbl-pop dl dd .search-wrap {display:flex;align-items:center;}
		.tbl-pop dl dd input {background-color:#F6F6F6;width:100%;}
		
		.tbl-pop dl dd input[type="radio"] {width:auto;vertical-align:middle;}
		.tbl-pop dl dd input::placeholder {color:#888;font-weight:300;}
		
		input:-webkit-autofill,
		input:-webkit-autofill:hover,
		input:-webkit-autofill:focus,
		input:-webkit-autofill:active {
		-webkit-box-shadow: 0 0 0 30px #f6f6f6 inset !important;
		color:inherit;
		font-weight:inherit
		}
		.tbl-pop dl dd .select-box {position:relative;width:100%;}
		.tbl-pop dl dd .select-box:after {content:'';width: 0;height: 0;border-bottom: 8px solid transparent;border-top: 8px solid #222;border-left: 5px solid transparent;border-right: 5px solid transparent;position:absolute;top:58%;right:15px;transform:translateY(-50%);}
		.tbl-pop dl dd .select-box select {padding:8px 16px;border:1px solid #e4e4e4;background-color:#f6f6f6;border-radius:3px;-webkit-appearance:none;-moz-appearance:none;appearance:none;width:100%;}
		.tbl-pop dl dd .c-input-box {background-color:#f6f6f6;border-radius:3px;border:1px solid #e4e4e4;padding-left:10px;}
		.tbl-pop dl dd .select-box {display:inline-block;}
		.tbl-pop dl dd .select-box:after {top:62%;}
		.tbl-pop dl dd .c-input-box select {border:none;background-color:transparent;}
		.tbl-pop dl dd .c-input-box input {border:none;}
		.tbl-pop dl dd .in-email {display:flex;align-items:center;}
		.tbl-01 td input {width:calc(100% - 75px);background-color:#f6f6f6;box-sizing:border-box;}
		.btn-wrap {justify-content:center;margin-top:45px;margin-bottom:60px;}
		.btn-wrap .btn-b-wh.on {width:36%;}
		.pop-consult .info-wrap ul {margin-top:14px;}
		.pop-consult .info-wrap ul li:not(:first-child) {margin-top:5px;}

		/* 학교검색 팝업 */
		.layer-info {display:none;position: fixed;top:50%;left:8.5%;width:50%;transform:translateY(-50.1%);background:#fff;padding:0;border-radius: 20px;box-sizing: border-box;z-index:11;font-size:16px;}
		.layer-info .inner {position: relative;padding:17px 0 20px;text-align: center;}
		.layer-info .inner .tit {margin:0 0 15px 0;font-weight: bold;padding:0 0 20px;border-bottom:1px solid #d6d6d6;}
		.layer-info .inner .txt {font-size: 13px;line-height: 1.5;}
		.layer-info .inner .find-school .search-wrap {display:flex;align-items:center;}
		.layer-info .inner .find-school .search-wrap input {background-color:#f6f6f6;}
		.layer-info .bt-close {position: absolute;top:-30px;right:5px;}
		.layer-info .bt-close img {width:20px;height:20px;}
		.layer-info .bt-text {display:block;margin:15px 0 -15px;padding:15px 0;color:#0081ff;border-top:1px solid #eaeaea;font-weight: bold;}

		.bt-school {display: inline-block;margin-left:3%;width:30%;border-radius: 3px;background:#777;color:#fff;font-weight: bold;height: 40px;text-align: center;font-size:13px;line-height:40px;vertical-align: middle;}

		.find-school {padding:0 6%}
		.find-school .result-wrap {padding-top:40px;font-size:14px;text-align: left;}
		.find-school .result-wrap .stit {padding-bottom:10px;margin-bottom:10px;border-bottom:1px solid #d6d6d6;font-weight:400;}
		.find-school .result-wrap .list {height:130px;overflow-y: auto;}
		.find-school .result-wrap .list p {margin-bottom:7px;font-weight:400;color:#666;}
		.find-school .result-wrap .list p a {display: flex;align-items: center;}
		.find-school .result-wrap .list p strong {width:28%;padding:0 9px 0 0;margin-right:10px;border-right: 1px solid #979aa1;}

		/* 입시전략연구소 정시컨설팅 - 대학/학과 검색 팝업 */
		.popupUniversity{padding:0 4%;}
		.popupUniversity .searchWrap{margin:0 0 25px 0;text-align:left;}
		.popupUniversity .searchWrap .searchBox{background:#e6f5ff;height:46px;padding:0 54px 0 0;position:relative;color:#565656;font-weight:bold;line-height:44px;}
		.popupUniversity .searchWrap .searchBox label{display:block;position:absolute;left:0;top:0;width:100%;height:100%;padding:0 64px 0 10px;box-sizing:border-box;text-align:left;line-height:36px}
		.popupUniversity .searchWrap .searchBox label span{font-weight:normal;font-size:13px;color:#868686;}
		.popupUniversity .searchWrap .searchBox input{width:100%;height:100%;border:none;background:transparent;outline:none;padding:0 10px 0 10px;box-sizing:border-box;color:#565656;font-weight:bold;font-size:13px;line-height:44px;}
		.popupUniversity .searchWrap .searchBox a{position:absolute;right:0;top:0;}
		.popupUniversity .searchWrap .major .majorList{position:relative;padding:0 0 0 25%;height:36px;margin:0 0 2px 0;}
		.popupUniversity .searchWrap .major .majorList + .majorList{margin:0 0 0 0;}
		.popupUniversity .searchWrap .major .majorList .title{display:block;position:absolute;left:0;top:0;background:#666666;color:#fff;text-align:center;width:25%;height:100%;line-height:36px;font-size:13px;}
		.popupUniversity .searchWrap .major .majorList .university{height:34px;font-size:13px;line-height:32px;border:1px solid #e5e5e5;border-left:none;color:#1a1a1a;padding:0 0 0 10px;font-weight:bold;}
		.popupUniversity .searchWrap .major .majorList .searchBox{height:34px;font-size:13px;line-height:32px;border:1px solid #e5e5e5;border-left:none;padding:0 45px 0 0;}
		.popupUniversity .searchWrap .major .majorList .searchBox label span{font-size:11px;}
		.popupUniversity .searchWrap .major .majorList .searchBox input{line-height:32px;}
		.popupUniversity .searchWrap .major .majorList .searchBox .backUni{position:absolute;right:64px;top:50%;transform:translateY(-50%)}
		.popupUniversity .searchWrap .major .majorList .searchBox .backUni img {width:100%}
		.popupUniversity .searchWrap p{font-size:11px;line-height:14px;color:#ff3a3a;margin:5px 0 0 0;padding:0 0 0 14px;}
		.popupUniversity .searchWrap p.info{color:#808080;font-size:13px;margin:8px 0 0 0;}

		.mo-only {display:none}
		/* Mobile */
		@media screen and (max-width: 839px)  {
			
  			html{font-size: 31.25%;}
			.mo-only {display:inline-block;}
			.mo-only02 {display:block;}
			.pc-only {display:none}

			.pop-consult h1 {font-size:5rem;line-height:1.3}
			.pop-consult .notice-txt {line-height:1.5;margin-bottom:25px;}
			.pop-consult .notice-txt li:not(:first-child) {margin-top:10px;}
			.pop-consult h2 {font-size:18px;padding-bottom:12px;margin-bottom:12px;}
			.pop-consult .info-wrap {padding:24px 4%}
			.tbl-pop > div {flex-direction:column;}
			.tbl-pop dl {width:100%;}
			.tbl-pop dl:nth-child(2) {margin-left:0;}
			.tbl-pop dl dt {padding:15px 5px 15px 7px;width:32%;}
			.tbl-pop dl dd {width:68%;}
			.tbl-pop dl dd.nsu-change {align-items:baseline;flex-direction: column;}
			.tbl-pop dl dd.nsu-change .n_student input {margin-bottom:6px;margin-top:5px;}
			
			
			.btn-search {width:71px;padding:10px;line-height:1;padding:12.5px 10px;}
			.pop-consult {font-size:3rem;}
			.fz14 {font-size:2.4rem !important}
			.tbl-pop dl dd select {font-size:3rem;}
			.tbl-pop dl dd .c-input-box {padding-left:0;}
			.tbl-pop dl dd .c-input-box .select-box {width:35% !important}
			.tbl-pop dl dd .c-input-box select {padding:8px;}
			.tbl-pop dl dd .c-input-box input {width:25% !important;text-align:center;padding:7px 0;}
			.tbl-pop dl dd .in-email input {width:40% !important}
			.tbl-pop dl dd .in-email .select-box {width:30% !important;}
			.tbl-pop dl dd .in-email .select-box select {padding:8px 5px;}
			.tbl-pop dl dd .in-email .select-box:after {right:5px;border-bottom: 5px solid transparent;border-top: 5px solid #222;border-left: 3px solid transparent;border-right: 3px solid transparent;}
			.pop-consult h2 span {margin-top:10px;display:inline-block;}
			.btn-search {display:inline-block;box-sizing:border-box;font-size:3rem;font-weight:bold;margin-left:5px;}
			.tbl-01 td input {width: calc(100% - 85px);font-size:3rem;}
			.tbl-01 tbody td {padding:8px;}
			textarea {font-size:3rem;}
			textarea::-webkit-scrollbar {width: 12px;height: 12px;}
			textarea::-webkit-scrollbar-track {background: #f1f1f1;}
			textarea::-webkit-scrollbar-thumb {background: #ccc;border-radius: 10px;}
			.pop-consult h3 {font-size:3rem;margin-bottom:8px;padding-bottom:8px;}
			.pop-consult .f13 {font-size:2.6rem !important}
			.pop-consult .btn-wrap {margin-top:0;}
			.pop-consult .btn-wrap a.on {width:100%;font-size:3.2rem;padding:17px 29px 17px 12px;margin:0 6%;border-radius:4px;}
			.pop-consult .btn-wrap a.on:after {width: 8px;height: 8px;border-top: 1px solid #fff;border-right: 1px solid #fff;right: 20px;}
			.layer-info {width:92%;left:50%;transform:translate(-50%, -50%);border-radius:15px;}
			.layer-info .inner .find-school .search-wrap input {width:calc(100% - 76px) !important;}
			.layer-info .btn-search {width:76px;}
			.popupUniversity iframe {height:250px !important}
}
    </style>
</head>
<body>
	<div class="popup pop-consult">
		<h1>2025 수시 지원 컨설팅 <br class="mo-only">상세 정보 등록</h1>	
		<ul class="notice-txt list-bullet">
			<li>컨설팅 예약 수정 및 취소는 온라인 1:1 상담게시판 및 02-3498-4388(평일 10:00 ~ 18:00 상담 운영)로 문의주시기 바랍니다.</li>
			<li>제출 서류는 rsc@megastudy.net으로 첨부하여 보내주시기 바랍니다.</li>
			<li>컨설팅 취소 및 환불은 예약일로부터 2일(48시간) 전까지만 가능합니다.</li>
			<li>고른기회, 다자녀전형, 예체능전형, 특성화고전형 등 특수전형은 상담을 진행하지 않습니다.</li>
		</ul>
		<div class="info-wrap">
			<p class="tar fz14">(<strong class="txt-red">*</strong>) 표시 필수입력사항</p>
			<!-- 1.기본정보 -->
			<h2>1. 기본정보<strong class="txt-red">*</strong></h2>
			<div class="tbl-pop">
				<div>
					<dl>
						<dt class="tit-dot">성명</dt>
						<dd><input type="text" name="name" id="name" value="<%=gLoginMemName%>" ></dd>
					</dl>
					<dl>
						<dt class="tit-dot">성별</dt>
						<dd>
							<label for="man"><input type="radio" name="gender" id="man" value="M" <% IF EC_SEX = "M" THEN %> checked <%end if%>>남</label>
							<label for="woman" class="ml10"><input type="radio" name="gender" id="woman" value="F" <% IF EC_SEX = "F" THEN %> checked <%end if%>>여</label>
						</dd>
					</dl>
				</div>
				<div>
					<dl>
						<dt class="tit-dot">
							학교명
						</dt>
						<dd>

							<div class="search-wrap">
								<input style="width:calc(100% - 71px)" type="text" name="SH_SCH_NM" id="SH_SCH_NM" value="<%=EC_SCH_NM%>" readonly  />
								<a href="javascript:;" class="btn-search js-bt-school js-mask">검색</a>	
							</div>
						</dd>
					</dl>
					<dl>
						<dt class="tit-dot">
							생년월일
						</dt>
						<dd>
							<input type="text" name="birth" id="birth" value="<%=EC_BIRTH%>" maxlength="8" placeholder="예시)20020401">
						</dd>
					</dl>
				</div>
				<div>
					<dl>
						<dt class="tit-dot">
							고3/재수생
						</dt>
						<dd class="nsu-change">
							<div>
								<label for="go3" style="margin-right:5px;"><input type="radio" name="grade" id="go3" value="고3" <% IF EC_CLASS = "고3" THEN %> checked <%end if%> >고3</label>
								<label for="repeater" style="margin-right:5px;"><input type="radio" name="grade" id="jaesu" value="재수생" <% IF EC_CLASS = "재수생" THEN %> checked <%end if%>>재수생</label>
							</div>
							<div <% IF EC_CLASS = "고3" or EC_CLASS = "" THEN %> style="display:none;" <% end if %>class="n_student">
								<input type="text" name="last_univ" id="last_univ"  style="width:205px;font-size:13px;" value="<%=EC_LASTYEAR_UNIV%>" placeholder="전년도 수시 지원 대학을 입력하세요.">
							</div>
						</dd>
					</dl>
					<dl>
						<dt class="tit-dot">
							계열
						</dt>
						<dd>

							<span class="select-box">
								<select name="department" id="department">
									<option value="">선택</option>
									<option value="인문" <% IF EC_LINE = "인문" THEN %> SELECTED <%end if%>>인문</option>
									<option value="자연" <% IF EC_LINE = "자연" THEN %> SELECTED <%end if%>>자연</option>
								</select>
							</span>
						</dd>
					</dl>
				</div>
				<div>
					<dl>
						<dt class="tit-dot">
							학생 핸드폰
						</dt>
						<dd>

							<div class="c-input-box">
								<div class="in-tel">
									<span class="select-box" style="width: 75px">
										<select name="cel_no1" id="cel_no1">
											<option value="">선택</option>
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
									</span> <span>-</span>
									<input type="number" name="cel_no2" id="cel_no2" title="전화번호 가운데 자리" style="width:30%" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);" value="<%=MID(EC_STU_MOBILE,5,4)%>"> <span>-</span>
									<input type="number" name="cel_no3" id="cel_no3" title="전화번호 마지막 자리" style="width:30%" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);" value="<%=RIGHT(EC_STU_MOBILE,4)%>">
								</div>
							</div>
						</dd>
					</dl>
					<dl>
						<dt class="tit-dot">
							학생 이메일
						</dt>
						<dd>

							<div class="in-email">
								<input type="text" name="email_no1" id="email_no1" style="width:76px;" <% if mode = "modify" then %> value="<%=EC_STU_EMAIL(0)%>" <%else%> value="" <% end if %> title="이메일 첫번째 자리">
								&nbsp;<span>@</span>&nbsp;<input type="text" name="email_no3" id="email_no3" style="width:76px;" <% if mode = "modify" then %> value="<%=EC_STU_EMAIL(1)%>"  <%else%> value="" <% end if %> title="이메일 마지막 자리" class="input-disabled" disabled="disabled">
								<span class="select-box ml5">
									<select name="email_no2" id="email_no2">
										<option value="선택하세요" selected="">선택</option>
										<option value="naver.com"  <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "naver.com" Then %>selected <% End If %> <% end if %>>naver.com</option>
										<option value="hanmail.net" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "hanmail.net" Then %>selected <% End If %> <% end if %>>hanmail.net</option>
										<option value="daum.net" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "daum.net" Then %>selected <% End If %> <% end if %>>daum.net</option>
										<option value="nate.com" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "nate.com" Then %>selected <% End If %> <% end if %>>nate.com</option>
										<option value="yahoo.co.kr" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "yahoo.co.kr" Then %>selected <% End If %> <% end if %>>yahoo.co.kr</option>
										<option value="hotmail.com" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "hotmail.com" Then %>selected <% End If %> <% end if %>>hotmail.com</option>
										<option value="paran.com" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "paran.com" Then %>selected <% End If %> <% end if %>>paran.com</option>
										<option value="gmail.com" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "gmail.com" Then %>selected <% End If %> <% end if %>>gmail.com</option>
										<option value="hanmir.com" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "hanmir.com" Then %>selected <% End If %> <% end if %>>hanmir.com</option>
										<option value="dreamwiz.com" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "dreamwiz.com" Then %>selected <% End If %> <% end if %>>dreamwiz.com</option>
										<option value="" <% if mode = "modify" then %> <% If EC_LIKE_UNIV4 = "" Then %>selected <% End If %> <% end if %>>직접입력</option>
									</select>
								</span>
							</div>
						</dd>
					</dl>
				</div>
				<div>
					<dl>
						<dt class="tit-dot">
							학부모 핸드폰
						</dt>
						<dd>

							<div class="c-input-box">
								<div class="in-tel">
									<span class="select-box" style="width: 75px">
										<select name="cel2_no1" id="cel2_no1">
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
									</span> <span>-</span>
									<input type="number" name="cel2_no2" id="cel2_no2" title="전화번호 가운데 자리" style="width:30%" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);" value="<%=MID(EC_PAT_MOBILE,5,4)%>"> <span>-</span>
									<input type="number" name="cel2_no3" id="cel2_no3" title="전화번호 마지막 자리" style="width:30%" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);" value="<%=RIGHT(EC_PAT_MOBILE,4)%>">
								</div>
							</div>
						</dd>
					</dl>
					<dl>
						<dt class="tit-dot">
							학부모 이메일
						</dt>
						<dd>

							<div class="in-email">
								<input type="text" name="email2_no1" id="email2_no1" <% if mode = "modify" then %> value="<%=EC_PAT_EMAIL(0)%>" <%else%> value="" <%end if%> style="width:76px;" title="이메일 첫번째 자리">
								&nbsp;<span>@</span>&nbsp;
								<input type="text" name="email2_no3" id="email2_no3" <% if mode = "modify" then %>  value="<%=EC_PAT_EMAIL(1)%>" <%else%> value="" <%end if%> style="width:76px;" title="이메일 마지막 자리" class="input-disabled" disabled="disabled">
								<span class="select-box ml5">
									<select name="email2_no2" id="email2_no2">
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
								</span>
							</div>
						</dd>
					</dl>
				</div>
			</div>
		</div>
		<div class="info-wrap">

		<!-- 2.관심대학&학과 -->
		<h2>2. 관심대학&amp;학과<strong class="txt-red">*</strong><br>
			<span class="fz14 txt-red">※ 1개 이상 필수 입력 (동일 대학 내 타전형 간 중복지원 희망할 경우 동일 대학&학과 중복 입력 가능)</span></h2>
			<table class="tbl-01">
				<colgroup>
					<col width="20%">
					<col width="*">
				</colgroup>
				<thead>
					<tr>
						<th>순위</th>
						<th>대학/학과명</th>
					</tr>
				</thead>
				<tbody>
					<input type="hidden" name="uni_num" value="">
					<tr>
						<td>1</td>
						<td>
							<div class="input-wrap">
								<input type="text" title="대학/학과명" name="V_UNI_NM1" value="<%=EC_LIKE_UNIV1%>" readonly />
								<input type="hidden" name="V_UNI_CD1" value="" />
								<input type="hidden" name="V_MAJOR_CD1" value=""/>
								<a href="javascript:;" class="btn-search js-bt-uni js-mask" onClick="open_uni('1')">검색</a>
							</div>
						</td>
					</tr>
					<tr>
						<td>2</td>
						<td>
							<div class="input-wrap">
								<input type="text" title="대학/학과명" name="V_UNI_NM2" value="<%=EC_LIKE_UNIV2%>" readonly />
								<input type="hidden" name="V_UNI_CD2" value="" />
								<input type="hidden" name="V_MAJOR_CD2" value=""/>
								<a href="javascript:;" class="btn-search js-bt-uni js-mask" onClick="open_uni('2')">검색</a>
							</div>
						</td>
					</tr>
					<tr>
						<td>3</td>
						<td>
							<div class="input-wrap">
								<input type="text" title="대학/학과명" name="V_UNI_NM3"  value="<%=EC_LIKE_UNIV3%>" readonly />
								<input type="hidden" name="V_UNI_CD3" value="" />
								<input type="hidden" name="V_MAJOR_CD3" value=""/>
								<a href="javascript:;" class="btn-search js-bt-uni js-mask" onClick="open_uni('3')">검색</a>
							</div>
						</td>
					</tr>
					<tr>
						<td>4</td>
						<td>
							<div class="input-wrap">
								<input type="text" title="대학/학과명" name="V_UNI_NM4"  value="<%=EC_LIKE_UNIV4%>" readonly />
								<input type="hidden" name="V_UNI_CD4" value="" />
								<input type="hidden" name="V_MAJOR_CD4" value=""/>
								<a href="javascript:;" class="btn-search js-bt-uni js-mask" onClick="open_uni('4')">검색</a>
							</div>
						</td>
					</tr>
					<tr>
						<td>5</td>
						<td>
							<div class="input-wrap">
								<input type="text" title="대학/학과명" name="V_UNI_NM5"  value="<%=EC_LIKE_UNIV5%>" readonly />
								<input type="hidden" name="V_UNI_CD5" value="" />
								<input type="hidden" name="V_MAJOR_CD5" value=""/>
								<a href="javascript:;" class="btn-search js-bt-uni js-mask" onClick="open_uni('5')">검색</a>
							</div>
						</td>
					</tr>
					<tr>
						<td>6</td>
						<td>
							<div class="input-wrap">
								<input type="text" title="대학/학과명" name="V_UNI_NM6"  value="<%=EC_LIKE_UNIV6%>" readonly />
								<input type="hidden" name="V_UNI_CD6" value="" />
								<input type="hidden" name="V_MAJOR_CD6" value=""/>
								<a href="javascript:;" class="btn-search js-bt-uni js-mask" onClick="open_uni('6')">검색</a>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="info-wrap">

		<!-- 3.지원성향 -->
		<h2>3. 지원성향<strong class="txt-red">*</strong><br>
		<span class="fz14 txt-red">※ 1개 이상 필수 입력 / 숫자로 입력</span></h2>
		<table class="tbl-01 tbl-left">
			<colgroup>
				<col width="20%">
				<col width="*">
			</colgroup>
			<tbody>
				<tr>
					<th>상향</th>
					<td>
						<input type="text" name="up_apply" id="up_apply" value="<%=EC_APPLYNUM1%>" style="width: 90px;vertical-align: middle;" onkeydown="onlyNumber(event);"> 장
					</td>
				</tr>
				<tr>
					<th>적정</th>
					<td>
						<input type="text" name="mid_apply" id="mid_apply" value="<%=EC_APPLYNUM2%>" style="width: 90px;vertical-align: middle;" onkeydown="onlyNumber(event);"> 장
					</td>
				</tr>
				<tr>
					<th>하향</th>
					<td>
						<input type="text" name="down_apply" id="down_apply" value="<%=EC_APPLYNUM3%>" style="width: 90px;vertical-align: middle;" onkeydown="onlyNumber(event);"> 장
					</td>
				</tr>
			</tbody>
		</table>
		</div>
		<div class="info-wrap">
			<!-- 4.상담 희망 내용 -->
			<h2>4. 상담 희망 내용<strong class="txt-red">*</strong></h2>
			<div><textarea name="consult_content" id="consult_content" style="height:256px" onkeyup="checkLength();" rows="5" placeholder="상담희망 내용을 구체적으로 입력해주세요. (최대 500자)"><%=EC_CONSULT_CONTENT%></textarea></div>
			<script>
				function checkLength(){
					if($('#consult_content').val().length >500){
						$('#consult_content').val($('#consult_content').val().substring(0,500));
						alert('최대 500자를 넘기셨습니다.');
					}
				}
			</script>
		</div>
		<div class="info-wrap">
			<!-- 개인정보 취급방침에 대한 동의 -->
			<h3>개인정보 취급방침에 대한 동의 <strong class="txt-red">(필수)</strong> <input type="checkbox" name="agree_1" id="agree_1" value="Y" <% if EC_AGREE1_YN = "Y" then %> checked <%end if%> ></h3>
			<table class="tbl-01 fz14 f13 tbl-left">
				<colgroup>
					<col width="20%">
					<col width="*">
				</colgroup>
				<tbody>
					<tr>
						<th>수집항목</th>
						<td>계열, 성명, 성별, 생년월일, 휴대폰 번호, 이메일,<br class="pc-only"> 학교, 학년, 학교생활기록부, 및 기타 제출서류 관련사항</td>
					</tr>
					<tr>
						<th>수집목적</th>
						<td>
							(1) 서비스 제공 : 컨설팅 진행을 위한 기본 분석 자료로 활용 <br>
							(2) 고객 관리 : 컨설팅 완료 후 만족도 조사를 위한 연락처 활용
						</td>
					</tr>
				</tbody>
			</table>
			
			<!-- 마케팅 목적 개인정보 활용에 대한 동의 -->
			<h3 class="mt30">마케팅 목적 개인정보 활용에 대한 동의 <strong class="txt-red">(선택)</strong> <input type="checkbox" name="agree_2" id="agree_2" value="Y" <% if EC_AGREE3_YN = "Y" then %> checked <%end if%> ></h3>
			<table class="tbl-01 fz14 f13 tbl-left">
				<colgroup>
					<col width="20%">
					<col width="*">
				</colgroup>
				</colgroup>
				<tbody>
					<tr>
						<th>수집목적</th>
						<td>당사 (메가스터디교육㈜)의 사이트 프로모션 페이지 및 SNS/블로그/유튜브 등의 공식채널 내 제작물로 활용</td>
					</tr>
				</tbody>
			</table>
			<ul class="fz14 f13">
				<li>※ 위의 개인정보 수집&middot;이용에 대한 동의를 거부할 권리가 있습니다. 단, 거부 시 상담에 제한을 받을 수 있습니다.</li>
				<li>※ 보유기간은 수집 후 1년 동안 보유하며 이후 파기하는 것을 원칙으로 합니다. </li>
			</ul>
		</div>
		</form>
		
		<!-- btn -->	
		<div class="btn-wrap">
			<a href="javascript:finish();" class="btn-b-wh on">저장</a>
		</div>
		<!-- //btn -->
	</div>
	<!-- //pop-info -->
	
	<!-- 고등학교 검색 팝업 -->
	<div class="layer-info js-school-find">
		<div class="inner">
			<p class="tit">학교 검색</p>
			<div class="find-school">
				<div class="search-wrap">
					<input type="text" id="kword" name="kword" style="width:calc(100% - 95px)" /><a href="javascript:;" onclick="getList();" class="btn-search">학교검색</a>
				</div>
				<div class="result-wrap">
					<p class="stit">검색 결과</p>
					<div id="search-result" class="list">
						<p style="color:#999" class="tac">검색 결과가 없습니다.</p>
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
					<p id="info" class="info">* 학교 검색 후, 학과를 입력해주세요.</p>
				</div>
				<iframe id="list" name="list" frameborder="0" scrolling="no" src="./popup_school_list.asp" marginwidth="0" marginheight="0" style="width:100%;height:300px" vspace="0" hspace="0"></iframe>
			</div>
			<a href="javascript:void(0);" class="bt-close js-layer-close js-close-mask"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close.png" alt="닫기"></a>
		</div>
	</div>
	<div class="mask-bg" style="display:none;"></div>
</div>
<!-- //popup -->

</body>
</html>

<script type="text/javascript" src="/russel/public/jquery/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/russel/public/Js/Util.js"></script>
<script>

	//고등학교 검색
	$(function(){
        $(".js-bt-school").on("click",function(){
            $(".js-school-find").css("display","block")
			$(".mask-bg").css("display","block")
        })
        $(".js-layer-close").on("click",function(){
            $(".js-school-find").css("display","none")
            $(".mask-bg").css("display","none")
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
		$("#school_cd").val(code);
		$(".js-layer-close").click();
	}

	
	//대학교 검색
	function open_uni(){
		$(".js-bt-uni").on("click",function(){
			$(".js-uni-find").css("display","block")
			$(".mask-bg").css("display","block")
		})
        
		$(".js-layer-close").on("click",function(){
            $(".js-uni-find").css("display","none")
            $(".mask-bg").css("display","none")
        })
	}
	window.onload = function() {
		<% if applyStatus > 0  then %>
			$(".bg-green a").hide();
			$(".bg-pink  a").hide();
			$(".bg-blue  a").hide();

			<%IF EC_AGREE2_YN = "1" THEN%>
				$("#"+'<%=EC_HOPE_DT%>').text("예약완료");
			<%ELSE%>
				$("#"+'<%=EC_HOPE_DT%>').text("대기완료");
			<%END IF%>

			$("input[type=text]").attr("readonly",true);
			$("textarea").attr("readonly",true);
			$("select").attr("disabled",true);
			$("input[type=radio]").attr("disabled",true);
			$("input[type=number]").attr("disabled",true);
			$("input[type=checkbox]").attr("disabled",true);
			$("#cousult_content").attr("readonly", true);
			$(".btn-search").removeAttr("onclick");


		<% end if %>
	}

	function inputHSCH(code,type,name){
		var f = document.form1;
		f.SH_SCH_NM.value = name;

	}

	function finish() {
		var f = document.form1;
		
		if($.trim($('#mem_status_apply').val()).length < 1 && $.trim($('#mem_status_relay').val()).length < 1 ){
			alert('컨설팅 희망일을 선택해주세요.'); return;
		}
		
		if($.trim($('#SH_SCH_NM').val()).length < 1){
			 alert('학교명을 입력해주세요.'); $('#SH_SCH_NM').focus(); return;
		}
	
		if($.trim($('input[name="gender"]:checked').val()).length < 1){
			 alert('성별을 선택해주세요.');  $('input[name=gender]').focus(); return;
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
		
		if($.trim($('input[name=V_UNI_NM1]').val()).length < 1){
			 alert('관심대학 및 학과 1순위는 필수 입력입니다.'); $('input[name=V_UNI_NM1]').focus(); return;
		}

		if($.trim($('input[name=up_apply]').val()).length < 1 && $.trim($('input[name=mid_apply]').val()).length < 1 && $.trim($('input[name=down_apply]').val()).length < 1 ){
			 alert('지원성향을 1개 이상 입력해주세요.'); return;
		}

		if($.trim($('#consult_content').val()).length < 1){
			alert('상담 희망내용을 입력해주세요.'); $('#consult_content').focus(); return;
		}

		if( $("input[name=agree_1]:checkbox:checked").length < 1){
			alert('개인정보수집 및 활용에 대한 동의에 동의해주셔야 상담 신청이 접수가 가능합니다.'); $('#agree1').focus(); return;
		}

		
		document.form1.submit();
	}

	function del_file1(){
		
		form1.V_FILE_PATH.value='';
		form1.csat_change_num.value='2';
		$("#cancle_file1").hide();
	
	}

	function del_file2(){
		
		form1.V_FILE_PATH02.value='';
		form1.susi_change_num.value='2';
		$("#cancle_file2").hide();
	
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

	
	// 예약확인,취소
	function reservCheck(date,place) {
		if (confirm("예약하시겠습니까?") == true){    //확인

				
			$(".bg-green strong").text("");
			$(".bg-pink  strong").text("");
			$(".bg-blue  strong").text("");
			$("div").removeClass("on");

			$(".reserve"+date).addClass("on");

			$("#"+date).text("예약 선택완료");
			
			form1.mem_status_relay.value = "";
			form1.mem_status_apply.value = date;
			form1.consult_place.value = place;
			
			// $(".bg-yellow strong").text("");
			// $(".bg-gray strong").text("");
			// $(".bg-blue strong").text("");
		}else{   //취소
			return false;
		}

	}
	// 대기확인,취소
	function waitingCheck(date,place) {
		if (confirm("대기하시겠습니까?") == true){    //확인	

			$(".bg-green strong").text("");
			$(".bg-pink  strong").text("");
			$(".bg-blue  strong").text("");
			$("div").removeClass("on");

			$(".wait"+date).addClass("on");
			
			$("#"+date).text("대기 선택완료");

			form1.mem_status_apply.value = "";
			form1.mem_status_relay.value = date;
			form1.consult_place.value = place;
		
			// $(".bg-yellow strong").text("");
			// $(".bg-gray strong").text("");
			// $(".bg-blue strong").text("");
		}else{   //취소
			return false;
		}
	}

	
	// 학생 이메일
	$('#email_no2').change(function(){
		
		$("#email_no2 option:selected").each(function () {
			if($(this).val() == ""){
				$("#email_no3").attr("disabled",false); //활성화
			}else{
				var email = $("#email_no2").val();
					
				$("#email_no3").val(email);
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
				var email = $("#email2_no2").val();
				$("#email2_no3").val(email);
				$("#email2_no3").attr("disabled",true); //활성화
			}
		});
	});
	
	
	$(function(){
		// 학생 이메일
		$('#email_no2').change(function(){
			$("#email_no2 option:selected").each(function () {
				var email = $("#email_no2").val();
				alert(email)
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

	function cancle(){

		form1.mode.value = 'cancle';

		if (confirm("상담을 취소하시겠습니까?") == true){    //확인
			document.form1.submit();
		}else{   //취소
			return false;
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

	// 창닫기
	function winClose() {
		window.open('', '_self').close();
	}
</script>
