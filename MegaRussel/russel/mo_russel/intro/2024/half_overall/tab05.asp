<div class="cont js-cont-wrap <%=campusName%>">
    <div class="cont06">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half_overall/cont06_tit.jpg" alt="체계적인 관리가 만들어내는 결과의 차이, 반수생을 위한 시스템은 달라야 합니다."></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/cont06_tit.jpg" alt="최상위권과 경쟁과 체계적인 관리가 만들어내는 결과의 차이, 반수생을 위한 시스템은 달라야 합니다."></p>
        <% End If %>
        <div class="inner">
            <% If campus_code = "CD0257" Then '중계 %>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half_overall/cont06_stit.jpg" alt="입시 담임선생님의 학생 맞춤 관리"></p>
            <% Else %>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/cont06_stit.jpg" alt="최상위권 전문 입시 담임선생님의 학생 맞춤 관리"></p>
            <% End If %>
            <div class="s-box">
                <!-- 관리 탭슬라이드 -->
                <div class="manage-slide-wrap">
                    <div class="manage-slide-navi">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                입시관리
                            </div>
                            <div class="swiper-slide">
                                학습관리
                            </div>
                            <div class="swiper-slide">
                                생활관리
                            </div>
                        </div>
                    </div>
                    <div class="manage-slide swiper-container">
                        <div class="swiper-wrapper">
                            <!-- 입시관리 -->
                            <div class="swiper-slide">
                                <% If campus_code = "CD0250" Then '부천 %>
                                <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half_overall/cont06_slid01.jpg" alt=""></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/cont06_slid01.jpg" alt=""></div>
                                <% End If %>
                            </div>
                            <!-- //입시관리 -->
                            <!-- 학습관리 -->
                            <div class="swiper-slide">
                                <% If campus_code = "CD0250" Then '부천 %>
                                <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half_overall/cont06_slid02.jpg" alt=""></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/cont06_slid02.jpg" alt=""></div>
                                <% End If %>
                            </div>
                            <!-- //학습관리 -->
                            <!-- 생활관리 -->
                            <div class="swiper-slide">
                                <% If campus_code = "CD0250" Then '부천 %>
                                <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half_overall/cont06_slid03.jpg" alt=""></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/cont06_slid03.jpg" alt=""></div>
                                <% End If %>
                            </div>
                            <!-- //생활관리 -->
                        </div>
                        <div class="swiper-pagination type04"></div>
                    </div>
                </div>
                <!-- //관리 탭슬라이드 -->
            </div>
        </div>
        <!-- 이미지 롤링 -->
        <div class="img-rolling swiper-container">
            <div class="swiper-wrapper">
                <!-- 1 -->
                <% If campus_code = "CD0249" OR campus_code = "CD0250" OR campus_code = "CD0257" OR campus_code = "CD0342" Then '영통/부천/중계/대구 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/rolling01.jpg" alt="">
                </div>
                <% Else %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/rolling01.jpg" alt="">
                </div>
                <% End If %>
                <!-- 2 -->
                <div class="swiper-slide">
                    <% If campus_code = "CD0340" OR campus_code = "CD0249" OR campus_code = "CD0250" OR campus_code = "CD0257" OR campus_code = "CD0342" Then '코어광주/영통/부천/중계/대구 %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/rolling02.jpg" alt="">
                    <% Else %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/rolling02.jpg" alt="">
                    <% End If %>
                </div>
                <!-- 3 -->
                <% If campus_code = "CD0249" OR campus_code = "CD0250" OR campus_code = "CD0257" OR campus_code = "CD0342" Then '영통/부천/중계/대구 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/rolling03.jpg" alt="">
                </div>
                <% Else %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/rolling03.jpg" alt="">
                </div>
                <% End If %>
                <!-- 4 -->
                <div class="swiper-slide">
                    <% If campus_code = "CD0340" OR campus_code = "CD0249" OR campus_code = "CD0250" OR campus_code = "CD0257" OR campus_code = "CD0342" Then '코어광주/영통/부천/중계/대구 %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/rolling04.jpg" alt="">
                    <% Else %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/rolling04.jpg" alt="">
                    <% End If %>
                </div>
                <!-- 5 -->
                <div class="swiper-slide">
                    <% If campus_code = "CD0340" OR campus_code = "CD0249" OR campus_code = "CD0250" OR campus_code = "CD0257" OR campus_code = "CD0342" Then '코어광주/영통/부천/중계/대구 %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/rolling05.jpg" alt="">
                    <% Else %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/rolling05.jpg" alt="">
                    <% End If %>
                </div>
                <!-- 6 -->
                <div class="swiper-slide">
                    <% If campus_code = "CD0340" OR campus_code = "CD0249" OR campus_code = "CD0250" OR campus_code = "CD0257" OR campus_code = "CD0342" Then '코어광주/영통/부천/중계/대구 %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/rolling06.jpg" alt="">
                    <% Else %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/rolling06.jpg" alt="">
                    <% End If %>
                </div>
                <!-- 7 -->
                <% If campus_code = "CD0249" OR campus_code = "CD0250" Then '영통/부천 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/rolling07.jpg" alt="">
                </div>
                <% End If %>
                <!-- 8 -->
                <% If campus_code = "CD0249" Then '영통 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/rolling08.jpg" alt="">
                </div>
                <% End If %>
            </div>
        </div>
        <!-- //이미지 롤링 -->
        <div class="inner">
            <!-- 학생후기 슬라이드 type01 -->
            <div class="stu-r-slide type01 swiper-container">
                <% If campus_code = "CD0340" Then '코어광주 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>담임선생님께서 언제나 친절하게 고민이 있으면 상담해 주시고, 고민이 없어도 주기적으로 학생들을 불러 원내 생활이 괜찮은지 물어보며 학생들을 진지하게 케어해주셔서 힘든 수험기간 동안 큰 힘이 되었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                <p><strong>2024 연세대 화공생명공학부 합격</strong><br>
                                    러셀CORE 광주 이석준
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>슬럼프가 왔을 때 담임선생님이 친절하게 상담을 해주셔서 많은 의지가 되었던 것 같습니다.
                                또한, 원서를 넣을 때 합리적인 방향으로 쓸 수 있게 도와주셨고, 좋은 결과를 낼 수 있었습니다. 
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_joseon.png" alt=""></div>
                                <p><strong>2024 조선대 약학과 합격</strong> <br>
                                    러셀CORE 광주 김재원
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0249" Then '영통 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>면학분위기를 잘 조성해 주셨고, 멘탈 관리에 있어서도 적극적인 지지와 응원을 보내 주신 덕분에 흔들리지 않을 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p><strong>2023 서울대 화학교육과 합격</strong><br>
                                    러셀 영통 최가현
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>담임선생님께서 친절하고 전문적으로 상담해 주신 점이 좋았습니다. 수시, 정시, 자소서 등 정말 다방면으로 많은 조언을 해 주셨습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p><strong>2023 서울대 기계공학부 합격</strong><br>
                                    러셀 영통 문인하
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0250" OR campus_code = "CD0349" Then '부천/울산 %>
                <!-- 인트로 후기 -->
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>담임선생님은 입시 전략을 고민하고 있었을 때 어떤 전형이 저에게 가장 유리할지 친절하게 알려주셨습니다. 종종 공부에 집중이 되지 않을 때 저의 멘탈을 잡아주셨고 재밌게 상담을 해 주셔서 제가 다시 공부에 전념할 수 있게 도와주셨습니다.</p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p><strong>2024 서울대 의예과 합격 </strong><br>
                                    러셀 분당 성중현 
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>담임선생님과 상담하며 해결책을 찾은 것이 점수 향상에 큰 도움이 되었습니다. 공부 방향에 대해 의구심이 들 때 담임선생님께 여쭤보면 아낌없는 격려와 조언을 해주셔서 수능날까지 공부에만 집중할 수 있었습니다.</p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chungbuk.png" alt=""></div>
                                <p><strong>2024 전북대 의예과 합격</strong><br>
                                    러셀 평촌 홍지우
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0257" Then '중계 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>바른공부 자습전용관 바로 앞에 상주하고 계셔서 부담 없이 상담받을 수 있는 게 좋았고, 또 제 수준이나 상황에 맞춰 상담하고 관리해 주신다는 느낌이 들어 좋았습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p><strong>2023 서울대 의예과 합격</strong> <br>
                                    러셀 중계 노현지
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>담임선생님은 혼자라는 기분이 들지 않도록 항상 옆에 있어주셨습니다. 수험생활이 혼자하는 싸움이라는 생각이 들 때, 담임선생님의 존재는 1년이라는 시간을 버티는 든든한 지원군이었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                <p><strong>2022 고려대 행정학과 합격</strong> <br>
                                    러셀 중계 이은상
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0342" Then '대구 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀 대구의 가장 큰 장점은 바자관 바로 앞 담임 부스에 
                                담임선생님이 상주하고 계셔서 
                                언제든 입시 고민과 정보들에 대해서 
                                담임선생님과 이야기를 나눌 수 있다는 점입니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyungpook.png" alt=""></div>
                                <p><strong>2024 경북대 치의예과 합격</strong> <br>
                                    러셀 대구 정은채
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>원서 접수 기간에 많이 막막했는데, 러셀 대구 입시 전문 담임선생님께서 생기부 내용과 성적에 맞춰 여러 학과와 전형을 정리해 주시고, 지원 전략과 관련해서 상담도 자세하게 해 주셔서 많은 도움이 됐습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyungpook.png" alt=""></div>
                                <p><strong>2024 경북대 약학과 합격 </strong> <br>
                                    러셀 대구 이서영
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% End If %>
                <div class="swiper-pagination type03"></div>
            </div>
            <!-- //학생후기 슬라이드 type01 -->
        </div>
    </div>
    <div class="cont07">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half_overall/cont07_tit.jpg" alt="면학분위기로 소문난
            바른공부 자습전용관 같은 목표를 가진 학생들이 모여
            경쟁하는 긍정적인 학습환경이 만들어져 있습니다."></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/cont07_tit.jpg" alt="면학분위기로 소문난
            바른공부 자습전용관 전국 최상위권이 학생들이 모여
            경쟁하는 긍정적인 학습환경이 만들어져 있습니다."></p>
            <% End If %>
        <div class="inner">
            <% If isCore = 1 OR campus_code = "CD0342" OR campus_code = "CD0349" Then '코어/대구/울산 %>
            <!-- 셔틀버스 배너 -->
            <a class="float-banner" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/float_banner.png" alt="학원 전용 셔틀버스 운영"></a>
            <!-- //셔틀버스 배너 -->
            <% End If %>
    
            <!-- 바자관 탭슬라이드 -->
            <div class="studyHall-slide-wrap">
                <% If isCore = 1 OR campus_code = "CD0342" OR campus_code = "CD0349" Then '코어/대구/울산 %>
                <div class="studyHall-navi core">
                <% Else %>
                <div class="studyHall-navi">
                <% End If %>
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            집단적인<br>
                            면학분위기
                        </div>
                        <div class="swiper-slide">
                            학습 동선<br>
                            최소화
                        </div>
                        <div class="swiper-slide">
                            개방형<br>
                            구조
                        </div>
                        <% If isCore = 1 OR campus_code = "CD0342" OR campus_code = "CD0349" Then '코어/대구/울산 %>
                        <div class="swiper-slide">
                            자체 식당<br>
                            운영
                        </div>
                        <% End If %>
                    </div>
                </div>
                <div class="studyHall-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 집단적인 면학분위기 -->
                        <div class="swiper-slide">
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half_overall/baja01.jpg" alt=""></div>
                        </div>
                        <!-- //집단적인 면학분위기 -->
                        <!-- 학습 동선 최소화 -->
                        <div class="swiper-slide">
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half_overall/baja02.jpg" alt=""></div>
                        </div>
                        <!-- //학습 동선 최소화 -->
                        <!-- 개방형 구조 -->
                        <div class="swiper-slide">
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half_overall/baja03.jpg" alt=""></div>
                        </div>
                        <!-- //개방형 구조 -->
                        <% If isCore = 1 OR campus_code = "CD0342" OR campus_code = "CD0349" Then '코어/대구/울산 %>
                        <!-- 자체 식당 운영 -->
                        <div class="swiper-slide">
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half_overall/baja04.jpg" alt=""></div>
                        </div>
                        <!-- //자체 식당 운영 -->
                        <% End If %>
                    </div>
                </div>
            </div>
            <!-- //바자관 탭슬라이드 -->

            <!-- 학생후기 슬라이드 type02 -->
            <div class="stu-r-slide type02 swiper-container">
                <% If campus_code = "CD0340" Then '코어광주 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>바자관의 장점은 집단적인 면학분위기와 그로 인한 학습시간 확보입니다. 열심히 공부하는 러셀의 친구들과 언니들을 보고 자극을 받아 더 치열하게 공부할 수 있었고 외로움 역시 덜 수 있었습니다. 
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p><strong>2024 서울대 자유전공학부 합격</strong><br>
                                    러셀CORE 광주 심혜림
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>아무래도 밖에 나가서 밥을 먹게 되면 이동시간, 주문하고 기다리는 시간 등이 허비되기 쉬운데 시간 낭비를 줄일 수 있었습니다. 또한 영양적으로 균형 있는 식사를 규칙적으로 할 수 있다는 것도 큰 장점이라고 생각합니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                <p><strong>2024 연세대 의예과 합격</strong><br>
                                    러셀CORE 광주 강세빈
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0249" Then '영통 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀에서 공부를 하면서 시간을 체계적으로 이용하고 온전히 학습이 집중할 수 있게 되었던 경험이 굉장히 긍정적인 기억으로 남아 있었습니다. 
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sungkyunkwan.png" alt=""></div>
                                <p><strong>2023 성균관대 약학과 합격</strong><br>
                                    러셀 영통 오현석
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>바자관의 좋은 면학분위기와 자습시간을 많이 확보할 수 있다는 장점 때문에 러셀을 선택하게 되었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p><strong>2023 서울대 생명과학부 합격</strong> <br>
                                    러셀 영통 김태현
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0250" Then '부천 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀에서는 이동 시간을 최소화하여 낭비되는 시간과 에너지를 줄이고, 공부에 최대의 시간과 에너지를 투자할 수 있었습니다. 이러한 시간적인 효율성을 누리면서도 단과 강의와 자습관 자체의 질 역시도 매우 높다는 점이 가장 큰 장점이라고 생각합니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                <p><strong>2024 고려대 사회학과 합격</strong><br>
                                    러셀 부천 노은수
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>바자관의 가장 큰 장점은 개방적인 구조입니다. 다른 학생들이 공부하는 모습을 볼 수 있어 집단적인 면학 분위기를 형성할 수 있을 뿐만 아니라, 개방감을 주어 실내에 오랜 시간 머물러도 답답하지 않아 긴 시간 공부에 집중할 수 있도록 도와줍니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kangwon.png" alt=""></div>
                                <p><strong>2024 강원대 의예과 합격</strong><br>
                                    러셀 부천 이가은
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0257" Then '중계 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>효율적으로 시간 관리를 할 수 있다는 점이 가장 좋았습니다. 매일 아침 정해진 시간에 등원하고, 공부하는 시간과 쉬는 패턴이 일정하다보니 의지가 약했던 저에게는 많은 도움이 되었습니다. 
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_ewha.png" alt=""></div>
                                <p><strong>2024 이화여대 약학과 합격</strong><br>
                                    러셀 중계 이유진
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>수능 시간표와 동일한 표준 시간표 운영이 가장 좋았습니다. 저에게 주어진 시간들을 계획해서 사용하는 것이 막막했는데, 표준 시간표에 맞춰서 계획을 세우니 과목별로 균형을 맞춰서 규칙적으로 공부할 수 있어 가장 큰 도움이 되었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p><strong>2023 서울대 의예과 합격</strong> <br>
                                    러셀 중계 노현지
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0342" OR campus_code = "CD0349" Then '대구/울산 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>도서관처럼 바른공부 자습전용관은 개방형 구조로 설계되어, 양옆에 열심히 공부하는 학생들이 보입니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_catholic.png" alt=""></div>
                                <p><strong>2024 가톨릭대 약학과 합격 </strong><br>
                                    러셀 대구 곽승현
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀 대구 자체 식당 운영으로 
                                급식을 따뜻하게 먹을 수 있었습니다.
                                월요일부터 토요일까지 급식이 운영되어,
                                식사 걱정 없이 학원에 다닐 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyungpook.png" alt=""></div>
                                <p><strong>2024 경북대 약학과 합격</strong> <br>
                                    러셀 대구 이서영
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% End If %>
                <div class="swiper-pagination type05"></div>
            </div>
            <!-- //학생후기 슬라이드 type02 -->
        </div>
    </div>
    <div class="cont08">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half_overall/cont08_tit.jpg" alt="반수생에게 반드시 필요한 러셀 실전 학습 콘텐츠 시기별 맞춤 콘텐츠로 약점 보완과 실력 완성은 물론, 재원생들과 함께 집체 모의고사 훈련으로 실전력까지 향상할 수 있습니다."></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/cont08_tit.jpg" alt="반수생에게 반드시 필요한 러셀 실전 학습 콘텐츠 시기별 맞춤 콘텐츠로 약점 보완과 실력 완성은 물론, 최상위권 학생들과 함께 집체 모의고사 훈련으로 실전력까지 향상할 수 있습니다."></p>
        <% End If %>
        <!-- 학습 콘텐츠 슬라이드 -->
        <div class="program-slide swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/con-slide01.jpg" alt="QUEL 모의고사">
                </div>
                <% If campus_code <> "CD0250" Then '부천 제외 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/con-slide02.jpg" alt="E-QUEL 모의고사">
                </div>
                <% End If %>
                <% If campus_code <> "CD0249" and campus_code <> "CD0250" and campus_code <> "CD0257" Then '영통/부천/중계 제외 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/con-slide03.jpg" alt="QUEL:UNIT">
                </div>
                <% End If %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/con-slide11.jpg" alt="메가X대성 더 프리미엄 모의고사">
                </div>
                <% If campus_code <> "CD0249" and campus_code <> "CD0250" Then '영통/부천 제외 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/con-slide05.jpg" alt="러셀CORE Weekly모의고사">
                </div>
                <% End If %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/con-slide06.jpg" alt="월간 학습지(월간 장영진)">
                </div>
                <% If campus_code = "CD0250" Then '부천 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half_overall/con-slide05.jpg" alt="러셀CORE Weekly모의고사">
                </div>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/con-slide12.jpg" alt="2024 장영진T 식스팩(6PACK)">
                </div>
                <% End If %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/con-slide08.jpg" alt="러셀 학습 플래너">
                </div>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/con-slide07.jpg" alt="일일수학 30제">
                </div>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/con-slide09.jpg" alt="러셀 총평노트">
                </div>
            </div>
            <div class="swiper-pagination type06"></div>
        </div>
        <!-- //학습 콘텐츠 슬라이드 -->
        <div class="inner">
            <% If campus_code <> "CD0342" Then '대구 제외 %>
            <p class="tit">러셀 실전 콘텐츠 <strong>연간 시행 일정</strong></p>
            <!-- 연간 시행 일정 -->
            <div class="y-plan">
                <table class="tbl-type01 tbl-center">
                    <% If campus_code = "CD0249" Then '영통 %>
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th rowspan="2">구<br>분</th>
                            <th colspan="2">QUEL</th>
                            <th rowspan="2">메대프<br>
                            모의고사</th>
                            <th rowspan="2">월간<br>장영진<br>모의고사</th>
                        </tr>
                        <tr>
                            <th>QUEL<br>모의고사</th>
                            <th class="b-r">E-QUEL<br>모의고사</th>
                        </tr>
                    </thead>
                    <% ElseIf campus_code = "CD0250" Then '부천 %>
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th rowspan="2">구<br>분</th>
                            <th colspan="2">QUEL</th>
                            <th rowspan="2">메대프<br>
                            모의고사</th>
                            <th rowspan="2">월간<br>장영진<br>모의고사</th>
                            <th rowspan="2">러셀CORE<br>Weekly<br>모의고사</th>
                            <th rowspan="2">장영진<br>식스팩<br>(6PACK)</th>
                        </tr>
                        <tr>
                            <th>QUEL<br>모의고사</th>
                            <th class="b-r">E-QUEL<br>모의고사</th>
                        </tr>
                    </thead>
                    <% ElseIf campus_code = "CD0257" Then '중계 %>
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 17%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th rowspan="2">구<br>분</th>
                            <th colspan="2">QUEL</th>
                            <th rowspan="2" >메대프<br>
                            모의고사</th>
                            <!-- <th rowspan="2">러셀CORE<br>Weekly<br>모의고사</th> -->
                            <th rowspan="2">월간<br>장영진<br>모의고사</th>
                        </tr>
                        <tr>
                            <th>QUEL<br>모의고사</th>
                            <th class="b-r">E-QUEL<br>모의고사</th>
                        </tr>
                    </thead>
                    <% Else %>
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 13%;">
                        <col style="width: 15%;">
                        <col style="width: 17%;">
                        <col style="width: 15%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th rowspan="2">구<br>분</th>
                            <th colspan="3">QUEL</th>
                            <th rowspan="2">메대프<br>
                            모의고사</th>
                            <th rowspan="2">러셀CORE<br>Weekly<br>모의고사</th>
                            <th rowspan="2">월간<br>장영진<br>모의고사</th>
                        </tr>
                        <tr>
                            <th>QUEL<br>모의고사</th>
                            <th>E-QUEL<br>모의고사</th>
                            <th class="b-r">QUEL :<br>UNIT</th>
                        </tr>
                    </thead>
                    <% End If %>
                    <tbody>
                        <tr>
                            <!-- 1. 월 -->
                            <th class="bg-sky">3월</th>
                            <!-- 2. QUEL 모의고사 -->
                            <td></td>
                            <!-- 3. E-QUEL 모의고사 -->
                            <td></td>
                            <!-- 4. QUEL UNIT -->
                            <td class="ico-yg">1~4회차</td>
                            <!-- 5. 메대프 모의고사 -->
                            <td class="ico-y">3/22(금)</td>
                            <!-- 6. 러셀CORE Weekly 모의고사 -->
                            <td class="ico-p">8~9회차</td>
                            <!-- 7. 월간 장영진 모의고사 -->
                            <td class="ico-o">3월호</td>
                            <!-- 8. 러셀CORE Weekly 모의고사 -->
                            <td></td>
                            <!-- 9. 장영진 식스팩(6PACK) -->
                            <td class="ico-pk">시즌1</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">4월</th>
                            <td></td>
                            <td></td>
                            <td class="ico-yg">5~8회차</td>
                            <td class="ico-y">4/16(화)</td>
                            <td class="ico-p">10~11회차</td>
                            <td class="ico-o">4월호</td>
                            <td class="ico-p">10~11회차</td>
                            <td class="ico-pk">시즌1</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">5월</th>
                            <td class="ico-b">1회</td>
                            <td></td>
                            <td class="ico-yg">9~12회차</td>
                            <td class="ico-y">5/21(화)</td>
                            <td class="ico-p">12~13회차</td>
                            <td class="ico-o">5월호</td>
                            <td class="ico-p">12~13회차</td>
                            <td class="ico-pk">시즌2</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">6월</th>
                            <td></td>
                            <td></td>
                            <td class="ico-yg">13~16회차</td>
                            <td></td>
                            <td class="ico-p">14~16회차</td>
                            <td class="ico-o">6월호</td>
                            <td class="ico-p">14~16회차</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">7월</th>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td class="ico-y">7/5(금)</td>
                            <td class="ico-p">17~18회차</td>
                            <td class="ico-o">7월호</td>
                            <td class="ico-p">17~18회차</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">8월</th>
                            <td class="ico-b">2회</td>
                            <td class="ico-db">8/22(목)</td>
                            <td></td>
                            <td></td>
                            <td class="ico-p">19회차</td>
                            <td class="ico-o">8월호</td>
                            <td class="ico-p">19회차</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">9월</th>
                            <td class="ico-b">3회</td>
                            <td></td>
                            <td></td>
                            <% If campus_code = "CD0250" OR campus_code = "CD0249" OR campus_code = "CD0349" OR campus_code = "CD0340"  Then '부천/영통/울산/코어광주 %>
                            <td class="ico-y">9/27(금)</td>
                            <% Else %>
                            <td></td>
                            <% End If %>
                            <td class="ico-p">20~21회차</td>
                            <td class="ico-o">9월호</td>
                            <td class="ico-p">20~21회차</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">10월</th>
                            <td class="ico-b">4~5회</td>
                            <td></td>
                            <td></td>
                            <td class="ico-y">10/22(화)</td>
                            <td class="ico-p">22회차</td>
                            <td></td>
                            <td class="ico-p">22회차</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">11월</th>
                            <td></td>
                            <td class="ico-db">11/1(금)</td>
                            <td></td>
                            <td></td>
                            <td class="ico-p">23회차</td>
                            <td></td>
                            <td class="ico-p">23회차</td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- //연간 시행 일정 -->
            <p class="r-txt">* 상기 일정은 평가원 시행 계획 및<br>
            학원별 학사일정에 따라 변경 및 조정될 수 있습니다.
            </p>
            <% End if %>
            <!-- 학생후기 슬라이드 type03 -->
            <div class="stu-r-slide type03 swiper-container">
                <% If campus_code = "CD0340" Then '코어광주 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>공부하던 공간에서 응시할 수 있다는 점에서 이동을 최소화 시켜주며 또 실전 같은 분위기에서 시험을 응시할 수 있어 수능의 감을 놓지 않을 수 있었습니다. 매달 시행되다 보니 저의 부족한 점을 파악하고 새로 습득한 문제풀이법을 실전에서 연습해 볼 수 있어서 좋았습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_joseon.png" alt=""></div>
                                <p><strong>2024 조선대 의예과 합격</strong><br>
                                    러셀CORE 광주 김세준
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>혼자서 모의고사를 보면 현장감이 떨어져서 긴장이 되지 않는데 매달마다 학원생들 전체가 모의고사를 응시하여 현장감을 느낄 수 있었습니다. 함께 본 모의고사 덕분에 실제 수능 날에는 긴장하지 않고 시험에 응시할 수 있었습니다. 
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_joseon.png" alt=""></div>
                                <p><strong>2024 조선대 의예과 합격</strong><br>
                                    러셀CORE 광주 김시영
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0249" Then '영통 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀학원에서 자료를 많이 제공해 줘서 좋았습니다. 모의고사의 퀄리티가 굉장히 좋고 해설까지 잘 쓰여 있어서 수능 대비에 많은 도움이 되었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                <p><strong>2023 고려대(안암) 화학과 합격</strong><br>
                                    러셀 영통 신승민
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>전국 단위 사설 모의고사인 메대프 모의고사와 퀄리티가 보증된 QUEL 모의고사를 응시할 수 있다는 점과 담임선생님들의 적극적인 입시 정보 제공 등 다양한 메리트들이 러셀에서 재수생활을 이어 나가겠다는 마음을 먹게 되었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_semyung.png" alt=""></div>
                                <p><strong>2023 세명대 한의예과 합격</strong> <br>
                                    러셀 영통 정인지
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0250" OR campus_code = "CD0349" Then '부천/울산 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀의 퀄 모의고사가 가장 마음에 들었습니다. 문제의 퀄리티 자체도 준수하고, 적당한 난이도로 출제되어 제 실력을 확인할 수 있는 좋은 모의고사였습니다.
                                </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                <p><strong>2024 연세대 의예과 합격</strong><br>
                                    최상위권 남학생 의대전문관 러셀 기숙학원 심민준
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀에서 지속적으로 퀄 모의고사나 메대프 모의고사와 같은 사설 모의고사 콘텐츠를 제공해주어 실전과 유사한 분위기에서 실모 연습을 할 수 있는 것이 큰 도움이 되었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_busan.png" alt=""></div>
                                <p><strong>2024 부산대 의예과 합격</strong><br>
                                    러셀 센텀 최서경
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0257" Then '중계 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>매월 퀄 모의고사와 메대프 모의고사를 풀며 주기적으로 실력을 점검하고, 다양한 문제들을 풀어 볼 수 있어서 좋았습니다. 저의 현 위치를 파악할 수 있는 동기부여도 되었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_konkuk.png" alt=""></div>
                                <p><strong>2022 건국대 수의예과 합격</strong> <br>
                                    러셀 중계 문서영
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>혼자 공부하게 되면 수능처럼 모의고사를 볼 수 있는 기회가 많이 없는데, 러셀은 메대프 모의고사뿐만 아니라 퀄 모의고사 등 1~2주에 한 번씩 응시할 수 있어서 좋았습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_deokseong.png" alt=""></div>
                                <p><strong>2024 덕성여대 약학과 합격</strong><br>
                                    러셀 중계 민지우
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0342" Then '대구 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀CORE Weekly 모의고사도 정말 마음에 드는 콘텐츠였습니다. 하프 모의고사 형태로 진행되어, 시간을 많이 뺏기지 않으면서도 다양하고 많은 문제들을 접할 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p><strong>2024 서울대 생명교육과합격</strong> <br>
                                    러셀 대구 이승우
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>위클리 모의고사와 메대프 모의고사는 실전과 같은 환경에서 평소 학습했던 부분들을 점검하고 시간 관리 연습을 하며 객관적인 나의 위치를 파악할 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_daeguhanuidae.png" alt=""></div>
                                <p><strong>2024 대구한의대 한의예과 합격</strong><br>
                                    러셀 대구 이상엽
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% End If %>
                <div class="swiper-pagination type07"></div>
            </div>
            <!-- //학생후기 슬라이드 type03 -->
            
            <% If campus_code = "CD0342" Then '대구 %>
            <p class="tit">러셀 대구 실전 콘텐츠<br><strong>[과목별 연간 시행 일정]</strong></p>
            <div class="study-schedule">
                <div class="year-tab-wrap">
                    <div class="year-tab">
                        <a href="" class="on"><strong>3</strong>월</a>
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
                <!-- 3월 -->
                <div class="year-cont" style="display:block;">
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

                    <div>
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
                    <div>
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
                    <div>
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
                    <div>
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
                    <div>
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
                    <div>
                        <p>
                            [11월] <br>
                            E-QUEL 모의고사 <br>
                            (국수영탐 FULL 모의고사)
                        </p>
                    </div>
                </div>
                <!-- //11월 -->
            </div>
            <script>
                tabMenu('.year-tab','.year-cont')
            </script>
            <% End if %>
        </div>
    </div>
    <div class="bottom-bar">
        <% If campus_code = "CD0257" Then '중계 %>
        <p style="letter-spacing:-2px;">다시 도전하는 수능 목표 성적과 대학 합격,<br>
            <strong><span><%=txtCampus%> 재수종합반[반수]</span>가<br>
            대입성공의 가장 강력한 경쟁력입니다.</strong>
        </p>
        <% Else %>
        <p>다시 도전하는 최상위권 대입성공,<br>
            <strong><span><%=txtCampus%> 재수종합반[반수]</span>가<br>
            대입성공의 가장 강력한 경쟁력입니다.</strong>
        </p>
        <% End If %>
    </div>
</div>