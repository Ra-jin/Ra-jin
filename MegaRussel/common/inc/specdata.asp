<%

'======================================================================================================================
' 비교과(스펙) 데이터
'======================================================================================================================

'------------------------------------------------------------------------------------------------------------
' 메뉴명 
'------------------------------------------------------------------------------------------------------------
Dim g_Serve_Menu(7)
g_Serve_Menu(1) = "출결관리"
g_Serve_Menu(2) = "봉사활동"
g_Serve_Menu(3) = "임원활동"
g_Serve_Menu(4) = "희망진로"
g_Serve_Menu(5) = "창의적 체험활동"
g_Serve_Menu(6) = "수상/자격증"
g_Serve_Menu(7) = "독서활동"

'------------------------------------------------------------------------------------------------------------
' 메뉴별 디폴트 목록 개수 (0부터 시작하므로 목록개수 - 1)
'------------------------------------------------------------------------------------------------------------
Dim g_Serve_List_Default_Cnt(7)
g_Serve_List_Default_Cnt(2) = 0
g_Serve_List_Default_Cnt(3) = 0
g_Serve_List_Default_Cnt(4) = 2
g_Serve_List_Default_Cnt(5) = 0
g_Serve_List_Default_Cnt(6) = 0
g_Serve_List_Default_Cnt(7) = 0

'------------------------------------------------------------------------------------------------------------
' 디스크립트 
'------------------------------------------------------------------------------------------------------------
Dim g_Serve_PopupSize(7)
g_Serve_PopupSize(1) = array(560, 420)
g_Serve_PopupSize(2) = array(750, 580)
g_Serve_PopupSize(3) = array(750, 580)
g_Serve_PopupSize(4) = array(750, 600)
g_Serve_PopupSize(5) = array(750, 580)
g_Serve_PopupSize(6) = array(750, 690)
g_Serve_PopupSize(7) = array(750, 580)

'------------------------------------------------------------------------------------------------------------
' 활동별 길이 
' 5 : 창의적 체험활동, 6 : 수상/자격증
'------------------------------------------------------------------------------------------------------------
Dim g_Serve_Length(6, 5, 10, 5)
g_Serve_Length(5, 1, 0, 0) = 3
g_Serve_Length(5, 2, 0, 0) = 12 
g_Serve_Length(5, 3, 0, 0) = 12 
g_Serve_Length(5, 4, 0, 0) = 12 
g_Serve_Length(5, 5, 0, 0) = 4 

g_Serve_Length(6, 1, 0, 0) = 10
g_Serve_Length(6, 2, 0, 0) = 6 

g_Serve_Length(6, 1, 1, 0) = 13
g_Serve_Length(6, 1, 2, 0) = 11 
g_Serve_Length(6, 1, 3, 0) = 4 
g_Serve_Length(6, 1, 4, 0) = 8 
g_Serve_Length(6, 1, 5, 0) = 9
g_Serve_Length(6, 1, 6, 0) = 2
g_Serve_Length(6, 1, 7, 0) = 5
g_Serve_Length(6, 1, 8, 0) = 5
g_Serve_Length(6, 1, 9, 0) = 5
g_Serve_Length(6, 1, 10, 0) = 1
g_Serve_Length(6, 2, 1, 0) = 1
g_Serve_Length(6, 2, 2, 0) = 4
g_Serve_Length(6, 2, 3, 0) = 6
g_Serve_Length(6, 2, 4, 0) = 1
g_Serve_Length(6, 2, 5, 0) = 5
g_Serve_Length(6, 2, 6, 0) = 1
g_Serve_Length(6, 1, 1, 4) = 6
g_Serve_Length(6, 1, 1, 5) = 6
g_Serve_Length(6, 1, 4, 5) = 6

'------------------------------------------------------------------------------------------------------------
' 봉사활동
'------------------------------------------------------------------------------------------------------------
' 장소/종류 선택 옵션값
Dim g_Serve_Area_Info(14)
g_Serve_Area_Info(1) = "교내(학교주변)"
g_Serve_Area_Info(2) = "공공기관"
g_Serve_Area_Info(3) = "복지시설(양로원/고아원등)"
g_Serve_Area_Info(4) = "의료시설"
g_Serve_Area_Info(5) = "교육봉사(학습지도)"
g_Serve_Area_Info(6) = "이재민돕기"
g_Serve_Area_Info(7) = "또래상담/멘토활동"
g_Serve_Area_Info(8) = "재능봉사(예체능)"
g_Serve_Area_Info(9) = "자연환경보호(생태환경,식목활동,문화재 보호 등)"
g_Serve_Area_Info(10) = "캠페인활동(공공질서,교통안전,학교주변정화 등)"
g_Serve_Area_Info(11) = "지역봉사활동(농어촌 일손 돕기)"
g_Serve_Area_Info(12) = "헌혈"
g_Serve_Area_Info(13) = "해외봉사"
g_Serve_Area_Info(14) = "기타"

