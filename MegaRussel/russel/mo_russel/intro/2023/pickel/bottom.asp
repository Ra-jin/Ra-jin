<% 
r_campus = "러셀"
r_tel = ""
Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	' method.asp 인클루드 안한 페이지에서 오류날 수 있지만, 안쓰는 페이지가 없을거라 가정       
    Case "CD0247": r_campus = " 강남"
                   r_tel = "02-6454-1010"
    Case "CD0001": r_campus = " 대치"
                   r_tel = "02-2138-1010"
    Case "CD0245": r_campus = " 목동"
                   r_tel = "02-6932-1010"	
    Case "CD0250": r_campus = " 부천"
                   r_tel = "032-265-1010"
	Case "CD0244": r_campus = " 분당"
                   r_tel = "031-629-1010"
	Case "CD0246": r_campus = " 센텀"
                   r_tel = "051-715-1010"
    Case "CD0249": r_campus = " 영통"
                   r_tel = "031-251-1010"
    Case "CD0257": r_campus = " 중계"
                   r_tel = "02-6316-1010"
	Case "CD0248": r_campus = " 평촌"
                   r_tel = "031-341-6500"
	Case "CD0340": r_campus = "CORE 광주"
                   r_tel = "062-462-1010"
	Case "CD0341": r_campus = "CORE 대전"
                   r_tel = "042-381-2020"
	'Case "CD0258": r_campus = "기숙"
	'Case "CD0331": r_title = "삽자루 수학학원"
	'Case "CD0342": r_campus = "대구"
	
End Select 
%>

<div class="bottom-wrap">
    <p class="tit">
        <span>재학생만을 위한 맞춤 관리 러셀 피켈 정규반</span>
        <strong>최상위권이 집결하는 러셀<%=r_campus%>에서<br>대입 성공을 시작하세요.</strong>
    </p>
    <p class="txt">모집 관련 자세한 사항은<br>유선 또는 온라인 상담 게시판으로 문의 부탁드립니다.</p>
    <p class="bt-box">
        <a href="tel:<%=r_tel%>">전화 상담</a>
        <a href="https://mrusselpc.megastudy.net/board/consult_list.asp">온라인 상담</a>
    </p>
</div>
