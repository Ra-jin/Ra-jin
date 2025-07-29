<div class="cont03 js-cont-wrap js-cont" id="plan02">
    <h3 data-aos="flip-up" class="aos-init aos-animate">
        <% If campus_code = "INTRO" Then '인트로 %>
        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont03_tit.jpg" alt="" />
        <% Else %>
        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont03_tit.jpg" alt="" />
        <% End If %>
    </h3>

    <div class="inner">
        <div class="contbox">
            <div class="tit">
                <% If campus_code = "CD0257" Then '중계 %>
                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont03_sl_tit.jpg" alt="" />
                <% Else %>
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont03_sl_tit.jpg" alt="" />
                <% End If %>
            </div>
            <div class="studyHall-slide-wrap">
                <% If isCore = "1" OR campus_code = "CD0342" OR campus_code = "CD0349" Then '코어/대구/울산 %>
                <a class="banner-bus" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_bus.png" alt="" /></a>
                <div class="studyHall-navi core">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인<br>면학분위기</div>
                        <div class="swiper-slide">학습 동선<br>최소화</div>
                        <div class="swiper-slide">학습에<br>최적화된 환경</div>
                        <div class="swiper-slide">자체 식당 운영</div>
                    </div>
                </div>
                <% Else %>
                <div class="studyHall-navi">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인<br>면학분위기</div>
                        <div class="swiper-slide">학습 동선<br>최소화</div>
                        <div class="swiper-slide">학습에<br>최적화된 환경</div>
                    </div>
                </div>
                <% End if %>

                <% If isCore = "1" OR campus_code = "CD0342" OR campus_code = "CD0349" Then '코어/대구/울산 %>
                <div class="swiper-container studyHall-slide core">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">                        
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont03_tab01_img.png" alt="" /></p>
                        </div>
                        <div class="swiper-slide">
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont03_tab02_img.png" alt="" /></p>
                        </div>
                        <div class="swiper-slide">
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont03_tab03_img.png" alt="" /></p>
                        </div>
                        <div class="swiper-slide">
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont03_tab04_img.png" alt="" /></p>
                        </div>
                    </div>
                </div>
                <% Else %>
                <div class="swiper-container studyHall-slide">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <!-- 집단적인 면학분위기 -->
                            <% If campus_code = "INTRO"  Then '인트로 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont03_tab01_img.png" alt="" /></p>
                            <% Else %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont03_tab01_img.png" alt="" /></p>
                            <% End If %>                         
                        </div>
                        <div class="swiper-slide">
                            <!-- 학습동선 최소화 -->
                            <% If campus_code = "INTRO" Then '인트로 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont03_tab02_img.png" alt="" /></p>
                            <% Else %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont03_tab02_img.png" alt="" /></p>
                            <% End If %>
                        </div>
                        <div class="swiper-slide">
                            <!-- 충분한 자습시간 -->
                            <% If campus_code = "INTRO" Then '인트로 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont03_tab03_img.png" alt="" /></p>
                            <% Else %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont03_tab03_img.png" alt="" /></p>
                            <% End If %>
                        </div>
                    </div>
                </div>
                <% End If %>
            </div>
        </div>
        <!-- <div class="r-txt">* 학원별 운영 방법 및 시설은 상이합니다.</div> -->
        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="stu-review typeA m-mt10">
            <div class="top-con">
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_jhh.png" alt="조한혁" /></p>
                <p class="stu-tit"><strong>연세대</strong>(서울) <strong>의예과 합격</strong><br> 러셀CORE 대전 조한혁</p>
            </div>   
            <div class="line">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_quotes.png" alt="" />
            </div>
            <div class="review-con">
                <strong>바른공부 자습전용관 장점은 최적의 학습 환경</strong> <br>입니다. 의자는 오랜 시간 앉아 있어도 허리나<br> 엉덩이가 아프지 않았고 책상도 넓어서<br> 모의고사를 펼쳐놔도 넉넉했습니다. <br>
                그리고<strong> 담임선생님께서 바자관 안에 계시면서<br> 면학분위기 조성</strong>을 엄격하게 해주셔서<br> 좋았습니다. 
            </div>
        </div>
        <% End If %>
    </div>
