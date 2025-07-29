<div class="cont js-cont-wrap <%=campusName%>">
    <div class="cont01">
        <% If campus_code = "CD0250" OR campus_code = "CD0257" OR campus_code = "CD0342" Then '부천/중계/대구 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half_overall/cont01_tit.jpg" alt="최상위권 집결, 러셀 부천에서 빠르게 시작한 선배들은 최상위권 대입의 목표를 이루었습니다."></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/cont01_tit.jpg" alt="런칭 첫 해부터 놀라운 결과로 증명하다! 러셀 재수종합반을 선택한 선배들은 성적 상승과 최상위권 대입성공을 이루었습니다."></p>
        <% End If %>
        <div class="inner">
            <% If campus_code = "CD0342" Then '대구 %>
            <!-- 대입 결과 -->
            <div class="h-box-result">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half_overall/result_tit.jpg" alt="2024학년도 러셀 최상위권 대입 결과"></p>
                <ul class="mt30 type06">
                    <li>
                        <div><strong>4</strong></div>
                        <p>서울대 의예</p>
                    </li>
                    <li>
                        <div><strong>3</strong></div>
                        <p>연세대 의예</p>
                    </li>
                </ul>
                <ul class="type06">
                    <li class="pb0">
                        <div><strong>9</strong></div>
                        <p class="pb10">메이저 의예</p>
                        <span class="comment">(서울대, 연세대, 성균관대,<br>
                         가톨릭대, 울산대 기준)</span>
                    </li>
                    <li style="padding-bottom:35px">
                        <div><strong>116</strong></div>
                        <p>전국 의예</p>
                    </li>
                </ul>
                <ul class="mt0">
                    <li style="padding:6px 0;">
                        <div><strong>116</strong></div>
                        <p>치&middot;한&middot;수&middot;약학</p>
                    </li>
                    <li style="padding:6px 0;">
                        <div><strong>73</strong></div>
                        <p>서&middot;연&middot;고</p>
                    </li>
                </ul>
                <ul>
                    <li>
                        <div><strong>88</strong></div>
                        <p>서성한이<br>
                        과학기술원</p>
                    </li>
                    <li>
                        <div><strong>117</strong></div>
                        <p>경북대</p>
                        <span class="comment">(*의약학 계열 44명)</span>
                    </li>
                </ul>
                <p class="r-txt">
                    *2023년 러셀 대구 바른공부 자습전용관 재원생 기준 <br>
                (복수 대학 합격자 및 수시 중복 합격자 포함, 단과 수강생 미포함)<br>
                *2024.3.15 기준이며, 지속적으로 업데이트 될 예정입니다.
                </p>
            </div>
            <!-- //대입 결과 -->
            <% End If %>
            <!-- 상승리뷰 슬라이드 -->
            <div class="review-slide swiper-container">
                <% If campus_code = "CD0250" Then '부천 %>
                
                <div class="swiper-wrapper">
                    <div class="swiper-slide type05">
                        <div class="title video">
                            <div class="profile">
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/r-stu05.png" alt="">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/ico_play.png" alt=""></a>
                            </div>
                            <p>
                                <span><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></span><br>
                                <strong>2024 연세대(미래)
                                    의예과 합격
                                    
                                    
                                    </strong><br>
                                <b>러셀 부천 박정우</b>
                            </p>
                        </div>
                        <div class="detail-box">
                            <p>점심 직후 영단어 테스트와 영어 듣기 평가가 도움이 되었습니다.
                            </p>
                            <div>하루 30분~1시간을 투자하여 영단어를 외우고, 매주 토요일마다 영어 듣기 평가도 모의로 진행하며 듣기감을 유지할 수 있어 좋았습니다.<br>
                                자습관 바로 앞에 담임선생님이 계셔서 집중도 높은 학습을 진행할 수 있었고, 과목별 학습법 등 팁도 얻었습니다. 또한 개별 상담과 성적에 맞는 수시/정시 전략도 꼼꼼하게 조언해 주셔서 감사했습니다.
                                
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide type05">
                        <div class="title video">
                            <div class="profile">
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/r-stu02.png" alt="">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48573125')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/ico_play.png" alt=""></a>
                            </div>
                            <p>
                                <span><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kangwon.png" alt=""></span><br>
                                <strong>2024 강원대
                                    의예과 합격
                                    
                                    </strong><br>
                                <b>러셀 부천 이가은</b>
                            </p>
                        </div>
                        <div class="detail-box">
                            <p>담임선생님의 조언에 감사했습니다.
                            </p>
                            <div>모의고사를 볼 때마다 멘탈이 무너지고 공부하는 데에 지장이 있었습니다. 그럴 때마다 담임선생님께 가서 고민을 털어놓고 얘기했습니다.
                                선생님께서 많은 학생들을 만나 보셔서 그런지 해주시는 말씀들이
                                멘탈을 다잡는 데에 도움이 많이 되었습니다.
                                대학 전형뿐만 아니라 모의고사 직후 결과와 함께 학습 방법 관련한 조언도 해주셨습니다.
                                
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide type05">
                        <div class="title video">
                            <div class="profile">
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/r-stu04.png" alt="">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/51835168')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/ico_play.png" alt=""></a>
                            </div>
                            <p>
                                <span><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_jeju.png" alt=""></span><br>
                                <strong>2024 제주대
                                    수의예과 합격
                                    
                                    </strong><br>
                                <b>러셀 부천 이동규</b>
                            </p>
                        </div>
                        <div class="detail-box">
                            <p>자습관 면학분위기 조성과 학습시간을 확보할 수 있어 좋았습니다.
                            </p>
                            <div>스피드게이트로 철저하게 출결관리를 하고 매 교시마다 출결을 확인하기 때문에 이른 시간부터 공부하는 습관을 기를 수 있었습니다.<br>
                            
                                또한 수시로 자습 감독 선생님들께서 순찰을 돌기 때문에 집중해서 공부하는 분위기가 조성되었고, 담임선생님께서 자습관 면학분위기 조성에 많은 신경을 써주셔서 항상 좋은 환경에서 공부할 수 있었고
                                나태해질 때마다 확실하게 관리해 주셨습니다.
                                
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide type05">
                        <div class="title video">
                            <div class="profile">
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/r-stu03.png" alt="">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48572948')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/ico_play.png" alt=""></a>
                            </div>
                            <p>
                                <span><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></span><br>
                                <strong>2024 고려대
                                    철학과 합격
                                    </strong><br>
                                <b>러셀 부천 전찬영</b>
                            </p>
                        </div>
                        <div class="detail-box">
                            <p>개방형 구조에서 자신만의 온전한 학습시간을 확보할 수 있었습니다.
            
                            </p>
                            <div>바른공부 자습전용관의 가장 좋은 점은 개방형 구조에서 다른 학생들과 같이 공부하기 때문에 나태해지지 않고 공부에만 집중할 수 있다는 점입니다. 그리고 담임선생님이 계시면서 시험 일정 등 공부 외적으로 신경 써야 할 부분에 있어서도 항상 관심 가지고 챙겨 주셨기에 더더욱 공부에만 집중할 수 있었습니다.
            
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0257" Then '중계 %>
                <div class="swiper-wrapper">
                    <!-- type05 : 후기 -->
                    <div class="swiper-slide type05">
                        <div class="title">
                            <div class="profile">
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half_overall/r-stu01.png" alt="">
                                <a href="javascript:alert('추후 공개 예정입니다.');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/ico_play.png" alt=""></a>
                            </div>
                            <p>
                                <span>2024</span><br>
                                <strong>서울대학교 물리학과 합격</strong><br>
                                <b>러셀 중계 신현빈</b>
                            </p>
                        </div>
                        <div class="detail-box">
                            <p>바른공부 자습전용관의<br>
                            가장 큰 장점은 면학분위기입니다.
                            </p>
                            <div>반수를 혼자 준비하게 되면 여러 방해 요소에 걸려 제대로 집중하지 못하게 되는 경우가 발생하는데 , 바자관 내에서 공부하게 되면 <strong>열심히 공부하는 다른 학생들이 있어 </strong> 마치 학교 같다는 생각이 들었고, 이에 지지 않고자 <strong>저도 같이 공부를 열심히 하게 되었습니다. </strong><br>
                                
                                또한 바자관은 공부를 하고자 하는 학생들이 모여있기 때문에 서로 조용히 하는 분위기에서 온전히 자신의 공부에만 집중할 수 있었습니다.<br>
                                
                                이런 환경 속에서 공부를 하면서, <strong>하루에 학습하는 양과 질의 면에 있어  모든 부분이 이전 혼자 공부할 때보다 많이 향상</strong>되었다고 생각합니다.  
                                
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide type05">
                        <div class="title">
                            <div class="profile">
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half_overall/r-stu02.png" alt="">
                                <a href="javascript:alert('추후 공개 예정입니다.');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/ico_play.png" alt=""></a>
                            </div>
                            <p>
                                <span>2024</span><br>
                                <strong>이화여자대학교 약학과 합격
                                    
                                </strong><br>
                                <b>러셀 중계 이유진</b>
                            </p>
                        </div>
                        <div class="detail-box">
                            <p>바른공부 자습전용관의 가장 큰 장점은 담임선생님의 관리입니다.
            
                            </p>
                            <div><strong>혼자 공부하면서 휴대폰 사용시간 조절이나 생활패턴 관리 등에 어려움을 겪고, 관리가 필요하다고 생각하여 등록</strong>하게 되었습니다.<br>
                                바자관은 개방형 구조로 되어있어, 탁 트여있어서 전혀 답답하지 않았고, 주변 친구들을 의식하지 않고 공부하는 연습을 할 수 있어서 좋았습니다. <br>
                                또한 <strong>입시 담임선생님은 저에게 든든한 멘토 역할</strong>을 해주셨습니다. 성적이 오르지 않아 고민하고 있을 때, 실전 연습을 좀 더 늘리고 모르는 문제는 과감히 버리는 연습을 하라고
                                 조언해 주신 것도 담임선생님이셨고, 집과 학원만을 오가며 단조로운 일상에 지쳐있었을 때 응원의 말씀을 해주셔서 끝까지 힘을 낼 수 있었던것 같습니다. 
                                
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide type05">
                        <div class="title">
                            <div class="profile">
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half_overall/r-stu03.png" alt="">
                                <a href="javascript:alert('추후 공개 예정입니다.');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/ico_play.png" alt=""></a>
                            </div>
                            <p>
                                <span>2023</span><br>
                                <strong>연세대학교 경영학과 합격
                                </strong><br>
                                <b>러셀 중계 박수진</b>
                            </p>
                        </div>
                        <div class="detail-box">
                            <p>체계적인 시스템이 있어 규칙적으로 공부할 수 있습니다.
                            </p>
                            <div><strong>바자관의 체계적인 출결관리와 표준 시간표가 좋았습니다.</strong> 혼자 공부하면서 힘들었던 점이 규칙적인 공부를 수립하는 것이었는데, 
                                강제성이 없다 보니 일찍 일어나고 쉬는  시간을 적당히 가지는 것이 어려웠습니다. 바자관은  8시 등원이라는 강제적 시스템과 표준 시간표가 정해져 있기 때문에,
                                 매일 규칙적으로 공부할 수 있다는 점이 가장 좋았고, <strong>오로지 수능을 위해 공부하는 열정적인 수험생들이 모인 공간에서 함께 힘낼 수 있어  동기부여</strong>가 되었습니다. <br>
                                공부하면서 고민이 생길 때, 친구나 부모님께 털어놓지 못하는 경우가  생기는데 
                                <strong>담임선생님께서 저의 고민을 항상 들어주시고 적절한 조언을 해주셔서</strong>  수험생활 끝까지 힘을 낼 수 있었습니다.
                                
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0342" Then '대구 %>
                <div class="swiper-slide type07 mb20 v-regular">
                    <div class="title">
                        <div class="profile">
                            <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/r-stu01.png" alt="">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/45182079')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/ico_play.png" alt=""></a>
                        </div>
                        <p>
                            <span>2024</span><br>
                            <strong>러셀 대구 HS반 조현호</strong><br>
                            <b class="period">재원기간 23년 8월~수능까지</b>
                        </p>
                    </div>
                    <p>
                        <span class="tit">1타 강사님의 즉각적인 피드백을 통해<br>올바른 공부 방향을 잡을 수 있었습니다.</span>
                        <span class="txt">
                            담임선생님께서 최상의 면학분위기를 조성해 주셨습니다. 적당한 긴장감을 유지해 주고, 시기에 맞는 입시정보를 제공해 주셔서 큰 도움이 되었습니다. <strong>개개인에 맞는 조언과 충고로 내 상태를 되돌아보고 개선하는데 큰 도움</strong>이 되었습니다.
            
                        </span>
                    </p>
                    <div class="detail-box">
                        <p class="score">
                            <strong>2024 수능 <span>296점</span></strong><br>
                            2023 수능 280점
                        </p>
                        <div class="arrow03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/r-up-arrow03.png" alt=""></div>
                        <div class="balloon-up">
                            <div>백분위 80% 상승</div>
                        </div>
                    </div>
                    <div class="up-tbl">
                        <table>
                            <colgroup>
                                <col style="width:20%;">
                                <col style="width:20%;">
                                <col style="width:20%;">
                                <col style="width:20%;">
                                <col style="width:20%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구</th>
                                    <th>총합</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="key-color">
                                    <td>2024 수능</td>
                                    <td>97</td>
                                    <td>100</td>
                                    <td>99</td>
                                    <td>296</td>
                                </tr>
                                <tr>
                                    <td>2023 수능</td>
                                    <td>96</td>
                                    <td>100</td>
                                    <td>84</td>
                                    <td>280</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="swiper-wrapper">
                    <!-- v-regular : N수 정규반 버전 -->
                    <div class="swiper-slide type08 v-regular">
                        <div class="title">
                            <p class="ml0">
                                <span>2024</span><br>
                                <strong>러셀 대구 HS반 김예진</strong><br>
                                <strong class="f12 mt0">가천대/이화여대 약학과 합격</strong>
                                <b class="period">재원기간 23년 2월~수능까지</b>
                            </p>
                            <div class="detail-box">
                                <p class="score">
                                    <strong>2024학년도 <span>292.5점</span></strong><br>
                                    2023학년도 275.5점
                                    <span class="arrow03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/r-up-arrow03.png" alt=""></span>
                                </p>
                                <div class="balloon-up">
                                    <div>백분위 <strong>69</strong>% 상승</div>
                                </div>
                            </div>
                        </div>
                        <div class="up-tbl">
                            <table>
                                <colgroup>
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>구분</th>
                                        <th>국어</th>
                                        <th>수학</th>
                                        <th>탐구1</th>
                                        <th>탐구2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="key-color">
                                        <td>2024 수능</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>2023 수능</td>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>1</td>
                                        <td>3</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="swiper-slide type08 v-regular">
                        <div class="title">
                            <p class="ml0">
                                <span>2024</span><br>
                                <strong>러셀 대구 서의치반 조혜린</strong><br>
                                <strong class="f12 mt0">성균관대 약학과/ 계명대 의예과 합격</strong>
                                <b class="period">재원기간 23년 1월~수능까지</b>
                            </p>
                            <div class="detail-box">
                                <p class="score">
                                    <strong>2024학년도 <span>291.5점</span></strong><br>
                                    2023학년도 276점
                                    <span class="arrow03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/r-up-arrow03.png" alt=""></span>
                                </p>
                                <div class="balloon-up">
                                    <div>백분위 <strong>65</strong>% 상승</div>
                                </div>
                            </div>
                        </div>
                        <div class="up-tbl">
                            <table>
                                <colgroup>
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>구분</th>
                                        <th>국어</th>
                                        <th>수학</th>
                                        <th>탐구1</th>
                                        <th>탐구2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="key-color">
                                        <td>2024 수능</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>2023 수능</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>2</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="swiper-slide type08 v-regular">
                        <div class="title">
                            <p class="ml0">
                                <span>2024</span><br>
                                <strong>러셀 대구 서의치반 이시훈</strong><br>
                                <strong class="f12 mt0">연세대 언더우드학부 합격</strong>
                                <b class="period">재원기간 22년 12월~수능까지</b>
                            </p>
                            <div class="detail-box">
                                <p class="score">
                                    <strong>2024학년도 <span>284점</span></strong><br>
                                    2023학년도 210.5점
                                    <span class="arrow03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/r-up-arrow03.png" alt=""></span>
                                </p>
                                <div class="balloon-up">
                                    <div>백분위 <strong>82</strong>% 상승</div>
                                </div>
                            </div>
                        </div>
                        <div class="up-tbl">
                            <table>
                                <colgroup>
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>구분</th>
                                        <th>국어</th>
                                        <th>수학</th>
                                        <th>탐구1</th>
                                        <th>탐구2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="key-color">
                                        <td>2024 수능</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>2023 수능</td>
                                        <td>3</td>
                                        <td>2</td>
                                        <td>7</td>
                                        <td>5</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="swiper-slide type08 v-regular">
                        <div class="title">
                            <p class="ml0">
                                <span>2024</span><br>
                                <strong>러셀 대구 HS반 이인우</strong><br>
                                <strong class="f12 mt0">서울대 지리학과 합격</strong>
                                <b class="period">재원기간 23년 8월~수능까지</b>
                            </p>
                            <div class="detail-box">
                                <p class="score">
                                    <strong>2024학년도 <span>291.5점</span></strong><br>
                                    2023학년도 265점
                                    <span class="arrow03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/r-up-arrow03.png" alt=""></span>
                                </p>
                                <div class="balloon-up">
                                    <div>백분위 <strong>76</strong>% 상승</div>
                                </div>
                            </div>
                        </div>
                        <div class="up-tbl">
                            <table>
                                <colgroup>
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>구분</th>
                                        <th>국어</th>
                                        <th>수학</th>
                                        <th>탐구1</th>
                                        <th>탐구2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="key-color">
                                        <td>2024 수능</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>2023 수능</td>
                                        <td>3</td>
                                        <td>1</td>
                                        <td>4</td>
                                        <td>2</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="swiper-slide type08 v-regular">
                        <div class="title">
                            <p class="ml0">
                                <span>2024</span><br>
                                <strong>러셀 대구 HS반 정지원</strong><br>
                                <strong class="f12 mt0">경북대/영남대/계명대 의예과 합격</strong>
                                <b class="period">재원기간 23년 9월~수능까지</b>
                            </p>
                            <div class="detail-box">
                                <p class="score">
                                    <strong>2024학년도 <span>296점</span></strong><br>
                                    2023학년도 290.5점
                                    <span class="arrow03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/r-up-arrow03.png" alt=""></span>
                                </p>
                                <div class="balloon-up">
                                    <div>백분위 <strong>58</strong>% 상승</div>
                                </div>
                            </div>
                        </div>
                        <div class="up-tbl">
                            <table>
                                <colgroup>
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>구분</th>
                                        <th>국어</th>
                                        <th>수학</th>
                                        <th>탐구1</th>
                                        <th>탐구2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="key-color">
                                        <td>2024 수능</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>2023 수능</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>2</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="swiper-slide type08 v-regular">
                        <div class="title">
                            <p class="ml0">
                                <span>2024</span><br>
                                <strong>러셀 대구 서의치반 권OO</strong><br>
                                <strong class="f12 mt0">동아대/원광대/<br>
                                    대구가톨릭대 의예과 합격</strong>
                                <b class="period">재원기간 23년 6월~수능까지</b>
                            </p>
                            <div class="detail-box">
                                <p class="score">
                                    <strong>2024학년도 <span>293점</span></strong><br>
                                    2023학년도 270.5점
                                    <span class="arrow03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/r-up-arrow03.png" alt=""></span>
                                </p>
                                <div class="balloon-up">
                                    <div>백분위 <strong>76</strong>% 상승</div>
                                </div>
                            </div>
                        </div>
                        <div class="up-tbl">
                            <table>
                                <colgroup>
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>구분</th>
                                        <th>국어</th>
                                        <th>수학</th>
                                        <th>탐구1</th>
                                        <th>탐구2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="key-color">
                                        <td>2024 수능</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>2023 수능</td>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>3</td>
                                        <td>3</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="swiper-slide type08 v-regular">
                        <div class="title">
                            <p class="ml0">
                                <span>2024</span><br>
                                <strong>러셀 대구 서의치반 박OO</strong><br>
                                <strong class="f12 mt0">경북대/순천향대 의예과 합격</strong>
                                <b class="period">재원기간 23년 2월~수능까지</b>
                            </p>
                            <div class="detail-box">
                                <p class="score">
                                    <strong>2024학년도 <span>277점</span></strong><br>
                                    2023학년도 216점
                                    <span class="arrow03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/r-up-arrow03.png" alt=""></span>
                                </p>
                                <div class="balloon-up">
                                    <div>백분위 <strong>73</strong>% 상승</div>
                                </div>
                            </div>
                        </div>
                        <div class="up-tbl">
                            <table>
                                <colgroup>
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>구분</th>
                                        <th>국어</th>
                                        <th>수학</th>
                                        <th>탐구1</th>
                                        <th>탐구2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="key-color">
                                        <td>2024 수능</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>2023 수능</td>
                                        <td>3</td>
                                        <td>2</td>
                                        <td>6</td>
                                        <td>4</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="swiper-slide type08 v-regular">
                        <div class="title">
                            <p class="ml0">
                                <span>2024</span><br>
                                <strong>러셀 대구 연고대반 허OO</strong><br>
                                <strong class="f12 mt0">경북대 약학과 합격</strong>
                                <b class="period">재원기간 23년 1월~수능까지</b>
                            </p>
                            <div class="detail-box">
                                <p class="score">
                                    <strong>2024학년도 <span>289점</span></strong><br>
                                    2023학년도 233점
                                    <span class="arrow03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/r-up-arrow03.png" alt=""></span>
                                </p>
                                <div class="balloon-up">
                                    <div>백분위 <strong>84</strong>% 상승</div>
                                </div>
                            </div>
                        </div>
                        <div class="up-tbl">
                            <table>
                                <colgroup>
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>구분</th>
                                        <th>국어</th>
                                        <th>수학</th>
                                        <th>탐구1</th>
                                        <th>탐구2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="key-color">
                                        <td>2024 수능</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>2023 수능</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>4</td>
                                        <td>3</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <% Else %>
                <div class="swiper-wrapper">
                    <!-- type06 : 질의응답 -->
                    <div class="swiper-slide type06">
                        <div class="title">
                            <div class="profile">
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/r-stu01.png" alt="">
                                <span>러셀 중계 재수종합반<br>
                                    HS반 김OO</span>
                            </div>
                            <p>
                                <strong>대치동 선생님의 수업을<br>
                                직접 선택</strong>할 수 있어, <strong>수업을 들으면서 충분한 자습시간</strong>을 확보할 수 있어 좋았습니다.
                            </p>
                        </div>
                        <div class="detail-box">
                            <p>러셀 재수종합반을 선택한 이유는 무엇인가요?
                            </p>
                            <div>재수를 결심하고 재수종합반을 알아보았는데, 자동으로
                                선생님이 배정되는 것이 아니라 <strong>원하는 선생님을
                                    직접 선택할 수 있는 학원은 러셀학원</strong> 뿐이었습니다.
                                또한 <strong>토요일도 의무자습시간으로 되어있어
                                    많은 자습시간을 확보할 수 있는 점이 좋았습니다.</strong>
                            </div>
                            <p class="mt20">러셀 재수종합반에서 좋았던 점은 무엇인가요?
                            </p>
                            <div><strong>대치동 선생님의 수업을 이동시간 낭비 없이 들을 수
                                있었고 대치동 현강 콘텐츠를 그대로 제공해주셔서 
                                충분한 학습량을 확보할 수 있었습니다.</strong> 또한 꼼꼼한
                                관리 시스템으로 재수하는 1년 동안 늘어지지 않고
                                꾸준하게 공부할 수 있었습니다. 재수하면서 힘든
                                부분이 소속감이 없다는 느낌 때문인데,
                                <strong>러셀 재수종합반에서는 입시 담임선생님께서 학습과 멘탈 측면을 끊임없이 함께 고민해주셔서 소속감을
                                    느낄 수 있었습니다.</strong>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide type06">
                        <div class="title">
                            <div class="profile">
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/r-stu02.png" alt="">
                                <span>러셀 중계 재수종합반<br>
                                    서의치반 김OO</span>
                            </div>
                            <p>
                                <strong>수업을 들으면서<br>
                                    충분한 자습시간을 확보</strong>하고 싶어 러셀 재수종합반을 선택하게 되었습니다.
                            </p>
                        </div>
                        <div class="detail-box">
                            <p>러셀 재수종합반을 선택한 이유는 무엇인가요?
                            </p>
                            <div>고3때 너무 많은 수업을 들어 자습시간이 부족했기 때문에 학원에서 주어진 과제를 다 따라가지 못했고 학업 성취 역시 들인 시간 대비 얻지 못했습니다. 그래서 재수할 때에는 <strong>부족한 부분을 수업으로 보충하는 동시에 충분한 자습시간을 확보하고 싶어 러셀 재수종합반을 선택하게 되었습니다.</strong>

                            </div>
                            <p class="mt20">러셀 재수종합반에서 좋았던 점은 무엇인가요?
                            </p>
                            <div><strong>대치동 선생님의 수업을 들으며 현장 자료를 직접 받아볼 수 있고, 인강에서보다 더 유익한 정보들을 얻을 수 있어서 좋았습니다.</strong> 관리 측면에서는 <strong>매주 위클리 모의고사를 진행하면서 내가 어느정도 위치에 있는지 학습 상태를 체크해 볼 수 있었고, 실전과 같은 환경에서 시간 관리 연습을 할 수 있어 실제 수능에서 시간에 쫓기지 않고 문제를 풀 수 있었습니다.</strong> 또한 <strong>입시 담임선생님이 계셔서 모의고사를 보고 나서 학습전략과 수능까지 남은 기간 공부 계획 방향을 상담 받을 수 있어서 좋았습니다. </strong>

                            </div>
                        </div>
                    </div>
                </div>
                <% End If %>
                <div class="swiper-pagination type01"></div>
            </div>
            <% If campus_code = "CD0257" OR campus_code = "CD0342" Then '중계/대구 %>
            <div>
                <a href="<%=susi_url%>" class="btn-link"><%=susi_txt%></a>
            </div>
            <% End If %>
            <!-- //상승리뷰 슬라이드 -->
            <% If campus_code <> "CD0250" and campus_code <> "CD0257" and campus_code <> "CD0342" Then '부천/중계/대구 제외 %>
            <p class="r-txt mt10">* 실제 수강 후기에서 발췌하였으며 맞춤법 등 일부 문구는<br>
            문맥에 맞게 수정하였습니다. 
            </p>
            <!-- 업그레이드 슬라이드 -->
            <div class="upgrade-slide swiper-container">
                <div class="swiper-wrapper">
                    <!-- type01 : 다관왕 -->
                    <div class="swiper-slide">
                        <p class="king">
                            <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/ico_crown.png" alt=""></span><br>
                            의예과 3관왕 달성</p>
                        <ul>
                            <li>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyungpook.png" alt=""></div>
                                <p>경북대 의예과</p>
                            </li>
                            <li>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yeongnam.png" alt=""></div>
                                <p>영남대 의예과</p>
                            </li>
                            <li>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_keimyung.png" alt=""></div>
                                <p>계명대 의예과</p>
                            </li>
                        </ul>
                        <div class="up-detail mt30">
                            <p>러셀 대구 재수종합반 HS반 김OO</p>
                            <div>
                                <p>
                                    <strong>2024학년도 298점</strong><br>
                                    <span>2023학년도 274.5점</span>
                                </p>
                                <div>
                                    <strong>92</strong>%<br>
                                    상승
                                </div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/up_arrow.png" alt=""></span>
                            </div>
                        </div>
                        <table>
                            <colgroup>
                                <col style="width:17.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>영어</th>
                                    <th>탐구(1)</th>
                                    <th>탐구(2)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="key-color">2024<br>
                                    수능</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">2</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                </tr>
                                <tr>
                                    <td>2023<br>
                                    수능</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>3</td>
                                    <td>2</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="swiper-slide">
                        <p class="king">
                            <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/ico_crown.png" alt=""></span><br>
                            의예과 3관왕 달성</p>
                        <ul>
                            <li>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_hanyang.png" alt=""></div>
                                <p>한양대 의예과</p>
                            </li>
                            <li>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyunghee.png" alt=""></div>
                                <p>경희대 의예과</p>
                            </li>
                            <li>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_inha.png" alt=""></div>
                                <p>인하대 의예과</p>
                            </li>
                        </ul>
                        <div class="up-detail mt30">
                            <p>러셀 대구 재수종합반 HS반 신OO</p>
                            <div>
                                <p>
                                    <strong>2024학년도 298점</strong><br>
                                    <span>2023학년도 278.5점</span>
                                </p>
                                <div>
                                    <strong>91</strong>%<br>
                                    상승
                                </div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/up_arrow.png" alt=""></span>
                            </div>
                        </div>
                        <table>
                            <colgroup>
                                <col style="width:17.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>영어</th>
                                    <th>탐구(1)</th>
                                    <th>탐구(2)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="key-color">2024<br>
                                    수능</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">2</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                </tr>
                                <tr>
                                    <td>2023<br>
                                    수능</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>3</td>
                                    <td>2</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- type02 : 합격 -->
                    <div class="swiper-slide">
                        <div class="up-detail">
                            <p>러셀 대구 재수종합반 HS반 류OO</p>
                            <div>
                                <p>
                                    <strong>2024학년도 297점</strong><br>
                                    <span>2023학년도 287점</span>
                                </p>
                                <div>
                                    <strong>78</strong>%<br>
                                    상승
                                </div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/up_arrow.png" alt=""></span>
                            </div>
                        </div>
                        <table>
                            <colgroup>
                                <col style="width:17.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>영어</th>
                                    <th>탐구(1)</th>
                                    <th>탐구(2)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="key-color">2024<br>
                                    수능</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                </tr>
                                <tr>
                                    <td>2023<br>
                                    수능</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>1</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="mt30">
                            의예과 합격</p>
                        <ul>
                            <li>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yeongnam.png" alt=""></div>
                                <p>영남대 의예과</p>
                            </li>
                        </ul>
                    </div>
                    <div class="swiper-slide">
                        <div class="up-detail">
                            <p>러셀 중계 재수종합반 HS반 김OO</p>
                            <div>
                                <p>
                                    <strong>2024학년도 297점</strong><br>
                                    <span>2023학년도 289.5점</span>
                                </p>
                                <div>
                                    <strong>71</strong>%<br>
                                    상승
                                </div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/up_arrow.png" alt=""></span>
                            </div>
                        </div>
                        <table>
                            <colgroup>
                                <col style="width:17.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>영어</th>
                                    <th>탐구(1)</th>
                                    <th>탐구(2)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="key-color">2024<br>
                                    수능</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">2</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                </tr>
                                <tr>
                                    <td>2023<br>
                                    수능</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="mt30">
                            “메디컬 3관왕 합격”</p>
                        <ul>
                            <li>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p>서울대 약학과</p>
                            </li>
                            <li>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kangwon.png" alt=""></div>
                                <p>강원대 의예과</p>
                            </li>
                            <li>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kosin.png" alt=""></div>
                                <p>고신대 의예과</p>
                            </li>
                        </ul>
                    </div>
                    <div class="swiper-slide">
                        <div class="up-detail">
                            <p>러셀 대구 재수종합반 HS반 김OO</p>
                            <div>
                                <p>
                                    <strong>2023학년도 295점</strong><br>
                                    <span>2024학년도 264점</span>
                                </p>
                                <div>
                                    <strong>85</strong>%<br>
                                    상승
                                </div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/up_arrow.png" alt=""></span>
                            </div>
                        </div>
                        <table>
                            <colgroup>
                                <col style="width:17.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>영어</th>
                                    <th>탐구(1)</th>
                                    <th>탐구(2)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="key-color">2024<br>
                                    수능</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">2</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                </tr>
                                <tr>
                                    <td>2023<br>
                                    수능</td>
                                    <td>1</td>
                                    <td>3</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>2</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="mt30">
                            “약학부 2관왕 합격”</p>
                        <ul>
                            <li>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chungang.png" alt=""></div>
                                <p>중앙대 약학부</p>
                            </li>
                            <li>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yeongnam.png" alt=""></div>
                                <p>영남대 약학부</p>
                            </li>
                        </ul>
                    </div>
                    <div class="swiper-slide">
                        <div class="up-detail">
                            <p>러셀 대구 재수종합반 서의치반 이OO</p>
                            <div>
                                <p>
                                    <strong>2023학년도 290점</strong><br>
                                    <span>2024학년도 253점</span>
                                </p>
                                <div>
                                    <strong>78</strong>%<br>
                                    상승
                                </div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/up_arrow.png" alt=""></span>
                            </div>
                        </div>
                        <table>
                            <colgroup>
                                <col style="width:17.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                                <col style="width:16.5%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>영어</th>
                                    <th>탐구(1)</th>
                                    <th>탐구(2)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="key-color">2024<br>
                                    수능</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">2</td>
                                    <td class="key-color">1</td>
                                </tr>
                                <tr>
                                    <td>2023<br>
                                    수능</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>3</td>
                                    <td>4</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="mt30">
                            “고려대학교 합격”</p>
                        <ul>
                            <li>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                <p>고려대<br>
                                스마트모빌리티학부</p>
                            </li>
                            <li style="width:85px">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_unist.png" alt=""></div>
                                <p>UNIST<br>
                                이공계열</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="swiper-pagination type02"></div>
            </div>
            <!-- //업그레이드 슬라이드 -->
            <% End If %>
        </div>
    </div>
</div>