<!-- tab02 러셀의 윈터스쿨 -->
<div class="cont js-cont">
    <!-- cont08 -->
    <div class="cont08">
        <h3 class="mb80" data-aos="fade-down"><img src="<%=img_path_russelsm%>/2025/winter/cont08_tit.png" alt="겨울방학 동안 올바른 학습 습관 형성은 물론, 최상위권 실력 향상을 위한 최대 효율의 러셀 시스템"></h3>
        <div class="s-item">
            <div class="studyHall-navi-wrap <%=campusName%>">
                <p class="mb45"><img src="<%=imgUrl%>/cont08_txt.png" alt="짧은 기간, 최대 효율의 효율적인 시간관리"></p>
                
                <div class="studyHall-navi swiper-container <%=campusName%>">
                    <div class="swiper-wrapper">
                        <% If sCampusCode = "CD0347" Then '남기숙 %>
                        <div class="swiper-slide">최대의 자습시간 확보</div>
                        <div class="swiper-slide">24시간 고효율 표준 일과표</div>
                        <% Else %>
                        <div class="swiper-slide">최대의 자습시간 확보</div>
                        <div class="swiper-slide">수능 맞춤 시간표</div>
                        <div class="swiper-slide">학습 동선 최적화</div>
                        <% If sCampusCode = "CD0363" Then '최상위권기숙 %>
                        <div class="swiper-slide">자체 식당 운영</div>
                        <% End If %>
                        <% End If %>
                    </div>
                </div>
                
                <p class="l-txt mt0">*합격생 후기 일부 발췌</p>
            </div>
            <div class="studyHall-wrap">
                <% If sCampusCode = "CD0347" Then '남기숙 %>
                <div dir="rtl" class="studyHall-slide swiper-container">
                <% Else %>
                <div class="studyHall-slide swiper-container">
                <% End If %>
                    <div class="swiper-wrapper">
                        <!-- 최대의 자습시간 확보 -->
                        <div class="swiper-slide">
                            <p class="tit">최소 의무 수업, 최대 자습시간으로<br>
                                충분한 자기주도 학습시간 확보</p>
                            <% If sCampusCode = "CD0348" or sCampusCode = "CD0363" Then '여기숙/최상위권기숙 %>
                            <p class="txt">필수 수업을 최소화하고 나에게 맞춘 선택적 의무 수업으로 <br>
                                기존 시간표 대비 최대의 자습시간을 확보하여 <br>
                                학업 효율성을 증대시킬 수 있습니다.</p>
                            <% Else %>
                            <p dir="ltr" class="txt">
                                필수 수업을 최소화 하여 최적의 수업과 자습의 비율<br>
                                약 1:3으로 최대의 자습시간을 확보하여<br>
                                학업 효율성을 증대시킬 수 있습니다.</p>
                            <% End If %>

                            <div><img src="<%=imgUrl%>/program_img01.jpg" alt=""></div>
                            
                            <% If sCampusCode = "CD0347" Then '남기숙 %>
                            <dl dir="ltr" class="s-review">
                                <dt><img src="<%=imgUrl%>/program_stu01.jpg" alt=""></dt>
                                <dd>
                                    <p>기숙학원에서는 낭비되는 시간 없이<br>
                                        온전히 공부에만 시간을 활용할 수 있었습니다.</p>
                                    <p><strong>원광대학교 한의예과 합격</strong> 남학생 전문관 러셀 기숙 노윤호</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
                            <dl class="s-review">
                                <dt><img src="<%=imgUrl%>/program_stu01.jpg" alt=""></dt>
                                <dd class="pl10">
                                    <p>필수로 들어야 하는 수업 단위수가 적어서 충분한 자습과 <br>
                                        병행할 수 있는 점이 가장 큰 장점으로 작용한 것 같습니다.</p>
                                    <p><strong>고려대학교 자유전공학부</strong> 여학생 전문관 러셀 기숙 윤*정</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0363" Then '최상위권기숙 %>
                            <dl class="s-review">
                                <dt><img src="<%=imgUrl%>/program_stu01.jpg" alt=""></dt>
                                <dd>
                                    <p>기숙학원에서는 낭비되는 시간 없이<br>
                                        온전히 공부에만 시간을 활용할 수 있었습니다.</p>
                                    <p><strong>원광대학교 한의예과 합격</strong> 러셀 기숙전문관 러셀 기숙 노O호</p>
                                </dd>
                            </dl>
                            <% End If %>

                            <% If sCampusCode = "CD0347" Then '남기숙 %>
                            <p dir="ltr" class="r-txt">* 일주일 총 169시간 중에서 일주일 평균 학습시간 88시간을 기준으로 작성하였으며,<br>
                                학원 운영에 따라 상세 시간은 변동될 수 있습니다.</p>
                            <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
                            <p class="r-txt">* 바자관 표준 시간표 기준으로 작성하였으며, 학원 운영에 따라 상세 시간은 변동될 수 있습니다.</p>
                            <% Else %>
                            <p class="r-txt">* 평일(월~금요일)바자관 표준 시간표 기준으로 작성하였으며,<br>
                                학원 운영에 따라 상세 시간은 변동될 수 있습니다.</p>
                            <% End If %>
                        </div>

                        <!-- 24시간 고효율 표준 일과표 -->
                        <div class="swiper-slide">
                            <p class="tit">실전 감각을 최적화 시키는<br>
                                수능 시간표를 따라가는 표준 일과표</p>
                            <p dir="ltr" class="txt">실제 수능과 동일한 표준 시간표로 운영하여<br>
                                학습과 생활 리듬이 수능에 최적화될 수 있도록<br>
                                학습 습관을 형성합니다.</p>

                            <div style="position:relative;">
                                <img src="<%=imgUrl%>/program_img02.jpg" alt="">
                                <a href="javascript:void(0)" class="bt-tt01 js-mask"></a>
                                <% If sCampusCode = "CD0348" or sCampusCode = "CD0363" Then '여기숙/최상위권기숙 %>
                                <a href="javascript:void(0)" class="bt-tt02 js-mask"></a>
                                <% End If %>
                            </div>
                            
                            <% If sCampusCode = "CD0347" Then '남기숙 %>
                            <dl dir="ltr" class="s-review">
                                <dt><img src="<%=imgUrl%>/program_stu02.jpg" alt=""></dt>
                                <dd>
                                    <p>기상부터 취침까지 표준 일과표에 맞춘 생활 덕분에, <br>
                                        수험생으로서 시간을 가장 효율적으로 관리할 수 있었습니다.</p>
                                    <p><strong>전북대학교 의예과</strong> 남학생 전문관 러셀 기숙 기현서</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
                            <dl class="s-review">
                                <dt><img src="<%=imgUrl%>/program_stu02.jpg" alt=""></dt>
                                <dd class="pl10">
                                    <p>여학생 전문관 러셀 기숙은 시간표가 수능 시험 시간에 <br>
                                        맞춰져 있어서 공부 리듬을 형성하는 데 도움이 되었습니다.</p>
                                    <p><strong>전남대학교 치의학학석사통합과정</strong> 여학생 전문관 러셀 기숙 신*지</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0363" Then '최상위권기숙 %>
                            <dl class="s-review">
                                <dt><img src="<%=imgUrl%>/program_stu02.jpg" alt=""></dt>
                                <dd class="pl10">
                                    <p>표준 시간표에 맞춰 공부하며 공부 리듬 형성과 <br>
                                        다량의 자습시간 확보에 도움을 받았습니다.</p>
                                    <p><strong>서울대학교 물리학과</strong> 러셀 기숙전문관 송O평</p>
                                </dd>
                            </dl>
                            <% End If %>
                        </div>

                        <% If sCampusCode <> "CD0347" Then '남기숙 제외 %>
                        <div class="swiper-slide">
                            <p class="tit">이동에 낭비하는 시간 없는<br>
                                학습 동선 최적화</p>
                            <% If sCampusCode = "CD0363" Then '최상위권기숙 %>
                            <p class="txt">한 건물 내에서 수업-자습-식사를 해결하는 효율적인 동선 <br>
                                충분한 자습시간 확보, 학습 집중력 향상</p>
                            <% Else %>
                            <p class="txt">한 건물 내에서 강의실과 바자관, 숙소, 급식(식당)을 <br>
                                한 번에 해결할 수 있도록 동선을 최적화하여<br>
                                이동에 낭비되는 시간을 최소화하였습니다.</p>
                            <% End If %>

                            <div>
                                <img src="<%=imgUrl%>/program_img03.jpg" alt="">
                            </div>
                            
                            <% If sCampusCode = "CD0348" Then '여기숙 %>
                            <dl class="s-review">
                                <dt><img src="<%=imgUrl%>/program_stu03.jpg" alt=""></dt>
                                <dd>
                                    <p>강의실과 급식실, 바자관이 모두 한 건물에 있어서<br>
                                        시간 낭비를 최소화할 수 있었습니다.</p>
                                    <p><strong>숙명여자대학교 약학부</strong> 여학생 전문관 러셀 기숙 박*빈</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0363" Then '최상위권기숙 %>
                            <dl class="s-review">
                                <dt><img src="<%=imgUrl%>/program_stu03.jpg" alt=""></dt>
                                <dd>
                                    <p>식당과 강의실, 자습실이 모두 한 건물에 있고 이동이 편리해<br>
                                        낭비되는 시간 없이 효율적으로 공부할 수 있어 좋았습니다.</p>
                                    <p><strong>서울대학교 재료공학부</strong> 러셀 기숙전문관 김O경</p>
                                </dd>
                            </dl>
                            <% End If %>
                        </div>
                        <% End If %>

                        <% If sCampusCode = "CD0363" Then '최상위권기숙 %>
                        <div class="swiper-slide">
                            <p class="tit">건강과 안전, 시간 효율을 위한<br>
                                자체 식당 운영</p>
                            <p class="txt">자체 식당 운영으로 균형 잡힌 식단을 유지하고<br>
                                외부와의 접촉을 최소화, 이동 시간을 줄여<br>
                                효율적으로 시간을 사용하고 학습에 더욱 몰입할 수 있습니다.</p>
                            <div>
                                <img src="<%=imgUrl%>/program_img04.jpg" alt="">
                            </div>
                            
                            <dl class="s-review">
                                <dt><img src="<%=imgUrl%>/program_stu04.jpg" alt=""></dt>
                                <dd>
                                    <p>뷔페식으로 담을 수 있게 자율배식대가 준비되어 있었는데,<br>
                                        메뉴 종류도 많고 급식이 맛있어서<br>
                                        급식 먹을 맛이 났던 것 같습니다.</p>
                                    <p><strong>조선대학교 의예과</strong> 러셀 기숙전문관 김O주</p>
                                </dd>
                            </dl>
                        </div>
                        <% End If %>
                    </div>
                </div>
            </div>
            <!-- 바자관 시간표 -->
            <!-- #include virtual = "/russel_yj/2025/winter/baja_time_table.asp" -->
            <!-- //바자관 시간표 -->
        </div>
    </div>

    <!-- cont09 -->
    <div class="cont09">
        <h4 class="mb40" data-aos="flip-left"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/snow_01.png" alt=""></h4>
        <h3 class="mb60" data-aos="fade-down"><img src="<%=imgUrl%>/cont09_tit.png" alt=""></h3>
        <div class="inner">
            <% If sCampusCode = "CD0347" Then '남기숙 %>
            <div class="manage-wrap sm">
            <% Else %>
            <div class="manage-wrap">
            <% End If %>
                <div class="manage-navi swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인 면학분위기</div>
                        <% If sCampusCode <> "CD0347" Then '남기숙 제외 %>
                        <div class="swiper-slide">실전 모의고사</div>
                        <% End If %>
                        <div class="swiper-slide">1:1 멘토링</div>
                    </div>
                </div>
                
                <div class="manage-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 집단적인 면학분위기 -->
                        <div class="swiper-slide">
                            <div><img src="<%=imgUrl%>/manage_slide01.jpg" alt=""></div>
                            <div class="mn-wrap">
                                <% If sCampusCode = "CD0347" Then '남기숙 %>
                                <p><strong>학구열을 체감할 수 있는 구조로 <br>
                                    긍정적 경쟁 유도</strong>
                                    최상위권의 학구열을 체감할 수 있는<br>
                                    개방형 구조로 설계되어 긍정적인 경쟁심을 <br>
                                    유도하고 학습 동기로 작용하게 합니다.</p>
                                <dl class="mn-info">
                                    <dt><img src="<%=imgUrl%>/manage_stu01.jpg" alt=""></dt>
                                    <dd>
                                        <p>바자관은 최고의 학습 환경이었습니다. 통유리로 넓게 트인 공간에서 자습을 하니 저도 끊임없이 동기부여를 받을 수 있었습니다.</p>
                                        <p><strong>서울대학교 사회학과 합격</strong> <br>
                                            남학생 전문관 러셀 기숙학원 최문성</p>
                                    </dd>
                                </dl>
                                <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
                                <p><strong>학구열을 체감할 수 있는<br>
                                    바른공부 자습전용관</strong>
                                    최상위권의 학구열을 체감할 수 있는 개방형 구조로 설계되어 <br>
                                    긍정적인 경쟁심을 유도하고 학습 동기로 작용하게 합니다.</p>
                                <dl class="mn-info">
                                    <dt><img src="<%=imgUrl%>/manage_stu01.jpg" alt=""></dt>
                                    <dd>
                                        <p>바자관에서는 조금만 고개를 돌려도 열심히 공부하는 <br>
                                            다른 친구들의 모습이 보입니다. 집중이 잘되지 않을 때 <br>
                                            제가 흘려보내려고 했던 시간을 공부하는 데에 쓰는 <br>
                                            친구들을 보며 마음을 다잡고 공부할 수 있었습니다.</p>
                                        <p><strong>서울대학교 재료공학부</strong> 여학생 전문관 러셀 기숙 김*경</p>
                                    </dd>
                                </dl>
                                <% ElseIf sCampusCode = "CD0363" Then '최상위권기숙 %>
                                <p><strong>최상위권이 모여 경쟁하는 <br>
                                    집단적인 면학 분위기</strong>
                                    최상위권 학생들의 학구열을 체감할 수 있는 개방형 구조로 <br>
                                    학습 동기 부여 및 긴장감 유지</p>
                                <dl class="mn-info">
                                    <dt style="margin-left:17px;"><img src="<%=imgUrl%>/manage_stu01.jpg" alt=""></dt>
                                    <dd>
                                        <p>바른공부 자습전용관은 정말 공부에만 집중할 수 있는 <br>
                                            환경에 최적화된 공간입니다. 주변의 학생들이 모두 
                                            공부하고 있음이 생생하게 느껴지기에 스스로도 공부할 수밖에 없는 상황이라고 느끼게 됩니다.</p>
                                        <p><strong>한림대학교 약학과</strong> 러셀 기숙전문관 윤O원</p>
                                    </dd>
                                </dl>
                                <% End If %>
                            </div>
                        </div>

                        <% If sCampusCode <> "CD0347" Then '남기숙 제외 %>
                        <!-- 실전 모의고사 -->
                        <div class="swiper-slide">
                            <div><img src="<%=imgUrl%>/manage_slide02.jpg?ver=1.2" alt=""></div>
                            <div class="mn-wrap">
                                <% If sCampusCode = "CD0348" Then '여기숙 %>
                                <p>
                                    <strong>집체 모의고사 응시로<br>
                                    수능 실전 경험</strong>
                                    전국 러셀 윈터스쿨 재원생과 경쟁해볼 수 있는 기회.<br>
                                    윈터스쿨 기간 학습 성과 확인과 현재 위치 점검,<br>
                                    향후 학습 계획 정립까지 확실히 책임집니다.
                                </p>
                                <dl class="mn-info">
                                    <dt class="ml0"><img src="<%=imgUrl%>/manage_stu02.jpg" alt=""></dt>
                                    <dd>
                                        <p>모의고사 강의실에서 실제 현장에서 보는 것처럼 연습을 <br>
                                            충분히 해볼 수 있다는 점이 좋았습니다. 모의고사 후에는 담임 선생님과 상담을 통해 보완해야 할 점과 앞으로의 공부 방향을 함께 상의해 볼 수 있어서 큰 도움이 되었습니다.</p>
                                        <p><strong>동아대학교 의예과</strong> 여학생 전문관 러셀 기숙 최*원</p>
                                    </dd>
                                </dl>
                                <% ElseIf sCampusCode = "CD0363" Then '최상위권기숙 %>
                                <p><strong>겨울방학 최종 마무리<br>
                                    윈터스쿨 실전 모의고사</strong>
                                    전국 러셀 학원 윈터스쿨 동급생과의 경쟁해볼 수 있는 기회<br>
                                    겨울방학 기간 과목별 학습 성과 확인 및 현 위치 점검</p>
                                <dl class="mn-info">
                                    <dt><img src="<%=imgUrl%>/manage_stu02.jpg" alt=""></dt>
                                    <dd>
                                        <p>모의고사 강의실에서 실제 현장에서 보는 것처럼 연습을 <br>
                                            충분히 해볼 수 있다는 점이 좋았습니다. 모의고사 후에는 담임 선생님과 상담을 통해 보완해야 할 점과 앞으로의 공부 방향을 함께 상의해 볼 수 있어서 큰 도움이 되었습니다.</p>
                                        <p><strong>동아대학교 의예과</strong> 러셀 기숙전문관 최O원</p>
                                    </dd>
                                </dl>
                                <% End If %>
                            </div>
                        </div>
                        <% End If %>

                        <!-- 1:1 멘토링 -->
                        <div class="swiper-slide">
                            <div><img src="<%=imgUrl%>/manage_slide03.jpg" alt=""></div>
                            <div class="mn-wrap">
                                <p>
                                    <strong>슬럼프 극복과 학습 동기를 <br>
                                    부여하는 1:1 멘토링</strong>
                                    <% If sCampusCode = "CD0348" Then '여기숙 %>
                                    개인별 학습 상황을 점검하고 약점 보완 방향을 제시함으로써, <br>
                                    슬럼프 없이 학습 동기를 지속할 수 있도록<br>
                                    정서적 지원과 유기적인 소통을 이어갑니다.
                                    <% Else %>
                                    1:1 멘토링으로 지속적인 학습 동기를 부여하고 <br>
                                    슬럼프 극복 및 안정적인 수험 생활이 가능하도록 <br>
                                    학습 고충 상담 등 끊임없는 소통을 진행합니다.
                                    <% End If %>
                                </p>
                                
                                <% If sCampusCode = "CD0347" Then '남기숙 %>
                                <dl class="mn-info">
                                    <dt><img src="<%=imgUrl%>/manage_stu02.jpg" alt=""></dt>
                                    <dd>
                                        <p>입시에 대해 모르는 것이 많아 초반에 담임선생님께 <br>
                                            많은 질문을 햇는데, 상세히 답해 주셔서 초기에 <br>
                                            방향을 잘 잡을 수 있었습니다.</p>
                                        <p><strong>서울대학교 자유전공학부</strong> <br>
                                            남학생 전문관 러셀 기숙학원 김영준</p>
                                    </dd>
                                </dl>
                                <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
                                <dl class="mn-info">
                                    <dt class="ml0"><img src="<%=imgUrl%>/manage_stu03.jpg" alt=""></dt>
                                    <dd>
                                        <p>성적에 대한 고민이나 공부 방향, 불안감같이 혼자 해결할 수 
                                            없는 문제가 생기면 담임 선생님을 찾아갔습니다. <br>
                                            상담이 끝나면 해결책을 찾게 되어 다시 공부에 집중할 수 있었습니다.</p>
                                        <p><strong>계명대학교 의예과</strong> 여학생 전문관 러셀 기숙 배*헌</p>
                                    </dd>
                                </dl>
                                <% ElseIf sCampusCode = "CD0363" Then '최상위권기숙 %>
                                <dl class="mn-info">
                                    <dt class="ml0"><img src="<%=imgUrl%>/manage_stu03.jpg" alt=""></dt>
                                    <dd>
                                        <p>기숙학원 생활 중에 학습적인 부분이나 생활적인 부분에서 <br>
                                            고민이 생기면 담임선생님과의 상담을 통해 해결해 나갈 수 있어서 좋았습니다.</p>
                                        <p><strong>조선대학교 치의예과</strong> 러셀 기숙전문관 유O희</p>
                                    </dd>
                                </dl>
                                <% End If %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <p class="r-txt">*합격생 후기 일부 발췌</p>
        </div>
    </div>

    <!-- cont10 -->
    <div class="cont10">
        <h4 class="mb40" data-aos="flip-left"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/snow_02.png" alt=""></h4>
        <h3 class="mb60" data-aos="fade-down"><img src="<%=imgUrl%>/cont10_tit.png" alt=""></h3>
        <div class="inner">
            <div class="baja-wrap <%=campusName%>">
                <div class="baja-navi swiper-container">
                    <div class="swiper-wrapper">
                        <% If sCampusCode <> "CD0348" Then '여기숙 제외 %>
                        <div class="swiper-slide">바른공부 자습전용관</div>
                        <% End If %>
                        <div class="swiper-slide">입시관리</div>
                        <div class="swiper-slide">학습관리</div>
                        <div class="swiper-slide">생활관리</div>
                    </div>
                </div>
    
                <div class="baja-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 바른공부 자습전용관 -->
                        <% If sCampusCode <> "CD0348" Then '여기숙 제외 %>
                        <div class="swiper-slide">
                            <div style="position:relative;">
                                <img src="<%=imgUrl%>/baja_slide01.jpg" alt="">
                                <a href="javascript:void(0)" class="bt-tt03" style="position:absolute;right:0;bottom:0;width:80px;height:80px;"></a>
                            </div>
                            <div>
                                <p><strong>학습에만 집중할 수 있도록 설계된 <br>바른공부 자습전용관</strong>
                                    넓은 책상과 편안한 의자, 쾌적한 환경을 조성하여<br>
                                    오랜 시간 학습에 무리 없도록 오직 학습에만<br>
                                    전념할 수 있는 최적의 학습 환경을 제공합니다.</p>
    
                                <% If sCampusCode = "CD0347" Then '남기숙 %>
                                <dl class="bj-info">
                                    <dt><img src="<%=imgUrl%>/baja_stu01.jpg" alt=""></dt>
                                    <dd>
                                        <p>공부에만 집중할 수 있는 환경이 큰 장점입니다.</p>
                                        <p><strong>우석대학교 한의예과 합격</strong> <br>
                                            남학생 전문관 러셀 기숙학원 오성원</p>
                                    </dd>
                                </dl>
                                <% ElseIf sCampusCode = "CD0363" Then '최상위권기숙 %>
                                <dl class="bj-info">
                                    <dt><img src="<%=imgUrl%>/baja_stu01.jpg" alt=""></dt>
                                    <dd>
                                        <p>학생 개개인에게 넓은 책상, 이동식 책장을 포함해서 <br>
                                            거의 앉은 자리에서 모든 공부를 다 관리할 수 있도록 되어있어 좋았습니다.</p>
                                        <p><strong>서울대학교 인문계열</strong> 러셀 기숙전문관 김O욱</p>
                                    </dd>
                                </dl>
                                <% End If %>
                            </div>
                        </div>
                        <% End If %>
                        
                        <!-- 입시관리 -->
                        <div class="swiper-slide">
                            <div><img src="<%=imgUrl%>/baja_slide02.jpg" alt=""></div>
                            <div>
                                <% If sCampusCode = "CD0347" or sCampusCode = "CD0363" Then '남기숙/최상위권기숙 %>
                                <div class="baja-txt">
                                    <p><strong class="mb0">최상위권 대학 합격을 위한 <br>
                                    전문적인 맞춤 입시관리</strong></p>
    
                                    <ul class="list-base list-chck">
                                        <li>목표 대학/학과에 맞춘 입시 방향 제시</li>
                                        <li>내신 및 모의고사 성적 추이와 입학 전형을 <br>
                                            분석하여 맞춤 전략 제안</li>
                                        <li>수시/정시 1:1 컨설팅을 통해 최적의 지원 전략 제공</li>
                                    </ul>
                                </div>
                                <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
                                <div class="baja-txt">
                                    <p><strong class="mb0">목표 대학 합격을 위한 <br>
                                        전문적인 맞춤 입시관리</strong></p>
    
                                    <ul class="list-base list-chck">
                                        <li>러셀 입시 컨설턴트 전문 교육과정을 수료한 입시 담임 선생님</li>
                                        <li>개인 목표 대학/학과에 맞춘 최적화된 입시 로드맵 제시</li>
                                        <li>목표 대학 합격에 필요한 전략적 학습 계획 수립</li>
                                    </ul>
                                </div>
                                <% End If %>

                                <% If sCampusCode = "CD0347" Then '남기숙 %>
                                <dl class="bj-info">
                                    <dt><img src="<%=imgUrl%>/baja_stu02.jpg" alt=""></dt>
                                    <dd>
                                        <p>담임선생님의 1:1 상담으로 흔들리지 않고 <br>
                                            집중력을 유지할 수 있었습니다.</p>
                                        <p><strong>상지대학교 한의예과 합격</strong> <br>
                                            남학생 전문관 러셀 기숙학원 윤민재</p>
                                    </dd>
                                </dl>
                                <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
                                <dl class="bj-info">
                                    <dt><img src="<%=imgUrl%>/baja_stu02.jpg" alt=""></dt>
                                    <dd>
                                        <p>담임 선생님께서 객관적 근거를 바탕으로 기본부터 차근차근 공부하고 
                                            조금만 더 노력하면 충분히 원하는 대학에 진학할 수 있다고 말씀해 주셔서 더 힘을 내 공부할 수 있었습니다.</p>
                                        <p><strong>관동가톨릭대학교 의예과</strong> <br>
                                            여학생 전문관 러셀 기숙 최*서</p>
                                    </dd>
                                </dl>
                                <% ElseIf sCampusCode = "CD0363" Then '최상위권기숙 %>
                                <dl class="bj-info">
                                    <dt class="ml0"><img src="<%=imgUrl%>/baja_stu02.jpg" alt=""></dt>
                                    <dd>
                                        <p>입시 전문가인 담임 선생님이 제 생활기록부를 종합적으로 
                                            검토하시고 맞춤 전략과 공부 방향성을 점검할 수 있는 
                                            적절한 조언이 큰 도움이 되었습니다.</p>
                                        <p><strong>서울대학교 경제학부</strong> 러셀 기숙전문관 여O서</p>
                                    </dd>
                                </dl>
                                <% End If %>
                            </div>
                        </div>
                        <!-- 학습관리 -->
                        <div class="swiper-slide">
                            <div><img src="<%=imgUrl%>/baja_slide03.jpg" alt=""></div>
                            <div>
                                <% If sCampusCode = "CD0347" Then '남기숙 %>
                                <div class="baja-txt">
                                    <p><strong class="mb0">수능까지 성취도 있는 학습을 위한 <br>
                                        체계적인 학습관리</strong></p>
                                    <ul class="list-base list-chck">
                                        <li>성적 데이터와 학습 현황 기반 <br>
                                            과목별 보완점과 학습 방향 상담</li>
                                        <li>올바른 습관 형성 및 방법 개선을 위한 위한 플래너 점검</li>
                                        <li>목표 성적 맞춤 학습 전략과 시기별 학습 가이드 제시</li>
                                    </ul>
                                </div>
                                <dl class="bj-info">
                                    <dt><img src="<%=imgUrl%>/baja_stu03.jpg" alt=""></dt>
                                    <dd>
                                        <p>학습에 대해서는 담임 선생님과 심층적인 상담을 통해 <br>
                                            공부의 방향을 설정해 나가는데 도움이 되었습니다.</p>
                                        <p><strong>부산대학교 의예과</strong> <br>
                                            남학생 전문관 러셀 기숙학원 강태욱</p>
                                    </dd>
                                </dl>
                                <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
                                <div class="baja-txt">
                                    <p><strong class="mb0">진단부터 실행까지 책임지는 <br>
                                        맞춤형 학습관리</strong></p>
                                    <ul class="list-base list-chck">
                                        <li>성적 데이터와 학습 현황 기반 과목별 보완점과 학습 방향 상담</li>
                                        <li>올바른 습관 형성 및 방법 개선을 위한 위한 플래너 점검</li>
                                        <li>목표 성적 맞춤 학습 전략과 시기별 학습 가이드 제시</li>
                                    </ul>
                                </div>
                                <dl class="bj-info">
                                    <dt><img src="<%=imgUrl%>/baja_stu03.jpg" alt=""></dt>
                                    <dd>
                                        <p class="pt20">모의고사가 끝난 후 담임 선생님과 상담을 통해 혼자서는 <br>
                                            파악할 수 없는 저의 문제점이나 보완해야할 점, 앞으로의 공부 방향을 함께 논의할 수 있었다는 점이 큰 도움이 되었습니다.</p>
                                        <p><strong>동아대학교 의예과</strong> 여학생 전문관 러셀 기숙 최*원</p>
                                    </dd>
                                </dl>
                                <% ElseIf sCampusCode = "CD0363" Then '최상위권기숙 %>
                                <div class="baja-txt">
                                    <p><strong class="mb0">수능까지 성취도 있는 학습을 위한 <br>
                                        체계적인 학습관리</strong></p>
                                    <ul class="list-base list-chck">
                                        <li>성적 데이터와 학습 현황 기반 과목별 보완점과 학습 방향 상담</li>
                                        <li>올바른 습관 형성 및 방법 개선을 위한 위한 플래너 점검</li>
                                        <li>목표 성적 맞춤 학습 전략과 시기별 학습 가이드 제시</li>
                                    </ul>
                                </div>
                                <dl class="bj-info">
                                    <dt><img src="<%=imgUrl%>/baja_stu03.jpg" alt=""></dt>
                                    <dd>
                                        <p>담임 선생님께서 러셀 학습 플래너 검사를 하실 때마다 <br>
                                            현재 커리큘럼과 일주일 단위의 과목당 시간 배분 정도에 
                                            대해 세심히 조언해 주셔서 흔들릴 때마다 다시금 확신을 얻을 수 있었습니다.</p>
                                        <p><strong>전남대학교 의예과</strong> 러셀 기숙전문관 이O문</p>
                                    </dd>
                                </dl>
                                <% End If %>
                            </div>
                        </div>
                        <!-- 생활관리 -->
                        <div class="swiper-slide">
                            <div><img src="<%=imgUrl%>/baja_slide04.jpg" alt=""></div>
                            <div>
                                <% If sCampusCode = "CD0347" Then '남기숙 %>
                                <div class="baja-txt">
                                    <p><strong class="mb0">집단적인 면학분위기 형성을 위한 <br>
                                        엄격한 생활관리</strong></p>
                                    <ul class="list-base list-chck">
                                        <li>원내 24 Hours 생활 및 학습 관리로 빈틈없는 면학분위기 조성</li>
                                        <li>엄격한 태도 점수 제도로 면학분위기 저해 요소 관리</li>
                                        <li>안정적인 수험생활이 가능하도록 동반자 역할</li>
                                    </ul>
                                </div>
                                <dl class="bj-info">
                                    <dt><img src="<%=imgUrl%>/baja_stu04.jpg" alt=""></dt>
                                    <dd>
                                        <p>같은 목표를 향해 나아가는 분위기 덕분에 긴장감을 <br>
                                            유지할 수 있었고, 철저한 생활관리 덕분에 공부에만 집중할 수 있었습니다.</p>
                                        <p><strong>한양대학교 의예과</strong> <br>
                                            남학생 전문관 김선규</p>
                                    </dd>
                                </dl>
                                <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
                                <div class="baja-txt">
                                    <p><strong class="mb0">집단적인 면학분위기 형성을 위한 <br>
                                        철저한 생활관리</strong></p>
                                    <ul class="list-base list-chck">
                                        <li>매 교시 철저한 출결 관리 및 상시 모니터링</li>
                                        <li>엄격한 생활 규정으로 면학분위기 저해 요소 차단</li>
                                        <li>안정적인 수험 생활이 가능하도록 동반자 역할</li>
                                    </ul>
                                </div>
                                <dl class="bj-info">
                                    <dt class="ml0"><img src="<%=imgUrl%>/baja_stu04.jpg" alt=""></dt>
                                    <dd>
                                        <p class="pt20">24시간 내내 다른 학생들과 함께 생활하는 것이다 보니 
                                            면학 분위기나 친목에 대한 걱정이 있었습니다. 하지만 
                                            대학이라는 하나의 목표를 가지고 공부에 온전히 <br>
                                            집중할 수 있는 환경을 만들어주는 학원이라 믿고 <br>
                                            다닐 수 있었습니다.</p>
                                        <p><strong>동아대학교 의예과</strong> 여학생 전문관 러셀 기숙 최*원</p>
                                    </dd>
                                </dl>
                                <% ElseIf sCampusCode = "CD0363" Then '최상위권기숙 %>
                                <div class="baja-txt">
                                    <p><strong class="mb0">집단적인 면학분위기 형성을 위한 <br>
                                        엄격한 생활관리</strong></p>
                                    <ul class="list-base list-chck">
                                        <li class="mb5">원내에서의 모든 생활 및 학습 시간 관리로<br>
                                            빈틈없는 면학분위기 조성</li>
                                        <li class="mb5">담임 선생님과 학생관리 선생님이 바자관 내 상주하여<br>
                                            자습시간 면학분위기 관리</li>
                                        <li>면학분위기 저해 요소에 대한 철저한 교육점수 제도 운영</li>
                                    </ul>
                                </div>
                                <dl class="bj-info">
                                    <dt><img src="<%=imgUrl%>/baja_stu04.jpg" alt=""></dt>
                                    <dd>
                                        <p>체계적인 생활관리를 위해서 기숙학원을 선택했습니다. <br>
                                            기상시간, 식사시간, 취침시간을 엄격하게 관리해 주셔서 
                                            최대한의 공부시간을 확보할 수 있었습니다.</p>
                                        <p><strong>계명대학교 의예과</strong> 러셀 기숙전문관 배O현</p>
                                    </dd>
                                </dl>
                                <% End If %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <p class="r-txt">*합격생 후기 일부 발췌</p>

            <% If sCampusCode = "CD0363" Then '최상위권기숙 %>
            <!-- 바자관 시설보기 팝업 -->
            <div class="layer-pop03 layer">
                <a href="javascript:void(0)" class="bt-close"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/bt_close.png" alt="닫기"></a>
                <div class="layer-wrap">
                    <img src="<%=imgUrl%>/baja_slide_pop.jpg" alt="" />
                </div>
            </div>
            <!-- //바자관 시설보기 팝업 -->
            <% End If %>
        </div>
    </div>

    <!-- cont11 -->
    <div class="cont11 <%=campusName%>">
        <% If sCampusCode = "CD0347" Then '남기숙 %>
        <h3 class="mb80" data-aos="fade-down"><img src="<%=imgUrl%>/cont11_tit.png" alt="학습 습관을 탄탄하게 만들고 실력을 향상시키는 러셀만의 학습 콘텐츠"></h3>
        <% Else %>
        <h3 class="mb80" data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont08_tit.png" alt="학습 습관을 탄탄하게 만들고 실력을 향상시키는 검증된 시기별 맞춤 콘텐츠와 집체 모의고사"></h3>
        <% End If %>
        <div class="inner">
            <% If sCampusCode = "CD0347" Then '남기숙 %>
            <div class="ct-wrap">
                <p class="mb70"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct_slide01.png" alt=""></p>
                <ul class="ct-list">
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct01_img01.png" alt=""></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct01_img02.png" alt=""></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct01_img03.png" alt=""></li>
                </ul>
                <p class="r-txt">*학습계획 콘텐츠는 재원생 대상으로 ‘전액 지원’되며, 학원별로 콘텐츠는 상이할 수 있습니다.</p>
            </div>
            <% Else %>
            <div class="ct-navi swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">학습계획 콘텐츠</div>
					<div class="swiper-slide">OMEGA 시리즈</div>
					<div class="swiper-slide">집체 모의고사 시리즈</div>
					<div class="swiper-slide">수학 전용 실전 콘텐츠</div>
				</div>
			</div>

			<div class="ct-slide mt60 swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<p class="mb70"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct_slide01.png" alt=""></p>
						<ul class="ct-list">
							<li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct01_img01.png" alt=""></li>
							<li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct01_img02.png" alt=""></li>
							<li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct01_img03.png" alt=""></li>
						</ul>
						<p class="r-txt">*학습계획 콘텐츠는 재원생 대상으로 ‘전액 지원’되며, 학원별로 콘텐츠는 상이할 수 있습니다.</p>
					</div>
					<div class="swiper-slide">
						<p class="mb70"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct_slide02.png" alt=""></p>
						<div class="img">
							<img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct02_img.png" alt="">
							<a href="/event/omega_intro/index.asp" style="top:<%=omega_top%>;left:<%=omega_left%>;bottom:inherit"></a>
						</div>
						<p class="r-txt">* 학원별로 콘텐츠는 상이할 수 있습니다.</p>
					</div>
					<div class="swiper-slide">
						<p class="mb70"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct_slide03.png" alt=""></p>
						<ul class="ct-list">
							<li class="img">
								<img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct03_img01.png" alt="">
								<a href="/event/2025/jdsm/index.asp" style="left:158px;bottom:57px;"></a>
							</li>
							<li class="img">
								<img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct03_img02.png" alt="">
								<a href="/intro/2022/premium/index.asp" style="left:158px;bottom:57px;"></a>
							</li>
						</ul>
						<p class="r-txt" style="padding-right:137px">*학원별로 콘텐츠는 상이할 수 있습니다.</p>
					</div>
					<div class="swiper-slide">
						<p class="mb70"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct_slide04.png" alt=""></p>
						<div class="img">
							<img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct04_img.png" alt="">
							<a href="/event/2025/alpha/index.asp" style="left:535px;"></a>
						</div>
						<p class="c-txt mt30">*ALPHA는 재원생 대상으로 ‘전액 지원’되며, 학원별로 콘텐츠는 상이할 수 있습니다.</p>
					</div>
				</div>
			</div>
            <% End If %>
        </div>
    </div>
</div>



