<!-- 윈터스쿨 안내 -->
<div class="cont js-cont">
    <div class="cont03">
        <div class="inner">
            <p class="tit"><img src="<%=img_path_yangji%>/2023/winter/cont03_tit.png" alt="왜 러셀 기숙학원 윈터스쿨일까요? 최상위권이 먼저 선택하고 만족하는 러셀 기숙학원 윈터스쿨" /></p>
            <p class="txt"><img src="<%=img_path_yangji%>/2023/winter/cont03_txt.png" alt="러셀 기숙학원 윈터스쿨 재원생 만족도98% 검증된 강사진, 프리미엄 시설, 전문적인 관리가 만들어 낸 압도적인 결과입니다." /></p>
            <p class="mt70"><img src="<%=img_path_yangji%>/2023/winter/cont03_img01.png" alt="" /></p>
            <p class="r-txt mt45">1) 2023년 최상위권 남학생 의대전문관 러셀 기숙학원 윈터스쿨 재원생 대상 만족도 조사 결과<br>
            2) 만족도 = 매우 만족, 만족, 보통 응답자 비율</p>
            <% If sCampusCode = "CD0348" OR sCampusCode = "CD0347" Then '여자기숙,서의치기숙 %>
            <p class="mt70"><img src="<%=img_path_russelw%>/2023/winter/cont03_img02.png" alt="" /></p>
            <% Else %>
            <p class="mt70"><img src="<%=img_path_yangji%>/2023/winter/cont03_img02.png" alt="" /></p>
            <% End If %>
            <p class="r-txt mt30">※ 최상위권 남학생 의대전문관 러셀 기숙학원 2023 윈터스쿨 재원생 후기 내용입니다.</p>
        </div>
    </div>
    <div class="cont04">
        <div class="inner">
            <p class="tit mb60"><img src="<%=img_path_yangji%>/2023/winter/cont04_tit.png" alt="러셀 기숙학원 윈터스쿨, 왜 최상위권이 먼저 선택할까요?" /></p>
            <p class="txt mb80"><img src="<%=img_path_yangji%>/2023/winter/cont04_txt.png" alt="학생중심으로 설계된 러셀 기숙학원 윈터스쿨에는 실력향상은 물론 최상위권으로 도약하기 위한 모든 것이 준비되어있기 때문입니다." /></p>
            <% If sCampusCode = "CD0347" Then '서의치기숙 %>
            <p><img src="<%=img_path_russelsm%>/2023/winter/cont04_img.png" alt="" /></p>
            <% Else %>
            <p><img src="<%=img_path_yangji%>/2023/winter/cont04_img.png" alt="" /></p>
            <% End If %>
        </div>
    </div>
    <div class="cont05">
        <div class="inner">
            <p class="mb40"><img src="<%=img_path_yangji%>/2023/winter/cont05_ico.png" alt="" /></p>
            <p class="tit mb85"><img src="<%=img_path_yangji%>/2023/winter/cont05_tit.png" alt="러셀 강남,대치 및 인강 출강 메가스터디 온,오프라인 No.1 강사진의 현장 강의" /></p>
            <% If sCampusCode = "CD0348" Then '여자기숙 %>
            <p><img src="<%=img_path_russelw%>/2023/winter/cont05_img.jpg" alt="" /></p>
            <p class="r-txt" style="margin-top:16px;">※ 최상위권 남학생 의대전문관 러셀 기숙학원 합격생의 후기 내용입니다.</p>
            <% ElseIf sCampusCode = "CD0347" Then '서의치기숙 %>
            <p><img src="<%=img_path_russelsm%>/2023/winter/cont05_img.png" alt="" /></p>
            <p class="r-txt" style="margin-top:16px;">※ 최상위권 남학생 의대전문관 러셀 기숙학원 합격생의 후기 내용입니다.<br>
            ※ 강사진은 운영 상황에 따라 변경될 수 있습니다.</p>
            <% Else %>
            <p><img src="<%=img_path_yangji%>/2023/winter/cont05_img.jpg" alt="" /></p>
            <p class="r-txt" style="margin-top:16px;">※ 최상위권 남학생 의대전문관 러셀 기숙학원 합격생의 후기 내용입니다.</p>
            <% End If %>
        </div>
    </div>
    <div class="cont06">
        <div class="inner">
            <p class="mb40"><img src="<%=img_path_yangji%>/2023/winter/cont06_ico.png" alt="" /></p>
            <p class="tit"><img src="<%=img_path_yangji%>/2023/winter/cont06_tit.png" alt="학업 성취도에 맞춘 전 과목 수준별 수업 최소 의무수업 진행 및 최대 자습시간 확보로 압도적인 학습량" /></p>
            <% If sCampusCode = "CD0347" Then '서의치기숙 %>
            <p><img src="<%=img_path_russelsm%>/2023/winter/cont06_img.png" alt="" /></p>
            <% Else %>
            <p><img src="<%=img_path_yangji%>/2023/winter/cont06_img.png" alt="" /></p>
            <% End If %>
        </div>
    </div>
    <div class="cont07">
        <div class="inner">
            <p class="mb40"><img src="<%=img_path_yangji%>/2023/winter/cont07_ico.png" alt="" /></p>
            <p class="tit"><img src="<%=img_path_yangji%>/2023/winter/cont07_tit.png" alt="최상위권에 검증된 러셀 기숙학원 관리력 최상위권 역임 입시 담임선생님의 철저한 1:1 관리" /></p>
            <div class="study-swiper">
                <div class="study-slide-nav">
                    <div class="swiper-wrapper" style="z-index: 5;">
                        <div class="swiper-slide on"><a href="javascript:void(0)">입시관리</a></div>
                        <div class="swiper-slide"><a href="javascript:void(0)">학습관리</a></div>
                        <div class="swiper-slide"><a href="javascript:void(0)">생활관리</a></div>
                        <div class="swiper-slide"><a href="javascript:void(0)">가정통신문</a></div>
                    </div>
                </div>
                <div class="swiper-container study-slide">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide tabslide">
                            <div style="margin-left:85px;">
                                <div class="study_list">
                                    <p>최적의 입시 전략 제시</p>
                                    <% If sCampusCode = "CD0347" Then '서의치기숙 %>
                                    <ul>
                                        <li>입시 담임선생님 전원 러셀 입시 컨설턴트 전문교육과정 시행 및 수료</li>
                                        <li>재원생 결과를 기반으로 개인 목표에 맞춘 최적화된 입시(수시/정시) 로드맵 및<br>목표 대학 합격 가능성 제시</li>
                                    </ul>
                                    <% Else %>
                                    <ul>
                                        <li>입학 전 성적부터 모의고사까지 성적 데이터를 체계적으로 관리</li>
                                        <li>재원생 결과를 기반으로 개인 목표에 맞춘 입시(수시/정시) 방향 제시</li>
                                    </ul>
                                    <% End If %>
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
                                    <% If sCampusCode = "CD0348" Then '여자기숙 %>
                                    <div class="swiper-slide"><img src="<%=img_path_russelw%>/2023/winter/cont07_tab01_img01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=img_path_russelw%>/2023/winter/cont07_tab01_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=img_path_russelw%>/2023/winter/cont07_tab01_img03.jpg" alt="" /></div>
                                    <% ElseIf sCampusCode = "CD0347" Then '서의치기숙 %>
                                    <div class="swiper-slide"><img src="<%=img_path_russelsm%>/2023/winter/cont07_tab01_img01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=img_path_russelsm%>/2023/winter/cont07_tab01_img02_1.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=img_path_russelsm%>/2023/winter/cont07_tab01_img03.jpg" alt="" /></div>
                                    <% Else %>
                                    <div class="swiper-slide"><img src="<%=img_path_yangji%>/2023/winter/cont07_tab01_img01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=img_path_yangji%>/2023/winter/cont07_tab01_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=img_path_yangji%>/2023/winter/cont07_tab01_img03.jpg" alt="" /></div>
                                    <% End If %>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide tabslide">
                            <div style="margin-left:85px;">
                                <div class="study_list">
                                    <p>올바른 학습 루틴 형성</p>
                                    <ul>
                                        <li>수험생 상황에 맞춰 적합한 학습 방법 설계</li>
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
                                        <li>윈터스쿨 기간 체득한 습관을 토대로 균형적인 공부 습관 형성</li>
                                    </ul>
                                </div>
                                <div class="study_list">
                                    <p>개별 학습 상담</p>
                                    <ul>
                                        <% If sCampusCode = "CD0347" Then '서의치기숙 %>
                                        <li>1:1 학습 상담을 통해 개인별 학습 계획 및 전 과목 상태 점검</li>
                                        <% End If %>
                                        <li>전 과목 학습 상태 분석으로 과목별 학습량 조절 및 약점 보완 방법 제시</li>
                                        <li>학습 고민 상담을 통한 멘탈 케어 및 구체적인 학습 전략과 노하우 전수</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="swiper-container tab-slide">
                                <div class="swiper-wrapper">
                                    <% If sCampusCode = "CD0348" Then '여자기숙 %>
                                    <div class="swiper-slide"><img src="<%=img_path_russelw%>/2023/winter/cont07_tab02_img01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=img_path_russelw%>/2023/winter/cont07_tab02_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=img_path_russelw%>/2023/winter/cont07_tab02_img03.jpg" alt="" /></div>
                                    <% ElseIf sCampusCode = "CD0347" Then '서의치기숙 %>
                                    <div class="swiper-slide"><img src="<%=img_path_russelsm%>/2023/winter/cont07_tab02_img01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=img_path_russelsm%>/2023/winter/cont07_tab02_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=img_path_russelsm%>/2023/winter/cont07_tab02_img03.jpg" alt="" /></div>
                                    <% Else %>
                                    <div class="swiper-slide"><img src="<%=img_path_yangji%>/2023/winter/cont07_tab02_img01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=img_path_yangji%>/2023/winter/cont07_tab02_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=img_path_yangji%>/2023/winter/cont07_tab02_img03.jpg" alt="" /></div>
                                    <% End If %>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide tabslide">
                            <div style="margin-left:85px;">
                                <div class="study_list">
                                    <p>출결 관리와 태도 점수 제도</p>
                                    <ul>
                                        <% If sCampusCode = "CD0347" Then '서의치기숙 %>
                                        <li>1일 8회 이상 매 교시 철저한 출결 관리 및 상시 모니터링</li>
                                        <li>면학분위기 저해 요소 관리</li>
                                        <li>엄격한 기준의 태도 점수 제도 운영</li>
                                        <li>자습 시간 중 자리 이동 제한 등 불필요한 요소 차단 및 관리</li>
                                        <% Else %>
                                        <li>매 교시 철저한 출결 관리 및 상시 모니터링</li>
                                        <li>강력한 학원 생활 규정 시행으로 태도 점수 초과 시 최대 퇴원 조치</li>
                                        <li>외부의 유해요소 전면 차단 등 면학분위기 저해 요소 엄격 관리</li> 
                                        <% End If %>
                                    </ul>
                                </div>
                                <div class="study_list">
                                    <p>정신적 멘토링</p>
                                    <ul>
                                        <li>학생에 대한 존중과 배려로 동반자 역할 수행</li>
                                        <% If sCampusCode <> "CD0347" Then '서의치기숙 %>
                                        <li>바른공부 자습전용관 가장 가까운 곳에 담임선생님 상주</li>
                                        <% End If %>
                                        <li>학습 고충 및 슬럼프를 긍정적으로 극복할 수 있도록 정신적 멘토링 진행</li>
                                        <li>1:1 상담을 통한 목표 상기 등 지속적인 학습동기 부여</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="swiper-container tab-slide">
                                <div class="swiper-wrapper">
                                    <% If sCampusCode = "CD0348" Then '여자기숙 %>
                                    <div class="swiper-slide"><img src="<%=img_path_russelw%>/2023/winter/cont07_tab03_img01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=img_path_russelw%>/2023/winter/cont07_tab03_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=img_path_russelw%>/2023/winter/cont07_tab03_img03.jpg" alt="" /></div>
                                    <% ElseIf sCampusCode = "CD0347" Then '서의치기숙 %>
                                    <div class="swiper-slide"><img src="<%=img_path_russelsm%>/2023/winter/cont07_tab03_img01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=img_path_russelsm%>/2023/winter/cont07_tab03_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=img_path_russelsm%>/2023/winter/cont07_tab03_img03.jpg" alt="" /></div>
                                    <% Else %>
                                    <div class="swiper-slide"><img src="<%=img_path_yangji%>/2023/winter/cont07_tab03_img01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=img_path_yangji%>/2023/winter/cont07_tab03_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=img_path_yangji%>/2023/winter/cont07_tab03_img03.jpg" alt="" /></div>
                                    <% End If %>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide tabslide">
                            <div style="margin-left:85px;">
                                <div class="study_list bn">
                                    <p>가정통신문 배부</p>
                                    <ul>
                                        <li>윈터스쿨 기간의 학습 성취도와 최신 입시 정보를 확인할 수 있도록<br>
                                            입시 담임선생님이 직접 제작한 종합 안내문</li>
                                        <li>윈터스쿨 기간의 출결 및 자습 현황,<br>
                                            영단어/영어듣기 프로그램 참여 및 성적,<br> 
                                            실전모의고사 성적, 태도 점수, 담임 상담 내용을<br>
                                            자세히 기록하여 겨울방학 학습 현황 확인</li>
                                    </ul>
                                </div>
                                <% If sCampusCode = "CD0348" OR sCampusCode = "CD0347" Then '여자기숙,서의치기숙 %>
                                <p class="txt">* 본 콘텐츠는 최상위권 남학생 의대전문관 러셀 기숙학원의 윈터스쿨 포트폴리오입니다.<br>
                                저작권법의 보호를 받는 저작물로써 무단전재 및 무단복제와 배포를 금합니다.</p>
                                <% Else %>
                                <p class="txt">* 본 콘텐츠는 저작권법의 보호를 받는 저작물로써<br>무단전재 및 무단복제와 배포를 금합니다.</p>
                                <% End If %>
                            </div>
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=img_path_yangji%>/2023/winter/cont07_tab04_img.jpg" alt="" /></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="cont08">
        <div class="inner">
            <p class="mb40"><img src="<%=img_path_yangji%>/2023/winter/cont08_ico.png" alt="" /></p>
            <p class="tit"><img src="<%=img_path_yangji%>/2023/winter/cont08_tit.png" alt="학생을 위한 생각으로 기숙학원 공간 설계 학습에만 집중할 수 있는 학습공간과 쾌적하고 편리한 생활공간" /></p>
            <% If sCampusCode = "CD0348" Then '여기숙 %>
            <p><img src="<%=img_path_russelw%>/2023/winter/cont08_img.png" alt="" /></p>
            <% ElseIf sCampusCode = "CD0347" Then '서의치기숙 %>
            <p><img src="<%=img_path_russelsm%>/2023/winter/cont08_img.png" alt="" /></p>
            <% Else %>
            <p><img src="<%=img_path_yangji%>/2023/winter/cont08_img.png" alt="" /></p>
            <% End If %>
        </div>
    </div>
</div>

