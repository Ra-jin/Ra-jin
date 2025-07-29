<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<%

	If Not gLoginOk Then
        ScriptBegin
        ScriptWrite "alert('로그인 후 이용하실 수 있습니다.');"
        ScriptWrite "self.close();"
        ScriptEnd
        response.end
    End If

	mode = "apply"

	'예약 상태 확인
	strSql = ""
	strSql = strSql & " SELECT EC_HOPE_DT, COUNT(EC_HOPE_DT) as cnt "
	strSql = strSql & " FROM MR_EVT_CONSULT2020 WITH(NOLOCK) "
	strSql = strSql & " WHERE 1=1 AND EC_TYPE='C' and ec_agree2_yn in('1','2') "
	strSql = strSql & " GROUP BY EC_HOPE_DT "

	Set objRs = russelobjdb.sqlQuery(strSql,3)
	arrList = Null
	If Not (objRs.EoF And objRs.BoF) Then
		arrList = objRs.getrows
	End If
	objRs.close
	Set objRs = Nothing

	BD_1223 = 0  '분당 12/23
	BD_1224 = 0  '분당 12/24
	MD_1225 = 0  '목동 12/25
	MD_1226 = 0  '목동 12/26
	DC_1227 = 0  '대치 12/27
	DC_1228 = 0  '대치 12/28
	DC_1229 = 0  '대치 12/29

	If isarray(arrList) = False Then
	Else
		For n=0 To ubound(arrList,2)
			consultDate = arrList(0,n)
			consultDateCnt = arrList(1,n)

			If consultDateCnt >= 24 Then '대기상태
				if consultDate = "12-26" then
					MD_1226 = 1
				Elseif consultDate = "12-27" then
					DC_1227 = 1
				Elseif consultDate = "12-29" then
					DC_1229 = 1
				End if
			End If

			If consultDateCnt >= 22 Then '28일만 22명 이상이면 대기상태로 변경 (2022-12-12 입시전략연구소 윤민영님 요청)
				if consultDate = "12-28" then
					DC_1228 = 1
				end if
			End If

			If consultDateCnt >= 23 Then '23일 23명 이상이면 대기상태로 변경 (2022-12-16 입시전략연구소 윤민영님 요청)
				if consultDate = "12-23" then
					BD_1223 = 1
				end if
			end if

			If consultDateCnt >= 26 Then '24일 26명 이상이면 대기상태로 변경 (2022-12-16 입시전략연구소 윤민영님 요청)
				if consultDate = "12-24" then
					BD_1224 = 1
				end if
			End If

			If consultDateCnt >= 25 Then '25일 25명 이상이면 대기상태로 변경 (2022-12-16 입시전략연구소 윤민영님 요청)
				if consultDate = "12-25" then
					MD_1225 = 1
				end if
			End If
		Next
	End If


	If gLoginOk = True Then
        strSql = ""
        strSql = strSql &" SELECT count(*) as cnt "
        strSql = strSql &" FROM MR_EVT_CONSULT2020 WITH(NOLOCK) "
        strSql = strSql &" WHERE EC_TYPE = 'C' "
		strSql = strSql & " 	AND EC_AGREE2_YN in ('1','2')  " '예약 대기/완료상태
	    strSql = strSql &"      AND EC_MEM_ID = '"&gLoginMemId&"'"

        Set objRs = russelobjdb.sqlQuery(strSql, 3)
        If Not (objRs.EoF And objRs.BoF) Then
            applyStatus = objRs(0)
        End If
        objRs.close
        Set objRs = Nothing
	Else
        applyStatus = 0
    End If

	If curYmdhmin >= 202312300000 and applyStatus = 0 Then	 '2023-11-04 강희경 파트장님 요청 : 202212300000 -> 202312300000
        ScriptBegin
        ScriptWrite "alert('마감되었습니다.');"
        ScriptWrite "self.close();"
        ScriptEnd
        response.end
    End If

	IF applyStatus > 0 then
		mode = "modify"

		strSql = ""
	    strSql = strSql & " SELECT "
		strSql = strSql & " [EC_CD] "
		strSql = strSql & " , [EC_MEM_ID] "
    	strSql = strSql & " , [EC_MEM_NM] "
        strSql = strSql & " , [EC_SEX] "
        strSql = strSql & " , [EC_SCH_NM] "
        strSql = strSql & " , [EC_LINE] "
        strSql = strSql & " , [EC_CLASS] "
        strSql = strSql & " , [EC_STU_MOBILE] "
        strSql = strSql & " , [EC_STU_EMAIL] "
        strSql = strSql & " , [EC_PAT_MOBILE] "
        strSql = strSql & " , [EC_PAT_EMAIL] "
        strSql = strSql & " , [EC_LIKE_UNIV1] "
        strSql = strSql & " , [EC_LIKE_UNIV2] "
        strSql = strSql & " , [EC_LIKE_UNIV3] "
       	strSql = strSql & " , [EC_LOW_UNIV] "
        strSql = strSql & " , [EC_LIKE_LINE] "
        strSql = strSql & " , [EC_POS_REGION] "
        strSql = strSql & " , [EC_CONSULT_CONTENT] "
        strSql = strSql & " , [EC_AGREE1_YN] "
        strSql = strSql & " , [EC_AGREE2_YN] "
       	strSql = strSql & " , [EC_PATH] "
        strSql = strSql & " , [EC_HOPE_DT] "
        strSql = strSql & " , [EC_REG_DT] "
        strSql = strSql & " , [EC_TYPE] "
		strSql = strSql & " , [EC_APPLYNUM1] "
		strSql = strSql & " , [EC_APPLYNUM2] "
		strSql = strSql & " , [EC_APPLYNUM3] "
		strSql = strSql & " , [EC_LASTYEAR_UNIV] "
		strSql = strSql & " , [EC_LIKE_UNIV4] "
		strSql = strSql & " , [EC_LIKE_UNIV5] "

		strSql = strSql & " FROM MR_EVT_CONSULT2020 WITH(NOLOCK)  "
	    strSql = strSql & " WHERE EC_TYPE = 'C' "
		strSql = strSql & " 	AND EC_AGREE2_YN in ('1','2') " '완료상태
		strSql = strSql & " 	AND EC_MEM_ID = '" & gLoginMemid & "' "

		Set objRs = russelobjdb.sqlQuery(strSql, 1)

	 	If Not (objRs.EoF And objRs.BoF) Then
			EC_CD	= objRs(0)
            EC_MEM_ID	= objRs(1)
            EC_MEM_NM	= objRs(2)
            EC_SEX	= objRs(3)
            EC_SCH_NM	= objRs(4)
            EC_LINE	= objRs(5)
            EC_CLASS	= objRs(6)
            EC_STU_MOBILE	= splitPhone(Trim(objRs(7)))
            EC_STU_EMAIL	= split(objRs(8),"@")
            EC_PAT_MOBILE	= splitPhone(Trim(objRs(9)))
            EC_PAT_EMAIL	= split(objRs(10),"@")
            EC_LIKE_UNIV1	= objRs(11)
            EC_LIKE_UNIV2	= objRs(12)
            EC_LIKE_UNIV3	= objRs(13)
          	EC_LOW_UNIV	= objRs(14)
            EC_LIKE_LINE 	= objRs(15)
            EC_POS_REGION	= objRs(16)
            EC_CONSULT_CONTENT 	= objRs(17)
            EC_AGREE1_YN	= objRs(18)
            EC_AGREE2_YN	= objRs(19)
          	EC_PATH	= objRs(20)
            EC_HOPE_DT 	= objRs(21)
            EC_REG_DT 	= objRs(22)
            EC_TYPE	= objRs(23)
            EC_APPLYNUM1 	= objRs(24)
            EC_APPLYNUM2 	= objRs(25)
            EC_APPLYNUM3 	= objRs(26)
            EC_LASTYEAR_UNIV  = objRs(27)
			EC_LIKE_UNIV4 =  objRs(28)
			EC_LIKE_UNIV5 =  objRs(29)
		End If
	   	objRs.close
	    Set objRs = Nothing

	    If EC_MEM_ID = "" Then
		    %>
		 	<script>
			alert("등록된 데이터가 없습니다.");
			self.close();
		    </script>
		    <%
		    response.end
	   	End If
    End If

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
	<meta name="title" content="정시 컨설팅 예약접수" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" type="text/css" href="/common/css/2021/pop.css" />
	<link rel="stylesheet" type="text/css" href="/common/css/2022/table.css" />
	<link rel="stylesheet" type="text/css" href="./style.css" />
