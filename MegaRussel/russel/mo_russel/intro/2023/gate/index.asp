<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="러셀 기숙학원" />
    <meta name="keywords" content="러셀 기숙학원, 러셀 재수, 메가스터디 재수학원" />
	<meta name="description" content="러셀 기숙학원" />
    <link rel="stylesheet" type="text/css" href="./style.css? version1.1" media="all" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700;900&display=swap" rel="stylesheet">
</head>
<%
	' if IsDevSvr() = false then '사용안하는 페이지로 메인 페이지로 이동
	' 	response.redirect "https://mrussel.megastudy.net/intro/intro.asp"
	' end if
%>


<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">러셀 기숙학원</strong>
</h2>
<section class="sub-wrap">
    <!-- gisuk-spech-wrap -->
    <!-- <div class="gisuk-spech-wrap">
        <a href="javascript:void(0)" alt=""><img src="<%=Application("img_path_russel")%>/m_russel/event/2023/gisuk_pre/img_m_banner.jpg" alt="지금 주목해야 할 콘텐츠"></a>
    </div> -->

	<!-- gisuk-gate-wrap -->
    <div class="gisuk-gate-wrap">
        <!-- visual -->
        <!-- <div class="img" style="position: relative;">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/top_banner02.jpg" alt="" />
            <a href="https://mrusselcampus.megastudy.net/board/notice_view.asp?code=29941" title="" target="_blank" style="position: absolute; left: 55.97%; top: 18%; width: 19.94%; height: 67%; z-index: 2;"></a>
            <a href="https://mrusselw.megastudy.net/board/notice_view.asp?code=29930" title="" target="_blank" style="position: absolute; left: 77%; top: 19%; width: 19.94%; height: 67%; z-index: 2;"></a>
        </div> -->
        <div class="visual">
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
            <div class="sec03">                
                <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/bg_txt_02.jpg" alt="" /></div>
                <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/visual_bg01.jpg" alt="" /></div>
            </div>
            <div class="swiper-container visual-bg">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/visual_bg01.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/visual_bg02.jpg" alt=""></div>
                    <div class= "swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/visual_bg03.jpg" alt=""></div>
                </div>
            </div>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/visual.png" alt=""></p>
            <p class="txt">
                * 러셀 전체 학원별 2021-2023학년도 의치한수약 대학 합격자수 기준 <br>
                (홈페이지 대입 실적 기준/2023.02.20 기준) 및 <br> 2021-2023학년도 러셀 전체 학원  '메가 대성 더 프리미엄 모의고사,<br> 6/9월 모의평가, 수능' 학원별 등수 기준
            </p>
        </div>
        <!-- //visual -->

        <div class="fixed-bar">
            <a href="#tag">모집안내 바로가기</a>
        </div>

        <!-- cont01 -->
        <div class="cont01">
            <p class="img">
                <img class="tit" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/tit01.jpg" alt="">
                <!-- <a class="round-a" href="https://mrussel.megastudy.net/event/2025/gisuk_pre/index.asp" target="_blank"><img class="round-banner" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/round_banner02.png" alt=""></a> -->
            </p>
            <div class="swiper-container gate-slide-01">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/slide01_01.jpg" alt=""></p>
                        <p class="i-txt">
                            2) 러셀 전체 학원별 2021-2023학년도 의치한수약 대학 합격자수 기준 <br> (홈페이지 대입 실적 기준/2023.02.20 기준) 
                        </p>
                    </div>
                    <div class="swiper-slide">
                        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/slide01_02.jpg" alt=""></p>
                        <p class="i-txt">
                            1) 러셀 전체 학원별 2022학년도 바른공부 자습전용관 재원생 중 <br> N수생 성적 상승률 기준 <br>
                            2) 2022학년도 최상위권 남학생 의대전문관 러셀 기숙학원 재원생 중 <br> 자연계열 학생의 2021-2022학년도 수능 점수 분석 결과
                        </p>
                    </div>
                    <div class="swiper-slide">
                        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/slide01_03.jpg" alt=""></p>
                        <div class="history-wrap">
                            <div>
                                <div class="swiper-container history-slide">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/slide01_03_s01.png" alt=""></div>
                                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/slide01_03_s02.png" alt=""></div>
                                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/slide01_03_s03.png" alt=""></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <p class="i-txt">
                            1) 러셀 전체 학원별 2021-2023학년도 <br> ‘메가 대성 더 프리미엄 모의고사, 6/9월 모의평가, 수능’ 학원별 등수 기준 
                        </p>
                    </div>
                </div>

                <div class="swiper-pagination"></div>
            </div>
            
        </div>
        <!-- //cont01 -->

        <!-- cont02 -->
        <div class="cont02">
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/tit02.jpg" alt=""></p>
            <!-- gate-slide -->
            <div class="swiper-container gate-slide-02">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><a href="https://tv.naver.com/v/34185919?autoPlay=true" alt="최상위권 대입성공스토리"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/st_slide01.jpg" alt="김인"></a></div>
                    <div class="swiper-slide"><a href="https://m.tv.naver.com/v/34867012?autoPlay=true" alt="최상위권 대입성공스토리"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/st_slide02.jpg" alt="성태호"></a></div>
                    <div class="swiper-slide"><a href="https://m.tv.naver.com/v/34866817?autoPlay=true" alt="최상위권 대입성공스토리"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/st_slide03.jpg" alt="시정우"></a></div>
                    <div class="swiper-slide"><a href="https://m.tv.naver.com/v/34866845?autoPlay=true" alt="최상위권 대입성공스토리"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/st_slide04.jpg" alt="김동욱"></a></div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <!-- //gate-slide -->
            
            <p class="r-txt">※ 2023학년도 최상위권 남학생 의대전문관 재원생의 수강 후기 중 일부 내용 발췌</p>
            <!-- roll-swiper -->
            <div class="roll-swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_skk.png" alt="" /></dt>
                            <dd>
                                성균관대학교<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 299.5점</strong>
                                <span>2022학년도 283점</span>
                            </p>
                            <div><strong>97%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_skk.png" alt="" /></dt>
                            <dd>
                                성균관대학교<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 299점</strong>
                                <span>2022학년도 234점</span>
                            </p>
                            <div><strong>98%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ulsan.png" alt="" /></dt>
                            <dd>
                                울산대학교<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 295.5점</strong>
                                <span>2022학년도 280점</span>
                            </p>
                            <div><strong>78%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ulsan.png" alt="" /></dt>
                            <dd>
                                울산대학교<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 293.5점</strong>
                                <span>2022학년도 261.5점</span>
                            </p>
                            <div><strong>83%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="" /></dt>
                            <dd>
                                서울대학교 치의학<br>학석사통합과정
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 297.5점</strong>
                                <span>2022학년도 287점</span>
                            </p>
                            <div><strong>81%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kh.png" alt="" /></dt>
                            <dd>
                                경희대학교<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 299.5점</strong>
                                <span>2022학년도 283점</span>
                            </p>
                            <div><strong>97%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kh.png" alt="" /></dt>
                            <dd>
                                경희대학교<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 299점</strong>
                                <span>2022학년도 234점</span>
                            </p>
                            <div><strong>98%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kh.png" alt="" /></dt>
                            <dd>
                                경희대학교<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 298.5점</strong>
                                <span>2022학년도 272.5점</span>
                            </p>
                            <div><strong>95%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kh.png" alt="" /></dt>
                            <dd>
                                경희대학교<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 295.5점</strong>
                                <span>2022학년도 280점</span>
                            </p>
                            <div><strong>78%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ajou.png" alt="" /></dt>
                            <dd>
                                아주대학교<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 294점</strong>
                                <span>2022학년도 289점</span>
                            </p>
                            <div><strong>45%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ih.png" alt="" /></dt>
                            <dd>
                                인하대학교<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 299점</strong>
                                <span>2022학년도 234점</span>
                            </p>
                            <div><strong>98%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cau.jpg" alt="" /></dt>
                            <dd>
                                중앙대학교<br>의학부
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 298.5점</strong>
                                <span>2022학년도 265점</span>
                            </p>
                            <div><strong>96%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_hy.png" alt="" /></dt>
                            <dd>
                                한양대학교<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 298.5점</strong>
                                <span>2022학년도 265점</span>
                            </p>
                            <div><strong>96%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_gachon.png" alt="" /></dt>
                            <dd>
                                가천대학교(메디컬)<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 298.5점</strong>
                                <span>2022학년도 272.5점</span>
                            </p>
                            <div><strong>95%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_soonchunhyang.png" alt="" /></dt>
                            <dd>
                                순천향대학교<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 299.5점</strong>
                                <span>2022학년도 283점</span>
                            </p>
                            <div><strong>97%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_soonchunhyang.png" alt="" /></dt>
                            <dd>
                                순천향대학교<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 298.5점</strong>
                                <span>2022학년도 272.5점</span>
                            </p>
                            <div><strong>95%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_soonchunhyang.png" alt="" /></dt>
                            <dd>
                                순천향대학교<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 297.5점</strong>
                                <span>2022학년도 287점</span>
                            </p>
                            <div><strong>81%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_soonchunhyang.png" alt="" /></dt>
                            <dd>
                                순천향대학교<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 297.5점</strong>
                                <span>2022학년도 281.5점</span>
                            </p>
                            <div><strong>86%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_soonchunhyang.png" alt="" /></dt>
                            <dd>
                                순천향대학교<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 294.5점</strong>
                                <span>2022학년도 278점</span>
                            </p>
                            <div><strong>75%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kyungpook.png" alt="" /></dt>
                            <dd>
                                경북대학교<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 296.5점</strong>
                                <span>2022학년도 285.5점</span>
                            </p>
                            <div><strong>76%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kk.png" alt="" /></dt>
                            <dd>
                                건국대학교(글로컬)<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 299점</strong>
                                <span>2022학년도 267.5점</span>
                            </p>
                            <div><strong>97%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_pusan.png" alt="" /></dt>
                            <dd>
                                부산대학교<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 297.5점</strong>
                                <span>2022학년도 285.5점</span>
                            </p>
                            <div><strong>83%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_pusan.png" alt="" /></dt>
                            <dd>
                                부산대학교<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 297.5점</strong>
                                <span>2022학년도 281.5점</span>
                            </p>
                            <div><strong>86%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cnu.jpg" alt="" /></dt>
                            <dd>
                                충남대학교<br>의예과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 295.5점</strong>
                                <span>2022학년도 293점</span>
                            </p>
                            <div><strong>36%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="" /></dt>
                            <dd>
                                서울대학교<br>항공우주공학과
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 296점</strong>
                                <span>2022학년도 266점</span>
                            </p>
                            <div><strong>88%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="" /></dt>
                            <dd>
                                서울대학교<br>정치외교학부
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 294.5점</strong>
                                <span>2022학년도 263.5점</span>
                            </p>
                            <div><strong>85%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="" /></dt>
                            <dd>
                                서울대학교<br>인문계열
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 292.5점</strong>
                                <span>2022학년도 256점</span>
                            </p>
                            <div><strong>83%</strong>상승</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kaist.png" alt="" /></dt>
                            <dd>
                                KAIST<br>자유전공학부
                                <span>러셀 기숙 OOO</span>
                            </dd>
                        </dl>
                        <div>
                            <p>
                                <strong>2023학년도 297.5점</strong>
                                <span>2022학년도 287점</span>
                            </p>
                            <div><strong>81%</strong>상승</div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //roll-swiper -->
            <p class="r-txt">※ 2023학년도 최상위권 남학생 의대전문관 러셀 기숙학원 재원생 중 <br> 2022-2023학년도 수능 성적(국수탐(2)) 확인이 가능한 재원생의 성적 비교</p>
        </div>
        <!-- //cont02 -->

        
        <!-- cont03 -->
        <div class="cont03">
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/tit03.jpg" alt=""></p>
            <div class="gate-tab">
                <a href="" class="on">수준별 맞춤<br>수업&콘텐츠</a>
                <a href="">기숙 전문<br>입시 담임선생님</a>
                <a href="">수업과 자습<br>비율 최적화</a>
                <a href="">프리미엄<br>학습&생활 공간</a>
            </div>
            <div class="gate-cont" style="display:block">
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/tab01.jpg" alt=""></p>
                <p class="txt">
                    <span>
                        러셀 강남&middot;대치 및 인강 출강 <br>
                        메가스터디 온&middot;오프 전문 강사진의 <br>
                        <strong>과목별&middot;수준별 수업과 콘텐츠</strong>                        
                    </span>
                </p>
            </div>
            <div class="gate-cont">
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/tab02.jpg" alt=""></p>
                <p class="txt"><span>최상위권 전문 입시 담임선생님의<strong>최상위권 맞춤 관리&최적화된 입시전략</strong></span></p>
            </div>
            <div class="gate-cont">
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/tab03.jpg" alt=""></p>
                <p class="txt"><span>수업과 자습의 비율 최적화로<br><strong> 충분한 자습시간 확보&효율적인 시간 관리</strong></span></p>
            </div>
            <div class="gate-cont">                
                <div class="swiper-container system-slide">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/tab04_01.jpg" alt=""></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/tab04_02.jpg" alt=""></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/tab04_03.jpg" alt=""></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/tab04_04.jpg" alt=""></div>
                    </div>
                </div>
                <p class="txt"><span>오직 학습에만 집중할 수 있도록<strong>설계된 프리미엄 학습 및 생활 공간</strong></span></p>
            </div>
            <p class="r-txt">※ 학원에 따라 운영 시스템과 시설은 다를 수 있으니,<br>학원 홈페이지에서 확인해 주시기 바랍니다.</p>
        </div>
        <!-- //cont03 -->

        <p class="img kisuk-cont gisuk-slide-start"><img src="<%=Application("img_path_russel")%>/m_russel/event/2023/gisuk_pre/tit05.jpg" alt=""></p>

        <!-- gisuk-slide-wrap -->
        <div class="gisuk-slide-wrap">
            <div class="tab-wrap">
                <a href="" class="on">최상위권<br>남학생 의대전문관</a>
                <a href="">최상위권<br>여학생 의대전문관</a>
                <a href="">서연고&middot;의치대<br>전문관 (남&middot;여)</a>
            </div>
            <!-- 남자기숙 -->
            <div class="tab-cont" style="display:block;">
                <div class="swiper-container gisuk-slide">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/m_slide01_2.jpg" alt=""></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/m_slide02.jpg" alt=""></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/m_slide03.jpg" alt=""></div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <!-- //남자기숙 -->
            <!-- 여자기숙 -->
            <div class="tab-cont">
                <div class="swiper-container gisuk-slide">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/w_slide02_1.jpg" alt=""></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/w_slide03.jpg" alt=""></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/w_slide04.jpg" alt=""></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/w_slide01.jpg" alt=""></div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <!-- //여자기숙 -->
            <!-- 서의치기숙 -->
            <div class="tab-cont">
                <div class="swiper-container gisuk-slide">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/sm_slide01_3.jpg" alt=""></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/sm_slide02.jpg" alt=""></div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <!-- //서의치기숙 -->
        </div>
        <!-- //gisuk-slide-wrap -->

        <!-- <p class="img gisuk-slide-end" id="mozip"><img usemap="#gotoLink" src="<%=Application("img_path_russel")%>/m_russel/event/2023/gisuk_pre/gisuk_goto.jpg" alt=""></p>
        <map name="gotoLink">
            <area shape="rect" coords="53,290,257,401" href="https://mrusselcampus.megastudy.net/russel_yj/2023/half/index.asp" alt="반수반 남학생 전문관 바로가기">
            <area shape="rect" coords="260,293,464,404" href="https://mrusselw.megastudy.net//russel_w/2023/half/index.asp" alt="반수반 여학생 전문관 바로가기">
            <area shape="rect" coords="468,289,672,400" href="https://mrusselsm.megastudy.net/russel_sm/2023/half/index.asp" alt="반수반 서의치 전문관 바로가기">
            <area shape="rect" coords="154,741,358,852" href="https://mrusselw.megastudy.net/russel_yj/2023/summer/index.asp" alt="썸머스쿨 여학생 전문관 바로가기">
            <area shape="rect" coords="362,741,566,852" href="https://mrusselsm.megastudy.net/russel_yj/2023/summer/index.asp" alt="썸머스쿨 서의치 전문관 바로가기">
        </map> -->
        <!-- <p class="img gisuk-slide-end" id="mozip">
            <img usemap="#gotoLink03" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/regular_goto.jpg" alt="">
            <map name="gotoLink03">
                <area shape="rect" coords="53,290,257,401" href="https://mrusselcampus.megastudy.net/russel_yj/2024/regular/index.asp" alt="남학생 의대전문관 바로가기">
                <area shape="rect" coords="260,293,464,404" href="https://mrusselw.megastudy.net/russel_yj/2024/regular/index.asp" alt="여학생 의대전문관 바로가기">
                <area shape="rect" coords="468,289,672,400" href="https://mrusselsm.megastudy.net/russel_yj/2024/regular/index.asp" alt="서의치 전문관 바로가기">
            </map>
        </p> -->
        <!-- <p class="img gisuk-slide-end" id="mozip">
            <img usemap="#gotoLink02" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/first_goto.jpg" alt="">
            <map name="gotoLink02">
                <area shape="rect" coords="53,290,257,401" href="https://mrusselcampus.megastudy.net/russel_yj/2024/first/index.asp" alt="남학생 의대전문관 바로가기">
                <area shape="rect" coords="260,293,464,404" href="https://mrusselw.megastudy.net/russel_yj/2024/first/index.asp" alt="여학생 의대전문관 바로가기">
                <area shape="rect" coords="468,289,672,400" href="https://mrusselsm.megastudy.net/russel_yj/2024/first/index.asp" alt="서의치 전문관 바로가기">
            </map>
        </p>
        <p class="img gisuk-slide-end" id="mozip"><img usemap="#gotoLink" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/winter_goto.jpg" alt=""></p>
        <map name="gotoLink">
            <area shape="rect" coords="53,290,257,401" href="https://mrusselcampus.megastudy.net/russel_yj/2023/winter/index.asp" alt="남학생 의대전문관 바로가기">
            <area shape="rect" coords="260,293,464,404" href="https://mrusselw.megastudy.net/russel_yj/2023/winter/index.asp" alt="여학생 의대전문관 바로가기">
            <area shape="rect" coords="468,289,672,400" href="https://mrusselsm.megastudy.net/russel_yj/2023/winter/index.asp" alt="서의치 전문관 바로가기">
        </map> -->





        <!-- <div class="goto-wrap">
            <div class="box">
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/event/2023/gisuk_pre/box_tit01.png" alt=""></p>
                <p class="img"><img usemap="#goto01" src="<%=Application("img_path_russel")%>/m_russel/event/2023/gisuk_pre/box_goto01.jpg" alt=""></p>
                <map name="goto01">
                    <area shape="rect" coords="0,1,211,149" href="https://mrusselcampus.megastudy.net/russel_yj/2023/half/index.asp" alt="남학생 전문관 바로가기">
                    <area shape="rect" coords="216,1,427,149" href="https://mrusselw.megastudy.net/russel_w/2023/half/index.asp" alt="여학생 전문관 바로가기">
                    <area shape="rect" coords="428,1,639,149" href="https://mrusselsm.megastudy.net/russel_sm/2023/half/index.asp" alt="서의치 전문관 바로가기">
                </map>
            </div>
            <div class="box">
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/event/2023/gisuk_pre/box_tit02.png" alt=""></p>
                <p class="img"><img usemap="#goto02" src="<%=Application("img_path_russel")%>/m_russel/event/2023/gisuk_pre/box_goto02.jpg" alt=""></p>
                <map name="goto02">
                    <area shape="rect" coords="1,4,318,149" href="https://mrusselw.megastudy.net/russel_yj/2023/summer/index.asp" alt="여학생 전문관 바로가기">
                    <area shape="rect" coords="324,1,640,149" href="https://mrusselsm.megastudy.net/russel_yj/2023/summer/index.asp" alt="서의치 전문관 바로가기">
                </map>
            </div>
        </div> -->




        <!-- <div class="spech-wrap">

            <div class="loction-wrap">
                <ul>
                    <li>
                        <p class="tit">서울</p>
                        <p class="day">5/14(일)<br>오후 2시</p>
                    </li>
                    <li>
                        <p class="tit">대전</p>
                        <p class="day">5/16(화)<br>오후 7시</p>
                    </li>
                </ul>
                <ul>
                    <li>
                        <p class="tit">대구</p>
                        <p class="day">5/22(월)<br>오후 7시</p>
                    </li>
                    <li>
                        <p class="tit">광주</p>
                        <p class="day">5/17(수)<br>오후 7시</p>
                    </li>
                    <li>
                        <p class="tit">부산</p>
                        <p class="day">5/21(일)<br>오후 2시</p>
                    </li>
                </ul>
            </div>
            <p class="txt">최상위권을 위한 레이스는 이미 시작되었습니다.<br>최상위권 러셀 기숙에서 반수 성공의 주인공이 되시길 바랍니다.</p>
            <div class="spech_btn_box">
                <a href="https://mrussel.megastudy.net/event/2023/gisuk_pre/index.asp" alt="">설명회 예약하기</a>
            </div>
            
        </div> -->

        <a class="img gisuk-slide-end" id="mozip">
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/gate/tit04.jpg" alt=""></p>
            <!--학원별 모집안내-->
            <!-- #include virtual = "/inc/campus_list_link.asp" -->
            <!--//학원별 모집안내-->
        </a>

        <div class="bottom">
            최상위권 대입성공을 위한<br>
            최선의 선택, 최고의 결과<br>
            <strong>러셀 기숙학원에서 합격을 시작하세요.</strong>
        </div>
    </div>
    <p><a href="<%=pc_url%>/intro/2023/gate/index.asp" target="_blank" class="bt-pc">PC페이지로 이동</a></p>
	<!-- //gisuk-gate-wrap -->

</section>
<!-- #include virtual = "/inc/footer.asp" -->
<script src="/js/gsap.min.js"></script>
<script src="/js/TextPlugin.min.js"></script>
<script src="./ui.js"></script>
</body>
</html>