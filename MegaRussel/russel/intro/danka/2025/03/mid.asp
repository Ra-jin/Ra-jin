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
                    <div class="danka mid">
                        <!-- visual -->
                        <div class="visual">
                            <!-- 상단입결 -->
                            <!--include virtual="/danka/2023/danka_top.asp" -->
                            <!-- //상단입결 -->
                            <p class="bg"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/03/mid_visual.jpg"/></p>
                            
                            <div class="visual-wrap">
                                <div class="top-txt">
                                    <p><img alt="학교별 맞춤 내신 강좌 & 러셀 내신 전임 강사진" src="<%=Application("img_path_russel")%>/intro/danka/2025/03/mid_visual_tit01.png"/></p>
                                    <div>
                                        <p class="grade"><strong>고1&middot;고2</strong></p>
                                        <p class="top-date">3~4<span>월</span></p>
                                    </div>
                                </div>                            
    
                                <p class="tit tit01"><img alt="1학기 중간고사" src="<%=Application("img_path_russel")%>/intro/danka/2025/03/mid_visual_tit02.png"/></p>
                                <p class="hand"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/03/mid_visual_hand.png" alt=""></p>
                                <p class="tit tit02">
                                    검증된 러셀 내신 전임 강사진과<br>
                                    <strong>학교별&middot;단원별&middot;수준별 맞춤 수업</strong>으로<br>
                                    <strong>내신 1등급 달성을 위한 실력을 완성</strong>하세요!
                                </p>
                                <div class="v-info">
                                    <dl>
                                        <dt>개강</dt>
                                        <dd>3월 순차 개강</dd>
                                    </dl>
                                    <dl>
                                        <dt>접수 기간</dt>
                                        <dd>학원별 시간표 참조</dd>
                                    </dl>
                                </div>
                                <p class="tit tit03">※ 러셀 내신 대비 강좌는 바른공부 자습전용관을<br>
                                    이용하지 않아도 수강할 수 있습니다.</p>
                            </div>

                            <!-- 퀵메뉴 -->
                            <div class="q-wrap">
                                <a class="quick" href="/intro/2025/regular_go/index.asp">
                                    <img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/03/mid_quick.png"/>
                                    <p>현재 모집 중</p>
                                </a>
                            </div>
                        </div>
                        <!-- //visual -->

                        <p><img src="<%=Application("img_path_russel")%>/intro/danka/2025/03/mid_cont_tit01.jpg" alt="" /></p>
                        <div class="cont">
                            <div class="naesin-slide-wrap">
                                <div class="naesin-slide-navi">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/03/mid_tab_tit01.jpg" alt="내신 대비 강좌" /></div>
                                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/03/mid_tab_tit02.jpg" alt="내신 커리큘럼" /></div>
                                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/03/mid_tab_tit03.jpg" alt="내신 전임 강사진" /></div>
                                    </div>
                                </div>
                                <div class="swiper-container naesin-slide">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <div><img src="<%=Application("img_path_russel")%>/intro/danka/2025/03/mid_tab_img01.jpg" alt="" /></div>
                                        </div>
                                        <div class="swiper-slide start">
                                            <div><img src="<%=Application("img_path_russel")%>/intro/danka/2025/03/mid_tab02_img.jpg" alt=""></div>
                                            <ul class="tab-slide-list">
                                                <li class="on"></li>
                                                <li class="ml_10"></li>
                                                <li class="ml_10"></li>
                                            </ul>
                                            <div><img src="<%=Application("img_path_russel")%>/intro/danka/2025/03/mid_tab02_img02.jpg" alt=""></div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div><img src="<%=Application("img_path_russel")%>/intro/danka/2025/03/mid_tab_img03.jpg" alt="" /></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="goto-wrap">
                                <div class="goto-box">
                                    <img src="<%=Application("img_path_russel")%>/intro/danka/2025/03/mid_banner.jpg" alt="학종설계+내신관리 전문관 [피켈(PICKEL)]">
                                    <a href="/russel/entinfo/pickel/index.asp"></a>
                                </div>
                                <div class="goto-box">
                                    <img src="<%=Application("img_path_russel")%>/intro/danka/2025/03/mid_banner02.jpg" alt="면학분위기로 소문난 바른공부 자습전용관">
                                    <a href="/russel/study_hall/default.asp"></a>
                                </div>
                            </div>
                        </div>
                        
                        <p class="slideEnd"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/03/mid_info.jpg" alt="시간표 안내" /></p>
                        <!-- campus-list-danka -->
                        <div class="campus-list-danka">
                            <!-- campus-list -->
                            <div class="campus-list">
                                <dl>
                                    <dt><span class="stit02">최상위권 수준별 맞춤 단과</span><br>러셀학원</dt>
                                    <dd>
                                        <p>러셀 <strong>강남</strong></p>
                                        02) 6954-1010
                                        <a href="javascript:alert('추후 오픈 예정입니다.');">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>부천</strong></p>
                                        032) 265-1010
                                        <a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=361" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>영통</strong></p>
                                        031) 251-1010
                                        <p class="bt" style="width:auto;">
                                            <a href="https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=362" target="_blank">고1&middot;고2</a>
                                            <a href="https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=363" target="_blank">중3</a>
                                        </p>
                                    </dd>                                    
                                    <dd>
                                        <p>러셀 <strong>중계</strong></p>
                                        02) 6316-1010
                                        <a href="https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=370" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>평촌</strong></p>
                                        031) 341-6500
                                        <a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=364" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대구</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        053) 291-1010
                                        <a href="https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=295" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>센텀</strong></p>
                                        051) 715-1010
                                        <a href="https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=365" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>울산</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        052) 913-1010
                                        <a href="https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=366" target="_blank">시간표 바로가기</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt><span class="stit02">서연고 &middot; 의치약 전문관</span><br>러셀CORE</dt>
                                    <dd>
                                        <p>러셀CORE <strong>원주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        033) 901-2020
                                        <a href="https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=367" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>전주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        063) 905-3030
                                        <a href="https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=372" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>창원</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        055) 605-1010
                                        <a href="https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=368" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>청주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        043) 908-1010
                                        <a href="https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=369" target="_blank">시간표 바로가기</a>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //campus-list -->
                        </div>
                        <!-- campus-list-danka -->
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

