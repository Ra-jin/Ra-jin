<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/Public/class.Page.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
<!--#include virtual="/common/responsive/inc/head_common.asp"-->
	<meta name="title" content="상세정보등록수정" />
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
<%
	
	If Not gLoginOk Then
		ScriptBegin
        ScriptWrite "alert('로그인 후 이용하실 수 있습니다.');"
		ScriptWrite "self.close();"
		ScriptEnd
		response.end
    End If
	
	'컨설팅 마스터 번호 - 임의 조작 방지 위해 index.asp / popup.asp / index_ax.asp 내 선언
	' 기획팀 개발 서버 테스트 위해 임시 masterIdx 6 설정 / 실서버 : 2
	If IsDevSvr() Then
		masterIdx = 6
	Else
		masterIdx = 2
	End If
	
	'예약 여부(결제) OR 대기 여부
	bReserv = False
	bWaiting = False

	' 상세정보 등록 여부
	bApply = False

%>
<%
	If gLoginOk Then
		reservCnt = 0

		strSql = ""
    	strSql = strSql & " SELECT COUNT(1) "
    	strSql = strSql & " FROM   dbo.MR_CONSULTING_RESERV WITH (NOLOCK) "
    	strSql = strSql & "        JOIN dbo.MG_Member_RmsCd WITH (NOLOCK) ON MG_Member_RmsCd.CODE = CR_AMS_CODE "
    	strSql = strSql & "        JOIN dbo.MR_CONSULTING_DTL WITH (NOLOCK) ON CD_IDX = CR_CD_IDX "
    	strSql = strSql & "                                                    AND CD_CM_IDX = "& masterIdx &" "
    	strSql = strSql & "        JOIN MegaRMS.dbo.AMS_GRP_HIS WITH (NOLOCK) ON GH_COLE_CD = CD_COLE_CD "
    	strSql = strSql & "                                                      AND GH_MEM_CD = Rms_Mem_Cd "
    	strSql = strSql & " WHERE  CR_MEM_ID = '"& gLoginMemId &"' " 

		reservCnt = russelobjDB.sqlResult(strSql)
		If reservCnt > 0 Then
			bReserv = true
		End If

		waitingCnt = 0 

		strSql = ""
		strSql = strSql & " SELECT COUNT(1) "
		strSql = strSql & " FROM   dbo.MR_CONSULTING_WAITING WITH (NOLOCK) "
		strSql = strSql & " WHERE  CW_CM_IDX = " & masterIdx & " "
		strSql = strSql & " 	   AND CW_MEM_ID = '"& gLoginMemId &"' "

		waitingCnt = russelobjDB.sqlResult(strSql)
		If waitingCnt > 0 Then
			bWaiting = true
		End If 	

	End If

	'  예약대기 / 예약 완료 미 완료 시 상세 정보 등록 X  
	If Not bReserv And Not bWaiting Then
		If Not bApply Then
			ScriptBegin
			ScriptWrite "alert('온라인 접수 후 등록 가능합니다.');"
			ScriptWrite "self.close();"
			ScriptEnd
			response.end
		End If
	End If
	
 %>

<%
	applyCnt = 0 
	strSql = ""
	strSql = strSql & " SELECT COUNT(1) "
	strSql = strSql & " FROM dbo.MR_CONSULTING_APPLY_INFO WITH (NOLOCK) "
	strSql = strSql & " WHERE CAI_CM_IDX = " & masterIdx & " "
	strSql = strSql & " AND CAI_MEM_ID = '" & gLoginMemId & "' "

	applyCnt = russelobjDB.sqlResult(strSql)

	If applyCnt > 0 Then
		bApply = True ' 이미 작성 - > 상세보기 
	End if 	 ' 미작성 -> 등록

	

%>