</div>

<div class="cont04 js-cont">
    
    <h3 data-aos="flip-up" class="aos-init aos-animate">
        <% If campus_code = "CD0257" Then '중계 %>
        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont04_tit.jpg" alt="" />
        <% Else %>
        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont04_tit.jpg" alt="" />
        <% End If %>
    </h3>
    <div class="inner">
        <!-- 강사진 슬라이드 -->
        <!-- #include virtual = "/intro/2024/regular_go/teacher_slide.asp" -->
        <!-- //강사진 슬라이드 -->
    </div>
    <div>
        <% If campus_code = "INTRO" Then '인트로 %>
        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont04_cont.jpg" alt="" />
        <% Else %>
        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont04_cont.jpg" alt="" />
        <% End If %>
    </div>
    <% If campus_code = "CD0346" Then '코어청주 %>
    <div class="inner m-mt3">
        <a href="https://mcorecj.megastudy.net/core_cj/2024/math_class/index.asp">
            <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont04_banner.jpg" alt="" />
        </a>
    </div>
    <% End If %>
    <% If campus_code = "INTRO" Then '인트로 %>
    <div class="inner">
        <div class="stu-review typeB">
            <div class="top-con">
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_nch.png" alt="남채현" /></p>
                <p class="stu-tit"><strong>가톨릭대</strong>(성의) <strong>의예과 합격</strong><br> 러셀 대치 남채현</p>
            </div>   
            <div class="line">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_quotes.png" alt="" />
            </div>
            <div class="review-con">
                <strong>메가스터디 선생님의 수업 중 필요한 수업만<br> 선택</strong>해서 들을 수 있고, 바자관과 강의실이 <br>한 건물에 있어 <strong>단과 수업 이동에 불필요한 시간 <br>소비를 하지 않아도 되는 점</strong>이 좋았습니다.<br>
                    수업이 끝나고 바로 내용을 기억해 뒀다가<br> 오답 노트를 작성하는 등 시간 절약에 많은<br> 도움이 되었습니다. 
            </div>
        </div>
    </div>
    <% End If %>
</div>

