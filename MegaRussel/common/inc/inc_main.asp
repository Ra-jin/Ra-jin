<% 
'인트로/기숙 별도

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	' method.asp 인클루드 안한 페이지에서 오류날 수 있지만, 안쓰는 페이지가 없을거라 가정

    '강남
    Case "CD0247":  <!-- naver_veri = "25c01db6de3ff9790240b933024f954c4652f6a9" -->
                    meta_key = "러셀 강남, 러셀강남, fjtpfrkdska, 강남러셀, rkdskafjtpf, 강남 러셀, 강남학원, 단과, 썸머스쿨, 윈터스쿨, 재수, 반수"
                    meta_desc = "메가스터디 러셀, 메가스터디 강사진, 바른공부 자습전용관"
                    can_url = "https://russelgn.megastudy.net"
                    alt_url = "https://mrusselgn.megastudy.net"
    '대치
	Case "CD0001":  naver_veri = "b89ed2a763772d8b1efdfc810b4a9764b0ad2268"
                    meta_key = "러셀 대치, 러셀대치, fjtpfeocl, 대치러셀, eoclfjtpf, 대치 러셀, 대치학원, 단과, 썸머스쿨, 윈터스쿨, 재수, 반수" 
				    meta_desc = "메가스터디 러셀, 메가스터디 강사진, 바른공부 자습전용관"
                    can_url = "https://russeldc.megastudy.net"
                    alt_url = "https://mrusseldc.megastudy.net"

    '목동
    Case "CD0245":  <!-- naver_veri = "9ba15bc960cde3c21f379e4b76356b7886e35c85"-->
                    meta_key = "러셀 목동, 러셀목동, fjtpfahrehd, 목동러셀, ahrehdfjtpf, 목동 러셀, 목동학원, 단과, 썸머스쿨, 윈터스쿨, 재수, 반수" 
                    meta_desc = "메가스터디 러셀, 메가스터디 강사진, 바른공부 자습전용관"
                    can_url = "https://russelmd.megastudy.net"
                    alt_url = "https://mrusselmd.megastudy.net" 

    '부천
    Case "CD0250":  naver_veri = "69a2af51d6f0bfedf6d6e65f4368f834cb6b1dd0"
                    meta_key = "러셀 부천, 러셀부천, fjtpfqncjs, 부천러셀, qncjsfjtpf, 부천 러셀, 부천학원, 단과, 썸머스쿨, 윈터스쿨, 재수, 반수" 
                    meta_desc = "메가스터디 러셀, 메가스터디 강사진, 바른공부 자습전용관"
                    can_url = "https://russelbc.megastudy.net"
                    alt_url = "https://mrusselbc.megastudy.net"

    '분당
    Case "CD0244":  naver_veri = "c777ac52c4e9b6a5f57fd8f87a868bf5e842c096"
                    meta_key = "러셀 분당, 러셀분당, fjtpfqnsekd, 분당러셀, qnsekdfjtpf, 분당 러셀, 분당학원, 단과, 썸머스쿨, 윈터스쿨, 재수, 반수" 
                    meta_desc = "메가스터디 러셀, 메가스터디 강사진, 바른공부 자습전용관"
                    can_url = "https://russelbd.megastudy.net"
                    alt_url = "https://mrusselbd.megastudy.net"

    '센텀
	Case "CD0246":  naver_veri = "01f65554ff5f5814918faa169f3099cd7c24101c"
                    meta_key = "러셀 센텀, 러셀센텀, fjtpftpsxja, 센텀러셀, tpsxjafjtpf, 센텀 러셀, 센텀학원, 단과, 썸머스쿨, 윈터스쿨, 재수, 반수" 
                    meta_desc = "메가스터디 러셀, 메가스터디 강사진, 바른공부 자습전용관"
                    can_url = "https://russelct.megastudy.net"
                    alt_url = "https://mrusselct.megastudy.net"

    '영통
    Case "CD0249":  naver_veri = "1f9820ea876610ce87780e74e6f8e9f4c1dca370"
                    meta_key = "러셀 영통, 러셀영통, fjtpfdudxhd, 영통러셀, dudxhdfjtpf, 영통 러셀, 영통학원, 단과, 썸머스쿨, 윈터스쿨, 재수, 반수" 
                    meta_desc = "메가스터디 러셀, 메가스터디 강사진, 바른공부 자습전용관"
                    can_url = "https://russelyt.megastudy.net"
                    alt_url = "https://mrusselyt.megastudy.net"
    
    '중계
    Case "CD0257":  naver_veri = "a9b85f98babfd68ae6b8c0605f2093a4caf29ba6"
                    meta_key = "러셀 중계, 러셀중계, fjtpfwndrP, 중계러셀, wndrPfjtpf, 중계 러셀, 중계학원, 단과, 썸머스쿨, 윈터스쿨, 재수, 반수" 
                    meta_desc = "메가스터디 러셀, 메가스터디 강사진, 바른공부 자습전용관"
                    can_url = "https://russeljg.megastudy.net"
                    alt_url = "https://mrusseljg.megastudy.net"
    
    '평촌	
    Case "CD0248":  naver_veri = "1981b211604c247255309f1f037d464e6cf07cdb"
                    meta_key = "러셀 평촌, 러셀평촌, fjtpfvudchs, 평촌러셀, vudchsfjtpf, 평촌 러셀, 평촌학원, 단과, 썸머스쿨, 윈터스쿨, 재수, 반수" 
                    meta_desc = "메가스터디 러셀, 메가스터디 강사진, 바른공부 자습전용관"
                    can_url = "https://russelpc.megastudy.net"
                    alt_url = "https://mrusselpc.megastudy.net"

    '광주
	Case "CD0340":  <!-- naver_veri = "2ba37c47ade953cfdcddfde68447c2051a6f64b1" -->
                    meta_key = "코어 광주, 코어광주, zhdjrhkdwn, 광주코어, rhkdwnzhdj, 광주 코어, 광주학원, 단과, 썸머스쿨, 윈터스쿨, 재수, 반수" 
                    meta_desc = "메가스터디 러셀, 메가스터디 강사진, 바른공부 자습전용관"
                    can_url = "https://coregj.megastudy.net/"
                    alt_url = "https://mcoregj.megastudy.net/"

    '대전
	Case "CD0341":  naver_veri = "5330d3ecb0b431a45ad0b704698c34f51c4bf086"
                    meta_key = "코어 대전, 코어대전, zhdjeowjs, 대전코어, eowjszhdj, 대전 코어, 대전학원, 단과, 썸머스쿨, 윈터스쿨, 재수, 반수" 
                    meta_desc = "메가스터디 러셀, 메가스터디 강사진, 바른공부 자습전용관"
                    can_url = "https://coredj.megastudy.net/"
                    alt_url = "https://mcoredj.megastudy.net/"
    '대구
	Case "CD0342":  'naver_veri = ""
                    meta_key = "러셀 대구, 러셀대구, fjtpfeorn, 대구러셀, eornfjtpf, 대구 러셀, 대구학원, 단과, 썸머스쿨, 윈터스쿨, 재수, 반수" 
                    meta_desc = "메가스터디 러셀, 메가스터디 강사진, 바른공부 자습전용관"
                    can_url = "https://russeldg.megastudy.net/"
                    alt_url = "https://mrusseldg.megastudy.net/"

    '울산
	Case "CD0349":  'naver_veri = ""
                    meta_key = "러셀 울산, 러셀울산, fjtpfdnftks, 울산러셀, 울산 러셀, 울산학원, 단과, 종합반, 울산 내신, 내신학원, 윈터스쿨, 재수" 
                    meta_desc = ": 메가스터디 러셀, 메가스터디 강사진, 바른공부 자습전용관, 종합반"
                    can_url = "https://russelus.megastudy.net/"
                    alt_url = "https://mrusselus.megastudy.net/"
    '원주
	Case "CD0343":  naver_veri = "18ec62feb59a6aaca78051594bb0a921d262299d"
                    meta_key = "코어 원주, 코어원주, fjtpfdnjswn, 원주코어, dnjswnfjtpf, zhdjdnjswn, 러셀원주, 원주 코어, 원주학원, 단과, 썸머스쿨, 윈터스쿨, 재수, 반수" 
                    meta_desc = "메가스터디 러셀, 메가스터디 강사진, 바른공부 자습전용관"
                    can_url = "https://corewj.megastudy.net/"
                    alt_url = "https://mcorewj.megastudy.net/"
    '전주
	Case "CD0344":  'naver_veri = ""
                    meta_key = "코어 전주, 코어전주, zhdjwjswn, 전주코어, wjswnzhdj, 전주 코어, 전주학원, 단과, 썸머스쿨, 윈터스쿨, 재수, 반수" 
                    meta_desc = "메가스터디 러셀, 메가스터디 강사진, 바른공부 자습전용관"
                    can_url = "https://corejj.megastudy.net/"
                    alt_url = "https://mcorejj.megastudy.net/"
    '창원
	Case "CD0345":  'naver_veri = ""
                    meta_key = "코어 창원, 코어창원, zhdjckddnjs, 창원코어, ckddnjszhdj, 창원 코어, 창원학원, 단과, 썸머스쿨, 윈터스쿨, 재수, 반수" 
                    meta_desc = "메가스터디 러셀, 메가스터디 강사진, 바른공부 자습전용관"
                    can_url = "https://corecw.megastudy.net/"
                    alt_url = "https://mcorecw.megastudy.net/"
    '청주
	Case "CD0346":  'naver_veri = ""
                    meta_key = "코어 청주, 코어청주, zhdjcjdwn, 청주코어, cjdwnzhdj, 청주 코어, 청주학원, 단과, 썸머스쿨, 윈터스쿨, 재수, 반수" 
                    meta_desc = "메가스터디 러셀, 메가스터디 강사진, 바른공부 자습전용관"
                    can_url = "https://corecj.megastudy.net/"
                    alt_url = "https://mcorecj.megastudy.net/"

    '원격 학원
    Case "CD0354":  'naver_veri = ""
                    meta_key = "러셀 원격학원, 러셀원격학원, fjtpfdnjsrurgkrdnjs, 원격학원러셀, 원격학원 러셀, 온라인 학원, 단과, 내신, 내신학원" 
                    meta_desc = "메가스터디 러셀, 메가스터디 러셀 강사진, 원격학원"
                    can_url = "https://russelremote.megastudy.net/"
                    alt_url = "https://mrusselremote.megastudy.net/"
End Select 
%>
<meta name="title" content="<%=gMGC_Campus_KN %>" />

<!-- 네이버 소유 확인 : html파일 업로드 시 해당 변수영역 주석 조건문 사용x -->

<meta name="naver-site-verification" content="<%=naver_veri%>" />

<meta name="keywords" content="<%=meta_key%>" />
<meta name="description" content="<%=meta_desc%>" />
<meta property="og:type" content="website">
<meta property="og:title" content="<%=gMGC_Campus_KN %>">
<meta property="og:description" content="<%=meta_desc%>" />
<meta property="og:site_name" content="<%=gMGC_Campus_KN %>">
<link rel="canonical" href="<%=can_url%>" />
<link rel="alternate" href="<%=alt_url%>" type="text/html" title="mobile optimized version" media="only screen and (max-width: 640px)" />

<!-- 메인 공통 css/js -->
<link rel="stylesheet" href="/common/css/main.css?v=1.2">
<script src="/common/js/main.js"></script>