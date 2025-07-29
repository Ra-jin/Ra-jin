<div class="cont js-cont <%=campusName%>">
    <div class="cont03">
        <div class="inner">
            <h3 class="mb60" data-aos="fade-up"><img src="<%=imgUrl%>/cont03_tit.png" alt="" /></h3>
            <h3 class="mb50" data-aos="fade-up"><img src="<%=imgUrl%>/cont03_stit01.png" alt="" /></h3>
            <% If sCampusCode = "CD0348" or sCampusCode = "CD0258"  Then '여기숙/남기숙%>
            <ul class="class-list">
                <li>
                    <span>기존 기숙학원 대비<br>
                        <strong>의무수업 <br>최대 50% 축소</strong><sub>1)</sub>
                    </span>                        
                </li>
                <li>
                    <span>의무수업 축소로<br>
                        <strong>충분한 자습시간 <br>
                            최대 40% 증가</strong><sub>2)</sub>
                    </span>
                </li>
                <li>
                    <span>입시 담임선생님의<br>
                        <strong>24시간 밀착 관리</strong>
                    </span>
                </li>
                <li>
                    <span>엄격한 생활 규정으로<br>
                        <strong>규칙적인 생활</strong>
                    </span>
                </li>
            </ul>
            <div class="learning-box">
                <div class="box01">
                    <p class="pt60">학기 중 학습량</p>
                    <div class="circle c-01">학교/내신관리<strong>41T</strong></div>
                    <div class="circle c-02">학원+자습<strong>47T</strong></div>
                </div>
                <div class="box02">
                    <p class="pt60">러셀 기숙학원 학습량 <br> <span>(비약적인 학습량 증가)</span></p>
                    <div class="circle c-01">필수 <br>선택 수업<br><strong>7T</strong></div>
                    <div class="circle c-02">필수 수업 <br><strong>10.5~14T</strong></div>                                    
                    <div class="circle c-03">의무자습<br><strong>67~70.5T</strong></div>
                </div>
            </div>
            <p class="r-txt mt10">
                1) 기존 기숙학원 의무수업 42T 대비 러셀 기숙학원 의무수업 21T 비교  시 수치 <br>
                2) 학기 중 학원+자습시간 47T 대비 러셀 기숙학원 자습시간 67T 비교<br>
                * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함<br>
                * 실제 학원 운영상황에 따라 변경될 수 있습니다.
            </p>
            <% ElseIf sCampusCode = "CD0347" Then '서의치 %>
            <ul class="class-list">
                <li>
                    <span>기존 기숙학원 대비<br>
                        <strong>의무수업 <br>최대 42% 축소</strong><sub>1)</sub>
                    </span>                        
                </li>
                <li>
                    <span>의무수업 축소로<br>
                        <strong>충분한 자습시간<br>
                            확보 가능 
                        </strong>
                    </span>
                </li>
                <li>
                    <span>입시 담임선생님의<br>
                        <strong>24시간 밀착 관리</strong>
                    </span>
                </li>
                <li>
                    <span>엄격한 생활 규정으로<br>
                        <strong>규칙적인 생활</strong>
                    </span>
                </li>
                <li>
                    <span><strong>논술 수업 선택 가능</strong><br>
                        (인문/수리)
                    </span>
                </li>
            </ul>
            <div class="learning-box">
                <div class="box01">
                    <p class="pt60">학기 중 학습량</p>
                    <div class="circle c-01">학교/내신관리<strong>41T</strong></div>
                    <div class="circle c-02">학원+자습<strong>47T</strong></div>
                </div>
                <div class="box02">
                    <p class="pt60">서연고&middot;의치대 전문관 <br> <span>러셀 기숙학원 학습량</span></p>
                    <div class="circle c-02">필수 수업 <br><strong>24.5T</strong></div>
                    <div class="circle c-03">의무자습<br><strong>최소 55T 이상</strong></div>
                </div>
            </div>
            <p class="r-txt mt10">
                1) 기존 기숙학원 의무수업 42T 대비 서연고&middot;의치대 전문관 러셀 기숙학원 의무수업 24.5T 비교 시 수치 <br>
                * 실제 학원 운영상황에 따라 변경될 수 있습니다.
            </p>
            <% End If %>
        </div>
    </div>
    <div class="cont04">
        <div class="inner">
            <h3 class="mb70" data-aos="fade-up"><img src="<%=imgUrl%>/cont04_stit01.png" alt="" /></h3>
            <p><img src="<%=imgUrl%>/cont04_img.png" alt="" /></p>
        </div>
    </div>
    <div class="cont05">
        <div class="inner">
            <h3 class="mb70" data-aos="fade-up"><img src="<%=imgUrl%>/cont05_stit01.png" alt="" /></h3>
            <% If sCampusCode = "CD0348"  Then '여기숙 %>
            <ul class="class-list">
                <li>
                    <p><strong>러셀 강남&middot;대치</strong> 및<br>
                        <strong>메가스터디 인강</strong> 출강
                    </p>                        
                </li>
                <li>
                    <p>전 과목<br>
                        <strong>현장강의 진행</strong>
                    </p>
                </li>
                <li>
                    <p><strong>여름방학 단기</strong><br>
                        <strong>집중 완성</strong> 현장강의
                    </p>
                </li>
                <li>
                    <p><strong>1:1 맞춤 관리</strong> 및<br>
                        <strong>질의응답 직접 진행</strong>
                    </p>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0347" Then '서의치 %>
            <ul class="class-list">
                <li>
                    <p>러셀 및 인강 출강하는<br>
                        <strong>메가스터디 수능 전문 강사진</strong>
                    </p>                        
                </li>
                <li>
                    <p>학업 성취도에 맞춘<br>
                        <strong>전 과목 수준별<br>
                            (최상,상,일반) 수업
                        </strong>
                    </p>
                </li>
                <li>
                    <p><strong>대치동 현장 전용</strong><br>
                        <strong>수업 및 콘텐츠</strong>로 진행
                    </p>
                </li>
                <li>
                    <p><strong>여름방학 단기</strong><br>
                        <strong>집중 완성 </strong>프로그램
                    </p>
                </li>
            </ul>
            <ul class="class-list mt25" style="width: 894px; margin: 0 auto;">
                <li>
                    <p><strong>1:1 맞춤 관리</strong> 및<br>
                        <strong>질의응답 직접 진행</strong>
                    </p>                        
                </li>
                <li>
                    <p>수업 관리 전담 선생님의<br>
                        <strong>집중도 높은 수업 진행 관리</strong>
                    </p>
                </li>
                <li>
                    <p>인강 교재가 아닌<br>
                        <strong>대치동 현장 강의에서</strong><br>
                        <strong>배부하는 자료</strong> 제공
                    </p>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0258" Then '남기숙 %>
            <ul class="class-list">
                <li>
                    <p><strong>러셀 강남&middot;대치</strong> 및<br>
                        <strong>메가스터디 인강</strong> 출강
                    </p>                        
                </li>
                <li>
                    <p>전 과목<br>
                        <strong>현장강의 진행</strong>
                    </p>
                </li>
                <li>
                    <p><strong>여름방학 단기</strong><br>
                        <strong>집중 완성</strong> 현장강의
                    </p>
                </li>
                <li>
                    <p><strong>1:1 맞춤 관리</strong> 및<br>
                        <strong>질의응답 직접 진행 </strong>
                    </p>
                </li>
            </ul>
            <div class="mt60"><img src="<%=imgUrl%>/cont05_tlist.png" alt="" /></div>
            <% End If %>
            <% If sCampusCode <> "CD0258"  Then '남기숙 제외 %>
            <p class="mt60"><img src="<%=imgUrl%>/cont05_img.png" alt="" /></p>
            <% End If %>
            <% If sCampusCode = "CD0347"  Then '서의치 %>
            <p class="r-txt mt20">* 강사진은 운영 상황에 따라 변경될 수 있습니다.</p>
            <% End If %>
        </div>
    </div>
    <div class="cont06">
        <div class="inner">
            <h3 class="mb70" data-aos="fade-up"><img src="<%=imgUrl%>/cont06_stit01.png" alt="" /></h3>           
            <p class="mt60"><img src="<%=imgUrl%>/cont06_img.png" alt="" /></p>
        </div>
    </div>
    <!-- 1:1맞춤관리 -->
    <div class="cont07">
        <div class="inner">
            <h3 data-aos="fade-up"><img src="<%=imgUrl%>/cont07_stit01.png" alt="" /></h3>
            <div class="cont-box">
                <div class="manage-slide-wrap">
                    <div class="manage-navi">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">입시 <br> 관리</div>
                            <div class="swiper-slide">학습 <br> 관리</div>
                            <div class="swiper-slide">생활 <br> 관리</div>
                            <div class="swiper-slide">입시 특강/<br> 설명회</div>
                        </div>
                    </div>
    
                    <div class="swiper-container manage-slide">
                        <div class="swiper-wrapper">
                            <!-- 입시 관리 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="info">
                                        <% If sCampusCode = "CD0347"  Then '서의치 %>
                                        <div class="tit">수시 및 정시 1:1 책임 상담</div>                                       
                                        <div class="text">
                                            <ul class="list-03">
                                                <li> 입시 담임선생님 전원 <br> <strong>러셀 입시컨설턴트 전문교육과정 시행 및 수료</strong></li>
                                                <li> 다년간 누적된 데이터 기반으로 개인 목표에 맞춘 최적화된 <strong>입시(수시/정시) 로드맵 및 목표 대학 합격 가능성 제시</strong></li>
                                                <li> 누적된 성적 데이터 등 개별 성적 포트폴리오 기반의 <strong>체계적, 전문적 개인 맞춤 상담 진행</strong></li>
                                            </ul>
                                        </div>
                                        <% Else %>
                                        <div class="tit">수시 및 정시 <br>1:1 책임 상담</div>                                       
                                        <div class="text">
                                            썸머스쿨 기간 동안 정확한 진단 및 기초 상담 진행<br>
                                            썸머스쿨 이후에도 정시지원까지 1:1 책임 상담 진행
                                        </div>
                                        <% End If %>                                    
                                        <dl>
                                            <dt>7~8월</dt>
                                            <dd><strong>학생부 검토</strong>(내신/비교과 등)</dd>
                                        </dl>
                                        <dl>
                                            <dt>8~9월</dt>
                                            <dd><strong>수시상담</strong>(학생부 전형/논술 전형 컨설팅)</dd>
                                        </dl>
                                        <dl>
                                            <dt>11~12월</dt>
                                            <dd><strong>정시상담</strong>(수시지원여부/정시지원대학 결정)</dd>
                                        </dl>
                                       
                                    </div>
                                    <div class="img"><img src="<%=imgUrl%>/cont07_slide01.jpg" alt="입시 관리" /></div>
                                </div>
                                <p class="r-txt"><%=manage_slide_txt%></p>
                            </div>
    
                            <!-- 학습 관리 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="info">
                                        <% If sCampusCode = "CD0347"  Then '서의치 %>
                                        <div class="tit">개별 맞춤 <br>학습관리</div>
                                        <div class="text mt30">
                                            <ul class="list-03">
                                                <li> 일일 완전 학습 계획서, 일일수학 30제, 총평노트 점검 및 <br> 피드백을 통해<strong> 학습 루틴 및 습관 점검</strong></li>
                                                <li> 1:1 학습 상담을 통해 개인별 학습 계획 및 전 과목 상태와 <br> 성취도 점검,
                                                    <strong>목표 대학 진학을 위한 방향성 구체화</strong>
                                                </li>
                                                <li> 개별 학습 고민 상담을 통한 <br> 
                                                    <strong>멘탈 케어 및 구체적인 학습 전략과 노하우 전수</strong>
                                                </li>
                                            </ul>
                                        </div>
                                        <% Else %>
                                        <div class="tit">개별 맞춤 <br>학습관리</div>
                                        <div class="text">
                                            여름방학 단기간 최대 효율을 위한 밀도있는 학습관리<br>
                                            더불어 재원생의 학습목표와 수준에 맞춰<br>
                                            수능까지 성취도 있는 학습을 위한 학습전략 제시
                                        </div>
                                        <% End If %>         
                                    </div>
                                    <div class="img"><img src="<%=imgUrl%>/cont07_slide02.jpg" alt="학습 관리" /></div>
                                </div>
                            </div>
    
                            <!-- 생활 관리 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="info">
                                        <% If sCampusCode = "CD0347"  Then '서의치 %>
                                        <div class="tit">철저한 <br>생활관리</div>
                                        <div class="text mt30">
                                            <ul class="list-03">
                                                <li>외부의 유해 요소 전면 차단 등 <strong>면학분위기 저해 요소 <br>
                                                    엄격 관리 및 태도 점수 운영</strong>
                                                </li>
                                                <li><strong>강력한 학원 생활 규정 시행</strong>으로 교육점수 초과 시 <br>
                                                    최대 퇴원 조치
                                                </li>
                                                <li><strong>바자관 가장 가까운 곳에 담임선생님 상주</strong> <br>
                                                    학습 고충 및 슬럼프를 긍정적으로 극복할 수 있도록 <br>
                                                    <strong> 1:1 정신적 멘토링 진행</strong>
                                                </li>
                                                <li>매 교시 엄격한 출결 관리 및 바자관 상시 모니터링</li>
                                            </ul>
                                        </div>
                                        <% Else %>
                                        <div class="tit">철저한 <br>생활관리</div>
                                        <div class="text">
                                            러셀 플래너를 통한 학습계획 수립 및 실천 관리<br>
                                            매 교시 엄격한 출결 관리 및 바자관 상시 모니터링<br>
                                            면학분위기 저해 요소 엄격하게 관리
                                        </div>
                                        <% End If %>         
                                    </div>
                                    <div class="img"><img src="<%=imgUrl%>/cont07_slide03.jpg" alt="생활 관리" /></div>
                                </div>
                            </div>
    
                            <!-- 입시 특강/설명회 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="info">
                                        <div class="tit">다양한 <br>입시 특강/설명회</div>
                                        <div class="text">
                                            스터디 플래너&일일수학 30제 노트 활용법 특강<br>
                                            <% If sCampusCode <> "CD0258"  Then '남기숙 제외 %>
                                            수능 D-100 과목별 학습법 특강<br>
                                            <% End If %>         
                                            합격생과의 간담회 (선배와 1:1 개인 질의 응답)<br>
                                            수시대비 학생부전형관련 입시특강<br>
                                            수시/정시, 메디컬&최상위권 대학 지원전략 등 <br>
                                            입시 설명회
                                        </div>
                                    </div>
                                    <div class="img"><img src="<%=imgUrl%>/cont07_slide04.jpg" alt="입시 특강/설명회" /></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>        
        </div>
    </div>
    <!-- //1:1맞춤관리 -->

    <div class="cont08">
        <div class="inner">
            <h3 data-aos="fade-up"><img src="<%=imgUrl%>/cont08_stit01.png" alt="9월 평가원 모의고사, 수능에 최적화된 실전 학습 콘텐츠" /></h3>
            <div class="swiper-container program-slide">
                <ul class="swiper-wrapper">
                    <li class="swiper-slide"><img src="<%=imgUrl%>/cont08_slide01.png" alt="QUEL 모의고사"></li>
                    <% If sCampusCode <> "CD0258"  Then '남기숙 제외 %>
                    <li class="swiper-slide"><img src="<%=img_path_yangji%>/2024/summer/cont08_slide02.png" alt="E-QUEL 모의고사"></li>
                    <% End If %>  
                    <% If sCampusCode = "CD0347"  Then '서의치 %>
                    <li class="swiper-slide"><img src="<%=img_path_yangji%>/2024/summer/cont08_slide09.png" alt="QUEL UNIT"></li>
                    <% End If %>  
                    <% If sCampusCode <> "CD0258"  Then '남기숙 제외 %>
                    <li class="swiper-slide"><img src="<%=img_path_yangji%>/2024/summer/cont08_slide03.png" alt="메대프 모의고사"></li>
                    <% End If %>  
                    <% If sCampusCode = "CD0258"  Then '남기숙 %>
                    <li class="swiper-slide"><img src="<%=img_path_yangji%>/2024/summer/cont08_slide10.png" alt="장영진꿀 모의고사"></li>
                    <% End If %>  
                    <li class="swiper-slide"><img src="<%=img_path_yangji%>/2024/summer/cont08_slide05.png" alt="월간 학습지"></li>                 
                    <% If sCampusCode = "CD0347"  Then '서의치 %>
                    <li class="swiper-slide"><img src="<%=imgUrl%>/cont08_slide10.png" alt="장영진꿀 모의고사"></li>
                    <li class="swiper-slide"><img src="<%=img_path_yangji%>/2024/summer/cont08_slide11.png" alt="장영진 식스팩(6PACK)"></li>
                    <li class="swiper-slide"><img src="<%=img_path_yangji%>/2024/summer/cont08_slide12.png" alt="수학 양승진 모의고사"></li>
                    <li class="swiper-slide"><img src="<%=img_path_yangji%>/2024/summer/cont08_slide13.png" alt="국어 이감 모의고사"></li>
                    <% End If %>  
                    <% If sCampusCode = "CD0258"  Then '남기숙 %>
                    <li class="swiper-slide"><img src="<%=img_path_yangji%>/2024/summer/cont08_slide12.png" alt="수학 양승진 모의고사"></li>
                    <% End If %>  
                    <li class="swiper-slide"><img src="<%=img_path_yangji%>/2024/summer/cont08_slide06.png" alt="학습 플래너"></li>
                    <% If sCampusCode = "CD0258"  Then '남기숙 %>
                    <li class="swiper-slide"><img src="<%=img_path_yangji%>/2024/summer/cont08_slide14.png" alt="국어/수학 이감 모의고사"></li>
                    <% End If %>  
                    <li class="swiper-slide"><img src="<%=img_path_yangji%>/2024/summer/cont08_slide07.png" alt="일일수학30제"></li>
                    <% If sCampusCode = "CD0347"  Then '서의치 %>
                    <li class="swiper-slide"><img src="<%=img_path_yangji%>/2024/summer/cont08_slide08.png" alt="러셀 총평노트"></li>
                    <% End If %>  
                </ul>
                <div class="swiper-pagination type01"></div>
            </div>  
            <p class="r-txt mt50">* 위 콘텐츠는 썸머스쿨 기간 외 수능일까지 진행되는 콘텐츠가 포함되어 있습니다.</p>          
        </div>
    </div>
</div>
