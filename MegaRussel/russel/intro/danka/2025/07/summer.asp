<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!-- #include virtual="/russel/library/include/mypage/my_campus_ams_common.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
    <link href="/common/css/2025/danka.css" rel="stylesheet" type="text/css">
    <SCRIPT LANGUAGE="JavaScript" src="/russel/Public/Basic.js"></SCRIPT>
    <style>
        .campus-list-danka {background:#f7f7f7}
        .campus-list-danka .campus-list dl dt, .campus-list-danka .campus-list dl dd a {color:#10A0FF}
        .campus-list-danka .campus-list dl dt .stit02 {font-size:14px;font-weight:normal;margin-bottom:10px;display:inline-block;letter-spacing:-1.5px}

        .campus-list-danka .campus-list dl dd .bt.type02 a {flex:none}
        .campus-list-danka .campus-list dl dd .bt.type02 a:first-child {width:40px;}
        .campus-list-danka .campus-list dl dd .bt.type02 a:last-child {width:57px;}
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
                    <!--#include virtual="/danka/2022/banner_csat.asp" -->
                    <!-- //수능 실전 모의체험 배너 -->
                    <!-- danka -->
                    <div class="danka intro summer">
                        <!-- visual -->
                        <div class="visual">
                            <p class="txt-01"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/07/sum_tit01.png" alt="여름방학, 실력 향상의 기회를 잡아라!" /></p>
                            <div class="txt-02">
                                <span class="txt"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/07/sum_tit02.png" alt="7~8월 러셀 썸머특강" /></span>
                                <span class="v-shadow"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/07/sum_shadow.png" alt="" /></span>
                                <span class="v-wave"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/07/sum_wave.png" alt="" /></span>
                            </div>

                            <div class="v-obj01"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/07/sum_obj01.png" alt="" /></div>
                            <div class="v-obj02"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/07/sum_obj02.png" alt="" /></div>
                            
                            <p class="txt-03"><span>고1~고3</span></p>
                            <p class="txt-04">약점은 정복하고 자신감은 회복하는 여름 방학,<br>
                                4주 단기 압축 특강으로 최상위권을 향해 도약하세요.</p>
                            <div class="v-info">
                                <dl>
                                    <dt>개강일</dt>
                                    <dd>8월 순차 개강</dd>
                                </dl>
                                <dl>
                                    <dt>접수</dt>
                                    <dd>현장 또는 온라인 접수</dd>
                                </dl>
                            </div>
                            <div class="v-img"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/07/img_leaf.png" alt=""/></div>
                            <!-- <div class="v-bg"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/07/summer_bg.jpg" alt=""/></div> -->
                        </div>
                        <!-- //visual -->

                        <!-- summer-wrap -->
                        <a class="summer-wrap" href="/intro/2025/summer/index.asp">
                            <p class="tit">7월<br>순차 개강</p>
                            <div class="txt-box">
                                <p>올여름, 최상위권 도약을 위한 재학생 맞춤 시스템</p>
                                <p>2025 썸머스쿨</p>
                                <p>※ 썸머 특강은 썸머스쿨(바른공부 자습전용관)을 이용하지 않아도 수강할 수 있습니다.</p>
                            </div>
                            <div class="bg"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/07/sbanner_bg.jpg" alt=""/></div>
                        </a>

                        <div class="cont-wrap">
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2025/07/sum_tit01.jpg" alt="대입 성공을 이루기 위한 집중 플랜! 러셀 썸머 특강의 학습 프로그램"/></p>
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2025/07/sum_img.jpg" alt=""/></p>
                        </div>

                        <!-- review-wrap -->
                        <div class="review-wrap">
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2025/07/sum_tit02.jpg" alt="러셀에서 여름 방학을 보낸 선배들은 대입 성공을 이루어 냈습니다."/></p>
                            <div class="review-slide swiper-container">
                                <ul class="swiper-wrapper">
                                    <li class="swiper-slide">
                                        <dl class="stu-info">
                                            <dt><img src="<%=Application("img_path_russel")%>/intro/danka/2025/07/review_img01.png" alt=""/></dt>
                                            <dd>
                                                <p class="year">2025학년도</p>
                                                <p class="name">연세대학교 의예과 합격 <span>러셀 대치 윤지수</span></p>
                                                <p class="tit">학습 동선이 최소화되어 시간 절약에<br>
                                                    도움이 되었고, 체력도 아낄 수 있었습니다.</p>
                                            </dd>
                                        </dl>
                                        <div class="stu-view">
                                            러셀 단과 강의실은 바자관과 한 건물에 있어 이동에 많은 시간이 소요되지 않아 <br>
                                            좋았습니다. 또한 모호했던 과목에 자신이 생겼고, 체계적으로 단과 수업이 <br>
                                            이루어진다는 점도 좋았습니다.
                                        </div>
                                    </li>
                                    <li class="swiper-slide">
                                        <dl class="stu-info">
                                            <dt><img src="<%=Application("img_path_russel")%>/intro/danka/2025/07/review_img02.png" alt=""/></dt>
                                            <dd>
                                                <p class="year">2025학년도</p>
                                                <p class="name">울산대학교 의예과 <span>러셀 센텀 허서윤</span></p>
                                                <p class="tit">생생한 러셀 현장 강의 덕분에<br>
                                                    한계를 극복하여 큰 도움이 되었습니다.</p>
                                            </dd>
                                        </dl>
                                        <div class="stu-view">
                                            저는 인강이 정말 안 맞는 학생입니다. 하지만 정말 훌륭한 강사진으로 구성된 <br>
                                            러셀 현장 강의 덕분에 그런 한계를 극복할 수 있었던 것 같습니다. 같은 내용이라도,
                                            인강과 현강의 호소력과 전달력 차이를 크게 느꼈습니다.
                                        </div>
                                    </li>
                                    <li class="swiper-slide">
                                        <dl class="stu-info">
                                            <dt><img src="<%=Application("img_path_russel")%>/intro/danka/2025/07/review_img03.png" alt=""/></dt>
                                            <dd>
                                                <p class="year">2025학년도</p>
                                                <p class="name">가천대학교 의예과 합격 <span>러셀 강남 고영훈</span></p>
                                                <p class="tit">고3 현역으로서 마지막 기회인 여름 방학에<br>
                                                    실력의 기반을 다지는 계기가 되었습니다.</p>
                                            </dd>
                                        </dl>
                                        <div class="stu-view">
                                            썸머스쿨에서  제일 좋았던 점은 규칙적인 학습 계획을 수립할 수 있다는 점이었습니다.
                                            처음엔 힘들었지만 자연스럽게 학습 습관을 만들 수 있었습니다.
                                        </div>
                                    </li>
                                    <li class="swiper-slide">
                                        <dl class="stu-info">
                                            <dt><img src="<%=Application("img_path_russel")%>/intro/danka/2025/07/review_img04.png" alt=""/></dt>
                                            <dd>
                                                <p class="year">2025학년도</p>
                                                <p class="name">서울대학교 약학대학 합격 <span>러셀 영통 심지윤</span></p>
                                                <p class="tit">러셀 현장 강의 선생님의 1:1 질의응답 덕분에<br>
                                                    공부에 큰 도움이 되었습니다.</p>
                                            </dd>
                                        </dl>
                                        <div class="stu-view">
                                            1학년부터 3학년까지 함께해 주신 현장 강의 선생님이 기억에 남습니다. <br>
                                            학생 개개인의 실력에 맞춰 1:1로 질의응답을 해 주시고 시험기간에는 밤늦게까지
                                            온라인으로 질문을 받아 주셔서 큰 도움이 되었습니다. 
                                        </div>
                                    </li>
                                </ul>
                                <div class="swiper-pagination"></div>
                            </div>
                            <p class="r-txt">※ 2025학년도 러셀 전체 학원 합격생 후기 중 발췌</p>
                        </div>
                        
                        <!-- 배너 -->
                        <p><img src="<%=Application("img_path_russel")%>/intro/danka/2025/07/summer_banner.jpg" alt="여름 방학, 달라질 수 있는 가장 확실한 시간, 러셀에서 실력을 채우고, 최상위권으로 도약하세요!" /></p>
                        <p><img src="<%=Application("img_path_russel")%>/intro/danka/2025/07/summer_campus_tit.jpg" alt="러셀 썸머 특강 학원별 시간표 안내" /></p>

                        <!-- campus-list-danka -->
                        <div class="campus-list-danka">
                            <!-- campus-list -->
                            <div class="campus-list">
                                <dl>
                                    <dt><span class="stit02">최상위권 수준별 맞춤 단과</span><br>러셀학원</dt>
                                    <dd>
                                        <p>러셀 <strong>강남</strong></p>
                                        02) 6954-1010
                                        <p class="bt" style="width:auto;">
                                            <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1987" target="_blank">고3&middot;N수</a>
                                            <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=390" target="_blank">고2&middot;고1</a>
                                        </p>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대치</strong></p>
                                        02) 2138-1010
                                        <p class="bt" style="width:auto;">
                                            <a href="https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1988" target="_blank">고3&middot;N수</a>
                                            <a href="https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2007" target="_blank">고2&middot;고1</a>
                                        </p>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>목동</strong></p>
                                        02) 6932-1010
                                        <a href="https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1989" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>부천</strong></p>
                                        032) 265-1010
                                        <p class="bt" style="width:auto;">
                                            <a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1992" target="_blank">고3&middot;N수</a>
                                            <a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1990" target="_blank">고1&middot;고2</a>
                                        </p>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>분당</strong></p>
                                        031) 629-1010
                                        <a href="https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1993" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>영통</strong></p>
                                        031) 251-1010
                                        <p class="bt type02" style="width:auto;">
                                            <a href="https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1995" target="_blank">고3</a>
                                            <a href="https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1994" target="_blank">중3&middot;고1&middot;고2</a>
                                        </p>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>중계</strong></p>
                                        02) 6316-1010
                                        <p class="bt type02" style="width:auto;">
                                            <a href="https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1996" target="_blank" style="width: 50px;">고1&middot;고2</a>
                                            <a href="https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=394" target="_blank" style="width: 47px;">중3</a>
                                        </p>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>평촌</strong></p>
                                        031) 341-6500
                                        <p class="bt type02" style="width:auto;">
                                            <a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1997" target="_blank">고3</a>
                                            <a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=391" target="_blank">중3&middot;고1&middot;고2</a>
                                        </p>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대구</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        053) 291-1010
                                        <a href="https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1998" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대전</strong></p>
                                        042) 381-2020
                                        <a href="https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1999" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>센텀</strong></p>
                                        051) 715-1010
                                        <a href="https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2000" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>울산</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        052) 913-1010
                                        <a href="https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2001" target="_blank">시간표 바로가기</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt><span class="stit02">서연고 &middot; 의치약 전문관</span><br>러셀CORE</dt>
                                    <dd>
                                        <p>러셀CORE <strong>광주</strong></p>
                                        062) 462-1010
                                        <a href="https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2002" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>원주</strong></p>
                                        033) 901-2020
                                        <a href="https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2003" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>전주</strong></p>
                                        063) 905-3030
                                        <a href="https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2004" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>창원</strong></p>
                                        055) 605-1010
                                        <a href="https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2005" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>청주</strong></p>
                                        043) 908-1010
                                        <a href="https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2006" target="_blank">시간표 바로가기</a>
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

    reviewSlide();

});
// 슬라이드
function reviewSlide(){
	var rSlide = new Swiper('.review-slide', {
		slidesPerView: 'auto',
        spaceBetween: 10,
        autoHeight: true,
        centeredSlides: true,
			centeredSlidesBounds: true,
        loop:true,
        autoplay: {
				delay: 5000,
				disableOnInteraction: false,
				pauseOnMouseEnter: true,
			},
        speed: 700,
		pagination: {
			el: ".swiper-pagination",
		},
	});

    $(window).scroll(function(){

        var scroll = $(window).scrollTop();
        let reviewTop = $(".review-wrap").offset().top - 300;
        let dankaTop = $(".campus-list-danka").offset().top - 300;

        if (scroll >= reviewTop && scroll <= dankaTop) {
            rSlide.autoplay.start();
        } else {
            rSlide.autoplay.stop();
        }
    });

}

</script>
</html>