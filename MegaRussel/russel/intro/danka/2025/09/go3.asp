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
        .danka.go3 .visual .top-info .txt::before {content:'';position:absolute;top:-50px;left:80px;display:block;width:92px;height:47px;background:url('https://russeldata.megastudy.net/campus/images/russel/intro/danka/2025/05/info_top_img.png')no-repeat;}
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
                                    <p class="top-date">9<span>월</span></p>
                                </div>                            
    
                                <p class="v-tit"><img alt="정규,특강 단과" src="<%=Application("img_path_russel")%>/intro/danka/2025/01/go3_tit.png"/></p>
                                <p class="stxt">
                                    나에게 꼭 필요한 과목별/수준별/진도별 단과 선택으로<br>
                                    수능 1등급을 위한 실력을 완성하세요.
                                </p>
                                <div class="v-info">
                                    <dl>
                                        <dt>개강</dt>
                                        <dd>9/1(월)부터 순차 개강</dd>
                                    </dl>
                                    <dl>
                                        <dt>접수 방법</dt>
                                        <dd>현장 또는 온라인 접수</dd>
                                    </dl>
                                </div>
                            </div>

                            <div class="q-wrap">
                                <a class="quick" href="/intro/2025/final/index.asp">
                                    <img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/09/go3/go3_quick.png"/>
                                    <p style="bottom:15px;">현재 모집 중</p>
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
                                            <div class="review badge">
                                                <dl>
                                                    <dt><img src="<%=Application("img_path_russel")%>/intro/danka/2025/06/go3/go3_stu01.jpg" alt=""></dt>
                                                    <dd><strong>2025 연세대학교<br>
                                                        의예과 합격</strong><br>
                                                        러셀 영통 임희수</dd>
                                                </dl>
                                                <p class="review-txt">
                                                   <strong>
                                                        온라인으로 좌석을 선택할 수 있어, <br>
                                                        자신이 원하는 수업 환경을 적절히 선택</strong>할 <br>
                                                    수 있었던 점이 가장 좋았습니다. <br>
                                                    단과 선생님께서는 양질의 자료와 실전적인 <br>
                                                    전략 설계 등을 수업하시면서 
                                                    <strong>
                                                        제가 만점을 <br>
                                                        받을 수 있는 실력을 빠르게 만들어 <br>
                                                        주셨습니다.
                                                    </strong>
                                                </p>
                                            </div>
                                            <div class="review ml_40 badge">
                                                <dl>
                                                    <dt><img src="<%=Application("img_path_russel")%>/intro/danka/2025/06/go3/go3_stu02.jpg" alt=""></dt>
                                                    <dd><strong>2025 성균관대학교<br>
                                                        의예과 합격</strong><br>
                                                        러셀 대치 신세영</dd>
                                                </dl>
                                                <p class="review-txt">
                                                    러셀 단과의 <strong>체계적이고 풍부한 커리큘럼</strong>이<br> 좋았습니다. 
                                                   <strong>
                                                        온라인에서만 보던 1타 선생님의<br>
                                                        강의와 커리큘럼을 현장에서 생생하게 느낄<br>
                                                        수 있다</strong>는 점이 좋았습니다.<br>
                                                    그리고 무엇보다 선생님께서 학생들을 위해<br>
                                                    항상 열정을 다하는 모습을 보여 주셔서<br>
                                                    수험 생활 내내 믿고 들을 수 있었습니다.

                                                </p>
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="review">
                                                <dl>
                                                    <dt><img src="<%=Application("img_path_russel")%>/intro/danka/2025/06/go3/go3_stu03.jpg" alt=""></dt>
                                                    <dd><strong>2025 경희대학교<br>
                                                        의예과 합격</strong><br>
                                                        러셀 평촌 김성윤</dd>
                                                </dl>
                                                <p class="review-txt">
                                                    가장 큰 장점은 바자관과 단과 강의실이<br>
                                                    같은 건물에 있기에 학습 동선을 최소화할 수<br>                                            
                                                    있었다는 점입니다. 
                                                    <strong>취약한 과목의 강좌를<br>
                                                        선택적으로 학습한 후 시간 소모 없이<br>
                                                        바자관에서 바로 자습을 이어서 진행</strong>할 수<br>
                                                    있었기에 시간 낭비를 줄일 수 있었습니다.                                                    
                                                </p>
                                            </div>
                                            <div class="review ml_40">
                                                <dl>
                                                    <dt><img src="<%=Application("img_path_russel")%>/intro/danka/2025/06/go3/go3_stu04.jpg" alt=""></dt>
                                                    <dd><strong>2025 서울대학교<br>
                                                        정치외교학부 합격</strong><br>
                                                        러셀 센텀 추유찬</dd>
                                                </dl>
                                                <p class="review-txt">
                                                    러셀 단과는 <strong>필요한 수업을 선택해서 들을<br>
                                                    수 있다</strong>는 장점이 있고, 수준 높은 수업과<br>
                                                    열정적인 선생님을 만날 수 있는 장점이<br>
                                                    있습니다. 실전 수업을 통해 시간 관리법을 <br>
                                                    익히며 <strong>수능장에서 사용할 수 있는 실전<br>
                                                    팁들을 많이 전수받을 수 있었습니다. </strong>
                                                    
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination"></div>
                                </div>
                                <p class="t_right">* 2025 러셀 전체 학원 합격생의 후기 중 발췌</p>
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
                                        <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2087" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대치</strong></p>
                                        02) 2138-1010
                                        <a href="https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2088" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>목동</strong></p>
                                        02) 6932-1010
                                        <a href="https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2089" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>부천</strong></p>
                                        032) 265-1010
                                        <a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2090" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>분당</strong></p>
                                        031) 629-1010
                                        <a href="https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2091" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>영통</strong></p>
                                        031) 251-1010
                                        <a href="https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2092" target="_blank">시간표 바로가기</a>
                                    </dd>                                    
                                    <dd>
                                        <p>러셀 <strong>중계</strong></p>
                                        02) 6316-1010
                                        <a href="https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2093" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>평촌</strong></p>
                                        031) 341-6500
                                        <a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2094" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대구</strong></p>
                                        053) 291-1010
                                        <a href="https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2095" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대전</strong></p>
                                        042) 381-2020
                                        <a href="https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2096" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>센텀</strong></p>
                                        051) 715-1010
                                        <a href="https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2097" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>울산</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        052) 913-1010
                                        <a href="https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2098" target="_blank">시간표 바로가기</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt><span class="stit02">서연고 &middot; 의치약 전문관</span><br>러셀CORE</dt>
                                    <dd>
                                        <p>러셀CORE <strong>광주</strong></p>
                                        062) 462-1010
                                        <a href="https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2099" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>원주</strong></p>
                                        033) 901-2020
                                        <a href="https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2100" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>전주</strong></p>
                                        063) 905-3030
                                        <a href="https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2101" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd class="bbn">
                                        <p>러셀CORE <strong>창원</strong></p>
                                        055) 605-1010
                                        <a href="https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2102" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>청주</strong></p>
                                        043) 908-1010
                                        <a href="https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2103" target="_blank">시간표 바로가기</a>
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