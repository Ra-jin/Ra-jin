<div class="cont js-cont <%=campusName%>">
    <div class="cont07">
        <div class="inner03">
            <% If sCampusCode = "CD0257" Then '중계 %>
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half_overall/cont07_tit.png" alt="체계적인 관리가 만들어내는 결과의 차이, 반수생을 위한 시스템은 달라야 합니다." /></h3>
            <% Else %>
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/cont07_tit.png" alt="최상위권과 경쟁과 체계적인 관리가 만들어내는 결과의 차이, 반수생을 위한 시스템은 달라야 합니다." /></h3>
            <% End If %>
            
            <% If sCampusCode = "CD0250" OR sCampusCode = "CD0257" Then '부천/중계 %>
            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half_overall/cont07_img.jpg" alt="" /></div>
            <% Else %>
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/cont07_img.jpg" alt="" /></div>
            <% End If %>

            <% If sCampusCode = "CD0249" Then '영통 %>
            <div class="swiper-container stu-slide">
                <ul class="swiper-wrapper">
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont04_slide01.jpg" alt="" /></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont04_slide02.jpg" alt="" /></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont04_slide03.jpg" alt="" /></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont04_slide04.jpg" alt="" /></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont04_slide05.jpg" alt="" /></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont04_slide06.jpg" alt="" /></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont04_slide07.jpg" alt="" /></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont04_slide08.jpg" alt="" /></li>
                </ul>
            </div>
            <% ElseIf sCampusCode = "CD0257" or sCampusCode = "CD0342" or sCampusCode = "CD0340" Then '중계/대구/코어광주 %>
            <div class="swiper-container stu-slide">
                <ul class="swiper-wrapper">
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont04_slide01.jpg" alt="" /></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont04_slide02.jpg" alt="" /></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont04_slide03.jpg" alt="" /></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont04_slide04.jpg" alt="" /></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont04_slide05.jpg" alt="" /></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont04_slide06.jpg" alt="" /></li>
                </ul>
            </div>
            <% ElseIf sCampusCode = "CD0349" Then '울산 %>
            <div class="swiper-container stu-slide">
                <ul class="swiper-wrapper">
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont04_slide01.jpg" alt="" /></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont04_slide02.jpg" alt="" /></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont04_slide03.jpg" alt="" /></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont04_slide04.jpg" alt="" /></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont04_slide05.jpg" alt="" /></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont04_slide06.jpg" alt="" /></li>
                </ul>
            </div>
            <% End If %>

            <!-- 후기영역 -->
            <% If sCampusCode = "CD0340" Then '코어광주 %>
            <div class="b-review">
                <div>
                    <div class="txt">담임선생님께서 언제나 친절하게 고민이 있으면 상담해 주시고, 고민이 없어도<br>
                        주기적으로 학생들을 불러 원내 생활이 괜찮은지 물어보며 학생들을 진지하게<br>
                        케어해주셔서 힘든 수험기간 동안 큰 힘이 되었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dt>
                        <dd><strong>2024 연세대 화공생명공학부 합격</strong><br>
                            러셀CORE 광주 이석준</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">슬럼프가 왔을 때 담임선생님이 친절하게 상담을 해주셔서 많은 의지가 되었던 것<br>
                        같습니다. 또한, 원서를 넣을 때 합리적인 방향으로 쓸 수 있게 도와주셨고,<br>
                        좋은 결과를 낼 수 있었습니다.</div>
                    <dl>
                        <dt><img style="width:35px;" src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_joseon.png" alt="조선대 로고" /></dt>
                        <dd><strong>2024 조선대 약학과 합격</strong><br>
                            러셀CORE 광주 김재원</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0249" Then '영통 %>
            <div class="b-review">
                <div>
                    <div class="txt">면학분위기를 잘 조성해 주셨고, 멘탈 관리에 있어서도 적극적인 지지와<br>
                        응원을 보내 주신 덕분에 흔들리지 않을 수 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dt>
                        <dd><strong>2023 서울대 화학교육과 합격</strong><br>
                            러셀 영통 최가현</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">담임선생님께서 친절하고 전문적으로 상담해 주신 점이 좋았습니다.<br>
                        수시, 정시, 자소서 등 정말 다방면으로 많은 조언을 해 주셨습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dt>
                        <dd><strong>2023 서울대 기계공학부 합격</strong><br>
                            러셀 영통 문인하</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
            <div class="b-review">
                <div>
                    <div class="txt">바른공부 자습전용관 바로 앞에 상주하고 계셔서 부담 없이 상담받을 수 있는 게 <br>
                        좋았고, 또 제 수준이나 상황에 맞춰 상담하고 관리해 주신다는 느낌이 들어 <br>
                        좋았습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dt>
                        <dd><strong>2023 서울대 의예과 합격</strong><br>
                            러셀 중계 노현지</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">담임선생님은 혼자라는 기분이 들지 않도록 항상 옆에 있어주셨습니다. 수험생활이 
                        혼자하는 싸움이라는 생각이 들 때, 담임선생님의 존재는 1년이라는 시간을 버티는 
                        든든한 지원군이었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dt>
                        <dd><strong>2022 고려대 행정학과 합격</strong><br>
                            러셀 중계 이은상</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0342" Then '대구 %>
            <div class="b-review">
                <div>
                    <div class="txt">러셀 대구의 가장 큰 장점은 바자관 바로 앞 담임 부스에 담임선생님이 상주하고 <br>
                        계셔서 언제든 입시 고민과 정보들에 대해서 담임선생님과 이야기를 나눌 수 <br>있다는 점입니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyungpook.png" alt="경북대 로고" /></dt>
                        <dd><strong>2024 경북대 치의예과 합격</strong><br>
                            러셀 대구 정은채</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">원서 접수 기간에 많이 막막했는데, 러셀 대구 입시 전문 담임선생님께서 생기부 <br>
                        내용과 성적에 맞춰 여러 학과와 전형을 정리해 주시고, 지원 전략과 관련해서 <br>
                        상담도 자세하게 해 주셔서 많은 도움이 됐습니다</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyungpook.png" alt="경북대 로고" /></dt>
                        <dd><strong>2024 경북대 약학과 합격</strong><br>
                            러셀 대구 이서영</dd>
                    </dl>
                </div>
            </div>
            <% Else %>
            <div class="b-review">
                <div>
                    <div class="txt">담임선생님은 입시 전략을 고민하고 있었을 때 어떤 전형이 저에게 가장 유리할지 
                        친절하게 알려주셨습니다. 종종 공부에 집중이 되지 않을 때 저의 멘탈을 잡아<br>
                        주셨고 재밌게 상담을 해 주셔서 제가 다시 공부에 전념할 수 있게 도와주셨습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dt>
                        <dd><strong>2024 서울대 의예과 합격</strong><br>
                            러셀 분당 성중현</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">담임선생님과 상담하며 해결책을 찾은 것이 점수 향상에 큰 도움이 되었습니다.<br>
                        공부 방향에 대해 의구심이 들 때 담임선생님께 여쭤보면 아낌없는 격려와 조언을 
                        해주셔서 수능날까지 공부에만 집중할 수 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chonbuk.png" alt="전북대 로고" /></dt>
                        <dd><strong>2024 전북대 의예과 합격</strong><br>
                            러셀 평촌 홍지우</dd>
                    </dl>
                </div>
            </div>
            <% End If %>
        </div>
    </div>

    <div class="cont08">
        <div class="inner">
            <div class="tit" data-aos="fade-up">
                <% If sCampusCode = "CD0257" Then '중계 %>
                <h3 class="p0"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half_overall/cont08_tit.png" alt="면학분위기로 소문난 바른공부 자습전용관" /></h3>
                <% Else %>
                <h3 class="p0"><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/cont08_tit.png" alt="면학분위기로 소문난 바른공부 자습전용관" /></h3>
                <% End If %>

                <% If sCampusCode = "CD0342" OR sCampusCode = "CD0349" OR sCampusCode = "CD0340" Then '대구/울산/코어광주 %>
                <a class="ico_bus" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/ico_bus.png" alt="" /></a>
                <% End If %>
            </div>
            <ul>
                <li><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half_overall/cont08_img01.jpg" alt="집단적인 면학분위기" /></li>
                <li><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half_overall/cont08_img02.jpg" alt="학습 동선 최소화" /></li>
                <li class="pb0">
                    <a href="javascript:void(0)" class="bt-tt js-mask"><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/ico_search.png" alt="" /></a>
                    <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half_overall/cont08_img03.jpg" alt="개방형 구조 및 최적의 학습환경" />

                    <!-- 레이어팝업 -->
                    <div class="layer-pop layer">
                        <a href="javascript:void(0)" class="bt-close"><img src="<%=Application("img_path_russel")%>/intro/2024/half/bt_close.png" alt="닫기"></a>
                        <div class="layer-wrap"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half_overall/cont08_slide_pop.jpg" alt="" /></div>
                    </div>
                    <!-- //레이어팝업 -->
                </li>
                <% If sCampusCode <> "CD0250" AND sCampusCode <> "CD0257" Then '부천/중계 제외 %>
                <li class="pb0"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half_overall/cont08_img04.jpg" alt="자체 식당 운영" /></li>
                <% End If %>
            </ul>

            <!-- 후기영역 -->
            <% If sCampusCode = "CD0340" Then '코어광주 %>
            <div class="b-review">
                <div>
                    <div class="txt">바자관의 장점은 집단적인 면학분위기와 그로 인한 학습시간 확보입니다.<br>
                        열심히 공부하는 러셀의 친구들과 언니들을 보고 자극을 받아 더 치열하게<br>
                        공부할 수 있었고 외로움 역시 덜 수 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dt>
                        <dd><strong>2024 서울대 자유전공학부 합격</strong><br>
                            러셀CORE 광주 심혜림</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">아무래도 밖에 나가서 밥을 먹게되면 이동시간, 주문하고 기다리는 시간 등이<br>
                        허비되기 쉬운데 시간낭비를 줄일 수 있었습니다. 또한 영양적으로 균형있는<br>
                        식사를 규칙적으로 할 수 있다는 것도 큰 장점이라고 생각합니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dt>
                        <dd><strong>2024 연세대 의예과 합격</strong><br>
                            러셀CORE 광주 강세빈</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <div class="b-review">
                <div>
                    <div class="txt">러셀에서는 이동 시간을 최소화하여 낭비되는 시간과 에너지를 줄이고, <br>
                        공부에 최대의 시간과 에너지를 투자할 수 있었습니다. 이러한 시간적인 효율성을 <br>
                        누리면서도 단과 강의와 자습관 자체의 질 역시도 매우 높다는 점이 <br>
                        가장 큰 장점이라고 생각합니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dt>
                        <dd><strong>2024 고려대 사회학과 합격</strong><br>
                            러셀 부천 노은수</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">바자관의 가장 큰 장점은 개방적인 구조입니다. 다른 학생들이 공부하는 모습을 <br>
                        볼 수 있어 집단적인 면학 분위기를 형성할 수 있을 뿐만 아니라, <br>
                        개방감을 주어 실내에 오랜 시간 머물러도 답답하지 않아 긴 시간 공부에 집중할 수 
                        있도록 도와줍니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kangwon.png" alt="강원대 로고" /></dt>
                        <dd><strong>2024 강원대 의예과 합격</strong><br>
                            러셀 부천 이가은</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0249" Then '영통 %>
            <div class="b-review">
                <div>
                    <div class="txt">러셀에서 공부를 하면서 시간을 체계적으로 이용하고 온전히 학습이 집중할 수 <br>
                        있게 되었던 경험이 굉장히 긍정적인 기억으로 남아 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sungkyunkwan.png" alt="성균관대 로고" /></dt>
                        <dd><strong>2023 성균관대 약학과 합격</strong><br>
                            러셀 영통 오현석</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">바자관의 좋은 면학분위기와 자습시간을 많이 확보할 수 있다는 장점 때문에<br>
                        러셀을 선택하게 되었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dt>
                        <dd><strong>2023 서울대 생명과학부 합격</strong><br>
                            러셀 영통 김태현</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
            <div class="b-review">
                <div>
                    <div class="txt">효율적으로 시간 관리를 할 수 있다는 점이 가장 좋았습니다. <br>
                        매일 아침 정해진 시간에 등원하고, 공부하는 시간과 쉬는 패턴이 일정하다보니 <br>
                        의지가 약했던 저에게는 많은 도움이 되었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_ewha.png" alt="이화여대 로고" /></dt>
                        <dd><strong>2024 이화여대 약학과 합격</strong><br>
                            러셀 중계 이유진</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">수능 시간표와 동일한 표준 시간표 운영이 가장 좋았습니다. <br>
                        저에게 주어진 시간들을 계획해서 사용하는 것이 막막했는데, 표준 시간표에 <br>
                        맞춰서 계획을 세우니 과목별로 균형을 맞춰서 규칙적으로 공부할 수 있어 <br>
                        가장 큰 도움이 되었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dt>
                        <dd><strong>2023 서울대 의예과 합격</strong><br>
                            러셀 중계 노현지</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0342" OR sCampusCode = "CD0349" Then '대구/울산 %>
            <div class="b-review">
                <div>
                    <div class="txt">도서관처럼 바른공부 자습전용관은 개방형 구조로 설계되어, <br>
                        양옆에 열심히 공부하는 학생들이 보입니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_catholic.png" alt="이화여대 로고" /></dt>
                        <dd><strong>2024 가톨릭대 약학과 합격</strong><br>
                            러셀 대구 가톨릭대 곽승현</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">러셀 대구 자체 식당 운영으로 급식을 따뜻하게 먹을 수 있었습니다. 월요일부터 <br>
                        토요일까지 급식이 운영되어, 식사 걱정 없이 학원에 다닐 수 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyungpook.png" alt="경북대 로고" /></dt>
                        <dd><strong>2024 경북대 약학과 합격</strong><br>
                            러셀 대구 이서영</dd>
                    </dl>
                </div>
            </div>
            <% End If %>
        </div>
    </div>

    <div class="cont09">
        <div class="inner">
            <% If sCampusCode = "CD0257" Then '중계 %>
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half_overall/cont09_tit.png" alt="반수생에게 반드시 필요한 러셀 실전 학습 콘텐츠" /></h3>
            <% Else %>
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/cont09_tit.png" alt="반수생에게 반드시 필요한 러셀 실전 학습 콘텐츠" /></h3>
            <% End If %>

            <% If sCampusCode = "CD0249" OR sCampusCode = "CD0257" Then '영통/중계 %>
            <div class="swiper-container program-slide">
                <ul class="swiper-wrapper">
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide01.png" alt="QUEL 모의고사"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide02.png" alt="E-QUEL 모의고사"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide04.png" alt="메가X대성 더 프리미엄 모의고사"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide06.png" alt="월간 학습지 (월간 장영진)"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide07.png" alt="러셀 학습 플래너"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide08.png" alt="일일수학 30제"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide09.png" alt="러셀 총평노트"></li>
                </ul>
                <div class="swiper-pagination type01"></div>
            </div>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <div class="swiper-container program-slide">
                <ul class="swiper-wrapper">
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide01.png" alt="QUEL 모의고사"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide04.png" alt="메가X대성 더 프리미엄 모의고사"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide06.png" alt="월간 학습지 (월간 장영진)"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont06_slide05.png" alt="러셀CORE Weekly 모의고사"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide13.png" alt="2024 장영진T 식스팩(6PACK)"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide07.png" alt="러셀 학습 플래너"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide08.png" alt="일일수학 30제"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide09.png" alt="러셀 총평노트"></li>
                </ul>
                <div class="swiper-pagination type01"></div>
            </div>
            <% Else %>
            <div class="swiper-container program-slide">
                <ul class="swiper-wrapper">
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide01.png" alt="QUEL 모의고사"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide02.png" alt="E-QUEL 모의고사"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide03.png" alt="QUEL : UNIT"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide04.png" alt="메가X대성 더 프리미엄 모의고사"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide05.png" alt="러셀CORE Weekly 모의고사"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide06.png" alt="월간 학습지 (월간 장영진)"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide07.png" alt="러셀 학습 플래너"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide08.png" alt="일일수학 30제"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide09.png" alt="러셀 총평노트"></li>
                </ul>
                <div class="swiper-pagination type01"></div>
            </div>
            <% End If %>

            <div class="mt80">
                <% If sCampusCode = "CD0249" OR sCampusCode = "CD0250" OR sCampusCode = "CD0257" Then '영통/부천/중계 %>
                <table class="schedule-tbl">
                    <colgroup>
                        <col style="width:auto;">
                        <col style="width:155px;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th colspan="2">구분</th>
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
                        <tr>
                            <th rowspan="2">QUEL</th>
                            <td class="bg-gray"><strong>QUEL<br>
                                모의고사</strong></td>
                            <td></td>
                            <td></td>
                            <td class="bg-01">1회</td>
                            <td></td>
                            <td></td>
                            <td class="bg-01">2회</td>
                            <td class="bg-01">3회</td>
                            <td class="bg-01">4~5회</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="bg-gray"><strong>E-QUEL<br>
                                모의고사</strong></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td class="bg-02">8/22(목)</td>
                            <td></td>
                            <td></td>
                            <td class="bg-02">11/1(금)</td>
                        </tr>
                        <tr>
                            <th colspan="2">메가X대성 더 프리미엄 모의고사</th>
                            <td class="bg-04">3/22(금)</td>
                            <td class="bg-04">4/16(화)</td>
                            <td class="bg-04">5/21(화)</td>
                            <td></td>
                            <td class="bg-04">7/5(금)</td>
                            <td></td>
                            <% If sCampusCode = "CD0250" OR sCampusCode = "CD0249" Then '부천/영통 %>
                            <td class="bg-04">9/27(금)</td>
                            <% Else %>
                            <td></td>
                            <% End If %>
                            <td class="bg-04">10/22(화)</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th colspan="2">월간 학습지<br>
                                (월간 장영진)</th>
                            <td class="bg-06">3월호</td>
                            <td class="bg-06">4월호</td>
                            <td class="bg-06">5월호</td>
                            <td class="bg-06">6월호</td>
                            <td class="bg-06">7월호</td>
                            <td class="bg-06">8월호</td>
                            <td class="bg-06">9월호</td> 
                            <td></td>
                            <td></td>
                        </tr>
                        <% If sCampusCode = "CD0250" Then '부천 %>
                        <tr>
                            <th colspan="2">러셀CORE<br>
                                Weekly 모의고사</th>
                            <td></td>
                            <td class="bg-05">10~11회차</td>
                            <td class="bg-05">12~13회차</td>
                            <td class="bg-05">14~16회차</td>
                            <td class="bg-05">17~18회차</td>
                            <td class="bg-05">19회차</td>
                            <td class="bg-05">20~21회차</td>
                            <td class="bg-05">22회차</td>
                            <td class="bg-05">23회차</td>
                        </tr>
                        <tr>
                            <th colspan="2">장영진 식스팩(6PACK)</th>
                            <td class="bg-03">시즌1</td>
                            <td class="bg-03">시즌1</td>
                            <td class="bg-03">시즌2</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td> 
                            <td></td>
                            <td></td>
                        </tr>
                        <% End If %>
                    </tbody>
                </table>
                <% ElseIf sCampusCode = "CD0342" Then '대구 %>
                <h5 class="fz42 mb60">러셀 대구 실전 콘텐츠 <strong>[과목별 연간 시행 일정]</strong></h5>
                <div class="study-slide-wrap">
                    <div class="swiper-container study-navi">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">3월</div>
                            <div class="swiper-slide">4월</div>
                            <div class="swiper-slide">5월</div>
                            <div class="swiper-slide">6월</div>
                            <div class="swiper-slide">7월</div>
                            <div class="swiper-slide">8월</div>
                            <div class="swiper-slide">9월</div>
                            <div class="swiper-slide">10월</div>
                            <div class="swiper-slide">11월</div>
                        </div>
                    </div>
                    <div class="swiper-container study-slide">
                        <div class="swiper-wrapper">
                            <!--3월-->
                            <div class="swiper-slide">
                                <div>
                                    <table class="tbl-01">
                                        <colgroup>
                                            <col style="width:20%;">
                                            <col style="width:auto">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th>국어</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[이감] 모의고사 2회차 + 간쓸개</li>
                                                        <li>[상상] 모의고사 2회차 + 월간지</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>수학</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[WEEKLY] Half 모의고사 2회차</li>
                                                        <li>[장영진] 월간지 (Half)</li>
                                                        <li>[장영진] 식스팩 주간지 4회차</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>영어</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[WEEKLY] Half 모의고사 2회차</li>
                                                        <li>[문호상] 데일리 영단어 · 영독해</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>탐구</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[WEEKLY] Half 모의고사 2회차</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div>
                                        <p>[3월] 메가X대성 더 프리미엄 모의고사 (국수영탐 FULL 모의고사)</p>
                                    </div>
                                </div>
                            </div>
    
                            <!--4월-->
                            <div class="swiper-slide">
                                <div>
                                    <table class="tbl-01">
                                        <colgroup>
                                            <col style="width:20%;">
                                            <col style="width:auto">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th>국어</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[상상] 월간지</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>수학</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[WEEKLY] Half 모의고사 2회차</li>
                                                        <li>[장영진] 월간지 (Half)</li>
                                                        <li>[장영진] 식스팩 주간지 4회차</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>영어</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[WEEKLY] Half 모의고사 2회차</li>
                                                        <li>[문호상] 데일리 영단어 &middot; 영독해</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>탐구</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[WEEKLY] Half 모의고사 2회차</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div>
                                        <p>[4월] 메가X대성 더 프리미엄 모의고사 (국수영탐 FULL 모의고사)</p>
                                    </div>
                                </div>
                            </div>
    
                            <!--5월-->
                            <div class="swiper-slide">
                                <div>
                                    <table class="tbl-01">
                                        <colgroup>
                                            <col style="width:20%;">
                                            <col style="width:auto">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th>국어</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[QUEL] 6평 대비 1회</li>
                                                        <li>[이감] 모의고사 4회차 + 간쓸개</li>
                                                        <li>[상상] 모의고사 4회차 + 월간지</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>수학</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[QUEL] 6평 대비 1회</li>
                                                        <li>[WEEKLY] Half 모의고사 3회차</li>
                                                        <li>[장영진] 모의고사 4회차 + 월간지 (Half)</li>
                                                        <li>[장영진] 식스팩 주간지 4회차</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>영어</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[QUEL] 6평 대비 1회</li>
                                                        <li>[WEEKLY] Half 모의고사 3회차</li>
                                                        <li>[문호상] 데일리 영단어 &middot; 영독해</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>탐구</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[QUEL] 6평 대비 1회</li>
                                                        <li>[WEEKLY] Half 모의고사 3회차</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div>
                                        <p>[5월] 메가X대성 더 프리미엄 모의고사 (국수영탐 FULL 모의고사)</p>
                                    </div>
                                </div>
                            </div>
    
                            <!--6월-->
                            <div class="swiper-slide">
                                <div>
                                    <table class="tbl-01">
                                        <colgroup>
                                            <col style="width:20%;">
                                            <col style="width:auto">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th>국어</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[이감] 스폐셜시즌 (간쓸개+N제)</li>
                                                        <li>[상상] 월간지</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>수학</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[WEEKLY] Half 모의고사 3회차</li>
                                                        <li>[장영진] 월간지 (Half)</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>영어</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[WEEKLY] Half 모의고사 3회차</li>
                                                        <li>[문호상] Half 모의고사</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>탐구</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[WEEKLY] Half 모의고사 3회차</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!-- <div>
                                        <p>[6월] 메가X대성 더 프리미엄 모의고사 (국수영탐 FULL 모의고사)</p>
                                    </div> -->
                                </div>
                            </div>
    
                            <!--7월-->
                            <div class="swiper-slide">
                                <div>
                                    <table class="tbl-01">
                                        <colgroup>
                                            <col style="width:20%;">
                                            <col style="width:auto">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th>국어</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[이감] Pre파이널 모의고사 2회차 + 간쓸개</li>
                                                        <li>[이감] 파이널 모의고사 1회차 + 간쓸개</li>
                                                        <li>[상상] 월간지</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>수학</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[WEEKLY] Half 모의고사 2회차</li>
                                                        <li>[장영진] 모의고사 2회차 + 월간지 (Half)</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>영어</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[WEEKLY] Half 모의고사 2회차</li>
                                                        <li>[문호상] Half 모의고사</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>탐구</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[WEEKLY] Half 모의고사 2회차</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div>
                                        <p>[7월] 메가X대성 더 프리미엄 모의고사 (국수영탐 FULL 모의고사)</p>
                                    </div>
                                </div>
                            </div>
    
                            <!--8월-->
                            <div class="swiper-slide">
                                <div>
                                    <table class="tbl-01">
                                        <colgroup>
                                            <col style="width:20%;">
                                            <col style="width:auto">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th>국어</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[QUEL] 모의고사 2회차</li>
                                                        <li>[이감] 파이널 모의고사 5회차 + 간쓸개</li>
                                                        <li>[상상] 모의고사 4회차 + 월간지</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>수학</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[QUEL] 모의고사 2회차</li>
                                                        <li>[WEEKLY] Half 모의고사 1회차</li>
                                                        <li>[장영진] 모의고사 4회차 + 월간지 (Half)</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>영어</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[QUEL] 모의고사 2회차</li>
                                                        <li>[WEEKLY] Half 모의고사 1회차</li>
                                                        <li>[문호상] Half 모의고사</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>탐구</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[QUEL] 모의고사 2회차</li>
                                                        <li>[WEEKLY] Half 모의고사 1회차</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div>
                                        <p>[8월] E-QUEL 모의고사 (국수영탐 FULL 모의고사)</p>
                                    </div>
                                </div>
                            </div>
    
                            <!--9월-->
                            <div class="swiper-slide">
                                <div>
                                    <table class="tbl-01">
                                        <colgroup>
                                            <col style="width:20%;">
                                            <col style="width:auto">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th>국어</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[QUEL] 모의고사 1회차</li>
                                                        <li>[이감] 파이널 모의고사 5회차 + 간쓸개</li>
                                                        <li>[상상] 모의고사 4회차 + 월간지</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>수학</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[QUEL] 모의고사 1회차</li>
                                                        <li>[WEEKLY] Half 모의고사 2회차</li>
                                                        <li>[장영진] 모의고사 4회차 + 월간지 (Half)</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>영어</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[QUEL] 모의고사 1회차</li>
                                                        <li>[WEEKLY] 모의고사 2회차</li>
                                                        <li>[김지영] 실전 모의고사 2회</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>탐구</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[QUEL] 모의고사 1회차</li>
                                                        <li>[WEEKLY] 모의고사 2회차</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div>
                                        <p>[9월] 메가X대성 더 프리미엄 모의고사 (국수영탐 FULL 모의고사)</p>
                                    </div>
                                </div>
                            </div>
    
                            <!--10월-->
                            <div class="swiper-slide">
                                <div>
                                    <table class="tbl-01">
                                        <colgroup>
                                            <col style="width:20%;">
                                            <col style="width:auto">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th>국어</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[QUEL] 모의고사 2회차</li>
                                                        <li>[이감] 파이널 모의고사 4회차 + 간쓸개</li>
                                                        <li>[상상] 모의고사 4회차 + 월간지</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>수학</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[QUEL] 모의고사 2회차</li>
                                                        <li>[장영진] 실전 모의고사 4회차</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>영어</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[QUEL] 모의고사 2회차</li>
                                                        <li>[WEEKLY] 모의고사 1회차</li>
                                                        <li>[김지영] 실전 모의고사 2회</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>탐구</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[QUEL] 모의고사 2회차</li>
                                                        <li>[WEEKLY] 모의고사 1회차</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div>
                                        <p>[10월] 메가X대성 더 프리미엄 모의고사 (국수영탐 FULL 모의고사)</p>
                                    </div>
                                </div>
                            </div>
    
                            <!--11월-->
                            <div class="swiper-slide">
                                <div>
                                    <table class="tbl-01">
                                        <colgroup>
                                            <col style="width:20%;">
                                            <col style="width: auto">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th>국어</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[이감] 파이널 모의고사 2회차 + 간쓸개</li>
                                                        <li>*이감 파이널 엣지 모의고사 2회 추후 공지</li>
                                                        <li>상상모의고사 1회차</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>수학</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[장영진] 실전 모의고사 2회차</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>영어</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[WEEKLY] 모의고사 1회차</li>
                                                        <li>[김지영] 실전 모의고사 3회</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>탐구</th>
                                                <td>
                                                    <ul class="list-03">
                                                        <li>[WEEKLY] 모의고사 1회차</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div>
                                        <p>[11월] E-QUEL 모의고사 (국수영탐 FULL 모의고사)</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <% Else %>
                <table class="schedule-tbl">
                    <colgroup>
                        <col style="width:auto;">
                        <col style="width:155px;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th colspan="2">구분</th>
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
                        <tr>
                            <th rowspan="3">QUEL</th>
                            <td class="bg-gray"><strong>QUEL<br>
                                모의고사</strong></td>
                            <td></td>
                            <td></td>
                            <td class="bg-01">1회</td>
                            <td></td>
                            <td></td>
                            <td class="bg-01">2회</td>
                            <td class="bg-01">3회</td>
                            <td class="bg-01">4~5회</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="bg-gray"><strong>E-QUEL<br>
                                모의고사</strong></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td class="bg-02">8/22(목)</td>
                            <td></td>
                            <td></td>
                            <td class="bg-02">11/1(금)</td>
                        </tr>
                        <tr>
                            <td class="bg-gray"><strong>QUEL : UNIT</strong></td>
                            <td class="bg-03">1~4회차</td>
                            <td class="bg-03">5~8회차</td>
                            <td class="bg-03">9~12회차</td>
                            <td class="bg-03">13~16회차</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th colspan="2">메가X대성 더 프리미엄 모의고사</th>
                            <td class="bg-04">3/22(금)</td>
                            <td class="bg-04">4/16(화)</td>
                            <td class="bg-04">5/21(화)</td>
                            <td></td>
                            <td class="bg-04">7/5(금)</td>
                            <td></td>
                            <% If sCampusCode = "CD0340" OR sCampusCode = "CD0349" Then '코어광주/울산 %>
                            <td class="bg-04">9/27(금)</td>
                            <% Else %>
                            <td></td>
                            <% End If %>
                            <td class="bg-04">10/22(화)</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th colspan="2">러셀CORE<br>
                                Weekly 모의고사</th>
                            <td class="bg-05">8~9회차</td>
                            <td class="bg-05">10~11회차</td>
                            <td class="bg-05">12~13회차</td>
                            <td class="bg-05">14~16회차</td>
                            <td class="bg-05">17~18회차</td>
                            <td class="bg-05">19회차</td>
                            <td class="bg-05">20~21회차</td>
                            <td class="bg-05">22회차</td>
                            <td class="bg-05">23회차</td>
                        </tr>
                        <tr>
                            <th colspan="2">월간 학습지<br>
                                (월간 장영진)</th>
                            <td class="bg-06">3월호</td>
                            <td class="bg-06">4월호</td>
                            <td class="bg-06">5월호</td>
                            <td class="bg-06">6월호</td>
                            <td class="bg-06">7월호</td>
                            <td class="bg-06">8월호</td>
                            <td class="bg-06">9월호</td> 
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
                <% End If %>
                <p class="r-txt mt15">* 상기 일정은 평가원 시행 계획 및 학원별 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
            </div>

            <!-- 후기영역 -->
            <% If sCampusCode = "CD0340" Then '코어광주 %>
            <div class="b-review">
                <div>
                    <div class="txt">공부하던 공간에서 응시할 수 있다는 점에서 이동을 최소화 시켜주며<br>
                        또 실전 같은 분위기에서 시험을 응시할 수 있어 수능의 감을 놓지 않을 수<br>
                        있었습니다. 매달 시행되다 보니 저의 부족한 점을 파악하고<br>
                        새로 습득한 문제풀이법을 실전에서 연습해 볼 수 있어서 좋았습니다.</div>
                    <dl>
                        <dt><img style="width:35px;"  src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dt>
                        <dd><strong>2024 조선대 의예과 합격</strong><br>
                            러셀CORE 광주 김세준</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">혼자서 모의고사를 보면 현장감이 떨어져서 긴장이 되지 않는데<br>
                        매달마다 학원생들 전체가 모의고사를 응시하여 현장감을 느낄 수 있었습니다.<br>
                        함께 본 모의고사 덕분에 실제 수능 날에는 긴장하지 않고<br>시험에 응시할 수 있었습니다.</div>
                    <dl>
                        <dt><img style="width:35px;"  src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dt>
                        <dd><strong>2024 조선대 의예과 합격</strong><br>
                            러셀CORE 광주 김시영</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0249" Then '영통 %>
            <div class="b-review">
                <div>
                    <div class="txt">러셀학원에서 자료를 많이 제공해 줘서 좋았습니다. 모의고사의 퀄리티가<br>
                        굉장히 좋고 해설까지 잘 쓰여 있어서 수능 대비에 많은 도움이 되었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dt>
                        <dd><strong>2023 고려대(안암) 화학과 합격</strong><br>
                            러셀 영통 신승민</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">전국 단위 사설 모의고사인 메대프 모의고사와 퀄리티가 보증된 QUEL 모의고사를<br>
                        응시할 수 있다는 점과 담임선생님들의 적극적인 입시 정보 제공 등<br>
                        다양한 메리트들이 러셀에서 재수생활을 이어 나가겠다는 마음을 먹게 되었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_semyung.png" alt="세명대 로고" /></dt>
                        <dd><strong>2023 세명대 한의예과 합격</strong><br>
                            러셀 영통 정인지</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
            <div class="b-review">
                <div>
                    <div class="txt">매월 퀄 모의고사와 메대프 모의고사를 풀며 주기적으로 실력을 점검하고, <br>
                        다양한 문제들을 풀어 볼 수 있어서 좋았습니다. 저의 현 위치를 파악할 수 있는 <br>
                        동기부여도 되었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_konkuk.png" alt="건국대 로고" /></dt>
                        <dd><strong>2022 건국대 수의예과 합격</strong><br>
                            러셀 중계 문서영</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">혼자 공부하게 되면 수능처럼 모의고사를 볼 수 있는 기회가 많이 없는데, <br>
                        러셀은 메대프 모의고사뿐만 아니라 퀄 모의고사 등 1~2주에 한 번씩 응시<br>
                        할 수 있어서 좋았습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_deokseong.png" alt="덕성여대 로고" /></dt>
                        <dd><strong>2024 덕성여대 약학과 합격</strong><br>
                            러셀 중계 민지우</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0342" Then '대구 %>
            <div class="b-review">
                <div>
                    <div class="txt">러셀CORE Weekly 모의고사도 정말 마음에 드는 콘텐츠였습니다. <br>
                        하프 모의고사 형태로 진행되어, 시간을 많이 뺏기지 않으면서도 다양하고 <br>
                        많은 문제들을 접할 수 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dt>
                        <dd><strong>2024 서울대 생명교육과합격</strong><br>
                            러셀 대구 이승우</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">위클리 모의고사와 메대프 모의고사는 실전과 같은 환경에서 <br>
                        평소 학습했던 부분들을 점검하고 시간 관리 연습을 하며 객관적인 나의 위치를 <br>
                        파악할 수 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_daeguhanuidae.png" alt="대구한의대 로고" /></dt>
                        <dd><strong>2024 대구한의대 한의예과 합격</strong><br>
                            러셀 대구 이상엽</dd>
                    </dl>
                </div>
            </div>
            <% Else %>
            <div class="b-review">
                <div>
                    <div class="txt">러셀의 퀄 모의고사가 가장 마음에 들었습니다. 문제의 퀄리티 자체도 준수하고, <br>
                        적당한 난이도로 출제되어 제 실력을 확인할 수 있는 좋은 모의고사였습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dt>
                        <dd><strong>2024 연세대 의예과 합격</strong><br>
                            최상위권 남학생 의대전문관 러셀 기숙학원 심민준</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">러셀에서 지속적으로 퀄 모의고사나 메대프 모의고사와 같은 <br>
                        사설 모의고사 콘텐츠를 제공해주어 실전과 유사한 분위기에서 실모 연습을 할 수 
                        있는 것이 큰 도움이 되었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_busan.png" alt="부산대 로고" /></dt>
                        <dd><strong>2024 부산대 의예과 합격</strong><br>
                            러셀 센텀 최서경</dd>
                    </dl>
                </div>
            </div>
            <% End If %>
        </div>
    </div>

    <!-- 배너 -->
    <div class="bt-banner">
        <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half_overall/bt_banner.png" alt="다시 도전하는 최상위권 대입성공, 러셀 재수종합반[반수]가 대입성공의 가장 강력한 경쟁력입니다." /></p>
    </div>
    <!--// 배너 -->
</div>