'------------------------------------------------------------------------------------------------------------
' 임원활동
'------------------------------------------------------------------------------------------------------------
' 학년선택
Dim g_Serve_Official_Grade(13)
g_Serve_Official_Grade(11) = "1학년"	' 고1
g_Serve_Official_Grade(12) = "2학년"	' 고2
g_Serve_Official_Grade(13) = "3학년"	' 고3

' 활동 내역 선택
Dim g_Serve_Official_Info(9)
g_Serve_Official_Info(1) = "총학생회장"	
g_Serve_Official_Info(2) = "부총학생회장"	
g_Serve_Official_Info(3) = "학년학생회장"	
g_Serve_Official_Info(4) = "학년부학생회장"	
g_Serve_Official_Info(5) = "학급(반)회장"	
g_Serve_Official_Info(6) = "학급(반)부회장"	
g_Serve_Official_Info(7) = "동아리회장"	
g_Serve_Official_Info(8) = "동아리부회장"	
g_Serve_Official_Info(9) = "교외(기타)"	

'------------------------------------------------------------------------------------------------------------
' 창의적 체험활동
'------------------------------------------------------------------------------------------------------------
' 분야선택
Dim g_Serve_Experience_Step1(5)
g_Serve_Experience_Step1(1) = "자율활동"	
g_Serve_Experience_Step1(2) = "동아리활동"	
g_Serve_Experience_Step1(3) = "진로활동"	
g_Serve_Experience_Step1(4) = "방과후활동"	
g_Serve_Experience_Step1(5) = "교외체험활동"	

' 세부 분야선택
Dim g_Serve_Experience_Step2(5, 12)
g_Serve_Experience_Step2(1, 1) = "적응활동(친목,사제동행,상담활동)"
g_Serve_Experience_Step2(1, 2) = "자치활동(선도부,학급회,학생회임원,토론회 등)"
g_Serve_Experience_Step2(1, 3) = "행사활동(학교행사)"

g_Serve_Experience_Step2(2, 1) = "국어계열"
g_Serve_Experience_Step2(2, 2) = "어학계열"
g_Serve_Experience_Step2(2, 3) = "수학계열"
g_Serve_Experience_Step2(2, 4) = "사회계열"
g_Serve_Experience_Step2(2, 5) = "과학계열"
g_Serve_Experience_Step2(2, 6) = "기술가정계열"
g_Serve_Experience_Step2(2, 7) = "컴퓨터계열"
g_Serve_Experience_Step2(2, 8) = "문예/창작"
g_Serve_Experience_Step2(2, 9) = "연극/영화/사진"
g_Serve_Experience_Step2(2, 10) = "미술(회화/조각/서예/전통,현대예술)"
g_Serve_Experience_Step2(2, 11) = "음악(성악/기악/뮤지컬/오페라)"
g_Serve_Experience_Step2(2, 12) = "체육(스포츠관련)"

g_Serve_Experience_Step2(3, 1) = "국어계열"
g_Serve_Experience_Step2(3, 2) = "어학계열"
g_Serve_Experience_Step2(3, 3) = "수학계열"
g_Serve_Experience_Step2(3, 4) = "사회계열"
g_Serve_Experience_Step2(3, 5) = "과학계열"
g_Serve_Experience_Step2(3, 6) = "기술가정계열"
g_Serve_Experience_Step2(3, 7) = "컴퓨터계열"
g_Serve_Experience_Step2(3, 8) = "문예/창작"
g_Serve_Experience_Step2(3, 9) = "연극/영화/사진"
g_Serve_Experience_Step2(3, 10) = "미술(회화/조각/서예/전통,현대예술)"
g_Serve_Experience_Step2(3, 11) = "음악(성악/기악/뮤지컬/오페라)"
g_Serve_Experience_Step2(3, 12) = "체육(스포츠관련)"

