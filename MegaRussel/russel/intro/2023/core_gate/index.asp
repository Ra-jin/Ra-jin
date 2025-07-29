<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="2023 러셀CORE" />
    <meta name="keywords" content="2023 러셀CORE학원, 러셀CORE, 러셀코어" />
	<meta name="description" content="단 1년 만에 지역 최상위권 입결 1위 러셀CORE" />
    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" href="/common/css/full_danka.css">
	<link rel="stylesheet" href="/common/css/aos.css">
	<link rel="stylesheet" href="./gate.css">
</head>
<%
	if IsDevSvr() = false then '사용안하는 페이지로 메인 페이지로 이동
		response.redirect "http://russel.megastudy.net/intro/gateway.asp"
	end if
%>

<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- gate-wrap -->
<div class="gate-wrap">
    <div class="visual-area">
        <div class="inner">
            <div class="obj01">
                <img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/obj.jpg" alt="" />
            </div>
            <div class="top"><img class="motion_rotate" src="<%=Application("img_path_russel")%>/intro/2023/core_gate/top_o.png" alt="" /></div>
            <div class="obj02">
                <img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/obj_top.png" alt="" />
            </div>
            <p class="tit01">
                <span><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/v-tit01.png" alt="단" /></span>
                <span class="blur delay01"><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/v-tit02.png" alt="1년 만에" /></span>
            </p>
            <p class="tit02">
                <span><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/v-tit03.png" alt="지역 최상위권" /></span>
                <span class="blur"><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/v-tit04.png" alt="입결 1위*" /></span>
            </p>
            <p class="tit03"><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/v-tit05.png" alt="러셀CORE" /></p>
            <p class="l-txt">
                *광주 지역 학원_2023학년도 의치한수약+서연고 최종 합격자 수,  CORE광주 2023학년도 재원생 합격자 기준 (홈페이지 대입 실적 기준/2023.02.28 기준)<br>
                *대전 지역 학원_2023학년도 의치한수약+서연고 최종 합격자 수 비교 기준, CORE 대전 2023학년도 재원생 합격자 기준 (홈페이지 대입 실적 기준/2023.02.28 기준)
            </p>
        </div>
    </div>
    <div class="cont01">
        <div class="inner">
            <ul class="q-wrap">
                <li><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/question01.png" alt="CORE LIVE 집단 학습 시스템 인강과 확실히 다른가요?" /></li>
                <li><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/question02.png" alt="대치동과 동일한 현강 콘텐츠 제공 가능한가요?" /></li>
                <li><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/question03.png" alt="CORE학원의 바른공부 자습전용관이 대치동과 동일한가요?" /></li>
                <li><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/question04.png" alt="CORE학원 담임선생님은 어떤 경력을 갖고 있나요?" /></li>
            </ul>
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont01_txt.png" alt="러셀CORE 시스템에 대한 끊임없는 물음에 러셀CORE는 단 1년 만에 지역 입결 1위로 답했습니다." /></p>
        </div>
    </div>
    <div class="cont02">
        <!-- scroll motion -->
        <div class="sec1">
            <div class="timeline">
                <ul>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/timeline01.png" alt="" /></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/timeline02.png" alt="" /></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/timeline03.png" alt="" /></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/timeline04.png" alt="" /></li>
                </ul>
                <div class="progress">
                    <span class="bar"></span>
                </div>
            </div>
            <div class="bg-bk">
            </div>
            <div class="inner02">
                <p class="intro-txt">
                    <strong>러셀CORE는 대입 성공,<br>지역 <span>입결 1위</span> 학원</strong><br>
                    <br>
                    러셀CORE는 대치동과 동일한 수업, 교재, 현강 콘텐츠를<br>
                    제공하여 <span class="c-black">지방 학생들의 대입 성공 경쟁력을 높였습니다.</span><br>
                    <br>
                    바른공부 자습전용관 담임진은 학생 개개인에게 적합한 <br>
                    대입 입시 전략을 세우고 방향을 잡아 합격을 위해<br>
                    끝까지 함께했습니다.<br>
                    <br>
                    그 결과, <span class="c-orange">1년만에 지역 최상위권 입결 1위를 이뤄냈습니다.</span><br>
                    검증된 러셀CORE에서 2024 대입에 성공하세요. 
                </p>
                <div>
                    <div class="map"><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/map01.png" alt="" /></div>
                    <div class="map02"><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/map02.png" alt="" /></div>
                    <div class="bullun01"></div>
                    <div class="bullun02"></div>
                    <div class="sec1_tit1">
                        <p>
                            2023학년도<br>러셀CORE <span>광주</span><br>
                            <strong>광주/전남 지역<br>입결 1위</strong>
                        </p>
                        <p>
                            2023학년도<br>러셀CORE <span>대전</span><br>
                            <strong>대전 지역<br>입결 1위</strong>
                        </p>
                    </div>
                    <div class="sec1_tit2">
                        <p>
                            2023학년도<br>러셀CORE <span>광주</span><br>
                            <strong>의/치/한/수/약<br>94명 합격</strong>
                        </p>
                        <p>
                            2023학년도<br>러셀CORE <span>대전</span><br>
                            <strong>의/치/한/수/약<br>74명 합격</strong>
                        </p>
                    </div>
                    <div class="sec1_tit3">
                        <p>
                            2023학년도<br>러셀CORE <span>광주</span><br>
                            <strong>SKY 대학<br>35명 합격</strong>
                        </p>
                        <p>
                            2023학년도<br>러셀CORE <span>대전</span><br>
                            <strong>SKY 대학<br>44명 합격</strong>
                        </p>
                    </div>
                    <div class="sec1_tit4">
                        <div>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/sec4_txt01.png" alt="" usemap="#videoLink01" />
                            <map name="videoLink01">
                                <area shape="rect" coords="56,60,150,150" href="javascript:void(0)" onclick="CastPopup('https://tv.naver.com/v/34142777')">
                            </map>
                        </div>
                        <div>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/sec4_txt02.png" alt="" usemap="#videoLink02" />
                            <map name="videoLink02">
                                <area shape="rect" coords="55,102,153,200" href="javascript:void(0)" onclick="CastPopup('https://tv.naver.com/v/34136621')">
                            </map>
                        </div>
                    </div>
                    <div class="sec1_tit5">
                        <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/sec5_txt01.png" alt="" /></div>
                    </div>
                    <div class="sec1_tit6">
                        <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/sec5_txt02.png" alt="" /></div>
                    </div>
                    <div class="info-stxt">
                        <span>데이터 산출 기준</span>
                        <div class="data-view">
                            *광주 지역 학원_2023학년도 의치한수약+서연고 최종 합격자 수,<br>
                            CORE광주 2023학년도 재원생 합격자 기준 (홈페이지 대입 실적 기준/2023.02.28 기준)<br>
                            
                            *대전 지역 학원_2023학년도 의치한수약+서연고 최종 합격자 수 비교 기준,<br>
                            CORE 대전 2023학년도 재원생 합격자 기준 (홈페이지 대입 실적 기준/2023.02.28 기준)
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //scroll motion -->
    </div>
    <div class="cont03">
        <div class="inner">
            <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont03_img.jpg" alt="" /></div>
        </div>
    </div>
    <div class="cont04">
        <div class="inner02">
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont04_tit.png" alt="러셀CORE SYSTEM" /></p>
            <ul>
                <li data-aos="fade-up">
                    <div class="trans-img type3">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont04_1-1.jpg" alt="" />
                        <img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont04_1-2.jpg" alt="" />
                        <img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont04_1-3.jpg" alt="" />
                    </div>
                    <div class="desc-list">
                        <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/tag1.png" alt="" /></div>
                        <p>러셀CORE LIVE 집단 학습 시스템은<br>
                            학생 <strong>혼자 학습하는 인강이 아닙니다.</strong>
                        </p>
                        <ul>
                            <li>매일 동일한 시간 대치동 현강을 러셀CORE 강의실에서 실시간 수강 가능 
                            </li>
                            <li>수업 관리 전담 선생님이 강의실에 상주하여 면학분위기 관리 
                            </li>
                            <li>선생님은 수업 중 직접 IP카메라를 통해 CORE 수강생 수업 참여 태도 확인 
                            </li>
                        </ul>
                    </div>
                </li>
                <li data-aos="fade-up">
                    <div class="trans-img type2">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont04_2-1.jpg" alt="" />
                        <img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont04_2-2.jpg" alt="" />
                    </div>
                    <div class="desc-list">
                        <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/tag2.png" alt="" /></div>
                        <p><strong>대치동</strong> 수업에 제공되는 <strong>현장 콘텐츠</strong>를<br>러셀CORE 재원생들도 <strong>동일하게 제공</strong>받습니다.                             
                        </p>
                        <ul>
                            <li>러셀, 메가스터디 온/오프 No.1 선생님의 대치동 현장 콘텐츠 제공 
                            </li>
                            <li>선생님/연구실의 동일한 수업관리* (출석체크, 현장 테스트 피드백 배부 등) 
                            </li>
                            <li>CORE학생 질의응답 상시 가능 
                            </li>
                        </ul>
                        <p class="r-txt">* 수업관리는 선생님 수업 운영 방식에 따라 상이합니다. 
                        </p>
                    </div>
                </li>
                <li data-aos="fade-up">
                    <div class="trans-img type2">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont04_3-1.jpg" alt="" />
                        <img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont04_3-2.jpg" alt="" />
                    </div>
                    <div class="desc-list">
                        <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/tag3.png" alt="" /></div>
                        <p><strong>바른공부 자습전용관</strong>은 
                            최상위권 학생들이 모여<br><strong>집단적인 면학분위기가</strong> 형성됩니다.                             
                        </p>
                        <ul>
                            <li>집단적인 면학분위기가 형성되어 동기부여 및 충분한 자습 시간 확보 가능
                            </li>
                            <li>한 건물 내에서 바자관 - 강의실 - 식당 이용 가능하여 학습 동선 최소화 
                            </li>
                            <li>서로 경쟁이 가능한 개방형 구조로 학습에 몰두하여 효율을 높이는 공간
                            </li>
                        </ul>
                    </div>
                </li>
                <li data-aos="fade-up">
                    <div class="trans-img type2">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont04_4-1.jpg" alt="" />
                        <img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont04_4-2.jpg" alt="" />
                    </div>
                    <div class="desc-list">
                        <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/tag4.png" alt="" /></div>
                        <p>러셀CORE학원은 <strong>대입 이해도가 높은</strong> <br><strong>최상위권 전문 담임진</strong>으로 구성되어 있습니다. 
                        </p>
                        <ul>
                            <li>대입 합격을 위한 학생 개별 1:1 성적, 학습 분석 상담
                            </li>
                            <li>학생들의 전반적인 생활 관리 (학습계획, 일일수학30제, 모의고사 총평, 멘토링)
                            </li>
                            <li>수시/정시 원서접수 시 개별 1:1 컨설팅 진행
                            </li>
                        </ul>
                    </div>
                </li>
                <li data-aos="fade-up">
                    <div class="trans-img type4">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont04_5-1.jpg" alt="" />
                        <img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont04_5-2.jpg" alt="" />
                        <img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont04_5-3.jpg" alt="" />
                        <img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont04_5-4.jpg" alt="" />
                    </div>
                    <div class="desc-list">
                        <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/tag5.png" alt="" /></div>
                        <p>바자관 재원생의 <strong>실전 감각 유지를 위한</strong><br><strong>다양한 콘텐츠를 제공</strong>합니다.                             
                        </p>
                        <ul>
                            <li>매주 메가스터디 No.1 선생님이 직접 출제하는 러셀CORE Weekly 모의고사 
 
                            </li>
                            <li>실제 수학능력시험과 가장 유사한 메가X대성 더 프리미엄 모의고사
                            </li>
                            <li>매월 최상위권 수험생을 위한 전 영역 실전 QUEL 모의고사 (하반기)  
                            </li>
                            <li>매월 선생님의 검증된 수학 출제 문항이 담긴 월간 장영진
                            </li>
                        </ul>
                    </div>
                </li>
                <li data-aos="fade-up">
                    <div class="trans-img type2">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont04_6-1.jpg" alt="" />
                        <img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont04_6-2.jpg" alt="" />
                    </div>
                    <div class="desc-list">
                        <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/tag6.png" alt="" /></div>
                        <p>러셀CORE학원은 <strong>자체 (내부) 식당</strong>을 운영하여 <br>
                            <strong>균형 잡힌 수험생 식단을 유지</strong>합니다. 
                        </p>
                        <ul>
                            <li>바른공부 자습전용관과 같은 건물 내 위치하여 학습 동선 최소화
                            </li>
                            <li>영양소 균형을 고려한 4종 이상의 반찬으로 수험생에게 맞춤 식단 제공
                            </li>
                            <li>건강한 식재료를 위해 국내 최대 식자재 유통 업체에서 재료 공급<br>
                             (HACCP 인증 식자재 사용)
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="cont05">
        <div class="inner02">
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont05_tit.jpg" alt="러셀CORE는 수험생 맞춤 시스템으로 준비되어 있습니다." /></p>
            <div class="select-btn">
                <span class="btn-bar"></span>
                <p>대학생 혹은 N수생이다.</p>
                <p>재학생이다.</p>
            </div>
            <ul>
                <li class="type1">
                    <a href="/intro/2023/half/index.asp">
                        <p>대학생/N수</p>
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont05_ltit01.png" alt="2024 반수반" /></dt>
                            <dd>반수 성공을 위한<br>
                            확실한 방법!</dd>
                        </dl>
                    </a>
                </li>
                <li class="type1">
                    <a href="/intro/2023/regular/index.asp">
                        <p>N수</p>
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont05_ltit02.png" alt="2024 N수 정규반" /></dt>
                            <dd>단과 수업과<br>
                            의무자습을 한방에</dd>
                        </dl>
                    </a>
                </li>
                <li>
                    <a href="/intro/danka/2023/07/go3.asp">
                        <p>대학생/N수/고3/고2</p>
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont05_ltit03.png" alt="정규 특강 단과" /></dt>
                            <dd>수능까지 체계적인<br>
                            과목별/수준별 맞춤 단과</dd>
                        </dl>
                    </a>
                </li>
                <li class="type2">
                    <a href="/intro/2023/regular_go/index.asp">
                        <p>고3/고2</p>
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont05_ltit04.png" alt="2024 재학생 정규반" /></dt>
                            <dd>최상위권을 위한<br>
                            재학생 맞춤 시스템</dd>
                        </dl>
                    </a>
                </li>
                <li class="type2">
                    <a href="/intro/2023/summer/index.asp">
                        <p>고3/고2/고1</p>
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/cont05_ltit05.png" alt="2024 썸머스쿨" /></dt>
                            <dd>여름방학은 최상위권<br>
                            도약을 위한 기회</dd>
                        </dl>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="cont06" id="camList">
        <div class="inner">
            <p class="c-tit">
                <strong>최상위권 대입 합격을 위한 전략</strong><br>
                러셀CORE 학원 등록/ 수업 안내 문의
            </p>
            <ul>
                <li>
                    <p>러셀CORE 광주<br>
                        062) 462-1010</p>
                    <div>
                        <a href="https://coregj.megastudy.net/core_gj/main.asp" target="_blank">모집안내</a>
                        <a href="https://coregj.megastudy.net/russel/entinfo/entry_pt/enter_pt_list.asp" target="_blank">설명회 신청</a>
                    </div>
                </li>
                <li>
                    <p>러셀CORE 대전<br>
                        042) 381-2020</p>
                    <div>
                        <a href="https://coredj.megastudy.net/core_dj/main.asp" target="_blank">모집안내</a>
                        <a href="https://coredj.megastudy.net/russel/entinfo/entry_pt/enter_pt_list.asp" target="_blank">설명회 신청</a>
                    </div>
                </li>
                <li>
                    <p>러셀CORE 원주<br>
                        033) 901-2020</p>
                    <div>
                        <a href="https://corewj.megastudy.net/core_wj/main.asp" target="_blank">모집안내</a>
                        <a href="https://corewj.megastudy.net/russel/entinfo/entry_pt/enter_pt_list.asp" target="_blank">설명회 신청</a>
                    </div>
                </li>
                <li>
                    <p>러셀CORE 전주<br>
                        063) 905-3030</p>
                    <div>
                        <a href="https://corejj.megastudy.net/core_jj/main.asp" target="_blank">모집안내</a>
                        <a href="https://corejj.megastudy.net/russel/entinfo/entry_pt/enter_pt_list.asp" target="_blank">설명회 신청</a>
                    </div>
                </li>
                <li>
                    <p>러셀CORE 창원<br>
                        055) 605-1010</p>
                    <div>
                        <a href="https://corecw.megastudy.net/core_cw/main.asp" target="_blank">모집안내</a>
                        <a href="https://corecw.megastudy.net/russel/entinfo/entry_pt/enter_pt_list.asp" target="_blank">설명회 신청</a>
                    </div>
                </li>
                <li>
                    <p>러셀CORE 청주<br>
                        043) 908-1010</p>
                    <div>
                        <a href="https://corecj.megastudy.net/core_cj/main.asp" target="_blank">모집안내</a>
                        <a href="https://corecj.megastudy.net/russel/entinfo/entry_pt/enter_pt_list.asp" target="_blank">설명회 신청</a>
                    </div>
                </li>
            </ul>
            <div class="mt80"><img src="<%=Application("img_path_russel")%>/intro/2023/core_gate/bi.png" alt="" /></div>
        </div>
    </div>
    <!--//contents-->
