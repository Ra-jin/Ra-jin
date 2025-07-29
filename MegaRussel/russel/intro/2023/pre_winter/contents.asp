<!-- cont01 -->
<div class="cont01 cont-container">
    <div class="inner">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/cont01_tit.png" alt="연간 재학생 모집 일정" /></p>
        <div class="plan-wrap">
            <div class="pre-box">
                <p class="txt txt01"><%=date01%></p>
            </div>
            <p class="txt txt02"><%=date02%></p>
            <p class="txt txt03"><%=date03%></p>
            <p class="img img01"><img src="<%=Application("img_path_russel")%>/core/pre_winter/ico_x.png" alt="엑스" /></p>
            <p class="img img02"><img src="<%=Application("img_path_russel")%>/core/pre_winter/ico_o.png" alt="도넛" /></p>
            <p class="img img03"><img src="<%=Application("img_path_russel")%>/core/pre_winter/ico_ball.png" alt="동그라미 공" /></p>
        </div>
        <p class="s-txt">* 학습 프로그램 일정은 학원 운영에 따라 상이할 수 있습니다.</p>
    </div>
</div>
<!-- //cont01 -->


<!-- 학원별 컨텐츠 -->
<%
    dirFile = "/intro/2023/pre_winter/"&campusName02&".asp"
    Server.Execute(dirFile)
%>
<!-- //학원별 컨텐츠 -->


<!-- cont02 -->
<div class="cont02">
    <div class="inner">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/core/pre_winter/cont02_tit.png" alt="러셀CORE라면 프리윈터스쿨도 다르다" /></p>
        <div class="txt-box">
            러셀CORE 프리윈터스쿨은 수능형 리듬이 잡히지 않은 <%=grade%> 재학생을 대상으로, <br>
            윈터스쿨 전 <strong>미리 수능 시간표와 동일한</strong> <br>
            바른공부 자습전용관 표준 시간표로 생활 및 학습하여 <strong>규칙적인 생활</strong>과 최상위권 전문 입시 담임선생님의  <br>
            <strong>체계적인 관리</strong>를 통해 체력과 멘탈, 그리고 학습 패턴을 수능까지 유지될 수 있게 형성 시켜주는 학습 과정입니다.
        </div>
        <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/cont02_img.jpg" alt="프리윈터스쿨로 챙겨야 할 학습 3가지" /></p>
    </div>
</div>
<!-- //cont02 -->


<!--띠배너-->
<% If sCampusCode = "CD0343" Then '코어원주 %>
<p class="line-banner mid"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/line_banner_wj.jpg" alt="중간 띠배너"></p>
<% Elseif sCampusCode = "CD0344" or sCampusCode = "CD0346" Then '코어전주/코어청주 %>
<div style="position: relative;">
    <% If sCampusCode = "CD0344" Then '코어전주 %>
    <p class="line-banner mid"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/line_banner_jj.jpg" alt="중간 띠배너"></p>
    <% Elseif sCampusCode = "CD0346" Then '코어청주 %>
    <p class="line-banner mid"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/line_banner_cj.jpg" alt="중간 띠배너"></p>
    <% End If %>
    <div class="event-banner">
        <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/banner_event.png" alt="띠배너"></p>
    </div>
</div>
<script>
    //스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();


		// //전주 띠배너 하단에 고정하기
		var eventHeight = $(".event-banner").height();
		var winSclInner	= $(window).scrollTop() + $(window).innerHeight() - eventHeight;
		var winSclInner02	= $(window).scrollTop() + $(window).innerHeight();

		var $eventCon = $('.event-banner');
		var $eventCon_top  = Math.floor($eventCon.offset().top);
		
		var $btmCon = $('.line-banner.nav-end')
		var $btmCon_top  = Math.floor($btmCon.offset().top);

		var navCont      = $("#nav-cont");
		var navCont_top  = Math.floor(navCont.offset().top);

        var midCont      = $(".line-banner.mid");
		var midCont_top  = Math.floor(midCont.offset().top);

		if(winSclInner >= $eventCon_top){
			$eventCon.addClass("on");
		}


		//프로그램 컨텐츠 영역에서만 이벤트 띠배너가 보이게 하기
		if(winSclInner > midCont_top && winSclInner02 < $btmCon_top ) {
			$eventCon.css('visibility','visible');
		}

		if(winSclInner < midCont_top){
			$eventCon.css('visibility','visible');
		}else if(winSclInner02 > $btmCon_top){
			$eventCon.css('visibility','hidden');
		}

		if(winSclInner < midCont_top && $eventCon.hasClass("on")){
			$eventCon.removeClass("on");
		}


	});
</script>
<% Elseif sCampusCode = "CD0345" Then '코어창원 %>
<p class="line-banner mid"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/line_banner_cw.jpg" alt="중간 띠배너"></p>

<% End If %>
<!--//띠배너-->


