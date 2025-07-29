<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<%
formFilter() ' SQL 인젝션 문자열 필터링

nRmsMemCd = ""
cIsParents = "N"

lec_count = 0
arrLecCou = Null
nLecCouTot = 0

'RMS 학번 가져오기
If( IsDevSvr()= True )then
	Rms_Mcode = russelobjDB.sqlResult("select Rms_Mem_Cd from Mg_Member with(nolock) where uId = '" & gLoginMemId &"' and uKind='1' and uDel_fg='N' ")
Else
	Rms_Mcode = objDB.sqlResult("select Rms_Mem_Cd from Mg_Member with(nolock) where uId = '" & gLoginMemId &"' and uKind='1' and uDel_fg='N' ")
End If

nRmsMemCd = Rms_Mcode
nRmsMemCd = CheckNumber_reset(nRmsMemCd, 0)
if nRmsMemCd = "0" Then
	js_close("고객님의 아이디는 재원생 미 인증 아이디로 해당 아이디는 단과좌석 온라인예약이 불가능합니다.")
	Response.end
ElseIf gLoginMemKind <> "1" Then
	js_close("고객님의 아이디는 학부모 회원으로 해당 아이디는 단과좌석 온라인예약이 불가능합니다.")
	Response.end
End if

'nRmsMemCd = "439920" '테스트

strSql = " EXEC SP_SET_MG_RESERVATION_LIST '"& nRmsMemCd &"' "


Set objRs = russelobjdb.sqlQuery(strSql,3)
Dim arrList : arrList = Null
If Not (objRs.EoF And objRs.BoF) Then
arrList = objRs.getrows
End If

objRs.close
Set objRs = Nothing


' 좌석 예약 현황 COUNT
nReCnt = 0
nNoCnt = 0
If IsNull(arrList) = False Then
        For nLoopCnt = 0 To UBound(arrList,2)
			MEM_CODE = arrList(13,nLoopCnt)
			If MEM_CODE = "0" Then
				nNoCnt = nNoCnt + 1
			Else
				nReCnt = nReCnt + 1
			End if
		Next
End if


%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
	<!-- #include virtual = "/include/head.asp" -->
	<script type="text/javascript">
		var xmlHttp;
		var st;
		var currentDate;
		function srvTime(){
			if (window.XMLHttpRequest) {//분기하지 않으면 IE에서만 작동된다.
				xmlHttp = new XMLHttpRequest(); // IE 7.0 이상, 크롬, 파이어폭스 등
				xmlHttp.open('HEAD',window.location.href.toString(),false);
				xmlHttp.setRequestHeader("Content-Type", "text/html");
				xmlHttp.send('');
				st = xmlHttp.getResponseHeader("Date");
				currentDate = new Date(st);
			}else if (window.ActiveXObject) {
				xmlHttp = new ActiveXObject('Msxml2.XMLHTTP');
				xmlHttp.open('HEAD',window.location.href.toString(),false);
				xmlHttp.setRequestHeader("Content-Type", "text/html");
				xmlHttp.send('');
				st = xmlHttp.getResponseHeader("Date");
				currentDate = new Date(st);
			}
			printClock();
		}

		function printClock() {
			var clock = document.getElementById("clock");            // 출력할 장소 선택
			currentDate.setSeconds(currentDate.getSeconds() + 1);
			var calendar = currentDate.getFullYear() + "-" + (currentDate.getMonth()+1) + "-" + currentDate.getDate() // 현재 날짜
			var amPm = 'AM'; // 초기값 AM
			var currentHours = addZeros(currentDate.getHours(),2);
			var currentMinute = addZeros(currentDate.getMinutes() ,2);
			var currentSeconds =  addZeros(currentDate.getSeconds(),2);

			if(currentHours >= 12){ // 시간이 12보다 클 때 PM으로 세팅, 12를 빼줌
				amPm = 'PM';
				currentHours = addZeros(currentHours - 12,2);
			}

			if(currentSeconds >= 50){// 50초 이상일 때 색을 변환해 준다.
			currentSeconds = '<span style="color:#de1951;">'+currentSeconds+'</span>'
			}
			clock.innerHTML = "서버시간 : "+currentHours+":"+currentMinute+":"+currentSeconds +" "+ amPm; //날짜를 출력해 줌

			setTimeout("printClock()",1000);         // 1초마다 printClock() 함수 호출
		}

		function addZeros(num, digit) { // 자릿수 맞춰주기
			var zero = '';
			num = num.toString();
			if (num.length < digit) {
				for (i = 0; i < digit - num.length; i++) {
				zero += '0';
				}
			}
			return zero + num;
		}


	</script>
