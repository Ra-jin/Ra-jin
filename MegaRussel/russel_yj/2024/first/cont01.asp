
<div class="cont js-cont <%=campusName%>">
    <!-- cont01 -->
    <% If sCampusCode = "CD0348" Then '여기숙 %>
    <div class="cont01-1">
        <p data-aos="fade-up"><img src="<%=img_path_russelw%>/2024/first/cont01-1_tit.png" alt="" /></p>
        <div class="contbox">
            <div class="cont-left">
                <p><img src="<%=img_path_russelw%>/2024/first/cont01-1_txt01.png" alt="" /></p>
            </div>
            <div class="cont-right">
                <p><img src="<%=img_path_russelw%>/2024/first/cont01-1_txt02.png" alt="" /></p>
            </div>
        </div>
        
        <div class="inner">
            <div class="data">데이터 산출 기준 <span>ⓘ</span></div>
            <div class="data-txt">
                1) 러셀 전체 학원 바자관 재원생의 2018, 2019, 2020, 2021 수능 실채점 기준<br>
                (러셀 강남, 러셀 대치, 러셀 분당 배출/2021 수능 만점자는 개인 정보 활용에 동의하지 않아,전국 수석으로 대체)<br>
                2) 러셀 전체 학원에서 배출한 2021-2023학년도 메이저 의대, 전국 의예과 합격자 수 중 2023학년도 최다 배출<br>(단과 수강생 제외/복수대학 합격자 포함) (2023.02.28 기준)<br>
                3) 러셀 전체 학원에서 배출한 2021-2023학년도 서울대, 연세대, 고려대 합격자 수 중 2023학년도 최다 배출<br>(단과 수강생 제외/복수대학 합격자 포함) (2023.02.28 기준)<br>
                4) 러셀 전체 학원별 2021-2023학년도 의치한수약 대학 합격자수 기준 (홈페이지 대입 실적 기준/2023.02.20 기준) 및<br>2021-2023학년도 러셀 전체 학원 '메가 대성 더 프리미엄 모의고사, 6/9월 모의평가, 수능' 학원별 등수 기준<br>
                5) 러셀 전체 학원별 2021~2023학년도 의치한수약 합격자 수 비교 기준 (단과 수강생 제외/복수대학 합격자 포함)<br>
                6) 러셀 전체 학원별 2022학년도 바른공부 자습전용관 재원생 중 N수생 성적 상승률 기준<br>
                7) 러셀 전체 학원별 2021~2023학년도 ‘메가 대성 더 프리미엄 모의고사, 6/9월 모의평가, 수능’ 학원별 등수 기준 
            </div>
        </div>
    </div>
    <% End If %>
    <% If sCampusCode = "CD0347" Then '서의치 %>
    <div class="cont01-2">
        <div class="inner">
            <p data-aos="fade-up"><img src="<%=img_path_russelsm%>/2024/first/cont01-2_tit.png" alt="" /></p>
            <ul class="bulloon-box">
                <li data-aos="fade-up-right"><img src="<%=img_path_russelsm%>/2024/first/cont01-2_img01.png" alt="" /></li>
                <li data-aos="fade-up-left"><img src="<%=img_path_russelsm%>/2024/first/cont01-2_img02.png" alt="" /></li>
                <li data-aos="fade-up-right"><img src="<%=img_path_russelsm%>/2024/first/cont01-2_img03.png" alt="" /></li>
            </ul>
            <p data-aos="fade-up"><img src="<%=img_path_russelsm%>/2024/first/cont01-2_txt.png" alt="" /></p>
        </div>
    </div>
    <% Else %>
    <div class="cont01">
        <div class="inner">
            <!-- 데이터 산출기준 -->
            <p><img src="<%=img_path_yangji%>/2024/first/cont01_img.jpg" alt="매년 성적 향상과 최상위권 대학 합격의 결과로 검증된 러셀 기숙학원입니다." /></p>
            <div class="info-stxt">
                <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_info.png" alt="i" /></span>
                <div class="data-view">
                    1) 러셀 전체 학원별 2020-2023학년도 의치한수약 대학 합격자 수 기준 (홈페이지 대입 실적 기준 / 2023.02.20 기준)<br>
                    2) 최상위권 남학생 의대전문관 러셀 기숙학원에서 배출한 2021~2023학년도 의치한수약 대학 합격자 수 중 2023학년도 합격자 수 최다<br>
                    3) 2023학년도 최상위권 남학생 의대전문관 러셀 기숙학원 자연계 재원생 대비 의치한수약 대학 합격자 기준<br>
                    ※ 최상위권 남학생 의대전문관 러셀 기숙학원 2021~2023학년도 재원생의 진학 실적만을 합산한 수치로,<br>최종합격자를 기준으로 하며, 복수대학 합격자가 포함되었습니다.
                </div>
            </div>
        </div>
        
        <% If sCampusCode = "CD0348" Then '여기숙 %>
        <!-- roll-swiper -->
        <div class="roll-swiper swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/sungkyunkwan.jpg" alt="" /></dt>
                        <dd>2023 성균관대학교<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 299.5점</strong><br>
                            <span>2022학년도 283점</span>
                        </p>
                        <div><strong>97.1%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/hanyang.jpg" alt="" /></dt>
                        <dd>2023 한양대학교(서울)<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 299점</strong><br>
                            <span>2022학년도 267.5점</span>
                        </p>
                        <div><strong>96.9%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/kyunghee.jpg" alt="" /></dt>
                        <dd>2023 경희대학교(서울)<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 298.5점</strong><br>
                            <span>2022학년도 272.5점</span>
                        </p>
                        <div><strong>94.5%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/gachon.jpg" alt="" /></dt>
                        <dd>2023 가천대학교(메디컬)<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 298.5점</strong><br>
                            <span>2022학년도 272.5점</span>
                        </p>
                        <div><strong>94.5%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/hanyang.jpg" alt="" /></dt>
                        <dd>2023 한양대학교(서울)<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 298.5점</strong><br>
                            <span>2022학년도 265점</span>
                        </p>
                        <div><strong>95.7%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/pusan.jpg" alt="" /></dt>
                        <dd>2023 부산대학교<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 297.5점</strong><br>
                            <span>2022학년도 281.5점</span>
                        </p>
                        <div><strong>86.5%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/pusan.jpg" alt="" /></dt>
                        <dd>2023 부산대학교<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 297.5점</strong><br>
                            <span>2022학년도 285.5점</span>
                        </p>
                        <div><strong>82.8%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/seoul.jpg" alt="" /></dt>
                        <dd>2023 서울대학교<br><span style="letter-spacing:-1px;">치의학학석사통합과정 합격</span></dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 297.5점</strong><br>
                            <span>2022학년도 287점</span>
                        </p>
                        <div><strong>80.8%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/kangwon.jpg" alt="" /></dt>
                        <dd>2023 강원대학교(춘천)<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 296.5점</strong><br>
                            <span>2022학년도 263점</span>
                        </p>
                        <div><strong>90.5%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/eulji.jpg" alt="" /></dt>
                        <dd>2023 을지대학교(대전)<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 296.5점</strong><br>
                            <span>2022학년도 263점</span>
                        </p>
                        <div><strong>90.5%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/gyeongsang.jpg" alt="" /></dt>
                        <dd>2023 경상국립대학교<br>수의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 296점</strong><br>
                            <span>2022학년도 266점</span>
                        </p>
                        <div><strong>88.2%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/ulsan.jpg" alt="" /></dt>
                        <dd>2023 울산대학교<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 295.5점</strong><br>
                            <span>2022학년도 280점</span>
                        </p>
                        <div><strong>77.5%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/soonchunhyang.jpg" alt="" /></dt>
                        <dd>2023 순천향대학교<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294.5점</strong><br>
                            <span>2022학년도 278점</span>
                        </p>
                        <div><strong>75.0%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/korea.jpg" alt="" /></dt>
                        <dd>2023 고려대학교(안암)<br>기계공학부 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294.5점</strong><br>
                            <span>2022학년도 278점</span>
                        </p>
                        <div><strong>75.0%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/yonsei.jpg" alt="" /></dt>
                        <dd>2023 연세대학교(서울)<br>컴퓨터과학과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294.5점</strong><br>
                            <span>2022학년도 205.5점</span>
                        </p>
                        <div><strong>94.2%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/seoul.jpg" alt="" /></dt>
                        <dd>2023 서울대학교<br>정치외교학부 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294.5점</strong><br>
                            <span>2022학년도 263.5점</span>
                        </p>
                        <div><strong>84.9%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/yonsei.jpg" alt="" /></dt>
                        <dd>2023 연세대학교(서울)<br>경영학과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294.5점</strong><br>
                            <span>2022학년도 263.5점</span>
                        </p>
                        <div><strong>84.9%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/pusan.jpg" alt="" /></dt>
                        <dd>2023 부산대학교<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 293.5점</strong><br>
                            <span>2022학년도 252점</span>
                        </p>
                        <div><strong>86.5%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/ulsan.jpg" alt="" /></dt>
                        <dd>2023 울산대학교<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 293.5점</strong><br>
                            <span>2022학년도 261.5점</span>
                        </p>
                        <div><strong>83.1%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/wonkwang.jpg" alt="" /></dt>
                        <dd>2023 원광대학교<br>치의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 293.5점</strong><br>
                            <span>2022학년도 229.5점</span>
                        </p>
                        <div><strong>90.8%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/kangwon.jpg" alt="" /></dt>
                        <dd>2023 강원대학교(춘천)<br>약학과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 293점</strong><br>
                            <span>2022학년도 216.5점</span>
                        </p>
                        <div><strong>91.6%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/catholic.jpg" alt="" /></dt>
                        <dd>2023 가톨릭대학교(성심)<br>약학과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 292.5점</strong><br>
                            <span>2022학년도 280.5점</span>
                        </p>
                        <div><strong>61.5%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/seoul.jpg" alt="" /></dt>
                        <dd>2023 서울대학교<br>인문계열 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 292.5점</strong><br>
                            <span>2022학년도 256점</span>
                        </p>
                        <div><strong>83.0%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/korea.jpg" alt="" /></dt>
                        <dd>2023 고려대학교(안암)<br>컴퓨터학과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 292.5점</strong><br>
                            <span>2022학년도 256점</span>
                        </p>
                        <div><strong>83.0%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/korea.jpg" alt="" /></dt>
                        <dd>2023 고려대학교(안암)<br>보건정책관리학부 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 292.5점</strong><br>
                            <span>2022학년도 256점</span>
                        </p>
                        <div><strong>83.0%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/chonnam.jpg" alt="" /></dt>
                        <dd>2023 전남대학교(광주)<br>치의학학석사통합과정 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 292점</strong><br>
                            <span>2022학년도 252점</span>
                        </p>
                        <div><strong>83.3%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/korea.jpg" alt="" /></dt>
                        <dd>2023 고려대학교(안암)<br>신소재공학부 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 291.5점</strong><br>
                            <span>2022학년도 241.5점</span>
                        </p>
                        <div><strong>85.5%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/korea.jpg" alt="" /></dt>
                        <dd>2023 고려대학교(안암)<br>불어불문학과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 280.5점</strong><br>
                            <span>2022학년도 249.5점</span>
                        </p>
                        <div><strong>61.4%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
            </div>
        </div>
        <div class="inner">
            <p class="r-txt">※ 최상위권 남학생 의대전문관 러셀 기숙학원 2023학년도 재원생 중 2022/2023 수능 성적(국수탐(2)) 확인이 가능한 재원생의 성적 비교</p>
        </div>
        <% End If %>
    </div>
    <% End If %>
    <!-- //cont01 -->
    
    <!-- cont02 -->
    <% If sCampusCode = "CD0348" Then '여기숙 %>
    <div class="cont02">
        <div class="inner">
            <p data-aos="fade-up" class="mb30"><img src="<%=img_path_russelw%>/2024/first/cont02_tit.png" alt="" /></p>
            <div><img src="<%=img_path_russelw%>/2024/first/cont02_img.jpg" alt="" /></div>
        </div>
    </div>
    <% ElseIf sCampusCode = "CD0347" Then '서의치 %>
    <div class="cont02-1">
        <div class="inner">
            <p data-aos="fade-up" class="mb45"><img src="<%=img_path_russelsm%>/2024/first/cont02_tit.png" alt="" /></p>
            <div><img src="<%=img_path_russelsm%>/2024/first/cont02_img.jpg" alt="" /></div>
        </div>
    </div>
    <% Else %>
    <div class="cont02">
        <div class="inner">
            <p class="tit"><img src="<%=img_path_yangji%>/2024/first/cont02_tit.png" alt="러셀 기숙학원만의 강학 관리력으로 이뤄낸 비약적인 성적 향상의 결과" /></p>
            <ul class="review-list">
                <li data-aos="zoom-in-up">
                    <div style="position:relative;">
                        <img src="<%=img_path_yangji%>/2024/first/cont02_img01.jpg" alt="김인" />
                        <a href="javascript:void(0)" onclick="CastPopup('https://tv.naver.com/embed/34185919')" title="" style="position: absolute; left: 38.6%; top: 45.45%; width: 10.18%; height: 9.39%; z-index: 1;"></a>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div style="position:relative;">
                        <img src="<%=img_path_yangji%>/2024/first/cont02_img02.jpg" alt="오세욱" />
                        <a href="javascript:void(0)" onclick="CastPopup('https://tv.naver.com/embed/34866920')" title="" style="position: absolute; left: 38.6%; top: 45.45%; width: 10.18%; height: 9.39%; z-index: 1;"></a>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div style="position:relative;">
                        <img src="<%=img_path_yangji%>/2024/first/cont02_img03.jpg" alt="김동욱" />
                        <a href="javascript:void(0)" onclick="CastPopup('https://tv.naver.com/embed/34866845')" title="" style="position: absolute; left: 38.6%; top: 45.45%; width: 10.18%; height: 9.39%; z-index: 1;"></a>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div style="position:relative;">
                        <img src="<%=img_path_yangji%>/2024/first/cont02_img04.jpg" alt="시정우" />
                        <a href="javascript:void(0)" onclick="CastPopup('https://tv.naver.com/embed/34866817')" title="" style="position: absolute; left: 38.6%; top: 45.45%; width: 10.18%; height: 9.39%; z-index: 1;"></a>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div style="position:relative;">
                        <img src="<%=img_path_yangji%>/2024/first/cont02_img05.jpg" alt="박성우" />
                        <a href="javascript:void(0)" onclick="CastPopup('https://tv.naver.com/embed/34866533')" title="" style="position: absolute; left: 38.6%; top: 45.45%; width: 10.18%; height: 9.39%; z-index: 1;"></a>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div style="position:relative;">
                        <img src="<%=img_path_yangji%>/2024/first/cont02_img06.jpg" alt="박세연" />
                        <a href="javascript:void(0)" onclick="CastPopup('https://tv.naver.com/embed/34866645')" title="" style="position: absolute; left: 38.6%; top: 45.45%; width: 10.18%; height: 9.39%; z-index: 1;"></a>
                    </div>
                </li>
            </ul>
        </div>
        <!-- roll-swiper -->
        <div class="roll-swiper swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/sungkyunkwan.jpg" alt="" /></dt>
                        <dd>2023 성균관대학교<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 299.5점</strong><br>
                            <span>2022학년도 283점</span>
                        </p>
                        <div><strong>97.1%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/hanyang.jpg" alt="" /></dt>
                        <dd>2023 한양대학교(서울)<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 299점</strong><br>
                            <span>2022학년도 267.5점</span>
                        </p>
                        <div><strong>96.9%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/kyunghee.jpg" alt="" /></dt>
                        <dd>2023 경희대학교(서울)<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 298.5점</strong><br>
                            <span>2022학년도 272.5점</span>
                        </p>
                        <div><strong>94.5%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/gachon.jpg" alt="" /></dt>
                        <dd>2023 가천대학교(메디컬)<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 298.5점</strong><br>
                            <span>2022학년도 272.5점</span>
                        </p>
                        <div><strong>94.5%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/hanyang.jpg" alt="" /></dt>
                        <dd>2023 한양대학교(서울)<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 298.5점</strong><br>
                            <span>2022학년도 265점</span>
                        </p>
                        <div><strong>95.7%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/pusan.jpg" alt="" /></dt>
                        <dd>2023 부산대학교<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 297.5점</strong><br>
                            <span>2022학년도 281.5점</span>
                        </p>
                        <div><strong>86.5%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/pusan.jpg" alt="" /></dt>
                        <dd>2023 부산대학교<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 297.5점</strong><br>
                            <span>2022학년도 285.5점</span>
                        </p>
                        <div><strong>82.8%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/seoul.jpg" alt="" /></dt>
                        <dd>2023 서울대학교<br><span style="letter-spacing:-1px;">치의학학석사통합과정 합격</span></dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 297.5점</strong><br>
                            <span>2022학년도 287점</span>
                        </p>
                        <div><strong>80.8%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/kangwon.jpg" alt="" /></dt>
                        <dd>2023 강원대학교(춘천)<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 296.5점</strong><br>
                            <span>2022학년도 263점</span>
                        </p>
                        <div><strong>90.5%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/eulji.jpg" alt="" /></dt>
                        <dd>2023 을지대학교(대전)<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 296.5점</strong><br>
                            <span>2022학년도 263점</span>
                        </p>
                        <div><strong>90.5%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/gyeongsang.jpg" alt="" /></dt>
                        <dd>2023 경상국립대학교<br>수의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 296점</strong><br>
                            <span>2022학년도 266점</span>
                        </p>
                        <div><strong>88.2%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/ulsan.jpg" alt="" /></dt>
                        <dd>2023 울산대학교<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 295.5점</strong><br>
                            <span>2022학년도 280점</span>
                        </p>
                        <div><strong>77.5%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/soonchunhyang.jpg" alt="" /></dt>
                        <dd>2023 순천향대학교<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294.5점</strong><br>
                            <span>2022학년도 278점</span>
                        </p>
                        <div><strong>75.0%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/korea.jpg" alt="" /></dt>
                        <dd>2023 고려대학교(안암)<br>기계공학부 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294.5점</strong><br>
                            <span>2022학년도 278점</span>
                        </p>
                        <div><strong>75.0%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/yonsei.jpg" alt="" /></dt>
                        <dd>2023 연세대학교(서울)<br>컴퓨터과학과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294.5점</strong><br>
                            <span>2022학년도 205.5점</span>
                        </p>
                        <div><strong>94.2%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/seoul.jpg" alt="" /></dt>
                        <dd>2023 서울대학교<br>정치외교학부 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294.5점</strong><br>
                            <span>2022학년도 263.5점</span>
                        </p>
                        <div><strong>84.9%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/yonsei.jpg" alt="" /></dt>
                        <dd>2023 연세대학교(서울)<br>경영학과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294.5점</strong><br>
                            <span>2022학년도 263.5점</span>
                        </p>
                        <div><strong>84.9%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/pusan.jpg" alt="" /></dt>
                        <dd>2023 부산대학교<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 293.5점</strong><br>
                            <span>2022학년도 252점</span>
                        </p>
                        <div><strong>86.5%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/ulsan.jpg" alt="" /></dt>
                        <dd>2023 울산대학교<br>의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 293.5점</strong><br>
                            <span>2022학년도 261.5점</span>
                        </p>
                        <div><strong>83.1%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/wonkwang.jpg" alt="" /></dt>
                        <dd>2023 원광대학교<br>치의예과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 293.5점</strong><br>
                            <span>2022학년도 229.5점</span>
                        </p>
                        <div><strong>90.8%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/kangwon.jpg" alt="" /></dt>
                        <dd>2023 강원대학교(춘천)<br>약학과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 293점</strong><br>
                            <span>2022학년도 216.5점</span>
                        </p>
                        <div><strong>91.6%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/catholic.jpg" alt="" /></dt>
                        <dd>2023 가톨릭대학교(성심)<br>약학과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 292.5점</strong><br>
                            <span>2022학년도 280.5점</span>
                        </p>
                        <div><strong>61.5%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/seoul.jpg" alt="" /></dt>
                        <dd>2023 서울대학교<br>인문계열 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 292.5점</strong><br>
                            <span>2022학년도 256점</span>
                        </p>
                        <div><strong>83.0%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/korea.jpg" alt="" /></dt>
                        <dd>2023 고려대학교(안암)<br>컴퓨터학과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 292.5점</strong><br>
                            <span>2022학년도 256점</span>
                        </p>
                        <div><strong>83.0%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/korea.jpg" alt="" /></dt>
                        <dd>2023 고려대학교(안암)<br>보건정책관리학부 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 292.5점</strong><br>
                            <span>2022학년도 256점</span>
                        </p>
                        <div><strong>83.0%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/chonnam.jpg" alt="" /></dt>
                        <dd>2023 전남대학교(광주)<br>치의학학석사통합과정 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 292점</strong><br>
                            <span>2022학년도 252점</span>
                        </p>
                        <div><strong>83.3%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/korea.jpg" alt="" /></dt>
                        <dd>2023 고려대학교(안암)<br>신소재공학부 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 291.5점</strong><br>
                            <span>2022학년도 241.5점</span>
                        </p>
                        <div><strong>85.5%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/korea.jpg" alt="" /></dt>
                        <dd>2023 고려대학교(안암)<br>불어불문학과 합격</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 280.5점</strong><br>
                            <span>2022학년도 249.5점</span>
                        </p>
                        <div><strong>61.4%</strong>상승</div>
                    </div>
                    <p>러셀 기숙 OOO</p>
                </div>
            </div>
        </div>
        <div class="inner">
            <p class="r-txt">※ 최상위권 남학생 의대전문관 러셀 기숙학원 2023학년도 재원생 중 2022/2023 수능 성적(국수탐(2)) 확인이 가능한 재원생의 성적 비교</p>
        </div>
    </div>
    <% End If %>
    <!-- //cont02 -->
    <!-- cont03 -->
    <% If sCampusCode = "CD0347" Then '서의치 %>
    <div class="cont03">
        <p data-aos="fade-up" class="mb70"><img src="<%=img_path_russelsm%>/2024/first/cont03_tit.png" alt="" /></p>
        <div><img src="<%=img_path_russelsm%>/2024/first/cont03_img.jpg" alt="" /></div>
    </div>
    <!-- //cont03 -->
    <!-- cont03-1 -->
    <div class="cont03-1">
        <div class="inner">
            <p data-aos="fade-up" class="mb60"><img src="<%=img_path_russelsm%>/2024/first/cont03-1_tit.png" alt="" /></p>
            <div><img src="<%=img_path_russelsm%>/2024/first/cont03-1_img.jpg" alt="" /></div>
        </div>
    </div>
    <!-- //cont03-1 -->
    <% End If %>
    <!-- 배너 -->
    <div class="bt-banner">
        <p data-aos="zoom-in"><img src="<%=imgUrl%>/banner_tit.png" alt="러셀 기숙학원에서 성적 향상과 최상위권 대학 합격의 주인공이 되세요." /></p>
    </div>
    <!--// 배너 -->
</div>