g_Serve_Experience_Step2(4, 1) = "국어계열"
g_Serve_Experience_Step2(4, 2) = "어학계열"
g_Serve_Experience_Step2(4, 3) = "수학계열"
g_Serve_Experience_Step2(4, 4) = "사회계열"
g_Serve_Experience_Step2(4, 5) = "과학계열"
g_Serve_Experience_Step2(4, 6) = "기술가정계열"
g_Serve_Experience_Step2(4, 7) = "컴퓨터계열"
g_Serve_Experience_Step2(4, 8) = "문예/창작"
g_Serve_Experience_Step2(4, 9) = "연극/영화/사진"
g_Serve_Experience_Step2(4, 10) = "미술(회화/조각/서예/전통,현대예술)"
g_Serve_Experience_Step2(4, 11) = "음악(성악/기악/뮤지컬/오페라)"
g_Serve_Experience_Step2(4, 12) = "체육(스포츠관련)"

g_Serve_Experience_Step2(5, 1) = "청소년단체활동(스카우트/우주소년단/해양소년단)"
g_Serve_Experience_Step2(5, 2) = "청소년적십자(RCY)"
g_Serve_Experience_Step2(5, 3) = "학교스포츠클럽활동"
g_Serve_Experience_Step2(5, 4) = "리더십 캠프"

' 기간 선택
Dim g_Serve_Experience_Period(7)
g_Serve_Experience_Period(1) = "1일"	
g_Serve_Experience_Period(2) = "일주일 미만"	
g_Serve_Experience_Period(3) = "1개월 미만"	
g_Serve_Experience_Period(4) = "6개월 미만"	
g_Serve_Experience_Period(5) = "1년 미만"	
g_Serve_Experience_Period(6) = "2년 미만"	
g_Serve_Experience_Period(7) = "3년 이상"	

'------------------------------------------------------------------------------------------------------------
' 수상/자격증
'------------------------------------------------------------------------------------------------------------
' 구분 선택
Dim g_Serve_License_Step1(2)
g_Serve_License_Step1(1) = "학업관련"	
g_Serve_License_Step1(2) = "전문분야관련"	

' 분야 선택
Dim g_Serve_License_Step2(2, 10)
g_Serve_License_Step2(1, 1) = "국어"	
g_Serve_License_Step2(1, 2) = "외국어(영어)"	
g_Serve_License_Step2(1, 3) = "수학"
g_Serve_License_Step2(1, 4) = "사회"	
g_Serve_License_Step2(1, 5) = "과학"	
g_Serve_License_Step2(1, 6) = "기술가정"	
g_Serve_License_Step2(1, 7) = "한자"	
g_Serve_License_Step2(1, 8) = "모범상"	
g_Serve_License_Step2(1, 9) = "예체능"	
g_Serve_License_Step2(1, 10) = "기타"	

g_Serve_License_Step2(2, 1) = "발명/창업"
g_Serve_License_Step2(2, 2) = "컴퓨터"	
g_Serve_License_Step2(2, 3) = "전문분야(전문계)"	
g_Serve_License_Step2(2, 4) = "정보소양인증"	
g_Serve_License_Step2(2, 5) = "예체능"	
g_Serve_License_Step2(2, 6) = "기타"	


' 분류 선택
Dim g_Serve_License_Step3(2, 10, 13)
g_Serve_License_Step3(1, 1, 1) = "경시대회(국어)"
g_Serve_License_Step3(1, 1, 2) = "학력(국어계열)우수상"
g_Serve_License_Step3(1, 1, 3) = "글짓기(백일장/독후감)"
g_Serve_License_Step3(1, 1, 4) = "KBS한국어능력시험(klt)"
g_Serve_License_Step3(1, 1, 5) = "국어능력인증(ToKL)"
g_Serve_License_Step3(1, 1, 6) = "한국실용글쓰기능력"
g_Serve_License_Step3(1, 1, 7) = "독서인증"
g_Serve_License_Step3(1, 1, 8) = "논술대회"
g_Serve_License_Step3(1, 1, 9) = "토론대회"
g_Serve_License_Step3(1, 1, 10) = "독서퀴즈대회"
g_Serve_License_Step3(1, 1, 11) = "다독상"
g_Serve_License_Step3(1, 1, 12) = "웅변대회"
g_Serve_License_Step3(1, 1, 13) = "기타"