<div class="cont05 js-cont">
    <% If campus_code = "CD0257" Then '중계 %>
    <h3 data-aos="flip-up" class="aos-init aos-animate"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont05_tit.jpg" alt="" /></h3>
    <% Else %>
    <h3 data-aos="flip-up" class="aos-init aos-animate"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont05_tit.jpg" alt="" /></h3>
    <% End If %>

    <!-- 연간 일정 -->
    <!-- #include virtual = "/intro/2024/regular_go/schedule.asp" -->
    <div class="inner">
        <div class="s-wrap">
            <div class="s-slide swiper-container type01">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <% If campus_code = "INTRO"  Then '인트로 %>
                        <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont05_sl_img01.jpg" alt="" /></div>
                        <% Else %>
                        <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont05_sl_img01.jpg" alt="" /></div>
                        <% End If %>
                        <ul class="list-check">
                            <li>학교와 병행하는 재학생에 맞춰 
                                <strong>방과 후,<br> 주말 집중 관리 진행</strong></li>
                            <li>학습 고충 및 슬럼프를 긍정적으로 극복<br>할 수 있도록 
                                <strong>1:1 정신적 멘토링 진행</strong></li>
                        </ul>
                    </div>
                    <div class="swiper-slide">
                        <% If campus_code = "INTRO" Then '인트로 %>
                        <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont05_sl_img02.jpg" alt="" /></div>
                        <% Else %>
                        <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont05_sl_img02.jpg" alt="" /></div>
                        <% End If %>                               
                        <ul class="list-check">
                            <li>학습 습관을 점검하여 보다 
                                <strong>효율적인 자습시간 관리
                                </strong>
                            </li>
                            <li>
                                <% If campus_code <> "CD0244" Then '분당제외 %>
                                내신/모의고사 
                                <% End If %>
                                 성적 누적 관리로  
                                <strong>취약점 확인 및 보완법 제안</strong></li>
                        </ul>
                    </div>
                    <div class="swiper-slide">
                        <% If campus_code = "INTRO" Then '인트로 %>
                        <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont05_sl_img03.jpg" alt="" /></div>
                        <% Else %>
                        <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont05_sl_img03.jpg" alt="" /></div>
                        <% End If %>                               
                        <ul class="list-check">
                            <li>수시 지원을 위한 
                                <strong>
                                    <% If campus_code <> "CD0244" Then '분당제외 %>
                                    내신 집중 관리,
                                    <% End If %>
                                     학생부 관련 설계 및 지원</strong>
                            </li>
                            <li>누적된 재원생 학습 및 입시 결과 데이터 기반으로
                                <strong>개인 목표에 맞춘 입시 방향(수시/정시) 제시</strong></li>
                        </ul>
                    </div>
                </div>
                <div class="p-type01"></div>
            </div>
        </div>
        
        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="stu-review typeC m-mt10">
            <div class="top-con">
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_phr.png" alt="표예림" /></p>
                <p class="stu-tit"><strong>서울대 언론정보학과 합격</strong> <br>러셀 강남 표혜림</p>
            </div>   
            <div class="line">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_quotes.png" alt="" />
            </div>
            <div class="review-con">
                <strong>담임선생님이 각 시기에 맞춰 1:1 컨설팅을 <br> 해주시는 것</strong>이 좋았습니다. 저에 대해 잘 알고 계신<br> 담임선생님이 상담을 해 주시기 때문에 정말 많은<br> 도움이 되었습니다.
                        <strong>공부 방향성과 시험시간<br> 관리법뿐만 아니라 멘탈 케어도</strong> 함께<br> 도와주셨습니다.
                        수험기간 동안 공부에 <br>집중할 수 있도록 독려해 주셨기 때문에<br> 합격할 수 있었다고 생각합니다.
            </div>
        </div>
        <% End If %>
    </div>
</div>

