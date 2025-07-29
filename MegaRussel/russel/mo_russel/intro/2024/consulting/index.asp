<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->
<%
    
    If gLoginOk = True Then
        strSql = ""
        strSql = strSql &" SELECT count(*) as cnt "
        strSql = strSql &" FROM MR_EVT_CONSULT2020 WITH(NOLOCK) "
        strSql = strSql &" WHERE EC_TYPE = 'C' "
        strSql = strSql & " 	AND EC_YEAR = 2024 " ' 2024 학년도
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

%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual = "/inc/head.asp" -->
	<link rel="stylesheet" type="text/css" href="./style.css" media="all" />
</head>
<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2024 정시 지원 컨설팅 온라인 접수</strong>
</h2>
<section class="sub-wrap consulting-wrap">
    <div class="visual">
        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/visual.jpg" alt="" /></p>
        <div class="info-box">
            <div class="info-txt">
                <dl>
                    <dt>신청 기간</dt>
                    <dd>2023.11.22(수) 10:00 ~ <br> <span class="txt-red">선착순 신청 마감 시까지</span></dd>
                </dl>
                <dl>
                    <dt>컨설팅 일정</dt>
                    <dd>2023.12.23(토) ~ 2024.01.01(월)</dd>
                </dl>
            </div>
            <div class="info-btn">
				<!-- D: 미로그인시 -->
				<a href="javascript:void(0);" class="btn-m-gray" onclick="fn_qnaGo()">온라인 문의</a>

                <% If applyStatus = 0 then %>
				<a href="javascript:void(0);" class="btn-m-blue" onclick="fn_eventGo()">온라인 접수 바로가기</a> 
				<% else %>
                <a href="javascript:void(0);" class="btn-m-blue" onclick="fn_historyGo()">온라인 접수 내역 확인</a> 
                <% end if %>

                <!-- D: 미로그인시 -->
				<!-- <a href="javascript:void(0);" class="btn-m-gold" onclick="alert('로그인 후 이용 가능합니다.')">온라인 접수 바로가기</a> -->
				<!-- D: 로그인시 미접수자의 경우 노출-->
				<!-- <a href="./popup.asp" class="btn-m-gold">온라인 접수 바로가기</a> -->
				<!-- D: 로그인시 온라인접수 '접수완료','대기완료'자의 경우 노출 -->
				<!-- <a href="javascript:void(0);" class="btn-m-gold">온라인 접수 내역 확인</a> -->
                <!-- 12/22(금) 24시 이후 접근 시 신청이력과 무관하게 얼럿 표출하여 신청 불가하도록 처리 “마감 되었습니다.” -->
            </div>
        </div>
    </div>
    <div class="cont01">
        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/cont01.jpg" alt="왜 러셀 입시전략연구소를 선택해야 할까요?" /></p>
    </div>
    <!-- cont02 -->
    <div class="cont02">
        <div class="c-box01">
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/cont02_stit01.png" alt="6다계 process의 컨설팅" /></p>
            <div class="inner">
                <div class="roll-swiper swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/cont02_img01.png" alt="모의고사분석" /></div>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/cont02_img02.png" alt="학과검토" /></div>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/cont02_img03.png" alt="전략수립" /></div>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/cont02_img04.png" alt="전략제시" /></div>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/cont02_img05.png" alt="포폴제공" /></div>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/cont02_img06.png" alt="call 진행" /></div>
                        </div>
                    </div>
                    <div class="roll-pager pager"></div>
                </div>
            </div>
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/cont02_stit_02.png" alt="최상의 정시 지원 전략을 도출합니다" /></p>
        </div>
    </div>
    <!-- //cont02 -->

    <!-- cont03 -->
    <div class="cont03">
        <div class="c-box01">
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/cont03_stit01.png" alt="미래를 꿰뚫는 대입 전문 컨설턴트" /></p>
            <ul class="top-box">
                <li>
                    <div class="img">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/t_img01.png" alt="이상연 소장" />                     
                    </div>
                </li>
                <li>
                    <div class="img">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/t_img02.png" alt="김광석 부소장" />  
                    </div>
                </li>
            </ul>
            <div class="consult-swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/st_img01.jpg" alt="임광현" /> 
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/st_img02.jpg" alt="박일" /> 
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/st_img03.jpg" alt="고성호" /> 
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/st_img04.jpg" alt="안중수" /> 
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/st_img05.jpg" alt="박규한" /> 
                        </div>
                    </div>                    
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/st_img06.jpg" alt="이서두" /> 
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/st_img07.jpg" alt="김형석" /> 
                        </div>
                    </div>                    
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/st_img08.jpg" alt="서승환" /> 
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/st_img09.jpg" alt="정동환" /> 
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/st_img10.jpg" alt="나동현" /> 
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/st_img11.jpg" alt="채성길" /> 
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/st_img12.jpg" alt="최정길" /> 
                        </div>
                    </div>
                </div>
            </div>
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/cont03_stit02.jpg" alt="최선의 수시 지원 전략을 제시해 드립니다." /></p>
        </div>
    </div>
    <!-- //cont03 -->
    <!-- cont04 -->
    <div class="cont04">
        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/cont04_tit.jpg" alt="정시 지원 컨설팅 안내" /></p>
        <div class="inner">
            <table class="tbl-type01">
                <colgroup>
                    <col style="width:30%">
                    <col style="width:auto">
                </colgroup>
                <tbody>
                    <tr>
                        <th>컨설팅 장소</th>
                        <td>
                            <ul class="c-list">
                                <li>
                                    러셀 대치 <a href="https://mrusseldc.megastudy.net/russel/info/location.asp" target="_blank" class="txt-blue">오시는 길 &gt</a>
                                </li>
                                <li>
                                    러셀 목동 <a href="https://mrusselmd.megastudy.net/russel_mokdong/info/location.asp" target="_blank" class="txt-blue">오시는 길 &gt</a>
                                </li>
                                <li>
                                    러셀 분당 <a href="https://mrusselbd.megastudy.net/russel_bundang/info/location.asp" target="_blank" class="txt-blue">오시는 길 &gt</a>
                                </li>
                                <li>
                                    러셀 대구 <a href="https://mrusseldg.megastudy.net/russel_dg/info/location.asp" target="_blank" class="txt-blue">오시는 길 &gt</a>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>컨설팅 일정</th>
                        <td>2023.12.23(토) ~ 2024.01.01(월) <br>
                            <span class="txt-red f12">
                                *상담은 아래 장소 및 일자에만 진행되며,<br> 상담 시간은 유선 안내 시 조정합니다.
                            </span><br>
                            <table class="tbl-01 type02">
                                <colgroup>
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th>12/17 <br> (일)</th>
                                        <th>12/18<br>(월)</th>
                                        <th>12/19<br>(화)</th>
                                        <th>12/20<br>(수)</th>
                                        <th>12/21<br>(목)</th>
                                        <th>12/22<br>(금)</th>
                                        <th>12/23<br>(토)</th>
                                    </tr>
                                    <tr>
                                        <td colspan="6">미진행</td>
                                        <td class="bg-yellow">대치</td>
                                    </tr>
                                    <tr>
                                        <th>12/24<br>(일)</th>
                                        <th>12/25<br>(월)</th>
                                        <th>12/26<br>(화)</th>
                                        <th>12/27<br>(수)</th>
                                        <th>12/28<br>(목)</th>
                                        <th>12/29<br>(금)</th>
                                        <th>12/30<br>(토)</th>
                                    </tr>
                                    <tr>
                                        <td class="bg-green">분당</td>
                                        <td class="bg-blue">대구</td>
                                        <td class="bg-blue">대구</td>
                                        <td class="bg-pink">목동</td>
                                        <td class="bg-yellow">대치</td>
                                        <td class="bg-pink">목동</td>
                                        <td class="bg-green">분당</td>
                                    </tr>
                                    <tr>
                                        <th>12/31<br>(일)</th>
                                        <th>1/1<br>(월)</th>
                                        <th colspan="5">1/2<br>(화)</th>
                                    </tr>
                                    <tr>
                                        <td class="bg-yellow">대치</td>
                                        <td class="bg-yellow">대치</td>
                                        <td colspan="5">미진행</td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <th>소요시간</th>
                        <td>90분</td>
                    </tr>
                    <tr>
                        <th>제출 서류</th>
                        <td>
                            필수 제출 서류: 2024학년도 대학수학능력시험(수능) 성적표 <br>
                            선택 제출 서류: 학교생활기록부(학교생활기록부 반영 대학 지원 희망 등 필요시 제출) <br>
                            <span class="txt-red f12">*제출 서류는 신청시 첨부 또는  <a href="mailto:rsc@megastudy.net" class="txt-blue">rsc@megastudy.net</a>으로 보내주시기 바랍니다.</span>
                        </td>
                    </tr>
                    <tr>
                        <th>비용 안내</th>
                        <td><strong>450,000원</strong></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/consulting/cont04_tit02.jpg" alt="정시 지원 컨설팅 신청 절차" /></p>
        <div class="inner">
            <ul class="r-step">
                <li>
                    <div>STEP<br>1</div>
                    <p>
                        온라인 페이지 <strong><span class="txt-red">신청</span> 진행</strong><br>
                        <span class="f12">(2023.11/20(월) 10:00~)</span><br>
                    </p>
                </li>
                <li>
                    <div>STEP<br>2</div>
                    <p>
                        예약접수 내용 확인 후 <strong class="txt-red">안내 전화</strong><br>
                        <span class="f12 txt-red">(주말/공휴일 제외 1~3일 이내)</span><br>
                    </p>
                </li>
                <li>
                    <div>STEP<br>3</div>
                    <p>
                        <strong class="txt-red">결제</strong> 진행 및 추가 서류 제출 <br>
                        <span class="txt-red f12">(안내전화 후 2일 이내 결제 必)</span><br>
                        <span class="txt-blue f12">제출: rsc@megastudy.net</span>
                    </p>
                </li>
                <li>
                    <div>STEP<br>4</div>
                    <p>
                        최종 확인 후 컨설팅<strong class="txt-red">신청</strong> <br>
                        <strong class="f12" style="color:#d77676">(안내문자 발송)</strong>
                    </p>
                </li>
            </ul>
        </div>
        <p class="txt-red c-tit"><strong>※ 컨설팅 신청 전 반드시 확인해 주세요!</strong></p>
        <ul class="list-dot">
            <li>정시 지원 컨설팅은 선착순 신청으로 온라인 페이지에서만 신청 가능하며, 이외 유선 신청 등은 불가합니다. <br>
                (선착순 마감 시 대기 접수를 진행하며, 상황에 따라 예약 및 신청이 조기 종료될 수 있습니다.)
            </li>
            <li>상담은 학원 현장에서 대면으로 이루어지며, 비대면 상담은 진행하지 않습니다.</li>
            <li>고른기회(사회통합, 차상위, 한부모 등), 농어촌, 예체능, 특성화고교전형 등 특수전형과 전문대 상담은 진행하지 않습니다.</li>
            <li class="txt-red">결제 및 추가 서류 제출은 안내문자 발송 후 2일 이내 진행되어야 하며, 기간 내 미결제 및 미제출 시 신청이 취소될 수 있습니다.
                &gt; 제출 방법: 추가 제출 필요한 서류는 <a href="mailto:rsc@megastudy.net" class="txt-blue">(rsc@megastudy.net)</a> 좌측 이메일 주소로 보내주시기 바랍니다.
            </li>
            <li class="txt-red">상담일로부터 2일(48시간) 미만 남은 경우 취소 요청 시, 취소 및 환불은 불가합니다.</li>
            <li>신청내역 수정 및 추가 내용이 있는 경우, 수정 및 추가 내용을 <a href="mailto:rsc@megastudy.net" class="txt-blue">rsc@megastudy.net</a> 으로 보내주시기 바랍니다. <br>
                (최소 상담 2일 전까지 보낼 시 반영 가능하며, 이후 상담 하루 전 혹은 당일은 반영이 불가할 수 있습니다.)
            </li>
            <li>
                <strong class="txt-red">신청/대기 취소 요청 및 기타 컨설팅 관련 문의</strong>는 아래
                <a href="javascript:void(0);" onclick="fn_qnaGo()" class="link-btn">온라인 문의 &gt; </a>에서 학원 선택  &gt; ‘입시전략연구소’ 선택 후 문의 
                또는 02-3498-4388(평일 10:00~18:00 운영, 주말 불가)로 문의주시기 바랍니다..           
            </li>
        </ul>
    </div>
    <!-- //cont04 -->