g_Serve_License_Step3(1, 2, 1) = "경시대회(외국어)"
g_Serve_License_Step3(1, 2, 2) = "학력(외국어계열)우수상"
g_Serve_License_Step3(1, 2, 3) = "외국어말하기(웅변)대회"
g_Serve_License_Step3(1, 2, 4) = "외국어쓰기(에세이/독후감)"
g_Serve_License_Step3(1, 2, 5) = "외국어토론대회"
g_Serve_License_Step3(1, 2, 6) = "외국어논술"
g_Serve_License_Step3(1, 2, 7) = "외국어단어(어휘)경시대회"
g_Serve_License_Step3(1, 2, 8) = "국제외국어대회(IET)"
g_Serve_License_Step3(1, 2, 9) = "외국어퀴즈골든벨"
g_Serve_License_Step3(1, 2, 10) = "외국어공모전"
g_Serve_License_Step3(1, 2, 11) = "기타"

g_Serve_License_Step3(1, 3, 1) = "경시대회(수학)"
g_Serve_License_Step3(1, 3, 2) = "학력(수학계열)우수상"
g_Serve_License_Step3(1, 3, 3) = "AP Statistics"
g_Serve_License_Step3(1, 3, 4) = "기타"

g_Serve_License_Step3(1, 4, 1) = "경시대회(사회)"
g_Serve_License_Step3(1, 4, 2) = "학력(사회계열)우수상"
g_Serve_License_Step3(1, 4, 3) = "한국사능력검정시험"
g_Serve_License_Step3(1, 4, 4) = "글짓기/논술(사회분야)"
g_Serve_License_Step3(1, 4, 5) = "경제이해력검정시험(tesat)"
g_Serve_License_Step3(1, 4, 6) = "토론대회(사회분야)"
g_Serve_License_Step3(1, 4, 7) = "모의재판"
g_Serve_License_Step3(1, 4, 8) = "기타"

g_Serve_License_Step3(1, 5, 1) = "경시대회(과학)"
g_Serve_License_Step3(1, 5, 2) = "학력(과학계열)우수상"
g_Serve_License_Step3(1, 5, 3) = "탐구토론대회"
g_Serve_License_Step3(1, 5, 4) = "과학탐구(올림픽)대회"
g_Serve_License_Step3(1, 5, 5) = "과학글짓기대회(논술,독후감)"
g_Serve_License_Step3(1, 5, 6) = "과학그리기대회(표어/포스터)"
g_Serve_License_Step3(1, 5, 7) = "과학기능대회"
g_Serve_License_Step3(1, 5, 8) = "과학퀴즈대회"
g_Serve_License_Step3(1, 5, 9) = "기타"

g_Serve_License_Step3(1, 6, 1) = "학력평가우수자(기술가정계열)"
g_Serve_License_Step3(1, 6, 2) = "기타"

g_Serve_License_Step3(1, 7, 1) = "학력평가우수자(한자계열)"
g_Serve_License_Step3(1, 7, 2) = "한자경시(경진)대회"
g_Serve_License_Step3(1, 7, 3) = "교내한자능력인증"
g_Serve_License_Step3(1, 7, 4) = "한자관련 자격증"
g_Serve_License_Step3(1, 7, 5) = "기타"

g_Serve_License_Step3(1, 8, 1) = "선/효행상"
g_Serve_License_Step3(1, 8, 2) = "개근/근면상"
g_Serve_License_Step3(1, 8, 3) = "봉사상"
g_Serve_License_Step3(1, 8, 4) = "표창장"
g_Serve_License_Step3(1, 8, 5) = "기타"

g_Serve_License_Step3(1, 9, 1) = "음악"
g_Serve_License_Step3(1, 9, 2) = "미술"
g_Serve_License_Step3(1, 9, 3) = "체육"
g_Serve_License_Step3(1, 9, 4) = "연극/영화/사진"
g_Serve_License_Step3(1, 9, 5) = "기타"

g_Serve_License_Step3(1, 10, 1) = "기타"

g_Serve_License_Step3(2, 1, 1) = "발명/창업"

g_Serve_License_Step3(2, 2, 1) = "정보기술자격(ITQ)"
g_Serve_License_Step3(2, 2, 2) = "컴퓨터대회"
g_Serve_License_Step3(2, 2, 3) = "컴퓨터그래픽"
g_Serve_License_Step3(2, 2, 4) = "국가기술자격"

