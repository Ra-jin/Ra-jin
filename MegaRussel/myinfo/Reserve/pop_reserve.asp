<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<%
formFilter() ' SQL 인젝션 문자열 필터링

nAmsMemCd = ""
cIsParents = "N"

lec_count = 0
arrLecCou = Null
nLecCouTot = 0


Ams_Mcode = objDB.sqlResult("select Rms_Mem_Cd from Mg_Member with(nolock) where Code = '" & gLoginMemCode &"' and uKind='1' and uDel_fg='N' ")
nAmsMemCd = Ams_Mcode
nAmsMemCd = CheckNumber_reset(nAmsMemCd, 0)

'nAmsMemCd = "412836" '테스트

TodayNow =  FormatDateTime(Now(), 2) &" "& FormatDateTime(Now(), 4) & Right(Now(), 3)
Lec_idx = VARS("idx")

If VAlueCheck(Lec_idx) Then

    strSql = " SELECT 'Y' "
    strSql = strSql & "FROM MG_RESERVATION_MAS RM WITH(NOLOCK)  "
    strSql = strSql & "INNER JOIN MG_RESERVATION_LEC RL WITH(NOLOCK) ON RM.IDX = RL.MIDX   "
    strSql = strSql & "WHERE RL.IDX = '"& Lec_idx &"' "
    'strSql = strSql & "AND DATEDIFF ( mi , start_dt, getdate()) >= 0 "
    'strSql = strSql & "AND DATEDIFF ( mi , end_dt , getdate()) <= 0 "
    strSql = strSql & "AND DATEDIFF ( mi , start_dt, '"& TodayNow &"') >= 0  "
    strSql = strSql & "AND DATEDIFF ( mi , end_dt , '"& TodayNow &"') <= 0  "

    ' rYN = russelobjdb.sqlResult(strSql)

	Set Rs1 = russelobjdb.sqlQuery(strSql, 1)
	IF NOT Rs1 IS NOTHING THEN
		IF Rs1.State <>0 THEN
			IF NOT (Rs1.eof Or Rs1.bof) THEN
				rYN = Rs1(0)
			END IF
		END IF
	END IF
	Rs1.close
	Set Rs1 = Nothing

    If rYN <> "Y" Then
		js_close("예약 기간이 아닙니다.")
		Response.end
    End if


    'strSql = ""
	'strSql = strSql & "SELECT RL.IDX,RL.Lec_Sym,RL.Lec_Name, "
	'strSql = strSql & "RA.CCODE,RA.LEC_INFO, RA.TEC_NAME,RA.LEC_NAME AS CLASS_NAME,RA.START_DT,RA.END_DT,RA.LEC_DT, "
	'strSql = strSql & "ISNULL(RI.IDX,'0') AS lIDX,RI.ROW_NUM,RI.COL_NUM,RA.IDX AS MIDX "
	'strSql = strSql & "FROM MG_RESERVATION_LEC RL WITH(NOLOCK) "
	'strSql = strSql & "INNER JOIN MG_RESERVATION_MEM RM WITH(NOLOCK) ON RL.LEC_CODE = RM.LEC_CODE "
	'strSql = strSql & "LEFT OUTER JOIN MG_RESERVATION_MAS RA WITH(NOLOCK) ON RL.MIDX = RA.IDX "
	'strSql = strSql & "LEFT OUTER JOIN MG_RESERVATION_LIST RI WITH(NOLOCK) ON RL.MIDX = RI.MIDX AND RI.MEM_CODE = RM.MEM_CODE "
	'strSql = strSql & "WHERE RM.MEM_CODE = '"& nAmsMemCd &"' "
	'strSql = strSql & "AND RL.IDX = '"& Lec_idx &"' "

	strSql = " EXEC SP_SET_MG_RESERVATION_LIST "& nAmsMemCd &","& Lec_idx &" "

	Set Rs = russelobjdb.sqlQuery(strSql,1)

	If Not (Rs.eof Or Rs.bof) Then

		dbLec_IDX = Rs("IDX")
		dbLec_Sym = Rs("Lec_Sym")
		dbLec_Name = Rs("Lec_Name")
		dbCCODE = Rs("CCODE")
		dbLEC_INFO = Rs("LEC_INFO")
		dbTEC_NAME = Rs("TEC_NAME")
		dbCLASS_NAME = Rs("CLASS_NAME")
		dbSTART_DT = Rs("START_DT")
		dbEND_DT = Rs("END_DT")
		dbLEC_DT = Rs("LEC_DT")
		dbIDX= Rs("lIDX")
		dbROW_NUM= Rs("ROW_NUM")
		dbCOL_NUM= Rs("COL_NUM")
		dbMIDX= Rs("MIDX")


        weekDate = weekDay(dbLEC_DT)
        select case weekDate
        case "1" weekDate = "일"
        case "2" weekDate = "월"
        case "3" weekDate = "화"
        case "4" weekDate = "수"
        case "5" weekDate = "목"
        case "6" weekDate = "금"
        case "7" weekDate = "토"
        end select

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

        Ldt = Left(dbLEC_DT,10) & " ("& weekDate & ")"& "<br/>" & Hour(dbLEC_DT) & ":" & Ldt_Min
        Sdt = Left(dbSTART_DT,10) &" "& Hour(dbSTART_DT) & ":" & Sdt_Min
        Edt = Left(dbEND_DT,10) &" "& Hour(dbEND_DT) & ":" & Edt_Min
		CAM_NAME = 	AmsDName(dbCCODE)

	Else
		js_close("해당내용이 없습니다.")
		Response.end
	End If

	Rs.close
	Set Rs = Nothing

