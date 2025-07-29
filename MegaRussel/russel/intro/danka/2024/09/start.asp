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
    <style>
        .campus-list-danka.type01 {background:#F7F7F7;}
        .campus-list-danka.type01 .campus-list dl dt, .campus-list-danka .campus-list dl dd a {color:#ea5910 !important}
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
                    <div class="danka start">
                        <!-- visual -->
                        <div class="visual">
                            <p class="tit01"><img alt="2026학년도 수능 대비 고2 수능시작반" src="<%=Application("img_path_russel")%>/intro/danka/2024/09/start_tit01.png"/></p>  
                            <p class="tit02"><img alt="2026학년도 수능 대비 고2 수능시작반" src="<%=Application("img_path_russel")%>/intro/danka/2024/09/start_tit02.png"/></p>  
                            <p class="tit03"><img alt="2026학년도 수능 대비 고2 수능시작반" src="<%=Application("img_path_russel")%>/intro/danka/2024/09/start_tit03.png"/></p>                          
                            <dl class="txtbox">
                                <dt>고2 수능 시작반이란?</dt>
                                <dd>최상위권 대학을 목표로 하는 고2를 위하여,<br>
                                    수능 공부에 필요한 기본기를 미리 완성할 수 있도록 진행되는<br>
                                    수능 대비 학습 프로그램입니다.</dd>
                            </dl>
                            <div class="v-info">
                                <dl>
                                    <dt>모집 대상</dt>
                                    <dd>고2 또는 2026 수능 준비생</dd>
                                </dl>
                                <dl>
                                    <dt>개강일</dt>
                                    <dd>11월 순차 개강</dd>
                                </dl>
                            </div>
                            <span class="r-txt">※ 학원별 운영 일정은 상이할 수 있습니다.</span>
                            
                            <!-- 퀵메뉴 -->
                            <a class="quick" href="/intro/2024/winter/index.asp"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/09/start_quick.png"/></a>
                            <!-- bg -->
                            <p class="bg"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/09/start_visual.jpg"/></p>
                        </div>
                        <!-- //visual -->

                        <div class="cont cont01">
                            <img src="<%=Application("img_path_russel")%>/intro/danka/2024/09/start_cont01_img.jpg" alt="" />
                        </div>

                        <div class="cont cont02">
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/09/start_cont02_tit.jpg" alt="수능 준비를 빠르게 시작한 선배들의 결과는 달랐습니다." /></p>
                            <div class="inner">
                                <div class="slide-wrap">
                                    <div class="swiper-container slide">
                                        <div class="swiper-wrapper">
                                            <div class="swiper-slide">
                                                <dl class="stu">
                                                    <dt>
                                                        <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei_big02.png" alt="" /></p>
                                                        <p><strong>2024 연세대학교 의예과 합격</strong><br>
                                                            러셀CORE 광주 강세빈</p>
                                                    </dt>
                                                    <dd>
                                                        <p class="tit">빠르게 시작하여 수능과 내신 학습을 위한<br>
                                                            집중력을 완성했습니다.”</p>
                                                        <p class="txt">고2부터 러셀에 다니기 시작했습니다. 2학년이 되면 과목수가 늘어나<br>
                                                            <span>절대적인 공부량을 갑자기 늘려야 할 필요성이 생깁니다.</span><br>
                                                            이때 러셀에서 최상위권 학생들과 함께 공부하며 많이 자극받았습니다.<br>
                                                            또한 러셀에서의 긴 학습시간에 적응하며 <span>내신 대비, 이후 수능 준비에<br>
                                                            필요한 집중력을 기를 수 있었습니다.</span></p>
                                                    </dd>
                                                </dl>
                                            </div>
                                            <div class="swiper-slide">
                                                <dl class="stu">
                                                    <dt>
                                                        <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea_big02.png" alt="" /></p>
                                                        <p><strong>2024 고려대학교 의과대학 합격</strong><br>
                                                            러셀 영통 오서준</p>
                                                    </dt>
                                                    <dd>
                                                        <p class="tit">빠른 시작으로 학기 중에도 내신과 수능을 <br>
                                                            병행할 수 있었습니다.”</p>
                                                        <p class="txt"><span>학기 중에는 내신 위주로 공부하며 자투리 시간에 수능 공부를 했고,<br>
                                                            방학 중에는 수능 공부에 매진</span>하였습니다. 수능에서 고득점을 획득하기 <br>
                                                            위해서는 내신 기간에 심도 있게 공부한 내용이 큰 도움이 될 것입니다. <br>
                                                            여름방학과 겨울방학뿐만 아니라 학기 중에도 꾸준히 러셀 바자관에<br>
                                                            다니며 공부 패턴을 유지했던 것이 큰 도움이 되었습니다.</p>
                                                    </dd>
                                                </dl>
                                            </div>
                                            <div class="swiper-slide">
                                                <dl class="stu">
                                                    <dt>
                                                        <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei_big02.png" alt="" /></p>
                                                        <p><strong>2024 연세대학교 기계공학과 합격</strong><br>
                                                            러셀 분당 김세원</p>
                                                    </dt>
                                                    <dd>
                                                        <p class="tit">미리 개념을 탄탄하게 준비하여 <br>
                                                            고3 내내 수월하게 공부할 수 있었습니다.”</p>
                                                        <p class="txt">남들보다 빠르게 시작하여 <span>고3이 되기 전 여러 과목들의 개념들을<br>
                                                            탄탄하게 준비할 수 있었고 이를 바탕으로 3학년이 돼서도 비교적<br>
                                                            수월하게 공부</span>를 할 수 있었습니다. 그리고 미리 규칙적인 생활을 하여<br>
                                                            고3이 돼서도 반복적인 삶에 큰 거부감 없이 적응할 수 있었습니다.</p>
                                                    </dd>
                                                </dl>
                                            </div>
                                            <div class="swiper-slide">
                                                <dl class="stu">
                                                    <dt>
                                                        <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea_big02.png" alt="" /></p>
                                                        <p><strong>2024 고려대학교 사회학과 합격</strong><br>
                                                            러셀 부천 노은수</p>
                                                    </dt>
                                                    <dd>
                                                        <p class="tit">1년간의 공부 계획을 체계적으로 세우고<br>
                                                            집중할 수 있었습니다.”</p>
                                                        <p class="txt"><span>내신과 수능을 병행하여 준비하기 위해 미리 장기적인 계획을 세우고<br>
                                                            시간을 분배</span>하는 것이 큰 도움이 되었습니다. <span>고3이 되기 전 미리<br>
                                                            수능까지의 공부 계획을 시기별로 나누어 세웠고,</span> 이를 바탕으로<br>
                                                            졸업 사진 촬영 기간 등 내신 대비 기간 사이의 여유시간을 흐지부지<br>
                                                            보내지 않고 수능 공부에 집중할 수 있었습니다.</p>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <div class="swiper-pagination"></div>
                                    </div>
                                </div>
                                <p class="r-txt">* 2024 러셀 전체 학원 합격생의 후기 중 발췌</p>
                            </div>
                        </div>

                        <div class="cont cont03">
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/09/start_cont03_tit.jpg" alt="한발 빠른 수능 기본기 완성 고2 수능 시작반" /></p>
                            <div><img src="<%=Application("img_path_russel")%>/intro/danka/2024/09/start_cont03_img.jpg" alt="" /></div>
                            <div class="inner">
                                <div class="goto-box box02">
                                    <div>
                                        <p>
                                            면학분위기로 소문난 <strong>바른공부 자습전용관</strong><br>
                                            <span>*고2 수능 시작반의 수업은 바른공부 자습전용관을 이용하지 않아도 수강 가능합니다</span>
                                        </p>
                                    </div>
                                    <div>
                                        <a href="/intro/2024/regular_go/index.asp">재학생 정규반</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="cont cont04">
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/09/start_cont04_tit.jpg" alt="2026학년도 수능 고득점을 위한 고2 학습 로드맵" /></p>
                            <div class="inner">
                                <table class="start-tbl">
                                    <colgroup>
                                        <col style="width:auto">
                                        <col style="width:auto">
                                        <col style="width:auto">
                                        <col style="width:auto">
                                        <col style="width:auto">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th class="y24">9~12월</th>
                                            <th class="y25">1~2월</th>
                                            <th>3~6월</th>
                                            <th>7~8월</th>
                                            <th>9월~수능</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><strong>고2 수능 시작반</strong><br>
                                                (고2 학기 중)</td>
                                            <td><strong>윈터스쿨</strong><br>
                                                (고2 겨울방학 기간)</td>
                                            <td><strong>재학생 정규반</strong><br>
                                                (고3 학기 중)</td>
                                            <td><strong>썸머스쿨</strong><br>
                                                (고3 여름방학 기간)</td>
                                            <td><strong>파이널 정규반</strong><br>
                                                (고3 학기 중)</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <ul class="list">
                                                    <li>주요 과목<br>
                                                        수능 기초 개념<br>
                                                        완성</li>
                                                    <li>올바른 학습 습관<br>
                                                        형성</li>
                                                </ul>
                                            </td>
                                            <td>
                                                <ul>
                                                    <li>본격적인<br>
                                                        수능 학습 시작</li>
                                                    <li>전과목 기본 개념<br>
                                                        완성 및 문제 유형<br>
                                                        연습</li>
                                                </ul>
                                            </td>
                                            <td>
                                                <ul>
                                                    <li>내신과 수능 학습<br>
                                                        병행</li>
                                                    <li>문제풀이를 위한<br>
                                                        실전 개념과<br>
                                                        기출 유형 학습</li>
                                                </ul>
                                            </td>
                                            <td>
                                                <ul>
                                                    <li>취약 과목 및<br>
                                                        유형 집중 보완</li>
                                                    <li>변별력 높은<br>
                                                        문제풀이로 실전력<br>
                                                        향상</li>
                                                </ul>
                                            </td>
                                            <td>
                                                <ul>
                                                    <li>핵심 개념 및<br>
                                                        빈출 유형 최종 정리</li>
                                                    <li>파이널 모의고사로<br>
                                                        실전 훈련</li>
                                                </ul>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <p class="r-txt">* 모집 일정 및 운영 시기, 내용은 학원마다 다를 수 있습니다.</p>
                            </div>
                        </div>
                        
                        <p class="slideEnd"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/09/start_info.jpg" alt="학원 안내" /></p>
                        <!--학원별 수능 집중반 안내-->
                        <div class="campus-list-danka type01">
                            <!-- campus-list -->
                            <div class="campus-list">
                                <dl>
                                    <dt>최상위권 수준별 맞춤 단과<br><strong>러셀학원</strong></dt>
                                    <dd>
                                        <p>러셀 <strong>부천</strong></p>
                                        032) 265-1010
                                        <a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=330" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>영통</strong></p>
                                        031) 251-1010
                                        <a href="https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=355" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <!-- <dd>
                                        <p>러셀 <strong>중계</strong></p>
                                        02) 6316-1010
                                        <a href="https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=332" target="_blank">시간표 바로가기</a>
                                    </dd> -->
                                    <dd>
                                        <p>러셀 <strong>평촌</strong></p>
                                        031) 341-6500
                                        <a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=333" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대구</strong></p>
                                        053) 291-1010
                                        <a href="https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=354" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <!-- <dd>
                                        <p>러셀 <strong>울산 <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></strong></p>
                                        052) 913-1010
                                        <a href="https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=334" target="_blank">시간표 바로가기</a>
                                    </dd> -->
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

</body>
<script>

    $(function() {

        Slide();
    });
    
    function Slide(){
            var stuSlide = new Swiper('.slide', {
                slidesPerView: "auto",
                spaceBetween: 20,
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

            //  스크롤 떨림 현상 방지
            $(window).scroll(function(){

                var scroll = $(window).scrollTop();
                let cont02Top = $(".cont02").offset().top-110;
                let con03Top = $(".cont03").offset().top-110;

                if (scroll >= cont02Top && scroll <= con03Top) {
                    stuSlide.autoplay.start();
                } else {
                    stuSlide.autoplay.stop();

                }
            });
            
        }
</script>
</html>