g_Serve_License_Step3(2, 3, 1) = "국가기술자격"
g_Serve_License_Step3(2, 3, 2) = "전기/전자/정보처리"
g_Serve_License_Step3(2, 3, 3) = "정보통신"
g_Serve_License_Step3(2, 3, 4) = "회계"
g_Serve_License_Step3(2, 3, 5) = "가정/보건"
g_Serve_License_Step3(2, 3, 6) = "음식/조리"

g_Serve_License_Step3(2, 4, 1) = "정보소양인증"

g_Serve_License_Step3(2, 5, 1) = "음악"
g_Serve_License_Step3(2, 5, 2) = "미술"
g_Serve_License_Step3(2, 5, 3) = "체육"
g_Serve_License_Step3(2, 5, 4) = "연극/영화/사진"
g_Serve_License_Step3(2, 5, 5) = "기타"

g_Serve_License_Step3(2, 6, 1) = "기타"

' 점수 선택_STEP4
Dim g_Serve_License_Step4(1, 4, 5, 6)
g_Serve_License_Step4(1, 1, 4, 1) = "1등급(900~990)"
g_Serve_License_Step4(1, 1, 4, 2) = "2등급(800~899)"
g_Serve_License_Step4(1, 1, 4, 3) = "3등급(700~799)"
g_Serve_License_Step4(1, 1, 4, 4) = "4등급(600~699)"
g_Serve_License_Step4(1, 1, 4, 5) = "5등급(500~599)"
g_Serve_License_Step4(1, 1, 4, 6) = "기타(500미만)"

g_Serve_License_Step4(1, 1, 5, 1) = "1등급(200~180)"
g_Serve_License_Step4(1, 1, 5, 2) = "2등급(170~179)"
g_Serve_License_Step4(1, 1, 5, 3) = "3등급(150~169)"
g_Serve_License_Step4(1, 1, 5, 4) = "4등급(140~149)"
g_Serve_License_Step4(1, 1, 5, 5) = "5등급(120~139)"
g_Serve_License_Step4(1, 1, 5, 6) = "기타(120미만)"

g_Serve_License_Step4(1, 4, 5, 1) = "1등급(240~300)"
g_Serve_License_Step4(1, 4, 5, 2) = "2등급(210~239)"
g_Serve_License_Step4(1, 4, 5, 3) = "3등급(180~209)"
g_Serve_License_Step4(1, 4, 5, 4) = "4등급(150~179)"
g_Serve_License_Step4(1, 4, 5, 5) = "5등급(120~149)"
g_Serve_License_Step4(1, 4, 5, 6) = "기타(120미만)"

' 규모 선택
Dim g_Serve_License_Scale(3)
g_Serve_License_Scale(1) = "교내"
g_Serve_License_Scale(2) = "교외"
g_Serve_License_Scale(3) = "기타"


'------------------------------------------------------------------------------------------------------------
' 독서활동
'------------------------------------------------------------------------------------------------------------
' 학년/학기 선택
Dim g_Serve_Reading_Grade(13, 2)
g_Serve_Reading_Grade(11, 1) = "1학년 1학기"	' 고1 1학기
g_Serve_Reading_Grade(11, 2) = "1학년 2학기"	' 고1 2학기
g_Serve_Reading_Grade(12, 1) = "2학년 1학기"	' 고2 1학기
g_Serve_Reading_Grade(12, 2) = "2학년 2학기"	' 고2 2학기
g_Serve_Reading_Grade(13, 1) = "3학년 1학기"	' 고3 1학기
g_Serve_Reading_Grade(13, 2) = "3학년 2학기"	' 고3 2학기

' 세부분야 선택
Dim g_Serve_Reading_Type(10)
g_Serve_Reading_Type(1) = "국어계열"	
g_Serve_Reading_Type(2) = "외국어(영어)계열"
g_Serve_Reading_Type(3) = "수학계열"
g_Serve_Reading_Type(4) = "사회계열"
g_Serve_Reading_Type(5) = "과학계열"
g_Serve_Reading_Type(6) = "기술가정계열"
g_Serve_Reading_Type(7) = "컴퓨터부분"
g_Serve_Reading_Type(8) = "음악"
g_Serve_Reading_Type(9) = "미술"
g_Serve_Reading_Type(10) = "체육"

%>