</head>
<body>
<div class="popup pop-consult">
	<h1>2023 러셀 입시전략연구소 정시 지원 컨설팅 온라인접수</h1>
	<p class="mt10 red_txt fz14">※ 컨설팅 예약 수정/취소는 12/16(금)까지 가능합니다. 이 후는 온라인 1:1 상담게시판 및 02-3498-4332(평일 10:00 ~ 18:00 상담 운영)로 문의주시기 바랍니다.
	</p>
	<p class="tar mt30">(<strong class="red_txt">*</strong>) 표시 필수입력사항</p>
	<!-- 1.컨설팅 희망일 선택 -->
	<h2 class="mt0">1.컨설팅 희망일 선택<strong class="red_txt">*</strong></h2>
	<form name="form1" id="form1" method="post" action="popup_Reg.asp" enctype="multipart/form-data">
	<input type="hidden" name="mode" id="mode" value="<%=mode%>">
	<input type="hidden" name="mem_status_apply" id="mem_status_apply" <%if EC_AGREE2_YN ="1" then%> value="<%=EC_HOPE_DT%>" <%else%> value="" <%end if%>>
	<input type="hidden" name="mem_status_relay" id="mem_status_relay" <%if EC_AGREE2_YN ="2" then%> value="<%=EC_HOPE_DT%>" <%else%> value="" <%end if%>>
	<input type="hidden" name="consult_place" id="consult_place" value="">

		<table class="tbl-01">
			<colgroup>
				<col width="128px">
				<col width="*">
			</colgroup>
			<tbody>
				<tr>
					<th class="bg-sky">컨설팅 희망일</th>
					<td>
						<div>
							<p class="txt_center mt30"><strong class="fz20">2022.12</strong></p>
							<table class="tbl-01 type02 mb30">
								<colgroup>
									<col style="width:auto;">
									<col style="width:auto;">
									<col style="width:auto;">
									<col style="width:auto;">
									<col style="width:auto;">
									<col style="width:auto;">
									<col style="width:auto;">
								</colgroup>
								<thead>
									<tr>
										<th class="bg-sky">일</th>
										<th class="bg-sky">월</th>
										<th class="bg-sky">화</th>
										<th class="bg-sky">수</th>
										<th class="bg-sky">목</th>
										<th class="bg-sky">금</th>
										<th class="bg-sky">토</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<span>11</span>
										</td>
										<td>
											<span>12</span>
										</td>
										<td>
											<span>13</span>
										</td>
										<td>
											<span>14</span>
										</td>
										<td>
											<span>15</span>
										</td>
										<td>
											<span>16</span>
										</td>
										<td>
											<span>17</span>
										</td>
									</tr>
									<tr>
										<td>
											<span>18</span>
										</td>
										<td>
											<span>19</span>
										</td>
										<td>
											<span>20</span>
										</td>
										<td>
											<span>21</span>
										</td>
										<td>
											<span>22</span>
										</td>
										<td class="bg-green">
											<span>23</span>
											<p>분당<% IF BD_1223 = 1 THEN %><span>마감</span><% END IF%></p>
											<% IF BD_1223 = 0 THEN %>
											<a href="javascript:void(0);" onclick="reservCheck('12-23','분당')" class="r-btn-bk">예약</a>
											<% ELSE %>
											<a href="javascript:void(0);" onclick="waitingCheck('12-23','분당')" class="r-btn-wh">대기</a>
											<% END IF %>
											<strong id="12-23"></strong>
										</td>
										<td class="bg-green">
											<span>24</span>
											<p>분당<% IF BD_1224 = 1 THEN %><span>마감</span><% END IF%></p>
											<% IF BD_1224 = 0 THEN %>
											<a href="javascript:void(0);" onclick="reservCheck('12-24','분당')" class="r-btn-bk">예약</a>
											<% ELSE %>
											<a href="javascript:void(0);" onclick="waitingCheck('12-24','분당')" class="r-btn-wh">대기</a>
											<% END IF %>
											<strong id="12-24"></strong>
										</td>
									</tr>
									<tr>
										<td class="bg-pink">
											<span>25</span>
											<p>목동<% IF MD_1225 = 1 THEN %><span>마감</span><% END IF%></p>
											<% IF MD_1225 = 0 THEN %>
											<a href="javascript:void(0);" onclick="reservCheck('12-25','목동')" class="r-btn-bk">예약</a>
											<% ELSE %>
											<a href="javascript:void(0);" onclick="waitingCheck('12-25','목동')" class="r-btn-wh">대기</a>
											<% END IF %>
											<strong id="12-25"></strong>
										</td>
										<td class="bg-pink">
											<span>26</span>
											<p>목동<% IF MD_1226 = 1 THEN %><span>마감</span><% END IF%></span></p>
											<% IF MD_1226 = 0 THEN %>
											<a href="javascript:void(0);" onclick="reservCheck('12-26','목동')" class="r-btn-bk">예약</a>
											<% ELSE %>
											<a href="javascript:void(0);" onclick="waitingCheck('12-26','목동')" class="r-btn-wh">대기</a>
											<% END IF %>
											<strong id="12-26"></strong>
										</td>
										<td class="bg-yellow">
											<span>27</span>
											<p>대치<% IF DC_1227 = 1 THEN %><span>마감</span><% END IF%></p>
											<% IF DC_1227 = 0 THEN %>
											<a href="javascript:void(0);" onclick="reservCheck('12-27','대치')" class="r-btn-bk">예약</a>
											<% ELSE %>
											<a href="javascript:void(0);" onclick="waitingCheck('12-27','대치')" class="r-btn-wh">대기</a>
											<% END IF %>
											<strong id="12-27"></strong>
										</td>
										<td class="bg-yellow">
											<span>28</span>
											<p>대치<% IF DC_1228 = 1 THEN %><span>마감</span><% END IF%></p>
											<% IF DC_1228 = 0 THEN %>
											<a href="javascript:void(0);" onclick="reservCheck('12-28','대치')" class="r-btn-bk">예약</a>
											<% ELSE %>
											<a href="javascript:void(0);" onclick="waitingCheck('12-28','대치')" class="r-btn-wh">대기</a>
											<% END IF %>
											<strong id="12-28"></strong>
										</td>
										<td class="bg-yellow">
											<span>29</span>
											<p>대치<% IF DC_1229 = 1 THEN %><span>마감</span><% END IF%></p>
											<% IF DC_1229 = 0 THEN %>
											<a href="javascript:void(0);" onclick="reservCheck('12-29','대치')" class="r-btn-bk">예약</a>
											<% ELSE %>
											<a href="javascript:void(0);" onclick="waitingCheck('12-29','대치')" class="r-btn-wh">대기</a>
											<% END IF %>
											<strong id="12-29"></strong>
										</td>
										<td>
											<span>30</span>
										</td>
										<td>
											<span>31</span>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<!-- 2.기본정보 -->
		<h2>2.기본정보<strong class="red_txt">*</strong></h2>
		<table class="tbl-01">
			<colgroup>
				<col width="13%">
				<col width="auto">
				<col width="13%">
				<col width="auto">
			</colgroup>
			<tbody>
				<tr>
					<th class="bg-sky"><p class="tit-dot">성명</p></th>
					<td><input style="width:90%;" type="text" name="name" id="name" value="<%=gLoginMemName%>" ></td>
					<th class="border-l bg-sky"><p class="tit-dot">성별</p></th>
					<td class="input-radio">
						<label for="man"><input type="radio" name="gender" id="man" value="M" <% IF EC_SEX = "M" THEN %> checked <%end if%>>남</label>
						<label for="woman"><input type="radio" name="gender" id="woman" value="F" <% IF EC_SEX = "F" THEN %> checked <%end if%>>여</label>
					</td>
				</tr>
				<tr>
					<th class="bg-sky"><p class="tit-dot">학교명</p></th>
					<td>
						<div class="btn-wrap">
							<input type="text" name="SH_SCH_NM" id="SH_SCH_NM" value="<%=EC_SCH_NM%>" readonly onclick="MM_openBrWindow('/russel/member/popup_school.asp?kind=H', 'popup', 'width=500,height=380')" style="width:43%;" />
							<a href="javascript:;" onClick="MM_openBrWindow('/russel/member/popup_school.asp?kind=H','popup','width=500,height=380')">검색</a>
						</div>
					</td>
					<th class="bg-sky"><p class="tit-dot">생년월일</p></th>
					<td><input style="width:50%;" type="text" name="birth" id="birth" value="<%=EC_LOW_UNIV%>" maxlength="8"><span style="display:inline-block;margin-left:5px" class="mt5">예시)20020401</span></td>
				</tr>
				<tr>
					<th class="bg-sky"><p class="tit-dot">고3/재수생</p></th>
					<td class="input-radio">
						<label for="go3"><input type="radio" name="grade" id="go3" value="고3" <% IF EC_CLASS = "고3" THEN %> checked <%end if%> >고3</label>
						<label for="repeater"><input type="radio" name="grade" id="jaesu" value="재수생" <% IF EC_CLASS = "재수생" THEN %> checked <%end if%>>재수생</label>
					</td>
					<th class="border-l bg-sky"><p class="tit-dot">계열</p></th>
					<td>
						<div class="c-input-box">
							<div class="in-tel">
								<select style="width: 100px" name="department" id="department">
									<option value="">선택</option>
									<option value="인문" <% IF EC_LINE = "인문" THEN %> SELECTED <%end if%>>인문</option>
									<option value="자연" <% IF EC_LINE = "자연" THEN %> SELECTED <%end if%>>자연</option>
								</select>
							</div>
						</div>
					</td>
				</tr>
				<!-- 재수생 클릭시 오픈 -->
				<tr <% IF EC_CLASS = "고3" or EC_CLASS = "" THEN %> style="display:none;" <% end if %>class="n_student">
					<th class="bg-sky">전년도<br>정시지원 대학</th>
					<td colspan="3"><input type="text" name="last_univ" id="last_univ" value="<%=EC_LASTYEAR_UNIV%>" size="70" placeholder="전년도 지원 이력을 간략히 입력해주세요."></td>
				</tr>
				<tr>
					<th class="bg-sky"><p class="tit-dot">학생 핸드폰</p></th>
					<td>
						<div class="c-input-box">
							<div class="in-tel">
								<select name="cel_no1" id="cel_no1" style="width: 70px">
									<option value="010" <% If 	LEFT(EC_STU_MOBILE,3) = "010" Then %>selected <% End If %>>010</option>
									<option value="011" <% If 	LEFT(EC_STU_MOBILE,3) = "011" Then %>selected <% End If %>>011</option>
									<option value="016" <% If 	LEFT(EC_STU_MOBILE,3) = "016" Then %>selected <% End If %>>016</option>
									<option value="017" <% If 	LEFT(EC_STU_MOBILE,3) = "017" Then %>selected <% End If %>>017</option>
									<option value="018" <% If 	LEFT(EC_STU_MOBILE,3) = "018" Then %>selected <% End If %>>018</option>
									<option value="019" <% If 	LEFT(EC_STU_MOBILE,3) = "019" Then %>selected <% End If %>>019</option>
									<option value="070" <% If 	LEFT(EC_STU_MOBILE,3) = "070" Then %>selected <% End If %>>070</option>
									<option value="080" <% If 	LEFT(EC_STU_MOBILE,3) = "080" Then %>selected <% End If %>>080</option>
									<option value="없음">없음</option>
								</select>  <span>-</span>
								<input type="number" name="cel_no2" id="cel_no2" title="전화번호 가운데 자리" style="width: 85px;" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);" value="<%=MID(EC_STU_MOBILE,5,4)%>"> <span>-</span>
								<input type="number" name="cel_no3" id="cel_no3" title="전화번호 마지막 자리" style="width: 85px;" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);" value="<%=RIGHT(EC_STU_MOBILE,4)%>">
							</div>
						</div>
					</td>
					<th class="bg-sky"><p class="tit-dot">학생 이메일</p></th>
					<td>
						<div class="mt10 c-input-box">
							<div class="in-email">
								<input type="text" name="email_no1" id="email_no1" style="width:80px;" <% if mode = "modify" then %> value="<%=EC_STU_EMAIL(0)%>" <%else%> value="" <% end if %> title="이메일 첫번째 자리">
								<span>@</span>
								<input type="text" name="email_no3" id="email_no3" style="width:80px;height:30px;" <% if mode = "modify" then %> value="<%=EC_STU_EMAIL(1)%>"  <%else%> value="" <% end if %> title="이메일 마지막 자리" class="input-disabled" disabled="disabled">
								<select name="email_no2" id="email_no2">
									<option value="선택하세요" selected="">선택</option>
									<option value="naver.com"  <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "naver.com" Then %>selected <% End If %> <% end if %>>naver.com</option>
									<option value="hanmail.net" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "hanmail.net" Then %>selected <% End If %> <% end if %>>hanmail.net</option>
									<option value="daum.net" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "daum.net" Then %>selected <% End If %> <% end if %>>daum.net</option>
									<option value="nate.com" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "nate.com" Then %>selected <% End If %> <% end if %>>nate.com</option>
									<option value="yahoo.co.kr" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "yahoo.co.kr" Then %>selected <% End If %> <% end if %>>yahoo.co.kr</option>
									<option value="hotmail.com" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "hotmail.com" Then %>selected <% End If %> <% end if %>>hotmail.com</option>
									<option value="paran.com" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "paran.com" Then %>selected <% End If %> <% end if %>>paran.com</option>
									<option value="gmail.com" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "gmail.com" Then %>selected <% End If %> <% end if %>>gmail.com</option>
									<option value="hanmir.com" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "hanmir.com" Then %>selected <% End If %> <% end if %>>hanmir.com</option>
									<option value="dreamwiz.com" <% if mode = "modify" then %> <% If EC_STU_EMAIL(1) = "dreamwiz.com" Then %>selected <% End If %> <% end if %>>dreamwiz.com</option>
									<option value="" <% if mode = "modify" then %> <% If EC_LIKE_UNIV4 = "" Then %>selected <% End If %> <% end if %>>직접입력</option>
								</select>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<th class="bg-sky"><p class="tit-dot">학부모 핸드폰</p></th>
					<td>
						<div class="c-input-box">
							<div class="in-tel">
								<select name="cel2_no1" id="cel2_no1" style="width: 70px">
									<option value="010" <% If 	LEFT(EC_PAT_MOBILE,3) = "010" Then %>selected <% End If %>>010</option>
									<option value="011" <% If 	LEFT(EC_PAT_MOBILE,3) = "011" Then %>selected <% End If %>>011</option>
									<option value="016" <% If 	LEFT(EC_PAT_MOBILE,3) = "016" Then %>selected <% End If %>>016</option>
									<option value="017" <% If 	LEFT(EC_PAT_MOBILE,3) = "017" Then %>selected <% End If %>>017</option>
									<option value="018" <% If 	LEFT(EC_PAT_MOBILE,3) = "018" Then %>selected <% End If %>>018</option>
									<option value="019" <% If 	LEFT(EC_PAT_MOBILE,3) = "019" Then %>selected <% End If %>>019</option>
									<option value="070" <% If 	LEFT(EC_PAT_MOBILE,3) = "070" Then %>selected <% End If %>>070</option>
									<option value="080" <% If 	LEFT(EC_PAT_MOBILE,3) = "080" Then %>selected <% End If %>>080</option>
									<option value="없음">없음</option>
								</select> <span>-</span>
								<input type="number" name="cel2_no2" id="cel2_no2" title="전화번호 가운데 자리" style="width: 85px;" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);" value="<%=MID(EC_PAT_MOBILE,5,4)%>"> <span>-</span>
								<input type="number" name="cel2_no3" id="cel2_no3" title="전화번호 마지막 자리" style="width: 85px;" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="onlyNumber(event);" value="<%=RIGHT(EC_PAT_MOBILE,4)%>">
							</div>
						</div>
					</td>
					<th class="bg-sky"><p class="tit-dot">학부모 이메일</p></th>
					<td>
						<div class="c-input-box">
							<div class="in-email">
								<input type="text" name="email2_no1" id="email2_no1" <% if mode = "modify" then %> value="<%=EC_PAT_EMAIL(0)%>" <%else%> value="" <%end if%> style="width:80px;" title="이메일 첫번째 자리">
								<span>@</span>
								<input type="text" name="email2_no3" id="email2_no3" <% if mode = "modify" then %>  value="<%=EC_PAT_EMAIL(1)%>" <%else%> value="" <%end if%> style="width:80px;height:30px;" title="이메일 마지막 자리" class="input-disabled" disabled="disabled">
								<select name="email2_no2" id="email2_no2">
									<option value="선택하세요" selected="">선택</option>
									<option value="naver.com" <% if mode = "modify" then %> <% If EC_PAT_EMAIL(1) = "naver.com" Then %>selected <% End If %> <% End If %>>naver.com</option>
									<option value="hanmail.net" <% if mode = "modify" then %> <% If EC_PAT_EMAIL(1) = "hanmail.net" Then %>selected <% End If %> <% End If %>>hanmail.net</option>
									<option value="daum.net" <% if mode = "modify" then %> <% If EC_PAT_EMAIL(1) = "daum.net" Then %>selected <% End If %> <% End If %>>daum.net</option>
									<option value="nate.com" <% if mode = "modify" then %> <% If EC_PAT_EMAIL(1) = "nate.com" Then %>selected <% End If %> <% End If %>>nate.com</option>
									<option value="yahoo.co.kr" <% if mode = "modify" then %> <% If EC_PAT_EMAIL(1) = "yahoo.co.kr" Then %>selected <% End If %> <% End If %>>yahoo.co.kr</option>
									<option value="hotmail.com" <% if mode = "modify" then %> <% If EC_PAT_EMAIL(1) = "hotmail.com" Then %>selected <% End If %> <% End If %>>hotmail.com</option>
									<option value="paran.com" <% if mode = "modify" then %> <% If EC_PAT_EMAIL(1) = "paran.com" Then %>selected <% End If %> <% End If %>>paran.com</option>
									<option value="gmail.com" <% if mode = "modify" then %> <% If EC_PAT_EMAIL(1) = "gmail.com" Then %>selected <% End If %> <% End If %>>gmail.com</option>
									<option value="hanmir.com" <% if mode = "modify" then %> <% If EC_PAT_EMAIL(1) = "hanmir.com" Then %>selected <% End If %> <% End If %>>hanmir.com</option>
									<option value="dreamwiz.com" <% if mode = "modify" then %> <% If EC_PAT_EMAIL(1) = "dreamwiz.com" Then %>selected <% End If %> <% End If %>>dreamwiz.com</option>
									<option value="" <% if mode = "modify" then %> <% If EC_LIKE_UNIV5 = "" Then %>selected <% End If %> <% end if %>>직접입력</option>
								</select>
							</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<!-- 3.관심대학&학과 -->
		<h2>3.관심대학&amp;학과<strong class="red_txt">*</strong> <span class="fz14 red_txt">1개 군 이상 필수 입력</span></h2>
		<ul class="bottom-list">
			<li class="red_txt">관심대학 및 학과는 상담 시 참고자료로 활용하며, 군별 희망대학이 여러 개일 경우 [5.상담 희망 내용]에 추가 기재 바랍니다.</li>
		</ul>
		<table class="tbl-01">
			<colgroup>
				<col width="12%">
				<col width="*">
			</colgroup>
			<thead>
				<tr>
					<th class="bg-sky">모집 군</th>
					<th class="bg-sky">대학/학과명</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>가군</th>
					<td>
						<div class="input-wrap">
							<input type="text" title="대학/학과명" name="V_UNI_NM1" value="<%=EC_LIKE_UNIV1%>" readonly />
							<input type="hidden" name="V_UNI_CD1" value="" />
							<input type="hidden" name="V_MAJOR_CD1" value=""/>
							<a href="javascript:;" class="btn-search" onClick="window.open('/russel/entinfo/notice/2022/consult/popup_uni.asp?kind=M&return_nm=V_UNI_NM1&return_uni_cd=V_UNI_CD1&return_major_cd=V_MAJOR_CD1','popup','width=500,height=390')">검색</a>
						</div>
					</td>
				</tr>
				<tr>
					<th>나군</th>
					<td>
						<div class="input-wrap">
							<input type="text" title="대학/학과명" name="V_UNI_NM2" value="<%=EC_LIKE_UNIV2%>" readonly />
							<input type="hidden" name="V_UNI_CD2" value="" />
							<input type="hidden" name="V_MAJOR_CD2" value=""/>
							<a href="javascript:;" class="btn-search" onClick="window.open('/russel/entinfo/notice/2022/consult/popup_uni.asp?kind=M&return_nm=V_UNI_NM2&return_uni_cd=V_UNI_CD2&return_major_cd=V_MAJOR_CD2','popup','width=500,height=390')">검색</a>
						</div>
					</td>
				</tr>
				<tr>
					<th>다군</th>
					<td>
						<div class="input-wrap">
							<input type="text" title="대학/학과명" name="V_UNI_NM3"  value="<%=EC_LIKE_UNIV3%>" readonly />
							<input type="hidden" name="V_UNI_CD3" value="" />
							<input type="hidden" name="V_MAJOR_CD3" value=""/>
							<a href="javascript:;" class="btn-search" onClick="window.open('/russel/entinfo/notice/2022/consult/popup_uni.asp?kind=M&return_nm=V_UNI_NM3&return_uni_cd=V_UNI_CD3&return_major_cd=V_MAJOR_CD3','popup','width=500,height=390')">검색</a>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<!-- 4.지원성향 -->
		<h2>4.지원성향<strong class="red_txt">*</strong> <span class="fz14 red_txt">1개 이상 필수 입력</span></h2>
		<table class="tbl-01">
			<colgroup>
				<col width="23%">
				<col width="*">
			</colgroup>
			<tbody>
				<tr>
					<th class="bg-sky">지원성향</th>
					<td class="pro-apply">
						상향( <input type="text" name="up_apply" id="up_apply" value="<%=EC_APPLYNUM1%>" style="width: 50px;vertical-align: middle;" onkeydown="onlyNumber(event);"> )장 &nbsp; &nbsp;
						적정( <input type="text" name="mid_apply" id="mid_apply" value="<%=EC_APPLYNUM2%>" style="width: 50px;vertical-align: middle;" onkeydown="onlyNumber(event);"> )장 &nbsp; &nbsp;
						하향( <input type="text" name="down_apply" id="down_apply" value="<%=EC_APPLYNUM3%>" style="width: 50px;vertical-align: middle;" onkeydown="onlyNumber(event);"> )장
					</td>
				</tr>
			</tbody>
		</table>

		<!-- 5.상담 희망 내용 -->
		<h2>5.상담 희망 내용<strong class="red_txt">*</strong></h2>
		<div><textarea name="consult_content" id="consult_content" style="width:100%;" onkeyup="checkLength();" rows="5" placeholder="상담희망 내용을 구체적으로 입력해주세요. (최대 500자)"><%=EC_CONSULT_CONTENT%></textarea></div>
		<script>
			function checkLength(){
				if($('#consult_content').val().length >500){
					$('#consult_content').val($('#consult_content').val().substring(0,500));
					alert('최대 500자를 넘기셨습니다.');
				}
			}
		</script>
		<!-- 6.수능 성적표 첨부 -->
		<h2>6.수능 성적표 첨부<strong class="red_txt">*</strong></h2>
		<table class="tbl-01">
			<colgroup>
				<col width="23%">
				<col width="*">
				<col width="*">
				<col width="*">
			</colgroup>
			<tbody>
				<tr>
					<th class="bg-sky">수능성적표</th>
					<td colspan="3">
						<div class="file">
						<%
							If EC_LIKE_LINE <> "" Then
								If Instr(EC_LIKE_LINE, "FileServer") = 0 Then
									If isDevSvr Then
										download_file_main_cast = "https://devrussel.megastudy.net"
									Else
										download_file_main_csat = "https://russel.megastudy.net"
									End If
								Else
									download_file_main_csat = "https://file.megastudy.net"
								End If
							end if
						%>
							<input type="text" name="V_FILE_PATH" id="V_FILE_PATH" value="<%=EC_LIKE_LINE%>" readonly />
							<div id="cancle_file1" style="display:none"><a href="javascript:;" class="backUni" onclick="del_file1()">X</a></div>
							<span>파일찾기<input type="file" name="csat_file" id="csat_file" onChange="javascript:fileExtenstionCheck(this);" /></span>

							<% If EC_LIKE_LINE <> "" Then %>
							<a href="<%=download_file_main_csat & EC_LIKE_LINE%>" download class="file-down">파일다운로드</a>
							<a href="javascript:;" class="backUni" onclick="del_file1()">X</a>
							<% end if %>
						</div>
						<input type="hidden" name="csat_change_num" value="0">
					</td>
				</tr>
			</tbody>
		</table>
		<ul class="fz14">
			<li>* jpg, png, pdf, bmp, ZIP, PDF 파일로 첨부 해 주시기 바랍니다. (용량 2MB 미만)</li>
		</ul>
		<!-- 7. 내신 성적표 첨부 -->
		<h2>7.내신 성적표 첨부(선택)</h2>
		<table class="tbl-01">
			<colgroup>
				<col width="23%">
				<col width="*">
				<col width="*">
				<col width="*">
			</colgroup>
			<tbody>
				<tr>
					<th class="bg-sky">내신성적표</th>
					<td colspan="3">
						<div class="file">
						<%
							If EC_POS_REGION <> "" Then
								If Instr(EC_POS_REGION, "FileServer") = 0 Then
									If isDevSvr Then
										download_file_main_susi = "https://devrussel.megastudy.net"
									Else
										download_file_main_susi = "https://russel.megastudy.net"
									End If
								Else
									download_file_main_susi = "https://file.megastudy.net"
								End If
							end if
						%>
							<input type="text" name="V_FILE_PATH02" id="V_FILE_PATH02" value="<%=EC_POS_REGION%>" readonly /><div id="cancle_file2" style="display:none"><a href="javascript:;" class="backUni"  onclick="del_file2()">X</a></div>
							<div id="cancle_file2" style="display:none"><a href="javascript:;" class="backUni"  onclick="del_file2()">X</a></div>
							<span>파일찾기<input type="file" name="susi_file" id="susi_file" onChange="javascript:fileExtenstionCheck02(this);" /></span>

							<% If EC_POS_REGION <> "" Then %>
							<a href="<%=download_file_main_susi & EC_POS_REGION%>" download class="file-down">파일다운로드</a>
							<a href="javascript:;" class="backUni"  onclick="del_file2()">X</a>
							<% End If %>
						</div>
						<input type="hidden" name="susi_change_num" value="0">
					</td>
				</tr>
			</tbody>
		</table>
		<ul class="fz14">
			<li>* 서울대학교 정시 지원 희망하시는 경우, 내신 성적표를 반드시 첨부해주시기 바랍니다.</li>
			<li>* jpg, png, pdf, bmp, ZIP, PDF 파일로 첨부 해 주시기 바랍니다. (용량 2MB 미만)</li>
		</ul>
		<!-- 개인정보 취급방침에 대한 동의 -->
		<h2>개인정보 취급방침에 대한 동의 <span class="fz18 red_txt">(필수)</span><input type="checkbox" name="agree_1" id="agree_1" value="Y" <% if EC_AGREE1_YN = "Y" then %> checked <%end if%> ></h2>
		<table class="tbl-01 border">
			<colgroup>
				<col width="*">
				<col width="*">
			</colgroup>
			<thead>
				<tr class="low">
					<th>수집항목</th>
					<th>수집목적</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="txt_center">계열, 성명, 성별, 생년월일, 휴대폰 번호, 이메일,<br>학교, 학년, 학교생활기록부, 및 기타 제출서류 관련사항</td>
					<td>
						(1) 서비스 제공 : 컨설팅 진행을 위한 기본 분석 자료로 활용 <br>
						(2) 고객 관리 : 컨설팅 완료 후 만족도 조사를 위한 연락처 활용
					</td>
				</tr>
			</tbody>
		</table>
		<ul class="fz14">
			<li>※ 위의 개인정보 수집·이용에 대한 동의를 거부할 권리가 있습니다. 단, 거부 시 정시 컨설팅 신청에 제한을 받을 수 있습니다.</li>
			<li>※ 보유기간은 수집 후 1년 동안 보유하며 이후 파기하는 것을 원칙으로 합니다. </li>
		</ul>
		</form>

		<% IF applyStatus = 0 THEN %>
		<!-- btn -->
		<div class="pop-btn-wrap">
			<a href="javascript:finish();" class="btn-green">상담 예약 신청 완료</a>
		</div>
		<% end if %>

		<% IF applyStatus > 0 AND curYmdhmin <= 202212170000 THEN %>
		<!-- D: 11/17(목)~12/16(금)까지 최초 신청에 한해 버튼 노출 -->
		<div class="pop-btn-wrap">
			<a href="javascript:cancle();" class="btn-white">상담 취소</a>
			<a href="javascript:finish();" class="btn-gray">수정 완료</a>
		</div>
		<% END IF %>

		<% IF applyStatus > 0 AND curYmdhmin >= 202212170000 then %>
		<!-- D: 12/17(토)부터 노출 -->
		<div class="pop-btn-wrap">
			<a href="javascript:void(0);" onclick="winClose()" class="btn-black">확인</a>
		</div>
		<% end if %>
		<!-- //btn -->
	</div>
	<!-- //pop-info -->