</body>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        var naesinSlideNav = new Swiper('.naesin-slide-navi', {
            slidesPerView: 3,
            freeMode: true,
            watchSlidesVisibility: true,
            watchSlidesProgress: true,
            allowTouchMove:false,
        });
        var slideCont = new Swiper('.naesin-slide', {
            loop: true,
            autoHeight: true,
            allowTouchMove: true,
            // autoplay:{
            //     delay: 7000,
            //     disableOnInteraction: false,
            // },
            thumbs: {
                swiper: naesinSlideNav
            },
            on: {
                // 슬라이드 change시 메뉴이미지 변경
                beforeTransitionStart: function () {
                    let activeIndex = this.realIndex;
                    $('.naesin-slide-navi .swiper-slide').eq(activeIndex).addClass('active').siblings().removeClass('active');

                    $('.naesin-slide-navi .swiper-slide').children().attr("src",function(idx, j){ return j.replace("_on.jpg",".jpg"); });
                    $('.naesin-slide-navi .swiper-slide.active').children().attr("src", function(idx, j){ return j.replace(".jpg","_on.jpg"); });
                },
                slideChange: function () {
                    // 현재 활성화된 슬라이드가 .tab-slide인지 확인
                    let activeSlide = document.querySelector(".naesin-slide .start");
                    if (activeSlide) {
                        // 이미지 변경 시작
                        startImageRotation(activeSlide); 
                    } else {
                        // 이미지 변경 중지
                        stopImageRotation(); 
                    }
                },
            }
        });

        var tabList, index = 0, interval;

        // 이미지 변경 시작
        function startImageRotation(activeSlide){
            tabList = activeSlide.querySelectorAll(".tab-slide-list li");
            if(!tabList.length) return;

            stopImageRotation();

            interval = setInterval(function(){
                tabList[index].classList.remove("on");
                index = (index +1) % tabList.length;
                tabList[index].classList.add("on");
            }, 3000);
        }

        // 이미지 변경 중지
        function stopImageRotation(){
            clearInterval(interval);
        }
    });
</script>
</html>