<%

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")


    Case "CD0247": areaName = "강남" '강남
                    
    Case "CD0001": areaName = "대치" '대치

    Case "CD0245": areaName = "목동" '목동

    Case "CD0250": areaName = "부천" '부천

	Case "CD0244": areaName = "분당" '분당

	Case "CD0246": areaName = "센텀" '센텀

    Case "CD0249": areaName = "영통"  '영통

    Case "CD0257": areaName = "중계"  '중계
					
	Case "CD0248": areaName = "평촌"  '평촌

    Case "CD0342": areaName = "대구" '대구
                    
    Case "CD0349": areaName = "울산"  '울산

	Case "CD0340": areaName = "광주"  '코어광주
                    
	Case "CD0341": areaName = "대전"  '대전

    Case "CD0343": areaName = "원주" '코어원주

    Case "CD0344": areaName = "전주"  '코어전주

    Case "CD0345": areaName = "창원"  '코어창원
                    
    Case "CD0346": areaName = "청주"  '코어청주


End Select
%>

<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "INTRO" Then '인트로 %>

<meta name="keywords" content="러셀, 러셀학원, 입시학원, 러셀CORE, 러셀기숙학원, 러셀기숙, 입시전문학원, 수능학원, 입시컨설팅, 수시컨설팅, 정시컨설팅, 정시학원, 수능등급컷, 재수학원, 고3, 재수생, 수능, 논술, 2025수능, 2026수능, 반수, 모의고사, 9월모의고사, 6월모의고사, 수능디데이, 등급컷, 수시, 정시, 원서접수, 파이널, 파이널정규반" />
<meta name="description" content="최상위권 목표를 향한 마지막 기회, 러셀 파이널 정규반" />
<meta property="og:type" content="website">
<meta property="og:title" content="2026 파이널 정규반">
<meta property="og:description" content="최상위권 목표를 향한 마지막 기회, 러셀 파이널 정규반"/>

<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0340" OR Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0343" OR Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0344" OR Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0345" OR Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0346" Then '코어 %>

<meta name="keywords" content="러셀, 러셀학원, 입시학원, 러셀CORE, 러셀기숙학원, 러셀기숙, 입시전문학원, 수능학원, 입시컨설팅, 수시컨설팅, 정시컨설팅, 정시학원, 수능등급컷, 재수학원, 고3, 재수생, 수능, 논술, 2025수능, 2026수능, 반수, 모의고사, 9월모의고사, 6월모의고사, 수능디데이, 등급컷, 수시, 정시, 원서접수, 파이널, 파이널정규반, <%=areaName%>입시학원, <%=areaName%>재수학원, <%=areaName%>러셀" />
<meta name="description" content="최상위권 목표를 향한 마지막 기회, 러셀CORE <%=areaName%> 파이널 정규반" />
<meta property="og:type" content="website">
<meta property="og:title" content="2026 파이널 정규반">
<meta property="og:description" content="최상위권 목표를 향한 마지막 기회, 러셀CORE <%=areaName%> 파이널 정규반"/>

<% Else %>

    <meta name="keywords" content="러셀, 러셀학원, 입시학원, 러셀CORE, 러셀기숙학원, 러셀기숙, 입시전문학원, 수능학원, 입시컨설팅, 수시컨설팅, 정시컨설팅, 정시학원, 수능등급컷, 재수학원, 고3, 재수생, 수능, 논술, 2025수능, 2026수능, 반수, 모의고사, 9월모의고사, 6월모의고사, 수능디데이, 등급컷, 수시, 정시, 원서접수, 파이널, 파이널정규반, <%=areaName%>입시학원, <%=areaName%>재수학원, <%=areaName%>러셀" />
    <% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0257" Then '중계 %>
    <meta name="description" content="최종 목표를 향한 마지막 기회, 러셀 <%=areaName%> 파이널 정규반" />
    <meta property="og:type" content="website">
    <meta property="og:title" content="2026 파이널 정규반">
    <meta property="og:description" content="최종 목표를 향한 마지막 기회, 러셀 <%=areaName%> 파이널 정규반"/>
    <% Else %>
    <meta name="description" content="최상위권 목표를 향한 마지막 기회, 러셀 <%=areaName%> 파이널 정규반" />
    <meta property="og:type" content="website">
    <meta property="og:title" content="2026 파이널 정규반">
    <meta property="og:description" content="최상위권 목표를 향한 마지막 기회, 러셀 <%=areaName%> 파이널 정규반"/>
    <% End If %>
<% End If %>