<% 
open_date = "매월 초 순차 개강"
a_period  = "현장 접수 | 현재 접수 중"
a_call  = "전화 상담 031.341.6500"
img_url   = "intro"
Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	' method.asp 인클루드 안한 페이지에서 오류날 수 있지만, 안쓰는 페이지가 없을거라 가정       
    Case "CD0247": open_date = ""  '강남
                   img_url   = "russel_gn"

    Case "CD0001": open_date = ""   '대치
                   img_url   = "russel"

    Case "CD0245": open_date = ""        '목동
                   img_url   = "russel_md"

    Case "CD0250": open_date = ""          '부천
                   img_url   = "russel_bc"

	Case "CD0244": open_date = ""   '분당
                   img_url   = "russel_bd"

	Case "CD0246": open_date = ""   '센텀
                   img_url   = "russel_ct"

    Case "CD0249": open_date = ""   '영통
                   img_url   = "russel_yt"

    Case "CD0257": open_date = ""   '중계
                   img_url   = "russel_jg"

	Case "CD0248": open_date = "매월 초 순차 개강"       '평촌
                   a_period  = "현장 접수 | 현재 접수 중"
                   img_url   = "russel_pc"
                   a_call  = "전화 상담 031.341.6500"

	Case "CD0340": open_date = ""  '코어광주
                   img_url   = "core_gj"

	Case "CD0341": open_date = ""  '코어대전
                   img_url   = "core_dj"

	'Case "CD0258": open_date = "기숙"
	'Case "CD0331": r_title = "삽자루 수학학원"
	'Case "CD0342": open_date = "대구"
	
End Select 
%>
<div class="visual">
    <p class="img bg"><img src="<%=Application("img_path_russel")%>/m_russel/<%=img_url%>/2023/pickel/visual.jpg" alt="평촌" /></p>
</div>
