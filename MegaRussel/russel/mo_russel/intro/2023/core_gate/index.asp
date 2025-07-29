<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2023 러셀CORE" />
    <meta name="keywords" content="2023 러셀CORE학원, 러셀CORE, 러셀코어" />
	<meta name="description" content="단 1년 만에 지역 최상위권 입결 1위 러셀CORE" />
    <link rel="stylesheet" type="text/css" href="/css/aos.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/campus_list.css" />
    <link rel="stylesheet" type="text/css" href="./style.css" media="all" />
</head>
<%
	if IsDevSvr() = false then '사용안하는 페이지로 메인 페이지로 이동
		response.redirect "https://mrussel.megastudy.net/intro/intro.asp"
	end if
%>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">러셀CORE 학원</strong>
</h2>
<section class="sub-wrap">

	<!-- coregate-wrap -->
    <div class="coregate-wrap">
        <!-- visual -->
        <div class="visual-area">
            <div class="visual">
                <div class="obj01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/obj01.jpg" alt=""></div>
                <div class="top"><img class="motion_rotate" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/top_o.png" alt=""></div>
                <div class="obj02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/obj02.png" alt=""></div>
                <div class="inner">
                    <p class="f-vtit">
                        <span class="tit01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/v-tit01.png" alt="단"></span>
                        <span class="tit02" style="padding-left:2vw"><img class="blur delay01" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/v-tit02.png" alt="1년 만에"></span>
                    </p>
                    <p class="tit03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/v-tit03.png" alt="지역 최상위권"></p>
                    <p class="tit04"><img class="blur" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/v-tit04.png" alt="입결 1위*"></p>
                    <p class="tit05"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/v-tit05.png" alt="러셀CORE"></p>
                </div>
            </div>
            <!-- 데이터 산출 기준-->
            <div class="l-pop">
                <a href="javascript:void(0)" class="gr-data"><span>!</span> 데이터 산출 기준</a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    *광주 지역 학원_2023학년도 의치한수약+서연고 최종 합격자 수,  CORE광주 2023학년도 재원생 합격자 기준 (홈페이지 대입 실적 기준/2023.02.28 기준)<br>
                    *대전 지역 학원_2023학년도 의치한수약+서연고 최종 합격자 수 비교 기준, CORE 대전 2023학년도 재원생 합격자 기준 (홈페이지 대입 실적 기준/2023.02.28 기준)
                </div>
            </div>
            <!-- //데이터 산출 기준 -->
        </div>
        <!-- //visual -->
        <div class="fixed-bar">
            <a href="javascript:void(0)">
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/bottom_banner.jpg" alt=""></p>
            </a>
        </div>

        <div class="cont01">
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont01_img.jpg" alt=""></p>
        </div>
        <div class="cont02">
            <div class="timeline">
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/timeline.jpg" alt=""></p>
                <div class="progress">
                    <span class="bar"></span>
                </div>
            </div>
            <div class="inner">
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont02_img01.jpg" alt=""></p>
                <p class="img delay01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont02_img02.jpg" alt=""></p>
                <!-- 데이터 산출 기준-->
                <p class="text-align-right img delay01"><a href="javascript:void(0)" class="gr-data">데이터 산출 기준<span>!</span></a></p>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        *광주 지역 학원_2023학년도 의치한수약+서연고 최종 합격자 수,  CORE광주 2023학년도 재원생 합격자 기준 (홈페이지 대입 실적 기준/2023.02.28 기준)<br>
                        
                        *대전 지역 학원_2023학년도 의치한수약+서연고 최종 합격자 수 비교 기준, CORE 대전 2023학년도 재원생 합격자 기준 (홈페이지 대입 실적 기준/2023.02.28 기준)
                    </div>
                </div>
                <!-- //데이터 산출 기준 -->
                <p class="img delay02 mt20">
                    <a href="https://tv.naver.com/v/34142777/list/835688">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont02_img03.png" alt="">
                    </a>
                </p>
                <p class="img delay03 map"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont_bg.jpg" alt=""></p>
                <p class="img delay04 mt70">
                    <a href="https://tv.naver.com/v/34136621/list/835688">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont02_img04.png" alt="">
                    </a>
                </p>
                <p class="img delay05 mt30"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont02_img05.jpg" alt="러셀CORE는 대입 성공, 지역 입결 1위 학원"></p>
            </div>
        </div>
        <div class="cont03">
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont03_img.jpg" alt=""></p>
        </div>
        <div class="cont04">
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont04_img01.jpg" alt=""></p>
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont04_img02.jpg" alt=""></p>
            <div class="desc-txt">
                <p>
                    A학생, B학생 모두 동일한 선생님의 커리큘럼으로<br>
                    수업을 듣고, 콘텐츠를 제공 받지만<br>
                    <strong>러셀CORE 재원생</strong>인 B학생은 <br>
                    <strong>러셀CORE만의 시스템으로</strong> 대치동까지의 <br>
                    이동거리를 줄여 <strong>학습시간을 확보</strong>할 수 있습니다. 
                </p>
            </div>
        </div>
        <div class="cont05">
            <div class="inner">
                <ul>
                    <li data-aos="fade-up">
                        <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img01_tit.jpg" alt=""></div>
                        <div class="trans-img type3">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img01-3.jpg" alt="">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img01-1.jpg" alt="">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img01-2.jpg" alt="">
                        </div>
                        <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img01_txt.jpg" alt=""></div>
                    </li>
                    <li data-aos="fade-up">
                        <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img02_tit.jpg" alt=""></div>
                        <div class="trans-img type2">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img02-2.jpg" alt="">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img02-1.jpg" alt="">
                        </div>
                        <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img02_txt.jpg" alt=""></div>
                    </li>
                    <li data-aos="fade-up">
                        <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img03_tit.jpg" alt=""></div>
                        <div class="trans-img type2">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img03-2.jpg" alt="">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img03-1.jpg" alt="">
                        </div>
                        <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img03_txt.jpg" alt=""></div>
                    </li>
                    <li data-aos="fade-up">
                        <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img04_tit.jpg" alt=""></div>
                        <div class="trans-img type2">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img04-2.jpg" alt="">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img04-1.jpg" alt="">
                        </div>
                        <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img04_txt.jpg" alt=""></div>
                    </li>
                    <li data-aos="fade-up">
                        <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img05_tit.jpg" alt=""></div>
                        <div class="trans-img type4">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img05-4.jpg" alt="">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img05-1.jpg" alt="">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img05-2.jpg" alt="">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img05-3.jpg" alt="">
                        </div>
                        <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img05_txt.jpg" alt=""></div>
                    </li>
                    <li data-aos="fade-up">
                        <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img06_tit.jpg" alt=""></div>
                        <div class="trans-img type2">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img06-2.jpg" alt="">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img06-1.jpg" alt="">
                        </div>
                        <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont05_img06_txt.jpg" alt=""></div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="cont06">
            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont06_img.jpg" alt=""></div>
            <div class="inner">
                <div class="select-btn">
                    <span class="btn-bar"></span>
                    <p>대학생 혹은<br>N수생이다.</p>
                    <p>재학생이다.</p>
                </div>
                <ul>
                    <li class="type1">
                        <a href="/intro/2023/half/index.asp">
                            <p>대학생/N수</p>
                            <dl>
                                <dt><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont06_ltit01.png" alt="2024 반수반" /></dt>
                                <dd>반수 성공을 위한<br>
                                확실한 방법!</dd>
                            </dl>
                        </a>
                    </li>
                    <li class="type1">
                        <a href="/intro/2023/regular/index.asp">
                            <p>N수</p>
                            <dl>
                                <dt><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont06_ltit02.png" alt="2024 N수 정규반" /></dt>
                                <dd>단과 수업과<br>
                                의무자습을 한방에</dd>
                            </dl>
                        </a>
                    </li>
                    <li>
                        <a href="/intro/danka/2023/07/go3.asp">
                            <p>대학생/N수/고3/고2</p>
                            <dl>
                                <dt><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont06_ltit03.png" alt="정규 특강 단과" /></dt>
                                <dd>수능까지 체계적인<br>
                                과목별/수준별 맞춤 단과</dd>
                            </dl>
                        </a>
                    </li>
                    <li class="type2">
                        <a href="/intro/2023/regular_go/index.asp">
                            <p>고3/고2</p>
                            <dl>
                                <dt><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont06_ltit04.png" alt="2024 재학생 정규반" /></dt>
                                <dd>최상위권을 위한<br>
                                재학생 맞춤 시스템</dd>
                            </dl>
                        </a>
                    </li>
                    <li class="type2">
                        <a href="/intro/2023/summer/index.asp">
                            <p>고3/고2/고1</p>
                            <dl>
                                <dt><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/cont06_ltit05.png" alt="2024 썸머스쿨" /></dt>
                                <dd>여름방학은 최상위권<br>
                                도약을 위한 기회</dd>
                            </dl>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div id="mozip">
            <p class="d-tit">
                <strong>최상위권 대입 합격을 위한 전략!</strong><br>
                러셀CORE 학원 모집 안내
            </p>
            <ul class="danka-list-wrap">
                <li>
                    <span class="box"><strong>러셀CORE 광주</strong><br>062) 462-1010</span>
                    <span class="box">
                        <a href="https://mcoregj.megastudy.net/core_gj/main.asp" target="_blank">모집 안내</a>
                        <a href="https://mcoregj.megastudy.net/entinfo/entry_pt/enter_pt_list.asp?ep_flg=0" target="_blank">설명회</a>
                    </span>
                </li>
                <li>
                    <span class="box"><strong>러셀CORE 대전</strong><br>042) 381-2020</span>
                    <span class="box">
                        <a href="https://mcoredj.megastudy.net/core_dj/main.asp" target="_blank">모집 안내</a>
                        <a href="https://mcoredj.megastudy.net/entinfo/entry_pt/enter_pt_list.asp?ep_flg=0" target="_blank">설명회</a>
                    </span>
                </li>
                <li>
                    <span class="box"><strong>러셀CORE 원주</strong> <strong class="color-red f11">N</strong><br>033) 901-2020</span>
                    <span class="box">
                        <a href="https://mcorewj.megastudy.net/core_wj/main.asp" target="_blank">모집 안내</a>
                        <a href="https://mcorewj.megastudy.net/entinfo/entry_pt/enter_pt_list.asp?ep_flg=0" target="_blank">설명회</a>
                    </span>
                </li>
                <li>
                    <span class="box"><strong>러셀CORE 전주</strong> <strong class="color-red f11">N</strong><br>063) 905-3030</span>
                    <span class="box">
                        <a href="https://mcorejj.megastudy.net/core_jj/main.asp" target="_blank">모집 안내</a>
                        <a href="https://mcorejj.megastudy.net/entinfo/entry_pt/enter_pt_list.asp?ep_flg=0" target="_blank">설명회</a>
                    </span>
                </li>
                <li>
                    <span class="box"><strong>러셀CORE 창원</strong> <strong class="color-red f11">N</strong><br>055) 605-1010</span>
                    <span class="box">
                        <a href="https://mcorecw.megastudy.net/core_cw/main.asp" target="_blank">모집 안내</a>
                        <a href="https://mcorecw.megastudy.net/entinfo/entry_pt/enter_pt_list.asp?ep_flg=0" target="_blank">설명회</a>
                    </span>
                </li>
                <li>
                    <span class="box"><strong>러셀CORE 청주</strong> <strong class="color-red f11">N</strong><br>043) 908-1010</span>
                    <span class="box">
                        <a href="https://mcorecj.megastudy.net/core_cj/main.asp" target="_blank">모집 안내</a>
                        <a href="https://mcorecj.megastudy.net/entinfo/entry_pt/enter_pt_list.asp?ep_flg=0" target="_blank">설명회</a>
                    </span>
                </li>
            </ul>
        </div>
        <p class="logo"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_gate/logo.png" alt=""></p>
    </div>
    <p><a href="https://russel.megastudy.net/intro/2023/core_gate/index.asp" target="_blank" class="bt-pc">PC페이지로 이동</a></p>
	<!-- //gisuk-gate-wrap -->

</section>
<!-- #include virtual = "/inc/footer.asp" -->
<script src="/js/aos.js"></script>
<script src="./ui.js"></script>

<script>
    //데이터 산출 기준
    $(function(){
        $('.gr-data').on('click',function(){
            $(this).parent().next('.layer-wrap').addClass('on');
        });
        $('.js-close-mask a').on('click',function(){
            $('.layer-wrap').removeClass('on');
        });
    })

    //aos fadeup 효과
    AOS.init({
                
        offset: 100,
        duration: 500,
        easing: 'ease-in-sine',
        delay: 0,
        once: true
    });

</script>
</body>
</html>