<div class="cont06 js-cont">
    <h3 data-aos="flip-up" class="aos-init aos-animate">
        <% If campus_code = "CD0257" Then '중계 %>
        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont06_tit.jpg" alt="" />
        <% Else %>
        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont06_tit.jpg" alt="" />
        <% End If %>
    </h3>
    <div class="contbox">
        <div class="inner">
            <% If isCore = 1 OR campus_code = "CD0349" Then '코어/울산 일경우 %>
            <div class="program-slide-navi swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">러셀CORE<br>Weekly 모의고사</div>
                    <div class="swiper-slide">메가X대성<br>더 프리미엄 모의고사</div>
                    <div class="swiper-slide">QUEL<br>모의고사</div>
                    <div class="swiper-slide">월간 학습지<br>(월간 장영진)</div>
                </div>
            </div>
            <% ElseIf campus_code = "CD0247" OR campus_code = "CD0001" OR campus_code = "CD0245" OR campus_code = "CD0249" OR campus_code = "CD0257" OR campus_code = "CD0248" OR campus_code = "CD0246" OR campus_code = "CD0250" Then '강남/대치/목동/영통/중계/평촌/센텀/부천 %>
            <div class="program-slide-navi type02 swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">QUEL<br>모의고사</div>
                    <div class="swiper-slide">메가X대성<br>더 프리미엄<br> 모의고사</div>
                    <div class="swiper-slide">월간 학습지<br>(월간 장영진)</div>
                </div>
            </div>
            <% ElseIf campus_code = "CD0244" Then '분당 %>
            <div class="program-slide-navi swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">QUEL<br>모의고사</div>
                    <div class="swiper-slide">메가X대성<br>더 프리미엄 모의고사</div>
                    <div class="swiper-slide">러셀 분당<br>재원생 전용 주간지</div>
                    <div class="swiper-slide">월간 학습지<br>(월간 장영진)</div>
                </div>
            </div>
            <% Else %>
            <div class="program-slide-navi swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">QUEL<br>모의고사</div>
                    <div class="swiper-slide">메가X대성<br>더 프리미엄 모의고사</div>
                    <div class="swiper-slide">러셀CORE<br>Weekly 모의고사</div>
                    <div class="swiper-slide">월간 학습지<br>(월간 장영진)</div>
                </div>
            </div>
            <% End If %>
        </div>            
        <div class="program-slide swiper-container">
            <div class="swiper-wrapper">
                <% If isCore = 1 OR campus_code = "CD0349" Then '코어/울산 일경우 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont06_img03.png" alt="" />
                    <a href="/intro/2022/weekly/index.asp" title="" style="position:absolute;right:8%;top:11%;width:27.6%;height:6.39%;z-index:2;"></a>
                </div>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont06_img02_1.png" alt="" />
                    <a href="/intro/2022/premium/index.asp" title="" style="position:absolute;right:8%;top:12%;width:27.6%;height:7.39%;z-index:2;"></a>
                </div>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont06_img01.png" alt="" />
                    <a href="/event/2021/quel/default.asp" title="" style="position:absolute;right:8%;top:9.47%;width:27.6%;height:6.39%;z-index:2;"></a>
                </div>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont06_img04.png" alt="" />
                    <a href="/intro/info/2022/monthly/index.asp" title="" style="position:absolute;right:8%;top:11%;width:27.6%;height:6.39%;z-index:2;"></a>
                </div>
                <% Else %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont06_img01.png" alt="" />
                    <a href="/event/2021/quel/default.asp" title="" style="position:absolute;right:8%;top:9.47%;width:27.6%;height:6.39%;z-index:2;"></a>
                </div>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont06_img02_1.png" alt="" />
                    <a href="/intro/2022/premium/index.asp" title="" style="position:absolute;right:8%;top:12%;width:27.6%;height:7.39%;z-index:2;"></a>
                </div>
                <% If campus_code = "CD0244" Then '분당 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont06_img03.png" alt="" />
                    <a href="javascript:alert('추후 오픈예정입니다.')" title="" style="position:absolute;right:8%;top:10%;width:27.6%;height:6.39%;z-index:2;"></a>
                </div>
                <% End If %>
                <% If campus_code <> "CD0247" AND campus_code <> "CD0001" AND campus_code <> "CD0245" AND campus_code <> "CD0244" AND campus_code <> "CD0249" AND campus_code <> "CD0257" AND campus_code <> "CD0248" AND campus_code <> "CD0246" AND campus_code <> "CD0250" Then '강남/대치/목동/분당/영통/중계/평촌/센텀/부천 제외 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont06_img03.png" alt="" />
                    <a href="/intro/2022/weekly/index.asp" title="" style="position:absolute;right:8%;top:11%;width:27.6%;height:6.39%;z-index:2;"></a>
                </div>
                <% End If %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont06_img04.png" alt="" />
                    <a href="/intro/info/2022/monthly/index.asp" title="" style="position:absolute;right:8%;top:11%;width:27.6%;height:6.39%;z-index:2;"></a>
                </div>
                <% End If %>
            </div>
        </div>
    </div>
    <div class="inner">
        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="stu-review typeD m-mt10">
            <div class="top-con">
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_kge.png" alt="김가을" /></p>
                <p class="stu-tit"><strong>부산대 의예과 합격</strong> <br>러셀 센텀 김가을</p>
            </div>   
            <div class="line">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_quotes.png" alt="" />
            </div>
            <div class="review-con">
                메가X대성 더 프리미엄 모의고사와 퀄 모의고사와 같이 <strong>다양한 모의고사를 경험할 수 있어 <br> 좋았습니다.
                학교를 가야 하는 재학생들도 주말에 <br>시험을 응시</strong>할 수 있도록 환경을 마련해 주셨고,<br> 실제 실전과 유사한 환경에서 훈련을 하며<br> <strong>실전 감각을 익히고 새로운 문제를 접할 수<br> 있었습니다.</strong> 
            </div>
        </div>
        <% End If %>
    </div>
