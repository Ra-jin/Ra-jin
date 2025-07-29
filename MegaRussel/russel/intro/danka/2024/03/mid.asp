<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!-- #include virtual="/russel/library/include/mypage/my_campus_ams_common.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
    <link href="/common/css/2024/danka.css" rel="stylesheet" type="text/css">
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
                            <p class="bg"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/03/mid_visual.jpg"/></p>
                            
                            <div class="top-txt">
                                <p><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/03/mid_visual_tit01.png"/></p>
                                <div>
                                    <p class="grade"><strong>고1&middot;고2</strong></p>
                                    <p class="top-date">4<span>월</span></p>
                                </div>
                            </div>                            

                            <p class="tit tit01"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/03/mid_visual_tit02.png"/></p>
                            <p class="tit tit02"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/03/mid_visual_tit03.png"/></p>
                            <p class="stxt">
                                검증된 러셀 내신 전임 강사진과 <strong>학교별&middot;단원별&middot;수준별 맞춤 수업</strong>으로 <br>
                                <strong>내신 1등급 달성을 위한 실력을 완성</strong>하세요!
                            </p>
                            <div class="v-info">
                                <dl>
                                    <dt>개강</dt>
                                    <dd>4월 순차 개강</dd>
                                </dl>
                                <dl>
                                    <dt>접수 기간</dt>
                                    <dd>학원별 시간표 참조</dd>
                                </dl>
                            </div>
                            <p class="tit tit03">※ 러셀 내신 대비 강좌는 바른공부 자습전용관을 이용하지 않아도 수강할 수 있습니다.</p>
                            <p class="ico l-hand"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/03/mid_left_hand.png"/></p>
                            <p class="ico r-hand"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/03/mid_right_hand.png"/></p>

                        </div>
                        <!-- //visual -->

                        <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/03/mid_cont_tit01.jpg" alt="" /></p>
                        <div class="cont cont01">
                            <div class="slide-wrap">
                                <div class="slide swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/03/mid_slide01.jpg" alt=""></div>
                                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/03/mid_slide02.jpg" alt=""></div>
                                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/03/mid_slide03.jpg" alt=""></div>
                                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/03/mid_slide04.jpg" alt=""></div>
                                    </div>
                                    <div class="swiper-pagination"></div>
                                </div>
                            </div>
                        </div>

                        <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/03/mid_cont_tit02.jpg" alt="" /></p>
                        <div class="cont cont02">
                            <div class="naesin-slide-wrap">
                                <div class="naesin-slide-navi">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/03/mid_tab_tit01.jpg" alt="내신 대비 강좌" /></div>
                                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/03/mid_tab_tit02.jpg" alt="내신 커리큘럼" /></div>
                                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/03/mid_tab_tit03.jpg" alt="내신 전임 강사진" /></div>
                                    </div>
                                </div>
                                <div class="swiper-container naesin-slide">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <div><img src="<%=Application("img_path_russel")%>/intro/danka/2024/03/mid_tab_img01.jpg" alt="" /></div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div><img src="<%=Application("img_path_russel")%>/intro/danka/2024/03/mid_tab_img02.jpg" alt="" /></div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div><img src="<%=Application("img_path_russel")%>/intro/danka/2024/03/mid_tab_img03.jpg" alt="" /></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="goto-wrap">
                                <div class="goto-box box01">
                                    <div>
                                        <p>
                                            면학분위기로 소문난 러셀이 만든 <br>
                                            <strong>학종설계+내신관리 전문관 [피켈(PICKEL)]</strong>
                                        </p>
                                    </div>
                                    <div>
                                        <a href="/russel/entinfo/pickel/index.asp">자세히 보기></a>
                                    </div>
                                </div>
                                <div class="goto-box box02">
                                    <div>
                                        <p>
                                            최상위권을 위한 재학생 맞춤 시스템 <br>
                                            <strong>바른공부 자습전용관 2025 재학생 정규반</strong>
                                        </p>
                                    </div>
                                    <div>
                                        <a href="/intro/2024/regular_go/index.asp">현재 모집 중</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <p class="slideEnd"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/03/mid_info.jpg" alt="시간표 안내" /></p>
                        <!-- campus-list-danka -->
                        <div class="campus-list-danka">
                            <!-- campus-list -->
                            <div class="campus-list">
                                <dl>
                                    <dt><span class="stit02">최상위권 수준별 맞춤 단과</span><br>러셀학원</dt>
                                    <dd>
                                        <p>러셀 <strong>강남</strong></p>
                                        02) 6954-1010
                                        <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=242" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>부천</strong></p>
                                        032) 265-1010
                                        <a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=296" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>영통</strong></p>
                                        031) 251-1010
                                        <a href="https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=300" target="_blank">시간표 바로가기</a>
                                    </dd>                                    
                                    <dd>
                                        <p>러셀 <strong>중계</strong></p>
                                        02) 6316-1010
                                        <a href="https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=301" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>평촌</strong></p>
                                        031) 341-6500
                                        <a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=302" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대구</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        053) 291-1010
                                        <a href="https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=295" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>센텀</strong></p>
                                        051) 715-1010
                                        <a href="https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=303" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>울산</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        052) 913-1010
                                        <a href="https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=304" target="_blank">시간표 바로가기</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt><span class="stit02">서연고 &middot; 의치약 전문관</span><br>러셀CORE</dt>
                                    <dd>
                                        <p>러셀CORE <strong>원주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        033) 901-2020
                                        <a href="https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=305" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>청주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        043) 908-1010
                                        <a href="https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=306" target="_blank">시간표 바로가기</a>
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

</body>
<script>

    $(function() {

        Slide();
        tabSlide();
    });
    
    function Slide(){
            var tanCont = new Swiper('.slide', {
                slidesPerView: "auto",
                spaceBetween: 10,
                autoplay: {
                delay: 5000,
                disableOnInteraction: false,
                },
                loop: true,
                pagination:{
                    el: ".swiper-pagination",
                    clickable: true,
                },
                autoHeight: true,
            });
        }



    /* 탭슬라이드 */
    function tabSlide(){
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
            autoplay:{
                delay: 7000,
                disableOnInteraction: false,
            },
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
                }
            }
        });

        // //스크롤 이벤트
        // $(window).scroll(function(){
        //     var wScroll = $(window).scrollTop();

        //     //탭슬라이드 스타트
        //     var gTop06 = $(".cont02");
        //     var $gtopScroll06  = gTop06.offset().top - 100;
        //     var gEnd = $(".slideEnd").offset().top;
        //     if(wScroll >= $gtopScroll06 && wScroll < gEnd){
        //         slideCont.autoplay.start(0)

        //         $('.naesin-slide').hover(
        //             function(){
        //                 slideCont.autoplay.stop()
        //             },
        //             function(){
        //                 slideCont.autoplay.start(0)
        //             }
        //         )
        //     } else {
        //         slideCont.autoplay.stop()
        //     }
        // })

    }

</script>
</html>