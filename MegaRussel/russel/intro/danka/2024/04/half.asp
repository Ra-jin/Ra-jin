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
        .campus-list-danka .campus-list dl dt, .campus-list-danka .campus-list dl dd a {color:#0065FF}
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
                    <div class="danka intro half">
                        <!-- visual -->
                        <div class="visual">
                            <p class="txt-01"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/04/half_v_tit01.png" alt="반수생을 위한 고효율 압축특강" /></p>
                            <p class="txt-02"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/04/half_v_tit02.png" alt="러셀 반수특강" /></p>
                            <p class="txt-03">반수생에게 특화된 빠른 개념 완성 및 약점 공략 강좌로<br>
                                <strong>메디컬, SKY 목표 달성에 한발 더 가까워집니다.</strong></p>
                            <p class="ico"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/04/ico_arrow.png" alt="" /></p>
                            
                            <dl class="v-info">
                                <dt>개강일</dt>
                                <dd>6월 순차 개강</dd>
                                <dt>접수 방법</dt>
                                <dd>현장 또는 온라인 접수<br>
                                    <p>* 자세한 내용은 학원별 페이지 참조</p>
                                </dd>
                            </dl>

                            <div class="v-bg"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/04/half_bg.jpg" alt=""/></div>
                        </div>
                        <!-- //visual -->

                        <div class="cont01">
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/04/half_tit01.jpg" alt=""/></ㅔ>
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/04/half_img01.jpg" alt=""/></p>
                            
                            <!-- 데이터산출 -->
                            <p class="data-txt">출처 ⓘ</p>
                            <div class="data-view">
                                1) 한국교육과정평가원과 한국교육개발원 자료를 토대로 추정한 연간 수능 보는 고교 3학년 학생과 반수생 추이<br>
                                (반수생 추청은 본수능 재수생 응시자-6월 모평 재수생 응시자로 추정)<br><br>
                                2) 뉴스 기사 발췌<br>
                                연합뉴스(https://n.news.naver.com/mnews/article/001/0014492296?rc=N&ntype=RANKING)<br>
                                데일리안(https://www.dailian.co.kr/news/view/1298120/?sc=Naver)
                            </div>
                            <!-- //데이터산출 -->
                        </div>

                        <div class="cont02">
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/04/half_img02.jpg" alt="왜 러셀 반수특강일까요? 러셀 반수특강을 수강한 선배들이 증명합니다."/></p>

                            <!-- 후기영역 -->
                            <div class="review-slide swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <dl class="stu-info">
                                            <dt>2024학년도 영남대학교 약학과 합격</dt>
                                            <dd>러셀 대구 박민서</dd>
                                        </dl>
                                        <p class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/04/half_stu02.png" alt="박민서 학생"/></p>
                                        <div class="txt-box">
                                            <p>내 학습 상황에 맞게 원하는 강좌를 선택하여 수강할 수 있습니다.</p>
                                            <p><strong>자신의 수준에 맞게, 필요하다고 생각하는 과목을 자신이 원하는 시간에 들을 수 있어</strong>서 좋았습니다.<br>
                                                그 덕에 수업 외 시간은 충분한 자습시간으로 쓸 수 있었습니다.</p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <dl class="stu-info">
                                            <dt>2024학년도 고려대학교 지리교육과 합격</dt>
                                            <dd>러셀 대치 배현제</dd>
                                        </dl>
                                        <p class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/04/half_stu_m.png" alt="학생 실루엣"/></p>
                                        <div class="txt-box">
                                            <p>바자관과 강의실이 한 건물에 있어 이동시간을 줄여 <br>효과적으로 시간 관리를 할 수 있습니다.</p>
                                            <p><strong>바자관과 강의실이 모두 한 건물에 있다는 점이 가장 큰 이점</strong>입니다. <br>
                                                현역 때는 이동시간이 길었고 그 시간을 활용하지 못했는데, 러셀에서는 자습을 하다가 바로 단과를 <br>
                                                들으러 이동할 수 있어서 <strong>효과적으로 시간을 관리</strong>할 수 있었습니다. </p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <dl class="stu-info">
                                            <dt>2024학년도 동의대학교 한의예과 합격</dt>
                                            <dd>러셀 강남 김OO</dd>
                                        </dl>
                                        <p class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/04/half_stu_w.png" alt="학생 실루엣"/></p>
                                        <div class="txt-box">
                                            <p>선생님과의 소통 창구가 많아 <br>
                                                모르는 문제나 고민들을 바로 해결할 수 있었습니다.</p>
                                            <p>혼자 공부하는것보다 경쟁심을 느끼며 공부해야 더욱 집중이 되는 편이라 <br>
                                                현강을 선택하게 되었습니다. 메가스터디 <strong>인강 선생님의 현장강의와 최고의 자료를 누릴 수 있어 <br>
                                                좋았고,</strong> 네이버 밴드, 개인 문자 연락, 질문 조교선생님 등 <strong>직접 소통할 수 있는 창구가 많아 <br>
                                                모르는 문제나 학습 고민을 해결하는데 많은 도움</strong>이 되었습니다.</p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <dl class="stu-info">
                                            <dt>2024학년도 강원대학교 의예과 합격</dt>
                                            <dd>러셀 부천 이가은</dd>
                                        </dl>
                                        <p class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/04/half_stu03.png" alt="이가은 학생"/></p>
                                        <div class="txt-box">
                                            <p>검증된 강사 선생님의 강의를 들을 수 있어서 좋았습니다.</p>
                                            <p>저는 공통수학이 취약하여 수학 수업을 들었는데, 매주 수업시간이 기다려질 정도로 <strong>정말 재밌고 <br>
                                                도움이 되는 시간</strong>이었습니다.
                                                이외에도 선생님께서 쉬는 시간까지 질문을 받아주셔서 <strong>매주 과제를 <br>
                                                통해 정리한 모르는 문제들을 해결하고 복습하는 시간</strong>을 가질 수 있었습니다.</p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <dl class="stu-info">
                                            <dt>2024학년도 고려대학교 의예과 합격</dt>
                                            <dd>러셀CORE 전주 서진원</dd>
                                        </dl>
                                        <p class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/04/half_stu01.png" alt="서진원 학생"/></p>
                                        <div class="txt-box">
                                            <p>서울에 가지 않아도 훌륭한 강사진분들의 강의를 <br>
                                                실시간으로 들을 수 있어 좋았습니다.</p>
                                            <p>공간적 제약을 넘어서서 <strong>훌륭한 강사진분들의 강의를 실시간으로 들을 수 있다</strong>는 점 자체로 <br>
                                                러셀CORE 학원만의 매우 매력적인 프로그램이라고 생각합니다. <br> 
                                                TV 화면도 넓고 개수가 많아 자리 선택에 따른 제약도 없었습니다.</p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <dl class="stu-info">
                                            <dt>2024학년도 동아대학교 의예과 합격</dt>
                                            <dd>러셀CORE 창원 제현수</dd>
                                        </dl>
                                        <p class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/04/half_stu_m.png" alt="학생 실루엣"/></p>
                                        <div class="txt-box">
                                            <p>대치동 학생들과 동일한 수업 자료를 받을 수 있어 좋았습니다.</p>
                                            <p>저는 사실 러셀에 오기전에 대치동에서 현강을 몇 번 들었었는데요. CORE 학원에 오고 난 후 <br>
                                                <strong>라이브 수업에서도 대치동 현강과 똑같은 느낌</strong>을 받아 크게 놀랐던 기억이 있습니다.<br>
                                                또 <strong>대치동 현강에서 받는 콘텐츠들을 똑같이 받을 수 있어</strong> 좋았습니다.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-pagination"></div>
                            </div>
                        </div>
                        <!-- //후기영역 -->

                        <div class="cont03">
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/04/half_tit03.jpg" alt="반수생에게 필요한 모든 것, 러셀 반수특강에 있습니다."/></p>
                            <div style="position:relative;">
                                <img src="<%=Application("img_path_russel")%>/intro/danka/2024/04/half_img03.jpg" alt="불필요한 수업은 줄이고, 자습은 충분하게 바른공부 자습전용관 2025 반수반"/>
                                <a href="/intro/2024/half/index.asp" style="position: absolute;top:78%;right:9.5%;width:28%;height:6%;z-index: 2;"></a>
                            </div>
                        </div>

                        <!--//러셀 반수특강에 있습니다 영역-->
                        <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/04/haif_banner.jpg" alt="" /></p>
                        <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/04/half_campus_tit.jpg" alt="" /></p>

                        <!-- campus-list-danka -->
                        <div class="campus-list-danka">
                            <!-- campus-list -->
                            <div class="campus-list">
                                <dl>
                                    <dt><span class="stit02">최상위권 수준별 맞춤 단과</span><br>러셀학원</dt>
                                    <dd>
                                        <p>러셀 <strong>강남</strong></p>
                                        02) 6954-1010
                                        <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1582" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대치</strong></p>
                                        02) 2138-1010
                                        <a href="https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1583" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>목동</strong></p>
                                        02) 6932-1010
                                        <a href="https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1584" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <!-- <dd>
                                        <p>러셀 <strong>부천</strong></p>
                                        032) 265-1010
                                        <a href="" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>분당</strong></p>
                                        031) 629-1010
                                        <a href="" target="_blank">시간표 바로가기</a>
                                    </dd> -->
                                    <!-- <dd>
                                        <p>러셀 <strong>영통</strong></p>
                                        031) 251-1010
                                        <a href="" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>중계</strong></p>
                                        02) 6316-1010
                                        <a href="" target="_blank">시간표 바로가기</a>
                                    </dd> -->
                                    <dd>
                                        <p>러셀 <strong>평촌</strong></p>
                                        031) 341-6500
                                        <a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1585" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <!-- <dd>
                                        <p>러셀 <strong>대구</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        053) 291-1010
                                        <a href="" target="_blank">시간표 바로가기</a>
                                    </dd> -->
                                    <dd>
                                        <p>러셀 <strong>센텀</strong></p>
                                        051) 715-1010
                                        <a href="https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1586" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>울산</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        052) 913-1010
                                        <a href="https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1587" target="_blank">시간표 바로가기</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt><span class="stit02">서연고 &middot; 의치약 전문관</span><br>러셀CORE</dt>
                                    <dd>
                                        <p>러셀CORE <strong>광주</strong></p>
                                        062) 462-1010
                                        <a href="https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1588" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <!-- <dd>
                                        <p>러셀CORE <strong>대전</strong></p>
                                        042) 381-2020
                                        <a href="" target="_blank">시간표 바로가기</a>
                                    </dd> -->
                                    <dd>
                                        <p>러셀CORE <strong>원주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        033) 901-2020
                                        <a href="https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1589" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>전주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        063) 905-3030
                                        <a href="https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1592" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>창원</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        055) 605-1010
                                        <a href="https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1590" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>청주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        043) 908-1010
                                        <a href="https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1591" target="_blank">시간표 바로가기</a>
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