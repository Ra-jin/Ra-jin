<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!-- 공통 인클루드 페이지 종료 -->

<% 'head.asp 는 rmsMemeCd 변수값 사용하기 위해 include 했음 %>
<!-- #include virtual = "/include/head.asp" -->

<%
arrSubjectCode = split(replace(VARS("V_SUB_CD"), " ", ""), ",")

if Ubound(arrSubjectCode) <> 1 then
	js_back("사회/과학탐구 2과목을 선택해주세요.")
end if

strSQL = ""
strSQL = strSQL & " SELECT ISNULL(MD_SEL3, '') "
strSQL = strSQL & " FROM AMS_MEM_DTL NOLOCK "
strSQL = strSQL & " WHERE MD_MEM_CD = " & nRmsMemCd
dbSubjectString = amsobjdb.sqlResult(strSQL)
arrDbSubject = split(dbSubjectString, "|")

dbSubjectString = ""
for i = 0 to 4
	if i = 2 or i = 3 then ' 사탐/과탐 선택과목 인덱스
		dbSubjectString = dbSubjectString & arrSubjectCode(i - 2)
	else
		if i <= Ubound(arrDbSubject) then
			dbSubjectString = dbSubjectString & arrDbSubject(i)
		end if
	end if

	if i < 4 then
		dbSubjectString = dbSubjectString & "|"
	end if

next

strSQL = ""
strSQL = strSQL & " UPDATE AMS_MEM_DTL "
strSQL = strSQL & " SET MD_SEL3 = '" & dbSubjectString & "' "
strSQL = strSQL & " 	, MD_SEL3_DT = GETDATE() "
strSQL = strSQL & " 	, MD_SEL3_MEM_TYPE = 1 "
strSQL = strSQL & " 	, MD_SEL3_NM = '" & gLoginMemName & "' "
strSQL = strSQL & " WHERE MD_MEM_CD = " & nRmsMemCd
amsobjdb.sqlExecute(strSQL)

call js_redirect("./shop.asp?tab=2", "저장되었습니다.")
%>