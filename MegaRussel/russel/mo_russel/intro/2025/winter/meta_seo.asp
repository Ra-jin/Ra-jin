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

<meta name="keywords" content="러셀학원, 러셀 입시학원, 러셀학원, 러셀CORE학원, 러셀 기숙학원, 입시전문학원, 수능자습학원, 수능대비학원, 최상위권입시전략, 의대입시전략, 메가스터디러셀윈터스쿨, 러셀윈터스쿨, 윈터스쿨, 겨울방학, 최상위권겨울방학, 최상위권윈터스쿨, 고1입시준비, 겨울방학학원, 겨울방학공부, 고1수능, 고등학생겨울방학학원, 겨울방학수능준비, 공부습관, 학습습관, 학습습관형성, 겨울방학학습습관형성, 윈터스쿨후기, 러셀윈터스쿨후기, 고2겨울방학, 고2입시준비, 2028학년도수능준비" />
<meta name="description" content="Win을 만드는 겨울, 터지는 잠재력! 최상위권으로 도약하는 학습 습관의 완성" />
<meta property="og:type" content="website">
<meta property="og:title" content="2026 윈터스쿨">
<meta property="og:description" content="Win을 만드는 겨울, 터지는 잠재력! 최상위권으로 도약하는 학습 습관의 완성"/>

<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0340" OR Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0343" OR Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0344" OR Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0345" OR Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0346" Then '코어 %>

<meta name="keywords" content="러셀학원, 러셀 입시학원, 러셀학원, 러셀CORE학원, 러셀 기숙학원, 입시전문학원, 수능자습학원, 수능대비학원, 최상위권입시전략, 의대입시전략, 메가스터디러셀윈터스쿨, 러셀윈터스쿨, 윈터스쿨, 겨울방학, 최상위권겨울방학, 최상위권윈터스쿨, 고1입시준비, 겨울방학학원, 겨울방학공부, 고1수능, 고등학생겨울방학학원, 겨울방학수능준비, 공부습관, 학습습관, 학습습관형성, 겨울방학학습습관형성, 윈터스쿨후기, 러셀윈터스쿨후기, <%=areaName%>윈터스쿨, <%=areaName%>러셀윈터스쿨, <%=areaName%>윈터스쿨후기, 러셀CORE<%=areaName%>, <%=areaName%>러셀, 고2겨울방학, 고2입시준비, 2028학년도수능준비" />
<meta name="description" content="Win을 만드는 겨울, 터지는 잠재력! 최상위권으로 도약하는 학습 습관을 러셀CORE <%=areaName%>에서 완성하세요." />
<meta property="og:type" content="website">
<meta property="og:title" content="2026 윈터스쿨">
<meta property="og:description" content="Win을 만드는 겨울, 터지는 잠재력! 최상위권으로 도약하는 학습 습관을 러셀CORE <%=areaName%>에서 완성하세요."/>

<% Else %>


    <meta name="keywords" content="러셀학원, 러셀 입시학원, 러셀학원, 러셀CORE학원, 러셀 기숙학원, 입시전문학원, 수능자습학원, 수능대비학원, 최상위권입시전략, 의대입시전략, 메가스터디러셀윈터스쿨, 러셀윈터스쿨, 윈터스쿨, 겨울방학, 최상위권겨울방학, 최상위권윈터스쿨, 고1입시준비, 겨울방학학원, 겨울방학공부, 고1수능, 고등학생겨울방학학원, 겨울방학수능준비, 공부습관, 학습습관, 학습습관형성, 겨울방학학습습관형성, 윈터스쿨후기, 러셀윈터스쿨후기, <%=areaName%>윈터스쿨, <%=areaName%>러셀윈터스쿨, <%=areaName%>윈터스쿨후기, 러셀<%=areaName%>, <%=areaName%>러셀, 고2겨울방학, 고2입시준비, 2028학년도수능준비" />
    <% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0257" Then '중계 %>
    <meta name="description" content="Win을 만드는 겨울, 터지는 잠재력! 성적 향상을 위한 체계적인 학습 습관을 러셀 <%=areaName%>에서 완성하세요." />
    <meta property="og:type" content="website">
    <meta property="og:title" content="2026 윈터스쿨">
    <meta property="og:description" content="Win을 만드는 겨울, 터지는 잠재력! 성적 향상을 위한 체계적인 학습 습관을 러셀 <%=areaName%>에서 완성하세요."/>
    <% Else %>
    <meta name="description" content="Win을 만드는 겨울, 터지는 잠재력! 최상위권으로 도약하는 학습 습관을 러셀 <%=areaName%>에서 완성하세요." />
    <meta property="og:type" content="website">
    <meta property="og:title" content="2026 윈터스쿨">
    <meta property="og:description" content="Win을 만드는 겨울, 터지는 잠재력! 최상위권으로 도약하는 학습 습관을 러셀 <%=areaName%>에서 완성하세요."/>

    <% End If %>
<% End If %>