</section>

<!-- #include virtual = "/inc/footer.asp" -->

<script src="./ui.js"></script>
<script>
	
	// 팝업창
	var popupWidth = 'auto';
	var popupX = (window.screen.width / 2) - (popupWidth / 2);
	
	// 온라인 문의 팝업
	function fn_qnaGo() {
		
		<% If gLoginOk = false Then %>
			alert("로그인 후 이용가능합니다.");
			location.href="/member/login.asp?rtnUrl=%2Fboard%2Fconsult_write%2Easp?mode=consult_qna"
			return;
		<% else %>
			window.open('/board/consult_write.asp?mode=consult_qna')
		<% End If %>

	}
	
	// 온라인 접수 팝업
	function fn_eventGo() {
		<% If gLoginOk = false Then %>
			alert("로그인 후 이용가능합니다.");
			location.href="/member/login.asp?rtnUrl=<%=Server.URLEncode(Request.Servervariables("PATH_INFO"))%>"
			return;
		<% else %>
			window.open('./popup.asp','online_qna','scrollbars=yes,width=810,height=800,top=0,left='+ popupX);
		<% End If %>
	}
    function fn_historyGo(){
		<% If gLoginOk = false Then %>
			alert("로그인 후 이용가능합니다.");
			location.href="/member/login.asp?rtnUrl=%2Fintro%2F2023%2Fconsulting_susi%2Findex%2Easp%3F"
			return;
		<% Elseif applyStatus < 1 Then %>
			alert("온라인 접수를 신청해주세요.");
			return;
		<% Else %>
            alert("신청 내역 확인 후 별도 연락드릴 예정입니다.");
			// window.open('./popup.asp','online_qna','scrollbars=yes,width=1200,height=1500,top=0');
		<% End If %>
	}


</script>
</body>
</html>