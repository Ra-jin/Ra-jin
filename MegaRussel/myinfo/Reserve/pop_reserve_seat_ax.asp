<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<%
Response.CharSet="euc-kr"
Session.codepage="949"
Response.codepage="949"
Response.ContentType="text/html;charset=euc-kr"
Midx = VARS("Midx")


nAmsMemCd = ""
cIsParents = "N"
lec_count = 0
arrLecCou = Null
nLecCouTot = 0

Ams_Mcode = objDB.sqlResult("select Rms_Mem_Cd from Mg_Member with(nolock) where Code = '" & gLoginMemCode &"' and uKind='1' and uDel_fg='N' ")
nAmsMemCd = Ams_Mcode
nAmsMemCd = CheckNumber_reset(nAmsMemCd, 0)

'nAmsMemCd = "439920" '테스트
' WAITFOR DELAY '00:00:11';
strSql = ""
strSql = strSql & " SELECT RL.Div_Num, COUNT(CASE WHEN Row_Num = 'A' THEN 1 END) As Div_Cnt "
strSql = strSql & "FROM MG_RESERVATION_LIST RL WITH(NOLOCK) "
'strSql = strSql & "LEFT OUTER JOIN VW_RESERVATION_MEM RM WITH(NOLOCK) ON RM.Mem_Code = RL.Mem_Code AND RM.Lec_Code IN (SELECT LEC_CODE FROM MG_RESERVATION_LEC WHERE MIDX = '"& Midx &"') "
strSql = strSql & "WHERE MIDX = '"& Midx &"' "
strSql = strSql & "GROUP BY RL.Div_Num "
strSql = strSql & "ORDER BY RL.Div_Num "


Set objRs = russelobjdb.sqlQuery(strSql,3)
Dim arrCnt : arrCnt = Null
If Not (objRs.EoF And objRs.BoF) Then
arrCnt = objRs.getrows
End If

objRs.close
Set objRs = Nothing

server.ScriptTimeout = 10

strSql = ""
strSql = strSql & " SELECT RL.IDX, RL.Div_Num, RL.Row_Num, RL.Col_Num, RL.Att_YN, RL.Use_YN, RS.Admin_YN, RM.Mem_Name, RM.Mem_Code, RM.Mem_Gender "
strSql = strSql & "FROM MG_RESERVATION_LIST RL WITH(NOLOCK) "
strSql = strSql & "LEFT OUTER JOIN MG_RESERVATION_SEAT RS WITH(NOLOCK) ON RL.IDX = RS.IDX "
strSql = strSql & "LEFT OUTER JOIN ( "
strSql = strSql & "				SELECT DISTINCT RM.Mem_Name, RM.Mem_Code, RM.Mem_Gender "
strSql = strSql & "				FROM MG_RESERVATION_MEM RM WITH(NOLOCK) "
strSql = strSql & "				INNER JOIN MG_RESERVATION_LEC RL ON RM.Lec_Code = RL.Lec_Code "
strSql = strSql & "				WHERE RL.MIDX = '"& Midx &"' "
strSql = strSql & "			) RM ON RS.Mem_Code = RM.Mem_Code "
'strSql = strSql & "LEFT OUTER JOIN MG_RESERVATION_MEM RM WITH(NOLOCK) ON RM.Mem_Code = RS.Mem_Code AND RM.Lec_Code IN (SELECT LEC_CODE FROM MG_RESERVATION_LEC WITH(NOLOCK)WHERE MIDX = '"& Midx &"') "
strSql = strSql & "WHERE MIDX = '"& Midx &"' "
strSql = strSql & "ORDER BY RL.IDX ASC "

'strSql = strSql & " SELECT RL.IDX, RL.Div_Num, RL.Row_Num, RL.Col_Num, RL.Att_YN, RL.Use_YN, RL.Admin_YN, RL.Mem_Name, RL.Mem_Code, RM.Mem_Gender   "
'strSql = strSql & " FROM MG_RESERVATION_LIST RL WITH(NOLOCK)  "
'strSql = strSql & " LEFT OUTER JOIN MG_RESERVATION_MEM RM WITH(NOLOCK) ON RM.Mem_Code = RL.Mem_Code  "
'strSql = strSql & " LEFT OUTER JOIN MG_RESERVATION_LEC RE WITH(NOLOCK) ON RM.Lec_Code = RE.Lec_Code  AND RL.MIDX = RE.MIDX "
'strSql = strSql & " WHERE RL.MIDX = '"& Midx &"' "
'strSql = strSql & " ORDER BY RL.IDX ASC "