</div>
<% If campus_code = "CD0342" Then '대구 %>
<div class="cont07 js-cont">
    <h3 data-aos="flip-up" class="aos-init aos-animate">
        <img src="<%=Application("img_path_russel")%>/m_russel/russel_dg/2024/regular_go/cont07_tit.jpg" alt="" />
    </h3>
    <div class="study-schedule">
        <div class="year-tab-wrap">
            <div class="year-tab">
                <a href="" class="on"><strong>2</strong>월</a>
                <a href=""><strong>3</strong>월</a>
                <a href=""><strong>4</strong>월</a>
                <a href=""><strong>5</strong>월</a>
                <a href=""><strong>6</strong>월</a>
                <a href=""><strong>7</strong>월</a>
                <a href=""><strong>8</strong>월</a>
                <a href=""><strong>9</strong>월</a>
                <a href=""><strong>10</strong>월</a>
                <a href=""><strong>11</strong>월</a>
            </div>
        </div>
        <!-- 2월 -->
        <div class="year-cont" style="display: block;">
            <table class="tbl-type01">
                <tbody>
                    <tr>
                        <th>국어</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>기출분석</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>수학</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[WEEKLY] Half 모의고사 5회차</li>
                                <li>[장영진] 2024 모의고사 4회차</li>
                                <li>[장영진] 2025 모의고사 2회차</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>영어</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[WEEKLY] Half 모의고사 1회차</li>
                                <li>[문호상] 데일리 독해+어법성 &middot; 영어듣기</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>탐구</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[WEEKLY] Half 모의고사 5회차</li>
                            </ul>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- //2월 -->

        <!-- 3월 -->
        <div class="year-cont">
            <table class="tbl-type01">
                <tbody>
                    <tr>
                        <th>국어</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[이감] 모의고사 2회차 + 간쓸개</li>
                                <li>[상상] 모의고사 2회차 + 월간지</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>수학</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[WEEKLY] Half 모의고사 2회차</li>
                                <li>[장영진] 월간지 (Half)</li>
                                <li>[장영진] 식스팩 주간지 4회차</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>영어</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[WEEKLY] Half 모의고사 2회차</li>
                                <li>[문호상] 데일리 영단어 &middot; 영독해</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>탐구</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[WEEKLY] Half 모의고사 2회차</li>
                            </ul>
                        </td>
                    </tr>
                </tbody>
            </table>

            <div class="mb10">
                <p>
                    [3월] <br>
                    메가X대성 더 프리미엄 모의고사<br>
                    (국수영탐 FULL 모의고사)
                </p>
            </div>
        </div>
        <!-- //3월 -->
    
        <!-- 4월 -->
        <div class="year-cont">
            <table class="tbl-type01">
                <tbody>
                    <tr>
                        <th>국어</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[상상] 월간지</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>수학</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[WEEKLY] Half 모의고사 2회차</li>
                                <li>[장영진] 월간지 (Half)</li>
                                <li>[장영진] 식스팩 주간지 4회차</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>영어</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[WEEKLY] Half 모의고사 2회차</li>
                                <li>[문호상] 데일리 영단어 &middot; 영독해</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>탐구</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[WEEKLY] Half 모의고사 2회차</li>
                            </ul>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="mb10">
                <p>
                    [4월] <br>
                    메가X대성 더 프리미엄 모의고사<br>
                    (국수영탐 FULL 모의고사)
                </p>
            </div>
        </div>
        <!-- //4월 -->
    
        <!-- 5월 -->
        <div class="year-cont">
            <table class="tbl-type01">
                <tbody>
                    <tr>
                        <th>국어</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[QUEL] 6평 대비 1회</li>
                                <li>[이감] 모의고사 4회차 + 간쓸개</li>
                                <li>[상상] 모의고사 4회차 + 월간지</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>수학</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[QUEL] 6평 대비 1회</li>
                                <li>[WEEKLY] Half 모의고사 3회차</li>
                                <li>[장영진] 모의고사 4회차 + 월간지 (Half)</li>
                                <li>[장영진] 식스팩 주간지 4회차</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>영어</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[QUEL] 6평 대비 1회</li>
                                <li>[WEEKLY] Half 모의고사 3회차</li>
                                <li>[문호상] 데일리 영단어 · 영독해</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>탐구</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[QUEL] 6평 대비 1회</li>
                                <li>[WEEKLY] Half 모의고사 3회차</li>
                            </ul>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="mb10">
                <p>
                    [5월] <br>
                    메가X대성 더 프리미엄 모의고사<br>
                    (국수영탐 FULL 모의고사)
                </p>
            </div>
        </div>
        <!-- //5월 -->
    
        <!-- 6월 -->
        <div class="year-cont">
            <table class="tbl-type01">
                <tbody>
                    <tr>
                        <th>국어</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[이감] 스폐셜시즌 (간쓸개+N제)</li>
                                <li>[상상] 월간지</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>수학</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[WEEKLY] Half 모의고사 3회차</li>
                                <li>[장영진] 월간지 (Half)</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>영어</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[WEEKLY] Half 모의고사 3회차</li>
                                <li>[문호상] Half 모의고사</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>탐구</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[WEEKLY] Half 모의고사 3회차</li>
                            </ul>
                        </td>
                    </tr>
                </tbody>
            </table>
            <!-- <div class="mb10">
                <p>
                    [6월] <br>
                    메가X대성 더 프리미엄 모의고사<br>
                    (국수영탐 FULL 모의고사)
                </p>
            </div> -->
        </div>
        <!-- //6월 -->
    
        <!-- 7월 -->
        <div class="year-cont">
            <table class="tbl-type01">
                <tbody>
                    <tr>
                        <th>국어</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[이감] Pre파이널 모의고사 2회차 + 간쓸개</li>
                                <li>[이감] 파이널 모의고사 1회차 + 간쓸개</li>
                                <li>[상상] 월간지</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>수학</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[WEEKLY] Half 모의고사 2회차</li>
                                <li>[장영진] 모의고사 2회차 + 월간지 (Half)</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>영어</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[WEEKLY] Half 모의고사 2회차</li>
                                <li>[문호상] Half 모의고사</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>탐구</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[WEEKLY] Half 모의고사 2회차</li>
                            </ul>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="mb10">
                <p>
                    [7월] <br>
                    메가X대성 더 프리미엄 모의고사<br>
                    (국수영탐 FULL 모의고사)
                </p>
            </div>
        </div>
        <!-- //7월 -->
    
        <!-- 8월 -->
        <div class="year-cont">
            <table class="tbl-type01">
                <tbody>
                    <tr>
                        <th>국어</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[QUEL] 모의고사 2회차</li>
                                <li>[이감] 파이널 모의고사 5회차 + 간쓸개</li>
                                <li>[상상] 모의고사 4회차 + 월간지</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>수학</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[QUEL] 모의고사 2회차</li>
                                <li>[WEEKLY] Half 모의고사 1회차</li>
                                <li>[장영진] 모의고사 4회차 + 월간지 (Half)</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>영어</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[QUEL] 모의고사 2회차</li>
                                <li>[WEEKLY] Half 모의고사 1회차</li>
                                <li>[문호상] Half 모의고사</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>탐구</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[QUEL] 모의고사 2회차</li>
                                <li>[WEEKLY] Half 모의고사 1회차</li>
                            </ul>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="mb10">
                <p>
                    [8월] <br>
                    E-QUEL 모의고사 <br>
                    (국수영탐 FULL 모의고사)
                </p>
            </div>
        </div>
        <!-- //8월 -->
    
        <!-- 9월 -->
        <div class="year-cont">
            <table class="tbl-type01">
                <tbody>
                    <tr>
                        <th>국어</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[QUEL] 모의고사 1회차</li>
                                <li>[이감] 파이널 모의고사 5회차 + 간쓸개</li>
                                <li>[상상] 모의고사 4회차 + 월간지</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>수학</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[QUEL] 모의고사 1회차</li>
                                <li>[WEEKLY] Half 모의고사 2회차</li>
                                <li>[장영진] 모의고사 4회차 + 월간지 (Half)</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>영어</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[QUEL] 모의고사 1회차</li>
                                <li>[WEEKLY] 모의고사 2회차</li>
                                <li>[김지영] 실전 모의고사 2회</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>탐구</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[QUEL] 모의고사 1회차</li>
                                <li>[WEEKLY] 모의고사 2회차</li>
                            </ul>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div>
                <p>
                    [9월] <br>
                    메가X대성 더 프리미엄 모의고사<br>
                    (국수영탐 FULL 모의고사)
                </p>
            </div>
        </div>
        <!-- //9월 -->
    
        <!-- 10월 -->
        <div class="year-cont">
            <table class="tbl-type01">
                <tbody>
                    <tr>
                        <th>국어</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[QUEL] 모의고사 2회차</li>
                                <li>[이감] 파이널 모의고사 4회차 + 간쓸개</li>
                                <li>[상상] 모의고사 4회차 + 월간지</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>수학</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[QUEL] 모의고사 2회차</li>
                                <li>[장영진] 실전 모의고사 4회차</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>영어</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[QUEL] 모의고사 2회차</li>
                                <li>[WEEKLY] 모의고사 1회차</li>
                                <li>[김지영] 실전 모의고사 2회</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>탐구</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[QUEL] 모의고사 2회차</li>
                                <li>[WEEKLY] 모의고사 1회차</li>
                            </ul>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div>
                <p>
                    [10월] <br>
                    메가X대성 더 프리미엄 모의고사<br>
                    (국수영탐 FULL 모의고사)
                </p>
            </div>
        </div>
        <!-- //10월 -->
    
        <!-- 11월 -->
        <div class="year-cont">
            <table class="tbl-type01">
                <tbody>
                    <tr>
                        <th>국어</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[이감] 파이널 모의고사 2회차 + 간쓸개</li>
                                <li>*이감 파이널 엣지 모의고사 2회 추후 공지</li>
                                <li>상상모의고사 1회차</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>수학</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[장영진] 실전 모의고사 2회차</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>영어</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[WEEKLY] 모의고사 1회차</li>
                                <li>[김지영] 실전 모의고사 3회</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>탐구</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="list-dot">
                                <li>[WEEKLY] 모의고사 1회차</li>
                            </ul>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="mb10">
                <p>
                    [11월] <br>
                    E-QUEL 모의고사 <br>
                    (국수영탐 FULL 모의고사)
                </p>
            </div>
        </div>
        <!-- //11월 -->
        <p class="r-txt">*상기 일정은 학원 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
    </div>
</div>
<% End If %>
<div class="bt-banner">
    <% If campus_code = "CD0257" Then '중계 %>
    <p>재학생에 최적화된<br> <%=txtCampus%> 재학생 정규반에서<br><strong>여러분의 목표 대학 합격이 확실해집니다.</strong></p>
    <% ElseIf campus_code = "CD0247" or campus_code = "CD0244" or campus_code = "CD0245" Then '강남/분당/목동 %>
    <p>재학생에 최적화된 <br> <%=txtCampus%>&nbsp;<%=mjinfo_tit%>에서<br><strong>여러분의 최상위권 대입성공이 확실해집니다.</strong></p>
    <% ElseIf campus_code = "CD0250" Then '부천 %>
    <p>고3에 최적화된 <br> <%=txtCampus%>&nbsp;<%=mjinfo_tit%>에서<br><strong>여러분의 최상위권 대입성공이 확실해집니다.</strong></p>
    <% Else %>
    <p>재학생에 최적화된 <br><%=txtCampus%> 재학생 정규반에서<br><strong>여러분의 최상위권 대입성공이 확실해집니다.</strong></p>
    <% End If %>
</div>


