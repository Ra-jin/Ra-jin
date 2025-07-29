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
        .campus-list-danka {background:#f7f7f7;}
        .campus-list-danka .campus-list dl dt {color:#0F6AFF}
        a.link {pointer-events:none;cursor:default;color:#aaa !important}
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
                    <div class="danka am intro">

                        <!-- visual -->
                        <div class="visual intro">
                            <!-- 상단입결 -->
                            <!--include virtual="/danka/2025/danka_top.asp" -->
                            <!-- //상단입결 -->

                            <div class="visual-wrap">
                                <p class="v-txt"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/02/am_v_tit01.png" alt="N수생을 위한 집중 관리형 수업" /></p>                           
                                <p class="v-date"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/02/am_v_date.png" alt=""></p>
                                <p class="v-tit"><img alt="am 단과" src="<%=Application("img_path_russel")%>/intro/danka/2025/02/am_tit.png"/></p>
                                <div class="v-clock">
                                    <div>
                                        <p class="img"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/02/am_clock.png"/></p>
                                        <span class="clock">
                                            <span class="front ring"></span>
                                            <span class="front"></span>
                                            <span class="pole layer"></span>
                                            <span class="pole layer02"></span>
                                            <span class="hour"></span>
                                            <span class="hour_back"></span>
                                            <span class="min"></span>
                                        </span>
                                    </div>
                                    <p class="ico"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/02/am_ico_clock.png"/></p>
                                    <p class="light"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/02/am_light.png"/></p>
                                </div>
                                <p class="stxt">러셀 AM단과로 하루를 시작하면 결과가 달라집니다.</p>
                                <div class="v-info">
                                    <dl>
                                        <dt>개강</dt>
                                        <dd>2월 순차적 개강</dd>
                                    </dl>
                                </div>
                                <div class="txt-box">
                                    <strong>AM단과란, N수생을 위한 집중 관리형 평일 오전/오후 단과입니다.</strong><br>
                                    <span>관리력이 가장 강력한 선생님이 진행하는 N수 전용 수업</span>으로<br>
                                    세밀한 학습 관리를 위하여 <span>수업 정원을 적정 인원으로 제한</span>합니다.<br> 
                                    <span>나에게 필요한 수업을 과목별&middot;수준별로 선택</span>하여 보다 효율적으로 시간을 활용할 수 있습니다.
                                </div>
                            </div>

                            <!-- 퀵메뉴 -->
                            <div class="q-wrap" style="top:<%=quick_top%>">
                                <a class="quick" href="/intro/2025/regular/index.asp">
                                    <img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/02/am_quick.png"/>
                                    <p>2월 순차 개강</p>
                                </a>
                            </div>
                            <!-- <p class="v-bg"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/02/am_visual.jpg"/></p> -->
                        </div>
                        <!-- //visual -->

                        <!-- contents -->
                        <div class="cont01">
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2025/02/am_cont01_tit.jpg" alt="AM단과로 시작하면 결과가 달라집니다."></p>
                            <div class="slide-wrap">
                                <div class="am-slide-navi swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/02/am_navi01_on.png" alt="N수 맞춤수업"></div>
                                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/02/am_navi02.png" alt="강력해진 선생님"></div>
                                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/02/am_navi03.png" alt="효율적인 시간 관리"></div>
                                    </div>
                                </div>
                                <div class="am-slide swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/02/am_slide01.jpg" alt=""></div>
                                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/02/am_slide02.jpg" alt=""></div>
                                        <div class="swiper-slide">
                                            <img src="<%=Application("img_path_russel")%>/intro/danka/2025/02/am_slide03.jpg" alt="">
                                            <a href="https://russel.megastudy.net/russel/study_hall/default.asp" style="position:absolute;bottom:140px;right:70px;width:138px;height:59px;"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- cont02 -->
                        <div class="cont02">
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2025/02/am_cont02_tit.jpg" alt="오전 시간 활용과 학습량의 차이 AM단과를 수강한 선배들의 대입성공이 증명합니다."></p>
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2025/02/am_cont02_img.jpg" alt=""></p>
                        </div>
                        <!-- //contents -->

                        <p><img src="<%=Application("img_path_russel")%>/intro/danka/2025/02/am_time_tit.jpg" alt="학원별 정규,특강 단과 시간표 안내" /></p>
                        <!-- campus-list-danka -->
                        <div class="campus-list-danka">
                            <!-- campus-list -->
                            <div class="campus-list">
                                <dl>
                                    <dt><span class="stit02">최상위권 수준별 맞춤 단과</span><br>러셀학원</dt>
                                    <dd>
                                        <p>러셀 <strong>강남</strong></p>
                                        02) 6954-1010
                                        <a class="link" href="" target="_blank">3월 개강 예정</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대치</strong></p>
                                        02) 2138-1010
                                        <a class="link" href="" target="_blank">3월 개강 예정</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>목동</strong></p>
                                        02) 6932-1010
                                        <a href="https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1847" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>부천</strong></p>
                                        032) 265-1010
                                        <a class="link" href="" target="_blank">3월 개강 예정</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>분당</strong></p>
                                        031) 629-1010
                                        <a class="link" href="" target="_blank">3월 개강 예정</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>영통</strong></p>
                                        031) 251-1010
                                        <a class="link" href="" target="_blank">3월 개강 예정</a>
                                    </dd>                                    
                                    <dd>
                                        <p>러셀 <strong>중계</strong></p>
                                        02) 6316-1010
                                        <a href="https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1848" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>평촌</strong></p>
                                        031) 341-6500
                                        <a class="link" href="" target="_blank">3월 개강 예정</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대구</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        053) 291-1010
                                        <a class="link" href="" target="_blank">3월 개강 예정</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>센텀</strong></p>
                                        051) 715-1010
                                        <a class="link" href="" target="_blank">3월 개강 예정</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>울산</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        052) 913-1010
                                        <a class="link" href="" target="_blank">3월 개강 예정</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt><span class="stit02">서연고 &middot; 의치약 전문관</span><br>러셀CORE</dt>
                                    <!-- <dd>
                                        <p>러셀CORE <strong>광주</strong></p>
                                        062) 462-1010
                                        <a href="" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>대전</strong></p>
                                        042) 381-2020
                                        <a href="" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>원주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        033) 901-2020
                                        <a href="" target="_blank">시간표 바로가기</a>
                                    </dd> -->
                                    <dd>
                                        <p>러셀CORE <strong>전주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        063) 905-3030
                                        <a class="link" href="" target="_blank">3월 개강 예정</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>창원</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        055) 605-1010
                                        <a class="link" href="" target="_blank">3월 개강 예정</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>청주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        043) 908-1010
                                        <a class="link" href="" target="_blank">3월 개강 예정</a>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //campus-list -->
                        </div>

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
        $(function() {
            amSlide();
        })

        function amSlide(){
            var amslideNav = new Swiper('.am-slide-navi', {
                slidesPerView: 3,
                freeMode: true,
                watchSlidesVisibility: true,
                watchSlidesProgress: true,
                allowTouchMove:false,
            });	

            var slideCont = new Swiper('.am-slide', {
                loop: true,
                autoHeight: true,
                speed : 500,
                allowTouchMove: true,
                autoplay:{
                    delay: 8000,
                    disableOnInteraction: false,
                },
                thumbs: {
                    swiper: amslideNav
                },
                observer: true,
                observeParents: true,
                on: {
                    // 슬라이드 change시 메뉴이미지 변경
                    beforeTransitionStart: function () {
                        let activeIndex = this.realIndex;
                        $('.am-slide-navi .swiper-slide').eq(activeIndex).addClass('active').siblings().removeClass('active');

                        $('.am-slide-navi .swiper-slide').children().attr("src",function(idx, j){ return j.replace("_on.png",".png"); });
                        $('.am-slide-navi .swiper-slide.active').children().attr("src", function(idx, j){ return j.replace(".png","_on.png"); });
                    }
                }
            });

            //  스크롤 떨림 현상 방지
		$(window).scroll(function(){

        var scroll = $(window).scrollTop();
        let cont01Top = $(".cont01").offset().top - 300;
        let con02Top = $(".cont02").offset().top - 300;

        if (scroll >= cont01Top && scroll <= con02Top) {
            slideCont.autoplay.start();
        } else {
            slideCont.autoplay.stop();
        }
        })
        };
    </script>

</body>
</html>