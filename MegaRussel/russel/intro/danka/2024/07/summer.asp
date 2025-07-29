<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!-- #include virtual="/russel/library/include/mypage/my_campus_ams_common.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
    <link href="/common/css/2024/danka.css" rel="stylesheet" type="text/css">
    <SCRIPT LANGUAGE="JavaScript" src="/russel/Public/Basic.js"></SCRIPT>
    <style>
        .campus-list-danka {background:#f7f7f7}
        .campus-list-danka .campus-list dl dt, .campus-list-danka .campus-list dl dd a {color:#10A0FF}
        .campus-list-danka .campus-list dl dt .stit02 {font-size:14px;font-weight:normal;margin-bottom:10px;display:inline-block;letter-spacing:-1.5px}
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
                            <p class="txt-01"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/07/sum_tit01.png" alt="여름방학, 실력 향상의 기회를 잡아라!" /></p>
                            <p class="txt-02"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/07/sum_tit02.png" alt="7~8월 러셀 썸머특강" /></p>
                            <p class="txt-03">고3&middot;고2&middot;고1</p>
                            <p class="txt-04">약점은 극복하고 실력은 올라가는 여름방학,<br>
                                4주 집중 완성 특강으로 최상위권으로 도약하세요!</p>
                            <dl class="v-info">
                                <dt>개강일</dt>
                                <dd>7월 순차 개강</dd>
                                <dt>접수</dt>
                                <dd>현장 또는 온라인 접수</dd>
                            </dl>
                            <div class="v-img"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/07/img_leaf.png" alt=""/></div>
                            <div class="v-bg"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/07/summer_bg.jpg" alt=""/></div>
                        </div>
                        <!-- //visual -->

                        <!-- summer-wrap -->
                        <a class="summer-wrap" href="/intro/2024/summer/index.asp">
                            <p class="tit">7월<br>순차 개강</p>
                            <div class="txt-box">
                                <p>성공적인 여름방학을 위해<br>
                                    최상위권이 집결하는 러셀에서 경쟁해야 합니다.</p>
                                <p>2024 썸머스쿨</p>
                                <p>※ 썸머특강은 썸머스쿨(바른공부 자습전용관)을 이용하지 않아도 수강할 수 있습니다.</p>
                            </div>
                            <div class="bg"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/07/sbanner_bg.jpg" alt=""/></div>
                        </a>

                        <!-- review-wrap -->
                        <div class="review-wrap">
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/07/sum_stit01.jpg" alt="여름방학은 나의 실력을 올릴 수 있는 기회! 최상위권 선배들이 추천하는 러셀 썸머특강"/></p>
                            <ul>
                                <li>
                                    <dl class="stu-info">
                                        <dt><img src="<%=Application("img_path_russel")%>/intro/danka/2024/07/review_img01.png" alt=""/></dt>
                                        <dd>
                                            <p>2024학년도</p>
                                            <p><strong>경희대학교<br>
                                                치의예과</strong> 합격</p>
                                            <p>러셀 분당 박주원</p>
                                        </dd>
                                    </dl>
                                    <div class="stu-view">
                                        <p class="tit">수능 전 마지막 방학 기간을 통해 부족했던<br>
                                            과목의 실력을 끌어올릴 수 있었습니다.</p>
                                        <p><strong>수능 전 마지막 방학 기간인 여름방학 동안<br>
                                            썸머스쿨을 통해 규칙적으로 꾸준하게<br>
                                            공부</strong>할 수 있어서 좋았습니다.<br>
                                            자연스럽게 집중 가능 시간이 늘어나는 등<br>
                                            긍정적인 공부 습관을 기를 수 있었습니다.<br>
                                            <strong>단과 수업을 들으며 부족했던 독서의 실력을<br>
                                            끌어올릴 수 있었고,</strong> 중요한 지문을 깊이 있게<br>
                                            탐구해 볼 수 있었습니다.</p>
                                    </div>
                                </li>
                                <li>
                                    <dl class="stu-info">
                                        <dt><img src="<%=Application("img_path_russel")%>/intro/danka/2024/07/review_img02.png" alt=""/></dt>
                                        <dd>
                                            <p>2024학년도</p>
                                            <p><strong>고려대학교<br>
                                                사회학과</strong> 합격</p>
                                            <p>러셀 부천 노은수</p>
                                        </dd>
                                    </dl>
                                    <div class="stu-view">
                                        <p class="tit">여름방학 동안 개념을 점검하고,<br>
                                            약점을 집중 보완하였습니다.</p>
                                        <p><strong>여름방학은 수능에서의 고득점을 위해<br>
                                            전략적으로 중요한 시기로, 개념을 점검하고<br>
                                            약점을 보완하는데 힘을 쏟아야 하는 시기</strong>입니다.<br>
                                            해이해진 공부 습관을 다시 점검하고<br>
                                            더욱 적극적으로 수능 공부에 집중하기 위해<br>
                                            러셀을 선택하였고, 러셀의 장점인<br>
                                            체계적인 관리와 양질의 콘텐츠는 제가<br>
                                            목표를 달성하는 데 많은 도움이 되었습니다.</p>
                                    </div>
                                </li>
                                <li>
                                    <dl class="stu-info">
                                        <dt><img src="<%=Application("img_path_russel")%>/intro/danka/2024/07/review_img03.png" alt=""/></dt>
                                        <dd>
                                            <p>2024학년도</p>
                                            <p><strong>대구가톨릭대학교<br>
                                                의예과</strong> 합격</p>
                                            <p>러셀 대구 장아현</p>
                                        </dd>
                                    </dl>
                                    <div class="stu-view">
                                        <p class="tit">메가스터디의 검증된 선생님의<br>
                                            퀄리티 높은 수업을 들을 수 있었습니다.</p>
                                        <p><strong>러셀의 단과 수업은 각 교과목 선생님들께<br>
                                            직접 질의응답을 할 수 있다는 점</strong>이 좋았습니다.<br>
                                            1대1 질문을 통해 모르는 것을 더욱 확실하게<br>
                                            익힐 수 있었습니다. 그리고 <strong>메가스터디에서<br>
                                            검증받은 선생님께 수업을 받으니<br>
                                            타 학원보다 높은 퀄리티의 수업을<br>
                                            들을 수 있다는 장점</strong>이 있습니다.</p>
                                    </div>
                                </li>
                                <li>
                                    <dl class="stu-info">
                                        <dt><img src="<%=Application("img_path_russel")%>/intro/danka/2024/07/review_img04.png" alt=""/></dt>
                                        <dd>
                                            <p>2024학년도</p>
                                            <p><strong>서울대학교<br>
                                                독어독문학과</strong> 합격</p>
                                            <p>러셀 대치 한민서</p>
                                        </dd>
                                    </dl>
                                    <div class="stu-view">
                                        <p class="tit">단과와 바자관이 같은 건물에 있어<br>
                                            효율적으로 시간을 활용할 수 있었습니다.</p>
                                        <p><strong>러셀 단과 강의실과 바자관이 같은 건물에<br>
                                            위치해 있기 때문에 이동 시간과<br>
                                            체력을 아낄 수 있다는 점</strong>이 좋았습니다.<br>
                                            대형 강의임에도 불구하고<br>
                                            숙제 검사나 질답이 꼼꼼하게 이뤄졌고,<br>
                                            실력 향상에 많은 도움이 되었습니다.</p>
                                    </div>
                                </li> 
                            </ul>
                        </div>

                        <div class="cont-wrap">
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/07/sum_stit02.jpg" alt="성공적인 여름방학을 보내기 위한 학습 전략 러셀 썸머특강 학습 프로그램"/></p>
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/07/sum_img.jpg" alt=""/></p>
                        </div>
                        
                        <!-- 배너 -->
                        <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/07/summer_banner.jpg" alt="여름방학을 알차게 보낼 수 있는 러셀 썸머특강으로 실력 향상과 최상위권 도약의 기회를 잡으세요!" /></p>
                        <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/07/summer_campus_tit.jpg" alt="" /></p>

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
                                            <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1610" target="_blank">고3&middot;N수</a>
                                            <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=315" target="_blank">고2</a>
                                        </p>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대치</strong></p>
                                        02) 2138-1010
                                        <a href="https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1611" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>목동</strong></p>
                                        02) 6932-1010
                                        <a href="https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1612" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>부천</strong></p>
                                        032) 265-1010
                                        <p class="bt" style="width:auto;">
                                            <a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1613" target="_blank">고3</a>
                                            <a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=316" target="_blank" style="flex:2">고2&middot;고1&middot;중3</a>
                                        </p>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>분당</strong></p>
                                        031) 629-1010
                                        <a href="https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1614" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>영통</strong></p>
                                        031) 251-1010
                                        <a href="https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=317" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>중계</strong></p>
                                        02) 6316-1010
                                        <a href="https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1615" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>평촌</strong></p>
                                        031) 341-6500
                                        <p class="bt" style="width:auto;">
                                            <a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1616" target="_blank">고3</a>
                                            <a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=318" target="_blank">고2&middot;고1</a>
                                        </p>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대구</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        053) 291-1010
                                        <a href="https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1617" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>센텀</strong></p>
                                        051) 715-1010
                                        <a href="https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1618" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>울산</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        052) 913-1010
                                        <a href="https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1619" target="_blank">시간표 바로가기</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt><span class="stit02">서연고 &middot; 의치약 전문관</span><br>러셀CORE</dt>
                                    <dd>
                                        <p>러셀CORE <strong>광주</strong></p>
                                        062) 462-1010
                                        <a href="https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1620" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>대전</strong></p>
                                        042) 381-2020
                                        <a href="https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1621" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>원주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        033) 901-2020
                                        <a href="https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1622" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>전주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        063) 905-3030
                                        <a href="https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1623" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>창원</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        055) 605-1010
                                        <a href="https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1624" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>청주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        043) 908-1010
                                        <a href="https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1625" target="_blank">시간표 바로가기</a>
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

}

</script>
</html>