</div>
<!-- gate-wrap -->

<!--  공통 하단 //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->


<script src="/common/js/gsap.min.js"></script>
<script src="/common/js/ScrollTrigger.min.js"></script>
<script src="/common/js/aos.js"></script>
<script src="./gate.js"></script>
<script>
    
    // scroll motion
    gsap.timeline({  
        scrollTrigger: {
        trigger: ".sec1", // 객체기준범위
        pin: true, // 고정
        start: "top top", // 시작점
        end: "1000px", // 끝점
        scrub: true, // 모션바운스
        markers: false, // 개발가이드선
        }
    })

    .to('.bar', {duration: .2, width: 465})
    // 텍스트 변경
    .to('.sec1_tit1', {duration: 0, delay: 1})
    .to('.sec1_tit1', {duration: 0, opacity: 0, y: -20})
    
    .to('.sec1_tit2', {duration: 0, opacity: 1, y: 0})
    .to('.sec1_tit2', {duration: 2, delay: 2})
    .to('.sec1_tit2', {duration: 0, opacity: 0, y: -20})
    

    .to('.sec1_tit3', {duration: 0, opacity: 1, y: 0}) 
    .to('.sec1_tit3', {duration: 2, delay: 2})
    .to('.sec1_tit3', {duration: 0, opacity: 0, y: -20})

    // 고정영역 숨김
    .to('.bullun02,.bullun01,.intro-txt,.info-stxt', {duration:0, opacity: 0, display: 'none'})
    // progress bar, map 이동
    .to('.bar', {duration: 0, width: 760})
    .to('.map', {duration: 0, x: -200})

    // 텍스트, bg 변경
    .to('.sec1_tit4', {duration: 0, opacity: 1, y: 0, display: 'block'}) 
    .to('.sec1_tit4', {duration: 2, delay: 2})
    .to('.sec1_tit4', {duration: 0, opacity: 0, y: -20})

    .to('.map', {duration: 0, opacity: 0})
    .to('.map02', {duration: 0, opacity: 1})
    .to('.bg-bk', {duration: 0, opacity: 1})
    
    .to('.bar', {duration: 0, width: 1065})

    .to('.sec1_tit5', {duration: 0, opacity: 1, y: 0}) 
    .to('.sec1_tit5', {duration: 2, delay: 2})
    .to('.sec1_tit5', {duration: 0, opacity: 0, y: -20})
    .to('.bar', {duration: .3, width: '100vw'})

    .to('.sec1_tit6', {duration: 0, opacity: 1, y: 0}) 
    .to('.sec1_tit6', {duration: 0, delay: 1})
    
    

	//영상캐스트 영상 팝업
	function CastPopup(url){
		var sUrl = url.toLowerCase();
		var wnd = window.open("", "talk", "width=554,height=316,scrollbars=0,resizable=no,location=no");
		
		// 네이버tv
		if (sUrl.indexOf('naver.com') > -1) {
			sUrl = sUrl.replace("/v/", "/embed/");
			wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+sUrl+"' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' allow='autoplay' allowfullscreen></iframe>");
		// 유튜브
		} else {
			wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"' frameborder='no' scrolling='no' allowfullscreen></iframe>");
		}
	}

    
    //aos fadeup 효과
    AOS.init({
                
        offset: 300,
        duration: 500,
        easing: 'ease-in-sine',
        delay: 0,
        once: true
    });
        
    </script>
</body>
</html>
