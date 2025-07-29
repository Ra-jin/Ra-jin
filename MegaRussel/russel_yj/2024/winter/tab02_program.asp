<div class="cont js-cont <%=campusName%>">
    <div class="cont04">
        <div class="inner">
            <p data-aos="fade-down"><img src="<%=img_path_yangji%>/2024/winter/cont04_tit.png" alt="러셀 윈터스쿨, 왜 최상위권이 먼저 선택할까요? 겨울방학 동안 올바른 학습 습관 형성은 물론 최상위권 실력 향상을 위한 모든 것이 준비되어 있기 때문입니다." /></p>
            <p class="mt60"><img src="<%=img_path_yangji%>/2024/winter/cont04_top.jpg" alt="" /></p>
            <div class="max-box"><img src="<%=imgUrl%>/cont04_img.jpg" alt="" /></div>
        </div>
    </div>
    <div class="cont05">
        <div class="inner">
            <div class="tit_num"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont05_num.png" alt="01" /></div>
            <p data-aos="fade-down"><img src="<%=img_path_yangji%>/2024/winter/cont05_tit.png" alt="최소한의 의무수업으로 최대한의 자습시간 확보" /></p>
            <% If sCampusCode = "CD0348" OR sCampusCode = "CD0347" Then '여기숙/서의치 %>
            <div class="mt60"><img src="<%=imgUrl%>/cont05_img.jpg" alt="" /></div>
            <% Else %>
            <div class="cont-wrap">
                <div class="cont">
                    <p class="tit">
                        <strong>주 21T, 꼭 필요한 핵심 수업 구성</strong><br>
                        <span>기존 기숙학원 대비 의무수업 최대 50%
                            <sup>1)</sup> 축소 
                        </span>
                    </p>
                    <div class="tbl-box no-border">
                        <p class="stit">필수수업<span>&lt;1T = 1시간&gt;</span></p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>국어</th>
                                    <th>수학 I &middot; II</th>
                                    <th>선택1</th>
                                    <th>선택2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                        수업시간</th>
                                    <td>7T</td>
                                    <td>7T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>

                        <p class="stit mt30">선택적 의무수업(택2)</p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:18%;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>수학<br>(선택 과목)</th>
                                    <th>영어</th>
                                    <th>과학탐구</th>
                                    <th>논술</th>
                                    <th>한국사</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                        수업시간</th>
                                    <td>3.5T<br>
                                        고3 미적 기하<br>
                                        고2 미적
                                    </td>
                                    <td>3.5T</td>
                                    <td>과목당<br>
                                    3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="r-txt mt30">1) 기존 기숙학원 의무수업 42T 대비 러셀 기숙학원 의무수업 21T 비교  시 수치<br>
                        
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                            
                        </p>
                    </div>
                </div>

                <div class="cont pl0 pr0">
                    <p class="tit">
                        <strong>겨울방학 충분한 자습시간 확보(주 67T*)

                        </strong><br>
                        <span>학기 중 대비 자습시간 최대 40%
                            <sup>2)</sup> 증가</span>
                    </p>
                    <div style="padding: 38px 0 34px;"><img src="<%=img_path_yangji%>/2024/winter/cont05_img.jpg" alt="" /></div>
                    <p class="r-txt mt0" style="padding-right:55px">
                        2) 학기 중 학원+자습시간 47T 대비 러셀 기숙학원 자습시간 67T 비교<br>
                        * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함<br>
                        * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                    </p>
                </div>
            </div>
            <% End If %>
        </div>
    </div>
    <div class="cont06">
        <div class="tit_num"><img src="<%=img_path_yangji%>/2024/winter/cont06_num.png" alt="02" /></div>
        <p data-aos="fade-down"><img src="<%=img_path_yangji%>/2024/winter/cont06_tit.png" alt="메가스터디 온·오프라인 전문 강사진의 현장강의" /></p>
        
        <ul class="danka-list">
            <% If sCampusCode = "CD0347" Then '서의치 %>
            <li>
                러셀 및 인강 출강하는<br>
                <strong>메가스터디 수능 전문 강사진</strong>

            </li>
            <li><strong>겨울방학 단기 집중 완성</strong><br>
                현장강의 진행
            </li>
            <li class="three-line">
                학업 성취도에 맞춘<br>
                <strong>전 과목 수준별 수업<br>
                    (최상,상,일반) </strong>
            </li>
            <li>
                <strong>대치동 현장 전용<br>
                    수업 및 콘텐츠</strong>로 진행
            </li>
            <li class="ml0 mt20"><strong>1:1 맞춤 관리</strong> 및<br>
                <strong>질의응답 직접 진행</strong>
            </li>
            <li class="mt20">수업 관리 전담 선생님의<br>
                <strong>집중도 높은 수업 진행 관리</strong>
            </li>
            <li class="three-line mt20">
                인강 교재가 아닌<br>
                <strong>대치동 현장강의에서<br>
                    배부하는 자료 제공</strong>
            </li>
            <% Else %>
            <li>
                <strong>러셀 강남&middot;대치</strong> 및<br>
                <strong>메가스터디 인강</strong> 출강
            </li>
            <li>
                <strong>겨울방학 단기 집중 완성</strong><br>
                현장강의 진행
            </li>
            <li>
                과목별 성취도에 맞춘<br>
                <strong>수준별 맞춤 수업</strong>
            </li>
            <li>
                <strong>1:1 맞춤 관리</strong> 및<br>
                <strong>질의응답 직접 진행</strong>
            </li>
            <% End If %>
        </ul>
        <div class="inner">
            <div><img src="<%=imgUrl%>/cont06_img.jpg" alt="" /></div>
            <% If sCampusCode = "CD0348" Then '여학생 전문관 %>
            <p class="r-txt">* 학원 운영에 따라 출강 선생님은 변경될 수 있습니다. <br>
                * 일부 강좌는 대치동 현장강의로 진행됩니다.
            </p>
            <% Else %>
            <p class="r-txt">* 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.
            </p>
            <% End If %>
        </div>
    </div>
    <div class="cont07">
        <div class="inner">
            <div class="tit_num"><img src="<%=img_path_yangji%>/2024/winter/cont07_num.png" alt="03" /></div>
            <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont06_tit.png" alt="최상위권 전문 입시 담임선생님의 학생 맞춤 관리 입시, 학습, 생활 모든 것을 체계적으로 관리하여 겨울방학 동안 실력이 상승하는 공부 습관을 만들 수 있습니다." /></p>
            <div class="mt60"><img src="<%=img_path_yangji%>/2024/winter/cont07_img.jpg" alt="" /></div>
            <!-- 이미지 롤링 -->
            <div class="img-rolling swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="<%=imgUrl%>/rolling01.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=imgUrl%>/rolling02.jpg" alt="">
                    </div>
                    <% If sCampusCode <> "CD0347" Then '서의치 제외 %>
                    <div class="swiper-slide">
                        <img src="<%=imgUrl%>/rolling03.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=imgUrl%>/rolling04.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=imgUrl%>/rolling05.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=imgUrl%>/rolling06.jpg" alt="">
                    </div>
                    <% End If %>
                    <% If sCampusCode = "CD0347" Then '서의치 %>
                    <div class="swiper-slide">
                        <img src="<%=imgUrl%>/rolling07.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=imgUrl%>/rolling08.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=imgUrl%>/rolling09.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=imgUrl%>/rolling10.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=imgUrl%>/rolling11.jpg" alt="">
                    </div>
                    <% End If %>
                </div>
            </div>
            <!-- 이미지 롤링 -->
        </div>
    </div>
    <div class="cont08">
        <div class="tit_num"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont08_num.png" alt="04" /></div>
        <% If sCampusCode = "CD0347" Then '서의치 %>
        <p data-aos="fade-down"><img src="<%=imgUrl%>/cont08_tit.png" alt="메가스터디 온·오프라인 전문 강사진의 현장강의" /></p>
        <% Else %>
        <p data-aos="fade-down"><img src="<%=img_path_yangji%>/2024/winter/cont08_tit.png" alt="메가스터디 온·오프라인 전문 강사진의 현장강의" /></p>
        <% End If %>
        <div class="mt80"><img src="<%=imgUrl%>/cont08_img.jpg" alt="" /></div>
    </div>
    <div class="cont09">
        <div class="tit_num"><img src="<%=img_path_yangji%>/2024/winter/cont09_num.png" alt="05" /></div>
        <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont08_tit.png" alt="올바른 학습 습관 및 탄탄한 실력 형성 러셀 윈터스쿨 프로그램" /></p>
        <div class="inner">
            <div class="tab-wrap">
                <div class="tab-btn">
                    <a href="javascript:void(0)" class="on">학습 습관 형성</a>
                    <a href="javascript:void(0)">재원생 전용 특강</a>
                    <a href="javascript:void(0)">포트폴리오</a>
                </div>
                <!-- 학습 습관 형성 -->
                <div class="tab-cont tab02 on">
                    <ul class="cont-list">
                        <li>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/con01.jpg" alt="" /></div>
                            <div class="cont-detail">
                                <p>매일 1교시 영단어 1000</p>
                                <ul>
                                    <li>겨울방학 동안 영단어 1000개<br>
                                    암기 목표
                                    </li>
                                    <li>매일 50개의 영단어 암기 후<br>
                                    테스트 진행
                                    </li>
                                    <li>최근 출제 반영한 핵심 단어 수록 
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/con02.jpg" alt="" /></div>
                            <div class="cont-detail">
                                <p>매일 영어듣기 
                                </p>
                                <ul>
                                    <li>겨울방학 동안<br>
                                    영어 듣기 실력 향상 목표
                                    </li>
                                    <li>매일 일정한 시간에<br>
                                    바자관 재원생과 함께<br>
                                    영어듣기 기출 테스트 시행
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="pt40">
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/con03.jpg" alt="" /></div>
                            <div class="cont-detail">
                                <p>매일 국어 필수어휘
                                </p>
                                <ul>
                                    <li>수능 국어 지문 독해에 필요한<br>
                                    어휘력 향상 목표 
                                    </li>
                                    <li>수능 국어 기초 및 필수 어휘,<br>
                                    고전 시가 필수 어휘,<br>
                                     고전 소설 빈출 어휘로 구성
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="pt40">
                            <% If sCampusCode = "CD0347" Then '서의치 %>
                            <div><img src="<%=imgUrl%>/con03.jpg" alt="" /></div>
                            <div class="cont-detail pt0">
                                <p>일일 학습 플래너
                                </p>
                                <ul>
                                    <li>주기적으로 학습 플래너 점검을 통해<br>
                                    과목별 학습 밸런스 및 시기별<br>
                                    학습 목표에 대한 담임선생님과의<br>
                                    1:1 상담 진행
                                    </li>
                                    <li>시기별 학습 플래너 작성/효과 등에<br>
                                    대한 담임선생님의 교육 진행</li>
                                    <li>시간, 학습 그리고 자기 관리에<br>
                                    도움이 되도록 작성되는지<br>
                                    담임선생님이 주기적으로 확인</li>
                                    <li>전체 재원기간 학습 플래너 제공</li>
                                </ul>
                            </div>
                            <% Else %>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/con04.jpg" alt="" /></div>
                            <div class="cont-detail">
                                <p>러셀 학습 플래너</p>
                                <ul>
                                    <li>학습 목표 수립 및 자기주도학습 훈련
                                    </li>
                                    <li>매일 목표 학습량과 실제 학습량<br>
                                    비교 후 담임선생님의 피드백을 통해<br>
                                        학습 계획 점검
                                    </li>
                                </ul>
                            </div>
                            <% End If %>
                        </li>
                        <li class="pt40" style="border-right:none;">
                            <% If sCampusCode = "CD0347" Then '서의치 %>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/con05.jpg" alt="" /></div>
                            <div class="cont-detail pt0">
                                <p>일일수학 30제</p>
                                <ul>
                                    <li>담임선생님의 상담 등을 통해 매일<br>
                                    일정한 양의 수학 문제를 연습할 수<br>
                                    있도록 관리 
                                    </li>
                                    <li>과목 특성상 실수가 많이 발생할 수<br>
                                    있는데 일일수학 30제의 활용은 이를<br>
                                    효과적으로 줄일 수 있는 검증된 시스템</li>
                                    <li>수학의 양적인 학습뿐만 아니라<br>
                                    질적인 학습을 할 수 있도록 서포트</li>
                                    <li>전체 재원기간 일일수학 30제 제공</li>
                                </ul>
                            </div>
                            <% Else %>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/con05.jpg" alt="" /></div>
                            <div class="cont-detail">
                                <p>일일수학 30제</p>
                                <ul>
                                    <li>겨울방학 수학 실력 향상 목표
                                    </li>
                                    <li>매일 일정한 양의 수학 문제풀이로<br>
                                    습관 형성
                                    </li>
                                    <li>나만의 점검표 작성하여 주/월별<br>
                                    학습 현황 파악
                                    </li>
                                </ul>
                            </div>
                            <% End If %>
                        </li>
                        <li></li>
                    </ul>
                    <p class="r-txt">* 해당 콘텐츠는 러셀 윈터스쿨 재원생 대상으로 ‘전액지원’되는 콘텐츠입니다.
                    </p>
                </div>
                <!-- 재원생 전용 특강 -->
                <div class="tab-cont tab03">
                    <ul class="cont-list">
                        <li>
                            <% If sCampusCode = "CD0348" OR sCampusCode = "CD0347" Then '여기숙/서의치 %>
                            <div><img src="<%=imgUrl%>/lecture01.jpg" alt="" /></div>
                            <% Else %>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/lecture01.jpg" alt="" /></div>
                            <% End If %>
                            <div class="cont-detail">
                                <% If sCampusCode = "CD0347" Then '서의치 %>
                                <p>입시 특강</p>
                                <% Else %>
                                <p>담임선생님의 입시 특강</p>
                                <% End If %>
                                <ul>
                                    <li>각 학년에 맞춰 입시 개요 및<br>수시/정시 전형별 정보와<br>시기별 학습 방법에 대해 안내
                                    </li>
                                    <li>메디컬/최상위권 대학 등<br>목표 대학별 입시 로드맵 제시</li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <% If sCampusCode = "CD0347" Then '서의치 %>
                            <div><img src="<%=imgUrl%>/lecture02.jpg" alt="" /></div>
                            <div class="cont-detail">
                                <p>심리 특강</p>
                                <ul>
                                    <li>학습에 전념할 수 있도록 심리 전문 강사를 초빙하여 멘탈 케어 프로그램 등 심리 특강을 진행
                                    </li>
                                </ul>
                            </div>
                            <% Else %>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/lecture02.jpg" alt="" /></div>
                            <div class="cont-detail">
                                <p>과목별 학습법 특강
                                </p>
                                <ul>
                                    <li>과목별 선생님이 수능 및 내신 출제<br>방향, 과목별 학습법과 학습 전략 등<br>새학년을 앞두고 꼭 알아야 하는<br>학습 정보 안내
                                    </li>
                                </ul>
                            </div>
                            <% End If %>
                        </li>
                        <li class="pt40">
                            <% If sCampusCode = "CD0347" Then '서의치 %>
                            <div><img src="<%=imgUrl%>/lecture03.jpg" alt="" /></div>
                            <div class="cont-detail">
                                <p>수험생 맞춤 특강</p>
                                <ul>
                                    <li>과목별 학습 밸런스 및 시기별<br>
                                    학습 목표 설정을 위한 학습 플래너<br>
                                    활용법과 우수 사례 안내
                                    </li>
                                    <li>수학의 질적 학습을 위한<br>
                                    일일수학 30제 시스템 안내</li>
                                </ul>
                            </div>
                            <% Else %>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/lecture03.jpg" alt="" /></div>
                            <div class="cont-detail">
                                <p>수험생 맞춤 특강</p>
                                <ul>
                                    <li>학습 플래너, 수학 일일30제,<br>총평노트 등 효과적인 활용법과<br>우수 사례 안내</li>
                                    <li>건강한 멘탈 관리를 위한<br>심리특강 진행
                                    </li>
                                </ul>
                            </div>
                            <% End If %>
                        </li>
                        <li class="pt40">
                            <% If sCampusCode = "CD0348" OR sCampusCode = "CD0347" Then '여기숙/서의치 %>
                            <div><img src="<%=imgUrl%>/lecture04.jpg" alt="" /></div>
                            <% Else %>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/lecture04.jpg" alt="" /></div>
                            <% End If %>
                            <div class="cont-detail">
                                <p>합격생 선배와의 만남
                                </p>
                                <ul>
                                    <li>최상위권 대학에 진학한 선배들이<br>성공적인 수험생활 노하우와<br>학습방법에 대해 전수</li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- 포트폴리오 -->
                <div class="tab-cont tab04">
                    <div class="cont-pf">
                        <div class="slide-box">
                            <div class="swiper-container pf-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <img src="<%=imgUrl%>/tab_img04_1.jpg" alt="" />
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="<%=imgUrl%>/tab_img04_2.jpg" alt="" />
                                    </div>
                                    <% If sCampusCode = "CD0348" OR sCampusCode = "CD0347" Then '여기숙/서의치 %>
                                    <div class="swiper-slide">
                                        <img src="<%=imgUrl%>/tab_img04_3.jpg" alt="" />
                                    </div>
                                    <% End If %>
                                </div>
                                <div class="swiper-pagination type01"></div>
                            </div>
                        </div>
                        <div class="cont-detail">
                            <p>윈터스쿨 포트폴리오</p>
                            <ul>
                                <% If sCampusCode = "CD0347" OR sCampusCode = "CD0348" Then '서의치/여기숙 %>
                                <li>
                                    윈터스쿨 기간의 학습 성취도와<br>
                                최신 입시 정보를 확인할 수 있도록<br>
                                      입시 담임선생님이 직접 제작한 종합 안내문
                                </li>
                                <li>출결 및 자습 현황, 영단어/영어듣기 성적, 실전모의고사 성적,<br>
                                
                                    태도 점수, 담임 상담 내용을<br>
                                    자세히 기록하여 겨울방학 학습 현황 확인</li>
                                <% Else %>
                                <li>윈터스쿨 기간의 학습 성취도와 최신 입시 정보를 확인할 수<br>
                                있도록 입시 담임선생님이 직접 제작한 종합 안내문

                                </li>
                                <li>자습 현황, 영단어/영어듣기 성적,  태도 점수,<br>
                                담임 상담 내용을 
                                    자세히 기록하여  겨울방학 학습 현황 확인</li>
                                <li>주간테스트/일일테스트 성적</li>
                                <li>종강 모의고사 성적표</li>
                                <li>학생부 분석</li>
                                <li>교육 점수 현황</li>
                                <li>담임선생님 총평 등</li>
                                <% End If %>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="cont10">
        <div class="tit_num"><img src="<%=img_path_yangji%>/2024/winter/cont10_num.png" alt="06" /></div>
        <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont09_tit.png" alt="겨울방학 최종 마무리 윈터스쿨 실전모의고사" /></p>
        <div class="inner">
            <div class="w-tab-wrap">
                <div class="w-tab-btn">
                    <a href="javascript:void(0)" class="on">윈터스쿨 실전모의고사</a>
                    <a href="javascript:void(0)">수학 아이젠</a>
                </div>
                <div class="w-tab-con on">
                    <p>
                        겨울방학 최종 마무리<br>
                        <strong>윈터스쿨 실전모의고사</strong>
                    </p>
                    <div class="winter-dscr">
                        <div class="winter-slide swiper-container">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont09_slide01.jpg" alt="" />
                                </div>
                                <div class="swiper-slide">
                                    <img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont09_slide02.jpg" alt="" />
                                </div>
                                <% If sCampusCode <> "CD0347" Then '남학생기숙 제외 %>
                                <div class="swiper-slide">
                                    <img src="<%=imgUrl%>/cont09_slide03.jpg" alt="" />
                                </div>
                                <div class="swiper-slide">
                                    <img src="<%=imgUrl%>/cont09_slide04.jpg" alt="" />
                                </div>
                                <% End If %>
                            </div>
                            <div class="swiper-pagination type02"></div>
                        </div>
                        <ul class="dscr-list">
                            <li>엄선한 전문 집단의 문항 개발 및 검토 </li>
                            <li>전국 러셀&amp;메가스터디 학원 재원생과 경쟁해 볼 수 있는 기회</li>
                            <% If sCampusCode <> "CD0258" Then '남기숙 제외 %>
                            <li>집체 모의고사로 응시로 수능 실전 경험</li>
                            <% End If %>
                            <li>겨울방학 기간 과목별 학습 성과 확인, 현재 위치 점검</li>
                            <li class="point-color">3월 학평과 동일한 출제 범위로 출제되어 학평 대비 가능(국어/수학/영어)</li>
                            <li>개인별 성적표를 토대로 향후 학습 계획 등 1:1 상담</li>
                        </ul>
                    </div>
                    <p class="r-txt mt0">* 유료로 시행되는 학습 콘텐츠로 학원별로 시행 일정이  상이합니다.
                    </p>

                </div>
                <div class="w-tab-con">
                    <p>
                        집중 관리형 학습 콘텐츠<br>
                        <strong>수학 아이젠</strong>
                    </p>
                    <div class="winter-dscr">
                        <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont09_img.jpg" alt="" /></div>
                        <ul class="dscr-list">
                            <li>
                                <span>아이젠·아이젠 블랙 2종의 구성으로</span><br>
                                나의 학습 상황에 맞춰 선택하여 수준별 학습 가능<br>
                                <span class="mt10">
                                    &middot; 아이젠 : 기본기와 핵심 개념학습<br>
                                    &middot;  아이젠 블랙 : 최상위권 대상 고난도 하드 트레이닝</span>
                            </li>
                            <li>매일 12제로 겨울방학 6주간 총 432제 제공</li>
                            <li><span>담임선생님의</span> 철저한 과제 관리 및 학습 상담 진행</li>
                            <li><span>학습 점검을 위해</span> 매주 확인 테스트 및 성적표 제공</li>
                        </ul>
                    </div>
                    <p class="r-txt">* 유료로 시행되는 학습 콘텐츠로 학원별로 진행 여부 및 진행 방식이 상이합니다.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>