<!-- cont03 -->
<div class="cont03 cont-container">
    <p class="tit"><img src="<%=Application("img_path_russel")%>/core/pre_winter/cont03_tit.png" alt="프리 윈터스쿨 바른공부 자습전용관 표준 시간표"></p>
    <div class="inner">      
        <% If sCampusCode = "CD0340" or sCampusCode = "CD0341" or sCampusCode = "CD0343" Then '코어광주/코어대전/코어원주 %>
        <div class="baja-wrap">
            <div class="baja-nav">
                <a href="javascript:void(0)"><%=tbl_tit%></a>
            </div>
            <div class="baja-cont">
                <% If sCampusCode = "CD0340" Then '코어광주 %>
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:%;" />
                        <col style="width:%;" />
                        <col style="width:20%;" />
                        <col style="width:%" />
                        <col style="width:%;" />
                        <col style="width:%;" />
                        <col style="width:%;" />
                        <col style="width:%;" />
                        <col style="width:%;" />
                        <col style="width:%;" />
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th colspan="2">구분</th>
                            <th>시간</th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                            <th>일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="4">오전</th>
                            <td>0교시</td>
                            <td>07:00~07:50 (50분)</td>
                            <td colspan="5" rowspan="9">학교/선택자습</td>
                            <td rowspan="4">자습</td>
                            <td rowspan="4">선택 자습</td>
                        </tr>
                        <tr>
                            <td>1교시</td>
                            <td>08:00~08:40 (40분)</td>
                        </tr>
                        <tr>
                            <td>2교시</td>
                            <td>08:50~10:10 (80분)</td>
                        </tr>
                        <tr>
                            <td>3교시</td>
                            <td>10:30~12:10 (100분)</td>
                        </tr>
                        <tr>
                            <th colspan="2">점심식사</th>
                            <td>12:10~13:10 (60분)</td>
                            <td colspan="2">-</td>
                        </tr>
                        <tr>
                            <th rowspan="3">오후</th>
                            <td>4교시</td>
                            <td>13:10~14:20 (70분)</td>
                            <td rowspan="3">자습</td>
                            <td rowspan="3">선택 자습</td>
                        </tr>
                        <tr>
                            <td>5교시</td>
                            <td>14:40~16:00 (80분)</td>
                        </tr>
                        <tr>
                            <td>6교시</td>
                            <td>16:20~17:30 (70분)</td>
                        </tr>
                        
                        <tr>
                            <th colspan="2">저녁식사</th>
                            <td>17:30~18:30 (60분)</td>
                            <td colspan="2">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2">저녁</th>
                            <td>7교시</td>
                            <td>18:30~20:00 (90분)</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">선택 자습</td>
                        </tr>
                        <tr>
                            <td>8교시</td>
                            <td>20:30~22:00 (90분)</td>
                        </tr>
                        <tr>
                            <th colspan="2">귀가</th>
                            <td>22:00~22:20 (20분)</td>
                            <td colspan="7">-</td>
                        </tr>
                    </tbody>
                </table>
                <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:10%">
                        <col style="width:10%">
                        <col style="width:11%">
                        <col style="width:11%">
                        <col style="width:10%">
                        <col style="width:auto">
                        <col style="width:auto">
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th colspan="2">교시</th>
                            <th>시작시간</th>
                            <th>종료시간</th>
                            <th>자습시간</th>
                            <th>월~토<br>(공휴일 포함)</th>
                            <th><span class="red_txt">일</span></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="3" class="bg-sky">오전</th>
                            <td>1교시</td>
                            <td>08:00</td>
                            <td>08:50</td>
                            <td>50분</td>
                            <td rowspan="3">
                                <span class="ico-txt b">의무자습</span>
                            </td>
                            <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                        </tr>
                        <tr>
                            <td>2교시</td>
                            <td>09:00</td>
                            <td>10:20</td>
                            <td>80분</td>
                        </tr>
                        <tr>
                            <td>3교시</td>
                            <td>10:40</td>
                            <td>12:20</td>
                            <td>100분</td>
                        </tr>
                        <tr>
                            <th colspan="2">점심식사</th>
                            <td>12:20</td>
                            <td>13:30</td>
                            <td>70분</td>
                            <td>학원식당<br>이용 가능</td>
                            <td>학원식당<br>이용 불가</td>
                        </tr>
                        <tr>
                            <th rowspan="3" class="bg-sky">오후</th>
                            <td>4교시</td>
                            <td>13:30</td>
                            <td>14:00</td>
                            <td>30분</td>
                            <td rowspan="3"><span class="ico-txt b">의무자습</span></td>
                            <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                        </tr>
                        <tr>
                            <td>5교시</td>
                            <td>14:00</td>
                            <td>15:30</td>
                            <td>90분</td>
                        </tr>
                        <tr>
                            <td>6교시</td>
                            <td>15:50 </td>
                            <td>17:20</td>
                            <td>90분</td>
                        </tr>
                        <tr>
                            <th colspan="2">저녁식사</th>
                            <td>17:20</td>
                            <td>18:30</td>
                            <td>70분</td>
                            <td>학원식당<br>이용 가능</td>
                            <td>학원식당<br>이용 불가</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">저녁</th>
                            <td>7교시</td>
                            <td>18:30</td>
                            <td>20:00</td>
                            <td>90분</td>
                            <td rowspan="2">
                                <span class="ico-txt b">의무자습</span>
                            </td>
                            <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                        </tr>
                        <tr>
                            <td>8교시</td>
                            <td>20:20</td>
                            <td>22:00</td>
                            <td>100분</td>
                        </tr>
                        <tr>
                            <th colspan="2">귀가</th>
                            <td>22:00</td>
                            <td>22:10</td>
                            <td colspan="3">10분</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">심야</th>
                            <td>9교시</td>
                            <td>22:10</td>
                            <td>23:00</td>
                            <td>50분</td>
                            <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                            <td rowspan="2" class="red_txt">심야자습<br>없음</td>
                        </tr>
                        <tr>
                            <td>10교시</td>
                            <td>23:10</td>
                            <td>24:00</td>
                            <td>50분</td>
                        </tr>
                    </tbody>
                </table>
                <!-- <table class="tbl-01">
                    <colgroup>
                        <col style="width:%;" />
                        <col style="width:%;" />
                        <col style="width:20%;" />
                        <col style="width:%" />
                        <col style="width:%;" />
                        <col style="width:%;" />
                        <col style="width:%;" />
                        <col style="width:%;" />
                        <col style="width:%;" />
                        <col style="width:%;" />
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th colspan="2">구분</th>
                            <th>시간</th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                            <th>일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="3">오전</th>
                            <td>1교시</td>
                            <td>08:00~08:40 (40분)</td>
                            <td colspan="5" rowspan="8">학교/내신 관리</td>
                            <td rowspan="3">의무 자습</td>
                            <td rowspan="3">선택 자습</td>
                        </tr>
                        <tr>
                            <td>2교시</td>
                            <td>08:50~10:10 (80분)</td>
                        </tr>
                        <tr>
                            <td>3교시</td>
                            <td>10:30~12:10 (100분)</td>
                        </tr>
                        <tr>
                            <th colspan="2">점심식사</th>
                            <td>12:10~13:10 (60분)</td>
                            <td colspan="2">-</td>
                        </tr>
                        <tr>
                            <th rowspan="3">오후</th>
                            <td>4교시</td>
                            <td>13:10~14:20 (70분)</td>
                            <td rowspan="3">의무 자습</td>
                            <td rowspan="3">선택 자습</td>
                        </tr>
                        <tr>
                            <td>5교시</td>
                            <td>14:40~16:00 (80분)</td>
                        </tr>
                        <tr>
                            <td>6교시</td>
                            <td>16:20~17:30 (70분)</td>
                        </tr>
                        <tr>
                            <th colspan="2">저녁식사</th>
                            <td>17:30~18:30 (60분)</td>
                            <td colspan="2">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2">저녁</th>
                            <td>7교시</td>
                            <td>18:30~20:00 (90분)</td>
                            <td rowspan="2">의무 자습</td>
                            <td rowspan="2">의무 자습</td>
                            <td rowspan="2">의무 자습</td>
                            <td rowspan="2">의무 자습</td>
                            <td rowspan="2">의무 자습</td>
                            <td rowspan="2">의무 자습</td>
                            <td rowspan="2">선택 자습</td>
                        </tr>
                        <tr>
                            <td>8교시</td>
                            <td>20:30~22:00 (90분)</td>
                        </tr>
                        <tr>
                            <th colspan="2">귀가</th>
                            <td>22:00~22:20 (20분)</td>
                            <td colspan="7">-</td>
                        </tr>
                    </tbody>
                </table> -->
                <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:%;" />
                        <col style="width:%;" />
                        <col style="width:20%;" />
                        <col style="width:%" />
                        <col style="width:%;" />
                        <col style="width:%;" />
                        <col style="width:%;" />
                        <col style="width:%;" />
                        <col style="width:%;" />
                        <col style="width:%;" />
                        <col style="width:%;" />
                    </colgroup>
                    <thead>
                        <tr style="height: 130px;">
                            <th colspan="2">구분</th>
                            <th colspan="2">자습시간</th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                            <th>일(공휴일)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="height: 130px;">
                            <th rowspan="4">오전</th>
                            <td>1교시</td>
                            <td>08:00~08:30</td>
                            <td>30분</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td rowspan="4">선택자습</td>
                        </tr>
                        <tr>
                            <td>조회</td>
                            <td>08:30~08:40</td>
                            <td>10분</td>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <td>2교시</td>
                            <td>08:50~10:10</td>
                            <td>80분</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                        </tr>
                        <tr>
                            <td>3교시</td>
                            <td>10:20~12:00</td>
                            <td>100분</td>
                        </tr>
                        <tr>
                            <th colspan="2">점심식사</th>
                            <td>12:10~13:10</td>
                            <td>70분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="4">오후</th>
                            <td>4교시</td>
                            <td>13:10~14:20</td>
                            <td>70분</td>
                            <td rowspan="3">자습</td>
                            <td rowspan="3">자습</td>
                            <td rowspan="3">자습</td>
                            <td rowspan="3">자습</td>
                            <td rowspan="3">자습</td>
                            <td rowspan="3">자습</td>
                            <td rowspan="4">선택자습</td>
                        </tr>
                        <tr>
                            <td>5교시</td>
                            <td>14:30~15:40</td>
                            <td>70분</td>
                        </tr>
                        <tr>
                            <td>6교시</td>
                            <td>15:50~17:00</td>
                            <td>70분</td>
                        </tr>
                        <tr>
                            <td>종례</td>
                            <td>17:10~17:30</td>
                            <td>20분</td>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <th colspan="2">저녁식사</th>
                            <td>17:30~18:40</td>
                            <td>70분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2">저녁</th>
                            <td>7교시</td>
                            <td>18:40~20:10</td>
                            <td>90분</td>
                            <td colspan="4" rowspan="2">수학(상) 수업 <br> [월/수반] <br> [화/목반]</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">선택자습</td>
                        </tr>
                        <tr>
                            <td>8교시</td>
                            <td>20:30~22:00</td>
                            <td>90분</td>
                        </tr>
                        <tr>
                            <th colspan="2">귀가</th>
                            <td>22:00~22:20</td>
                            <td>20분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2">심야</th>
                            <td>9교시</td>
                            <td>22:20~23:00</td>
                            <td>40분</td>
                            <td rowspan="2">선택자습</td>
                            <td rowspan="2">선택자습</td>
                            <td rowspan="2">선택자습</td>
                            <td rowspan="2">선택자습</td>
                            <td rowspan="2">선택자습</td>
                            <td rowspan="2" colspan="2">
                                * 토요일/일요일/공휴일은 <br>
                                심야선택자습 미 진행
                            </td>
                        </tr>
                        <tr>
                            <td>10교시</td>
                            <td>23:10~24:00</td>
                            <td>50분</td>
                        </tr>
                    </tbody>
                </table>
                <% End If %>
                <% If sCampusCode <> "CD0341" Then '코어대전 %>
                <div class="bubble-wrap">
                    <div class="bubble txt01" style="width: <%=bubble01_width%>;height: <%=bubble01_height%>;top: <%=bubble01_top%>;left: <%=bubble01_left%>;">
                        <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/bubble_img01.png" alt=""></p>
                    </div>
                    <div class="bubble txt02 <%=campusName%>" style="width: <%=bubble02_width%>;height: <%=bubble02_height%>;top: <%=bubble02_top%>;left: <%=bubble02_left%>;">
                        <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/bubble_img02.png" alt=""></p>
                    </div>
                    <div class="square sqr01 <%=campusName%>"></div>
                    <div class="square sqr02 <%=campusName%>"></div>
                    <% If sCampusCode = "CD0341" Then '코어대전 %>
                    <!-- <div class="square sqr03 <%=campusName%>"></div> -->
                    <!-- <div class="square sqr04 <%=campusName%>"></div> -->
                    <% End If %>
                </div>
                <% End If %>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
        <div class="study-swiper">
            <div class="study-slide-nav">
                <div class="btn-bar"></div>
                <div class="swiper-wrapper" style="z-index: 5;">
                    <div class="left swiper-slide on"><a href="javascript:void(0)">고1/고2 시간표</a></div>
                    <div class="right swiper-slide"><a href="javascript:void(0)">중3 시간표</a></div>
                </div>
            </div>

            <div class="enterBar" style="height: 35px;"></div>
            
            
            <div class="swiper-container study-slide">
                <div class="swiper-wrapper">

                    <div class="swiper-slide">
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:20%;" />
                                <col style="width:%" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th colspan="2">구분</th>
                                    <th>시간</th>
                                    <th>월</th>
                                    <th>화</th>
                                    <th>수</th>
                                    <th>목</th>
                                    <th>금</th>
                                    <th>토</th>
                                    <th>일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th rowspan="2">오전</th>
                                    <td>1교시</td>
                                    <td>09:00~10:10 (70분)</td>
                                    <td colspan="5" rowspan="7">학교 / 선택자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                </tr>
                                <tr>
                                    <td>2교시</td>
                                    <td>10:30~12:10 (100분)</td>
                                </tr>
                                <tr>
                                    <th colspan="2">점심식사</th>
                                    <td>12:10~13:10 (60분)</td>
                                    <td colspan="2">-</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">오후</th>
                                    <td>3교시</td>
                                    <td>13:10~14:20 (70분)</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                </tr>
                                <tr>
                                    <td>4교시</td>
                                    <td>14:40~16:00 (80분)</td>
                                </tr>
                                <tr>
                                    <td>5교시</td>
                                    <td>16:20~17:30 (70분)</td>
                                </tr>
                                <tr>
                                    <th colspan="2">저녁식사</th>
                                    <td>17:30~18:40 (70분)</td>
                                    <td colspan="2">-</td>
                                </tr>
                                <tr>
                                    <th rowspan="2">저녁</th>
                                    <td>6교시</td>
                                    <td>18:40~20:10 (90분)</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                </tr>
                                <tr>
                                    <td>7교시</td>
                                    <td>20:30~22:00 (90분)</td>
                                </tr>
                                <tr>
                                    <th colspan="2">귀가</th>
                                    <td>22:00~22:10 (10분)</td>
                                    <td colspan="7">-</td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="bubble-wrap">
                            <!-- <div class="bubble txt01" style="width: <%=bubble01_width%>;height: <%=bubble01_height%>;top: <%=bubble01_top%>;left: <%=bubble01_left%>;">
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/bubble_img01.png" alt=""></p>
                            </div> -->
                            <div class="bubble txt02 <%=campusName%>" style="width: <%=bubble02_width%>;height: <%=bubble02_height%>;top: <%=bubble02_top%>;left: <%=bubble02_left%>;">
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/bubble_img02.png" alt=""></p>
                            </div>
                            <!-- <div class="square sqr01 <%=campusName%>"></div> -->
                            <div class="square sqr02 <%=campusName%>"></div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:20%;" />
                                <col style="width:%" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                            </colgroup>
                            <thead>
                                <tr class="high">
                                    <th colspan="2">구분</th>
                                    <th>시간</th>
                                    <th>월</th>
                                    <th>화</th>
                                    <th>수</th>
                                    <th>목</th>
                                    <th>금</th>
                                    <th>토</th>
                                    <th>일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th rowspan="2">오전</th>
                                    <td>1교시</td>
                                    <td>09:00~10:10 (70분)</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                </tr>
                                <tr>
                                    <td>2교시</td>
                                    <td>10:30~12:10 (100분)</td>
                                </tr>
                                <tr>
                                    <th colspan="2">점심식사</th>
                                    <td>12:10~13:10 (60분)</td>
                                    <td colspan="7">-</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">오후</th>
                                    <td>3교시</td>
                                    <td>13:10~14:20 (70분)</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                </tr>
                                <tr>
                                    <td>4교시</td>
                                    <td>14:40~16:00 (80분)</td>
                                </tr>
                                <tr>
                                    <td>5교시</td>
                                    <td>16:20~17:30 (70분)</td>
                                </tr>
                                <tr>
                                    <th colspan="2">저녁식사</th>
                                    <td>17:30~18:40 (70분)</td>
                                    <td colspan="7">-</td>
                                </tr>
                                <tr>
                                    <th rowspan="2">저녁</th>
                                    <td>6교시</td>
                                    <td>18:40~20:10 (90분)</td>
                                    <td rowspan="2" colspan="4">
                                        수학(상) 수업 <br>
                                        [월/수반] <br>
                                        [화/목반]
                                    </td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                </tr>
                                <tr>
                                    <td>7교시</td>
                                    <td>20:30~22:00 (90분)</td>
                                </tr>
                                <tr>
                                    <th colspan="2">귀가</th>
                                    <td>22:00~22:10 (10분)</td>
                                    <td colspan="7">-</td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="bubble-wrap">
                            <!-- <div class="bubble txt01" style="width: <%=bubble03_width%>;height: <%=bubble03_height%>;top: <%=bubble03_top%>;left: <%=bubble03_left%>;">
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/bubble_img01.png" alt=""></p>
                            </div> -->
                            <div class="bubble txt02 <%=campusName%>" style="width: <%=bubble04_width%>;height: <%=bubble04_height%>;top: <%=bubble04_top%>;left: <%=bubble04_left%>;">
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/bubble_img03.png" alt=""></p>
                            </div>
                            <div class="square sqr01 sub2 <%=campusName%>"></div>
                            <!-- <div class="square sqr02 sub2 <%=campusName%>"></div> -->
                            <!-- <div class="square sqr03 sub2 <%=campusName%>"></div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
        <div class="study-swiper">
            <div class="study-slide-nav">
                <div class="btn-bar"></div>
                <div class="swiper-wrapper" style="z-index: 5;">
                    <div class="left swiper-slide on"><a href="javascript:void(0)">고1/고2 시간표</a></div>
                    <div class="right swiper-slide"><a href="javascript:void(0)">중3 시간표</a></div>
                </div>
            </div>
            
            <div class="enterBar" style="height: 35px;"></div>
            <div class="swiper-container study-slide">
                <div class="swiper-wrapper">

                    <div class="swiper-slide">
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:20%;" />
                                <col style="width:%" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th colspan="2">구분</th>
                                    <th>시간</th>
                                    <th>월</th>
                                    <th>화</th>
                                    <th>수</th>
                                    <th>목</th>
                                    <th>금</th>
                                    <th>토</th>
                                    <th>일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th rowspan="4">오전</th>
                                    <td>0교시</td>
                                    <td>07:00~07:50 (50분)</td>
                                    <td colspan="5" rowspan="9">학교 / 선택자습</td>
                                    <td rowspan="4">자습</td>
                                    <td rowspan="4">자습</td>
                                </tr>
                                <tr>
                                    <td>1교시</td>
                                    <td>08:00~08:40 (40분)</td>
                                </tr>
                                <tr>
                                    <td>2교시</td>
                                    <td>08:50~10:10 (80분)</td>
                                </tr>
                                <tr>
                                    <td>3교시</td>
                                    <td>10:30~12:10 (100분)</td>
                                </tr>
                                <tr>
                                    <th colspan="2">점심식사</th>
                                    <td>12:10~13:10 (60분)</td>
                                    <td colspan="2">-</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">오후</th>
                                    <td>4교시</td>
                                    <td>13:10~14:20 (70분)</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                </tr>
                                <tr>
                                    <td>5교시</td>
                                    <td>14:40~16:00 (80분)</td>
                                </tr>
                                <tr>
                                    <td>6교시</td>
                                    <td>16:20~17:30 (70분)</td>
                                </tr>
                                <tr>
                                    <th colspan="2">저녁식사</th>
                                    <td>17:30~18:30 (60분)</td>
                                    <td colspan="2">-</td>
                                </tr>
                                <tr>
                                    <th rowspan="2">저녁</th>
                                    <td>7교시</td>
                                    <td>18:30~20:00 (90분)</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                </tr>
                                <tr>
                                    <td>8교시</td>
                                    <td>20:20~21:50 (90분)</td>
                                </tr>
                                <tr>
                                    <th colspan="2">귀가</th>
                                    <td>21:50~22:10 (20분)</td>
                                    <td colspan="7">-</td>
                                </tr>
                                <!-- <tr>
                                    <th colspan="2" rowspan="2">심야자습<br>(월~금)</th>
                                    <td>22:10~23:00 (50분)</td>
                                    <td rowspan="2">선택자습</td>
                                    <td rowspan="2">선택자습</td>
                                    <td rowspan="2">선택자습</td>
                                    <td rowspan="2">선택자습</td>
                                    <td rowspan="2">선택자습</td>
                                    <td rowspan="2" colspan="2">-</td>
                                </tr>
                                <tr>
                                    <td>23:10~24:00 (50분)</td>
                                </tr> -->
                            </tbody>
                        </table>
                        <div class="bubble-wrap">
                            <div class="bubble txt01" style="width: <%=bubble01_width%>;height: <%=bubble01_height%>;top: <%=bubble01_top%>;left: <%=bubble01_left%>;">
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/bubble_img01.png" alt=""></p>
                            </div>
                            <div class="bubble txt02 <%=campusName%>" style="width: <%=bubble02_width%>;height: <%=bubble02_height%>;top: <%=bubble02_top%>;left: <%=bubble02_left%>;">
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/bubble_img02.png" alt=""></p>
                            </div>
                            <div class="square sqr01 <%=campusName%>"></div>
                            <div class="square sqr02 <%=campusName%>"></div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:20%;" />
                                <col style="width:%" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                            </colgroup>
                            <thead>
                                <tr class="high">
                                    <th colspan="2">구분</th>
                                    <th>시간</th>
                                    <th>월</th>
                                    <th>화</th>
                                    <th>수</th>
                                    <th>목</th>
                                    <th>금</th>
                                    <th>토</th>
                                    <th>일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="high">
                                    <th rowspan="4">오전</th>
                                    <td>0교시</td>
                                    <td>07:00~07:50 (50분)</td>
                                    <td rowspan="4">자습</td>
                                    <td rowspan="4">자습</td>
                                    <td rowspan="4">자습</td>
                                    <td rowspan="4">자습</td>
                                    <td rowspan="4">자습</td>
                                    <td rowspan="4">자습</td>
                                    <td rowspan="4">자습</td>
                                </tr>
                                <tr class="high">
                                    <td>1교시</td>
                                    <td>08:00~08:40 (40분)</td>
                                </tr>
                                <tr class="high">
                                    <td>2교시</td>
                                    <td>08:50~10:10 (80분)</td>
                                </tr>
                                <tr class="high">
                                    <td>3교시</td>
                                    <td>10:30~12:10 (100분)</td>
                                </tr>
                                <tr>
                                    <th colspan="2">점심식사</th>
                                    <td>12:10~13:10 (60분)</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td colspan="2">-</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">오후</th>
                                    <td>4교시</td>
                                    <td>13:10~14:20 (70분)</td>
                                    <td rowspan="3">수학(상) <br> 수업</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">수학(상) <br> 수업</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                </tr>
                                <tr>
                                    <td>5교시</td>
                                    <td>14:40~16:00 (80분)</td>
                                </tr>
                                <tr>
                                    <td>6교시</td>
                                    <td>16:20~17:30 (70분)</td>
                                </tr>
                                <tr>
                                    <th colspan="2">저녁식사</th>
                                    <td>17:30~18:30 (60분)</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td colspan="2">-</td>
                                </tr>
                                <tr>
                                    <th rowspan="2">저녁</th>
                                    <td>7교시</td>
                                    <td>18:30~20:00 (90분)</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                </tr>
                                <tr>
                                    <td>8교시</td>
                                    <td>20:20~21:50 (90분)</td>
                                </tr>
                                <tr>
                                    <th colspan="2">귀가</th>
                                    <td>21:50~22:10 (20분)</td>
                                    <td colspan="7">-</td>
                                </tr>
                                <!-- <tr>
                                    <th colspan="2" rowspan="2">심야자습<br>(월~금)</th>
                                    <td>22:10~23:00 (50분)</td>
                                    <td rowspan="2">선택자습</td>
                                    <td rowspan="2">선택자습</td>
                                    <td rowspan="2">선택자습</td>
                                    <td rowspan="2">선택자습</td>
                                    <td rowspan="2">선택자습</td>
                                    <td rowspan="2" colspan="2">-</td>
                                </tr>
                                <tr>
                                    <td>23:10~24:00 (50분)</td>
                                </tr> -->
                            </tbody>
                        </table>
                        <div class="bubble-wrap">
                            <div class="bubble txt01" style="width: <%=bubble03_width%>;height: <%=bubble03_height%>;top: <%=bubble03_top%>;left: <%=bubble03_left%>;">
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/bubble_img01.png" alt=""></p>
                            </div>
                            <div class="bubble txt02 <%=campusName%>" style="width: <%=bubble04_width%>;height: <%=bubble04_height%>;top: <%=bubble04_top%>;left: <%=bubble04_left%>;">
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/bubble_img04.png" alt=""></p>
                            </div>
                            <div class="square sqr01 sub2 <%=campusName%>"></div>
                            <div class="square sqr02 sub2 <%=campusName%>"></div>
                            <div class="square sqr03 sub2 <%=campusName%>"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
        <div class="study-swiper">
            <div class="study-slide-nav">
                <div class="btn-bar"></div>
                <div class="swiper-wrapper" style="z-index: 5;">
                    <div class="left swiper-slide on"><a href="javascript:void(0)">고1/고2 시간표</a></div>
                    <div class="right swiper-slide"><a href="javascript:void(0)">중3 시간표</a></div>
                </div>
            </div>
            <div class="enterBar" style="height: 35px;"></div>
            
            <div class="swiper-container study-slide">
                <div class="swiper-wrapper">

                    <div class="swiper-slide">
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:20%;" />
                                <col style="width:%" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th colspan="2">구분</th>
                                    <th>시간</th>
                                    <th>월</th>
                                    <th>화</th>
                                    <th>수</th>
                                    <th>목</th>
                                    <th>금</th>
                                    <th>토</th>
                                    <th>일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th rowspan="3">오전</th>
                                    <td>1교시</td>
                                    <td>08:00~08:40 (40분)</td>
                                    <td colspan="5" rowspan="8">학교 / 선택자습</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                </tr>
                                <tr>
                                    <td>2교시</td>
                                    <td>08:50~10:10 (80분)</td>
                                </tr>
                                <tr>
                                    <td>3교시</td>
                                    <td>10:30~12:10 (100분)</td>
                                </tr>
                                <tr>
                                    <th colspan="2">점심식사</th>
                                    <td>12:10~13:10 (60분)</td>
                                    <td colspan="2">-</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">오후</th>
                                    <td>4교시</td>
                                    <td>13:10~14:20 (70분)</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                </tr>
                                <tr>
                                    <td>5교시</td>
                                    <td>14:40~16:00 (80분)</td>
                                </tr>
                                <tr>
                                    <td>6교시</td>
                                    <td>16:20~17:30 (70분)</td>
                                </tr>
                                <tr>
                                    <th colspan="2">저녁식사</th>
                                    <td>17:30~18:40 (70분)</td>
                                    <td colspan="2">-</td>
                                </tr>
                                <tr>
                                    <th rowspan="2">저녁</th>
                                    <td>7교시</td>
                                    <td>18:40~20:10 (90분)</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                </tr>
                                <tr>
                                    <td>8교시</td>
                                    <td>20:30~22:00 (90분)</td>
                                </tr>
                                <tr>
                                    <th colspan="2">귀가</th>
                                    <td>22:00~22:10 (10분)</td>
                                    <td colspan="7">-</td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="bubble-wrap">
                            <div class="bubble txt01" style="width: <%=bubble01_width%>;height: <%=bubble01_height%>;top: <%=bubble01_top%>;left: <%=bubble01_left%>;">
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/bubble_img01.png" alt=""></p>
                            </div>
                            <div class="bubble txt02 <%=campusName%>" style="width: <%=bubble02_width%>;height: <%=bubble02_height%>;top: <%=bubble02_top%>;left: <%=bubble02_left%>;">
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/bubble_img02.png" alt=""></p>
                            </div>
                            <div class="square sqr01 <%=campusName%>"></div>
                            <div class="square sqr02 <%=campusName%>"></div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:20%;" />
                                <col style="width:%" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                                <col style="width:%;" />
                            </colgroup>
                            <thead>
                                <tr class="high">
                                    <th colspan="2">구분</th>
                                    <th>시간</th>
                                    <th>월</th>
                                    <th>화</th>
                                    <th>수</th>
                                    <th>목</th>
                                    <th>금</th>
                                    <th>토</th>
                                    <th>일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="high">
                                    <th rowspan="3">오전</th>
                                    <td>1교시</td>
                                    <td>08:00~08:40 (40분)</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                </tr>
                                <tr class="high">
                                    <td>2교시</td>
                                    <td>08:50~10:10 (80분)</td>
                                </tr>
                                <tr class="high">
                                    <td>3교시</td>
                                    <td>10:30~12:10 (100분)</td>
                                </tr>
                                <tr>
                                    <th colspan="2">점심식사</th>
                                    <td>12:10~13:10 (60분)</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td colspan="2">-</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">오후</th>
                                    <td>4교시</td>
                                    <td>13:10~14:20 (70분)</td>
                                    <td rowspan="3">수학(상) <br> 수업</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">수학(상) <br> 수업</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                    <td rowspan="3">자습</td>
                                </tr>
                                <tr>
                                    <td>5교시</td>
                                    <td>14:40~16:00 (80분)</td>
                                </tr>
                                <tr>
                                    <td>6교시</td>
                                    <td>16:20~17:30 (70분)</td>
                                </tr>
                                <tr>
                                    <th colspan="2">저녁식사</th>
                                    <td>17:30~18:40 (70분)</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td colspan="2">-</td>
                                </tr>
                                <tr>
                                    <th rowspan="2">저녁</th>
                                    <td>7교시</td>
                                    <td>18:40~20:10 (90분)</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                    <td rowspan="2">자습</td>
                                </tr>
                                <tr>
                                    <td>8교시</td>
                                    <td>20:30~22:00 (90분)</td>
                                </tr>
                                <tr>
                                    <th colspan="2">귀가</th>
                                    <td>22:00~22:10 (10분)</td>
                                    <td colspan="7">-</td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="bubble-wrap">
                            <div class="bubble txt01" style="width: <%=bubble03_width%>;height: <%=bubble03_height%>;top: <%=bubble03_top%>;left: <%=bubble03_left%>;">
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/bubble_img01.png" alt=""></p>
                            </div>
                            <div class="bubble txt02 <%=campusName%>" style="width: <%=bubble04_width%>;height: <%=bubble04_height%>;top: <%=bubble04_top%>;left: <%=bubble04_left%>;">
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/bubble_img04.png" alt=""></p>
                            </div>
                            <div class="square sqr01 sub2 <%=campusName%>"></div>
                            <div class="square sqr02 sub2 <%=campusName%>"></div>
                            <div class="square sqr03 sub2 <%=campusName%>"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <% End If %>
        <p class="s-txt">* 수업 요일 및 시간은 학원 운영에 따라 변경 될 수 있습니다.</p>
    </div>