Else
	js_close("해당내용이 없습니다.")
	Response.end
End if
Session.Abandon()
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<head>
	<meta charset="euc-kr" />
	<title>단과좌석 온라인예약</title>
	<!-- #include virtual = "/include/head.asp" -->
</head>
</head>
<body>

<div class="wrap">
	<header class="pop-header">
		<h2><%=CAM_NAME%> - 단과좌석 온라인예약
			<span class="btn-close" onclick="window.close();">x</span></h2>
	</header>
	<section class="popup-content">
		<!-- content-in -->
		<div class="content-in">
			<div class="loading center" style="display:none;"><img src="<%=Application("img_path_russel")%>/myrussel/icon/ico_loadding.svg"/></div>
			<div class="title-box">
				<h3 class="title">단과 강좌</h3>
			</div>
			<!--//  단과강좌정보    //-->
			<div id="lectureInfo">
				<div id="lectureInfoLoading" class="loading center"><img src="<%=Application("img_path_russel")%>/myrussel/icon/ico_loadding.svg"/></div>
			</div>

			<% If request.cookies("reserve_agree_" & Lec_idx) <> "true" Then %>
				<%IF Trim(dbLEC_INFO) <> "" Then%>
					<div class="title-box mt20">
						<h3 class="title">수업 공지사항</h3>
					</div>
					<div class="notice">
						<ul><%=dbLEC_INFO%></ul>
					</div>
					<div class="notice-agree">
						<label for="agree">
						<input title="수업 공지 확인" type="checkbox" id="agree" onchange="javascript:chk_onChanged()"/>&nbsp;공지사항 내용을 확인하였고, 동의합니다. <span class="orange">(필수)</span></label>
					</div>
				<%ELSE%>
					<div width=0 height=0 style="visibility:hidden">
						<input title="수업 공지 확인" type="checkbox" id="agree" checked />
					</div>
				<%End if%>
			<% end if %>

			<div class="title-box">
				<h3 class="title">좌석 선택&nbsp;<span class="orange fz17"></span></h3>
			</div>

			<div class="seat">
				<div class="seat_head">
					<div class="btn_set">
						<a href="javascript:;" onclick="delseat();" class="btn_cancel">좌석 예약취소</a>
					</div>
					<div class="seat_info">
					<ul>
						<li><span class="icon"><img src="<%=Application("img_path")%>/library/russel/mypage/icon_seat_normal.gif"/></span>예약가능</li>
						<li><span class="icon"><img src="<%=Application("img_path")%>/library/russel/mypage/icon_seat_male.gif"/></span>예약좌석(남학생)</li>
						<li><span class="icon"><img src="<%=Application("img_path")%>/library/russel/mypage/icon_seat_female.gif"/></span>예약좌석(여학생)</li>
						<li><span class="icon"><img src="<%=Application("img_path")%>/library/russel/mypage/icon_seat_selected.gif"/></span>예약완료</li>
						<!-- <li><span class="icon"><img src="<%=Application("img_path")%>/library/russel/mypage/icon_seat_cant.gif"/></span>선택불가</li> -->
					</ul>
					</div>
				</div>

				<!--//  좌석 리스트    //-->
				<div id="seatlist">
					<div id="seatListLoding" class="loading center"><img src="<%=Application("img_path_russel")%>/myrussel/icon/ico_loadding.svg"/></div>
				</div>
			</div>
	<!--

	-->
		</div>
		<!-- //content-in -->
	</section>

