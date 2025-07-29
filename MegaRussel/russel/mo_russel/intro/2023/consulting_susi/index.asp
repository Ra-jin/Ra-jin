<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->
<%
    
    If gLoginOk = True Then
        strSql = ""
        strSql = strSql &" SELECT count(*) as cnt "
        strSql = strSql &" FROM MR_EVT_SUSI_CONSULT2024 WITH(NOLOCK) "
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
    <strong class="tit">2024 수시 지원 컨설팅</strong>
</h2>
<section class="sub-wrap consulting-wrap">
    <div class="visual">
        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/visual.jpg" alt="수시 지원 컨설팅" /></p>
        <div class="info-box">
            <div class="info-txt">
                <dl>
                    <dt>예약 접수</dt>
                    <dd>2023.07.17(월요일) 10시부터 <br> <span class="txt-red">선착순 온라인 접수</span></dd>
                </dl>
                <dl>
                    <dt>컨설팅 일정</dt>
                    <dd>2023.07.29(토요일) ~ 09.03(일요일)</dd>
                </dl>
            </div>
            <div class="info-btn">
                <div>
                    <a href="javascript:void(0);" class="btn-blue" onclick="fn_eventGo()">온라인 접수 바로가기</a> 
                </div>
                <div>
                    <a href="javascript:void(0);" class="btn-wb" onclick="fn_historyGo()">온라인 접수 내역 확인</a> 
                    <a href="javascript:void(0);" class="btn-wb" onclick="fn_qnaGo()">온라인 문의</a>
                </div>
            </div>
        </div>
    </div>
    <!-- cont01 -->
    <div class="cont01">
        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/cont01.jpg" alt="왜 러셀 입시전략연구소를 선택해야 할까요?" /></p>
    </div>
    <!-- //cont01 -->
    <!-- cont02 -->
    <div class="cont02">
        <div class="c-box01">
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/cont02_stit01.png" alt="6다계 process의 컨설팅" /></p>
            <div class="inner">
                <div class="roll-swiper swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/cont02_img01.png" alt="모의고사분석" /></div>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/cont02_img02.png" alt="학과검토" /></div>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/cont02_img03.png" alt="전략수립" /></div>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/cont02_img04.png" alt="전략제시" /></div>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/cont02_img05.png" alt="포폴제공" /></div>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/cont02_img06.png" alt="call 진행" /></div>
                        </div>
                    </div>
                    <div class="roll-pager pager"></div>
                </div>
            </div>
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/cont02_stit_02.png" alt="최상의 수시 지원 전략을 도출합니다" /></p>
        </div>
    </div>
    <!-- //cont02 -->
    <!-- cont03 -->
    <div class="cont03">
        <div class="c-box01">
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/cont03_stit01.png" alt="미래를 꿰뚫는 대입 전문 컨설턴트" /></p>
            <ul class="top-box">
                <li>
                    <div class="img">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/t_img01.png" alt="이상연 소장" /> 
                        <div class="txt-Box">
                            <p>대표 <span class="txt-white">컨설턴트</span></p>
                            <p class="txt-white"><strong>이상연 소장</strong></p>
                        </div>                       
                    </div>
                </li>
                <li>
                    <div class="img">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/t_img02.png" alt="김광석 부소장" /> 
                        <div class="txt-Box">
                            <p>대표 <span class="txt-white">컨설턴트</span></p>
                            <p class="txt-white"><strong>김광석 부소장</strong></p>
                        </div>   
                    </div>
                </li>
            </ul>
            <div class="consult-swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/st_img11.jpg" alt="" /> 
                            <div class="txt-Box">
                                <p>수석 <span class="txt-white">컨설턴트</span></p>
                                <p class="txt-white"><strong>박성재</strong></p>
                            </div>   
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/st_img01.jpg" alt="" />
                            <div class="txt-Box">
                                <p>수석 <span class="txt-white">컨설턴트</span></p>
                                <p class="txt-white"><strong>임광현</strong></p>
                            </div>  
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/st_img12.jpg" alt="" /> 
                            <div class="txt-Box">
                                <p>수석 <span class="txt-white">컨설턴트</span></p>
                                <p class="txt-white"><strong>고성호</strong></p>
                            </div>   
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/st_img08.jpg" alt="" /> 
                            <div class="txt-Box">
                                <p>수석 <span class="txt-white">컨설턴트</span></p>
                                <p class="txt-white"><strong>라종윤</strong></p>
                            </div>   
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/st_img02.jpg" alt="" /> 
                            <div class="txt-Box">
                                <p>수석 <span class="txt-white">컨설턴트</span></p>
                                <p class="txt-white"><strong>안중수</strong></p>
                            </div>   
                        </div>
                    </div>                    
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/st_img09.jpg" alt="" /> 
                            <div class="txt-Box">
                                <p>수석 <span class="txt-white">컨설턴트</span></p>
                                <p class="txt-white"><strong>조현백</strong></p>
                            </div>   
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/st_img03.jpg" alt="" /> 
                            <div class="txt-Box">
                                <p>수석 <span class="txt-white">컨설턴트</span></p>
                                <p class="txt-white"><strong>추선호</strong></p>
                            </div>   
                        </div>
                    </div>                    
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/st_img10.jpg" alt="" /> 
                            <div class="txt-Box">
                                <p>수석 <span class="txt-white">컨설턴트</span></p>
                                <p class="txt-white"><strong>김정휘</strong></p>
                            </div>   
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/st_img05.jpg" alt="" /> 
                            <div class="txt-Box">
                                <p>수석 <span class="txt-white">컨설턴트</span></p>
                                <p class="txt-white"><strong>박규한</strong></p>
                            </div>   
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/st_img07.jpg" alt="" /> 
                            <div class="txt-Box">
                                <p>수석 <span class="txt-white">컨설턴트</span></p>
                                <p class="txt-white"><strong>박일</strong></p>
                            </div>   
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/st_img13.jpg" alt="" /> 
                            <div class="txt-Box">
                                <p>수석 <span class="txt-white">컨설턴트</span></p>
                                <p class="txt-white"><strong>김성빈</strong></p>
                            </div>   
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/st_img04.jpg" alt="" /> 
                            <div class="txt-Box">
                                <p>수석 <span class="txt-white">컨설턴트</span></p>
                                <p class="txt-white"><strong>엄두강</strong></p>
                            </div>   
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/st_img06.jpg" alt="" /> 
                            <div class="txt-Box">
                                <p>수석 <span class="txt-white">컨설턴트</span></p>
                                <p class="txt-white"><strong>오종수</strong></p>
                            </div>   
                        </div>
                    </div>
                </div>
            </div>
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/cont03_stit02.png" alt="최선의 수시 지원 전략을 제시해 드립니다." /></p>
        </div>
    </div>
    <!-- //cont03 -->
    <!-- cont04 -->
    <div class="cont04">
        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/cont04_tit.jpg" alt="수시 지원 컨설팅 안내" /></p>
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
                                    러셀 대구 <a href="https://mrusseldg.megastudy.net/russel_dg/info/location.asp" target="_blank" class="txt-blue">오시는 길 &gt</a>
                                </li>
                                <!-- <li>
                                    러셀CORE 대전  <a href="https://mcoredj.megastudy.net/core_dj/info/location.asp" target="_blank" class="txt-blue">오시는 길 &gt</a>
                                </li>
                                <li>
                                    러셀CORE 광주  <a href="https://mcoregj.megastudy.net/core_gj/info/location.asp" target="_blank" class="txt-blue">오시는 길 &gt</a>
                                </li> -->
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>컨설팅 일정</th>
                        <td>7/29(토요일) ~ 9/3(일요일) 진행 <br>
                            (운영시간: 10시~18시까지)<br>
                            <span class="txt-red f12">
                                *상담은 스케줄에 따라 진행되며,<br>
                                스케줄은 유선 안내 시 조정합니다.
                            </span><br>
                            <br>
                            <div>
                                <div class="tb-box">
                                    <span class="tit">대치</span>
                                    <span class="date">7/29(토), 7/30(일), 8/12(토), 8/13(일)</span>
                                </div>
                                <div class="tb-box">
                                    <span class="tit">목동</span>
                                    <span class="date">8/5(토), 8/6(일), 9/2(토), 9/3(일)</span>
                                </div>
                                 <div class="tb-box">
                                    <span class="tit">대구</span>
                                    <span class="date">8/15(화), 8/26(토)</span>
                                </div>
                                <!--<div class="tb-box">
                                    <span class="tit">CORE 광주</span>
                                    <span class="date">8/4(금), 8/11(금)</span>
                                </div>
                                <div class="tb-box">
                                    <span class="tit">CORE 대전</span>
                                    <span class="date">8/2(수), 8/9(수)</span>
                                </div> -->
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>제출 서류</th>
                        <td>
                            필수 제출 서류: 학교생활기록부 및 3학년 1학기 종합 성적표, 6월 평가원 모의고사 성적표 <br>
                            선택 제출 서류: 교육청 모의고사 성적표 및 기타 추가 제출 서류 <br>
                            <span class="txt-red f12">*제출 서류는 <a href="mailto:rsc@megastudy.net" class="txt-blue">rsc@megastudy.net</a>으로 첨부하여 보내주시기 바랍니다.</span>
                        </td>
                    </tr>
                    <tr>
                        <th>비용 안내</th>
                        <td><strong>450,000원</strong></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting_susi/cont04_tit02.jpg" alt="수시 컨설팅 예약접수 절차" /></p>
        <div class="inner">
            <ul class="r-step">
                <li>
                    <div>STEP<br>1</div>
                    <p>
                        온라인 페이지 <strong><span class="txt-red">예약접수</span> 진행</strong><br>
                        <!-- <span class="f12">(2023년 7월 10일(월) 부터~) </span><br> -->
                    </p>
                </li>
                <li>
                    <div>STEP<br>2</div>
                    <p>
                        예약접수 내용 확인 후 <strong class="txt-red">안내 전화</strong>
                    </p>
                </li>
                <li>
                    <div>STEP<br>3</div>
                    <p>
                        <strong class="txt-red">결제</strong> 진행 및 <strong class="txt-red">서류</strong> 제출
                        <span class="txt-red f12"><br>(안내전화 후 2일 이내 서류 제출 및 결제必)</span>
                    </p>
                </li>
                <li>
                    <div>STEP<br>4</div>
                    <p>
                        <strong class="txt-red">제출 서류 확인 후 컨설팅 신청 완료 </strong> <br>
                        <span class="f12">(안내문자 발송)</span>
                    </p>
                </li>
            </ul>
        </div>
        <p class="txt-red c-tit">※ 컨설팅 신청 전 반드시 확인해주세요!</p>
        <ul class="list-dot">
            <li>수시 지원 컨설팅은 선착순 예약접수로 진행됩니다. <br>(선착순 마감 시 대기 접수를 진행하며, 상황에 따라 예약 및 신청이 조기 종료될 수 있습니다.)</li>
            <li>온라인 페이지에서는 예약접수만 진행 가능합니다.</li>
            <li>컨설팅 결제완료 및 수험생의 성적 자료 확인 후 컨설팅 신청이 완료됩니다.</li>
            <li class="txt-red">컨설팅 예약접수 안내전화 후 2일 이내에 결제가 이루어지지 않는 경우, 접수 내역이 자동으로 취소됩니다.</li>
            <li class="txt-red">상담 예약 2일(48시간) 미만 취소하는 경우, 환불은 불가합니다. (기간 내 자료 접수 이후 서류 분석이 진행됩니다. 늦은 예약 취소 및 변경이 되지 않도록 내용 확인 후 신청 부탁드립니다.)</li>
            <li>상담은 학원 현장에서 대면으로 이루어지며, 비대면 상담은 진행하지 않습니다.</li>
            <li>고른기회, 다자녀전형, 예체능전형, 특성화고전형 등 특수전형은 상담을 진행하지 않습니다.</li>
            <li>
                예약/결제/취소 문의는 페이지 상단 
                <a href="javascript:void(0);" onclick="fn_qnaGo()" class="link-btn">온라인 문의 &gt;</a>에서 <br>
                학원 선택 > ‘입시전략연구소’ 선택 후 문의 또는 02-3498-4332(평일 10:00 ~ 18:00 상담 운영)로 문의주시기 바랍니다.           
            </li>
        </ul>
    </div>
    <!-- //cont04 -->

</section>


<!-- #include virtual = "/inc/footer.asp" -->

<script src="./ui.js"></script>
<script>

	
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

        <% IF curYmdhmin >= 202512300000 AND applyStatus = 0 Then %>
			alert("마감 되었습니다.");
			return;
		<% End If %>
		
		<% If gLoginOk = false Then %>
			alert("로그인 후 이용가능합니다.");
			location.href="/member/login.asp?rtnUrl=%2Fintro%2F2023%2Fconsulting_susi%2Findex%2Easp%3F"
			return;
            	return;
        <% Elseif applyStatus >= 1 Then %>
			alert('이미 온라인 접수 하셨습니다. 접수 내역을 확인해주세요.'); 
			return;
		<% else %>
			window.open('./popup.asp','online_qna','scrollbars=yes,width=810,height=800,top=0');
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
			window.open('./popup.asp','online_qna','scrollbars=yes,width=1200,height=1500,top=0');
		<% End If %>
	}


</script>
</body>
</html>