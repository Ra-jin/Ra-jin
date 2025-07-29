<%
'======================================================================================================================
' 인트로페이지에 사용할 상단메뉴
'======================================================================================================================

Set dbMegastudy = DBOpen("MEGASTUDY")

	' 메뉴 목록
	Dim arrNaviList, intListTotal
	arrNaviList = RunProcedureReturnRowsDic(dbMegastudy, "dbo.MSP_NAVI_LIST", Null, intListTotal)

Call DBConnClose(dbMegastudy)

Dim strDepth1Style
strDepth1Style = "col" & intListTotal
If intListTotal <= 5 Then
	strDepth1Style = "col5"
ElseIf intListTotal >= 9 Then
	strDepth1Style = "col9"
End If

%>
		<div class="topHead">
			<h1 class="logo"><a href="/?clear=Y"><span><img src="<%=Application("img_path")%>/library/intro/main_logo.gif" alt="메가스터디 학원"></span></a></h1>
			
			<!-- quick_megaStudy -->
			<script type="text/javascript">
			var bQuickLinkAutoFous = false;//학원바로가기 오토포커스 off
			</script>
			<!-- #Include Virtual = "/library/include/common/top_campus_quicklink.asp" -->
			<!--// quick_megaStudy -->
		</div>
		<div class="gnbWrap">
			<div class="gnbMenu">
				<ul class="depth1 <%=strDepth1Style%>"><!-- 1depth의 li개수에따른 class:col5 ~ col9 -->
