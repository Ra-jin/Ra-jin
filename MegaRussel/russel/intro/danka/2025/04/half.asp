<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!-- #include virtual="/russel/library/include/mypage/my_campus_ams_common.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
    <link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/variable/pretendardvariable.min.css" />

    <link href="/common/css/2025/danka.css" rel="stylesheet" type="text/css">
    <SCRIPT LANGUAGE="JavaScript" src="/russel/Public/Basic.js"></SCRIPT>
    <style>
        body .danka.half{
            font-family: 'Pretendard Variable', 'Noto Sans KR', sans-serif;
            font-weight: 400;
            letter-spacing: 0 !important;
        }
        .campus-list-danka {background:#f7f7f7}
        .campus-list-danka .campus-list dl dt, .campus-list-danka .campus-list dl dd a {color:#0065FF}
        .campus-list-danka .campus-list dl dt .stit02 {font-size:15px;font-weight:normal;margin-bottom:10px;display:inline-block;letter-spacing:-1.5px}
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
                    <!-- danka -->
                    <div class="danka intro half">
                        <!-- visual -->
                        <div class="visual">
                            <p class="v-stit">반수생을 위한 고효율 압축 특강</p>
                            
                            <div class="v-tit">
                                <div class="v-name">러셀</div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/danka/2025/04/half/v_tit.png" alt="반수 특강"></div>
                            </div>
                            <p>
                                투자 시간 대비 확실한 취약점 보완!<br>
                                반수생 맞춤 강좌로 경쟁자들보다 월등히 앞서 나가세요.
                            </p>
                            <div class="v-info" style="position:relative;">
                                <dl>
                                    <dt>개강일</dt>
                                    <dd>8월 순차 개강
                                    </dd>
                                </dl>
                                <div>
                                    <dl>
                                        <dt>접수 방법</dt>
                                        <dd>현장 또는 온라인 접수
                                        </dd>
                                    </dl>
                                    <p class="stxt" style="position:absolute;bottom:-31px;left:0;width:100%;text-align:center;">*개강일 및 접수 방법은 학원별 상이할 수 있으니, 학원별 페이지 참고 부탁드립니다.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- //visual -->
                        <!-- contents -->
                        <div class="cont01">
                            <div><img src="<%=Application("img_path_russel")%>/intro/danka/2025/04/half/cont01_img.jpg" alt="예측 불가능한 2026학년도 입시 이제는 확실하게 준비하는 수밖에 없습니다."></div>
                            <div class="data-wrap">
                                <div class="data-tit">출처</div>
                                <div class="data-view">
                                    뉴스 기사 발췌<br>
                                    1. 내일신문<br>
                                    (<a href="https://www.naeil.com/news/read/538475?ref=naver">https://www.naeil.com/news/read/538475?ref=naver</a>)<br>
                                    2. 한경<br>
                                    (<a href="https://www.hankyung.com/article/2025022076727">https://www.hankyung.com/article/2025022076727</a>)<br>
                                    3. 연합뉴스<br>
                                    (<a href="https://www.yna.co.kr/view/AKR20250221044700530?input=1195m">https://www.yna.co.kr/view/AKR20250221044700530?input=1195m</a>)<br>
                                    4. 연합뉴스<br>
                                    (<a href="https://www.yna.co.kr/view/AKR20250218082700530?input=1195m">https://www.yna.co.kr/view/AKR20250218082700530?input=1195m</a>)
                                </div>
                            </div>
                        </div>
                        <div class="cont02">
                            <h3 class="tit">
                                얼마 남지 않은 수능에 자신감을 높일<br>
                                <strong>러셀만의 고효율 압축 반수 특강</strong>
                            </h3>
                            <div><img src="<%=Application("img_path_russel")%>/intro/danka/2025/04/half/cont02_img.jpg" alt="얼마 남지 않은 수능에 자신감을 높일 러셀만의 고효율 압축 반수 특강"></div>
                            <div class="txt-wrap">
                                <div class="memoji"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/04/half/memoji.png" alt=""></div>
                                <div class="txt01"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/04/half/txt01.png" alt=""></div>
                                <div class="txt02"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/04/half/txt02.png" alt=""></div>
                                <div class="txt03"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/04/half/txt03.png" alt=""></div>
                                <div class="txt04"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/04/half/txt04.png" alt=""></div>
                            </div>
                            <p>N번 차 반수생에게 일반적인 준비는 해답이 아닙니다.<br>
                            <strong>부족한 것만 확실하고 빠르게 보완해 LEVEL UP 하세요.</strong></p>
                        </div>
                        <div class="cont03">
                            <h3 class="tit">
                                최적의 전략, 확실한 성적 향상<br>
                                <strong>러셀 N수 선배들이 증명합니다.</strong>
                            </h3>
                            <p class="r-txt">※ 국수탐(2) 백분위 합 기준</p>
                            <ul>
                                <li>
                                    <div class="crown"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/04/half/bubble_crown.png" alt="2025학년도 수능 만점자"></div>
                                    <dl>
                                        <dt>
                                            <strong>연세대학교<br>
                                            의예과</strong> 합격
                                        </dt>
                                        <dd>러셀 영통 임희수</dd>
                                    </dl>
                                    <div class="graph-wrap">
                                        <div class="bubble"><strong>97.9</strong>% 상승</div>
                                        <div class="g-info">
                                            <span class="before">276점</span>
                                            <strong class="after">299.5점</strong>
                                            <div class="graph"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/04/half/graph.png" alt=""></div>
                                            <div class="year">
                                                <span>2024 수능</span>
                                                <strong>2025 수능</strong>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <dl>
                                        <dt>
                                            <strong>연세대학교<br>
                                            의예과</strong> 합격
                                        </dt>
                                        <dd>러셀 평촌 유현우</dd>
                                    </dl>
                                    <div class="graph-wrap">
                                        <div class="bubble"><strong>93.2</strong>% 상승</div>
                                        <div class="g-info">
                                            <span class="before">278점</span>
                                            <strong class="after">298.5점</strong>
                                            <div class="graph"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/04/half/graph.png" alt=""></div>
                                            <div class="year">
                                                <span>2024 수능</span>
                                                <strong>2025 수능</strong>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <dl>
                                        <dt>
                                            <strong>가톨릭대학교<br>
                                                의예과</strong> 합격
                                        </dt>
                                        <dd>러셀 영통 이정묵</dd>
                                    </dl>
                                    <div class="graph-wrap">
                                        <div class="bubble"><strong>93.2</strong>% 상승</div>
                                        <div class="g-info">
                                            <span class="before">278점</span>
                                            <strong class="after">298.5점</strong>
                                            <div class="graph"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/04/half/graph.png" alt=""></div>
                                            <div class="year">
                                                <span>2024 수능</span>
                                                <strong>2025 수능</strong>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <div class="swiper-container review-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="badge"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/04/half/badge.png" alt="2025학년도 수능 만점자"></div>
                                        <div class="r-con">
                                            <h4>
                                                검증된 강사 선생님의 강의를 현장에서 생생하게 들을 수 있어서 좋았습니다.
                                            </h4>
                                            <p>
                                                <strong>뛰어나고 검증된 선생님들의 수업</strong>을 현장에서 직접 
                                                 생생하게 들을 수 있어 정말 좋았습니다.<br>
                                                명확하고 깔끔한 풀이 덕분에 어려운 문제도 이해하기 쉬웠고,
                                                <strong>풍부한 수업 자료로 풀이 방법을 자연스럽게 체화</strong>할 수 있었습니다.
                                            </p>
                                        </div>
                                        <div class="r-profile">
                                            <div><img src="<%=Application("img_path_russel")%>/intro/danka/2025/04/half/stu01.png" alt=""></div>
                                            <dl>
                                                <dt>연세대학교<br>
                                                의예과 합격
                                                </dt>
                                                <dd>러셀 영통 임희수
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="r-con">
                                            <h4>
                                                바자관과 강의실이 한 건물에 있어 효과적으로 시간 관리를 할 수 있습니다.

                                            </h4>
                                            <p>
                                                <strong>식당과 바자관이 한 건물에 있어</strong> 밥을 먹고 빠르게 돌아와
                                                공부를 할 수 있고, 점심시간도 충분해 산책을 하는 등
                                                <strong>다양한 방법으로 남는 시간을 활용</strong>할 수 있었습니다.
                                                
                                            </p>
                                        </div>
                                        <div class="r-profile">
                                            <div><img src="<%=Application("img_path_russel")%>/intro/danka/2025/04/half/stu02.png" alt=""></div>
                                            <dl>
                                                <dt>연세대학교<br>
                                                의예과 합격
                                                </dt>
                                                <dd>러셀 평촌 유현우
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="r-con">
                                            <h4>
                                                내 학습 상황에 맞게 원하는 강좌를 선택하여 수강할 수 있습니다.

                                            </h4>
                                            <p>
                                                <strong>반드시 들어야 하는 수업이 적은 점</strong>이 매우 좋았습니다.<br>
                                                <strong>필요한 수업만 선택해 들을 수 있어서</strong> 강의를 듣고
                                                <strong>남는 시간에 진정으로 필요한 공부</strong>를 할 수 있었습니다.
                                                
                                            </p>
                                        </div>
                                        <div class="r-profile">
                                            <div><img src="<%=Application("img_path_russel")%>/intro/danka/2025/04/half/stu03.png" alt=""></div>
                                            <dl>
                                                <dt>    가천대학교<br>
                                                의예과 합격
                                                </dt>
                                                <dd>러셀 강남 박태원
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="r-con">
                                            <h4>
                                                정해진 커리큘럼으로 강의를 수강하며 체계적으로 공부할 수 있어서 좋았습니다.

                                            </h4>
                                            <p>
                                                <strong>LIVE로 정해진 시간에 정해진 커리큘럼으로 수업</strong>을 들을 수 있어 좋았습니다. 평소에 영어 과목을 좋아하지 않아 온라인으로 강의를 들을 때 진도가 밀리기 십상이었는데, <strong>LIVE 수업 덕분에 더욱 몰입해서 공부</strong>할  수 있었습니다.

                                            </p>
                                        </div>
                                        <div class="r-profile">
                                            <div><img src="<%=Application("img_path_russel")%>/intro/danka/2025/04/half/stu04.png" alt=""></div>
                                            <dl>
                                                <dt>    가톨릭관동대학교<br>
                                                의예과 합격
                                                </dt>
                                                <dd>러셀CORE 원주 신정재
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="r-con">
                                            <h4>
                                                높은 퀄리티의 수업으로 놓치는 것 없이 공부할 수 있었습니다.

                                            </h4>
                                            <p>
                                                수업의 질이 상당한 것과 더불어 <strong>혼자서 공부할 때 어렵고, 자칫 놓치기 쉬운 부분들을 위주로 커리큘럼을 체계적으로 준비</strong>해 주셔서 수업을 통해 많은 것들을 얻어 갈 수 있었습니다.

                                            </p>
                                        </div>
                                        <div class="r-profile">
                                            <div><img src="<%=Application("img_path_russel")%>/intro/danka/2025/04/half/stu05.png" alt=""></div>
                                            <dl>
                                                <dt>    부산대학교<br>
                                                의예과 합격
                                                </dt>
                                                <dd>러셀 센텀 임지원
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="r-con">
                                            <h4>
                                                서울에 가지 않아도 훌륭한 선생님들의 강의와 자료를 활용할 수 있어서 좋았습니다.

                                            </h4>
                                            <p>
                                                <strong>LIVE로 대치동 선생님들의 수업을 실시간</strong>으로 들을 수 있고, 높은 강의력으로 실제 보다 <strong>어려운 문제를 대비</strong>시켜 주셔서 이전 보다 많이 어려웠던 시험에도 잘 대처할 수 있었습니다.

                                            </p>
                                        </div>
                                        <div class="r-profile">
                                            <div><img src="<%=Application("img_path_russel")%>/intro/danka/2025/04/half/stu06.png" alt=""></div>
                                            <dl>
                                                <dt>    연세대학교<br>
                                                    화학과 합격
                                                </dt>
                                                <dd>러셀CORE 청주 신혁준
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-pagination"></div>
                            </div>
                            <p class="r-txt">※ 2025학년도 후기 발췌
                            </p>
                        </div>
                        <div class="cont04">
                            <h3 class="tit">
                                최상위권 목표 대학 합격에 필요한 모든 것,<br>
                                <strong>러셀 반수 특강에서 만날 수 있습니다.</strong>
                            </h3>
                            <div><img src="<%=Application("img_path_russel")%>/intro/danka/2025/04/half/cont04_img.jpg" alt=""></div>
                            <div class="banner">
                                <p>
                                    <span>불필요한 수업은 줄이고, 자습은 충분하게</span>
                                    <strong>바른공부 자습전용관 2026 반수반</strong>
                                </p>
                                <a href="/intro/2025/half/index.asp">자세히 보기</a>
                            </div>
                            <p class="r-txt">※ 반수 특강은 바른공부 자습전용관을 이용하지 않아도 수강할 수 있습니다.
                            </p>
                        </div>
                        <div class="bottom-area">
                            비약적 성적 향상&최상위권 목표 대학 합격!<br>
                            <strong>러셀 반수 특강으로 반수 성공을 시작하세요! </strong>
                        </div>
                        <!-- //contents -->
                        <div class="cont05">
                            <h3 class="tit">
                                <strong>학원별 반수 특강 시간표 안내</strong><br>
                                학원별 강사진 및 시간표 등 자세한 내용은 각 학원 사이트에서 확인하시기 바랍니다.
                            </h3>
                            <!-- campus-list-danka -->
                            <div class="campus-list-danka">
                                <!-- campus-list -->
                                <div class="campus-list">
                                    <dl>
                                        <dt><span class="stit02">최상위권 수준별 맞춤 단과</span><br>러셀학원</dt>
                                        <dd>
                                            <p>러셀 <strong>강남</strong></p>
                                            02) 6954-1010
                                            <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1926" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>대치</strong></p>
                                            02) 2138-1010
                                            <a href="https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1927" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>목동</strong></p>
                                            02) 6932-1010
                                            <a href="https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1928" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>부천</strong></p>
                                            032) 265-1010
                                            <a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1929" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <!-- 
                                        <dd>
                                            <p>러셀 <strong>분당</strong></p>
                                            031) 629-1010
                                            <a href="" target="_blank">시간표 바로가기</a>
                                        </dd> -->
                                        <!-- <dd>
                                            <p>러셀 <strong>영통</strong></p>
                                            031) 251-1010
                                            <a href="" target="_blank">시간표 바로가기</a>
                                        </dd> -->
                                        <dd>
                                            <p>러셀 <strong>중계</strong></p>
                                            02) 6316-1010
                                            <a href="https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1930" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>평촌</strong></p>
                                            031) 341-6500
                                            <a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1931" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>대구</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                            053) 291-1010
                                            <a href="https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1932" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>센텀</strong></p>
                                            051) 715-1010
                                            <a href="https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1933" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <!-- <dd>
                                            <p>러셀 <strong>울산</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                            052) 913-1010
                                            <a href="https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1587" target="_blank">시간표 바로가기</a>
                                        </dd> -->
                                    </dl>
                                    <dl>
                                        <dt><span class="stit02">서연고 &middot; 의치약 전문관</span><br>러셀CORE</dt>
                                        <dd>
                                            <p>러셀CORE <strong>광주</strong></p>
                                            062) 462-1010
                                            <a href="https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1934" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <!-- <dd>
                                            <p>러셀CORE <strong>대전</strong></p>
                                            042) 381-2020
                                            <a href="" target="_blank">시간표 바로가기</a>
                                        </dd> -->
                                        <!-- <dd>
                                            <p>러셀CORE <strong>원주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                            033) 901-2020
                                            <a href="https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1589" target="_blank">시간표 바로가기</a>
                                        </dd> -->
                                        <dd>
                                            <p>러셀CORE <strong>전주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                            063) 905-3030
                                            <a href="https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1935" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀CORE <strong>창원</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                            055) 605-1010
                                            <a href="https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1936" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀CORE <strong>청주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                            043) 908-1010
                                            <a href="https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1937" target="_blank">시간표 바로가기</a>
                                        </dd>
                                    </dl>
                                </div>
                                <!-- //campus-list -->
                            </div>
                            <!-- //campus-list-danka -->
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

    reviewSlide();

	$(window).scroll(function(){
        
		var scroll = $(window).scrollTop();
		
		// .cont02 도달하면 실행
		let cont02Top = $(".cont02").offset().top - 400;
        
		if (scroll >= cont02Top ) {
			$(".cont02").addClass("on");
		} 
    })
});
// 슬라이드
function reviewSlide(){
	var rSlide = new Swiper('.review-slide', {
		slidesPerView: 'auto',
        spaceBetween: 60,
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
    //  스크롤 떨림 현상 방지
	$(window).scroll(function(){
		var scroll02 = $(window).scrollTop();
		
		// .cont03 도달하면 실행
		let cont03Top = $(".cont03").offset().top;
		let con04Top = $(".cont04").offset().top;

		if (scroll02 >= cont03Top && scroll02 <= con04Top) {
			rSlide.autoplay.start();
		} else {
			rSlide.autoplay.stop();
		}
	})
}

</script>
</html>