<%
txtCampus = "러셀"
campusName = "intro"

tit_01 = "모집 대상"
txt_01 = "N수&middot;고3"

tit_02 = "개강일"
txt_02 = "9월 순차 개강"

tit_03 = "접수 방법"
txt_03 = ""

tab_txt01 = "모집요강 및<br>지원혜택"
tab_txt02 = "최상위권 집결"

v_txt = "역대 가장 탁월한 입결<sup>*</sup>로 증명된 <br> 러셀에서 최상위권과 경쟁하세요!"
data_view_txt = "2020-2024학년도 러셀에서 배출한 서울대 의예과, 메이저 의대, 전국 의예과, 의치한약수, 서울대/연세대/고려대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)"

danka_txt = "몰입감이 높고 철저한 관리가<br>진행되는 <strong>현장강의</strong>"
danka_txt02 = "몰입감 높은 현장강의와 <br>최신 출제 경향이 반영된 파이널 모의고사"

danka_final_url = "javascript:alert(`추후 오픈 예정입니다.`)"
danka_am_url = "https://mrussel.megastudy.net/intro/danka/2024/10/am.asp"
danka_non_url = "javascript:alert(`7월 중 오픈 예정입니다.`)"

plusTab = ""
longText = ""
calendar_wide = ""


apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"
                    txt_02 = "10월 순차 개강"
                    danka_final_url = "https://mrussel.megastudy.net/intro/danka/2024/09/go3.asp"
                    danka_non_url = "https://mrussel.megastudy.net/intro/danka/2024/09/non.asp"


    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "cont_gn"
                    v_txt = "러셀 내  최상위권 대학 입결 1위<sup>*</sup>, <br> 러셀 강남에서 최상위권과 경쟁하세요!"
                    data_view_txt = " *2018~2023학년도 러셀 전학원 내 의약학계열 및 주요대학 (서울대,연세대,고려대 등 13개 대학교) 누적 합격자 수 기준"
                    txt_02 = "매월 1일 또는 매주 월/목 입학"
                    txt_03 = "온라인 접수 <br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    longText = "long-txt"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=175'"
                    danka_non_url = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1732"
                    danka_am_url = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1766"
                    danka_final_url = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1696"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "cont_dc"
                    v_txt = "18-24년 7년 연속 최상위권 점유율 1위<sup>*</sup>, <br> 러셀 대치에서 최상위권과 경쟁하세요!"
                    data_view_txt = "※ 2021학년도 수능 전국 수석 배출 / 2020학년도 수능 만점자 배출 / 2018학년도 수능 만점자 배출 <br>※ 의치한약수+서울대·연세대·고려대 배출 2024학년도 426명(설의7명,연의6명,성의5명,카의11명,고의6명 포함) / 2024-2018학년도 1,737명(설의23명,연의15명,성의6명,카의25명,울의5명,고의22명 포함) <br>※ 서울대 배출 2024학년도 73명(의예과 7명 포함) / 2024-2018학년도 229명(의예과 23명 포함) <br>※ 러셀 전학원 내 2018~2024학년도 최상위권반(HS반/서의치대반) 재원생 점유율 기준"
                    txt_03 = "현장 또는 온라인 접수 <br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    longText = "long-txt"
                    tel = "02-2138-1010"
                    danka_am_url = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1680"

    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
                    campusName02 = "cont_bc"
                    v_txt = "인천&middot;부천 지역 입결 1위<sup>*</sup>, <br> 의예과 및 의약학계열 합격자 1위<sup>*</sup>로 증명된 <br> 러셀 부천에서 최상위권과 경쟁하세요!"
                    data_view_txt = "*합격자 : 수시/정시 최종발표 인원(2023년 바른공부 자습전용관 재원생 기준) <br> *지역 입결 1위 인천/부천 재수종합학원 홈페이지 입결(2024.02.22 기준)"
                    txt_03 = "현장 접수 <br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    longText = "long-txt"
                    tel = "032-265-1010"
                    danka_am_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1769"
                    danka_final_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1784"
                    danka_non_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1735"


	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
                    campusName02 = "cont_ct"
                    v_txt = "5년 연속 부산 지역 최상위권 입결 1위<sup>*</sup>, <br> 러셀 센텀에서 최상위권과 경쟁하세요!"
                    data_view_txt = "※ 부산 지역 단과 학원_2020~2024학년도 의치한약수+서연고 최종 합격자 수 비교 기준 (홈페이지 대입 실적 기준/2024.02.22 기준)"
                    txt_01 = "N수"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 또는 <br> 온라인 접수"
                    txt_03 = "현장 또는 온라인 접수 <br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    longText = "long-txt"
                    tel = "051-715-1010"
                    danka_am_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1775"
                    danka_final_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1707"
                    danka_non_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1741"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=175'"



    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    v_txt = "5년 연속 수원 지역 최상위권 입결 1위<sup>*</sup>, <br> 러셀 영통에서 최상위권과 경쟁하세요!"
                    data_view_txt = "※ 수원 지역 학원_2020~2024학년도 의치한수약+서울대 최종 합격자 수 비교 기준 <br> (홈페이지 대입 실적 기준/2024.03.07 기준)"
                    txt_02 = "10월 개강"
                    txt_03 = "현장 접수 <br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    longText = "long-txt"
                    tel = "031-251-1010"
                    danka_am_url = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1771"
                    danka_final_url = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1703"
                    danka_non_url = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1737"
                    endText = "<strong>마감</strong>"


    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
                    campusName02 = "cont_jg"
                    v_txt = "20-24 5년 최상위권 누적 입결 1위<sup>*</sup>, <br> 러셀 중계에서 재원생들과 경쟁하세요!"
                    data_view_txt = "※ 강북 지역 학원_2020~2024학년도 의치한약수+서연고 누적 합격자 수 비교 기준 (홈페이지 대입 실적 기준/2024.02.29 기준)"
                    txt_01 = "고3&middot;N수"
                    txt_02 = "9월 초 개강"
                    txt_03 = "현장 접수 <br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    longText = "long-txt"
                    tel = "02-6316-1010"
                    danka_am_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1772"
                    danka_final_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1704"
                    danka_non_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1738"


	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"
                    campusName02 = "cont_pc"
                    v_txt = "4년 연속 서울대 의예과 배출 및 지역 입결 1위<sup>*</sup>, <br> 러셀 평촌에서 최상위권과 경쟁하세요!"
                    data_view_txt = "※ 안양, 과천, 의왕, 군포 지역 기준/2024.03.04 기준 (중복 합격 건수 포함)"
                    txt_01 = "고3/N수"
                    txt_02 = "매월 초 순차 개강"
                    txt_03 = "현장 접수 <br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    longText = "long-txt"
                    tel = "031-341-6500"
                    danka_am_url = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1773"
                    danka_final_url = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1705"
                    danka_non_url = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1739"


    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    v_txt = "대구&middot;경북 지역 최상위권 입결 1위<sup>*</sup>로 증명된 <br> 러셀 대구에서 최상위권과 경쟁하세요!"
                    data_view_txt = "※ 대구·경북 지역 학원_2024학년도 의치한약수+서연고 최종 합격자 수 비교 기준 <br> (홈페이지 대입 실적 기준/2024.02.29 기준)"
                    txt_02 = "10월 초 순차 개강"
                    txt_03 = "온라인 접수 <br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    plusTab = "plus-tab"
                    longText = "long-txt"
                    danka_txt = "<strong>러셀 강남&middot;대치</strong>와<br>동일한 수업"
                    danka_txt02 = "러셀 강남&middot;대치와 동일한 수업 및 <br>최신 출제 경향이 반영된 파이널 모의고사"
                    tel = "053-291-1010"
                    danka_am_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1774"
                    danka_final_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1706"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=175'"
                    danka_non_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1740"



    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    v_txt = "역대 가장 탁월한 입결<sup>*</sup>로 증명된 <br> 러셀에서 최상위권과 경쟁하세요!"
                    data_view_txt = "2020-2024학년도 러셀에서 배출한 서울대 의예과, 메이저 의대, 전국 의예과, 의치한약수, 서울대/연세대/고려대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)"
                    txt_02 = "10월 순차 개강"
                    txt_03 = "현장 또는 온라인 접수 <br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    plusTab = "plus-tab"
                    danka_txt = "몰입감 높은 <strong>현장강의</strong>와<br><strong>대치동 LIVE 강의</strong>"
                    danka_txt02 = "몰입감 높은 현장강의와 대치동 LIVE 강의, <br>최신 출제 경향이 반영된 파이널 모의고사"
                    tel = "052-913-1010"
                    danka_am_url = "https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=1776"
                    danka_final_url = "https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=1708"
                    danka_non_url = "https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=1742"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=175')"


	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    v_txt = "역대 빛나는 입결<sup>*</sup>로 증명된 <br>러셀CORE 광주에서 경쟁하는 것이 <br>대입 성공의 경쟁력입니다."
                    data_view_txt = "※ 2024학년도 광주 지역 재학생 수석 배출 : 24학년도 대학수학능력시험 응시한 광주 지역 재학생 표준점수 최고점 기준<br>※ 메이저 의예과 9명 배출 : 메이저 의예 - 서울대/연세대/성균관대/가톨릭대/울산대 기준<br>※ 러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2024.02.27 기준, 복수 대학 합격자 포함 / 단과 수강생 제외)"
                    longText = "long-txt"
                    txt_02 = "10월 순차 개강"
                    txt_03 = "현장 또는 온라인 접수 <br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    plusTab = "plus-tab"
                    danka_txt = "몰입감 높은 <strong>현장강의</strong>와<br><strong>대치동 LIVE 강의</strong>"
                    danka_txt02 = "몰입감 높은 현장강의와 대치동 LIVE 강의, <br>최신 출제 경향이 반영된 파이널 모의고사"
                    tel = "062-462-1010"
                    danka_am_url = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1777"
                    danka_final_url = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1709"
                    danka_non_url = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1743"


	Case "CD0341": txtCampus = "러셀CORE 대전"   '코어대전
                    campusName = "core_dj"
                    campusName02 = "cont_dj"
                    v_txt = "2년 연속 대전 지역 최상위권 입결 1위<sup>*</sup>, <br> 러셀CORE 대전에서 최상위권과 경쟁하세요!"
                    data_view_txt = "※ 대전 지역 단과학원_2023~2024학년도 의치한수약+서연고 최종 합격자 수 비교 기준 <br> (홈페이지 대입 실적 기준/2024-02-26 기준)"
                    txt_01 = "N수&middot;고3&middot;고2"
                    txt_02 = "10월 순차 개강"
                    txt_03 = "현장 또는 온라인 접수 <br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    paddingHeight = "narrow"
                    plusTab = "plus-tab"
                    longText = "long-txt"
                    danka_txt = "몰입감이 높고 <br>철저한 관리가 진행되는 <br><strong>현장강의와 대치동 LIVE 강의</strong>"
                    danka_txt02 = "몰입감 높은 현장강의와 대치동 LIVE 강의, <br>최신 출제 경향이 반영된 파이널 모의고사"
                    tel = "042-381-2020"
                    danka_am_url = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1778"
                    danka_final_url = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1710"
                    danka_non_url = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1744"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=175'"



    Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "cont_jj"
                    v_txt = "개원 첫 해, 전주·전북 지역 최상위권 입결 1위<sup>*</sup>! <br>러셀CORE 전주에서 경쟁하세요!"
                    data_view_txt = "※ 최종 업데이트 : 2024-02-26 기준 (지속적으로 업데이트할 예정입니다.) <br> ※ 2024학년도 수시/정시 최종 합격 기준 / 러셀CORE 전주 바른공부 자습전용관 재원생 합격생 기준(홈페이지 대입 실적 기준)"
                    longText = "long-txt"
                    txt_02 = "매월 초 순차 개강"
                    txt_03 = "온라인 접수 <br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    paddingHeight = "narrow"
                    plusTab = "plus-tab"
                    danka_txt = "몰입도 높은 <br> <strong>대치동 LIVE 강의</strong>와<br><strong>대치동 현강 콘텐츠/수업관리</strong>"
                    danka_txt02 = "몰입감 높은 대치동 LIVE 강의와 <br>대치동 현강 콘텐츠/수업관리, <br>최신 출제 경향이 반영된 파이널 모의고사"
                    tel = "063-905-3030"
                    danka_am_url = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1780"
                    danka_final_url = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1712"
                    danka_non_url = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1746"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=175'"



    Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "cont_cw"
                    v_txt = "창원 지역 최상위권 입결 1위<sup>*</sup>, <br>러셀CORE 창원에서 최상위권과 경쟁하세요!"
                    data_view_txt = "※ 창원 지역 학원_2024학년도 의치한약수+서연고 최종 합격자 수 비교 기준 (홈페이지 대입 실적 기준/2024.02.29 기준)"
                    txt_02 = "10월 순차 개강"
                    txt_03 = "현장 또는 온라인 접수 <br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    longText = "long-txt"
                    plusTab = "plus-tab"
                    paddingHeight = "narrow"
                    danka_txt = "몰입감이 높고 <br>철저한 관리가 진행되는 <br><strong>대치동 LIVE 강의</strong>"
                    danka_txt02 = "몰입감 높은 대치동 LIVE 강의와 <br>최신 출제 경향이 반영된 파이널 모의고사 "
                    tel = "055-605-1010"
                    danka_am_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1781"
                    danka_final_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1713"
                    danka_non_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1747"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=175'"



    Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "cont_cj"
                    v_txt = "개원 첫 해, <br>의예과 8명/메디컬 17명/SKY 9명 합격<sup>*</sup> <br>러셀CORE 청주에서 최상위권과 경쟁하세요!"
                    data_view_txt = "※ 2023년 러셀CORE 청주 바른공부 자습전용관 재원 이력이 있는 학생 기준(복수대학 합격자 포함, 단과 수강생 제외, 2024.02.29 기준)"
                    txt_02 = "10월 개강"
                    txt_03 = "현장 또는 온라인 접수 <br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    longText = "long-txt"
                    paddingHeight = "narrow"
                    plusTab = "plus-tab"
                    danka_txt = "몰입감이 높고 철저한 관리가 <br>진행되는 <strong>대치동 LIVE 강의와 <br> 대치동 현강 콘텐츠</strong>"
                    danka_txt02 = "몰입감 높은 대치동 LIVE 강의와 <br>대치동 현강 콘텐츠, <br>최신 출제 경향이 반영된 파이널 모의고사 "
                    tel = "043-908-1010"
                    danka_am_url = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1782"
                    danka_final_url = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1714"
                    danka_non_url = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1748"

