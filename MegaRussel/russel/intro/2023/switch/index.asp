<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="2024 러셀 스위치반" />
    <meta name="keywords" content="2024 러셀 스위치반, 러셀 스위치반, 2024 러셀스위치반, 러셀스위치반, N수-재학생, 러셀CORE창원" />
	<meta name="description" content="2024 러셀 스위치반" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2024 러셀 스위치반">
	<meta property="og:description" content="2024 러셀 스위치반, 러셀 스위치반" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" type="text/css" href="./switch.css" />
	<link rel="stylesheet" href="/common/css/full_danka.css">
</head>
<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- switch-wrap -->
<div class="switch-wrap">
	<!-- visual -->
	<!--#include virtual="/intro/2023/switch/visual.asp"-->
	<!-- //visual -->

    <!-- cont01 -->
    <div class="cont01">
        <div class="inner">
			<p><img src="<%=Application("img_path_russel")%>/intro/2023/switch/cont01_tit_<%=codeCampus%>.png" alt="스위치반 시스템" /></p>
			<div class="mt60 c-box"><img src="<%=Application("img_path_russel")%>/intro/2023/switch/cont01_img.jpg" alt="바른공부 자습전용관 좌석 운영가이드" /></div>
        </div>
    </div>
    <!-- //cont01 -->

    <!-- cont02 -->
    <div class="cont02">
        <div class="inner">
			<p><img src="<%=Application("img_path_russel")%>/intro/2023/switch/cont02_tit_<%=codeCampus%>.png" alt="러셀CORE 창원 스위치반 시간표" /></p>
            <div class="tab-cont-wrap mt50">
                <div class="bt-tab type02">
                    <a href="javascript:void(0)" class="on">주중 N수생</a>  
                    <a href="javascript:void(0)">주말 재학생</a>
                </div>
                <!--주중 N수생-->
                <div class="cont-box on">
                    <ul class="list-04">
                        <li>월~목 상담가능</li>
                        <li>입시관리 : 월1회 1:1 개별 상담 진행</li>
                        <li>학습관리 : 매주 위클리 모의고사, 메가X대성 THE PREMIUM 모의고사 의무 응시 및 성적표 1:1 의무상담</li>
                        <li>생활관리 : 학생별 스케줄에 맞춘 등하원 체크와 매주 목요일 스케줄 이행도 점검</li>
                    </ul>
                    
                    <div class="tbl-box">
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:10%" />
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
                                    <th class="bg-sky"></th>
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
                                    <th class="bg-sky">오전</th>
                                    <td class="bg-gray">의무자습</td>
                                    <td class="bg-gray">의무자습</td>
                                    <td class="bg-gray">의무자습</td>
                                    <td class="bg-gray">의무자습<br><strong>담임상담</strong></td>
                                    <td class="bg-gray">의무자습</td>
                                    <td rowspan="3">단과수강<br>(선택)</td>
                                    <td rowspan="3">단과수강<br>(선택)</td>
                                </tr>
                                <tr>
                                    <th class="bg-sky">오후</th>
                                    <td class="bg-gray">의무자습</td>
                                    <td class="bg-gray">의무자습</td>
                                    <td class="bg-gray">의무자습</td>
                                    <td class="bg-gray">의무자습<br><strong>담임상담</strong></td>
                                    <td class="bg-gray">의무자습</td>
                                </tr>
                                <tr>
                                    <th class="bg-sky">저녁</th>
                                    <td class="bg-gray">의무자습<br>단과수강</td>
                                    <td class="bg-gray">의무자습<br>단과수강</td>
                                    <td class="bg-gray">의무자습<br>단과수강</td>
                                    <td class="bg-gray">의무자습<br>단과수강<br><strong>생활상담</strong></td>
                                    <td class="bg-gray">의무자습<br>단과수강</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!--주말 재학생-->
                <div class="cont-box">
                    <ul class="list-04">
                        <li>금~일 상담가능(사전예약제)
                        </li>
                        <li>입시관리 : 월1회 이상 사전예약을 통한 1:1 입시상담 진행
                        </li>
                        <li>학습관리 : 메가X대성 THE PREMIUM 모의고사 의무 응시 및 성적표 1:1 상담
                        </li>
                        <li>생활관리 : 학교, 학생별 스케줄에 맞춘 등하원 체크와 중간 기말고사 일정에 따른 학습 스케줄 점검
                        </li>
                    </ul>
                    
                    <div class="tbl-box">
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:10%" />
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
                                    <th class="bg-sky"></th>
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
                                    <th class="bg-sky">오전</th>
                                    <td rowspan="2">-</td>
                                    <td rowspan="2">-</td>
                                    <td rowspan="2">-</td>
                                    <td rowspan="2">-</td>
                                    <td rowspan="2">-</td>
                                    <td class="bg-gray">의무자습<br>단과수강<br><strong>학습상담</strong></td>
                                    <td class="bg-gray">의무자습<br>단과수강<br><strong>학습상담</strong></td>
                                </tr>
                                <tr>
                                    <th class="bg-sky">오후</th>
                                    <td class="bg-gray">의무자습<br>단과수강<br><strong>학습상담</strong></td>
                                    <td class="bg-gray">의무자습<br>단과수강<br><strong>학습상담</strong></td>
                                </tr>
                                <tr>
                                    <th class="bg-sky">저녁</th>
                                    <td><strong>비대면 관리</strong></td>
                                    <td><strong>비대면 관리</strong></td>
                                    <td><strong>비대면 관리</strong></td>
                                    <td><strong>비대면 관리</strong></td>
                                    <td><strong>비대면 관리</strong></td>
                                    <td class="bg-gray">의무자습<br>단과수강<br><strong>학습상담</strong></td>
                                    <td class="bg-gray">의무자습<br>단과수강<br><strong>학습상담</strong></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
    <!-- //cont02 -->
    
    <!-- cont03 -->
    <div class="cont03">
        <div class="inner03">
            <div class="tab-box js-menu-con">
                <p><img src="<%=Application("img_path_russel")%>/intro/2023/switch/cont03_tit.png" alt="면학분위기로 소문난 바른공부 자습전용관 최상위권 학생들이 모여 경쟁하는 긍정적인 학습환경" /></p>
                <!-- 바자관 탭 슬라이드 -->
                <div class="baja-slide-wrap">
                    <div class="baja-slide-navi">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/switch/cont03_tab01.png" alt="집단적인 면학분위기" />
                            </div>
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/switch/cont03_tab02.png" alt="학습 동선 최소화" /></div>
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/switch/cont03_tab03.png" alt="바자관 표준 시간표" /></div>
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/switch/cont03_tab04.png" alt="개방형 구조" /></div>
                        </div>
                    </div>
                    <div class="swiper-container baja-slide">
                        <div class="swiper-wrapper">
                            <!-- Tab01 면학분위기 -->
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/switch/tab01_img_<%=codeCampus%>.jpg" alt="" /></div>
                            </div>
                            <!-- Tab02 학습 동선 최소화 -->
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/switch/tab02_img_<%=codeCampus%>.jpg" alt="" /></div>
                            </div>
                            <!-- Tab03 바자관 표준 시간표 -->
                            <div class="schedule-box swiper-slide">
                                <div class="mb30"><img src="<%=Application("img_path_russel")%>/intro/2023/switch/tab03_img.jpg" alt="" /></div>
                                <!-- schedule -->
                                    <!--#include virtual="/intro/2023/regular/schedule.asp" -->
                                <!-- //schedule -->
                            </div>
                            <!-- Tab04 개방형 구조 -->
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/switch/tab04_img_<%=codeCampus%>.jpg" alt="" /></div>
                            </div>
                        </div>
                    </div>
                </div>
                <% If sCampusCode <> "CD0346" Then '청주제외 %>
                <div class="st-review">
                    <div>
                        <dl>
                            <dt>
                                <strong>부산대학교 의예과</strong><br>
                                러셀 이상민
                            </dt>
                            <dd>재원 기간 : 2021년 2월~수능까지</dd>
                        </dl>
                        <p>
                            <span>2021학년도 276점 →</span><br>
                            <strong>2022학년도 292점</strong>
                        </p>
                        <div><img src="<%=Application("img_path_russel")%>/intro/2023/switch/st_lsm.png" alt="" /></div>
                    </div>
                    <p>
                        “<strong>바자관이 개방형으로 되어 있어서 주변 학생들이 공부하는 모습</strong>을 볼 수 있었습니다. 혼자 공부할 때와는 다르게 <strong>자극을 많이 받을 수 있었고, 제가 다른 학우들에게 자극을 줄 수도 있다는 생각</strong>이 들어 더 열심히 했던 것 같습니다. 시설도 잘 갖춰져 있어 <strong>2월부터 11월까지 장기간 동안 편안한 환경에서 공부</strong>를 잘 할 수 있었고, 휴대폰 압수와 학원 전용 와이파이를 사용하여 <strong>외부와 차단된 환경에서 더욱 집중</strong>할 수 있었습니다.”
                    </p>
                </div>
                <% End If %>
            </div>
        </div>
    </div>
    <!-- //cont03 -->
    
    <!-- 강사진 -->
    <div class="cont04">
        <p><img src="<%=Application("img_path_russel")%>/intro/2023/switch/cont04_tit.png" alt="메가스터디 온오프 No.1 강사진의 최상위권 수준별 맞춤 단과" /></p>
        <p class="mt50"><img src="<%=Application("img_path_russel")%>/intro/2023/switch/cont04_img.jpg" alt="" /></p>
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2023/regular/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->

        <div class="inner02">
            <ul class="subject-list">
                <li class="list-only">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/switch/cont04_stit01.png" alt="기초부터 실전까지 빈틈없는 커리큘럼으로 수능 실력 향상 정규 단과" /></p>
                        <a href="<%=link_danka%>"><img src="<%=Application("img_path_russel")%>/intro/2023/switch/cont04_link.png" alt="바로가기" /></a>
                    </div>
                    <ul>
                        <li>메가스터디 온,오프 No.1 강사진의 생생한 현장 Live 강의</li>
                        <li>평일 저녁&주말 과목별/수준별/진도별<br>맞춤 강좌 개설 및 내게 필요한 수업 선택</li>
                        <li>강의 전후 학습관리 진행으로<br>1:1 맞춤 완전학습</li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- //강사진 -->

    <!-- 모집요강 -->
    <div class="cont00">
        <div class="inner02">
            <p class="mb90"><img src="<%=Application("img_path_russel")%>/intro/2023/switch/cont05_tit_<%=codeCampus%>.png" alt="러셀CORE 창원 스위치반 모집요강"></p>
            <div class="tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:10%" />
                        <col style="width:10%" />
                        <col style="width:auto" />
                        <col style="width:10%" />
                        <col style="width:auto" />
                    </colgroup>
                    <thead>
                        <tr>
                            <th></th>
                            <th>반명</th>
                            <th>모집요강</th>
                            <th>의무강좌</th>
                            <th>바자관<br>월 이용료</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-sky" rowspan="2">스위치반</th>
                            <td>주중N수</td>
                            <td>평일만 이용 가능한 N수생
                            </td>
                            <td>3강좌
                            </td>
                            <td>450,000원
                            </td>
                        </tr>
                        <tr>
                            <td>주말재학</td>
                            <td>타 지역, 자사고, 특목고, 기숙학교 학생</td>
                            <td>1강좌
                            </td>
                            <td>180,000원
                            </td>
                        </tr>
                    </tbody>
                </table>
                <ul class="list-02">
                    <li>환불 유의사항</li>
                </ul>
                <ul class="list-04 mt0">
                    <li>바른공부 자습전용관은 사용한 일자를 제외한 나머지 금액만 환불가능 합니다.
                    </li>
                    <li>단과수업은 학원 설립 운영 및 과외교습에 관한 법률 시행령을 근거로 환불 규정에 따라, 수강료 환불이 이루어 집니다.<br>(단, 보강 영상 또는 자료를 수령했을 경우 해당 단과는 환불이 불가능합니다.)
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //모집요강 -->
</div>
<!-- //switch-wrap -->

<!--  공통 하단 //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->
<script src="./switch.js"></script>
</body>
</html>