
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tit01 = "모집 대상"
txt01 = "N수&middot;고3"
tit02 = "개강일"
txt02 = "9월 순차 개강"
tit03 = "접수 방법"
txt03 = "온라인 접수"
tit04 = "입학 문의"
txt04 = "온라인 상담"

visual_txt = "역대 가장 탁월한 입결*로 <br> 증명된 러셀에서 최상위권과 경쟁하세요!"

am_txt = "AM단과"
am_url = "/intro/danka/2024/10/am.asp"
regular_txt = "파이널<br>정규&middot;특강 단과 "
regular_url = "javascript:alert(`추후 오픈 예정입니다.`);"
non_txt = "대학별 논술<br>단기 집중 특강"
non_url = "javascript:alert(`7월 중 오픈 예정입니다.`);"

quick_tit = "2025 수능 대비 단과"

baja_txt01 = "강의실-바자관-급식을"

danka_txt01 = "몰입감 높은 현장강의와<br> 최신 출제 경향이 반영된 파이널 모의고사"
danka_txt02 = "평일 오전/오후 체계적인 과목 편성된 <br> 관리력이 강력한 선생님의 N수생 전용 단과"
danka_txt03 = "대학별 출제 경향이 반영된 <br> 모의논술 훈련 및 개별 첨삭 진행"

data_view_txt = "2020-2024학년도 러셀에서 배출한 서울대 의예과, 메이저 의대, 전국 의예과, 의치한약수, 서울대/연세대/고려대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)"