End Select
%>

<div class="visual-wrap <%=campusName%>">

    <!-- 학원 문자 수신 알리미 -->
    <!-- <a href="javascript:void(0)" class="top-banner" onclick="fncAlarmPop()"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
    <!-- //학원 문자 수신 알리미 -->

    <div class="visual-area">
        <div class="bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final/visual_bg.jpg" alt="" /></div>
        <% If campus_code = "CD0257" Then '중계 %>
        <div class="v-tit01"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/final/v_tit01.png" alt="메디컬&최상위권 대학 합격을 위한 마지막 기회" /></div>
        <% Else %>
        <div class="v-tit01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final/v_tit01.png" alt="메디컬&최상위권 대학 합격을 위한 마지막 기회" /></div>
        <% End If %>
        <div class="v-tit02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final/v_tit02.png" alt="2025" /></div>
        <div class="v-tit03">
            <div class="n01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final/v_tit03_n01.png" alt="파" /></div>
            <div class="n02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final/v_tit03_n02.png" alt="이" /></div>
            <div class="n03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final/v_tit03_n03.png" alt="널" /></div>
        </div>
        <div class="v-tit04"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final/v_tit04.png" alt="정규반" /></div>
        <p class="v-txt">
            <%=v_txt%>
        </p>

        <!-- 데이터 산출 기준-->
        <div class="l-pop">
            <a href="javascript:void(0)" class="gr-data">데이터 산출 기준</a>
        </div>
        <div class="layer-wrap">
            <div class="bg-mask"></div>
            <div class="layer-in">
                <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                <ul class="list-star">
                    <%=data_view_txt%>                          
                </ul>
            </div>
        </div>
        <!-- //데이터 산출 기준 -->

        <div class="v-info">
            <div>
                <dl>
                    <dt><%=tit_01%></dt>
                    <dd><%=txt_01%></dd>
                </dl>
                <dl>
                    <dt><%=tit_02%></dt>
                    <dd><%=txt_02%></dd>
                </dl>
            </div>
        </div>
        <div class="graphWrap <%=longText%>">
            <div class="v-object"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final/v_object01.png" alt="트로피 든 사람" /></div>
            <div class="graph graph01" >
              <img class="p-01" src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final/v_graph01.png" alt="그래프" />
            </div>
            <div class="graph graph02" >
              <img class="p-02" src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final/v_graph02.png" alt="그래프" />
            </div>
            <div class="graph graph03" >
              <img class="p-03" src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final/v_graph03.png" alt="그래프" />
            </div>
            <div class="graph graph04" >
              <img class="p-04" src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final/v_graph04.png" alt="그래프" />
            </div>
        </div>        
	</div>    
</div>