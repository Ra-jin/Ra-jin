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
        .jung3 .campus-list-danka.type01 {background:#F7F7F7;}
        .jung3 .campus-list-danka.type01 .campus-list dl dt, .jung3 .campus-list-danka.type01 .campus-list dl dd a {color: #A149F5}        
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
                    <div class="danka jung3">
                        <!-- visual -->
                        <div class="visual">
                            <!-- 상단입결 -->
                            <!--include virtual="/danka/2023/danka_top.asp" -->
                            <!-- //상단입결 -->

                            <div>
                                <p class="quick">
                                    <a href="/intro/2024/winter/index.asp">
                                        <img alt="퀵배너" src="<%=Application("img_path_russel")%>/intro/danka/2024/08/jung3_quick.png">
                                        <span>2024년 12월 개강</span>
                                    </a>
                                </p>
                                <p class="year">2025년 <br>고1</p>                           
                                <p class="v-tit01"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/08/jung3_visual01.png"/></p>
                                <p class="v-tit02"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/08/jung3_visual02.png"/></p>
                                <p class="v-obj01"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/08/jung3_visual_obj01.png"/></p>
                                <p class="v-obj02"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/08/jung3_visual_obj02.png"/></p>
                                <p class="visual-btm-stxt">새롭게 바뀐 내신&middot;수능 체제, <br>러셀과 지금부터 준비하면 걱정할 필요 없습니다! </p>
                                <div class="vis-info">
                                    <ul>
                                        <li>
                                            <p>모집 대상</p>
                                            <p>고등학교 진학을 앞둔 중3</p>
                                        </li>
                                        <li>
                                            <p>개강일</p>
                                            <p> 
                                                11월부터 학원별 순차 개강                                             
                                            </p>
                                        </li>
                                    </ul>
                                    <p class="vis-txt">※ 학원별 운영 일정은 상이할 수 있습니다.</p>
                                </div>
                            </div>
                            <!-- <p class="bg"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/08/jung3_visual.jpg"/></p> -->
                        </div>
                        <!-- //visual -->

                        <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/08/jung3_tit01.jpg" alt="" /></p>
                        <div class="cont cont01">
                            <div class="slide-wrap">
                                <div class="slide swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/08/jung3_slide01.png" alt=""></div>
                                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/08/jung3_slide02.png" alt=""></div>
                                    </div>
                                    <div class="swiper-pagination"></div>
                                </div>
                            </div>
                        </div>
                        <div class="cont cont02">
                            <div><img src="<%=Application("img_path_russel")%>/intro/danka/2024/08/jung3_cont02.jpg" alt=""></div>
                        </div>
                        <div class="cont cont03">
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/08/jung3_tit03.jpg" alt="" /></p>
                            <div class="cont-box">
                                <ul class="inner-box">
                                    <li>
                                        <div class="left">
                                            <div class="num"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/08/jung3_ico_num01.png" alt=""></div>
                                            <div class="tit">
                                                검증된 고1 전문 강사진의 <br>
                                                <strong>2022 개정 교육과정 대비 맞춤 수업</strong>
                                            </div>
                                            <div class="txt-box">
                                                <ul class="list-03">
                                                    <li> <strong>2022 개정 교육과정에 최적화</strong>된 수업 진행 및 교재 사용</li>
                                                    <li> 고등학교와 연계성이 높은 <strong>중학교 학습 내용에 대한 리뷰</strong></li>
                                                    <li> 고등학교 <strong>기초 개념과 문제풀이능력 등</strong> <br>
                                                        <strong>기본기 수업</strong> 및 <strong>수업 후 1:1 개별 클리닉 진행</strong>
                                                    </li>
                                                    <li> 사고력&middot;문제해결력을 평가할 수 있는 <strong>논&middot;서술형 평가 진행</strong></li>
                                                </ul>
                                                <p class="info-txt">※ 각 학원별로 수업 운영 방법은 상이할 수 있습니다.</p>
                                            </div>
                                        </div>
                                        <div class="right-img">
                                            <img src="<%=Application("img_path_russel")%>/intro/danka/2024/08/jung3_cont03_img01.jpg" alt="">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="left">
                                            <div class="num"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/08/jung3_ico_num02.png" alt=""></div>
                                            <div class="tit">
                                                고1 전문 담임선생님의 <br>
                                                <strong>1:1 맞춤 관리</strong>
                                            </div>
                                            <div class="txt-box">
                                                <ul class="list-03">
                                                    <li>고등학교 적응을 위한 입시/학습/생활 전반을 <br>
                                                        책임지는 <strong>고1 전문 담임선생님의 1:1 맞춤 관리</strong>
                                                    </li>
                                                    <li> 담임선생님과 매일 학습 스케줄 관리로 <strong>올바른 학습 습관 <br> 
                                                        형성</strong> 및 1:1 개별 상담을 통한 <strong>학습 및 성취도 점검</strong>
                                                    </li>
                                                    <li> 28학년도 대입 개편안 대비 입시설명회 진행 등 <br>
                                                        <strong>시기별 주요 입시 정보 제공</strong>
                                                    </li>
                                                </ul>
                                                <p class="info-txt">※ 각 학원별로 관리운영 방법은 상이할 수 있습니다.</p>
                                            </div>
                                        </div>
                                        <div class="right-img">
                                            <img src="<%=Application("img_path_russel")%>/intro/danka/2024/08/jung3_cont03_img02.jpg" alt="">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="left">
                                            <div class="num"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/08/jung3_ico_num03.png" alt=""></div>
                                            <div class="tit">
                                                면학분위기로 소문난 <br>
                                                <strong>바른공부 자습전용관</strong>
                                            </div>
                                            <div class="txt-box">
                                                <ul class="list-03">
                                                    <li>개방형 구조로 이루어져 있어 <strong>최상위권 재원생들의 <br> 
                                                        학구열로 자연스럽게 학습동기 부여</strong>
                                                    </li>
                                                    <li> 담임선생님의 관리하에 자율과 통제의 균형적인 <br>
                                                        운영으로 <strong>집단적인 면학분위기 형성 및 유지</strong>
                                                    </li>
                                                    <li> 방과 후 스케줄 관리로 <strong>규칙적인 공부 습관 형성</strong> </li>
                                                    <li> 같은 건물 내에서 <strong>수업과 자습, 급식을 한번에 해결</strong></li>
                                                </ul>
                                                <p class="info-txt">※ 각 학원별로 바자관 운영 방법은 상이할 수 있습니다.</p>
                                            </div>
                                        </div>
                                        <div class="right-img">
                                            <img src="<%=Application("img_path_russel")%>/intro/danka/2024/08/jung3_cont03_img03.jpg" alt="">
                                        </div>
                                    </li>
                                </ul>
                                <p class="sub-tit">내신과 수능 모두 1등급을 위한 <strong>중3 학습 로드맵</strong></p>
                                <div class="load-map mt40">
                                    <div class="active">
                                        <div class="tit-box">
                                            <p>2024년 11~12월 <br> <strong>중3 고등 대비반</strong></p>
                                            <p class="bot-tit">중3 2학기 학기 중 재원</p>
                                        </div>
                                        <div class="bot-box">
                                            <ul class="list-03 mt0">
                                                <li>중학교 주요 과목 개념 정리 및 <br> 복습</li>
                                                <li>고등학교 주요 과목 기초 학습</li>
                                                <li>수능까지 가져갈 학습 습관 확립</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="tit-box">
                                            <p>2025년 1월~2월<br> <strong>윈터스쿨</strong></p>
                                            <p class="bot-tit">중3 겨울방학 기간 재원</p>
                                        </div>
                                        <div class="bot-box">
                                            <ul class="list-03 mt0">
                                                <li>고등학교 주요 과목 집중 학습</li>
                                                <li>3월 학평 대비 콘텐츠 학습</li>
                                                <li>충분한 개념 학습을 통한 <br> 이해 중심 사고력 향상</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="tit-box">
                                            <p>2025년 3월~ <br> <strong>재학생 정규반</strong></p>
                                            <p class="bot-tit">고1부터 수능까지 재원</p>
                                        </div>
                                        <div class="bot-box">
                                            <ul class="list-03 mt0">
                                                <li>학교별 내신 및 수준별 맞춤 수업</li>
                                                <li>교과 및 비교과, 수능까지 <br> 한번에 준비</li>
                                                <li>방과 후 학습일정에 맞춘 <br> 등원, 자습</li>
                                            </ul>
                                        </div>
                                    </div>                                
                                </div>
                                <p class="l-txt mt20">※ 모집 일정 및 운영 시기, 내용은 학원마다 상이하며, 변경 될 수 있습니다.</p>
                            </div>
                        </div>
                        <div>
                            <p> <img src="<%=Application("img_path_russel")%>/intro/danka/2024/08/jung3_banner.jpg" alt=""></p>
                        </div>

                        <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/08/jung3_time_tit.jpg" alt="학원별 정규,특강 단과 시간표 안내" /></p>
                        <!-- campus-list-danka -->
                        <div class="campus-list-danka type01">
                            <!-- campus-list -->
                            <div class="campus-list">
                                <dl style="width: 600px;">
                                    <dt>최상위권 수준별 맞춤 단과<br><strong>러셀학원</strong></dt>
                                    <dd>
                                        <p>러셀 <strong>강남</strong></p>
                                        02) 6954-1010
                                        <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=335" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>부천</strong></p>
                                        032) 265-1010
                                        <a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=352" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>영통</strong></p>
                                        031) 251-1010
                                        <a href="https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=336" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>중계</strong></p>
                                        02) 6316-1010
                                        <a href="https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=356" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>평촌</strong></p>
                                        031) 341-6500
                                        <a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=337" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대구</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        053) 291-1010
                                        <a href="https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=338" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>울산 <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></strong></p>
                                        052) 913-1010
                                        <a href="https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=339" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>원주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        033) 901-2020
                                        <a href="https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=340" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>청주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        043) 908-1010
                                        <a href="https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=341" target="_blank">시간표 바로가기</a>
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
        
    $(function() {
        Slide();
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
        //  스크롤 떨림 현상 방지
        $(window).scroll(function(){
            var scroll = $(window).scrollTop();
            let con01Top = $(".cont01").offset().top-150;
            let con02Top = $(".cont02").offset().top-150;

            if (scroll >= con01Top && scroll <= con02Top) {
                tanCont.autoplay.start();
            } else {
                tanCont.autoplay.stop();
            }
        })
    }
    </script>
</body>
</html>