<%
	' 학년 구분 (재수생/고3)
	strSql = ""
	strSql = strSql & " SELECT 	CD_DTL_CD, "
	strSql = strSql & " 		REPLACE(CD_COM_CLS, '재수', '재수생') "
	strSql = strSql & " FROM 	dbo.AMS_COM_DTL WITH (NOLOCK) "
	strSql = strSql & " WHERE 	CD_COM_CD = 105 "
	strSql = strSql & " 		AND CD_DTL_CD IN (13, 17) "

	Set rsGrade = amsobjDB.sqlQuery(strSql, 3)
		
	If Not rsGrade.EOF Then
		arrGrade = rsGrade.GetRows()
	End If
		
	rsGrade.Close
	Set rsGrade = Nothing
	
	' 계열
	strSql = ""
	strSql = strSql & " SELECT 	CD_DTL_CD, "
	strSql = strSql & " 		REPLACE(CD_COM_CLS, '계열', '') "
	strSql = strSql & " FROM 	dbo.AMS_COM_DTL WITH (NOLOCK) "
	strSql = strSql & " WHERE 	CD_COM_CD = 106 "
	strSql = strSql & " 		AND CD_DTL_CD IN (11, 12) "

	Set rsDivision = amsobjDB.sqlQuery(strSql, 3)
		
	If Not rsDivision.EOF Then
		arrDivision = rsDivision.GetRows()
	End If
		
	rsDivision.Close
	Set rsDivision = Nothing

	' 대학 정보
	
	strSql = ""
	strSql = strSql & " SELECT 	CM_UNIV_YEAR, "
	strSql = strSql & " 		CM_UNIV_SOME_FIX "
	strSql = strSql & " FROM 	dbo.MR_CONSULTING_MAS WITH (NOLOCK) "
	strSql = strSql & " WHERE 	CM_IDX = " & masterIdx &" "

	Set rsMas = russelobjDB.sqlQuery(strSql, 1)
		
	If Not rsMas.EOF Then
		univYear 			= rsMas(0)
		univSomeFix 		= rsMas(1)
	End If
		
	rsMas.Close
	Set rsMas = Nothing

	If bApply = true Then

		strSql = ""
		strSql = strSql & " SELECT "
		strSql = strSql & " 	ISNULL(CAI_GENDER, '') AS CAI_GENDER, "
		strSql = strSql & "     ISNULL(CAI_SCHOOL_NAME, '') AS CAI_SCHOOL_NAME, "
		strSql = strSql & "     ISNULL(CAI_BIRTH, '') AS CAI_BIRTH, "
		strSql = strSql & "     CAI_GRADE, "
		strSql = strSql & "     ISNULL(CAI_LASTYEAR_UNIV, '') AS CAI_LASTYEAR_UNIV, "
		strSql = strSql & "     CAI_DIVISION, "
		strSql = strSql & "     ISNULL(CAI_CELL_NO, '') AS CAI_CELL_NO, "
		strSql = strSql & "     ISNULL(CAI_EMAIL, '') AS CAI_EMAIL, "
		strSql = strSql & "     ISNULL(CAI_PARENT_CELL_NO, '') AS CAI_PARENT_CELL_NO, "
		strSql = strSql & "     ISNULL(CAI_PARENT_EMAIL, '') AS CAI_PARENT_EMAIL, "
		strSql = strSql & "     ISNULL(CAI_LIKE_UNIV1, '') AS CAI_LIKE_UNIV1, "
		strSql = strSql & "     ISNULL(CAI_LIKE_UNIV2, '') AS CAI_LIKE_UNIV2, "
		strSql = strSql & "     ISNULL(CAI_LIKE_UNIV3, '') AS CAI_LIKE_UNIV3, "
		strSql = strSql & "     ISNULL(CAI_LIKE_UNIV4, '') AS CAI_LIKE_UNIV4, "
		strSql = strSql & "     ISNULL(CAI_LIKE_UNIV5, '') AS CAI_LIKE_UNIV5, "
		strSql = strSql & "     ISNULL(CAI_LIKE_UNIV6, '') AS CAI_LIKE_UNIV6, "
		strSql = strSql & "     CAI_APPLY_NUM1, "
		strSql = strSql & "     CAI_APPLY_NUM2, "
		strSql = strSql & "     CAI_APPLY_NUM3, "
		strSql = strSql & " 	ISNULL(CAI_CONSULT_CONTENT, '') AS CAI_CONSULT_CONTENT, "
		strSql = strSql & "     ISNULL(CAI_AGREE_YN, '') AS CAI_AGREE_YN, "
		strSql = strSql & "     ISNULL(CAI_AGREE2_YN, '') AS CAI_AGREE2_YN "
		strSql = strSql & " FROM " 
		strSql = strSql & " 	dbo.MR_CONSULTING_APPLY_INFO WITH (NOLOCK) "
		strsql = strSql & " WHERE "
		strSql = strSql & " 	CAI_CM_IDX = " & masterIdx & " "
		strSql = strSql & " AND CAI_MEM_ID = '" & gLoginMemId & "' "

		Set rsCai = russelobjDB.sqlQuery(strSQL, 1)

		If Not rsCai.EOF Then
			CaiGender 			= rsCai(0)
			CaiSchoolName 		= rsCai(1)
			CaiBirth 			= rsCai(2)
			CaiGrade 			= Trim(rsCai(3))
			CaiLastYearUniv 	= rsCai(4)
			CaiDivision 		= Trim(rsCai(5))
			CaiCellNo 			= rsCai(6)
			CaiEmail 			= rsCai(7)
			CaiParentCellNo		= rsCai(8)
			CaiParentEmail 		= rsCai(9)
			CaiLikeUniv1 		= rsCai(10)
			CaiLikeUniv2 		= rsCai(11)
			CaiLikeUniv3 		= rsCai(12)
			CaiLikeUniv4 		= rsCai(13)
			CaiLikeUniv5 		= rsCai(14)
			CaiLikeUniv6 		= rsCai(15)
			CaiApplyNum1 		= rsCai(16)
			CaiApplyNum2 		= rsCai(17)
			CaiApplyNum3 		= rsCai(18)
			CaiConsultContent	= rsCai(19)
			CaiAgreeYn 			= Trim(rsCai(20))
			CaiAgree2Yn			= Trim(rsCai(21))

			If CaiCellNo <> "" Then
				If CaiCellNo = "-" Then
					CaiCellNo1 = "-"
					CaiCellNo2 = ""
					CaiCellNo3 = ""
				Else
					CaiCellNo1 = Left(CaiCellNo, 3)
					CaiCellNo2 = Mid(CaiCellNo, 4, 4)
					CaiCellNo3 = Right(CaiCellNo, 4)
				End IF
			End If

			If CaiParentCellNo <> "" Then
				If CaiParentCellNo = "-" Then
					CaiParentCellNo1 = "-"
					CaiParentCellNo2 = ""
					CaiParentCellNo3 = ""
				Else
					CaiParentCellNo1 = Left(CaiParentCellNo, 3)
					CaiParentCellNo2 = Mid(CaiParentCellNo, 4, 4)
					CaiParentCellNo3 = Right(CaiParentCellNo, 4)
				End IF
			End If
			
			emailDomains = Array("naver.com", "hanmail.net", "daum.net", "nate.com", "hotmail.com", "gmail.com", "kakao.com")
			bEmailCustom = True
			bParentEmailCustom = True

			If InStr(CaiEmail, "@") > 0 Then
				arrEmail		= Split(CaiEmail, "@")
				CaiEmail1		= Trim(arrEmail(0))
				CaiEmail2 		= LCase(Trim(arrEmail(1)))

				For i = 0 To UBound(emailDomains)
					If CaiEmail2 = LCase(emailDomains(i)) Then
						bEmailCustom = False
						Exit For
					End If
				Next
			End If

			If InStr(CaiParentEmail, "@") > 0 Then
				arrParentEmail	= Split(CaiParentEmail, "@")
				CaiParentEmail1	= Trim(arrParentEmail(0))
				CaiParentEmail2 = LCase(Trim(arrParentEmail(1)))

				For i = 0 To UBound(emailDomains)
					If CaiParentEmail2 = LCase(emailDomains(i)) Then
						bParentEmailCustom = False
						Exit For
					End If
				Next
			End If
		End If

		rsCai.Close
		set rsCai = Nothing
	End If