</div>
<!-- //cont03 -->

<!-- cont04 -->
<div class="cont04" id="nav-cont">
    <div class="inner">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/core/pre_winter/cont04_tit.png" alt="올바른 공부 습관 형성으로 수능까지 탄탄하게! 러셀CORE 프리 윈터스쿨 프로그램"></p>
        <% If sCampusCode = "CD0340" Then '코어광주 %>
        <div class="pro-wrap">
            <div class="pro-cont">
                <div class="cont-pro cont1">
                    <div class="swiper-container js-gallery">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img01.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img02.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img03.png" alt="">
                            </div>
                        </div>
                        <!-- thumb-wrap -->
                        <div class="thumb-wrap">
                            <div class="swiper-pagination-thumb js-thumb"></div>
                        </div>
                        <!-- //thumb-wrap -->
                    </div>

                    <ul class="txt-box">
                        <li>
                            <div class="label">학습에만 <br> 몰입할 수 있는 환경</div>
                            <ul>
                                <li><strong>수능 시간표와 동일</strong>한 바른공부 자습전용관 표준 시간표 운영으로 <strong>규칙적인 생활관리</strong></li>
                                <li>바자관 <strong>상시 모니터링</strong>으로 졸음/대화/휴대폰 소지 등 <strong>엄격 관리</strong></li>
                                <li><strong>1일 10회 이상 출결 관리</strong>로 지각/무단 외출/ 무단 결석 등 <strong>면학분위기 저해 요소 차단</strong></li>
                                <li>슬럼프, 학습 고충 등은 <strong>학생 성향</strong>을 바탕으로 정신적인 멘토링</li>
                            </ul>
                        </li>
                        <li>
                            <div class="label">올바른 학습 계획</div>
                            <ul>
                                <li>최근 모의고사 성적, 현재 내신 성적 (전교과, 주요교과) 분석 후 <strong>과목별 학습 상황 점검</strong></li>
                                <li><strong>영단어&영어듣기</strong> : 매일 진행되어 별도 추가 학습 없이 <strong>겨울방학 전 영어 실력 향상</strong></li>
                                <li><strong>러셀 학습 플래너</strong> : 학습 목표 수립 및 담임선생님의 피드백을 통해 <strong>자기주도학습 훈련</strong></li>
                                <li><strong>일일수학 30제</strong> : 매일 <strong>일정한 양의 수학 문제풀이로 학습 습관 형성</strong> 후 주/월별 학습 현황 파악</li>
                            </ul>
                        </li>
                        <li>
                            <div class="label">학생 학습 맞춤 <br> 입시 전략</div>
                            <ul>
                                <li>전 과목 학습량 파악 후 <strong>과목별 우선 학습법</strong> 제시</li>
                                <li>성적 포트폴리오와 실제 사례를 기반으로 <strong>목표 대학/학과</strong>에 필요한 요소, <br>
                                    점수 확보에 대한 <strong>맞춤 학습 계획 수립</strong>
                                </li>
                                <li><strong>입시 특강 및 설명회</strong><br>
                                    -  수시/정시 전형 이해 및 대입 제도 변화에 따른 <strong>입시 전략 노하우</strong><br>
                                    -  <strong>학부모 입시 교실 설명회</strong> 진행으로 전공 이해 및 학부 세부 내용과 취업 후 전망
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="cont-pro cont2">
                    <div class="swiper-container js-gallery">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img04.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img05.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img06.png" alt="">
                            </div>
                        </div>
                        <!-- thumb-wrap -->
                        <div class="thumb-wrap">
                            <div class="swiper-pagination-thumb js-thumb"></div>
                        </div>
                        <!-- //thumb-wrap -->
                    </div>

                    <ul class="txt-box">
                        <li>
                            <div class="label">집단적인 면학분위기 <br> & 개방형 구조</div>
                            <ul>
                                <li>최상위권 학생들이 모여 자율과 통제의 균형적인 운영을 통해 <strong>집단적인 면학분위기</strong> 형성</li>
                                <li>
                                    <strong>개방형 구조</strong>로 이루어져 최상위권 학생들의 학구열이 서로에게 동기 부여가 되며 <br>
                                    <strong>선의의 경쟁으로 학습 능률 향상</strong>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <div class="label">쾌적한 학습환경</div>
                            <ul>
                                <li><strong>공기정화식물, 숯 대량 비치, 공기청정기</strong> 가동으로 적정 온도와 습도 유지</li>
                                <li>
                                    모의고사를 펼쳐도 <strong>넉넉한 넓은 책상과</strong> 장시간 앉아있는 학생들을 위한<br>
                                    <strong>편안한 의자로 학습 가능</strong>
                                </li>
                                <li>높은 층고와 탁 트인 책상 배치, 충분한 통로로 넓고 <strong>쾌적한 환경 제공</strong></li>
                                <li><strong>학습에 불필요한 인강 사이트 외 접속 차단</strong>하며, 끊김없는 인강 수강을 위해 광대역 무선망 구축</li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="nav-wrap">
            <div class="nav-in">
                <ul>
                    <li class="on"></li>
                    <li></li>
                </ul>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
        <div class="pro-wrap">
            <div class="pro-cont">
                <div class="cont-pro cont1">
                    <div class="swiper-container js-gallery">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img01.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img02.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img03.png" alt="">
                            </div>
                        </div>
                        <!-- thumb-wrap -->
                        <div class="thumb-wrap">
                            <div class="swiper-pagination-thumb js-thumb"></div>
                        </div>
                        <!-- //thumb-wrap -->
                    </div>

                    <ul class="txt-box">
                        <li>
                            <div class="label">학습에만 <br> 몰입할 수 있는 환경</div>
                            <ul>
                                <li><strong>수능 시간표와 동일</strong>한 바른공부 자습전용관 표준 시간표 운영으로 <strong>규칙적인 생활관리</strong></li>
                                <li>바자관 <strong>상시 모니터링</strong>으로 졸음/대화/휴대폰 소지 등 <strong>엄격 관리</strong></li>
                                <li><strong>1일 10회 이상 출결 관리</strong>로 지각/무단 외출/ 무단 결석 등 <strong>면학분위기 저해 요소 차단</strong></li>
                                <li>슬럼프, 학습 고충 등은 <strong>학생 성향</strong>을 바탕으로 정신적인 멘토링</li>
                            </ul>
                        </li>
                        <li>
                            <div class="label">올바른 학습 계획</div>
                            <ul>
                                <li>최근 모의고사 성적, 현재 내신 성적 (전교과, 주요교과) 분석 후 <strong>과목별 학습 상황 점검</strong></li>
                                <li><strong>영단어&영어듣기</strong> : 매일 진행되어 별도 추가 학습 없이 <strong>겨울방학 전 영어 실력 향상</strong></li>
                                <li><strong>러셀 학습 플래너</strong> : 학습 목표 수립 및 담임선생님의 피드백을 통해 <strong>자기주도학습 훈련</strong></li>
                                <li><strong>일일수학 30제</strong> : 매일 <strong>일정한 양의 수학 문제풀이로 학습 습관 형성</strong> 후 주/월별 학습 현황 파악</li>
                            </ul>
                        </li>
                        <li>
                            <div class="label">학생 학습 맞춤 <br> 입시 전략</div>
                            <ul>
                                <li>전 과목 학습량 파악 후 <strong>과목별 우선 학습법</strong> 제시</li>
                                <li>성적 포트폴리오와 실제 사례를 기반으로 <strong>목표 대학/학과</strong>에 필요한 요소, <br>
                                    점수 확보에 대한 <strong>맞춤 학습 계획 수립</strong>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="cont-pro cont2">
                    <div class="swiper-container js-gallery">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img04.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img05.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img06.png" alt="">
                            </div>
                        </div>
                        <!-- thumb-wrap -->
                        <div class="thumb-wrap">
                            <div class="swiper-pagination-thumb js-thumb"></div>
                        </div>
                        <!-- //thumb-wrap -->
                    </div>

                    <ul class="txt-box">
                        <li>
                            <div class="label">집단적인 면학분위기 <br> & 개방형 구조</div>
                            <ul>
                                <li>최상위권 학생들이 모여 자율과 통제의 균형적인 운영을 통해 <strong>집단적인 면학분위기</strong> 형성</li>
                                <li>
                                    <strong>개방형 구조</strong>로 이루어져 최상위권 학생들의 학구열이 서로에게 동기 부여가 되며 <br>
                                    <strong>선의의 경쟁으로 학습 능률 향상</strong>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <div class="label">쾌적한 학습환경</div>
                            <ul>
                                <li><strong>공기정화식물, 숯 대량 비치, 공기청정기</strong> 가동으로 적정 온도와 습도 유지</li>
                                <li>
                                    모의고사를 펼쳐도 <strong>넉넉한 넓은 책상과</strong> 장시간 앉아있는 학생들을 위한<br>
                                    <strong>편안한 의자로 학습 가능</strong>
                                </li>
                                <li>높은 층고와 탁 트인 책상 배치, 충분한 통로로 넓고 <strong>쾌적한 환경 제공</strong></li>
                                <li><strong>학습에 불필요한 인강 사이트 외 접속 차단</strong>하며, 끊김없는 인강 수강을 위해 광대역 무선망 구축</li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="nav-wrap">
            <div class="nav-in">
                <ul>
                    <li class="on"></li>
                    <li></li>
                </ul>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
        <div class="pro-wrap">
            <div class="pro-cont">
                <div class="cont-pro cont1">
                    <div class="swiper-container js-gallery">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img01.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img02.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img03.png" alt="">
                            </div>
                        </div>
                        <!-- thumb-wrap -->
                        <div class="thumb-wrap">
                            <div class="swiper-pagination-thumb js-thumb"></div>
                        </div>
                        <!-- //thumb-wrap -->
                    </div>

                    <ul class="txt-box">
                        <li>
                            <div class="label">학습에만 <br> 몰입할 수 있는 환경</div>
                            <ul>
                                <li><strong>수능 시간표와 동일</strong>한 바른공부 자습전용관 표준 시간표 운영으로 <strong>규칙적인 생활관리</strong></li>
                                <li><strong>학습 저해 요소 제거</strong> (휴대폰 제출 필수/학습 목적 외 태블릿 이용 금지)</li>
                                <li><strong>1일 8회 이상</strong> 지속적인 학습 집중도 점검</li>
                                <li><strong>데이터 기반 자습 집중도 점검</strong> 및 면학 분위기 관리, 정기적 학생/학부모 대상 <strong>문자 발송</strong></li>
                                <li>슬럼프, 학습 고충을 긍정적으로 극복할 수 있도록 <strong>정기적인 멘토링</strong> 진행</li>
                            </ul>
                        </li>
                        <li>
                            <div class="label">올바른 학습 계획</div>
                            <ul>
                                <li>최근 모의고사 성적, 현재 내신 성적 (전교과, 주요교과) 분석 후 <strong>과목별 학습 상황 점검</strong></li>
                                <li><strong>영단어&영어듣기</strong> : 매일 진행되어 별도 추가 학습 없이 <strong>겨울방학 전 영어 실력 향상</strong></li>
                                <li><strong>러셀 학습 플래너</strong> : 학습 목표 수립 및 담임선생님의 피드백을 통해 <strong>학습 밸런스 점검 및 관리</strong></li>
                                <li><strong>일일수학 30제</strong> : 매일 <strong>일정한 양의 수학 문제풀이로 학습 습관 형성</strong> 후 주/월별 학습 현황 파악</li>
                            </ul>
                        </li>
                        <li>
                            <div class="label">학생 학습 맞춤 <br> 입시 전략</div>
                            <ul>
                                <li><strong>학생 맞춤형 입시 전략 제시</strong> (입학 전 성적부터 성적 데이터 체계적으로 관리)</li>
                                <li>성적 포트폴리오와 실제 사례를 기반으로 <strong>목표 대학/학과</strong>에 필요한 요소, <br>
                                    점수 확보에 대한 <strong>맞춤 학습 계획 수립</strong>
                                </li>
                                <li>
                                    <strong>입시 특강 및 설명회</strong> <br>
                                    - 입시/학습 전략 특강 등 진행 <br>
                                    - 다양하고 풍부한 <strong>최신 입시 콘텐츠 제공</strong>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="cont-pro cont2">
                    <div class="swiper-container js-gallery">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img04.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img05.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img06.png" alt="">
                            </div>
                        </div>
                        <!-- thumb-wrap -->
                        <div class="thumb-wrap">
                            <div class="swiper-pagination-thumb js-thumb"></div>
                        </div>
                        <!-- //thumb-wrap -->
                    </div>

                    <ul class="txt-box">
                        <li>
                            <div class="label">집단적인 면학분위기 <br> & 개방형 구조</div>
                            <ul>
                                <li>최상위권 학생들이 모여 자율과 통제의 균형적인 운영을 통해 <strong>집단적인 면학분위기</strong> 형성</li>
                                <li>
                                    <strong>개방형 구조</strong>로 이루어져 최상위권 학생들의 학구열이 서로에게 동기 부여가 되며 <br>
                                    <strong>선의의 경쟁으로 학습 능률 향상</strong>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <div class="label">쾌적한 학습환경</div>
                            <ul>
                                <li><strong>공기정화식물, 숯 대량 비치, 공기청정기</strong> 가동으로 적정 온도와 습도 유지</li>
                                <li>
                                    모의고사를 펼쳐도 <strong>넉넉한 넓은 책상과</strong> 장시간 앉아있는 학생들을 위한<br>
                                    <strong>편안한 의자로 학습 가능</strong>
                                </li>
                                <li>높은 층고와 탁 트인 책상 배치, 충분한 통로로 넓고 <strong>쾌적한 환경 제공</strong></li>
                                <li><strong>학습에 불필요한 인강 사이트 외 접속 차단</strong>하며, 끊김없는 인강 수강을 위해 광대역 무선망 구축</li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="nav-wrap">
            <div class="nav-in">
                <ul>
                    <li class="<%=campusName%> on"></li>
                    <li class="<%=campusName%>"></li>
                </ul>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
        <div class="pro-wrap">
            <div class="pro-cont">
                <div class="cont-pro cont1">
                    <div class="swiper-container js-gallery">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img01.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img02.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img03.png" alt="">
                            </div>
                        </div>
                        <!-- thumb-wrap -->
                        <div class="thumb-wrap">
                            <div class="swiper-pagination-thumb js-thumb"></div>
                        </div>
                        <!-- //thumb-wrap -->
                    </div>

                    <ul class="txt-box">
                        <li>
                            <div class="label">학습에만 <br> 몰입할 수 있는 환경</div>
                            <ul>
                                <li><strong>수능 시간표와 동일</strong>한 바른공부 자습전용관 표준 시간표 운영으로 <strong>규칙적인 생활관리</strong></li>
                                <li><strong>학습 저해 요소 제거</strong> (휴대폰 제출 필수/학습 목적 외 태블릿 이용 금지)</li>
                                <li><strong>1일 4회 이상 출결 관리</strong>로 지각/무단 외출/ 무단 결석 등 <strong>면학분위기 저해 요소 차단</strong></li>
                                <li>슬럼프, 학습 고충을 긍정적으로 극복할 수 있도록 <strong>정기적인 멘토링</strong> 진행</li>
                            </ul>
                        </li>
                        <li>
                            <div class="label">올바른 학습 계획</div>
                            <ul>
                                <li>최근 모의고사 성적, 현재 내신 성적 (전교과, 주요교과) 분석 후 <strong>과목별 학습 상황 점검</strong></li>
                                <li><strong>영단어&영어듣기</strong> : 매일 진행되어 별도 추가 학습 없이 <strong>겨울방학 전 영어 실력 향상</strong></li>
                                <li><strong>러셀 학습 플래너</strong> : 학습 목표 수립 및 담임선생님의 피드백을 통해 <strong>자기주도학습 훈련</strong></li>
                                <li><strong>일일수학 30제</strong> : 매일 <strong>일정한 양의 수학 문제풀이로 학습 습관 형성</strong> 후 주/월별 학습 현황 파악</li>
                            </ul>
                        </li>
                        <li>
                            <div class="label">학생 학습 맞춤 <br> 입시 전략</div>
                            <ul>
                                <li>전 과목 학습량 파악 후 <strong>과목별 우선 학습법</strong> 제시</li>
                                <li>성적 포트폴리오와 실제 사례를 기반으로 <strong>목표 대학/학과</strong>에 필요한 요소, <br>
                                    점수 확보에 대한 <strong>맞춤 학습 계획 수립</strong>
                                </li>
                                <li>
                                    <strong>입시 특강 및 설명회</strong> <br>
                                    - 수시/정시 전형 이해 및 대입 제도 변화에 따른 <strong>입시 전략 노하우</strong><br>
                                    - <strong>학부모 입시 교실 설명회</strong> 진행으로 전공 이해 및 학부 세부 내용과 취업 후 전망
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="cont-pro cont2">
                    <div class="swiper-container js-gallery">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img04.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img05.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img06.png" alt="">
                            </div>
                        </div>
                        <!-- thumb-wrap -->
                        <div class="thumb-wrap">
                            <div class="swiper-pagination-thumb js-thumb"></div>
                        </div>
                        <!-- //thumb-wrap -->
                    </div>

                    <ul class="txt-box">
                        <li>
                            <div class="label">집단적인 면학분위기 <br> & 개방형 구조</div>
                            <ul>
                                <li>최상위권 학생들이 모여 자율과 통제의 균형적인 운영을 통해 <strong>집단적인 면학분위기</strong> 형성</li>
                                <li>
                                    <strong>개방형 구조</strong>로 이루어져 최상위권 학생들의 학구열이 서로에게 동기 부여가 되며 <br>
                                    <strong>선의의 경쟁으로 학습 능률 향상</strong>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <div class="label">쾌적한 학습환경</div>
                            <ul>
                                <li><strong>공기정화식물, 숯 대량 비치, 공기청정기</strong> 가동으로 적정 온도와 습도 유지</li>
                                <li>
                                    모의고사를 펼쳐도 <strong>넉넉한 넓은 책상과</strong> 장시간 앉아있는 학생들을 위한<br>
                                    <strong>편안한 의자로 학습 가능</strong>
                                </li>
                                <li>높은 층고와 탁 트인 책상 배치, 충분한 통로로 넓고 <strong>쾌적한 환경 제공</strong></li>
                                <li><strong>학습에 불필요한 인강 사이트 외 접속 차단</strong>하며, 끊김없는 인강 수강을 위해 광대역 무선망 구축</li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- <div class="cont-pro cont3">
                    <div class="swiper-container js-gallery">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img07.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img08.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img09.png" alt="">
                            </div>
                        </div>
                        <div class="thumb-wrap">
                            <div class="swiper-pagination-thumb js-thumb"></div>
                        </div>
                    </div>

                    <ul class="txt-box">
                        <li>
                            <div class="label">바자관, 강의실, <br> 자체 식당 <br> 한 건물 내 위치</div>
                            <ul>
                                <li>
                                    학습 공간인 바른공부 자습전용관 - 수업 공간인 단과 강의실 - 식사 공간 자체식당이 <br>
                                    한 건물 내 위치하여 불필요한 <strong>이동거리 최소화</strong>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <div class="label">건강한 식재료와 <br> 균형 잡힌 식단</div>
                            <ul>
                                <li>깔끔한 인테리어와 매일 진행하는 위생 점검으로 안전한 식사 공간 제공</li>
                                <li>
                                    1인 식사를 선호하는 학생들을 위한 <strong>1인용 테이블 설치</strong>
                                </li>
                                <li>수험생활 하는 학생들을 위한 건강한 식재료와 균형 식사 제공</li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="cont-pro cont4">
                    <div class="img-box">
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img10.png" alt="">
                        <a class="btn-bus" href="/info/schoolBus.asp">운행 노선 및 시간 알아보기</a>
                    </div>

                    <ul class="txt-box">
                        <li>
                            <div class="label">학원 전용 셔틀버스</div>
                            <ul>
                                <li>학습에만 집중할 수 있도록 하원 <strong>학원 전용 셔틀버스 운행</strong></li>
                            </ul>
                        </li>
                    </ul>
                </div> -->
            </div>
        </div>
        <div class="nav-wrap">
            <div class="nav-in">
                <ul>
                    <li class="<%=campusName%> on"></li>
                    <li class="<%=campusName%>"></li>
                </ul>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
        <div class="pro-wrap">
            <div class="pro-cont">
                <div class="cont-pro cont1">
                    <div class="swiper-container js-gallery">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img01.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img02.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img03.png" alt="">
                            </div>
                        </div>
                        <div class="thumb-wrap">
                            <div class="swiper-pagination-thumb js-thumb"></div>
                        </div>
                    </div>

                    <ul class="txt-box">
                        <li>
                            <div class="label">학습에만 <br> 몰입할 수 있는 환경</div>
                            <ul>
                                <li><strong>수능 시간표와 동일</strong>한 바른공부 자습전용관 표준 시간표 운영으로 <strong>규칙적인 생활관리</strong></li>
                                <li><strong>학습 저해 요소 제거</strong> (휴대폰 제출 필수/학습 목적 외 태블릿 이용 금지)</li>
                                <li><strong>1일 8회 이상 출결 관리</strong>로 지각/무단 외출/ 무단 결석 등 <strong>면학분위기 저해 요소 차단</strong></li>
                                <li>슬럼프, 학습 고충을 긍정적으로 극복할 수 있도록 <strong>정기적인 멘토링</strong> 진행</li>
                            </ul>
                        </li>
                        <li>
                            <div class="label">올바른 학습 계획</div>
                            <ul>
                                <li>최근 모의고사 성적, 현재 내신 성적 (전교과, 주요교과) 분석 후 <strong>과목별 학습 상황 점검</strong></li>
                                <li><strong>영단어&영어듣기</strong> : 매일 진행되어 별도 추가 학습 없이 <strong>겨울방학 전 영어 실력 향상</strong></li>
                                <li><strong>러셀 학습 플래너</strong> : 학습 목표 수립 및 담임선생님의 피드백을 통해 <strong>자기주도학습 훈련</strong></li>
                                <li><strong>일일수학 30제</strong> : 매일 <strong>일정한 양의 수학 문제풀이로 학습 습관 형성</strong> 후 주/월별 학습 현황 파악</li>
                            </ul>
                        </li>
                        <li>
                            <div class="label">학생 학습 맞춤 <br> 입시 전략</div>
                            <ul>
                                <li>전 과목 학습량 파악 후 <strong>과목별 우선 학습법</strong> 제시</li>
                                <li>성적 포트폴리오와 실제 사례를 기반으로 <strong>목표 대학/학과</strong>에 필요한 요소, <br>
                                    점수 확보에 대한 <strong>맞춤 학습 계획 수립</strong>
                                </li>
                                <li>
                                    <strong>입시 특강 및 설명회</strong> <br>
                                    - 수시/정시 전형 이해 및 대입 제도 변화에 따른 <strong>입시 전략 노하우</strong><br>
                                    - <strong>학부모 입시 교실 설명회</strong> 진행으로 전공 이해 및 학부 세부 내용과 취업 후 전망
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="cont-pro cont2">
                    <div class="swiper-container js-gallery">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img04.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img05.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img06.png" alt="">
                            </div>
                        </div>
                        <!-- thumb-wrap -->
                        <div class="thumb-wrap">
                            <div class="swiper-pagination-thumb js-thumb"></div>
                        </div>
                        <!-- //thumb-wrap -->
                    </div>

                    <ul class="txt-box">
                        <li>
                            <div class="label">집단적인 면학분위기 <br> & 개방형 구조</div>
                            <ul>
                                <li>최상위권 학생들이 모여 자율과 통제의 균형적인 운영을 통해 <strong>집단적인 면학분위기</strong> 형성</li>
                                <li>
                                    <strong>개방형 구조</strong>로 이루어져 최상위권 학생들의 학구열이 서로에게 동기 부여가 되며 <br>
                                    <strong>선의의 경쟁으로 학습 능률 향상</strong>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <div class="label">쾌적한 학습환경</div>
                            <ul>
                                <li><strong>공기정화식물, 공기청정기</strong> 가동으로 적정 온도와 습도 유지</li>
                                <li>
                                    모의고사를 펼쳐도 <strong>넉넉한 넓은 책상과</strong> 장시간 앉아있는 학생들을 위한<br>
                                    <strong>편안한 의자로 학습 가능</strong>
                                </li>
                                <li>높은 층고와 탁 트인 책상 배치, 충분한 통로로 넓고 <strong>쾌적한 환경 제공</strong></li>
                                <li><strong>학습에 불필요한 인강 사이트 외 접속 차단</strong>하며, 끊김없는 인강 수강을 위해 광대역 무선망 구축</li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- <div class="cont-pro cont3">
                    <div class="swiper-container js-gallery">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img07.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img08.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img09.png" alt="">
                            </div>
                        </div>
                        <div class="thumb-wrap">
                            <div class="swiper-pagination-thumb js-thumb"></div>
                        </div>
                    </div>

                    <ul class="txt-box">
                        <li>
                            <div class="label">바자관, 강의실, <br> 자체 식당 <br> 한 건물 내 위치</div>
                            <ul>
                                <li>
                                    학습 공간인 바른공부 자습전용관 - 수업 공간인 단과 강의실 - 식사 공간 자체식당이 <br>
                                    한 건물 내 위치하여 불필요한 <strong>이동거리 최소화</strong>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <div class="label">건강한 식재료와 <br> 균형 잡힌 식단</div>
                            <ul>
                                <li>깔끔한 인테리어와 매일 진행하는 위생 점검으로 안전한 식사 공간 제공</li>
                                <li>
                                    1인 식사를 선호하는 학생들을 위한 <strong>1인용 테이블 설치</strong>
                                </li>
                                <li>수험생활 하는 학생들을 위한 건강한 식재료와 균형 식사 제공</li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="cont-pro cont4">
                    <div class="img-box">
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img10.png" alt="">
                        <a class="btn-bus" href="/info/schoolBus.asp">운행 노선 및 시간 알아보기</a>
                    </div>

                    <ul class="txt-box">
                        <li>
                            <div class="label">학원 전용 셔틀버스</div>
                            <ul>
                                <li>학습에만 집중할 수 있도록 <strong>등/하원 학원 전용 셔틀버스 운행</strong></li>
                                <li>먼 거리에서 등원하는 학생들을 위해 <strong>노선 다양화</strong></li>
                            </ul>
                        </li>
                    </ul>
                </div> -->
            </div>
        </div>
        <div class="nav-wrap">
            <div class="nav-in">
                <ul>
                    <li class="<%=campusName%> on"></li>
                    <li class="<%=campusName%>"></li>
                </ul>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
        <div class="pro-wrap">
            <div class="pro-cont">
                <div class="cont-pro cont1">
                    <div class="swiper-container js-gallery">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img01.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img02.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img03.png" alt="">
                            </div>
                        </div>
                        <!-- thumb-wrap -->
                        <div class="thumb-wrap">
                            <div class="swiper-pagination-thumb js-thumb"></div>
                        </div>
                        <!-- //thumb-wrap -->
                    </div>

                    <ul class="txt-box">
                        <li>
                            <div class="label">학습에만 <br> 몰입할 수 있는 환경</div>
                            <ul>
                                <li><strong>수능 시간표와 동일</strong>한 바른공부 자습전용관 표준 시간표 운영으로 <strong>규칙적인 생활관리</strong></li>
                                <li>바자관 <strong>상시 모니터링</strong>으로 졸음/대화/휴대폰 소지 등 <strong>엄격 관리</strong></li>
                                <li><strong>1일 4회 이상 출결 관리</strong>로 지각/무단 외출/ 무단 결석 등 <strong>면학분위기 저해 요소 차단</strong></li>
                                <li>슬럼프, 학습 고충 등은 <strong>학생 성향</strong>을 바탕으로 정신적인 멘토링</li>
                            </ul>
                        </li>
                        <li>
                            <div class="label">올바른 학습 계획</div>
                            <ul>
                                <li>최근 모의고사 성적, 현재 내신 성적 (전교과, 주요교과) 분석 후 <strong>과목별 학습 상황 점검</strong></li>
                                <li><strong>영단어&영어듣기</strong> : 매일 진행되어 별도 추가 학습 없이 <strong>겨울방학 전 영어 실력 향상</strong></li>
                                <li><strong>러셀 학습 플래너</strong> : 학습 목표 수립 및 담임선생님의 피드백을 통해 <strong>자기주도학습 훈련</strong></li>
                                <li><strong>일일수학 30제</strong> : 매일 <strong>일정한 양의 수학 문제풀이로 학습 습관 형성</strong> 후 주/월별 학습 현황 파악</li>
                            </ul>
                        </li>
                        <li>
                            <div class="label">학생 학습 맞춤 <br> 입시 전략</div>
                            <ul>
                                <li>전 과목 학습량 파악 후 <strong>과목별 우선 학습법</strong> 제시</li>
                                <li>성적 포트폴리오와 실제 사례를 기반으로 <strong>목표 대학/학과</strong>에 필요한 요소, <br>
                                    점수 확보에 대한 <strong>맞춤 학습 계획 수립</strong>
                                </li>
                                <li><strong>입시 특강 및 설명회</strong><br>
                                    -  수시/정시 전형 이해 및 대입 제도 변화에 따른 <strong>입시 전략 노하우</strong><br>
                                    -  <strong>학부모 입시 교실 설명회</strong> 진행으로 전공 이해 및 학부 세부 내용과 취업 후 전망
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="cont-pro cont2">
                    <div class="swiper-container js-gallery">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img04.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img05.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/pre_winter/pro_img06.png" alt="">
                            </div>
                        </div>
                        <!-- thumb-wrap -->
                        <div class="thumb-wrap">
                            <div class="swiper-pagination-thumb js-thumb"></div>
                        </div>
                        <!-- //thumb-wrap -->
                    </div>

                    <ul class="txt-box">
                        <li>
                            <div class="label">집단적인 면학분위기 <br> & 개방형 구조</div>
                            <ul>
                                <li>최상위권 학생들이 모여 자율과 통제의 균형적인 운영을 통해 <strong>집단적인 면학분위기</strong> 형성</li>
                                <li>
                                    <strong>개방형 구조</strong>로 이루어져 최상위권 학생들의 학구열이 서로에게 동기 부여가 되며 <br>
                                    <strong>선의의 경쟁으로 학습 능률 향상</strong>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <div class="label">쾌적한 학습환경</div>
                            <ul>
                                <li><strong>공기정화식물, 숯 대량 비치, 공기청정기</strong> 가동으로 적정 온도와 습도 유지</li>
                                <li>
                                    모의고사를 펼쳐도 <strong>넉넉한 넓은 책상과</strong> 장시간 앉아있는 학생들을 위한<br>
                                    <strong>편안한 의자로 학습 가능</strong>
                                </li>
                                <li>높은 층고와 탁 트인 책상 배치, 충분한 통로로 넓고 <strong>쾌적한 환경 제공</strong></li>
                                <li><strong>학습에 불필요한 인강 사이트 외 접속 차단</strong>하며, 끊김없는 인강 수강을 위해 광대역 무선망 구축</li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="nav-wrap">
            <div class="nav-in">
                <ul>
                    <li class="on"></li>
                    <li></li>
                </ul>
            </div>
        </div>
        <% End If %>
    </div>
</div>
<!-- //cont04 -->

<p class="line-banner nav-end"><img src="<%=Application("img_path_russel")%>/core/pre_winter/line_banner.jpg" alt="띠배너"></p>