<%
Dim strMenuName, intDepth, strLink, strRelations, strUseNew, intDepthPrev, intCode
If isArray(arrNaviList) Then
	For inti = 0 To UBound(arrNaviList)
		strMenuName		= arrNaviList(inti)("MENU_NAME")
		intDepth		= arrNaviList(inti)("DEPTH")
		strLink			= arrNaviList(inti)("LINK")
		strUseNew		= arrNaviList(inti)("USE_NEW")
		strRelations    = arrNaviList(inti)("RELATIONS")
		intCode			= arrNaviList(inti)("CODE")

		Select Case CInt(intDepth)
			Case 1 '대메뉴일경우
				nBMenuCount = nBMenuCount + 1

				If GetGNBHTML <> "" Then '처음시작이 아닌경우에는 이전태그를 닫는다
					If intDepthPrev <> intDepth Then '2depth -> 1depth인 경우. 2depth태그로 닫아준다
						RW("</ul>")
						RW("<div class=""bg""></div></div></div>")
					End If
					RW("</li>")
				End If

				RW("<li>")
				url_check = ""
				If Len(strLink) <> 0 And Not isnull(strLink) Then
					url_check = Left(strLink,1)
				End If
				If url_check = "/" Then
					RW("<a href=""" & NormalHttpDomainStr & strLink & """")
				else
					RW("<a href=""" & NormalHttpDomainStr &"/"& strLink & """")
				End if
				
				'//성북 이외에값에 strRelations 제거 S
				If Not ( GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0239" Or GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0214" )   Then 
						If ValueCheck(strRelations) And Trim(intCode) = "4" Then '고객센터일때 방문예약 활성화 방지
							strRelations = Replace(strRelations,"/campus_common/campus/visit_consult.asp","")
						End If 
				End If 
				'//성북 이외에값에 strRelations 제거 E
		
				If InStrArr(getLinkDecode(), strRelations, ",", True) = True Then
					RW(" class=""on""")
				ElseIf Trim(intCode) = "3" And InStr(getLinkDecode(),"/mypage/") > 0  Then '마이페이지는 범위가 넓고 하드코딩이고 해서 이렇게
					RW(" class=""on""")
				End If
				RW(">" & strMenuName & "</a>")


				If Trim(intCode) = "3" And ValueCheck(gLoginMemKind) Then '마이페이지 범위 이고 로그인 상태면 서브메뉴를 여기서 결정!

					RW("<div class=""subMenu""><div class=""inBox""><ul>")
					RW("<ul>")

					If gLoginMemKind = "1" Then '학생
						If gAmsClsCd = "11" Then '재정 재원.대기 일경우

						RW("			<li><a href="""& NormalHttpDomainStr &"/mypage/teamplay_info"">팀플정보</a></li>")

						End If

						RW("			<li><a href="""&NormalHttpDomainStr&"/mypage/lecture_course.asp"">나의 학원정보</a></li>")
						RW("			<li><a href="""&NormalHttpDomainStr&"/mypage/common/account_list.asp"">나의 결제정보</a></li>")
						RW("			<li><a href="""&NormalHttpDomainStr&"/mypage/lecture/lecture.asp"">온라인 강의실</a></li>")
						RW("			<li><a href="""&NormalHttpDomainStr&"/mypage/counseling/counseling.asp"">나의 상담정보</a></li>")
						RW("			<li><a href="""&NormalHttpDomainStr&"/mypage/my_info.asp"">개인정보</a></li>")

					ElseIf gLoginMemKind = "3" Then '학부모

						If jaejung_count > 0 Then '자녀 재정 재원.대기 일경우

						RW("			<li><a href="""&NormalHttpDomainStr&"/mypage/teamplay_info/"">자녀 팀플정보</a></li>")

						End If

						RW("			<li><a href="""&NormalHttpDomainStr&"/mypage/lecture_course.asp"">자녀 학원정보</a></li>")
						RW("			<li><a href="""&NormalHttpDomainStr&"/mypage/common/account_list.asp"">자녀 결제정보</a></li>")
						RW("			<li><a href="""&NormalHttpDomainStr&"/mypage/counseling/counseling.asp"">나의 상담정보</a></li>")
						RW("			<li><a href="""&NormalHttpDomainStr&"/mypage/my_info.asp"">개인정보</a></li>")

					ElseIf gLoginMemKind = "4" Then '일반

						RW("			<li><a href="""&NormalHttpDomainStr&"/mypage/teamplay_info/"">나의 상담정보</a></li>")
						RW("			<li><a href="""&NormalHttpDomainStr&"/mypage/my_info.asp"">개인정보</a></li> ")

					End If
						RW("</ul><div class=""bg""></div>")
						RW("</div></div>")

				ElseIf Trim(intCode) = "3"  Then  ' 비회원일경우 마이페이지 수동 노출  16/12/29 
						
						RW("<div class=""subMenu""><div class=""inBox""><ul>")
						RW("<ul>")
						RW("			<li><a href="""& NormalHttpDomainStr &"/mypage/teamplay_info"">팀플정보</a></li>")
						RW("			<li><a href="""&NormalHttpDomainStr&"/mypage/lecture_course.asp"">나의 학원정보</a></li>")
						RW("			<li><a href="""&NormalHttpDomainStr&"/mypage/common/account_list.asp"">나의 결제정보</a></li>")
						RW("			<li><a href="""&NormalHttpDomainStr&"/mypage/lecture/lecture.asp"">온라인 강의실</a></li>")
						RW("			<li><a href="""&NormalHttpDomainStr&"/mypage/counseling/counseling.asp"">나의 상담정보</a></li>")
						RW("</ul><div class=""bg""></div>")
						RW("</div></div>")
				End If



			Case 2 '소메뉴일경우


				If intDepthPrev <> intDepth Then '1depth -> 2depth인 경우. 2depth의 처음시작으로 판단. 2depth메뉴태그를 연다
					RW("<div class=""subMenu""><div class=""inBox""><ul>")
					RW("<ul>")
				End If
				url_check = ""
				If Len(strLink) <> 0 And Not isnull(strLink) Then
					url_check = Left(strLink,1)
				End If
				If url_check = "/" Then
					RW("<li><a href=""" & NormalHttpDomainStr & strLink & """>" & strMenuName)
				else
					RW("<li><a href=""" & NormalHttpDomainStr &"/"& strLink & """>" & strMenuName)
				End If
				If sUseNew = "Y" Then
					RW("<span class=""ir_ico new"">new</span>")
				End If
				RW("</a></li>")

		End Select

		intDepthPrev = intDepth
	Next 

	If GetGNBHTML <> "" Then
		If CInt(intDepthPrev) = 2 Then '마지막 종료된 depth가 2depth인경우, 2depth도 닫아준다.
			RW("</ul><div class=""bg""></div>")
			RW("</div></div>")
		End If
		RW("</li>")
	End If
End If
%>
				</ul>
			</div>
		</div>
