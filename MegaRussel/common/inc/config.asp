<%

'======================================================================================================================
' 웹사이트 설정 및 글로벌 변수 선언
'======================================================================================================================

'------------------------------------------------------------------------------------------------------------
' 서버 IP 리스트(배열형)
'------------------------------------------------------------------------------------------------------------
Dim g_IP_RealServer, g_IP_BetaServer
g_IP_RealServer		= Split("114.31.55.152 | 114.31.55.153 | 114.31.55.161 | 114.31.55.162", " | ")
g_IP_BetaServer		= Split("10.1.3.10", " | ")



'------------------------------------------------------------------------------------------------------------
' 현재 서버 IP, 사용자 IP
'------------------------------------------------------------------------------------------------------------
Dim g_Server_IP, g_User_IP
g_Server_IP	= Request.ServerVariables("LOCAL_ADDR")
g_User_IP	= Request.ServerVariables("REMOTE_ADDR")


'------------------------------------------------------------------------------------------------------------
' 이미지경로 
'------------------------------------------------------------------------------------------------------------
Dim g_ImagePath, g_ImagePathMobile 
g_ImagePath			= Application("img_path")
g_ImagePathMobile	= Application("img_path_mob")


'------------------------------------------------------------------------------------------------------------
' 현재 페이지 URL 정보
'------------------------------------------------------------------------------------------------------------
' 도메인, 이전URL, 현재URL, 현재URL의 파일명
Dim g_Page_Domain, g_Page_Referer, g_Page_URL, g_Page_Path, g_Page_Filename
g_Page_Domain	= Request.ServerVariables("HTTP_HOST")
g_Page_Referer	= Request.ServerVariables("HTTP_REFERER")
g_Page_URL		= Request.ServerVariables("PATH_INFO")


'------------------------------------------------------------------------------------------------------------
' 서비스 상태
'------------------------------------------------------------------------------------------------------------
Const SERVICE_STATE_REAL	= "real"
Const SERVICE_STATE_BETA	= "beta"
Const SERVICE_STATE_LOCAL	= "local"

'------------------------------------------------------------------------------------------------------------
' 서비스 구분
'------------------------------------------------------------------------------------------------------------
Dim g_Service_Real, g_Service_Type

If CheckArrayValue(g_IP_RealServer, g_Server_IP) Then
	g_Service_Real = True
	g_Service_Type = SERVICE_STATE_REAL
ElseIf CheckArrayValue(g_IP_BetaServer, g_Server_IP) Then
	g_Service_Real = False
	g_Service_Type = SERVICE_STATE_BETA
Else
	g_Service_Real = False
	g_Service_Type = SERVICE_STATE_LOCAL
End If

'------------------------------------------------------------------------------------------------------------
' 블라인드 계정
'------------------------------------------------------------------------------------------------------------
' 블라인드 처리 계정 
Dim g_Blind_Uid
g_Blind_Uid = Array("dittosj1983","kimmin0109","lovelyblue02","0718ee","bath1004","saerom9100","tryst","hakanai4330","mihyun123","they1","dhshin8606")


'------------------------------------------------------------------------------------------------------------
' 게시판
'------------------------------------------------------------------------------------------------------------
' 댓글 등록 제한 BYTE
Const BOARD_COMMENT_WRITE_LIMIT_BYTE = 500

' 글&댓글 재등록 시간 제한(초단위)
Const BOARD_CONTENTS_WRITE_LIMIT_TIME = 60
Const BOARD_COMMENT_WRITE_LIMIT_TIME = 3

'------------------------------------------------------------------------------------------------------------
' DB 연결 정보
'------------------------------------------------------------------------------------------------------------
' Megastudy Web DB
Dim g_DB_ConnectData
Set g_DB_ConnectData = Server.CreateObject("Scripting.Dictionary")

If g_Service_Type = SERVICE_STATE_REAL Then
	g_DB_ConnectData.Add "MEGASTUDY",	Array("114.31.55.150",		"megastudy",	"megastudy",	"@cadb!!")
	g_DB_ConnectData.Add "MEGAAMS",		Array("114.31.55.150",		"MegaAMS",		"megaams",		"amsdb!!")
	g_DB_ConnectData.Add "DACOMSMS",	Array("114.31.55.150",		"DacomSMS",		"DacomSMS",		"ams_sms#")
ElseIf g_Service_Type = SERVICE_STATE_BETA Then
	g_DB_ConnectData.Add "MEGASTUDY",	Array("10.1.3.10",			"megastudy",	"megastudy",	"@cadb!!")
	g_DB_ConnectData.Add "MEGAAMS",		Array("10.1.3.10",			"MegaAMS",		"megaams",		"amsdb!!")
	g_DB_ConnectData.Add "DACOMSMS",	Array("10.1.3.10",			"DacomSMS",		"DacomSMS",		"ams_sms#")
End If

' 자주 쓰는 변수명 선언
Dim dbMegaAms, dbDacomSms, dbMegastudy
Dim inti, intj, intk, intl, intm
Dim MENU_MAIN, MENU_SUB
%>