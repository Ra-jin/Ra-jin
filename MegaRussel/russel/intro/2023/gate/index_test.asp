<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="2023 러셀 기숙학원" />
    <meta name="keywords" content="2023 러셀 기숙학원, 러셀 기숙학원" />
	<meta name="description" content="최상위권 대입성공을 위한 강력력한 경쟁력 러셀 기숙학원" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2023 러셀 기숙학원">
	<meta property="og:description" content="2023 러셀 기숙학원, 러셀기숙게이트" />
    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" href="/common/css/full_danka.css">
	<link rel="stylesheet" href="./gate.css? version1.1">
    <style>
        .gate-wrap{margin-top: 191px;}
    </style>
</head>
<%
	' if IsDevSvr() = false then '사용안하는 페이지로 메인 페이지로 이동
	' 	response.redirect "http://russel.megastudy.net/intro/gateway.asp"
	' end if
%>

<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- gate-wrap -->
<div class="gate-wrap">
    <!--Visual-->
    <div class="visual-area">
        <div class="sec03">
            <div class="swiper-container visual-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div><img src="<%=Application("img_path_russel")%>/intro/2023/gate/v_bg02.jpg" alt="" /></div>
                    </div>
                    <div class="swiper-slide">
                        <div><img src="<%=Application("img_path_russel")%>/intro/2023/gate/v_bg03.jpg" alt="" /></div>
                    </div>
                    <div class="swiper-slide">
                        <div><img src="<%=Application("img_path_russel")%>/intro/2023/gate/v_bg01.jpg" alt="" /></div>
                    </div>
                </div>
            </div>
            <div class="myText"><img src="<%=Application("img_path_russel")%>/intro/2023/gate/v-bg_txt.png" alt="#최상위권 #대입성공 #경쟁력" /></div>
        </div>
        <div class="sec01">
            <div class="inner">
                <span class="cursor"></span>
            </div>
        </div>
        <div class="sec02">
            <div class="inner">
                <p id="myText"></p>
            </div>
        </div>
        <div class="last">
            <div class="inner">
                <div class="v-tit">
                    <img src="<%=Application("img_path_russel")%>/intro/2023/gate/v-tit.png" alt="최상위권 대입성공을 위한 강력한 경쟁력" />
                </div>
                <div class="v-first">
                    <img src="<%=Application("img_path_russel")%>/intro/2023/gate/first_img.png" alt="1" />
                </div>
                <div class="v-txt">
                    <img src="<%=Application("img_path_russel")%>/intro/2023/gate/v-first-txt.png" alt="검증된 1등, 러셀 기숙학원은 합격에 자신있습니다." />
                </div>
                <ul class="v-b-txt">
                    <li>* 러셀 전체 학원별 2021-2023학년도 의치한수약 대학 합격자수 기준 (홈페이지 대입 실적 기준/2023.02.20 기준) 및 <br>
                        2021-2023학년도 러셀 전체 학원 '메가 대성 더 프리미엄 모의고사, 6/9월 모의평가, 수능' 학원별 등수 기준
                    </li>
                </ul>
            </div>
        </div>
        
		<!--quick 플로팅배너-->
		<div class="quick">
            <!-- <div class="q_ban mb10">
                <a href="javascript:void(0);" class="q-ban-down" alt="지금, 주목해야 할 콘텐츠">
                    <img src="<%=Application("img_path_russel")%>/event/2023/gisuk_pre/img_qck_banner.png" alt="" />
                </a>
            </div> -->

            <!-- <a href="javascript:void(0)" class="q-sms" onclick="fn_eventGo('https://russel.megastudy.net/russel_yj/popup/2023/popup_0221.asp')"><img src="<%=Application("img_path_russel")%>/intro/2023/gate/quick_sms.png" alt="문자 수신 알리미 신청" /></a> -->


			<p class="b-tit"><span>러셀 기숙학원</span> 바로가기</p>
            <div class="q-ban">
                <a href="https://russelcampus.megastudy.net/russel_yj/main.asp">
                    <strong>최상위권 남학생 의대전문관</strong> 
                </a>

            </div>
            <div class="q-ban">
                <a href="https://russelw.megastudy.net/russel_w/main.asp">
                    <strong>최상위권 여학생 의대전문관<span class="icon-new"><img src="<%=Application("img_path_russel")%>/common/icon/ic_new.gif" alt="new" /></span></strong>
                </a>

            </div>
            <div class="q-ban">
                <a href="https://russelsm.megastudy.net/russel_sm/main.asp">
                    <strong>
                        서연고&middot;의치대 전문관<span>(남&middot;여)</span><span class="icon-new"><img src="<%=Application("img_path_russel")%>/common/icon/ic_new.gif" alt="new" /></span>
                    </strong>
                </a>

            </div>
		</div>
        
		<!--//quick 플로팅배너-->
    </div>
    <!--//Visual-->
    
    <!--contents-->
    <div class="cont01">
        <p class="tit-num"><img src="<%=Application("img_path_russel")%>/intro/2023/gate/num01.png" alt="" /></p>
        <div class="inner">
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/gate/cont01_tit.png" alt="" /></p>
            <div class="card-box">
                <!-- 탭 슬라이드 -->
                <div class="gisuk-slide-wrap">
                    <div class="gisuk-slide-navi">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/gate/t_btn01.png" alt="의치한수약 합격자 1등" />
                            </div>
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/gate/t_btn02.png" alt="N수생 실적 향상률 1등" /></div>
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/gate/t_btn03.png" alt="전국 단위 모의고사 1등" /></div>
                        </div>
                    </div>
                    <div class="swiper-container gisuk-slide">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <p><img src="<%=Application("img_path_russel")%>/intro/2023/gate/tab01_tit.png" alt="" /></p>
                                <ul class="exam-result">
                                    <li>
                                        <p>
                                            <strong>2023학년도</strong><br>
                                            자연계 재원생 320명 중
                                        </p>
                                        <div>
                                            <strong class="counter" data-count="174">0</strong>
                                            명
                                        </div>
                                    </li>
                                    <li>
                                        <p>
                                            <strong>2022학년도</strong><br>
                                            자연계 재원생 305명 중
                                        </p>
                                        <div>
                                            <strong class="counter" data-count="169">0</strong>
                                            명
                                        </div>
                                    </li>
                                    <li>
                                        <p>
                                            <strong>2021학년도</strong><br>
                                            자연계 재원생 302명 중
                                        </p>
                                        <div>
                                            <strong class="counter" data-count="149">0</strong>
                                            명
                                        </div>
                                    </li>
                                    <!-- <li>
                                        <p>
                                            <strong>2020학년도</strong><br>
                                            자연계 재원생 304명 중
                                        </p>
                                        <div>
                                            <strong class="counter" data-count="119">0</strong>
                                            명
                                        </div>
                                    </li> -->
                                </ul>
                                <p class="r-txt">
                                    2) 러셀 전체 학원별 2021-2023학년도 의치한수약 대학 합격자수 기준 (홈페이지 대입 실적 기준/2023.02.20 기준)
                                </p>
                            </div>
                            <div class="swiper-slide">
                                <div style="padding-left:103px"><img src="<%=Application("img_path_russel")%>/intro/2023/gate/tab02_img.png" alt="" /></div>
                                <p class="r-txt mt15">
                                    1) 러셀 전체 학원별 2022학년도 바른공부 자습전용관 재원생 중 N수생 성적 상승률 기준 <br>
                                    2) 2022학년도 최상위권 남학생 의대전문관 러셀 기숙학원 재원생 중 자연계열 학생의 2021-2022학년도 수능 점수 분석 결과                                    
                                </p>
                            </div>
                            <div class="swiper-slide">
                                <p><img src="<%=Application("img_path_russel")%>/intro/2023/gate/tab03_tit.png" alt="" /></p>
                                <div class="year-swiper swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/gate/txt_2023.png" alt="" />
                                            </div>
                                            <ul>
                                                <li>
                                                    <span>3,4,5,7,8,10,11월</span><br>
                                                    <strong>메가대성 더 프리미엄 모의고사 <span>1등</span></strong>
                                                </li>
                                                <li>
                                                    <span>6,9월</span><br>
                                                    <strong>모의평가 <span>1등</span></strong>
                                                </li>
                                                <li>
                                                    <span>11월</span><br>
                                                    <strong>대학수학능력시험 <span>1등</span></strong>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/gate/txt_2022.png" alt="" />
                                            </div>
                                            <ul>
                                                <li>
                                                    <span>3,4,5,8,10,11월</span><br>
                                                    <strong>메가대성 더 프리미엄 모의고사 <span>1등</span></strong>
                                                </li>
                                                <li>
                                                    <span>6,9월</span><br>
                                                    <strong>모의평가 <span>1등</span></strong>
                                                </li>
                                                <li>
                                                    <span>11월</span><br>
                                                    <strong>대학수학능력시험 <span>1등</span></strong>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/gate/txt_2021.png" alt="" />
                                            </div>
                                            <ul>
                                                <li>
                                                    <span>4,5,6,7,8,10,11월</span><br>
                                                    <strong>메가대성 더 프리미엄 모의고사 <span>1등</span></strong>
                                                </li>
                                                <li>
                                                    <span>6,9월</span><br>
                                                    <strong>모의평가 <span>1등</span></strong>
                                                </li>
                                                <li>
                                                    <span>11월</span><br>
                                                    <strong>대학수학능력시험 <span>1등</span></strong>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <p class="r-txt mt35">
                                    1) 러셀 전체 학원별 2021-2023학년도 ‘메가 대성 더 프리미엄 모의고사, 6/9월 모의평가, 수능’ 학원별 등수 기준                                     
                                </p>
                            </div>
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="cont02">
        <p class="tit-num"><img src="<%=Application("img_path_russel")%>/intro/2023/gate/num02.png" alt="" /></p>
        <p><img src="<%=Application("img_path_russel")%>/intro/2023/gate/cont02_tit.png" alt="" /></p>
        
        <div class="stu-slide swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/intro/2023/gate/cont02_slide01.png" alt="김인" usemap="#stuVideo01" />
                    <map name="stuVideo01">
                        <area shape="rect" coords="280,0,308,28" href="javascript:void(0)" onclick="CastPopup('https://tv.naver.com/v/34185919')">
                   </map>
                </div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/gate/cont02_slide02.png" alt="성태호" usemap="#stuVideo02" />
                    <map name="stuVideo02">
                        <area shape="rect" coords="280,0,308,28" href="javascript:void(0)" onclick="CastPopup('https://tv.naver.com/v/34867012')">
                   </map>
                </div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/gate/cont02_slide03.png" alt="시정우" usemap="#stuVideo03" />
                    <map name="stuVideo03">
                        <area shape="rect" coords="280,0,308,28" href="javascript:void(0)" onclick="CastPopup('https://tv.naver.com/v/34866817')">
                   </map>
                </div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/gate/cont02_slide04.png" alt="김동욱" usemap="#stuVideo04" />
                    <map name="stuVideo04">
                        <area shape="rect" coords="280,0,308,28" href="javascript:void(0)" onclick="CastPopup('https://tv.naver.com/v/34866845')">
                   </map>
                </div>
            </div>
        </div>
        <div class="inner">
            <p class="r-txt mt35" style="padding-right: 170px;">
                ※ 2023학년도 최상위권 남학생 의대전문관 재원생의 수강 후기 중 일부 내용 발췌                                     
            </p>
        </div>
        <div class="roll-swiper swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_skk.png" alt="" /></dt>
                        <dd>
                            성균관대학교<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 299.5점</strong><br>
                            <span>2022학년도 283점</span>
                        </p>
                        <div><strong>97%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_skk.png" alt="" /></dt>
                        <dd>
                            성균관대학교<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 299점</strong><br>
                            <span>2022학년도 234점</span>
                        </p>
                        <div><strong>98%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ulsan.png" alt="" /></dt>
                        <dd>
                            울산대학교<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 295.5점</strong><br>
                            <span>2022학년도 280점</span>
                        </p>
                        <div><strong>78%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ulsan.png" alt="" /></dt>
                        <dd>
                            울산대학교<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 293.5점</strong><br>
                            <span>2022학년도 261.5점</span>
                        </p>
                        <div><strong>83%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="" /></dt>
                        <dd>
                            서울대학교 치의학<br>학석사통합과정<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 297.5점</strong><br>
                            <span>2022학년도 287점</span>
                        </p>
                        <div><strong>81%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kh.png" alt="" /></dt>
                        <dd>
                            경희대학교<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 299.5점</strong><br>
                            <span>2022학년도 283점</span>
                        </p>
                        <div><strong>97%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kh.png" alt="" /></dt>
                        <dd>
                            경희대학교<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 299점</strong><br>
                            <span>2022학년도 234점</span>
                        </p>
                        <div><strong>98%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kh.png" alt="" /></dt>
                        <dd>
                            경희대학교<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 298.5점</strong><br>
                            <span>2022학년도 272.5점</span>
                        </p>
                        <div><strong>95%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kh.png" alt="" /></dt>
                        <dd>
                            경희대학교<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 295.5점</strong><br>
                            <span>2022학년도 280점</span>
                        </p>
                        <div><strong>78%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ajou.png" alt="" /></dt>
                        <dd>
                            아주대학교<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294점</strong><br>
                            <span>2022학년도 289점</span>
                        </p>
                        <div><strong>45%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ih.png" alt="" /></dt>
                        <dd>
                            인하대학교<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 299점</strong><br>
                            <span>2022학년도 234점</span>
                        </p>
                        <div><strong>98%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cau.jpg" alt="" /></dt>
                        <dd>
                            중앙대학교<br>의학부<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 298.5점</strong><br>
                            <span>2022학년도 265점</span>
                        </p>
                        <div><strong>96%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_hy.png" alt="" /></dt>
                        <dd>
                            한양대학교<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 298.5점</strong><br>
                            <span>2022학년도 265점</span>
                        </p>
                        <div><strong>96%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_gachon.png" alt="" /></dt>
                        <dd>
                            가천대학교(메디컬)<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 298.5점</strong><br>
                            <span>2022학년도 272.5점</span>
                        </p>
                        <div><strong>95%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_soonchunhyang.png" alt="" /></dt>
                        <dd>
                            순천향대학교<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 299.5점</strong><br>
                            <span>2022학년도 283점</span>
                        </p>
                        <div><strong>97%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_soonchunhyang.png" alt="" /></dt>
                        <dd>
                            순천향대학교<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 298.5점</strong><br>
                            <span>2022학년도 272.5점</span>
                        </p>
                        <div><strong>95%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_soonchunhyang.png" alt="" /></dt>
                        <dd>
                            순천향대학교<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 297.5점</strong><br>
                            <span>2022학년도 287점</span>
                        </p>
                        <div><strong>81%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_soonchunhyang.png" alt="" /></dt>
                        <dd>
                            순천향대학교<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 297.5점</strong><br>
                            <span>2022학년도 281.5점</span>
                        </p>
                        <div><strong>86%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_soonchunhyang.png" alt="" /></dt>
                        <dd>
                            순천향대학교<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294.5점</strong><br>
                            <span>2022학년도 278점</span>
                        </p>
                        <div><strong>75%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kyungpook.png" alt="" /></dt>
                        <dd>
                            경북대학교<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 296.5점</strong><br>
                            <span>2022학년도 285.5점</span>
                        </p>
                        <div><strong>76%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kk.png" alt="" /></dt>
                        <dd>
                            건국대학교(글로컬)<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 299점</strong><br>
                            <span>2022학년도 267.5점</span>
                        </p>
                        <div><strong>97%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_pusan.png" alt="" /></dt>
                        <dd>
                            부산대학교<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 297.5점</strong><br>
                            <span>2022학년도 285.5점</span>
                        </p>
                        <div><strong>83%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_pusan.png" alt="" /></dt>
                        <dd>
                            부산대학교<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 297.5점</strong><br>
                            <span>2022학년도 281.5점</span>
                        </p>
                        <div><strong>86%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cnu.jpg" alt="" /></dt>
                        <dd>
                            충남대학교<br>의예과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 295.5점</strong><br>
                            <span>2022학년도 293점</span>
                        </p>
                        <div><strong>36%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="" /></dt>
                        <dd>
                            서울대학교<br>항공우주공학과<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 296점</strong><br>
                            <span>2022학년도 266점</span>
                        </p>
                        <div><strong>88%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="" /></dt>
                        <dd>
                            서울대학교<br>정치외교학부<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294.5점</strong><br>
                            <span>2022학년도 263.5점</span>
                        </p>
                        <div><strong>85%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="" /></dt>
                        <dd>
                            서울대학교<br>인문계열<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 292.5점</strong><br>
                            <span>2022학년도 256점</span>
                        </p>
                        <div><strong>83%</strong>상승</div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kaist.png" alt="" /></dt>
                        <dd>
                            KAIST<br>자유전공학부<br>
                            <span>러셀 기숙 OOO</span>
                        </dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 297.5점</strong><br>
                            <span>2022학년도 287점</span>
                        </p>
                        <div><strong>81%</strong>상승</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="inner">
            <p class="r-txt mt45">
                ※ 2023학년도 최상위권 남학생 의대전문관 러셀 기숙학원 재원생 중 2022-2023학년도 수능 성적(국수탐(2)) 확인이 가능한 재원생의 성적 비교
            </p>
        </div>
    </div>
    <div class="cont03">
        <p class="tit-num"><img src="<%=Application("img_path_russel")%>/intro/2023/gate/num03.png" alt="" /></p>
        <div class="inner">
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/gate/cont03_tit.png" alt="" /></p>
            <ul>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/gate/cont03_img01.jpg" alt="" /></div>
                    <p>
                        러셀 강남&middot;대치 및 인강 출강 <br>
                        메가스터디 온&middot;오프 전문 강사진의<br> 
                        <strong>과목별&middot;수준별 수업과 콘텐츠</strong>
                    </p>
                </li>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/gate/cont03_img02.jpg" alt="" /></div>
                    <p>
                        최상위권 전문 입시 담임선생님의<br>
                        <strong>최상위권 맞춤 관리&amp;최적화된 입시전략</strong>
                    </p>
                </li>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/gate/cont03_img03.jpg" alt="" /></div>
                    <p>
                        수업과 자습의 비율 최적화로  <br>
                        <strong>충분한 자습시간 확보&amp;효율적인 시간 관리</strong>
                    </p>
                </li>
                <li>
                    <div class="infra-slide swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/gate/cont03_img04_1.jpg" alt="" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/gate/cont03_img04_2.jpg" alt="" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/gate/cont03_img04_3.jpg" alt="" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/gate/cont03_img04_4.jpg" alt="" /></div>
                            </div>
                        </div>
                    </div>
                    <p>
                        오직 학습에만 집중할 수 있도록 설계된<br>
                        <strong>프리미엄 학습 및 생활 공간</strong>
                    </p>
                </li>
            </ul>
            <p class="r-txt mt50">
                ※ 학원에 따라 운영 시스템과 시설은 다를 수 있으니, 학원 홈페이지에서 확인해 주시기 바랍니다.
            </p>
        </div>
    </div>

    <div class="cont06">
        <div class="inner">
            <!-- <p class="tit-num"><img src="<%=Application("img_path_russel")%>/intro/2023/gate/num04.png" alt="" /></p> -->
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/gate/cont06_tit.png" alt="" /></p>


            <div class="tab-wrap js-tab">
                <div class="tab-bt">
                    <a href="#" class="on"><strong>최상위권 남학생 의대전문관</strong></a>
                    <a href="#"><strong>최상위권 여학생 의대전문관</strong></a>
                    <a href="#"><strong>서연고&middot;의치대 전문관(남&middot;여)</strong></a>
                </div>
                <div class="tab-cont">
                    <div class="in on">
                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/gate/gisuk_box01_2.jpg" alt="" /></p>					
                    </div>
                    <div class="in">
                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/gate/gisuk_box02_1.jpg" /></p>						
                    </div>
                    <div class="in">
                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/gate/gisuk_box03_1.jpg" /></p>						
                    </div>
                </div>
            </div>


            <!-- <div class="link-wrap">
                <div class="link">
                    <p><img src="<%=Application("img_path_russel")%>/intro/2023/gate/link_tit01.png" alt="" /></p>
                    <p><img usemap="#linkGoto01" src="<%=Application("img_path_russel")%>/intro/2023/gate/link_goto01.png" alt="" /></p>
                    <map name="linkGoto01">
                        <area shape="rect" coords="24,89,71,117" href="https://russelcampus.megastudy.net/russel_yj/2023/half/index.asp" alt="남학생 전문관 바로가기">
                        <area shape="rect" coords="196,89,243,117" href="https://russelw.megastudy.net/russel_w/2023/half/index.asp" alt="여학생 전문관 바로가기">
                        <area shape="rect" coords="368,88,415,116" href="https://russelsm.megastudy.net/russel_sm/2023/half/index.asp" alt="서의치 전문관 바로가기">
                    </map>
                </div>
                <div class="link">
                    <p><img src="<%=Application("img_path_russel")%>/intro/2023/gate/link_tit02.png" alt="" /></p>
                    <p><img usemap="#linkGoto02" src="<%=Application("img_path_russel")%>/intro/2023/gate/link_goto02.png" alt="" /></p>
                    <map name="linkGoto02">
                        <area shape="rect" coords="27,88,71,116" href="https://russelw.megastudy.net/russel_yj/2023/summer/index.asp" alt="여학생 전문관 바로가기">
                        <area shape="rect" coords="219,89,263,117" href="https://russelsm.megastudy.net/russel_yj/2023/summer/index.asp" alt="서의치 전문관 바로가기">
                    </map>
                </div>
            </div> -->
        </div>

    </div>

    <!-- <p class="line-banner pink"><img usemap="#goto1" src="<%=Application("img_path_russel")%>/intro/2023/gate/line_banner_bansu.jpg" alt="러셀 기숙 반수반 띠배너" /></p>
    <map name="goto1">
        <area shape="rect" coords="985,0,1176,167" href="https://russelcampus.megastudy.net/russel_yj/2023/half/index.asp" alt="남학생 전문관 바로가기">
        <area shape="rect" coords="1183,3,1369,162" href="https://russelw.megastudy.net/russel_w/2023/half/index.asp" alt="여학생 전문관 바로가기">
        <area shape="rect" coords="1373,7,1559,166" href="https://russelsm.megastudy.net/russel_sm/2023/half/index.asp" alt="서의치 전문관 바로가기">
    </map>
    <p class="line-banner blue"><img usemap="#goto2" src="<%=Application("img_path_russel")%>/intro/2023/gate/line_banner_summer.jpg" alt="러셀 기숙 썸머스쿨 띠배너" /></p>
    <map name="goto2">
        <area shape="rect" coords="1158,12,1363,163" href="https://russelw.megastudy.net/russel_yj/2023/summer/index.asp" alt="여학생 전문관 바로가기">
        <area shape="rect" coords="1373,11,1578,162" href="https://russelsm.megastudy.net/russel_yj/2023/summer/index.asp" alt="서의치 전문관 바로가기">
    </map> -->
    <p class="line-banner" style="background: #546edd;">
        <img usemap="#goto4" src="<%=Application("img_path_russel")%>/intro/2023/gate/line_banner_regular.jpg" alt="러셀 기숙 n수 정규반" />
        <map name="goto4">
            <area shape="rect" coords="1092,2,1251,166" target="_blank" href="https://russelcampus.megastudy.net/russel_yj/2024/regular/index.asp" alt="남학생 의대전문관 바로가기">
            <area shape="rect" coords="1254,2,1434,166" target="_blank" href="https://russelw.megastudy.net/russel_yj/2024/regular/index.asp" alt="여학생 의대전문관 바로가기">
            <area shape="rect" coords="1434,2,1574,166" target="_blank" href="https://russelsm.megastudy.net/russel_yj/2024/regular/index.asp" alt="서의치 전문관 바로가기">
        </map>
    </p>
    <!-- <p class="line-banner red">
        <img usemap="#goto3" src="<%=Application("img_path_russel")%>/intro/2023/gate/line_banner_first.jpg" alt="러셀 기숙 재수생 우선선발반" />
        <map name="goto3">
            <area shape="rect" coords="1092,2,1251,166" target="_blank" href="https://russelcampus.megastudy.net/russel_yj/2024/first/index.asp" alt="남학생 의대전문관 바로가기">
            <area shape="rect" coords="1254,2,1434,166" target="_blank" href="https://russelw.megastudy.net/russel_yj/2024/first/index.asp" alt="여학생 의대전문관 바로가기">
            <area shape="rect" coords="1434,2,1574,166" target="_blank" href="https://russelsm.megastudy.net/russel_yj/2024/first/index.asp" alt="서의치 전문관 바로가기">
        </map>
    </p>
    <p class="line-banner blue2"><img usemap="#goto2" src="<%=Application("img_path_russel")%>/intro/2023/gate/line_banner_winter02.jpg" alt="러셀 기숙 윈터스쿨 띠배너" /></p>
    <map name="goto2">
        <area shape="rect" coords="1092,2,1251,166" target="_blank" href="https://russelcampus.megastudy.net/russel_yj/2023/winter/index.asp" alt="남학생 의대전문관 바로가기">
        <area shape="rect" coords="1254,2,1434,166" target="_blank" href="https://russelw.megastudy.net/russel_yj/2023/winter/index.asp" alt="여학생 의대전문관 바로가기">
        <area shape="rect" coords="1434,2,1574,166" target="_blank" href="https://russelsm.megastudy.net/russel_yj/2023/winter/index.asp" alt="서의치 전문관 바로가기">
    </map> -->
    <div class="cont04">
        <div class="inner">
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/gate/cont04_tit.png" alt="러셀 기숙학원 모집 안내" /></p>
            <ul>
                <li>
                    <a href="https://russelcampus.megastudy.net/russel_yj/main.asp">
                        <dl>
                            <dt>최상위권 남학생 의대전문관</dt>
                            <dd>031) 512-1010</dd>
                        </dl>
                    </a>
                    <div>
                        <a href="https://russelcampus.megastudy.net/russel_yj/main.asp">바로가기</a>
                    </div>
                </li>
                <li>
                    <a href="https://russelw.megastudy.net/russel_w/main.asp">
                        <dl>
                            <dt>최상위권 여학생 의대전문관<span class="icon-new"><img src="<%=Application("img_path_russel")%>/common/icon/ic_new.gif" alt="new" /></span></dt>
                            <dd>031) 526-6787</dd>
                        </dl>
                    </a>
                    <div>
                        <a href="https://russelw.megastudy.net/russel_w/main.asp">바로가기</a>
                    </div>
                </li>
                <li>
                    <a href="https://russelsm.megastudy.net/russel_sm/main.asp">
                        <dl>
                            <dt>서연고&middot;의치대 전문관<span>(남&middot;여)<span class="icon-new"><img src="<%=Application("img_path_russel")%>/common/icon/ic_new.gif" alt="new" /></span></span></dt>
                            <dd>031) 513-1010</dd>
                        </dl>
                    </a>
                    <div>
                        <a href="https://russelsm.megastudy.net/russel_sm/main.asp">바로가기</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="cont05">
        <div class="inner">
            <p>최상위권 대입성공을 위한 최선의 선택, 최고의 결과<br>
                <strong>러셀 기숙학원에서 합격을 시작하세요.</strong>
            </p>
        </div>
    </div>
    <!--//contents-->
</div>
<!-- gate-wrap -->

<!--  공통 하단 //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->
<script>
	//quick 팝업창
	var popH = screen.availHeight;
	var popupWidth = 794;
	var popupX = (window.screen.width / 2) - (popupWidth / 2);

	//학원 문자수신 알리미 신청 바로가기
	function fn_eventGo(url) {
		window.open(url,'popup_mock','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}

    //영상캐스트 영상 팝업
    function CastPopup(url){
        var sUrl = url.toLowerCase();
        var wnd = window.open("", "talk", "width=707,height=398,scrollbars=0,resizable=no,location=no");
        
        // 네이버tv
        if (sUrl.indexOf('naver.com') > -1) {
        sUrl = sUrl.replace("/v/", "/embed/");
        wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+sUrl+"' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' allow='autoplay' allowfullscreen></iframe>");
        // 유튜브
        } else {
        wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"' frameborder='no' scrolling='no' allowfullscreen></iframe>");
        }
    }

</script>
<script src="/common/js/gsap.min.js"></script>
<script src="/common/js/TextPlugin.min.js"></script>
<script src="./gate.js"></script>
</body>
</html>
