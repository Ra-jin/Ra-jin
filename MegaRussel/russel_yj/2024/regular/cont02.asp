<div class="cont js-cont">
    <!-- cont04 -->   
    <div class="cont04">
        <div class="inner">
            <p data-aos="fade-up" class="tit mb70"><img src="<%=img_path_yangji%>/2024/regular/cont04_tit.png" alt="더 높은 목표 달성을 위한 또 한번의 도전 러셀 기숙학원에서 더 빠르게 시작해야 하는 이유는 분명합니다." /></p>
            <p class="border20"><img src="<%=imgUrl%>/cont04_img.png" alt="" /></p>            
        </div>
    </div>

    <!-- //cont04 -->
    <!-- cont05 -->

    <div class="cont05">
        <div class="inner">
            <p class="tit mb85" data-aos="flip-up"><img src="<%=img_path_yangji%>/2024/regular/cont05_tit.png" alt="러셀 강남,대치 및 인강 출강 메가스터디 온,오프라인 No.1 강사진의 현장 강의" /></p>
            <p><img src="<%=imgUrl%>/cont05_img.png" alt="" /></p>
        </div>
    </div>
    <!-- //cont05 -->
    <!-- cont06 -->
    <div class="cont06">
        <div class="inner">
            <p class="tit" data-aos="flip-up"><img src="<%=img_path_yangji%>/2024/regular/cont06_tit.png" alt="학업 성취도에 맞춘 전 과목 수준별 수업 최소 의무수업 진행 및 충분한 자습시간 확보로 학습량 증가" /></p>
            <p class="border20 mt70"><img src="<%=imgUrl%>/cont06_img.png" alt="" /></p>
        </div>
    </div>
    <!-- //cont06 -->
    <!-- cont07 -->
    <% If sCampusCode = "CD0258" Then '기숙남 %>
    <div class="cont07">
        <div class="inner">
            <p class="tit" data-aos="flip-up"><img src="<%=img_path_yangji%>/2024/regular/cont07_tit.png" alt="" /></p>
            <p class="border20 mt70"><img src="<%=img_path_yangji%>/2024/regular/cont07_img.png" alt="" /></p>
        </div>
    </div>
    <% End If %>
    <!-- //cont07 -->

    <div class="cont08">
        <div class="inner">
            <p class="tit" data-aos="flip-up"><img src="<%=imgUrl%>/cont08_tit.png" alt="최상위권 전문 입시 담임 선생님의 철저한 1:1 관리" /></p>
            <div class="study-swiper">
                <div class="study-slide-nav">
                    <div class="swiper-wrapper" style="z-index: 5;">
                        <div class="swiper-slide on"><a href="javascript:void(0)">입시관리</a></div>
                        <div class="swiper-slide"><a href="javascript:void(0)">학습관리</a></div>
                        <div class="swiper-slide"><a href="javascript:void(0)">생활관리</a></div>
                        <div class="swiper-slide"><a href="javascript:void(0)">생활규정</a></div>
                    </div>
                </div>
                <div class="swiper-container study-slide">
                    <div class="swiper-wrapper">
                        <!-- 입시관리 -->
                        <div class="swiper-slide tabslide">
                            <div style="margin-left:85px;">
                                <div class="study_list">
                                    <p>최적의 입시전략 제시</p>
                                    <ul>
                                        <li>수능 성적부터 모의고사까지 성적 데이터를 체계적으로 관리
                                        </li>
                                        <% If sCampusCode = "CD0347" Then '서의치기숙 %>
                                        <li>재원생 결과를 기반으로 개인 목표에 맞춘 입시(수시/정시) 로드맵 및<br>
                                        목표 대학 합격 가능성 제시</li>
                                        <% Else %>
                                        <li>재원생 결과를 기반으로 개인 목표에 맞춘 입시(수시/정시) 방향 제시</li>
                                        <% End If %>
                                    </ul>
                                </div>
                                <div class="study_list">
                                    <p>개인 맞춤 1:1 상담</p>
                                    <ul>
                                        <li>성적 포트폴리오와 실제 사례를 기반으로 한 체계적, 전문적 상담</li>
                                        <li>목표 학교/학과에 필요한 요소와 점수 확보에 최적화된 학습 계획 수립</li>
                                    </ul>
                                </div>
                                <div class="study_list">
                                    <p>입시 설명회 및 공개특강</p>
                                    <ul>
                                        <li>최상위권  대학 합격 선배와의 간담회, 입시/학습 특강 진행</li>
                                        <li>최신 수험 정보와 다양한 입시 콘텐츠 제공</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="swiper-container tab-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=imgUrl%>/cont07_tab01_img01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=imgUrl%>/cont07_tab01_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=imgUrl%>/cont07_tab01_img03.jpg" alt="" /></div>
                                </div>
                            </div>
                        </div>
                        <!-- 학습관리 -->
                        <div class="swiper-slide tabslide">
                            <div style="margin-left:85px;">
                                <div class="study_list">
                                    <p>올바른 학습 루틴 형성</p>
                                    <ul>
                                        <li>수험생 상황에 맞춰 적합한 학습방법 설계</li>
                                        <li>담임선생님의 학습 플래너 점검을 통한 학습 스케줄링 능력 향상</li>
                                        <% If sCampusCode = "CD0258" Then '남기숙 %>
                                        <li>부족함 없는 개인 자습시간 활용을 위해 1인 1태블릿 제공</li>
                                        <% End If %>
                                    </ul>
                                </div>
                                <div class="study_list">
                                    <p>균형 있는 학습 습관 형성</p>
                                    <ul>
                                        <li>러셀 학습 콘텐츠를 활용한 학습법 제시</li>
                                        <li>지금까지의 학습법 점검과 개선으로 균형적인 공부 습관 형성
                                        </li>
                                    </ul>
                                </div>
                                <div class="study_list">
                                    <p>개별 학습 상담</p>
                                    <ul>
                                        <% If sCampusCode = "CD0347" Then '서의치기숙 %>
                                        <li>1:1 학습 상담을 통해 개인별 학습 계획 및 전 과목 상태 점검</li>
                                        <% End If %>
                                        <li>전 과목 학습 상태 분석으로 과목별 학습량 조절 및 약점 보완 방법 제시</li>
                                        <li>학습 고민 상담을 통한 멘탈 케어 및 구체적인 학습전략과 노하우 전수</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="swiper-container tab-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=imgUrl%>/cont07_tab02_img01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=imgUrl%>/cont07_tab02_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=imgUrl%>/cont07_tab02_img03.jpg" alt="" /></div>
                                </div>
                            </div>
                        </div>
                        <!-- 생활관리 -->
                        <div class="swiper-slide tabslide">
                            <div style="margin-left:85px;">
                               
                                <div class="study_list">
                                    <p>수업 출결 관리 시스템</p>
                                    <ul>
                                        <% If sCampusCode = "CD0258" OR sCampusCode = "CD0348" Then '남기숙/여기숙 %>
                                        <li>매 교시 철저한 수업 출결 관리 및 상시 모니터링
                                        </li>
                                        <% Else %>
                                        <li>매 교시 철저한 출결 관리 및 상시 모니터링
                                        </li>
                                        <% End If %>
                                        <li>수업시간과 자습시간 관리로 규칙적인 생활 습관 형성 
                                        </li>
                                    </ul>
                                </div>
                             
                                <div class="study_list">
                                    <p>정신적 멘토링</p>
                                    <ul>
                                        <li>학생에 대한 존중과 배려로 동반자 역할 수행</li>
                                        <% If sCampusCode = "CD0348" Then '여기숙 %>
                                        <li>바른공부 자습전용관 가장 가까운 곳에 담임선생님 상주</li>
                                        <% End If %>
                                        <li>학습 고충 및 슬럼프를 긍정적으로 극복할 수 있도록 정신적 멘토링 진행</li>
                                        <li>1:1 상담을 통한 목표 상기 등 지속적인 학습동기 부여</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="swiper-container tab-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=imgUrl%>/cont07_tab03_img01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=imgUrl%>/cont07_tab03_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=imgUrl%>/cont07_tab03_img03.jpg" alt="" /></div>
                                </div>
                            </div>
                        </div>
                        <!-- 생활규정 -->
                        <div class="swiper-slide tabslide">
                            <div style="margin-left:85px;">
                                <div class="study_list bn">
                                    <p>안전한 학습 환경을 위한 생활규정 운영
                                    </p>
                                    <ul>
                                        <li>학습에 꼭 필요한 것과 불필요한 것을 엄격하게 관리</li>
                                        <li>강력한 학원 생활규정과 교육점수 제도  운영</li>
                                        <li>규정 위반 및 점수 초과 시 제적(근신) 처리 (징계위원회 결정)</li>
                                        <li>면학분위기 저해 요소 차단으로 학습집중도 향상</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=imgUrl%>/cont07_tab04_img01.jpg" alt="" /></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- //cont08 -->
    <!-- cont09 -->
    <div class="cont09">
        <div class="inner">
            <p class="tit" data-aos="flip-up"><img src="<%=imgUrl%>/cont09_tit.png" alt="" /></p>
            <div class="level-wrap mt70">
                <div class="d-flex">
                    <h3 class="mr50 mt10"><strong>승반&middot;강반 제도</strong><br>
                        <ul class="list-03">
                            <li>모의고사, 평가원 성적과 학습 태도 점수를 바탕으<br>로 엄격하게 <strong>수준별 반편성 실시 및 연 2~3회 수준<br>별 승반·강반 운영</strong></li>
                            <li>바자관 재원생들간의 <strong>선의의 경쟁, 학구열에 대한 <br>보상</strong>, 반대로 학습상태에 대한 경각심을 심어주며<br> <strong>재원생들의 명확한 목표 지향점 제공</strong></li>
                            <li>학습 동기 부여로 집단적인 면학분위기와 긍정적<br>인 긴장감 조성, 지속적인 학습 태도 및 성적 향상<br> 관리 가능</li>
                        </ul>
                    </h3>
                    <div class="box">
                        <p><img src="<%=img_path_yangji%>/2024/regular/cont09_level01.jpg" alt="강반, 승반" /></p>
                        <span class="arrow05"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_arrow05.png" alt="" /></span>
                        <span class="arrow06"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_arrow06.png" alt="" /></span>
                        <% If sCampusCode = "CD0348" Then '여기숙 %>
                        <span class="balloon01"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_balloon.png" alt="" /></span>
                        <span class="balloon02"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_balloon.png" alt="" /></span>
                        <% End If %>
                    </div>
                </div>
                <% If sCampusCode <> "CD0348" Then '여기숙제외 %>
                <p class="mt50"><img src="<%=imgUrl%>/cont09_level02.jpg" alt="승반" /></p>
                <% End If %>
                <p class="mt20 tac"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_plus.png" alt="플러스" /></p>
                <p class="mt20"><img src="<%=imgUrl%>/cont09_scholarship.jpg" alt="장학제도" /></p>
            </div>
        </div>
    </div>

    <!-- //cont09 -->
    
   
    <!-- cont10 -->
    <div class="cont10">
        <% If sCampusCode = "CD0347" Then '서의치 %>
        <h2 data-aos="flip-up"><img src="<%=imgUrl%>/cont10_tit.png" alt="학습에만 집중할 수 있는 학습 공간과 쾌적하고 편리한 생활공간" /></h2>
        <% Else %>
        <h2 data-aos="flip-up"><img src="<%=img_path_yangji%>/2024/regular/cont10_tit.png" alt="학습에만 집중할 수 있는 학습 공간과 쾌적하고 편리한 생활공간" /></h2>
        <% End If %>
        <p class="border20 mt70"><img src="<%=imgUrl%>/cont10_img.png" alt="" /></p>
    </div>
    <!-- //cont10 -->
   
    <!-- cont11 -->
    <div class="cont11">
        <% If sCampusCode = "CD0347" Then '서의치 %>
        <h2 data-aos="flip-up"><img src="<%=imgUrl%>/cont11_tit.png" alt="최상위권 대학에 홥격한 선배들이 학습한 실전 학습콘텐츠" /></h2>
        <p class="border20 mt80"><img src="<%=imgUrl%>/cont11_img01.png" alt="" /></p>
        <% Else %>
        <h2 data-aos="flip-up"><img src="<%=img_path_yangji%>/2024/regular/cont11_tit.png" alt="최상위권 대학에 홥격한 선배들이 학습한 실전 학습콘텐츠" /></h2>
        <p class="border20 mt80"><img src="<%=img_path_yangji%>/2024/regular/cont11_img01.png" alt="" /></p>
        <p class="border20 mt50"><img src="<%=img_path_yangji%>/2024/regular/cont11_img02.png" alt="" /></p>
        <% End If %>
        <div class="inner03">
            <div class="mock-schedule">
                <p class="mt70"><span>연간 시행 일정</span></p>
                <div class="tb-wrap">
                    <table>
                        <colgroup>
                            <col style="width:12%" />
                            <col style="width:8%" />
                            <col style="width:8%" />
                            <col style="width:8%" />
                            <col style="width:8%" />
                            <col style="width:8%" />
                            <col style="width:8%" />
                            <col style="width:8%" />
                            <col style="width:8%" />
                            <col style="width:8%" />
                            <col style="width:8%" />
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="2">구분</th>
                                <th>2월</th>
                                <th>3월</th>
                                <th>4월</th>
                                <th>5월</th>
                                <th>6월</th>
                                <th>7월</th>
                                <th>8월</th>
                                <th>9월</th>
                                <th>10월</th>
                                <th>11월</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- <tr>
                                <th>평가원</th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="bg-01">6평</td>
                                <td></td>
                                <td></td>
                                <td class="bg-01">9평</td>
                                <td></td>
                                <td class="bg-01">수능</td>
                            </tr> -->
                            <tr>
                                <th rowspan="3">QUEL</th>
                                <td>QUEL <br>모의고사</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="bg-02">1회</td>
                                <td></td>
                                <td></td>
                                <td class="bg-02">2회</td>
                                <td class="bg-02">3회</td>
                                <td class="bg-02">4~5회</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>E-QUEL <br> 모의고사</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="bg-02-01">8/22(목)</td>
                                <td></td>
                                <td></td>
                                <td class="bg-02-01">11/1(금)</td>
                            </tr>
                            <tr>
                                <td>QUEL:UNIT</td>
                                <td></td>
                                <td class="bg-02-02">1~4회차</td>
                                <td class="bg-02-02">5~8회차</td>
                                <td class="bg-02-02">9~12회차</td>
                                <td class="bg-02-02">13~16회차</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th colspan="2">메가X대성 <br> 더 프리미엄 모의고사</th>
                                <td></td>
                                <td class="bg-03">3/22(금)</td>
                                <td class="bg-03">4/16(화)</td>
                                <td class="bg-03">5/21(화)</td>
                                <td></td>
                                <td class="bg-03">7/5(금)</td>
                                <td></td>
                                <td class="bg-03">9/27(금)</td>
                                <td class="bg-03">10/22(화)</td>
                                <td></td>
                            </tr>                 
                            <tr>
                                <th colspan="2">월간 학습지<br>(월간 장영진)</th>
                                <td></td>
                                <td class="bg-05">3월호</td>
                                <td class="bg-05">4월호</td>
                                <td class="bg-05">5월호</td>
                                <td class="bg-05">6월호</td>
                                <td class="bg-05">7월호</td>
                                <td class="bg-05">8월호</td>
                                <td class="bg-05">9월호</td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <p class="comment03 mt10 mb20">* 상기 일정은 평가원 시행 계획 및 학원 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
        </div>
        <% If sCampusCode = "CD0347" Then '서의치 %>
        <p class="border20 mt50"><img src="<%=img_path_russelsm%>/2024/regular/cont11_img02.png" alt="" /></p>
        <% End If %>
    </div>
    <!-- //cont11 -->
</div>