</div><!-- //wrap -->


<script type="text/javascript">

	$( document ).ready(function() {
		loadLecture();
		loadSeat();
    });

	var lectureFailed = false;
	var seatFailed = false;
	var alertShown = false;

	// 두개의 통신이 모두 실패하더라도 한번만 alert을 띄우기 위함.
	function showErrorOnce() {
		if (!alertShown) {
			alertShown = true;
			setTimeout(function () {
				alert("문제가 발생했어요. 다시 시도해주세요.");
				self.close();
			}, 300);
		}
	}

	function loadLecture() {
		var idx = "<%=Lec_idx%>";
		$.ajax({
			url: "pop_reserve_lecture_ax.asp",
			method: "GET",
			async: true,
			timeout: 10000,
			data: {
				"idx": idx
			},
			beforeSend: function() {
				$('#lectureInfoLoading').show();  // 로딩바를 보이게 함
				lectureFailed = true;
			},
			success: function(response) {
				lectureFailed = false;
				$("#lectureInfo").html(response);

			},
			error: function(jqXHR, textStatus, errorThrown) {
				lectureFailed = true;
				showErrorOnce();
			},
			complete: function() {
			}
		});
	}

    function loadSeat() {
            var Midx = "<%=dbMIDX%>";
            // $("#seatlist").load("pop_reserve_seat_ax.asp", {
            //     "Midx": Midx
            // });

			$.ajax({
				url: "pop_reserve_seat_ax.asp",
				method: "GET",
				async: true,
				timeout: 10000,
				data: {
					"Midx": Midx
				},
				beforeSend: function() {
					seatFailed = true;
					$('#seatListLoding').show();  // 로딩바를 보이게 함
				},
				success: function(response) {
					seatFailed = false;
					$("#seatlist").html(response);
				},
				error: function(jqXHR, textStatus, errorThrown) {
					seatFailed = true;
            		showErrorOnce();
				},
				complete: function() {
				}
			});
    }

    var doubleSubmitFlag = false;
    function memseat(IDX,MemCd){
		if (lectureFailed == true || seatFailed==true) { // 2개중 하나라도 실패하거나 좌석예약영역먼저 노출이 되었더라도 단과강좌 통신중에는 좌석예약 안되게 막기
			alert("처리중 입니다.");
			return;
		}
        try {
			if (doubleSubmitFlag == false){
                doubleSubmitFlag = true;
                var mode = "memseat";
                jQuery.ajax({
                    url: 'pop_reserve_proc.asp?mode='+ mode +'&idx='+ IDX +'&Memcd='+ MemCd,
                    cache : false,
                    success: function(data) {
                        if (data == 0) {
                            alert('잘못된 접근입니다.');
                            self.close();
                        } else if (data == 1) {
                            alert('좌석이 예약되었습니다.');
                            var result = confirm('창을 닫으시겠습니까?');
                            if(result) {
                                opener.location.reload();
                                self.close();
                            } else {
                                loadSeat();
                                opener.location.reload();
                                return;
                            }
                        } else if (data == 2) {
                            alert('예약된 좌석 정보가 존재합니다.');
                            doubleSubmitFlag = false;
                            //loadSeat();
                        } else if (data == 3) {
                            alert('예약기간이 아닙니다.');
                            self.close();
                        } else {
                            alert(data);
                        }
                    }
                });
			}else{
				alert("처리중 입니다.");
			}
        } catch (e) {
            return;
        }
    }


    function delseat(){
        var mode = "delseat";
        sMsg = "예약을 취소 시키겠습니까?";

        var IDX = $("#selidx").val();
        if (typeof IDX == 'undefined'){
            return;
        }

        if(confirm(sMsg)) {
            jQuery.ajax({
                url: 'pop_reserve_proc.asp?mode='+ mode +'&idx='+ IDX,
                cache : false,
                success: function(data) {
                    if (data == 1) {
                        loadSeat();
                    } else if (data == 2) {
                        alert('취소는 5분전 까지만 가능합니다.');
                    } else {
                        alert(data);
                    }
                }
            });
        }
    }

	function chk_onChanged() {
		setCookie("reserve_agree_<%=Lec_idx%>", $("#agree").is(':checked'), 1, 1);	// 1일 간 쿠키적용
	}
</script>


</body>
</html>
