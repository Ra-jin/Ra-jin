<%

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

    Case "CD0249": areaName = "영통"  '영통

    Case "CD0342": areaName = "대구" '대구
                   
    Case "CD0349": areaName = "울산"  '울산

	Case "CD0340": areaName = "광주"  '코어광주
	
End Select
%>

<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0340"  Then '코어광주 %>

<meta name="keywords" content="러셀학원, 러셀 입시학원, 러셀학원, 러셀CORE학원, 러셀 기숙학원, 입시전문학원, 수능자습학원, 수능대비학원, 최상위권입시전략, 의대입시전략, 메가스터디러셀윈터스쿨, 러셀윈터스쿨, 윈터스쿨, 겨울방학, 최상위권겨울방학, 최상위권윈터스쿨, 고1입시준비, 겨울방학학원, 겨울방학공부, 고1수능, 고등학생겨울방학학원, 겨울방학수능준비, 공부습관, 학습습관, 학습습관형성, 겨울방학학습습관형성, 윈터스쿨후기, 러셀윈터스쿨후기, <%=areaName%>윈터스쿨, <%=areaName%>러셀윈터스쿨, <%=areaName%>윈터스쿨후기, 러셀CORE<%=areaName%>, <%=areaName%>러셀, 고2겨울방학, 고2입시준비, 2028학년도수능준비, 러셀재수종합반, <%=areaName%>재수종합반, 러셀CORE<%=areaName%>재수종합반, 윈터스쿨재수종합반, <%=areaName%>윈터스쿨재수종합반" />
<meta name="description" content="Win을 만드는 겨울, 터지는 잠재력! 최상위권으로 도약하는 학습 습관을 러셀CORE <%=areaName%> 재수종합반에서 완성하세요." />
<meta property="og:type" content="website">
<meta property="og:title" content="2026 윈터스쿨 종합반">
<meta property="og:description" content="Win을 만드는 겨울, 터지는 잠재력! 최상위권으로 도약하는 학습 습관을 러셀CORE <%=areaName%> 재수종합반에서 완성하세요."/>

<% Else %>

<meta name="keywords" content="러셀학원, 러셀 입시학원, 러셀학원, 러셀CORE학원, 러셀 기숙학원, 입시전문학원, 수능자습학원, 수능대비학원, 최상위권입시전략, 의대입시전략, 메가스터디러셀윈터스쿨, 러셀윈터스쿨, 윈터스쿨, 겨울방학, 최상위권겨울방학, 최상위권윈터스쿨, 고1입시준비, 겨울방학학원, 겨울방학공부, 고1수능, 고등학생겨울방학학원, 겨울방학수능준비, 공부습관, 학습습관, 학습습관형성, 겨울방학학습습관형성, 윈터스쿨후기, 러셀윈터스쿨후기, <%=areaName%>윈터스쿨, <%=areaName%>러셀윈터스쿨, <%=areaName%>윈터스쿨후기, 러셀<%=areaName%>, <%=areaName%>러셀, 고2겨울방학, 고2입시준비, 2028학년도수능준비, 러셀재수종합반, <%=areaName%>재수종합반, 러셀<%=areaName%>재수종합반, 윈터스쿨재수종합반, <%=areaName%>윈터스쿨재수종합반" />
<meta name="description" content="Win을 만드는 겨울, 터지는 잠재력! 최상위권으로 도약하는 학습 습관을 러셀 <%=areaName%> 재수종합반에서 완성하세요." />
<meta property="og:type" content="website">
<meta property="og:title" content="2026 윈터스쿨 종합반">
<meta property="og:description" content="Win을 만드는 겨울, 터지는 잠재력! 최상위권으로 도약하는 학습 습관을 러셀 <%=areaName%> 재수종합반에서 완성하세요."/>

<% End If %>