</head>
<body onload="srvTime();" class="reserveListBody">
	<header class="sub">
        <a href="/index.asp" class="btnPrev">단과좌석 온라인예약</a>
		<!-- #include virtual = "/include/header.asp" -->
	</header>
	<section class="sub">
		<!-- inBox -->
		<div class="inBox">
			<!-- tabCommon -->
			<div class="tabCommon">
				<div class="tabConList">
					<div class="title-wrap">
						<h3 class="title">좌석 예약 현황 ( <span class="blue"><%=nReCnt%></span>건 예약 완료 / <span class="orange"><%=nNoCnt%></span>건 예약 가능)</span></h3>
						<!-- <div id="clock" class="pos-r"></div> -->
					</div>
					<div class="reserveListBox">
					<div id="div_cur_lec_show" class="tb-type2 bdColor-gy reserve">

		<%
		If IsNull(arrList) = False Then
		%>
							<table class="" cellspacing="0" cellpadding="0" >
							<thead>
							<tr>
								<th>학원</th>
								<th>강좌정보</th>
								<th>좌석</th>
							</tr>
							</thead>
							<tbody>
			<%
			For nLoopCnt = 0 To UBound(arrList,2)
				dbLec_IDX = arrList(0,nLoopCnt)
				dbLec_Sym = arrList(1,nLoopCnt)
				dbLec_Name = arrList(2,nLoopCnt)
				dbCCODE = arrList(3,nLoopCnt)
				dbLEC_INFO = arrList(4,nLoopCnt)
				dbTEC_NAME = arrList(5,nLoopCnt)
				dbCLASS_NAME = arrList(6,nLoopCnt)
				dbSTART_DT = arrList(7,nLoopCnt)
				dbEND_DT = arrList(8,nLoopCnt)
				dbLEC_DT = arrList(9,nLoopCnt)
				dbIDX= arrList(10,nLoopCnt)
				dbROW_NUM= arrList(11,nLoopCnt)
				dbCOL_NUM= arrList(12,nLoopCnt)
				dbMem_CD= arrList(13,nLoopCnt)
				dbLec_CD= arrList(14,nLoopCnt)

				If Len(dbCol_Num) < 2 Then
					dbCol_Num = "0" & dbCol_Num
				End if

				weekDate = weekName(dbLEC_DT)

				If Len(Minute(dbLEC_DT)) < 2 Then
					Ldt_Min = "0" & Minute(dbLEC_DT)
				Else
					Ldt_Min = Minute(dbLEC_DT)
				End if

				If Len(Minute(dbSTART_DT)) < 2 Then
					Sdt_Min = "0" & Minute(dbSTART_DT)
				Else
					Sdt_Min = Minute(dbSTART_DT)
				End if

				If Len(Minute(dbEND_DT)) < 2 Then
					Edt_Min = "0" & Minute(dbEND_DT)
				Else
					Edt_Min = Minute(dbEND_DT)
				End if

				Ldt = Left(dbLEC_DT,10) & " ("& weekDate & ") "  & Hour(dbLEC_DT) & ":" & Ldt_Min
				Sdt = Left(dbSTART_DT,10) &" "& Hour(dbSTART_DT) & ":" & Sdt_Min
				Edt = Left(dbEND_DT,10) &" "& Hour(dbEND_DT) & ":" & Edt_Min

				If dbIDX  = "0" Then
					reClass = "rsvIng"
					reText = "미예약"
				Else
					SeatStatus = dbRow_Num & "-" & dbCol_Num
					reClass = "rsvEnd"
					reText = "예약완료"
				End if

				CAM_NAME = 	AmsDName(dbCCODE)

				if nRmsMemCd <> "" and dbLec_CD <> "" then
					Sql = ""
					Sql = Sql & " SELECT CASE WHEN SUM(SH_SET_AMT) - ( SUM(SH_RECI_AMT) - SUM(SH_REF_AMT) ) <= 0 THEN '완납' ELSE '미납' END AS MINAP "
					Sql = Sql & " FROM AMS_SET_HIS  (nolock) "
 					Sql = Sql & " INNER JOIN AMS_SET_MAS (nolock) ON SM_SET_CD = SH_SET_CD "
 					Sql = Sql & " INNER JOIN AMS_SALE_LEC (nolock) ON SL_SET_CD = SH_SET_CD AND SL_SALE_ST NOT IN ( 12, 13, 15 )  "
 					Sql = Sql & " WHERE SH_MEM_CD = "& nRmsMemCd &" "
 					Sql = Sql & " AND SL_COLE_CD = "& dbLec_CD &" "
 					Sql = Sql & " GROUP BY SH_SET_CD "

					set Rs2 = amsobjdb.sqlQuery(Sql,3)
					If Not (Rs2.EoF And Rs2.BoF) Then
						MINAP = Rs2("MINAP")
					End If
					Rs2.close
					Set Rs2 = Nothing
				end if
				' Response.write Sql

			%>

							<tr class="<%=reClass%>"><!-- 예약완료는 rsvEnd, 미예약은 rsvIng 입니다. -->
								<td class="th"><%=CAM_NAME%><span><%=reText%></span>
								</td>
								<td class="con">
									<div class="box">
										<ul>
											<li><%=dbTEC_NAME%></li>
											<li><%=dbCLASS_NAME%></li>
											<li><%=dbLec_Sym%></li>
											<li class="last">수업일 : <%=Ldt%></li>
										</ul>
										<p class="tit"><%=dbLec_Name%></p>
										<p class="date"><%IF Trim(dbLEC_INFO) <> "" THEN%><a href="javascript:;" onclick="javascript:$('.layer').toggle();">강의공지 확인 &gt;</a><%END IF%>예약기간 : <%=Sdt%> ~ <%=Edt%></p>
										<div class="layer"><%=dbLEC_INFO%></div>
									</div>
								</td>
								<td class="last">
								<%If dbIDX = "0" Then%>
									<a href="javascript:;" <%IF MINAP = "미납" THEN%> onclick="alert('단과 결제 후 좌석을 예약할 수 있습니다.')" <%ELSE%> onclick="fscreen('<%=dbLec_IDX%>')" <%END IF%>>예약하기</a>
								<%ELSE%>
									<span class="seatNum" onclick="fscreen('<%=dbLec_IDX%>')">좌석 <%=SeatStatus%>&gt;</span>
									<a href="javascript:;" onclick="delseat('<%=dbIdx%>')">취소하기</a>
								<%END IF%>
								</td>
							</tr>

			<%
			Next
			%>
							</tbody>
						</table>

		<%
		ELSE
		%>

						<table class="table_type_04" cellspacing="0" cellpadding="0">
							<tbody>
							<tr>
								<td>예약 가능한 강좌가 없습니다.</td>
							</tr>
						</tbody>
						</table>

		<%
		End If
		%>
					</div>
					<div class="btm-text-wrap">
						<p class="table-bottom-text orange"><strong>※ 단과 결제 후 좌석을 예약할 수 있습니다.</strong></p>
						<p class="table-bottom-text orange">※ 공지된 좌석 예약 일정에 맞춰 ‘예약하기‘ 버튼이 오픈 됩니다. (기준 시간 : 네이버 표준시계)</p>
						<p class="table-bottom-text orange">※ 서비스 이용을 위해 팝업차단을 해지해 주시기 바랍니다.</p>
						<p class="table-bottom-text orange"><strong>※ 사용자 네트워크환경에 따라 예약시간 오차가 있을 수 있습니다.</strong></p>
					</div>
				</div>

				<!--sub 내용 끝-->
				</div>
			</div>
			<!-- //tabCommon -->
		</div>
		<!-- //inBox -->
	</section>



<SCRIPT LANGUAGE="JavaScript">
<!--
function fscreen(val) {
  url = "./pop_reserve.asp?idx="+val
  fullscreen = window.open(url, "fullscreen", 'top=0,left=0,width='+(screen.availWidth-10)+',height='+(screen.availHeight-48)+',fullscreen=yes,toolbar=0,location=0,directories=0,status=0,menubar=0,resizable=0,scrolling=0,scrollbars=yes');
}


function delseat(IDX){
	var mode = "delseat";
	sMsg = "예약을 취소 시키겠습니까?";

	if(confirm(sMsg)) {
		jQuery.ajax({
			url: 'pop_reserve_proc.asp?mode='+ mode +'&idx='+ IDX,
			cache : false,
			success: function(data) {
				if (data == 1) {
					location.reload();
                } else if (data == 2) {
                    alert('취소는 5분전 까지만 가능합니다.');
				} else if (data == 99) {
					alert('로그인이 필요합니다.');
					location.reload();
				} else {
					alert(data);
				}
			}
		});
	}
}

//-->
</SCRIPT>
</body>
</html>