Set objRs = russelobjdb.sqlQuery(strSql,3)
Dim arrList : arrList = Null
If Not (objRs.EoF And objRs.BoF) Then
arrList = objRs.getrows
End If

objRs.close
Set objRs = Nothing

%>

	<div class="seat_wrap">
		<div class="screen">칠판</div>
		<div class="seat_set">

    <%
    If IsNull(arrCnt) = False Then

      For nLoopCnt = 0 To UBound(arrCnt,2)

            dbDiv_Num = arrCnt(0,nLoopCnt)
            dbDiv_Cnt = arrCnt(1,nLoopCnt)
%>
                  <div class="colg col<%=dbDiv_Cnt%>">
<%
                        If IsNull(arrList) = False Then

                              For mLoopCnt = 0 To UBound(arrList,2)

                                    use = "N"
                                    dbIDX = arrList(0,mLoopCnt)
                                    dbDiv_Num_List = arrList(1,mLoopCnt)
                                    dbRow_Num = arrList(2,mLoopCnt)
                                    dbCol_Num = arrList(3,mLoopCnt)
                                    dbAtt_YN = arrList(4,mLoopCnt)
                                    dbUse_YN = arrList(5,mLoopCnt)
                                    dbAdmin_YN = arrList(6,mLoopCnt)
                                    dbMem_Name = arrList(7,mLoopCnt)
                                    dbMem_Code = arrList(8,mLoopCnt)
                                    dbMem_Gender = arrList(9,mLoopCnt)

                                    If Len(dbCol_Num) < 2 Then
                                          dbCol_Num = "0" & dbCol_Num
                                    End if
                                    SeatNum = dbRow_Num & "-" &  dbCol_Num

                                    If IsNull(dbMem_Code) = True Then
                                          SeatStatus = "seat_normal" '예약가능
                                    Else
                                          'SeatStatus = "seat_done" '다른사람이 예약
                                          If dbMem_Gender = "F" Then
                                                SeatStatus = "seat_female" '여자
                                          Else
                                                SeatStatus = "seat_male" '남자
                                          End if
                                          use = "Y"
                                    End if

                                    If dbUse_YN = "N" Then
                                          SeatStatus = "seat_cant" '선택불가
                                          use = "Y"
                                    End if

                                    If Trim(dbMem_Code) = Trim(nAmsMemCd) Then
                                          SeatStatus = "seat_selected" '본인이 예약함
                                          SeatNum = dbMem_Name
                                          Reserve_no = "Y"
                                          use = "N"
                                    End if


                                    If dbDiv_Num = dbDiv_Num_List Then
%>
                                          <div class="seat_box">
                                                      <input type="hidden" id="midx" value="<%=dbIDX%>">
                                                      <input type="hidden" id="use" value="<%=use%>">
                                                      <%IF SeatStatus = "seat_selected" THEN%><input type="hidden" id="selidx" value="<%=dbIDX%>"><%end if%>
                                                      <button class="<%=SeatStatus%>" ><%=SeatNum%></button>
                                          </div>
<%
                                    End if
                            Next
                        End If
%>
                  </div>
<%
      Next
    End If
    %>

<script type="text/javascript">
      $(".seat_box").click(function(){

      <%If Reserve_no <> "Y" Then%>
            var idx = $(this).children( "#midx" ).val();
            var use = $(this).children( "#use" ).val();
                  if (use=='N'){
                        <% '22.12.01 김예은 요청 - 공지사항은 하루 한번만 노출 %>
                        if ($('#agree').length > 0) {
                              if ($('#agree').is(":checked"))
                              {
                                    memseat(idx,'<%=nAmsMemCd%>');
                              }else{
                                    alert("예약 전 공지사항을 확인하시고 체크해주세요")
                              return;
                              }
                        } else {
                              memseat(idx,'<%=nAmsMemCd%>');
                        }
                  }
      <%END IF%>

      })

</script>
