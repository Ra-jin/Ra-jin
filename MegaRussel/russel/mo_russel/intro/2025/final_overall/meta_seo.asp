<%

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

    Case "CD0250": areaName = "부천" '부천

    Case "CD0249": areaName = "영통"  '영통

    Case "CD0342": areaName = "대구" '대구
                    
    Case "CD0349": areaName = "울산"  '울산

	Case "CD0340": areaName = "광주"  '코어광주
                    
	Case "CD0341": areaName = "대전"  '대전


End Select
%>


<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0340" Then '코어광주 %>

<meta name="keywords" content="러셀, 러셀학원, 입시학원, 러셀CORE, 러셀기숙학원, 러셀기숙, 입시전문학원, 수능학원, 입시컨설팅, 수시컨설팅, 정시컨설팅, 정시학원, 수능등급컷, 재수학원, 고3, 재수생, 수능, 논술, 2025수능, 2026수능, 반수, 모의고사, 9월모의고사, 6월모의고사, 수능디데이, 등급컷, 수시, 정시, 원서접수, 파이널, 파이널정규반, <%=areaName%>입시학원, <%=areaName%>재수학원, <%=areaName%>러셀, <%=areaName%>종합반, <%=areaName%>재종, 재수종합반, 재종반" />
<meta name="description" content="최상위권 목표를 향한 마지막 기회, 러셀CORE <%=areaName%> 파이널 종합반" />
<meta property="og:type" content="website">
<meta property="og:title" content="2026 파이널 종합반">
<meta property="og:description" content="최상위권 목표를 향한 마지막 기회, 러셀CORE <%=areaName%> 파이널 종합반"/>

<% Else %>

    <meta name="keywords" content="러셀, 러셀학원, 입시학원, 러셀CORE, 러셀기숙학원, 러셀기숙, 입시전문학원, 수능학원, 입시컨설팅, 수시컨설팅, 정시컨설팅, 정시학원, 수능등급컷, 재수학원, 고3, 재수생, 수능, 논술, 2025수능, 2026수능, 반수, 모의고사, 9월모의고사, 6월모의고사, 수능디데이, 등급컷, 수시, 정시, 원서접수, 파이널, 파이널정규반, <%=areaName%>입시학원, <%=areaName%>재수학원, <%=areaName%>러셀, <%=areaName%>종합반, <%=areaName%>재종, 재수종합반, 재종반" />
    <meta name="description" content="최상위권 목표를 향한 마지막 기회, 러셀 <%=areaName%> 파이널 종합반" />
    <meta property="og:type" content="website">
    <meta property="og:title" content="2026 파이널 종합반">
    <meta property="og:description" content="최상위권 목표를 향한 마지막 기회, 러셀 <%=areaName%> 파이널 종합반"/>
<% End If %>