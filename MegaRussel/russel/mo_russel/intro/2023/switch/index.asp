<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2024 러셀 스위치반" />
    <meta name="keywords" content="2024 러셀 스위치반, 러셀 스위치반, 2024 러셀스위치반, 러셀스위치반, N수-재학생, 러셀CORE창원" />
	<meta name="description" content="2024 러셀 스위치반" />
    <link rel="stylesheet" type="text/css" href="./switch.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2024 스위치반</strong>
</h2>
<section class="sub-wrap">

	<!-- switch-wrap -->
    <div class="switch-wrap">
        
        <!-- #include virtual = "/intro/2023/switch/visual.asp" -->

        <div class="cont01">
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/switch/cont01_tit_<%=codeCampus%>.jpg" alt="스위치반 시스템" /></p>
            <div class="inner">
                <div class="c-box">
                    <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/switch/cont01_img.jpg" alt="바른공부 자습전용관 좌석 운영가이드" /></div>
                    <ul class="list-bullet">
                        <li>공용 책상 위 선반은 주말 재학생 /<br>
                            책상 아래 선반은 주중 N수생이 사용합니다.
                        </li>
                        <li>매주 금요일 주중N수반 학생은 22시 이후 자리 정리 및 퇴실, 매주 일요일 주말 재학생반 학생은 22시 이후 자리 정리 및 퇴실을 원칙으로 합니다.</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="cont02">
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/switch/cont02_tit_<%=codeCampus%>.jpg" alt="스위치반 시간표" /></p>
            <div class="inner">
                <p class="recruit-stit mt10">주중 N수생</p>
                
                <ul class="list-bar">
                    <li>월~목 상담가능</li>
                    <li>입시관리 : 월1회 1:1 개별 상담 진행</li>
                    <li>학습관리 : 매주 위클리 모의고사, 메가X대성 THE PREMIUM 모의고사 의무 응시 및 성적표 1:1 의무상담</li>
                    <li>생활관리 : 학생별 스케줄에 맞춘 등하원 체크와 매주 목요일 스케줄 이행도 점검</li>
                </ul>
                <div style="overflow:auto;position:relative">
                    <table class="tbl-type01" style="width:170%">
                        <colgroup>
                            <col style="width:7%" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                        </colgroup>
                        <thead>
                            <tr>
                                <th class="bg-sky sticky"></th>
                                <th class="bg-sky">월</th>
                                <th class="bg-sky">화</th>
                                <th class="bg-sky">수</th>
                                <th class="bg-sky">목</th>
                                <th class="bg-sky">금</th>
                                <th class="bg-sky">토</th>
                                <th class="bg-sky">일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-sky sticky">오<br>전</th>
                                <td class="bg-gray2">의무자습</td>
                                <td class="bg-gray2">의무자습</td>
                                <td class="bg-gray2">의무자습</td>
                                <td class="bg-gray2">의무자습<br><strong>담임상담</strong></td>
                                <td class="bg-gray2">의무자습</td>
                                <td rowspan="3">단과수강<br>(선택)</td>
                                <td rowspan="3">단과수강<br>(선택)</td>
                            </tr>
                            <tr>
                                <th class="bg-sky sticky">오<br>후</th>
                                <td class="bg-gray2">의무자습</td>
                                <td class="bg-gray2">의무자습</td>
                                <td class="bg-gray2">의무자습</td>
                                <td class="bg-gray2">의무자습<br><strong>담임상담</strong></td>
                                <td class="bg-gray2">의무자습</td>
                            </tr>
                            <tr>
                                <th class="bg-sky sticky">저<br>녁</th>
                                <td class="bg-gray2">의무자습<br>단과수강</td>
                                <td class="bg-gray2">의무자습<br>단과수강</td>
                                <td class="bg-gray2">의무자습<br>단과수강</td>
                                <td class="bg-gray2">의무자습<br>단과수강<br><strong>생활상담</strong></td>
                                <td class="bg-gray2">의무자습<br>단과수강</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="recruit-stit">주말 재학생</p>
                <ul class="list-bar">
                    <li>금~일 상담가능(사전예약제)
                    </li>
                    <li>입시관리 : 월1회 이상 사전예약을 통한 1:1 입시상담 진행
                    </li>
                    <li>학습관리 : 메가X대성 THE PREMIUM 모의고사 의무 응시 및 성적표 1:1 상담
                    </li>
                    <li>생활관리 : 학교, 학생별 스케줄에 맞춘 등하원 체크와 중간 기말고사 일정에 따른 학습 스케줄 점검
                    </li>
                </ul>
                <div style="position:relative;overflow:auto">
                    <table class="tbl-type01" style="width:150%">
                        <colgroup>
                            <col style="width:7%" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                        </colgroup>
                        <thead>
                            <tr>
                                <th class="bg-sky sticky"></th>
                                <th class="bg-sky">월</th>
                                <th class="bg-sky">화</th>
                                <th class="bg-sky">수</th>
                                <th class="bg-sky">목</th>
                                <th class="bg-sky">금</th>
                                <th class="bg-sky">토</th>
                                <th class="bg-sky">일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-sky sticky">오<br>전</th>
                                <td rowspan="2">-</td>
                                <td rowspan="2">-</td>
                                <td rowspan="2">-</td>
                                <td rowspan="2">-</td>
                                <td rowspan="2">-</td>
                                <td class="bg-gray2">의무자습<br>단과수강<br><strong>학습상담</strong></td>
                                <td class="bg-gray2">의무자습<br>단과수강<br><strong>학습상담</strong></td>
                            </tr>
                            <tr>
                                <th class="bg-sky sticky">오<br>후</th>
                                <td class="bg-gray2">의무자습<br>단과수강<br><strong>학습상담</strong></td>
                                <td class="bg-gray2">의무자습<br>단과수강<br><strong>학습상담</strong></td>
                            </tr>
                            <tr>
                                <th class="bg-sky sticky">저<br>녁</th>
                                <td><strong>비대면<br>관리</strong></td>
                                <td><strong>비대면<br>관리</strong></td>
                                <td><strong>비대면<br>관리</strong></td>
                                <td><strong>비대면<br>관리</strong></td>
                                <td><strong>비대면<br>관리</strong></td>
                                <td class="bg-gray2">의무자습<br>단과수강<br><strong>학습상담</strong></td>
                                <td class="bg-gray2">의무자습<br>단과수강<br><strong>학습상담</strong></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="cont03">
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/switch/cont03_tit.jpg" alt="면학분위기로 소문난 바른공부 자습전용관" /></p>
            <div class="inner">
                
                <!-- 바자관 슬라이드 -->
                <div class="system-con">
                    <div class="swiper-pagination baja-rolling page"></div>
                    <div class="baja-rolling-inner">
                        <div class="swiper mySwiper baja-rolling">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/switch/cont03_tab01_<%=codeCampus%>.jpg" alt="집단적인 면학분위기">
                                </div>
                                <div class="swiper-slide">
                                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/switch/cont03_tab02_<%=codeCampus%>.jpg" alt="학습 동선 최소화">
                                </div>
                                <div class="swiper-slide">
                                    <img class="time-btn" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/switch/cont03_tab03_<%=codeCampus%>.jpg" alt="바자관 표준 시간표">
                                    <span class="bt-tt js-mask">바른공부 자습전용관 표준시간표</span>
                                </div>
                                <div class="swiper-slide">
                                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/switch/cont03_tab04_<%=codeCampus%>.jpg" alt="개방형 구조">
                                </div>
                            </div>
                        </div>
                    </div>
                    <% If campus_code <> "CD0346" Then '청주제외 %>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/switch/cont03_img.jpg" alt="학생 리뷰"></p>
                    <% End IF %>
                </div>
                <!-- baja_time_table -->
                <!-- #include virtual = "/intro/2023/regular/baja_time_table.asp" -->
                <!-- //baja_time_table -->
            </div>
        </div>
        <div class="cont04">
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/switch/cont04_tit.jpg" alt="메가스터디 온오프 No.1강사진의 최상위권 수준별 맞춤 단과" /></p>
            <!-- teacher_slide -->
            <!-- #include virtual = "/intro/2023/regular/teacher_slide.asp" -->
            <!-- //teacher_slide -->
            <div class="inner">
                <div class="btm-con">
                    <p class="stxt">* 학원 홈페이지에서 학원별 출강 선생님을 확인할 수 있습니다.</p>
                </div>
                <div class="danka-box">
                    <p>기초부터 실전까지<br>빈틈없는 커리큘럼으로 수능 실력 향상</p>
                    <strong>정규&middot;특강 단과</strong>
                    <ul class="remark-03">
                        <li>메가스터디 온·오프 No.1 강사진의 생생한 현장 Live 강의</li>
                        <li>평일 저녁&주말 과목별/수준별/진도별 맞춤 강좌 개설 및 내게 필요한 수업 선택</li>
                        <li>강의 전후 학습관리 진행으로 1:1 맞춤 완전학습</li>
                    </ul>
                    <div class="btn goto-btn"><a href="<%=link_danka%>">바로가기</a></div>
                </div>
            </div>
        </div>
        <!-- 모집요강 -->
        <div class="cont05">
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/switch/cont05_tit_<%=codeCampus%>.jpg" alt="러셀CORE 창원 모집요강" /></p>
            <div class="inner">
                <div>
                    <table class="tbl-type01">
                        <colgroup>
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                        </colgroup>
                        <thead>
                            <tr>
                                <th></th>
                                <th>반명</th>
                                <th>모집요강</th>
                                <th>의무<br>강좌</th>
                                <th>바자관<br>월 이용료</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-sky" rowspan="2">스위<br>치반</th>
                                <td>주중<br>N수</td>
                                <td>평일만 이용<br>가능한 N수생
                                </td>
                                <td>3강좌
                                </td>
                                <td>450,000원
                                </td>
                            </tr>
                            <tr>
                                <td>주말<br>재학</td>
                                <td>타 지역, 자사고,<br>특목고, 기숙학교<br>학생</td>
                                <td>1강좌
                                </td>
                                <td>180,000원
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <ul class="list-bullet ml0">
                    <li>환불 유의사항</li>
                </ul>
                <ul class="list-bar mt0">
                    <li>바른공부 자습전용관은 사용한 일자를 제외한 나머지 금액만 환불가능 합니다.
                    </li>
                    <li>단과수업은 학원 설립 운영 및 과외교습에 관한 법률 시행령을 근거로 환불 규정에 따라, 수강료 환불이 이루어 집니다.<br>(단, 보강 영상 또는 자료를 수령했을 경우 해당 단과는 환불이 불가능합니다.)
                    </li>
                </ul>
            </div>
        </div>

		<p><a href="<%=pc_url%>/core_cw/2023/switch/index.asp" target="_blank" class="bt-pc">PC페이지로 이동</a></p>

    </div>
	<!-- //switch-wrap -->

</section>
<!-- #include virtual = "/inc/footer.asp" -->
<script type="text/javascript" src="/core_cw/2023/switch/switch.js"></script>
</body>
</html>