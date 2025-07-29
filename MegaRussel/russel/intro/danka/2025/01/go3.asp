<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!-- #include virtual="/russel/library/include/mypage/my_campus_ams_common.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
    <link href="/common/css/2025/danka.css" rel="stylesheet" type="text/css">
    <script LANGUAGE="JavaScript" src="/russel/Public/Basic.js"></script>
    <style>
        .go3 .campus-list-danka {background:#F5F5F5;}
        .danka.go3 .visual .top-info .txt::before {content:'';position:absolute;top:-50px;left:80px;display:block;width:92px;height:47px;background:url('https://russeldata.megastudy.net/campus/images/russel/intro/danka/2025/01/info_top_img.png')no-repeat;}
        .danka.go3 .visual .top-info .txt:first-child::before {display:none;}
    </style>
</head>

<body>

    <div class="normal_wrap">
        <!-- 공통 최상단 // -->
        <!--#include virtual="/russel/library/include/common/russel/top.asp" -->
        <!-- // 공통 최상단 -->
    
        <div class="normal_contents_box">
    
            <div class="normal_sub_right">
                <!-- 공통 sub_menu 시작-->
                <!--#include virtual="/russel/library/include/common/russel/sub00_menu.asp" -->
                <!-- 공통 sub_menu 끝-->
    
                <!--sub 내용 -->
                <div class="normal_sub_con">
                    <div class="noraml_sub_header g_my_42_h">
                        <div class="normal_sub_depth">
                            <a class="depth_home"><img src="<%=Application("img_path")%>/library/russel/common/ic_home.gif" alt=""></a>
                         	<a class="normal_sub_depth"><%=arr_kind_top(left_menu_code)%></a>
                            <% if depth1_title <> "" then %>
							    <%if depth2_title = "" then%><a class="normal_sub_depth_curr"><%else%><a class="normal_sub_depth"><%end if%><%=depth1_title%></a>
						    <% end if %>
						    <% if depth2_title <> "" then %>
							    <a class="normal_sub_depth_curr"><%=depth2_title%></a>
						    <% end if %>
					    </div>
					<h2><%if depth2_title = "" then%><%=depth1_title%><%else%><%=depth2_title%><%end if%></h2>
                    </div>
                    <!-- 수능 실전 모의체험 배너 -->
                    <!--include virtual="/danka/2023/banner_csat.asp" -->
                    <!-- //수능 실전 모의체험 배너 -->
                    <!-- danka -->
                    <div class="danka go3 intro">

                        <!-- visual -->
                        <div class="visual intro">
                            <!-- 상단입결 -->
                            <!--#include virtual="/danka/2025/danka_top.asp" -->
                            <!-- //상단입결 -->

                            <div class="visual-wrap">
                                <p class="v-txt"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/01/go3_txt.png" alt="최상위권 수준별 맞춤 단과 & 메가스터디 수능 전문 강사진" /></p>
                                <div class="top-txt">
                                    <p class="grade"><strong>고3&middot;N수</strong></p>
                                    <p class="top-date">1<span>월</span></p>
                                </div>                            
    
                                <p class="v-tit"><img alt="정규,특강 단과" src="<%=Application("img_path_russel")%>/intro/danka/2025/01/go3_tit.png"/></p>
                                <p class="stxt">
                                    나에게 꼭 필요한 과목별/수준별/진도별 단과 선택으로<br>
                                    수능 1등급을 위한 실력을 완성하세요.
                                </p>
                                <div class="v-info">
                                    <dl>
                                        <dt>개강</dt>
                                        <dd>1/1(수)부터 순차 개강</dd>
                                    </dl>
                                    <dl>
                                        <dt>접수 방법</dt>
                                        <dd>현장 또는 온라인 접수</dd>
                                    </dl>
                                </div>
                            </div>

                            <div class="q-wrap">
                                <a class="quick" href="/intro/2024/winter/index.asp">
                                    <img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/01/go3_quick.png"/>
                                    <p>12월 5주 개강</p>
                                </a>
                            </div>
                            <p><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/01/go3_visual.jpg"/></p>
                        </div>
                        <!-- //visual -->

                        <p><img src="<%=Application("img_path_russel")%>/intro/danka/2025/01/go3_cont01.jpg" alt="" /></p>
                        <div class="cont02">
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2025/01/go3_cont02_tit.jpg" alt="" /></p>
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2025/01/go3_cont02_img.jpg" alt=""></p>
                            <p class="t_right">※ 바른공부 자습전용관을 이용하지 않아도 정규·특강 단과 수강이 가능합니다.</p>
                        </div>
                        <div class="cont03">
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2025/01/go3_cont03_tit.jpg" alt="" /></p>
                            <div class="review-wrap">
                                <div class="review-slide swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <div class="review">
                                                <dl>
                                                    <dt><img src="<%=Application("img_path_russel")%>/intro/danka/2025/01/go3_stu01.jpg" alt=""></dt>
                                                    <dd><strong>2024 서울대학교<br>
                                                        경제학부 합격</strong><br>
                                                        러셀 대치 이태규</dd>
                                                </dl>
                                                <p class="review-txt"><strong>강의력이 검증된 선생님들의 강의를 현장에서<br>
                                                    들을 수 있다는 점</strong>이 좋았습니다.<br>
                                                    수업이 끝난 이후 질의응답도 직접 할 수 있어서<br>
                                                    효율적으로 학습하는 데 도움이 되었습니다.<br>
                                                    또한 <strong>한 건물 안에 바자관과 강의실이 있어서<br>
                                                    이동 시간을 아낄 수 있었습니다.</strong></p>
                                            </div>
                                            <div class="review ml_40">
                                                <dl>
                                                    <dt><img src="<%=Application("img_path_russel")%>/intro/danka/2025/01/go3_stu02.jpg" alt=""></dt>
                                                    <dd><strong>2024 한양대학교<br>
                                                        의예과 합격</strong><br>
                                                        러셀CORE 광주 엄태옥</dd>
                                                </dl>
                                                <p class="review-txt"><strong>단과를 선택적으로 들을 수 있어서 시간을<br>
                                                    효율적으로 쓸 수 있다는 것</strong>입니다.<br>
                                                    부족하다고 생각하는 과목을 찾아 듣다 보니<br>
                                                    강제로 불필요한 수업을 들을 때와 달리<br>
                                                    <strong>집중력 있게 수업을 들을 수 있었고<br>
                                                    자습시간 확보에도 도움이 되었습니다.</strong></p>
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="review">
                                                <dl>
                                                    <dt><img src="<%=Application("img_path_russel")%>/intro/danka/2025/01/go3_stu03.jpg" alt=""></dt>
                                                    <dd><strong>2024 연세대학교<br>
                                                        신소재공학과 합격</strong><br>
                                                        러셀 대치 최하원</dd>
                                                </dl>
                                                <p class="review-txt"><strong>
                                                    바른공부 자습전용관과 강의실이 한 건물에<br>
                                                    위치하고 있어 동선이 짧아 이동시간을<br>
                                                    최소화</strong>할 수 있었습니다.<br>
                                                    또한 <strong>좌석예약시스템을 통해 편하게 좌석을<br>
                                                    예약</strong>하여 수업을 들을 수 있었습니다.</p>
                                            </div>
                                            <div class="review ml_40">
                                                <dl>
                                                    <dt><img src="<%=Application("img_path_russel")%>/intro/danka/2025/01/go3_stu04.jpg" alt=""></dt>
                                                    <dd><strong>2024 성균관대학교<br>
                                                        사회과학계열 합격</strong><br>
                                                        러셀 중계 이우진</dd>
                                                </dl>
                                                <p class="review-txt"><strong>본인의 취약과목을 집중 공략할 수 있게<br>
                                                    전 과목 골고루 현장강의를 수강</strong>할 수 있습니다.<br>
                                                    검증된 강사진으로 강의력이 출중하신 분들도<br>
                                                    많으시고, <strong>체계적인 수업과 커리큘럼으로<br>
                                                    수능까지 전략적으로 수업을 선택</strong>할 수<br>
                                                    있다는 게 좋았습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination"></div>
                                </div>
                                <p class="t_right">* 2024 러셀 전체 학원 합격생의 후기 중 발췌</p>
                            </div>
                        </div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/danka/2025/01/go3_time_tit.jpg" alt="학원별 정규,특강 단과 시간표 안내" /></p>
                        <!-- campus-list-danka -->
                        <div class="campus-list-danka">
                            <!-- campus-list -->
                            <div class="campus-list">
                                <dl>
                                    <dt><span class="stit02">최상위권 수준별 맞춤 단과</span><br>러셀학원</dt>
                                    <dd>
                                        <p>러셀 <strong>강남</strong></p>
                                        02) 6954-1010
                                        <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1804" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대치</strong></p>
                                        02) 2138-1010
                                        <a href="https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1805" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>목동</strong></p>
                                        02) 6932-1010
                                        <a href="https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1806" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>부천</strong></p>
                                        032) 265-1010
                                        <a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1807" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>분당</strong></p>
                                        031) 629-1010
                                        <a href="https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1808" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>영통</strong></p>
                                        031) 251-1010
                                        <a href="https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1809" target="_blank">시간표 바로가기</a>
                                    </dd>                                    
                                    <dd>
                                        <p>러셀 <strong>중계</strong></p>
                                        02) 6316-1010
                                        <a href="https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1810" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>평촌</strong></p>
                                        031) 341-6500
                                        <a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1811" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대구</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        053) 291-1010
                                        <a href="https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1812" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>센텀</strong></p>
                                        051) 715-1010
                                        <a href="https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1813" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>울산</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        052) 913-1010
                                        <a href="https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1814" target="_blank">시간표 바로가기</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt><span class="stit02">서연고 &middot; 의치약 전문관</span><br>러셀CORE</dt>
                                    <dd>
                                        <p>러셀CORE <strong>광주</strong></p>
                                        062) 462-1010
                                        <a href="https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1815" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>대전</strong></p>
                                        042) 381-2020
                                        <a href="https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1816" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>원주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        033) 901-2020
                                        <a href="https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1817" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>전주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        063) 905-3030
                                        <a href="https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1818" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd class="bbn">
                                        <p>러셀CORE <strong>창원</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        055) 605-1010
                                        <a href="https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1819" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>청주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        043) 908-1010
                                        <a href="https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1820" target="_blank">시간표 바로가기</a>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //campus-list -->
                        </div>
                        <!-- //campus-list-danka -->

                    </div>
                    <!-- //danka -->
                </div>
                <!-- //sub 내용 -->
            </div>
        </div>
    </div>

    <div class="normal_bottom_reout">
    <!--  공통 하단 //-->
    <!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
    <!--  // 공통 하단-->
    </div>

    <script>
	// 학생리뷰 슬라이드
	var reviewSwiper = new Swiper('.review-slide', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		spaceBetween: 10,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination",
		}
	});
    </script>

</body>
</html>