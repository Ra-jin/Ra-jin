<%

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

    Case "CD0347": areaName = "남학생 전문관" 
                    areaName02 = "남학생"
                    
    Case "CD0348": areaName = "여학생 전문관"
                    areaName02 = "여학생"

    Case "CD0363": areaName = "최상위권 전문관"
    


End Select
%>

<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0363" Then '최상위권 기숙 %>

<meta name="keywords" content="러셀학원, 러셀 입시학원, 러셀학원, 러셀CORE학원, 러셀 기숙학원, 입시전문학원, 수능자습학원, 수능대비학원, 최상위권입시전략, 의대입시전략, 메가스터디러셀윈터스쿨, 러셀윈터스쿨, 윈터스쿨, 겨울방학, 최상위권겨울방학, 최상위권윈터스쿨, 고1입시준비, 겨울방학학원, 겨울방학공부, 고1수능, 고등학생겨울방학학원, 겨울방학수능준비, 공부습관, 학습습관, 학습습관형성, 겨울방학학습습관형성, 윈터스쿨후기, 러셀윈터스쿨후기, 재학생기숙학원, 고3기숙학원, 기숙학원윈터스쿨, 재수생기숙학원, 윈터스쿨기숙, 최상위권윈터스쿨,최상위러셀윈터스쿨,러셀기숙최상위권윈터스쿨, 최상위권러셀기숙윈터스쿨, 고2겨울방학, 고2입시준비" />
<meta name="description" content="Win을 만드는 겨울, 터지는 잠재력! 최상위권으로 도약하는 학습 습관을 <%=areaName%>에서 완성하세요." />
<meta property="og:type" content="website">
<meta property="og:title" content="2026 윈터스쿨">
<meta property="og:description" content="Win을 만드는 겨울, 터지는 잠재력! 최상위권으로 도약하는 학습 습관을 <%=areaName%>에서 완성하세요."/>

<% Else %>

<meta name="keywords" content="러셀학원, 러셀 입시학원, 러셀학원, 러셀CORE학원, 러셀 기숙학원, 입시전문학원, 수능자습학원, 수능대비학원, 최상위권입시전략, 의대입시전략, 메가스터디러셀윈터스쿨, 러셀윈터스쿨, 윈터스쿨, 겨울방학, 최상위권겨울방학, 최상위권윈터스쿨, 고1입시준비, 겨울방학학원, 겨울방학공부, 고1수능, 고등학생겨울방학학원, 겨울방학수능준비, 공부습관, 학습습관, 학습습관형성, 겨울방학학습습관형성, 윈터스쿨후기, 러셀윈터스쿨후기, 재학생기숙학원, 고3기숙학원, 기숙학원윈터스쿨, 재수생기숙학원, 윈터스쿨기숙, 최상위권윈터스쿨,남학생러셀윈터스쿨,러셀기숙남학생윈터스쿨, <%=areaName02%>러셀기숙윈터스쿨, 고2겨울방학, 고2입시준비, 2028학년도수능준비" />
<meta name="description" content="Win을 만드는 겨울, 터지는 잠재력! 최상위권으로 도약하는 학습 습관을 <%=areaName%>에서 완성하세요." />
<meta property="og:type" content="website">
<meta property="og:title" content="2026 윈터스쿨">
<meta property="og:description" content="Win을 만드는 겨울, 터지는 잠재력! 최상위권으로 도약하는 학습 습관을 <%=areaName%>에서 완성하세요."/>

<% End If %>