%>
	<div class="popup pop-consult">
		<h1>2025 수시 지원 컨설팅 <br class="mo-only">상세 정보 등록</h1>	
		<ul class="notice-txt list-bullet">
			<li>상세 정보 등록은 최초 등록 이후 수정이 불가합니다.</li>
			<li>예약 관련 문의사항이나 상세 정보 등록 수정이 필요하신 경우, 온라인 1:1 상담게시판 및 02-3498-4388(평일 10:00 ~ 18:00 상담 운영)로 문의주시기 바랍니다.</li>
			<li>제출 서류는 rsc@megastudy.net으로 첨부하여 보내주시기 바랍니다.</li>
			<li>컨설팅 취소 및 환불은 예약일로부터 2일(48시간) 전까지만 가능합니다.</li>
			<li>고른기회, 다자녀전형, 예체능전형, 특성화고전형 등 특수전형은 상담을 진행하지 않습니다.</li>
		</ul>
		<form name="frmMain" method="post" action="popup_Reg.asp" onsubmit="return handleSubmit(event)">
			<input type="hidden" name="masterIdx" id="masterIdx" value="<%=masterIdx%>">
			<input type="hidden" name="loginId" id="loginId" value="<%=gLoginMemId%>">
			<div class="info-wrap">
				<p class="tar fz14">(<strong class="txt-red">*</strong>) 표시 필수입력사항</p>
				<!-- 1.기본정보 -->
				<h2>1. 기본정보<strong class="txt-red">*</strong></h2>
				<div class="tbl-pop">
					<div>
						<dl>
							<dt class="tit-dot">성명</dt>
							<dd><input type="text" name="name" id="name" value="<%=gLoginMemName%>" readonly ></dd>
						</dl>
						<dl>
							<dt class="tit-dot">성별</dt>
							<dd>
								<label for="man"><input type="radio" name="caiGender" id="man" value="M" <% IF CaiGender = "M" THEN %> checked <%end if%>>남</label>
								<label for="woman" class="ml10"><input type="radio" name="caiGender" id="woman" value="W" <% IF CaiGender = "W" THEN %> checked <%end if%>>여</label>
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
									<input style="width:calc(100% - 71px)" type="text" name="caiSchoolName" id="caiSchoolName" value="<%=CaiSchoolName%>" readonly  />
									<a href="javascript:;" class="btn-search js-bt-school js-mask">검색</a>	
								</div>
							</dd>
						</dl>
						<dl>
							<dt class="tit-dot">
								생년월일
							</dt>
							<dd>
								<input type="text" name="caiBirth" id="caiBirth" value="<%=CaiBirth%>" maxlength="8" placeholder="예시)20020401">
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
									<%
										If IsArray(arrGrade) And Not IsNull(arrGrade) Then
											For i = 0 To UBound(arrGrade, 2)
												GradeCd 	= Trim(arrGrade(0, i))
												GradeName 	= arrGrade(1, i)
									%>
										<label for="grade<%=GradeCd%>" style="margin-right:5px;">
											<input type="radio" name="caiGrade" id="grade<%=GradeCd%>" value="<%=GradeCd%>" <%If CaiGrade = GradeCd Then%> checked <%End If%>><%=GradeName%>
										</label>
									<%
											Next
										End If
									%>
								</div>
								<div style="display:none;" class="n_student">
									<input type="text" name="caiLastYearUniv" id="caiLastYearUniv" style="width:205px;font-size:13px;" value="<%=CaiLastYearUniv%>" placeholder="전년도 수시 지원 대학을 입력하세요.">
								</div>
							</dd>
						</dl>
						<dl>
							<dt class="tit-dot">
								계열
							</dt>
							<dd>
								<span class="select-box">
									<select name="caiDivision" id="caiDivision">
										<option value="">선택</option>
										<%
											If IsArray(arrDivision) And Not IsNull(arrDivision) Then
												For i = 0 To UBound(arrDivision, 2)
													DivisionCd 		= Trim(arrDivision(0, i))
													DivisionName 	= arrDivision(1, i)
										%>
											<option value ="<%=DivisionCd%>" <%If DivisionCd= CaiDivision Then %> selected <%End If %>><%=DivisionName%> </option>
										<%
												Next
											End If
										%>	
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
											<select name="cellNo1" id="cellNo1">
												<option value="">선택</option>
												<option value="010" <%If CaiCellNo1 = "010" Then %> selected <% End If %>>010</option>
												<option value="011" <%If CaiCellNo1 = "011" Then %> selected <% End If %>>011</option>
												<option value="016" <%If CaiCellNo1 = "016" Then %> selected <% End If %>>016</option>
												<option value="017" <%If CaiCellNo1 = "017" Then %> selected <% End If %>>017</option>
												<option value="018" <%If CaiCellNo1 = "018" Then %> selected <% End If %>>018</option>
												<option value="019" <%If CaiCellNo1 = "019" Then %> selected <% End If %>>019</option>
												<option value="070" <%If CaiCellNo1 = "070" Then %> selected <% End If %>>070</option>
												<option value="080" <%If CaiCellNo1 = "080" Then %> selected <% End If %>>080</option>
												<option value="-" <%If CaiCellNo1 = "-" Then%> selected <%End If%>>없음</option>
											</select> 
										</span> <span>-</span>
										<input type="number" name="cellNo2" id="cellNo2" class="inputNum" title="전화번호 가운데 자리" style="width:30%" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);" value="<%=CaiCellNo2%>"> <span>-</span>
										<input type="number" name="cellNo3" id="cellNo3" class="inputNum" title="전화번호 마지막 자리" style="width:30%" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);" value="<%=CaiCellNo3%>">
										<input type="hidden" name="caiCellNo" id="caiCellNo" value="">
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
									<input type="text" name="email1" id="email1" style="min-width:76px;" value="<%=CaiEmail1%>" title="이메일 첫번째 자리">
									&nbsp;<span>@</span>&nbsp;<input type="text" name="email2" id="email2" style="min-width:76px;" value="<%=CaiEmail2%>" title="이메일 마지막 자리" class="input-disabled" disabled="disabled">
									<span class="select-box ml5">
										<select name="email3" id="email3">
											<option value="선택하세요">선택</option>
											<option value="naver.com" <%If CaiEmail2 = "naver.com" Then%> selected <%End If%>>naver.com</option>
											<option value="hanmail.net" <%If CaiEmail2 = "hanmail.net" Then%> selected <%End If%>>hanmail.net</option>
											<option value="daum.net" <%If CaiEmail2 = "daum.net" Then%> selected <%End If%>>daum.net</option>
											<option value="nate.com" <%If CaiEmail2 = "nate.com" Then%> selected <%End If%>>nate.com</option>
											<option value="hotmail.com" <%If CaiEmail2 = "hotmail.com" Then%> selected <%End If%>>hotmail.com</option>
											<option value="gmail.com" <%If CaiEmail2 = "gmail.com" Then%> selected <%End If%>>gmail.com</option>
											<option value="kakao.com" <%If CaiEmail2 = "kakao.com" Then%> selected <%End If%>>kakao.com</option>
											<option value="" <%If bEmailCustom Then%> selected <%End If%>>직접입력</option>
										</select>
										<input type="hidden" name="caiEmail" id="caiEmail" value="">
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
											<select name="parentCellNo1" id="parentCellNo1">
												<option value="">선택</option>
												<option value="010" <%If CaiParentCellNo1 = "010" Then %> selected <%End If %>>010</option>
												<option value="011" <%If CaiParentCellNo1 = "011" Then %> selected <% End If %>>011</option>
												<option value="016" <%If CaiParentCellNo1 = "016" Then %> selected <% End If %>>016</option>
												<option value="017" <%If CaiParentCellNo1 = "017" Then %> selected <% End If %>>017</option>
												<option value="018" <%If CaiParentCellNo1 = "018" Then %> selected <% End If %>>018</option>
												<option value="019" <%If CaiParentCellNo1 = "019" Then %> selected <% End If %>>019</option>
												<option value="070" <%If CaiParentCellNo1 = "070" Then %> selected <% End If %>>070</option>
												<option value="080" <%If CaiParentCellNo1 = "080" Then %> selected <% End If %>>080</option>
												<option value="-" <%If CaiParentCellNo1 = "-" Then%> selected <%End If%>>없음</option>
											</select>
										</span> 
										<span>-</span>
										<input type="number" name="parentCellNo2" id="parentCellNo2" class="inputNum" title="전화번호 가운데 자리" style="width:30%" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);" value="<%=CaiParentCellNo2%>"> <span>-</span>
										<input type="number" name="parentCellNo3" id="parentCellNo3" class="inputNum" title="전화번호 마지막 자리" style="width:30%" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);" value="<%=CaiParentCellNo3%>">
										<input type="hidden" name="caiParentCellNo" id="caiParentCellNo" value="">
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
									<input type="text" name="parentEmail1" id="parentEmail1" style="min-width:76px;" value="<%=CaiParentEmail1%>" title="이메일 첫번째 자리">
									&nbsp;<span>@</span>&nbsp;<input type="text" name="parentEmail2" id="parentEmail2" style="min-width:76px;" value="<%=CaiParentEmail2%>" title="이메일 마지막 자리" class="input-disabled" disabled="disabled">
									<span class="select-box ml5">
										<select name="parentEmail3" id="parentEmail3">
											<option value="선택하세요">선택</option>
											<option value="naver.com" <%If CaiParentEmail2 = "naver.com" Then%> selected <%End If%>>naver.com</option>
											<option value="hanmail.net" <%If CaiParentEmail2 = "hanmail.net" Then%> selected <%End If%>>hanmail.net</option>
											<option value="daum.net" <%If CaiParentEmail2 = "daum.net" Then%> selected <%End If%>>daum.net</option>
											<option value="nate.com" <%If CaiParentEmail2 = "nate.com" Then%> selected <%End If%>>nate.com</option>
											<option value="hotmail.com" <%If CaiParentEmail2 = "hotmail.com" Then%> selected <%End If%>>hotmail.com</option>
											<option value="gmail.com" <%If CaiParentEmail2 = "gmail.com" Then%> selected <%End If%>>gmail.com</option>
											<option value="kakao.com" <%If CaiParentEmail2 = "kakao.com" Then%> selected <%End If%>>kakao.com</option>
											<option value="" <%If bParentEmailCustom Then%> selected <%End If%>>직접입력</option>
										</select>
										<input type="hidden" name="caiParentEmail" id="caiParentEmail" value="">
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
						<tr>
							<td>1</td>
							<td>
								<div class="input-wrap">
									<input type="text" title="대학/학과명" name="caiLikeUniv1" id="caiLikeUniv1" value="<%=CaiLikeUniv1%>" readonly />
									<a href="javascript:;" class="btn-search js-bt-uni js-mask disabled ">검색</a>
								</div>
							</td>
						</tr>
						<tr>
							<td>2</td>
							<td>
								<div class="input-wrap">
									<input type="text" title="대학/학과명" name="caiLikeUniv2" id="caiLikeUniv2" value="<%=CaiLikeUniv2%>" readonly />
									<a href="javascript:;" class="btn-search js-bt-uni js-mask">검색</a>
								</div>
							</td>
						</tr>
						<tr>
							<td>3</td>
							<td>
								<div class="input-wrap">
									<input type="text" title="대학/학과명" name="caiLikeUniv3" id="caiLikeUniv3" value="<%=CaiLikeUniv3%>" readonly />
									<a href="javascript:;" class="btn-search js-bt-uni js-mask">검색</a>
								</div>
							</td>
						</tr>
						<tr>
							<td>4</td>
							<td>
								<div class="input-wrap">
									<input type="text" title="대학/학과명" name="caiLikeUniv4" id="caiLikeUniv4" value="<%=CaiLikeUniv4%>" readonly />
									<a href="javascript:;" class="btn-search js-bt-uni js-mask">검색</a>
								</div>
							</td>
						</tr>
						<tr>
							<td>5</td>
							<td>
								<div class="input-wrap">
									<input type="text" title="대학/학과명" name="caiLikeUniv5" id="caiLikeUniv5" value="<%=CaiLikeUniv5%>" readonly />
									<a href="javascript:;" class="btn-search js-bt-uni js-mask">검색</a>
								</div>
							</td>
						</tr>
						<tr>
							<td>6</td>
							<td>
								<div class="input-wrap">
									<input type="text" title="대학/학과명" name="caiLikeUniv6" id="caiLikeUniv6" value="<%=CaiLikeUniv6%>" readonly />
									<a href="javascript:;" class="btn-search js-bt-uni js-mask">검색</a>
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
								<input type="text" name="caiApplyNum1" id="caiApplyNum1" class="inputNum" value="<%=CaiApplyNum1%>" style="width: 90px;vertical-align: middle;" onkeydown="onlyNumber(event);"> 장
							</td>
						</tr>
						<tr>
							<th>적정</th>
							<td>
								<input type="text" name="caiApplyNum2" id="caiApplyNum2" class="inputNum" value="<%=CaiApplyNum2%>" style="width: 90px;vertical-align: middle;" onkeydown="onlyNumber(event);"> 장
							</td>
						</tr>
						<tr>
							<th>하향</th>
							<td>
								<input type="text" name="caiApplyNum3" id="caiApplyNum3" class="inputNum" value="<%=CaiApplyNum3%>" style="width: 90px;vertical-align: middle;" onkeydown="onlyNumber(event);"> 장
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="info-wrap">
				<!-- 4.상담 희망 내용 -->
				<h2>4. 상담 희망 내용<strong class="txt-red">*</strong></h2>
				<div><textarea name="caiConsultContent" id="caiConsultContent" style="height:256px" onkeyup="checkLength();" rows="5" placeholder="상담희망 내용을 구체적으로 입력해주세요. (최대 500자)"><%=CaiConsultContent%></textarea></div>
			</div>
			<div class="info-wrap">
				<!-- 개인정보 취급방침에 대한 동의 -->
				<h3>개인정보 취급방침에 대한 동의 <strong class="txt-red">(필수)</strong> <input type="checkbox" name="caiAgreeYn" id="caiAgreeYn" value="Y" <%If CaiAgreeYn = "Y" Then%> checked <%end if%> ></h3>
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
				<h3 class="mt30">마케팅 목적 개인정보 활용에 대한 동의 <strong class="txt-red">(선택)</strong> <input type="checkbox" name="caiAgree2Yn" id="caiAgree2Yn" value="Y" <%If CaiAgree2Yn = "Y" Then%> checked <%end if%> ></h3>
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
			<% If bApply = false Then %><a href="javascript:;" onclick="fnSave();" class="btn-b-wh on">저장</a> <% End if %>
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
					<input type="text" id="searchWord1" name="searchWord1" onkeyup="if(event.keyCode == 13) { fnGetHighSchool(); }" style="width:calc(100% - 95px)" />
					<a href="javascript:;" onclick="fnGetHighSchool();" class="btn-search">학교검색</a>
				</div>
				<div class="result-wrap">
					<p class="stit">검색 결과</p>
					<div id="search-result" class="list">
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
					<div class="major">
						<div class="majorList" id="searchUniv">
							<span class="title">대학교 명</span>
							<div class="searchBox">
								<input type="text" name="searchWord2" id="searchWord2" onkeyup="if(event.keyCode == 13) { fnGetUniversity(); }" placeholder="대학교 명 입력" />
								<a href="javascript:;" onclick="fnGetUniversity();"><img src="<%=Application("img_path_russel")%>/event/2018/fellow/btn_search2.png" alt="검색" /></a>
								<a id="backUni" class="backUni" href="javascript:;" onclick="fnResetUniv();" style="display:none;"><img src="<%=Application("img_path_russel")%>/event/2018/fellow/back_uni.gif" alt="" /></a>
							</div>
						</div>
						<div class="majorList" id="searchMajor" style="display:none;">
							<span class="title">학과</span>
							<div class="searchBox">
								<input type="text" name="searchWord3" id="searchWord3" onkeyup="if(event.keyCode == 13) { fnGetMajor(); }" placeholder="학과 명 입력" />
								<a href="javascript:;" onclick="fnGetMajor();"><img src="<%=Application("img_path_russel")%>/event/2018/fellow/btn_search2.png" alt="검색" /></a>
							</div>
						</div>
					</div>
					<p id="input_uni_nm" style="display:none;">대학교 명을 입력해주세요.</p>
					<p id="input_major_nm" style="display:none;">학과 명을 입력해주세요.</p>
					<p id="info" class="info">* 학교 검색 후, 학과를 입력해주세요.</p>
				</div>
				<div id="searchList" style="width:100%; height:300px;"></div>
			</div>
			<a href="javascript:void(0);" class="bt-close js-layer-close js-close-mask"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close.png" alt="닫기"></a>
		</div>
	</div>
	<div class="mask-bg" style="display:none;"></div>
