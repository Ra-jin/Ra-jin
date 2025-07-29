
			
		<%
			attendAcaCode = ""

			strSql = ""
			strSql = strSql & " SELECT  TOP 1 "
			strSql = strSql & " 		GH.GH_ACA_CD "
			strSql = strSql & " FROM    dbo.AMS_GRP_HIS AS GH WITH (NOLOCK) "
			strSql = strSql & " 		CROSS APPLY (SELECT dbo.UF_GET_GH_STATE_01(GH.GH_COLE_CD, GH.GH_MEM_CD) AS GH_STATE) AS GRP_STATE "
			strSql = strSql & " WHERE   GH.GH_MEM_CD = '"& nRmsMemCd &"' "
			strSql = strSql & " 		AND GH.GH_CLS_CD IN ( 11, 12, 13, 14 ) "
			strSql = strSql & " 		AND GRP_STATE.GH_STATE IN ( 11, 12 ) "
			strSql = strSql & " ORDER BY GH.GH_REG_DT DESC; "

			attendAcaCode = amsobjdb.sqlResult(strSql)
		%>
		<ul class="info">
			<!-- 식권 select 영역 -->
			<% if instr(lcase(Request.ServerVariables("URL")), "/fns/calendar.asp") = 1 then %>
				<li class="sel">
					<select name="sel_aca_cd" onchange="javascript:getDate(iYear, iMonth);"><%
						strSQL = "EXEC MSP_ACA_NAME_ORD 6"
						set RS = amsobjdb.sqlQuery(strSql,3)
						DO WHILE NOT RS.EOF%>
							<option value="<%=RS(0)%>" <%IF Cstr(RS(0)) = Cstr(attendAcaCode) THEN response.write "selected" END IF%>><%=RS(1)%></option><%
							RS.MoveNext
						LOOP
						RS.close
						Set RS = Nothing%>
					</select>
				</li>
			<% end if %>
			<!-- //식권 select 영역 -->
			<li class="student"><span class="name"><%=gLoginMemName%></span><span class="mo-no">(<%=nRmsMemCd%>)</span></li>
			<!-- pc화면 -->
			<li class="mo-no"><a href="javascript:void(0);" onclick="javascript:location.href='<%=header_addr2%>/russel/member/logout.asp?rtnUrl=<%=header_addr2%>';" class="btnLogout"><span>로그아웃</span></a></li>				
			<!-- //pc화면 -->
		</ul>		
		<!-- 모바일 화면 -->
		<div class="my-info">
			<p><%=gLoginMemName%>(<%=nRmsMemCd%>) <br><%=G_AMS_ACA_NM%>&nbsp;<%=G_AMS_STATE_NM%></p>
			<a href="javascript:void(0);" onclick="javascript:location.href='<%=header_addr2%>/russel/member/logout.asp?rtnUrl=<%=header_addr2%>';" class="btnLogout">로그아웃</a>
		</div>
		<!-- 모바일 화면 -->

	
	<script>
		$(".student").on("click",function(){
			$(".my-info, .student").toggleClass("on");
		});
	</script>