</div>
<!-- //popup -->
<script src="./ui.js"></script>
</body>
</html>

<script type="text/javascript" src="/russel/public/Js/Util.js"></script>
<script>

	window.onload = function() {
		<% if applyStatus > 0  then %>
			$(".bg-green a").hide();
			$(".bg-pink  a").hide();
			$(".bg-yellow a").hide();

			<%IF EC_AGREE2_YN = "1" THEN%>
			$("#"+'<%=EC_HOPE_DT%>').text("예약완료");
			<%ELSE%>
			$("#"+'<%=EC_HOPE_DT%>').text("대기완료");
			<%END IF%>

		<% end if %>
	}

	function inputHSCH(code,type,name){
		var f = document.form1;
		f.SH_SCH_NM.value = name;
	}

	function finish() {
		var f = document.form1;

		if($.trim($('#mem_status_apply').val()).length < 1 && $.trim($('#mem_status_relay').val()).length < 1 ){
			alert('컨설팅 희망일을 선택해주세요.'); return;
		}

		if($.trim($('#SH_SCH_NM').val()).length < 1){
			 alert('학교명을 입력해주세요.'); $('#SH_SCH_NM').focus(); return;
		}

		if($.trim($('#birth').val()).length < 1){
			 alert('생년월일을 입력해주세요.'); $('#birth').focus(); return;
		}

		if($.trim($('#birth').val()).length < 8){
			 alert('생년월일은 8글자로 입력해주세요.\n예시)20030101'); $('#birth').focus(); return;
		}

		if($('input[name="grade"]:checked').val() == undefined){
			alert('학년을 입력하세요.'); $('input[name=grade]').focus(); return;
		}


		if (jQuery.trim($('#department').val()).length < 1) {
			alert('계열을 입력하세요.');
			$('#department').focus();
			return false;
        }

		if($('input[name="grade"]:checked').val() == "재수생"){
			if($.trim($('input[name=last_univ]').val()).length < 1){
			 	alert('재수생의 경우,전년도 지원 대학&학과는 필수 입력입니다.'); $('input[name=last_univ]').focus(); return;
			}
		}

		if($.trim($('#cel_no1').val()) != "없음"){
		    if($.trim($('#cel_no2').val()).length < 1 || $.trim($('#cel_no3').val()).length < 1){
			   alert('학생 연락처를 입력해주세요.'); $('#cel_no2').focus(); return;
		    }
		}

		if($.trim($('#email_no1').val()).length < 1 || $.trim($('#email_no2').val()) == "선택하세요"){
			alert('학생 이메일을 입력해주세요.'); $('#email_no1').focus(); return;
		}
		if($.trim($('#email_no2').val()) == ""){
			if($.trim($('#email_no3').val()).length < 1){
				alert('학생 이메일을 입력해주세요.'); $('#email_no3').focus(); return;
			}
		}

		if($.trim($('#cel2_no1').val()) != "없음"){
		    if($.trim($('#cel2_no2').val()).length < 1 || $.trim($('#cel2_no3').val()).length < 1){
			  alert('학부모 연락처를 입력해주세요.'); $('#cel2_no2').focus(); return;
		    }
		}

		if($.trim($('#email2_no1').val()).length < 1 || $.trim($('#email2_no2').val()) == "선택하세요"){
			alert('학부모 이메일을 입력해주세요.'); $('#email2_no1').focus(); return;
		}
		if($.trim($('#email2_no2').val()) == ""){
			if($.trim($('#email2_no3').val()).length < 1){
				alert('학부모 이메일을 입력해주세요.'); $('#email2_no3').focus(); return;
			}
		}

		if($.trim($('input[name=V_UNI_NM1]').val()).length < 1){
			 alert('관심대학 및 학과 1순위는 필수 입력입니다.'); $('input[name=V_UNI_NM1]').focus(); return;
		}

		if($.trim($('input[name=up_apply]').val()).length < 1 && $.trim($('input[name=mid_apply]').val()).length < 1 && $.trim($('input[name=down_apply]').val()).length < 1 ){
			 alert('지원성향을 1개 이상 입력해주세요.'); return;
		}

		if($.trim($('#consult_content').val()).length < 1){
			alert('상담 희망내용을 입력해주세요.'); $('#consult_content').focus(); return;
		}

		if($.trim($('input[name=V_FILE_PATH]').val()).length < 1){
			alert('수능성적표 파일을 첨부해주세요.'); $('#V_FILE_PATH').focus(); return;
		}

		if( $("input[name=agree_1]:checkbox:checked").length < 1){
			alert('개인정보수집 및 활용에 대한 동의에 동의해주셔야 상담 신청이 접수가 가능합니다.'); $('#agree1').focus(); return;
		}

		document.form1.submit();
	}

	function del_file1(){

		form1.V_FILE_PATH.value='';
		form1.csat_change_num.value='2';
		$("#cancle_file1").hide();

	}

	function del_file2(){

		form1.V_FILE_PATH02.value='';
		form1.susi_change_num.value='2';
		$("#cancle_file2").hide();

	}

	// 재수생선택시 오픈
	$("input[name='grade']").change(function(){
		if($("input[name='grade']:checked").val() == '재수생'){
			$('.n_student').show();
		}
		else{
			$('.n_student').hide();
		}
	});

	// 수능 성적표 파일첨부
	function fileExtenstionCheck(file) {
		var _filename = $(file).val();
		var _fileLen = _filename.length;
		var _lastDot = _filename.lastIndexOf('.');

		if (_filename == "") return;

		// 확장자 명만 추출한 후 소문자로 변경
		var _fileExt = _filename.substring((_lastDot + 1), _fileLen).toLowerCase();

		if (_fileExt != "jpg" && _fileExt != "png" && _fileExt != "bmp" && _fileExt != "ZIP" && _fileExt != "PDF" && _fileExt != "pdf" && _fileExt != "JPG" && _fileExt != "PNG" && _fileExt != "BMP" && _fileExt != "zip") {
			alert("jpg, png, pdf, bmp, ZIP, PDF 파일로 첨부해 주시기 바랍니다.");
			return;
		}

		// 사이즈체크
        var maxSize  = 2 * 1024 * 1024
        var fileSize = 0;

  		// 브라우저 확인
  		var browser=navigator.appName;

  		// 익스플로러일 경우
  		if (browser=="Microsoft Internet Explorer")
  		{
    		var oas = new ActiveXObject("Scripting.FileSystemObject");
    		fileSize = oas.getFile( file.value ).size;
  		}
  		// 익스플로러가 아닐경우
  		else
  		{
    		fileSize = file.files[0].size;
  		}

		// alert("파일사이즈 : "+ fileSize +", 최대파일사이즈 : 2MB");

        if(fileSize > maxSize)
        {
            alert("첨부파일 사이즈는 2MB 이내로 등록 가능합니다.    ");
            return;
        }

		$("#cancle_file1").show();
		form1.csat_change_num.value = '1';
		form1.V_FILE_PATH.value=$(file).val();
	}

	// 내신 성적표 파일첨부
	function fileExtenstionCheck02(file) {
		var _filename02 = $(file).val();
		var _fileLen02 = _filename02.length;
		var _lastDot02 = _filename02.lastIndexOf('.');

		if (_filename02 == "") return;

		// 확장자 명만 추출한 후 소문자로 변경
		var _fileExt = _filename02.substring((_lastDot02 + 1), _fileLen02).toLowerCase();

		if (_fileExt != "jpg" && _fileExt != "png" && _fileExt != "bmp" && _fileExt != "ZIP" && _fileExt != "PDF" && _fileExt != "pdf" && _fileExt != "JPG" && _fileExt != "PNG" && _fileExt != "BMP" && _fileExt != "zip") {
			alert("jpg, png, pdf, bmp, ZIP, PDF 파일로 첨부해 주시기 바랍니다.");
			return;
		}

		// 사이즈체크
        var maxSize  = 2 * 1024 * 1024
        var fileSize = 0;

  		// 브라우저 확인
  		var browser=navigator.appName;

  		// 익스플로러일 경우
  		if (browser=="Microsoft Internet Explorer")
  		{
    		var oas = new ActiveXObject("Scripting.FileSystemObject");
    		fileSize = oas.getFile( file.value ).size;
  		}
  		// 익스플로러가 아닐경우
  		else
  		{
    		fileSize = file.files[0].size;
  		}

		// alert("파일사이즈 : "+ fileSize +", 최대파일사이즈 : 2MB");

        if(fileSize > maxSize)
        {
            alert("첨부파일 사이즈는 2MB 이내로 등록 가능합니다.    ");
            return;
        }

		$("#cancle_file2").show();
		form1.susi_change_num.value = '1';
		form1.V_FILE_PATH02.value=$(file).val();
	}


	// 예약확인,취소
	function reservCheck(date,place) {
		if (confirm("예약하시겠습니까?") == true){    //확인

			$(".bg-green a").hide();
			$(".bg-pink  a").hide();
			$(".bg-yellow a").hide();

			$("#"+date).text("예약완료");
			form1.mem_status_apply.value = date;
			form1.consult_place.value = place;

		}else{   //취소
			return false;
		}

	}
	// 대기확인,취소
	function waitingCheck(date,place) {
		if (confirm("대기하시겠습니까?") == true){    //확인
			$(".bg-green a").hide();
			$(".bg-pink  a").hide();
			$(".bg-yellow a").hide();

			$("#"+date).text("대기완료");
			form1.mem_status_relay.value = date;
			form1.consult_place.value = place;

		}else{   //취소
			return false;
		}
	}


	// 학생 이메일
	$('#email_no2').change(function(){

		$("#email_no2 option:selected").each(function () {
			if($(this).val() == ""){
				$("#email_no3").attr("disabled",false); //활성화
			}else{
				var email = $("#email_no2").val();

				$("#email_no3").val(email);
				$("#email_no3").attr("disabled",true); //활성화
			}
		});
	});

	//학부모 이메일
	$('#email2_no2').change(function(){
		$("#email2_no2 option:selected").each(function () {
			if($(this).val() == ""){
				$("#email2_no3").attr("disabled",false); //활성화
			}else{
				var email = $("#email2_no2").val();
				$("#email2_no3").val(email);
				$("#email2_no3").attr("disabled",true); //활성화
			}
		});
	});


	$(function(){
		// 학생 이메일
		$('#email_no2').change(function(){
			$("#email_no2 option:selected").each(function () {
				var email = $("#email_no2").val();
				alert(email)
				$("#email_no3").val(email);
			});
		});
		//학부모 이메일
		$('#email2_no2').change(function(){
			$("#email2_no2 option:selected").each(function () {
				var email = $("#email2_no2").val();
				$("#email2_no3").val(email);
			});
		});
	});

	function cancle(){

		form1.mode.value = 'cancle';

		if (confirm("상담을 취소하시겠습니까?") == true){    //확인
			document.form1.submit();
		}else{   //취소
			return false;
		}

	}

	function onlyNumber() {
        var key;
        var keychr;

        key = event.keyCode
        keychr = String.fromCharCode(key);

        if ((key == 8) || (key == 9) || (key == 13) || (key == 37) || (key == 39) || (key == 46) || (key == 116) || (key == 95) || (key == 96) || (key == 97) || (key == 98)
            || (key == 99) || (key == 100) || (key == 101) || (key == 102) || (key == 103) || (key == 104) || (key == 105)) {
            return true;
        } else if ((("0123456789").indexOf(keychr) > -1)) {
            return true;
        } else {
            event.returnValue = false;
            alert("숫자만 입력 가능합니다.");
        }
    }

	function maxLengthCheck(object){
        if (object.value.length > object.maxLength){
            object.value = object.value.slice(0, object.maxLength);
        }
    }

	// 창닫기
	function winClose() {
		window.open('', '_self').close();
	}
</script>
