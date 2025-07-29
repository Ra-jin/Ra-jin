<div class="cont js-cont-wrap <%=campusName%>">
    <div class="cont05 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/cont05_tit.jpg" alt=""></p>
        <% If campus_code = "CD0249" or campus_code = "CD0341" or campus_code = "CD0349" or campus_code = "CD0244" or campus_code = "CD0250" or campus_code = "CD0342" or russelCore = 1 Then '영통/대전/울산/분당/부천/대구/코어 일경우 %>
        <a class="i-bus" href="/info/schoolBus.asp">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ico_bus.png" alt="셔틀버스 운영">
        </a>
        <% End If %>
        <div class="inner">
            <div class="studyHall-wrap">
                <% If campus_code = "CD0341" or campus_code = "CD0349" or campus_code = "CD0244" or campus_code = "CD0248" or campus_code = "CD0342" or russelCore = 1 Then '대전/울산/분당/평촌/대구/코어 일경우 %>
                <div class="studyHall-navi core swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인 면학 분위기</div>
                        <div class="swiper-slide">학습 동선 최소화</div>
                        <div class="swiper-slide">충분한 자습 시간 <br>확보</div>
                        <div class="swiper-slide">개방형 구조</div>
                        <div class="swiper-slide"><%=baja_txt%></div>
                    </div>
                </div>
                <% Else %> 
                <div class="studyHall-navi swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인<br> 면학 분위기</div>
                        <div class="swiper-slide">학습 동선 <br>최소화</div>
                        <div class="swiper-slide">충분한<br>자습 시간 확보</div>
                        <div class="swiper-slide">개방형 구조</div>
                    </div>
                </div> 
                <% End If %>
                <div class="studyHall-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 집단적인 면학분위기-->
                        <div class="swiper-slide">
                            <% If campus_code = "CD0257" Then '중계 %>
                            <p class="tit">
                                학생들이 모여 경쟁하는 <br>
                                집단적인 면학 분위기
                            </p>
                            <p class="dc-txt">
                                재원생들의 학구열을<br> 직접 체감할 수 있는 <br>
                                개방형 구조로 학습 동기 부여 및<br>
                                긍정적인 긴장감 유지 가능
                            </p>
                            <% Else %>
                            <p class="tit">
                                최상위권이 모여 경쟁하는 <br>
                                집단적인 면학 분위기
                            </p>
                            <p class="dc-txt">
                                최상위권 재원생들의 학구열을<br> 직접 체감할 수 있는 <br>
                                개방형 구조로 학습 동기 부여 및<br>
                                긍정적인 긴장감 유지 가능
                            </p>
                            <% End If %>
                            <p class="dc-img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/studyHall_img01.jpg" alt=""></p>
                            <% If campus_code = "INTRO"  Then '인트로 %>
                            <div class="review-box">
                                <div class="cont-txt">
                                    바자관의 장점은 좋은 면학 분위기와 
                                    관리 시스템입니다. 바자관 내부는 대화 
                                    금지여서 조용한 분위기에서 공부에 몰입할 수 있으며, 개방형 구조와  
                                    통유리 창으로 탁 트여 있는 구조이기 때문에 옆에서 공부하는 
                                    친구들을 봐서라도 딴짓을 할 수 없어서
                                    좋았습니다.
                                </div>
                               
                                <div class="b-review">
                                    <div class="stu-img">
                                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/stu_01.png" alt="">
                                    </div>
                                    <div>
                                        <p class="result-txt">
                                            2025 고려대 의과대학 합격 <br>러셀 중계 동나영
                                        </p>
                                        <p class="source-txt">*2025 합격생 인터뷰 중 일부 발췌</p>
                                    </div>
                                </div>
                            </div>
                            <% End If %>
                        </div>
                        <!-- 학습동선 최소화 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                낭비하는 시간 없이 <br>
                                학습 동선 최소화
                            </p>
                            <p class="dc-txt">
                                <% If campus_code = "CD0249" Then '영통 %>
                                강의실-바자관-급식을<br> 효율적인 동선으로 해결함으로써<br>
                                시간 관리를 체계적으로 하여 수업 및 자습 시간에<br>
                                높은 집중력 발휘, 학습량 극대화
                                <% Else %>
                                    <% If campus_code = "CD0244" Then '분당 %>
                                    한 건물 내에서 강의실-바자관-급식(자체 식당)을
                                    <% ElseIf campus_code = "CD0257" Then '중계 %>
                                    한 건물 내에서 강의실-바자관-급식을 
                                    <% Else %>
                                    한 건물 내에서 강의실-바자관-급식(식당)을 
                                    <% End If %>
                                    <br>한 번에 해결하여 효율적인 시간 관리를 통해<br>                                
                                    수업 및 자습 시간에 <br>높은 집중력 발휘, 학습량 극대화                                   
                                <% End If %>
                            </p>
                            <p class="dc-img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/studyHall_img02.jpg" alt=""></p>
                            <% If campus_code = "INTRO"  Then '인트로 %>
                            <p class="r-txt">* 학원별 시설 및 운영방법은 상이합니다.</p>
                            <div class="review-box">
                                <div class="cont-txt">
                                    저는 학습 동선 최소화가 러셀 시스템의 
                                    장점이라고 생각합니다. 급식도 자리에서 
                                    먹을 수 있어 밥을 먹으러 밖으로 이동할 필요가 없고, 단과 강의실 또한 같은 건물이나 바로 옆 건물에 있어시간 낭비 없이 공부를 
                                    할 수 있었습니다.
                                </div>
                                <div class="b-review">
                                    <div class="stu-img">
                                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/stu_02.png" alt="">
                                    </div>
                                    <div>
                                        <p class="result-txt">
                                            2025 서울대 의예과 합격 <br>러셀 대치 노서연
                                        </p>
                                        <p class="source-txt">*2025 합격생 인터뷰 중 일부 발췌</p>
                                    </div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0247" Then '강남 %>
                            <p class="r-txt">※ 썸머스쿨 기간 동안 일부 강좌는 별관에서 운영됩니다. </p>
                            <% End If %>
                        </div>
                        <!-- 충분한 자습시간 확보 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                수능 시간표와 동일한 <br>
                                표준 시간표
                            </p>
                            <p class="dc-txt">
                                수능 시간표와 동일한 표준 시간표로 <br>
                                학습&middot;생활 리듬이 수능에 최적화!<br>                                
                                개인 맞춤 학습 스케줄 운영과 의무 자습 및 <br>
                                심야 자습으로 매일 최대 자습 시간 확보
                            </p>
                            <p class="dc-img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/studyHall_img03.jpg" alt=""></p>
                            <% If campus_code = "INTRO"  Then '인트로 %>
                            <p class="r-txt">* 학원별 운영 시간표는 상이합니다.</p>
                            <div class="review-box">
                                <div class="cont-txt">
                                    바자관의 장점은 시간표가 정해져 있다는 점이라고 생각합니다. 집에서 혼자 공부할 때와는 다르게 바자관에서 공부하면 아침부터
                                    규칙적으로 실제 수능 시간에 맞춰 행동하는
                                    습관을 들일 수 있습니다. 덕분에 수능날에도 비교적 편안한 마음으로 시험에 
                                    임할 수 있었던 것 같습니다.
                                </div>
                                <div class="b-review">
                                    <div class="stu-img">
                                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/stu_03.png" alt="">
                                    </div>
                                    <div>
                                        <p class="result-txt">
                                            2025 고려대 의과대학 합격 <br>러셀 분당 원태연
                                        </p>
                                        <p class="source-txt">*2025 합격생 인터뷰 중 일부 발췌</p>
                                    </div>
                                </div>
                            </div>
                            <% End If %>
                        </div>
                        <!-- 수시 대비 점검 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                학습에만 전념할 수 있도록 <br>
                                최적화된 환경
                            </p>
                            <p class="dc-txt">
                                학습 효율성을 높이기 위해 설계된 학습 시설에서 <br>
                                온전히 학습에만 집중할 수 있으며<br>                                
                                개방형 구조로 되어 있어 지속적으로 <br>                                
                                긴장감 유지 및 학습 동기 부여
                            </p>
                            <p class="dc-img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/studyHall_img04.jpg" alt=""></p>
                            <% If campus_code = "INTRO"  Then '인트로 %>
                            <p class="r-txt">* 학원별로 시설은 상이합니다.</p>
                            <div class="review-box">
                                <div class="cont-txt">
                                    바자관의 장점은 쾌적한 환경입니다. 하루에 
                                    평균 16시간 정도 같은 자리에 머물러야 하는 입장에서, 좋은 공간을 선택하는 것은 공부에 있어 꽤나 큰 요소입니다. 저에게는
                                    러셀 바자관의 높은 층고, 넓은 책상과 책장 배치, 탁 트인 통유리창 등 오랜 시간 높은
                                    효율로 집중하는 데 큰 도움을 주었습니다.
                                </div>
                                <div class="b-review">
                                    <div class="stu-img">
                                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/stu_04.png" alt="">
                                    </div>
                                    <div>
                                        <p class="result-txt">
                                            2025 연세대 의예과 합격 <br>러셀CORE 광주 박채은
                                        </p>
                                        <p class="source-txt">*2025 합격생 인터뷰 중 일부 발췌</p>
                                    </div>
                                </div>
                            </div>
                            <% End If %>
                        </div>
                        <!-- 자체 식당 운영 -->
                        <% If campus_code = "CD0341" or campus_code = "CD0349" or campus_code = "CD0244" or campus_code = "CD0248" or campus_code = "CD0342" or russelCore = 1 Then '대전/울산/분당/평촌/대구/코어 일경우 %>
                        <div class="swiper-slide">
                            <p class="tit">
                                건강과 안전을 위한 <%=baja_txt%>
                            </p>
                            <p class="dc-txt">
                                <%=baja_txt%>으로 균형 잡힌 식단 유지 <br>
                                외부와의 접촉 최소화 및<br>                                
                                이동 시간을 줄여 학습에 몰입
                            </p>
                            <p class="dc-img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/studyHall_img05.jpg" alt=""></p>
                        </div>
                        <% End If %>
                    </div>
                </div>
            </div>          
            <!-- <a class="btn-common" href="<%=studyHall_btn_url%>"><%=studyHall_btn%></a> -->
        </div>
    </div>

    <div class="cont06 js-cont">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/cont06_tit.jpg" alt=""></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/cont06_tit.jpg" alt=""></p>
        <% End If %>
        <div class="inner">
            <div class="manage-slide-navi swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">입시 관리</div>
                    <div class="swiper-slide">학습 관리</div>
                    <div class="swiper-slide">생활 관리</div>
                </div>
            </div>
    
            <div class="manage-slide swiper-container">
                <div class="swiper-wrapper">
                    <!-- 입시관리 -->
                    <div class="swiper-slide">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/manage_slide01.jpg" alt=""></p>
                        <p class="stit">수시 및 정시 1:1 맞춤 입시 관리
                        </p>
                        <div class="list-wrap">
                            <ul class="list-dot">
                                <% If campus_code = "CD0248" Then '평촌 %>
                                <li>
                                    체계적인 분석을 통한 수시지원 컨설팅 진행
                                </li>
                                <% Else %>
                                <li>
                                    썸머스쿨 기간 동안 정확한 진단 및 <br>
                                    기초 상담 진행
                                </li>
                                <% End If %>
                                <% If campus_code <> "CD0244"  Then '분당 제외 %>
                                <li>
                                    썸머스쿨 이후에도 1:1 배치 상담 진행
                                </li>
                                <% End If %>
                            </ul>
                        </div>
                        <div class="plan-box">
                            <dl>
                                <dt>7~8월</dt>
                                <dd><strong>학생부 검토</strong>(내신/비교과 등)</dd>
                            </dl>
                            <dl>
                                <dt>8~9월</dt>
                                <dd><strong>수시 상담</strong>(학생부 전형/논술 전형 컨설팅)</dd>
                            </dl>
                            <dl>
                                <dt>11~12월</dt>
                                <dd><strong>정시 상담</strong>(수시 지원 여부/정시 지원 대학 결정)</dd>
                            </dl>
                        </div>
                        <p class="r-txt">
                            <% If campus_code = "CD0341" Then '대전 %>
                            * 고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다. 
                            <% ElseIf campus_code = "CD0244" Then '분당 %>
                            * 각 학년에 맞춘 상담이 진행됩니다. <br>
                            * 이후 단계는 썸머스쿨 종료 후 정규반[재학생(고3)]에 재원 시<br> 진행됩니다.
                            <% ElseIf campus_code = "CD0248" Then '평촌 %>
                            * 중3/고1/고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다.
                            <% ElseIf campus_code = "CD0244" or campus_code = "CD0342" Then '분당/대구 %>
                            <% Else %>                               
                                * 고1/고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다.
                              <% End If %>
                            <% If campus_code = "INTRO" Then '인트로 %>
                            <br>
                            * 학원별 관리 프로그램 내용은 상이할 수 있습니다.
                            <% End If %>
                        </p>
                        <% If campus_code = "INTRO" Then '인트로 %>
                        <div class="review-box">
                            <div class="cont-txt">
                                실전 모의고사 성적표가 나온 후 선생님과 함께 부족한 과목의 학습법을 고민할 수 있어 좋았습니다. 또한, 수시 원서를 접수할 때 
                                상담을 통해서 구체적인 정보에 입각하여 
                                합격 가능성을 알려 주셔서 큰 도움이
                                되었습니다.
                            </div>
                            <div class="b-review">
                                <div class="stu-img">
                                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/stu_01.png" alt="">
                                </div>
                                <div>
                                    <p class="result-txt">
                                        2025 울산대 의예과 합격 <br>러셀 울산 이예빈
                                    </p>
                                    <p class="source-txt">*2025 합격생 인터뷰 중 일부 발췌</p>
                                </div>
                            </div>
                        </div>
                        <% End If %>
                    </div>
                    <!-- 학습관리 -->
                    <div class="swiper-slide">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/manage_slide02.jpg" alt=""></p>                     
                    
                        <p class="stit">
                            <% If campus_code = "CD0257" Then '중계 %>
                            성적 향상을 위한 <br>
                            <% Else %>
                            최상위권 도약을 위한 <br>
                            <% End If %>
                            체계적인 학습 관리
                        </p>
                        <div class="list-wrap">
                            <ul class="list-dot">
                                <li>
                                    여름 방학 단기간 최대 효율을 위한 <br>
                                    밀도 있는 학습 관리
                                </li>
                                <li>
                                    1:1 상담을 통해 여름 방학부터  <br>
                                    수능까지 학습 설계 및 점검
                                </li>
                            </ul>    
                        </div>
                        <% If campus_code = "INTRO" Then '인트로 %>                    
                        <p class="r-txt">
                            * 학원별 관리 프로그램 내용은 상이할 수 있습니다.
                        </p>
                        <div class="review-box">
                            <div class="cont-txt">
                                바자관 생활을 하면서 모의고사를 보고 성적이 나올 때마다 담임 선생님과의 1:1 상담을 
                                통해서 저의 현재 상태에 대한 해석, 그리고
                                학습 방향의 교정을 해 주셔서 수능 때
                                더 좋은성적을 거둘 수 있었습니다.
                            </div>
                            <div class="b-review">
                                <div class="stu-img">
                                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/stu_05.png" alt="">
                                </div>
                                <div>
                                    <p class="result-txt">
                                        2025 연세대 의예과 합격/ 수능 만점 <br>러셀 영통 임희수
                                    </p>
                                    <p class="source-txt">*2025 합격생 인터뷰 중 일부 발췌</p>
                                </div>
                            </div>
                        </div>
                        <% End If %>
                    </div>
                    <!-- 생활관리 -->
                    <div class="swiper-slide">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/manage_slide03.jpg" alt=""></p>
                        <p class="stit">집단적인 면학 분위기를 위한 <br>
                            철저한 생활 관리
                        </p>
                        <div class="list-wrap">
                            <ul class="list-dot">
                                <% If campus_code = "CD0246" Then '센텀 %>
                                <li>
                                    매 교시 엄격한 출결 관리 및 <br>
                                    바자관 생활 관리 조교 배치 등<br>
                                    태도 점수 제도로 면학 분위기 저해 요소<br>
                                    엄격하게 관리
                                </li>
                                <% Else %>
                                <li>
                                    매 교시 엄격한 출결 관리 및 <br>바자관 상시 모니터링
                                </li>
                                <li>
                                    태도 점수 제도로 면학 분위기 저해 요소 <br>엄격하게 관리
                                </li>
                                <% End If %>
                            </ul>    
                        </div>      
                        <% If campus_code = "INTRO" Then '인트로 %>                         
                        <p class="r-txt">
                            * 학원별 관리 프로그램 내용은 상이할 수 있습니다.
                        </p>
                        <div class="review-box">
                            <div class="cont-txt">
                                바자관 바로 앞에 담임 선생님이 있어 
                                학습 중 어려움이나 고민이 생기면 친절하게
                                상담해 주셔서 수험 기간 중 많이 의지가
                                되었습니다. 저와 비슷한 고민을 가졌던
                                옛 제자들 이야기를 해 주셔서, 저의
                                경우에는 어떻게 하는 게 좋을지 조언도
                                많이 해 주시고 멘탈 관리에 큰 도움이
                                되어 주셨습니다.
                            </div>
                            <div class="b-review">
                                <div class="stu-img">
                                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/stu_06.png" alt="">
                                </div>
                                <div>
                                    <p class="result-txt">
                                        2025 성균관대 의예과 합격 <br> 러셀 분당 최준영
                                    </p>
                                    <p class="source-txt">*2025 합격생 인터뷰 중 일부 발췌</p>
                                </div>
                            </div>
                        </div>
                        <% End If %>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="cont07 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/cont07_tit.jpg" alt=""></p>
        <!-- 선생님 롤링 슬라이드 -->
         <!--#include virtual="/intro/2025/summer/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
        <div class="inner">
            <div class="danka-box">
                <div class="txt-box">
                    <p>
                        <% If campus_code = "CD0257" Then '중계 %>
                        목표 성적에 한발 다가가는<br>
                        <% Else %>
                        최상위권에 한발 다가가는<br>
                        <% End If %>
                        여름 방학 고밀도 특강
                        <strong>썸머 특강</strong>
                    </p>
                    <ul class="list-check">
                        <li>나에게 필요한 과목/진도를 선택 수강하여 <br>취약점 집중 보완</li>
                        <li>취약 과목(파트) 집중 보완 및 수시 최저 등급 <br>대비 집중 학습을 위한 단기 집중 특강</li>
                    </ul>            
                </div>
                <div class="danka-btn">
                    <a href="<%=danka_summer_url%>"><%=summer_danka_txt%></a>
                    <% If campus_code = "CD0247" or campus_code = "CD0001" or campus_code = "CD0250" or campus_code = "CD0249" or campus_code = "CD0248" Then '강남/대치/부천/영통/평촌 %>
						<a href="<%=danka_summer_url02%>"><%=summer_danka_txt02%></a>
					<% End If %>
                </div>
            </div>
            <div class="danka-box">
                <div class="txt-box">
                    <p>
                        기초부터 실전까지 <br>
                        빈틈없는 커리큘럼으로 수능 실력 향상<br>
                        <strong>정규&middot;특강 단과</strong>
                    </p>
                    <ul class="list-check">
                        <li>
                            메가스터디 온&middot;오프 수능 전문 강사진의 <br>
                            <% If campus_code = "CD0341" or campus_code = "CD0349" or campus_code = "CD0344" or campus_code = "CD0345" or campus_code = "CD0346" or campus_code = "CD0340" or campus_code = "CD0342" Then '대전/울산/코어전주/코어창원/코어청주/코어광주/대구 %>
                            몰입감 높은 현장 강의와 대치동 LIVE 강의
                            <% ElseIf campus_code = "CD0343" Then '코어원주 %>
                            몰입감 높은 대치동 LIVE 강의
                            <% Else %>
                            몰입감 높은 현장 강의
                            <% End If %>
                        </li>
                        <li>
                            내게 필요한 과목별/수준별/진도별 맞춤 수업 <br>전략적으로 선택
                        </li>
                        <li>
                            <% If campus_code = "CD0343" Then '코어원주 %>
                            선생님 전용 학습 콘텐츠로 수업 전후 학습 관리
                            <% Else %>
                            수업 전후 선생님의 학습 관리 진행으로<br> 1:1 맞춤 완전 학습
                            <% End If %>
                        </li>
                    </ul>
                </div>
                <div class="danka-btn">
                    <a href="<%=danka_regular_url%>">바로가기</a>
                </div>
            </div>
        </div>
    </div>


    <div class="cont08 js-cont">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/cont08_tit.jpg" alt=""></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/cont08_tit.jpg" alt=""></p>
        <% End If %>
        <div class="inner">
            <div class="ct-wrap">                
                <div class="ct-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide01.png" alt="OMEGA">
                        </div>         
                        <% If campus_code <> "CD0257" and campus_code <> "CD0342" Then '중계/대구 제외 %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide02.png" alt="OMEGA llink">
                        </div> 
                        <% End If %>
                        <% If campus_code <> "CD0343" and campus_code <> "CD0340" Then '코어원주/코어광주 제외 %>
                        <div class="swiper-slide">
                            <% If campus_code = "CD0257" Then '중계 %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/ct-slide03.png" alt="OMEGA black">
                            <% Else %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide03.png" alt="OMEGA black">
                            <% End If %>
                        </div>
                        <% End If %>
                        <% If campus_code <> "CD0343" and campus_code <> "CD0340" and campus_code <> "CD0250" and campus_code <> "CD0257" Then '코어원주/코어광주/부천/중계 제외 %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide04.png" alt="OMEGA blue">
                        </div>
                        <% End If %>
                        <% If campus_code <> "CD0245" and campus_code <> "CD0248" and campus_code <> "CD0344" Then '목동/평촌/코어전주 제외 %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide05.png" alt="OMEGA weekly">
                        </div>
                        <% End If %>
                        <% If campus_code <> "CD0245" and campus_code <> "CD0248" Then '목동/평촌 제외 %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide06.png" alt="전국 대단위 실전 모의고사">
                        </div>
                        <% End If %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide07.png" alt="메가X대성 더 프리미엄 모의고사">
                        </div>
                        <% If campus_code = "CD0247" or campus_code = "CD0248" or campus_code = "CD0249" Then '강남/평촌/영통 %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide15.png" alt="아이젠">
                        </div>
                        <% End If %>
                        <% If campus_code <> "CD0245" and campus_code <> "CD0248" and campus_code <> "CD0257" Then '목동/평촌/중계 제외 %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide08.png" alt="ALPHA">
                        </div>  
                        <% End If %> 
                        <% If campus_code = "CD0250" Then '부천 %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide15.png" alt="아이젠">
                        </div> 
                        <% End If %> 
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide09.png" alt="러셀 학습 플래너">
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide10.png" alt="러셀 일일수학 30제">
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide11.png" alt="러셀 총평노트">
                        </div>   
                        <% If campus_code = "CD0249" Then '영통 %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide12.png" alt="영단어 TEST">
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide13.png" alt="성적 포트폴리오">
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide14.png" alt="선배와의 대화">
                        </div>
                        <% End If %>     
                    </div>
                    <div class="swiper-pagination ct-pager"></div>
                </div>
                <p class="r-txt">
                    ※
                    <% If campus_code <> "CD0245" and campus_code <> "CD0248" and campus_code <> "CD0257" Then '목동/평촌/중계 제외 %>
                     ALPHA 및 
                    <% End If %>
                    학습계획 콘텐츠 <br>
                    (러셀 학습 플래너, 러셀 일일수학 30제, 러셀 총평노트)는<br>
                    재원생 대상으로 ‘전액 지원’되는 콘텐츠입니다.<br>
                    이외 콘텐츠는 유료로 시행되는 학습 콘텐츠로 학원 정책 및 사정에<br> 따라
                    사용 여부 등이 변경 및 조정될 수 있습니다.<br>
                    ※ 일부 콘텐츠는 썸머스쿨 기간 외에 진행될 수 있습니다.
                </p>
            </div>
        </div>
    </div>
    <div class="btm-banner">
        <% If campus_code = "INTRO" Then '인트로 %>
            올여름, 최상위권으로 <br>도약하고자 한다면 <br>
            최상위권이 집결하는<br> 
            <%=txtCampus%> 썸머스쿨이 확실한 방법입니다.
        <% ElseIf campus_code = "CD0257" Then '중계 %>
            올여름, 비약적인 성적 향상을 원한다면 <br>
            학생들이 선택하는 <%=txtCampus%> 썸머스쿨이<br> 
            확실한 방법입니다.
        <% Else %>
            올여름, 최상위권으로 <br>도약하고자 한다면
            최상위권이 <br> 집결하는 <%=txtCampus%><br>  
            썸머스쿨이 확실한 방법입니다.
        <% End If %>
    </div>
</div>