program_box02 = "몰입감이 높고 철저한 관리가<br>진행되는 <strong>현장강의</strong>"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"
                    txt02 = "10월 순차 개강"
                    regular_url = "https://russel.megastudy.net/intro/danka/2024/09/go3.asp"
                    non_url = "https://russel.megastudy.net/intro/danka/2024/09/non.asp"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "t_gn"
                    txt02 = "매월 1일 또는 매주 월/목 입학"
                    txt03 = "온라인 접수<a class='bt-apply' href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=175'>원서접수 바로가기</a>"
                    visual_txt = "러셀 내 최상위권 대학 입결 1위*, <br>러셀 강남에서 최상위권과 경쟁하세요!"
                    data_view_txt = "*2018~2023학년도 러셀 전학원 내 의약학계열 및 주요대학 (서울대,연세대,고려대 등 13개 대학교) 누적 합격자 수 기준"
                    non_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1732"
                    am_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1766"
                    regular_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1696"


    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "t_dc"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`);'>원서접수 바로가기</a>"
                    visual_txt = "18-24년 7년 연속 최상위권 점유율 1위*,<br>러셀 대치에서 최상위권과 경쟁하세요!"
                    data_view_txt = "※ 2021학년도 수능 전국 수석 배출 / 2020학년도 수능 만점자 배출 / 2018학년도 수능 만점자 배출<br>※ 의치한약수+서울대·연세대·고려대 배출 2024학년도 426명(설의7명,연의6명,성의5명,카의11명,고의6명 포함) / 2024-2018학년도 1,737명(설의23명,연의15명,성의6명,카의25명,울의5명,고의22명 포함)<br> ※ 서울대 배출 2024학년도 73명(의예과 7명 포함) / 2024-2018학년도 229명(의예과 23명 포함)<br> ※ 러셀 전학원 내 2018~2024학년도 최상위권반(HS반/서의치대반) 재원생 점유율 기준"
                    am_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1680"

    Case "CD0245": txtCampus = "러셀 목동"  '목동
                    campusName = "russel_mokdong"
                    campusName02 = "t_md"
                    am_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1681"


    Case "CD0250": txtCampus = "러셀 부천"  '부천
                    campusName = "russel_bc"
                    campusName02 = "t_bc"
                    txt03 = "현장 접수"
                    txt04 = "온라인 상담<a class='bt-apply' href='https://pf.kakao.com/_sFgGxj'>바로가기</a><p class='fz18 bold mt5'>전화 상담 032.265.1010</p>"
                    visual_txt = "인천&middot;부천 지역 입결 1위*, 의예과 및 의약학계열 합격자 1위*로 증명된, <br>러셀 부천에서 최상위권과 경쟁하세요!"
                    data_view_txt = "*합격자 : 수시/정시 최종발표 인원(2023년 바른공부 자습전용관 재원생 기준) <br>*지역 입결 1위 인천/부천 재수종합학원 홈페이지 입결(2024.02.22 기준)"
                    am_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1769"
                    regular_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1784"
                    non_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1735"


	Case "CD0244": txtCampus = "러셀 분당"  '분당
                    campusName = "russel_bundang"
                    campusName02 = "t_bd"
                    am_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1683"


	Case "CD0246": txtCampus = "러셀 센텀"  '센텀
                    campusName = "russel_ct"
                    campusName02 = "t_ct"
                    txt01 = "N수"
                    txt02 = "9월 1일(일) 개강"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=175'>원서접수 바로가기 </a>"
                    visual_txt = "5년 연속 부산 지역 최상위권 입결 1위*, <br>러셀 센텀에서 최상위권과 경쟁하세요!"
                    data_view_txt = "※ 부산 지역 단과 학원_2020~2024학년도 의치한약수+서연고 최종 합격자 수 비교 기준 <br>(홈페이지 대입 실적 기준/2024.02.22 기준)"
                    baja_txt01 = "강의실-바자관-급식(식당)을 <br>"
                    regular_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1707"
                    am_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1775"
                    non_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1741"



    Case "CD0249": txtCampus = "러셀 영통"  '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"
                    txt02 = "10월 개강"
                    txt03 = "현장 접수"
                    visual_txt = "5년 연속 수원 지역 최상위권 입결 1위*, <br>러셀 영통에서 최상위권과 경쟁하세요!"
                    data_view_txt = "※ 수원 지역 학원_2020~2024학년도 의치한수약+서울대 최종 합격자 수 비교 기준<br>(홈페이지 대입 실적 기준/2024.03.07 기준)"
                    am_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1771"
                    regular_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1703"
                    non_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1737"
                    icoEnd = "<strong>마감</strong>"


    Case "CD0257": txtCampus = "러셀 중계"  '중계
                    campusName = "russel_jg"
                    campusName02 = "t_jg"
                    txt01 = "고3&middot;N수"
                    txt02 = "9월 초 개강"
                    txt03 = "현장 접수"
                    visual_txt = "20-24 5년 최상위권 누적 입결 1위*, <br>러셀 중계에서 재원생들과 경쟁하세요!"
                    data_view_txt = "※ 강북 지역 학원_2020~2024학년도 의치한약수+서연고 누적 합격자 수 비교 기준 <br>(홈페이지 대입 실적 기준/2024.02.29 기준)"
                    regular_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1704"
                    am_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1772"
                    non_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1738"



	Case "CD0248": txtCampus = "러셀 평촌"  '평촌
                    campusName = "russel_pc"
                    campusName02 = "t_pc"
                    txt01 = "고3/N수"
                    txt02 = "매월 초 순차 개강"
                    txt03 = "현장 접수"
                    visual_txt = "4년 연속 서울대 의예과 배출 및 지역 입결 1위*, <br>러셀 평촌에서 최상위권과 경쟁하세요!"
                    data_view_txt = "※ 안양, 과천, 의왕, 군포 지역 기준/2024.03.04 기준 (중복 합격 건수 포함)"
                    baja_txt01 = "강의실-바자관-급식(식당)을 <br>"
                    regular_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1705"
                    am_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1773"
                    non_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1739"



	Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    txt02 = "10월 초 순차 개강"
                    txt03 = "온라인 접수<a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=175'>원서접수 바로가기 </a>"
                    visual_txt = "대구&middot;경북 지역 최상위권 입결 1위*로 증명된 <br>러셀 대구에서 최상위권과 경쟁하세요!"
                    data_view_txt = "※ 대구&middot;경북 지역 학원_2024학년도 의치한약수+서연고 최종 합격자 수 비교 기준<br> (홈페이지 대입 실적 기준/2024.02.29 기준)"
                    baja_txt01 = "강의실-바자관-자체 식당을 <br>"
                    program_box02 = "<strong>러셀 강남&middot;대치</strong>와<br> 동일한 수업"
                    danka_txt01 = "러셀 강남&middot;대치와 동일한 수업 및<br>최신 출제 경향이 반영된 파이널 모의고사"  
                    am_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1774"   
                    regular_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1706"  
                    non_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1740"



	Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"
                    txt02 = "10월 순차 개강"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=175'>원서접수 바로가기 </a>"
                    data_view_txt = "2020-2024학년도 러셀에서 배출한 서울대 의예과, 메이저 의대, 전국 의예과, 의치한약수, 서울대/연세대/고려대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)"
                    baja_txt01 = "강의실-바자관-자체 식당을 <br>"
                    program_box02 = "몰입감 높은 <strong>현장강의</strong>와 <br><strong>대치동 LIVE 강의</strong>"
                    danka_txt01 = "몰입감 높은 현장강의와 대치동 LIVE 강의,<br>최신 출제 경향이 반영된 파이널 모의고사" 
                    am_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1776"
                    regular_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1708"            
                    non_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1742"



	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    txt02 = "10월 순차 개강"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`)'>원서접수 바로가기 </a>"
                    visual_txt = "역대 빛나는 입결*로 증명된 <br>러셀CORE 광주에서 경쟁하는 것이 대입 성공의 경쟁력입니다."
                    data_view_txt = "※ 2024학년도 광주 지역 재학생 수석 배출 : 24학년도 대학수학능력시험 응시한 광주 지역 재학생 표준점수 최고점 기준<br>※ 메이저 의예과 9명 배출 : 메이저 의예 - 서울대/연세대/성균관대/가톨릭대/울산대 기준<br>※ 러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2024.02.27 기준, 복수 대학 합격자 포함 / 단과 수강생 제외)"
                    baja_txt01 = "강의실-바자관-자체 식당을 <br>"  
                    program_box02 = "몰입감 높은 <strong>현장강의</strong>와 <br><strong>대치동 LIVE 강의</strong>"
                    danka_txt01 = "몰입감 높은 현장강의와 대치동 LIVE 강의,<br>최신 출제 경향이 반영된 파이널 모의고사"    
                    am_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1777"   
                    regular_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1709"                           
                    non_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1743"



	Case "CD0341": txtCampus = "러셀CORE 대전"  '코어대전
                    campusName = "core_dj"
                    campusName02 = "t_dj"
                    txt01 = "N수&middot;고3&middot;고2"
                    txt02 = "10월 순차 개강"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=175'>원서접수 바로가기 </a>"
                    visual_txt = "2년 연속 대전 지역 최상위권 입결 1위*, <br>러셀CORE 대전에서 최상위권과 경쟁하세요!"
                    data_view_txt = "※ 대전 지역 단과학원_2023~2024학년도 의치한수약+서연고 최종 합격자 수 비교 기준 <br>(홈페이지 대입 실적 기준/2024-02-26 기준)"
                    baja_txt01 = "강의실-바자관-자체 식당을 <br>"
                    program_box02 = "몰입감이 높고 <br> 철저한 관리가 진행되는 <br> <strong>현장강의와 대치동 LIVE 강의</strong>"
                    danka_txt01 = "몰입감 높은 현장강의와 대치동 LIVE 강의,<br>최신 출제 경향이 반영된 파이널 모의고사"   
                    am_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1778"  
                    regular_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1710"  
                    non_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1744"



	Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "t_wj"
                    am_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1692"            


	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "t_jj"
                    txt02 = "매월 초 순차 개강"
                    txt03 = "온라인 접수<a class='bt-apply' href='https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=175'>원서접수 바로가기 </a>"
                    visual_txt = "개원 첫 해, 전주&middot;전북 지역 최상위권 입결 1위*! <br>러셀CORE 전주에서 경쟁하세요!"
                    data_view_txt = "※ 최종 업데이트 : 2024-02-26 기준 (지속적으로 업데이트할 예정입니다.)<br>※ 2024학년도 수시/정시 최종 합격 기준 / 러셀CORE 전주 바른공부 자습전용관 재원생 합격생 기준(홈페이지 대입 실적 기준)"
                    baja_txt01 = "강의실-바자관-자체 식당을 <br>"
                    program_box02 = "몰입도 높은 <strong>대치동 LIVE 강의</strong>와 <br> <strong>대치동 현강 콘텐츠/수업관리</strong>"
                    danka_txt01 = "몰입감 높은 대치동 LIVE 강의와 <br>  대치동 현강 콘텐츠/수업관리, <br>최신 출제 경향이 반영된 파이널 모의고사"
                    danka_txt02 = "평일 오전/오후 체계적인 과목 편성된 <br>관리력이 강력한 선생님의<br>N수생 전용 단과"
                    danka_txt03 = "대학별 출제 경향이 반영된<br>모의논술 훈련 및<br>개별 첨삭 진행"
                    am_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1780"     
                    regular_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1712"             
                    non_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1746"




	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "t_cw"
                    visual_txt = "창원 지역 최상위권 입결 1위*, <br>러셀CORE 창원에서 최상위권과 경쟁하세요!"
                    data_view_txt = "※ 창원 지역 학원_2024학년도 의치한약수+서연고 최종 합격자 수 비교 기준<br>(홈페이지 대입 실적 기준/2024.02.29 기준)"
                    txt02 = "10월 순차 개강"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=175'>원서접수 바로가기 </a>"
                    baja_txt01 = "강의실-바자관-자체 식당을 <br>"
                    program_box02 = "몰입감이 높고  <br> 철저한 관리가 진행되는 <br> <strong>대치동 LIVE 강의</strong>"
                    danka_txt01 = "몰입감 높은 대치동 LIVE 강의와 <br>  최신 출제 경향이 반영된 파이널 모의고사"
                    am_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1781"   
                    regular_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1713" 
                    non_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1747"


        
	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "t_cj"
                    visual_txt = "개원 첫 해, 의예과 8명/메디컬 17명/SKY 9명 합격*<br>러셀CORE 청주에서 최상위권과 경쟁하세요!"
                    data_view_txt = "※ 2023년 러셀CORE 청주 바른공부 자습전용관 재원 이력이 있는 학생 기준<br>(복수대학 합격자 포함, 단과 수강생 제외, 2024.02.29 기준)"
                    txt02 = "10월 개강"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`)'>원서접수 바로가기 </a>"
                    baja_txt01 = "강의실-바자관-자체 식당을 <br>"
                    program_box02 = "몰입감이 높고 철저한 관리가 <br> 진행되는 <strong>대치동 LIVE 강의와<br> 대치동 현강 콘텐츠</strong>"
                    danka_txt01 = "몰입감 높은 대치동 LIVE 강의와 <br> 대치동 현강 콘텐츠, <br> 최신 출제 경향이 반영된 파이널 모의고사"
                    danka_txt02 = "평일 오전/오후 체계적인 과목 편성된 <br>관리력이 강력한 선생님의<br>N수생 전용 단과"
                    danka_txt03 = "대학별 출제 경향이 반영된<br>모의논술 훈련 및<br>개별 첨삭 진행"
                    am_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1782"  
                    regular_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1714" 
                    non_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1748"



End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="inner">

            <div class="v-tit01">
                <% If sCampusCode = "CD0257" Then '중계 %>     
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final/v_tit01.png" alt="목표 성적과 대학 합격을 위한 마지막 기회" /></p>
                <% Else %>
                <p><img src="<%=Application("img_path_russel")%>/intro/2024/final/v_tit01.png" alt="대학 합격을 위한 마지막 기회" /></p>
                <% End If %> 
            </div>
            <div class="v-tit02">
                <p><img src="<%=Application("img_path_russel")%>/intro/2024/final/v_tit02.png" alt="2025" /></p>
            </div>          
            <div class="v-tit03">
                <span><img src="<%=Application("img_path_russel")%>/intro/2024/final/v_tit03_01.png" alt="파" /></span>
                <span><img src="<%=Application("img_path_russel")%>/intro/2024/final/v_tit03_02.png" alt="이" /></span>
                <span><img src="<%=Application("img_path_russel")%>/intro/2024/final/v_tit03_03.png" alt="널" /></span>               
            </div>  
            <div class="v-tit04">
                <span><img src="<%=Application("img_path_russel")%>/intro/2024/final/v_tit04.png" alt="정규반" /></span>
            </div>   
            <div class="v-tit05">
                <p><%=visual_txt%></p>
            </div>   
            <div class="graphWrap">
                <div class="graph graph01" >
                  <img class="p-01" src="<%=Application("img_path_russel")%>/intro/2024/final/v_graph01.png" alt="그래프" />
                </div>
                <div class="graph graph02" >
                  <img class="p-02" src="<%=Application("img_path_russel")%>/intro/2024/final/v_graph02.png" alt="그래프" />
                </div>
                <div class="graph graph03" >
                  <img class="p-03" src="<%=Application("img_path_russel")%>/intro/2024/final/v_graph03.png" alt="그래프" />
                </div>
                <div class="graph graph04" >
                  <img class="p-04" src="<%=Application("img_path_russel")%>/intro/2024/final/v_graph04.png" alt="그래프" />
                </div>
                <div class="obj01">
                    <img class="" src="<%=Application("img_path_russel")%>/intro/2024/final/obj01.png" alt="" />
                </div>
            </div>
            <div class="info-stxt">
                <span><i><img src="<%=Application("img_path_russel")%>/intro/2024/final/ico_info.png" alt="i"></i> 데이터 산출 기준 </span>
                <div class="data-view"><%=data_view_txt%></div>
            </div>
            <div class="v-info">
                <dl>
                    <dt><%=tit01%></dt>
                    <dd><%=txt01%></dd>
                </dl>
                <% If sCampusCode <> "CD0246" Then '센텀 제외 %>         
                <dl>
                    <dt><%=tit02%></dt>
                    <dd><%=txt02%></dd>
                </dl>
                <% End If %>  
                <% If sCampusCode <> "INTRO" Then '인트로 제외 %>             
                <dl>
                    <dt><%=tit03%></dt>
                    <dd><%=txt03%></dd>
                </dl>
                <p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p> 
                <% End If %>  
                <% If  sCampusCode = "CD0250"  Then '부천 %>      
                <dl>
                    <dt><%=tit04%></dt>
                    <dd><%=txt04%></dd>
                </dl>
                <% End If %> 
                <!-- <div>
                    <dl>
                        <dt><%=tit01%></dt>
                        <dd><%=txt01%></dd>
                    </dl>  
                    <% If sCampusCode = "CD0247" or sCampusCode = "CD0250" or sCampusCode = "CD0249" Then '강남/부천/영통 %>                  
                    <dl class="mt20">
                        <dt><%=tit03%></dt>
                        <dd><%=txt03%></dd>
                    </dl>    
                    <% End If %>                
                </div>
                <div>
                    <dl>
                        <dt><%=tit02%></dt>
                        <dd><%=txt02%></dd>
                    </dl>    
                    <% If sCampusCode = "CD0250" Then '부천 %>                  
                    <dl class="mt20">
                        <dt><%=tit04%></dt>
                        <dd><%=txt04%></dd>                      
                    </dl>   
                    <% End If %>                   
                </div> -->
            </div>     
        </div>  
        <div class="bg"><img src="<%=Application("img_path_russel")%>/intro/2024/final/visual_bg.jpg" alt="" /></div>      
        
        <% If  sCampusCode = "CD0249"  Then '영통 %>
        <!--마감딱지-->
        <div class="ico-end" style="top:600px;right:calc(50% - 200px);z-index: 5;"><div><%=icoEnd%></div></div>
        <!--//마감딱지-->
        <% End If %>
	</div>

	<!-- quick 플로팅배너 -->
	<div class="quick">
        <p class="b-tit"><%=quick_tit%></p>
        <a class="q-ban" href="<%=regular_url%>">
            <span>실전 수능 대비</span>
            <strong><%=regular_txt%></strong>
        </a>
        <a class="q-ban" href="<%=am_url%>">
            <span>
                N수생을 위한 <br>
                평일 오전&middot;오후 단과              
            </span>
            <strong><%=am_txt%></strong>
        </a>
        <a class="q-ban" href="<%=non_url%>">
            <span>
                수시 합격 대비           
            </span>
            <strong><%=non_txt%></strong>
        </a>
        <% If sCampusCode = "CD0250" Then '부천 %>
        <!-- <a href="javascript:fncAlarmPop02();" class="mt15"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/sns_banner.jpg" alt="학원 문자 수신 알리미 신청" /></a>
        <a href="https://pf.kakao.com/_sFgGxj" target="_blank" class="mt15"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/chat_banner.jpg" alt="채팅상담" /></a> -->
        <% End If %>
	</div>
	<!--// quick 플로팅배너 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap <%=campusName%>">
    <div class="fix-menu">
        <div class="menu">
            <a class="on" href="javascript:void(0);">모집요강 및 지원혜택 </a>
            <a href="javascript:void(0);">파이널 정규반 프로그램</a>
        </div>
    </div>
</nav>
<!-- //fix-menu -->