</div>
<!-- //popup -->

</body>
</html>
<script>
	var _univTarget = null;
	var isSubmitting = true;

	$(document).ready(function() {
		$('.inputNum').on('input', function() {
			var val = $(this).val();
			var newVal = val.replace(/[^0-9]/g, '');

			if (val != newVal) {
				alert('숫자만 입력할 수 있습니다.');
				$(this).val(newVal);
			}
		});

		// 재수생선택시 오픈
		$("input[name='caiGrade']").change(function(){
			if($("input[name='caiGrade']:checked").val() == '17'){
				$('.n_student').show();
			}	
			else{
				$('.n_student').hide();
			}
		});

		// 학생 이메일
		$('#email3').change(function(){
			$("#email3 option:selected").each(function () {
				if($(this).val() == ""){
					$("#email2").attr("disabled",false); //활성화
				}else{
					var email = $("#email3").val();
						
					$("#email2").val(email);
					$("#email2").attr("disabled",true); //활성화
				}
			});
		});
			
		//학부모 이메일
		$('#parentEmail3').change(function(){
			$("#parentEmail3 option:selected").each(function () {
				if($(this).val() == ""){
					$("#parentEmail2").attr("disabled",false); //활성화
				}else{
					var email = $("#parentEmail3").val();

					$("#parentEmail2").val(email);
					$("#parentEmail2").attr("disabled",true); //활성화
				}
			});
		});

		
		<%If CaiGrade = "17" Then%>
			$('.n_student').show();
		<%Else%>
			$('.n_student').hide();
		<%End If%>

		<%If bEmailCustom Then%>
			$('#email3').change();
		<%End If%>

		<%If bParentEmailCustom Then%>
			$('#parentEmail3').change();
		<%End If%>

		// 최초 등록 이후 수정 X 
		<% If bApply = true then  %>
			$("div *").find("input, textarea, select").prop("disabled",true);
			$("a.btn-search").each(function(){
				$(this).addClass("disabled").on("click", function(e) {
					e.preventDefault();
					e.stopImmediatePropagation();
				});
			});
		<%End if%>	
	});

	//고등학교 검색
	$(function(){
        $(".js-bt-school").on("click",function(){
            $(".js-school-find").css("display","block");
			$(".mask-bg").css("display","block");

			$('#searchWord1').val('');
			$("#search-result").html('');
        });

        $(".js-school-find .js-layer-close").on("click",function(){
            $(".js-school-find").css("display","none");
            $(".mask-bg").css("display","none");

			$('#searchWord1').val('');
			$("#search-result").html('');
        });

		$(".js-bt-uni").on("click",function(){
			$(".js-uni-find").css("display","block");
			$(".mask-bg").css("display","block");

			$('#searchList').html('');
			$('#searchWord2').val('');
			$('#searchWord2').attr('readonly', false);
			$('#searchWord3').val('');
			$('#backUni').hide();
			$('#info').show();
			$('#input_uni_nm').hide();
			$('#input_major_nm').hide();
			$('#searchMajor').hide();

			if (_univTarget == null) {
				_univTarget = $('.info-wrap .js-bt-uni').index($(this)) + 1;
			}
		});
        
		$(".js-uni-find .js-layer-close").on("click",function(){
            $(".js-uni-find").css("display","none");
            $(".mask-bg").css("display","none");

			$('#searchList').html('');
			$('#searchWord2').val('');
			$('#searchWord2').attr('readonly', false);
			$('#searchWord3').val('');
			$('#backUni').hide();
			$('#info').show();
			$('#input_uni_nm').hide();
			$('#input_major_nm').hide();
			$('#searchMajor').hide();
			_univTarget = null;
        });
	});

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

	function checkLength(){
		var obj = document.getElementById('caiConsultContent');
		var maxLength = 500;
		var objLength = obj.value.length;

		if (objLength > maxLength) {
			obj.value = obj.value.substring(0, maxLength);
			alert('최대 500자를 넘기셨습니다.');
		}
	}

	function fnGetHighSchool() {
		var searchWord = escape($('#searchWord1').val());
		var url = '/intro/2024/consulting_susi/school_list_ax.asp?mode=high&searchWord='+ searchWord;
		url += '&_='+ new Date().getTime();

		$("#search-result").load(url, function() {
			$("#search-result").on('click', '.schoolList', function() {
				var hSchoolNm = $(this).attr('data-nm');

				$('#caiSchoolName').val(hSchoolNm);
				$(".js-school-find .js-layer-close").trigger('click');
			});
		});
	}

	function fnResetUniv() {
		$('.js-bt-uni:eq('+ _univTarget +')').trigger('click');
	}

	function fnGetUniversity() {
		var univYear = '<%=univYear%>';
		var univSomeFix = '<%=univSomeFix%>';
		var searchWord = escape($('#searchWord2').val());

		$("#searchList").html('');
		if (searchWord == '') {
			$('#input_uni_nm').show();
			return;
		}

		var url = '/intro/2024/consulting_susi/school_list_ax.asp?mode=univ&univYear='+ univYear +'&univSomeFix='+ univSomeFix +'&searchWord='+ searchWord;
		url += '&_='+ new Date().getTime();

		$("#searchList").load(url, function() {
			$('#input_uni_nm').hide();
			$('#backUni').show();

			$("#searchList").on('click', '.univList', function() {
				var univNm = $(this).attr('data-nm');
				$('#searchWord2').val(univNm);
				$('#searchWord2').attr('readonly', true);
				$("#searchList").html('');

				$('#info').hide();
				$('#searchMajor').show();
			});
		});
	}

	function fnGetMajor() {
		var univYear = '<%=univYear%>';
		var univSomeFix = '<%=univSomeFix%>';
		var univName = escape($('#searchWord2').val());
		var searchWord = escape($('#searchWord3').val());

		$("#searchList").html('');
		if (searchWord == '') {
			$('#input_major_nm').show();
			return;
		}

		var url = '/intro/2024/consulting_susi/school_list_ax.asp?mode=maj&univYear='+ univYear +'&univSomeFix='+ univSomeFix +'&univName='+ univName +'&searchWord='+ searchWord;
		url += '&_='+ new Date().getTime();

		$("#searchList").load(url, function() {
			$('#input_major_nm').hide();

			$("#searchList").on('click', '.majList', function() {
				var majorNm = $(this).attr('data-nm');
				var majorPattern = $(this).attr('data-pattern');
				$('#caiLikeUniv' + _univTarget).val($('#searchWord2').val() + ' ' + majorNm + '(' + majorPattern + ')');

				$(".js-uni-find .js-layer-close").trigger('click');
			});
		});
	}
	
	function maxLengthCheck(object){
        if (object.value.length > object.maxLength){
            object.value = object.value.slice(0, object.maxLength);
        }    
    }

	function fnSave() {
		if (validateInput()) {
			if (confirm('저장하시겠습니까?')) {
				$('input:text').attr('disabled', false);
				var caiCellNo = "";
				// 번호 없음 선택 후 숫자 입력시 "-" + 숫자 DB 저장 방지
				if ($('#cellNo1').val() != "-") {
					caiCellNo = $('#cellNo1').val() + $('#cellNo2').val() + $('#cellNo3').val();
				} else {
					caiCellNo = $('#cellNo1').val();
				}
				var caiEmail = $('#email1').val() + '@' + $('#email2').val();
				$('#caiCellNo').val(caiCellNo);
				$('#caiEmail').val(caiEmail);
				var caiParentCellNo = "";
				if ($('#parentCellNo1').val() != "-") {
					caiParentCellNo = $('#parentCellNo1').val() + $('#parentCellNo2').val() + $('#parentCellNo3').val();
				} else {
					caiParentCellNo = $('#parentCellNo1').val();
				}
				var caiParentEmail = $('#parentEmail1').val() + '@' + $('#parentEmail2').val();
				$('#caiParentCellNo').val(caiParentCellNo);
				$('#caiParentEmail').val(caiParentEmail);
				console.log($('#caiCellNo').val());
				document.frmMain.submit();
			}
		}
	}

	function validateInput() {
		if ($.trim($('input[name="caiGender"]:checked').val()).length < 1) {
			alert('성별을 선택해주세요.');  $('input[name=caiGender]').focus(); return false;
		}
		if($.trim($('#caiSchoolName').val()).length < 1){
			alert('학교명을 입력해주세요.'); $('#caiSchoolName').focus(); return false;
		}
		if($.trim($('#caiBirth').val()).length < 1){
			alert('생년월일을 입력해주세요.'); $('#caiBirth').focus(); return false;
		}
		if($('input[name="caiGrade"]:checked').val() == undefined){
			alert('학년을 입력하세요.'); $('input[name=caiGrade]').focus(); return false;
		}
		if($('input[name="caiGrade"]:checked').val() == 17 ){
			if($.trim($('input[name=caiLastYearUniv]').val()).length < 1){
			 	alert('재수생의 경우,전년도 수시 지원 대학은 필수 입력입니다.'); $('input[name=caiLastYearUniv]').focus(); return false;
			}
		}
		if ($.trim($('#caiDivision').val()).length < 1) {
			alert('계열을 선택하세요.');
			$('#caiDivision').focus();
			return false;
        }
		if($.trim($('#cellNo1').val()) != "-"){
		    if($.trim($('#cellNo2').val()).length < 1 || $.trim($('#cellNo3').val()).length < 1){
			   alert('학생 연락처를 입력해주세요.'); $('#cellNo2').focus(); return false;
		    }
		}
		if($.trim($('#cellNo1').val()) == ""){
			alert('학생 연락처 앞자리를 입력해주세요.'); $('#cellNo1').focus(); return false;		
		}
		if($.trim($('#email1').val()).length < 1 || $.trim($('#email2').val()) == "선택하세요" || $.trim($('#email2').val()).length < 1 ){
			alert('학생 이메일을 입력해주세요.'); $('#email1').focus(); return false;
		}
		if($.trim($('#parentCellNo1').val()) != "-"){
		    if($.trim($('#parentCellNo2').val()).length < 1 || $.trim($('#parentCellNo3').val()).length < 1){
			  alert('학부모 연락처를 입력해주세요.'); $('#parentCellNo2').focus(); return false;
		    }
		}
		if($.trim($('#parentCellNo1').val()) == ""){
			alert('학부모 연락처 앞자리를 입력해주세요.'); $('#parentCellNo1').focus(); return false;		
		}
		if($.trim($('#parentEmail1').val()).length < 1 || $.trim($('#parentEmail2').val()) == "선택하세요" || $.trim($('#parentEmail2').val()).length < 1 ){
			alert('학부모 이메일을 입력해주세요.'); $('#parentEmail1').focus(); return false;
		}
		if($.trim($('input[name=caiLikeUniv1]').val()).length < 1){
			 alert('관심대학 및 학과 1순위는 필수 입력입니다.'); $('input[name=caiLikeUniv1]').focus(); return false;
		}
		if($.trim($('input[name=caiApplyNum1]').val()).length < 1 && $.trim($('input[name=caiApplyNum2]').val()).length < 1 && $.trim($('input[name=caiApplyNum3]').val()).length < 1 ){
			 alert('지원성향을 1개 이상 입력해주세요.');  $('input[name=caiApplyNum1]').focus(); return false;
		}
		if($.trim($('#caiConsultContent').val()).length < 1){
			alert('상담 희망내용을 입력해주세요.'); $('#caiConsultContent').focus(); return false;
		}
		if( $("input[name=caiAgreeYn]:checkbox:checked").length < 1){
			alert('개인정보수집 및 활용에 대한 동의에 동의해주셔야 상담 신청이 접수가 가능합니다.'); $('#caiAgreeYn').focus(); return false;
		}
		return true;
	}
	
	function handleSubmit (event) {
		if (isSubmitting) {
			return false;
		}
		isSubmitting = true; 
		
		setTimeout(() => {
			fnSave();
		}, 1000);
		return false;
	}


</script>
