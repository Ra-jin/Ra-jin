<div class="js-cont <%=campus_name%>">
    <div class="cont01">
        <div class="inner">
        <% If sCampusCode = "CD0347" Then '서의치기숙 %>
            <div class="v-img02"><img src="<%=img_path_russelsm%>/2023/half/cont01_tit.png" alt="메가스터디 최초, 최상위권 여학생 전문관 러셀 기숙학원" /></div>
            <p class="img"><img src="<%=img_path_russelsm%>/2023/half/cont01_img.png" alt=""></p>
            <p class="img"><img src="<%=img_path_russelsm%>/2023/half/cont01_stit.png" alt="기숙학원 재원생들의 니즈를 충족시키는, 새로운 기숙학원을 러셀이 선보입니다."></p>
        <% ElseIf sCampusCode = "CD0348" Then '기숙여최상위권 %>
        <div class="v-img02"><img src="<%=img_path_russelw%>/2023/half/cont01_tit.png" alt="메가스터디 최초, 최상위권 여학생 전문관 러셀 기숙학원" /></div>
        <p class="txt">우리는 고민하였습니다.<br>
            남녀분반을 넘어 최상위권 대학 합격을 위한 최적의 기숙학원 환경이 무엇인지.<br>
            2018년, 최상위권 남학생 전문관을 개원한 이래<br>
            현재까지 최상위권 입결 1등의 놀라운 성과를 만들어 냈습니다.<br>
            <strong>그리고 오랜 준비 끝에 최상위권 여학생 전문관을 선보입니다.</strong>
        </p>
        <% Else %>
        <div class="v-img02"><img src="<%=img_path_yangji%>/2023/half/cont01_img.png" alt="매년 비약적인 성적 향상과 최상위권 대학 합격의 결과로 검증된 1등, 러셀 기숙학원입니다." /></div>
            <ul class="list-02 r-txt">
                <li>메가스터디 전 학원 내 2020-2023학년도 의&middot;치&middot;한&middot;수&middot;약 대학 합격자수 기준 (홈페이지 대입 실적 기준 / 2023.02.20 기준)</li>
                <li>메가스터디 최상위권 남학생 전문관 러셀 기숙학원에서 배출한 2020~2023학년도의&middot;치&middot;한&middot;수&middot;약 대학 합격자수 중 최다 배출</li>
                <li>메가스터디 최상위권 남학생 전문관 러셀 기숙학원 2023학년도 자연계 재원생 중 2023학년도 의&middot;치&middot;한&middot;수&middot;약 대학 합격자수 기준</li>
                <li>메가스터디 최상위권 남학생 전문관 러셀 기숙학원 2020~2023학년도 재원생의 진학 실적만을 합산한 수치</li>
                <li>최종합격자를 기준으로 하며, 복수대학 합격자가 포함</li>
            </ul>
            <div class="l-btn-wrap">
                <a href="/perfect/2023/susi/index.asp" class="l-btn-bk">2023학년도 대입 합격 결과 보기</a>
            </div>
        <% End If %>
        </div>
    </div>

    <div class="cont02">
        <% If sCampusCode = "CD0347" Then '서의치기숙 %>
        <div class="inner" style="padding-bottom: 130px;">
            <div class="v-img"><img src="<%=img_path_russelsm%>/2023/half/cont02_tit.png" alt="" /></div>
            <p class="img"><img src="<%=img_path_russelsm%>/2023/half/cont02_img.png" alt=""></p>
        </div>
        <div class="cont02_1">
            <div class="inner">
                <div class="v-img"><img src="<%=img_path_russelsm%>/2023/half/cont02_tit02.png" alt=""></div>
                <p class="img"><img src="<%=img_path_russelsm%>/2023/half/cont02_img2.png" alt=""></p>
                <ul class="list-02 r-txt">
                    <li>* 일주일 88T기준으로 비교, 선택자습시간도 포함</li>
                    <li>* 실제 학원 운영상황에 따라 변경될 수 있습니다.</li>
                </ul>
            </div>
        </div>
        <div class="pass-wrap">
            <div class="inner">
                <div class="v-img"><img src="<%=img_path_russelsm%>/2023/half/pass_tit.png" alt=""></div>
                <p class="img"><img src="<%=img_path_russelsm%>/2023/half/pass_img.png" alt=""></p>
                <p class="img"><img src="<%=img_path_russelsm%>/2023/half/pass_list.png" alt=""></p>
                <div>
                    <div></div>
                    <div></div>
                </div>
                <ul>
                    <li>
                        <p></p>
                        <strong></strong>
                    </li>
                    <li>
                        <p></p>
                        <strong></strong>
                    </li>
                    <li>
                        <p></p>
                        <strong></strong>
                    </li>
                    <li>
                        <p></p>
                        <strong></strong>
                    </li>
                    <li>
                        <p></p>
                        <strong></strong>
                    </li>
                    <li>
                        <p></p>
                        <strong></strong>
                    </li>
                </ul>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0348" Then '기숙여최상위권 %>
        <div class="inner">
            <div class="v-img"><img src="<%=img_path_russelw%>/2023/half/cont02_tit_n.png" alt="왜 여학생 전문 기숙학원이 필요할까요?" /></div>
            <p class="img"><img src="<%=img_path_russelw%>/2023/half/cont02_img.png" alt=""></p>
            <p class="img" style="padding:0 0 130px 0;"><img src="<%=img_path_russelw%>/2023/half/cont02_txt.png" alt="메가스터디에서 첫번째 여학생 전문 기숙학원을 선보입니다"></p>
        </div>
        <div class="cont02_1">
            <div class="inner">
                <div class="v-img mb60"><img src="<%=img_path_russelw%>/2023/half/cont02_tit02.png" alt="그렇다면 왜, 최상위권 여학생 저ㅏㄴ문관 러셀 기숙학원 일까요?" /></div>
                <p class="img"><img src="<%=img_path_russelw%>/2023/half/cont02_01_stit.png" alt=""></p>
            </div>
            <p class="img"><img style="width:100%" src="<%=img_path_russelw%>/2023/half/cont02_1_img.png" alt=""></p>
            <div class="inner">
                <!-- 데이터 산출 기준 -->
                <div class="data">데이터 산출 기준<span>i</span></div>
                <ul class="data-txt">
                    <li>1) 메가스터디 전 학원 내 2020-2023학년도 의·치·한·수·약 대학 합격자수 기준 (홈페이지 대입 실적 기준 / 2023.02.20 기준) 및
                        2021~2023학년도 메가스터디 전체 학원 '메가 대성 더 프리미엄 모의고사, 6/9월 모의평가, 수능' 학원별 등수 기준(인문계열 19개 학원, 자연계열 21개 학원)</li>
                    <li>2) 2018-2021학년도 수능 실채점 기준(러셀 강남, 러셀 대치, 러셀 분당 배출)</li>
                    <li>3) 수능 업계 오프라인학원_2020-2023학년도 대입 서울대학교 의예과 합격자 수 홈페이지 노출 기준 (2023.02.28 기준)</li>
                    <li>4) 2018-2023학년도 러셀에서 배출한 메이저 의대, 전국 의예과 합격자 수 2023학년도 최다 배출 (단과 수강생 제외/복수대학 합격자 포함) (2023.02.28 기준)</li>
                    <li>5) 2020~2023학년도 러셀 전체 12개 학원의 의치한수약 합격자 수 기준 (복수대학 합격자 포함)</li>
                    <li>6) 2022학년도 러셀 전체 12개 학원 바른공부 자습전용관 재원생 중 N수생 성적 상승률 기준</li>
                    <li>7) 2021~2023학년도 메가스터디 전체 학원 ‘메가 대성 더 프리미엄 모의고사, 6/9월 모의평가, 수능’ 학원별 등수 기준 </li>
                </ul>
                <!-- //데이터 산출 기준 -->

                <div class="btnbox"><a class="result-btn" href="https://russelw.megastudy.net/perfect/2023/susi/index.asp" target="_blank" alt="">2023학년도 대입 합격 결과 보기 </a></div>
            </div>
        </div>
        <div class="pass-wrap">
            <div class="inner">
                <p class="img"><img src="<%=img_path_russelw%>/2023/half/pass_tit.png" alt=""></p>
            </div>
            <div class="pass-slides">
                <div class="pass-swiper swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="<%=img_path_russelw%>/2023/half/img_slide_01.png" alt="">
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=img_path_russelw%>/2023/half/img_slide_02.png" alt="">
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=img_path_russelw%>/2023/half/img_slide_03.png" alt="">
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=img_path_russelw%>/2023/half/img_slide_04.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="inner">
                <p class="img" style="padding-top:98px;"><img src="<%=img_path_russelw%>/2023/half/pass_txt.png" alt=""></p>
                <p class="img"><img src="<%=img_path_russelw%>/2023/half/pass_img.png" alt=""></p>
            </div>
        </div>
        <% Else %>
        <div class="inner">
            <p><img src="<%=img_path_yangji%>/2023/half/cont02_tit.png" alt="러셀 기숙학원만의 강한 관리력으로 이뤄낸 비약적인 성적 향상의 결과" /></p>
            <ul class="review-list">
                <li>
                    <div>
                        <img src="<%=img_path_yangji%>/2023/half/cont02_01.jpg" alt="김인" usemap="#playVideo01" />
                        <map name="#playVideo01">
                            <area shape="rect" coords="219,300,279,361" href="javascript:void(0)" onclick="playPopup('https://tv.naver.com/embed/34185919')">
                    </map>                       
                    </div>
                </li>
                <li>
                    <div>
                        <img src="<%=img_path_yangji%>/2023/half/cont02_02.jpg" alt="오세욱" usemap="#playVideo02" />
                        <map name="#playVideo02">
                            <area shape="rect" coords="219,300,279,361" href="javascript:void(0)" onclick="playPopup('https://tv.naver.com/v/34866920')">
                    </map>              
                    </div>
                </li>
                <li>
                    <div>
                        <img src="<%=img_path_yangji%>/2023/half/cont02_03.jpg" alt="김동욱" usemap="#playVideo03" />
                        <map name="#playVideo03">
                            <area shape="rect" coords="219,300,279,361" href="javascript:void(0)" onclick="playPopup('https://tv.naver.com/v/34866845')">
                    </map>              
                    </div>
                </li>
                <li>
                    <div>
                        <img src="<%=img_path_yangji%>/2023/half/cont02_04.jpg" alt="서정우" usemap="#playVideo04" />
                        <map name="#playVideo04">
                            <area shape="rect" coords="219,300,279,361" href="javascript:void(0)" onclick="playPopup('https://tv.naver.com/v/34866817')">
                    </map>              
                    </div>
                </li>
                <li>
                    <div>
                        <img src="<%=img_path_yangji%>/2023/half/cont02_05.jpg" alt="박성우" usemap="#playVideo05" />
                        <map name="#playVideo05">
                            <area shape="rect" coords="219,300,279,361" href="javascript:void(0)" onclick="playPopup('https://tv.naver.com/v/34866533')">
                    </map>              
                    </div>
                </li>
                <li>
                    <div>
                        <img src="<%=img_path_yangji%>/2023/half/cont02_06.jpg" alt="박세연" usemap="#playVideo06" />
                        <map name="#playVideo06">
                            <area shape="rect" coords="219,300,279,361" href="javascript:void(0)" onclick="playPopup('https://tv.naver.com/v/34866645')">
                    </map>              
                    </div>
                </li>
            </ul>           
        </div>
        <div class="roll-swiper swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=img_path_yangji%>/2023/half/sungkyunkwan.jpg" alt="" /></dt>
                        <dd>성균관대학교<br>의예과</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/hanyang.jpg" alt="" /></dt>
                        <dd>한양대학교(서울)<br>의예과</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/kyunghee.jpg" alt="" /></dt>
                        <dd>경희대학교(서울)<br>의예과</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/gachon.jpg" alt="" /></dt>
                        <dd>가천대학교(메디컬)<br>의예과</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/hanyang.jpg" alt="" /></dt>
                        <dd>한양대학교(서울)<br>의예과</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/pusan.jpg" alt="" /></dt>
                        <dd>부산대학교<br>의예과</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/pusan.jpg" alt="" /></dt>
                        <dd>부산대학교<br>의예과</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/seoul.jpg" alt="" /></dt>
                        <dd>서울대학교<br>치의학학석사통합과정</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/kangwon.jpg" alt="" /></dt>
                        <dd>강원대학교(춘천)<br>의예과</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/eulji.jpg" alt="" /></dt>
                        <dd>을지대학교(대전)<br>의예과</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/gyeongsang.jpg" alt="" /></dt>
                        <dd>경상국립대학교<br>수의예과</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/ulsan.jpg" alt="" /></dt>
                        <dd>울산대학교<br>의예과</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/soonchunhyang.jpg" alt="" /></dt>
                        <dd>순천향대학교<br>의예과</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/korea.jpg" alt="" /></dt>
                        <dd>고려대학교(안암)<br>기계공학부</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/yonsei.jpg" alt="" /></dt>
                        <dd>연세대학교(서울)<br>컴퓨터과학과</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/seoul.jpg" alt="" /></dt>
                        <dd>서울대학교<br>정치외교학부</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/yonsei.jpg" alt="" /></dt>
                        <dd>연세대학교(서울)<br>경영학과</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/pusan.jpg" alt="" /></dt>
                        <dd>부산대학교<br>의예과</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/ulsan.jpg" alt="" /></dt>
                        <dd>울산대학교<br>의예과</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/wonkwang.jpg" alt="" /></dt>
                        <dd>원광대학교<br>치의예과</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/kangwon.jpg" alt="" /></dt>
                        <dd>강원대학교(춘천)<br>약학과</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/catholic.jpg" alt="" /></dt>
                        <dd>가톨릭대학교(성심)<br>약학과</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/seoul.jpg" alt="" /></dt>
                        <dd>서울대학교<br>인문계열</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/korea.jpg" alt="" /></dt>
                        <dd>고려대학교(안암)<br>컴퓨터학과</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/korea.jpg" alt="" /></dt>
                        <dd>고려대학교(안암)<br>보건정책관리학부</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/chonnam.jpg" alt="" /></dt>
                        <dd>전남대학교(광주)<br>치의학학석사통합과정</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/korea.jpg" alt="" /></dt>
                        <dd>고려대학교(안암)<br>신소재공학부</dd>
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
                        <dt><img src="<%=img_path_yangji%>/2023/half/korea.jpg" alt="" /></dt>
                        <dd>고려대학교(안암)<br>불어불문학과</dd>
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
            <ul class="list-02 r-txt">
                <li>최상위권 남학생 전문관 러셀 기숙학원 2023학년도 재원생 중 2022/2023 수능 성적(국수탐(2)) 확인이 가능한 재원생의 성적 비교</li>
            </ul>
        </div>
    </div>
    <% End If %>
</div>
<!-- m-banner -->
<% If sCampusCode = "CD0258" Then '남자기숙 %> 
<div class="m-banner">
    <div class="inner">  
        <p>검증된 1등, <span>러셀 기숙이 만든 최상위권 남학생 전문관</span>에서<br><strong>비약적인 성적 향상</strong>과 <strong>최상위권 대학 합격의 결과</strong>의 주인공은<br>바로 여러분입니다.</p>    
    </div>
</div>
<% ElseIf sCampusCode = "CD0347" Then '서의치기숙 %>
<div class="m-banner">
    <div class="inner">    
        <p>최상위권 수험생의 니즈를 충족시키는 <span>신개념 융합형 기숙학원!<br>서연고·의치대 전문관이 기숙의 새로운 기준</span>을 만들어가겠습니다.</p>  
    </div>
</div>
<% ElseIf sCampusCode = "CD0348" Then '여자기숙 %>
<div class="m-banner">
    <div class="inner">
        <p>메가스터디가 <span>여학생 중심으로 설계한 첫번째 기숙학원,</span><br>최초에서 더 나아가 <span>최상의 합격 결과로 반드시 증명</span>하겠습니다.</p>    
    </div>
</div>
<% End If %>

