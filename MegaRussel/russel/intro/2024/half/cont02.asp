<div class="cont js-cont <%=campusName%>">
    <div class="cont03">
        <div class="inner02">
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont03_tit.png" alt="러셀에서 반수 성공이 가능한 이유, 러셀 반수생 특화 시스템에 있습니다." /></h3>

            <div class="cont-box">
                <% If sCampusCode = "CD0257" Then '중계 %>
                <p class="mb60"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont03_stit.png" alt="면학분위기로 소문난 바른공부 자습전용관" /></p>
                <% Else %>
                <p class="mb60"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont03_stit.png" alt="면학분위기로 소문난 바른공부 자습전용관" /></p>
                <% End If %>

                <% If isCore = 1 or sCampusCode = "CD0342" or sCampusCode = "CD0349" Then '코어/대구/울산 일경우 %>
                <a class="ico_bus" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_bus.png" alt="" /></a>
                <% End If %>
                <div class="studyHall-slide-wrap">
                    <div class="studyHall-navi">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">효율적인 시간관리</div>
                            <div class="swiper-slide">충분한 자습시간</div>
                            <div class="swiper-slide">학습 동선 최소화</div>
                            <div class="swiper-slide">집단적인 면학분위기</div>
                            <% If isCore = 1 or sCampusCode = "CD0342" or sCampusCode = "CD0349" Then '코어/대구/울산 일경우 %>
                            <div class="swiper-slide">자체 식당 운영</div>
                            <% End If %>
                        </div>
                    </div>

                    <div class="swiper-container studyHall-slide">
                        <div class="swiper-wrapper">
                            <!-- 효율적인 시간관리 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap ml60 mr30">
                                    <div class="txt-box">
                                        <p class="stit">효율적인<br>
                                            <strong>시간관리</strong></p>
                                        <p class="stxt"><strong>대학 수업과 수능 준비가 동시에 가능</strong>하도록<br>
                                            <strong>개인에 맞게 학습 스케줄을 운영</strong>합니다.<br>
                                            담임선생님과 함께 필요한 수업을 선택하고<br>
                                            등하원 시간을 조정하여 효율적으로 시간을 관리합니다.</p>
                                    </div>
                                    <% If sCampusCode = "CD0247" Then '강남 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">부족한 부분을 단과 강의로 보완할 수 있고,<br>
                                            나머지 시간은 자습에 투자할 수 있어서 시간 관리가<br>
                                            상당히 효율적입니다.</p>
                                        <dl>
                                            <dt><strong>2023 연세대 기계공학부 합격</strong><br>
                                                러셀 강남 권충만</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">수업 들을 선생님을 자율적으로 정하고 하루 시간을 <br>
                                            자유롭게 쓸 수 있었고, 자습시간이 많아 배운 것을 <br>
                                            익힐 시간이 많아서 좋았습니다.</p>
                                        <dl>
                                            <dt><strong>2023 연세대 경영학과 합격</strong><br>
                                                러셀 분당 이OO</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">바자관 입구에 담임선생님이 계셔서 생활기록부, 수시 원서 작성 시 즉각적인 도움 요청과 피드백이 가능하여 좋았던 것 같고 학습 중  어려움이나 고민이 생기면 선생님과 상담할 수 있었던 게 수험 기간에 큰 힘이 되었습니다.
                                        </p>
                                        <dl>
                                            <dt><strong>2024 인제대 의예과 
                                                 합격</strong><br>
                                                 러셀 센텀 김OO</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_inje.png" alt="인제대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0249" Then '영통 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">러셀에서 공부를 하면서 시간을 체계적으로 이용하고<br>
                                            온전히 학습이 집중할 수 있게 되었던 경험이 굉장히<br>
                                            긍정적인 기억으로 남아 있었습니다.</p>
                                        <dl>
                                            <dt><strong>2023 성균관대 약학과 합격</strong><br>
                                                러셀 영통 오현석</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sungkyunkwan.png" alt="성균관대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">효율적으로 시간 관리를 할 수 있다는 점이 가장 <br>
                                            좋았습니다. 매일 아침 정해진 시간에 등원하고, 공부하는<br> 
                                            시간과 쉬는 패턴이 일정하다보니 의지가 약했던 <br>
                                            저에게는 많은 도움이 되었습니다.</p>
                                        <dl>
                                            <dt><strong>2024 이화여대 약학과 합격</strong><br>
                                                러셀 중계 이유진</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_ewha.png" alt="이화여대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0342" Then '대구 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">작년까지 공부를 하지 않았던 저에게 수험생 생활 패턴이란 
                                            혼자서는 절대 교정해낼 수 없는 어려운 패턴이었지만 매일매일을 규칙적으로 생활하면서 이후 수능까지 
                                            이어지는 생활 패턴을 잡을 수 있었습니다.</p>
                                        <dl>
                                            <dt><strong>2024 서울대 생명교육과 합격</strong><br>
                                                러셀 대구 이승우</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">바자관의 장점은 단과를 선택적으로 들을 수 있어서 <br>
                                            시간을 효율적으로 쓸 수 있다는 것입니다. 부족하다고 <br>
                                            생각하는 과목을 찾아 듣다보니 집중력있게 수업을 <br>
                                            들을 수 있었고 자습시간 확보에도 도움이 되었습니다.</p>
                                        <dl>
                                            <dt><strong>2024 한양대 의예과 합격</strong><br>
                                                러셀CORE 광주 엄태옥</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_hanyang.png" alt="한양대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">러셀CORE 대전에서 공부하니 올바른 공부 습관이 잡혔고, 시간 관리를 효율적으로 할 수 있게 되었습니다.</p>
                                        <dl>
                                            <dt><strong>2023 서울대 자유전공학부 합격</strong><br>
                                                러셀CORE 대전 김해솔</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
                                    <div class="stu-reveiw mt10">
                                        <p class="txt">강의와 식당, 바자관이 한 건물에 있는 것이 정말 좋았습니다. 전에 잠실로 학원을 다닐 땐 왕복에 4시간 가까이 걸리는 데다 체력적인 소모도 심했지만, 러셀에서는 국영수는 물론이고 사탐, 과탐 등의 선택과목도 강의를 해주기에 이동에 시간을 소모할 필요 없이 자습시간을 확보할 수 있고 동시에 좋은 강의를 들을 수 있다는 점이 큰 도움이 되었습니다.</p>
                                        <dl>
                                            <dt><strong>2024 연세대학교(미래) 의예과 합격</strong><br>
                                                러셀CORE 원주 이지우</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">학습 계획을 짜는데 어려움을 겪었었는데, <br>
                                            담임선생님과의 상담을 통해 효율적이고 체계적인 공부 
                                            방향을 설정할 수 있었습니다.</p>
                                        <dl>
                                            <dt><strong>2024 동아대 의예과 합격</strong><br>
                                                러셀CORE 창원 제현수</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_donga.png" alt="동아대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0250" Then '부천 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">시간 관리를 하며 공부를 해야 하는데, 의무적으로 오전 8시~오후 10시까지 자습을 하며 규칙적인 생활습관을 유지할 수 있었습니다.<br>
                                        
                                            또한 루틴이 형성되면서 효율적이고 집중도 높은 학습을 실천할 수 있었습니다.
                                        </p>
                                        <dl>
                                            <dt><strong>2024 연세대(미래) 의예과 합격</strong><br>
                                                러셀 부천 박정우</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% Else %>
                                    <div class="stu-reveiw">
                                        <p class="txt">학교 수업이 끝난 후에 바른공부 자습전용관에서 <br>
                                            공부하면 시간 낭비 없이 바로 공부를 할 수 있었습니다. 
                                            특히 심야 자습 제도까지 이용하여 순 공부시간을 채우며 
                                            하루를 마칠 수 있어서 좋았습니다.</p>
                                        <dl>
                                            <dt><strong>2024 고려대 국어교육과 합격</strong><br>
                                                러셀 목동 윤지효</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% End If %>
                                </div>
                                <div class="tbl-wrap">
                                    <p>반수생 시간표 (예시)</p>
                                    <% If sCampusCode = "CD0343" Then '코어원주 %>
                                    <table class="tbl-01 tbl-center">
                                        <colgroup>
                                            <col style="width:16%;">
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
                                                <th>시간표 (예시)</th>
                                                <th>월</th>
                                                <th>화</th>
                                                <th>수</th>
                                                <th>목</th>
                                                <th>금</th>
                                                <th>토</th>
                                                <th>일</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th>오전<br>
                                                (08:00~12:10)
                                                </th>
                                                <td class="bg-sky">대학교<br>
                                                    수업</td>
                                                <td class="bg-sky" rowspan="2">대학교<br>
                                                    수업</td>
                                                <td class="bg-orange" rowspan="3">의무<br>
                                                    자습</td>
                                                <td class="bg-sky">대학교<br>
                                                    수업</td>
                                                <td class="bg-sky" rowspan="2">대학교<br>
                                                    수업</td>
                                                <td class="bg-green">단과<br>
                                                    수업</td>
                                                <td class="bg-orange" rowspan="3">의무<br>
                                                    자습</td>
                                            </tr>
                                            <tr>
                                                <th>오후<br>
                                                    (13:10~17:30)</th>
                                                <td class="bg-green">단과<br>
                                                    수업</td>
                                                <td class="bg-orange">의무<br>
                                                    자습</td>
                                                <td class="bg-orange" rowspan="2">의무<br>
                                                    자습</td>
                                            </tr>
                                            <tr>
                                                <th>저녁<br>
                                                    (18:30~21:50)</th>
                                                <td class="bg-orange">의무<br>
                                                    자습</td>
                                                <td class="bg-orange">의무<br>
                                                    자습</td>
                                                <td class="bg-green">단과<br>
                                                    수업</td>
                                                <td class="bg-orange">의무<br>
                                                    자습</td>
                                            </tr>
                                            <tr>
                                                <th style="padding:5px 0;">심야</th>
                                                <td style="padding:5px 0;" colspan="7" >선택자습</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <% ElseIf sCampusCode = "CD0250" Then '부천 %>
                                    <table class="tbl-01 tbl-center">
                                        <colgroup>
                                            <col style="width:16%;">
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
                                                <th>시간표 (예시)</th>
                                                <th>월</th>
                                                <th>화</th>
                                                <th>수</th>
                                                <th>목</th>
                                                <th>금</th>
                                                <th>토</th>
                                                <th>일</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th>오전<br>
                                                    (08:00~12:10)</th>
                                                <td class="bg-sky">대학교<br>
                                                    수업</td>
                                                <td class="bg-sky" rowspan="2">대학교<br>
                                                    수업</td>
                                                <td class="bg-orange" rowspan="3">의무<br>
                                                        자습</td>
                                                <td class="bg-sky">대학교<br>
                                                        수업</td>
                                                <td class="bg-sky" rowspan="2">대학교<br>
                                                    수업</td>
                                                <td class="bg-green">단과<br>
                                                    수업</td>
                                                <td class="bg-orange" rowspan="3">의무<br>
                                                            자습</td>
                                            </tr>
                                            <tr>
                                                <th>오후<br>
                                                    (13:10~17:30)</th>
                                                <td class="bg-green">단과<br>
                                                        수업</td>
                                                <td class="bg-orange">의무<br>
                                                    자습</td>
                                                <td class="bg-orange" rowspan="2">의무<br>
                                                    자습</td>
                                            </tr>
                                            <tr>
                                                <th>저녁<br>
                                                    (18:30~22:00)</th>
                                                <td class="bg-orange">의무<br>
                                                    자습</td>
                                                <td class="bg-orange">의무<br>
                                                    자습</td>
                                                <td class="bg-green">단과<br>
                                                    수업</td>
                                                <td class="bg-orange">의무<br>
                                                    자습</td>
                                            </tr>
                                            <tr>
                                                <th style="padding:5px 0;">심야</th>
                                                <td style="padding:5px 0;" colspan="7" >선택자습</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <% Else %>
                                    <table class="tbl-01 tbl-center">
                                        <colgroup>
                                            <col style="width:16%;">
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
                                                <th>시간표 (예시)</th>
                                                <th>월</th>
                                                <th>화</th>
                                                <th>수</th>
                                                <th>목</th>
                                                <th>금</th>
                                                <th>토</th>
                                                <th>일</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th style="padding:5px 0">아침</th>
                                                <td colspan="7" style="padding:5px 0">선택자습</td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    오전<br>(08:00~12:10)
                                                </th>
                                                <td class="bg-sky">
                                                    대학교<br>수업
                                                </td>
                                                <td class="bg-sky" rowspan="2">
                                                    대학교<br>수업
                                                </td>
                                                <td class="bg-orange" rowspan="3">
                                                    의무<br>자습
                                                </td>
                                                <td class="bg-sky">
                                                    대학교<br>수업
                                                </td>
                                                <td class="bg-sky" rowspan="2">
                                                    대학교<br>수업
                                                </td>
                                                <td class="bg-green">
                                                    단과<br>수업
                                                </td>
                                                <td class="bg-orange" rowspan="3">
                                                    의무<br>자습
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>오후<br>
                                                    (13:10~17:30)</th>
                                                <td class="bg-green">단과<br>
                                                    수업</td>
                                                <td class="bg-orange">의무<br>
                                                    자습</td>
                                                <td class="bg-orange" rowspan="2">
                                                    의무<br>자습
                                                    </td>
                                            </tr>
                                            <tr>
                                                <th>저녁<br>
                                                    (18:30~21:50)</th>
                                                <td class="bg-orange">의무<br>
                                                    자습</td>
                                                <td class="bg-orange">의무<br>
                                                    자습</td>
                                                <td class="bg-green">단과<br>
                                                    수업</td>
                                                <td class="bg-orange">의무<br>
                                                    자습</td>
                                            </tr>
                                            <tr>
                                                <th style="padding:5px 0">심야</th>
                                                <td colspan="7" style="padding:5px 0">선택자습</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <% End If %>
                                </div>
                            </div>

                            <!-- 충분한 자습시간 -->
                            <div class="swiper-slide dough">
                                <div class="slide-wrap">
                                    <div class="txt-box">
                                        <p class="stit">충분한<br>
                                            <strong>자습시간</strong></p>
                                        <p class="stxt">먼저 시작한 경쟁자를 앞서가려면<br>
                                            효율적인 학습은 필수입니다.<br>
                                            나의 취약한 부분만 <strong>최소한의 수업으로 보완</strong>하고<br>
                                            <strong>스스로 자습할 수 있는 시간을 최대한으로 확보</strong>합니다.</p>
                                    </div>

                                    <% If sCampusCode = "CD0247" Then '강남 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">다른 재수종합학원들과 달리 수업을 강요하지 않고<br>
                                            자율학습을 중시하는 학원이라고 생각해서 
                                            선택한 것이 가장 큽니다.</p>
                                        <dl>
                                            <dt><strong>2023 서울대 의예과 합격</strong><br>
                                                러셀 강남 이윤서</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0245" Then '목동 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">학습시간을 개인의 필요에 맞게 확보할 수 있다는 점이 <br>
                                            좋았습니다. 스케줄을 자율적으로 짤 수 있어서 필요에 <br>
                                            맞게 효율적인 공부가 가능했습니다.</p>
                                        <dl>
                                            <dt><strong>2024 연세대 중어중문학과 합격</strong><br>
                                                러셀 목동 이서진</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">수능 3달 전부터는 취약 과목에 대해 선택적으로 수업을 
                                            들었고, 그 외의 시간엔 충분한 자습시간을 확보하여 <br>
                                            혼자서 공부할 수 있었습니다.</p>
                                        <dl>
                                            <dt><strong>2023 충남대 의예과 합격</strong><br>
                                                러셀 분당 이OO</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chungnam.png" alt="충남대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">표준 시간표대로 공부하고 쉬는 것도 공부 습관을 잘 형성해 주었던 것 같습니다. 낭비하는 시간 없이 오로지 공부에만 투자할 수 있어서 효율적으로 공부할 수 있었습니다.
                                        </p>
                                        <dl>
                                            <dt><strong>2024 고려대 간호학과 합격
                                            </strong><br>
                                            러셀 센텀 김OO</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0249" Then '영통 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">바자관의 좋은 면학분위기와 자습시간을 많이 확보할 수 있다는 장점 때문에 러셀을 선택하게 되었습니다.</p>
                                        <dl>
                                            <dt><strong>2023 서울대 생명과학부 합격</strong><br>
                                                러셀 영통 김태현</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">수능 시간표와 동일한 표준 시간표 운영이 가장 <br>
                                        좋았습니다. 저에게 주어진 시간들을 계획해서 사용하는 <br>
                                        것이 막막했는데, 표준 시간표에 맞춰서 계획을 세우니 <br>
                                        과목별로 균형을 맞춰서 규칙적으로 <br>
                                        공부할 수 있어 가장 큰 도움이 되었습니다.</p>
                                        <dl>
                                            <dt><strong>2023 서울대 의예과 합격</strong><br>
                                                러셀 중계 노현지</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0342" Then '대구 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">표준 시간표 대로 공부를 하면서 공부할 때 공부하고, <br>
                                            쉴 때 쉬게 되어, 일정한 공부 습관이 형성되었고 <br>
                                            다른 것을 하거나 허투루 쓰는 시간이 줄어들어 학습시간이 충분히 확보되었습니다.</p>
                                        <dl>
                                            <dt><strong>2024 영남대 약학과 합격</strong><br>
                                                러셀 대구 박민서</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yeongnam.png" alt="영남대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">저는 학교에서 야자가 끝난 후 공부할 수 있는 공간이 <br>
                                            필요했습니다. 러셀은 새벽까지 운영을 하였기 때문에 <br>
                                            야자 후 집에 갔더라면 버려졌을 공부시간을 러셀에서 <br>
                                            현명하게 사용할 수 있었던 것 같습니다.</p>
                                        <dl>
                                            <dt><strong>2024 서울대 의예과 합격</strong><br>
                                                러셀CORE 광주 임대윤</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">바른공부 자습전용관에서는 불필요한 수업은 줄이고 자습시간은 극대화 할 수 있어서 좋았습니다.</p>
                                        <dl>
                                            <dt><strong>2023 서울대 전기정보공학부 합격</strong><br>
                                                러셀CORE 대전 노유찬</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
                                    <div class="stu-reveiw mt10">
                                        <p class="txt">바른공부 자습전용관의 장점은 절대적인 학습시간이 <br>
                                            확보된다는 점입니다. 지켜야 하는 의무자습 시간이 있기 
                                            때문에 핑계 대지 않고 매일매일 일정 시간 이상을 공부할 수 있었고, 
                                            쉬는 시간과 자습시간이 철저하게 분리되어 <br>
                                            있기 때문에 해이해지는 일 없이 꾸준한 공부를 할 수 있었습니다.</p>
                                        <dl>
                                            <dt><strong>2024 서울대학교 치의학학석사통합과정 합격</strong><br>
                                                러셀CORE 원주 윤은서</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">원하는 단과 수업을 선택하여 듣고 그 외의 시간은 바로 <br>
                                            자습관을 이용 할 수 있어 충분한 자습시간을 확보할 수 <br>
                                            있었습니다.</p>
                                        <dl>
                                            <dt><strong>2024 한양대 기계공학과 합격</strong><br>
                                                러셀CORE 창원 성재호</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_hanyang.png" alt="한양대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0250" Then '부천 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">자습관에서 공부하면서 현역 때와는 비교도 안되는 학습시간을 확보한 것이 좋았습니다. 자습관 시간표에 맞춰서 이른 시간부터 공부하는 습관을 기를 수 있어 좋았습니다.
                                        </p>
                                        <dl>
                                            <dt><strong>2024 제주대 수의예과 합격</strong><br>
                                                러셀 부천 이동규</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_jeju.png" alt="제주대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% Else %>
                                    <div class="stu-reveiw">
                                        <p class="txt">바자관에서 표준 시간표에 따라 매일 규칙적으로 <br>
                                            생활할 수 있고, 공부시간을 많이 확보할 수 있다는 점이 
                                            좋았습니다.</p>
                                        <dl>
                                            <dt><strong>2024 연세대(미래) 의예과 합격</strong><br>
                                                러셀 중계 홍수현</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% End If %>
                                </div>
                                <div class="chart-area01">
                                    <canvas id="doughnut-chart01" width="446" height="446"></canvas>
                                    <div class="chart-img"><img src="<%=Application("img_path_russel")%>/intro/2024/half/chart_bg01.png" alt="" /></div>
                                    <div class="chart-txt">
                                        <p><strong>하루 최대 <%=chart_minute%></strong><br>자습시간 확보</p>
                                        <a href="javascript:void(0)" class="bt-tt01 js-mask">표준 시간표 보기</a>
                                    </div>
                                </div>
                            </div>

                            <!-- 학습 동선 최소화 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="txt-box">
                                        <p class="stit">학습 동선<br>
                                            <strong>최소화</strong></p>
                                        <p class="stxt">이동에 낭비하는 시간이 없도록<br> 
                                            <strong>학습 동선을 최소화</strong>하여<br>
                                            학업과 수능 학습을 병행하는 <strong>반수생의 부담을 줄입니다.</strong><br>
                                            (단과 수업 - 자습 - <%=slide_txt02%> 한 건물에서 해결 가능)</p>
                                    </div>

                                    <% If sCampusCode = "CD0247" Then '강남 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">바자관에서 강의실이 정말 가까워 공부를 하다가 흐름이 크게 끊기지 않고 바로 수업에 집중할 수 있었습니다.</p>
                                        <dl>
                                            <dt><strong>2023 성균관대 약학과 합격</strong><br>
                                                러셀 강남 손성원</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sungkyunkwan.png" alt="성균관대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0245" Then '목동 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">러셀 단과는 바른공부 자습전용관의 시간표와 연동되어 
                                            있어서 이동하는 데 시간을 낭비하지 않고, 같은 건물에 <br>
                                            위치하여 불필요한 동선을 생략할 수 있었습니다.</p>
                                        <dl>
                                            <dt><strong>2024 연세대 기계공학과 합격</strong><br>
                                                러셀 목동 손정훈</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">단과 수업을 한 건물에 들을 수 있고, 바자관과 강의실의 
                                            거리가 멀지 않아 자습시간을 충분히 확보할 수 있었습니다.</p>
                                        <dl>
                                            <dt><strong>2023 고려대 경영학과 합격</strong><br>
                                                러셀 분당 김OO</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">바자관과 강의실 사이 이동 거리가 짧고 온라인 좌석 예약 시스템으로 미리 좌석을 예약해서 제가 앉고 싶은 자리에 앉을 수 있어서 좋았습니다.
                                        </p>
                                        <dl>
                                            <dt><strong>2024 고신대 의예과 합격
                                            </strong><br>
                                            러셀 센텀 배OO</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kosin.png" alt="" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0249" Then '영통 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">수능 시간표에 맞게 급식을 먹고 쉬는 시간을 가짐으로써 실제 수능장에서 조금 더 편안한 마음으로 임할 수 있었습니다.</p>
                                        <dl>
                                            <dt><strong>2023 이화여대 의예과 합격</strong><br>
                                                러셀 영통 조윤주</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_ewha.png" alt="이화여대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">바자관 자습시간에 맞추어 수업이 진행되다 보니, <br>
                                            시간 낭비 없이 공부를 할 수 있었고 강의실과 위치도 <br>
                                            가까워 이동 과정의 체력 소모도 없었습니다. </p>
                                        <dl>
                                            <dt><strong>2024 서울대 물리학과 합격</strong><br>
                                                러셀 중계 신현빈</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">단과를 수강한 뒤 같은 건물 내에서 선생님들께 질문도 <br>
                                            하고, 바로 자습관으로 갈 수 있어서 공부 시간을 더 확보
                                            할 수 있었습니다. 다른 곳으로 새지 않게 된다는 것 역시 
                                            큰 장점이라고 생각합니다.</p>
                                        <dl>
                                            <dt><strong>2024 서울대 음악학부 합격</strong><br>
                                                러셀 평촌 윤채영</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0342" Then '대구 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">한 건물에 강의실과 바자관, 식당까지 같이 있다 보니 불필요한 시간 낭비가 줄어들어 자투리 시간 확보에 유익했습니다. 또한 급식이 맛있어 항상 든든하게 먹고 공부했던 기억이 있습니다.</p>
                                        <dl>
                                            <dt><strong>2024 고려대 바이오의공학부 합격</strong><br>
                                                러셀 대구 오승현</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">아무래도 밖에 나가서 밥을 먹게 되면 이동시간, 주문하고 기다리는 시간 등이 허비되기 쉬운데 시간 낭비를 줄일 수 있었습니다. 또한 영양적으로 균형 있는 식사를 규칙적으로 할 수 있다는 것도 큰 장점이라고 생각합니다.</p>
                                        <dl>
                                            <dt><strong>2024 연세대 의예과 합격</strong><br>
                                                러셀CORE 광주 강세빈</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">강의실, 급식실, 바자관 등이 모두 한 건물 안에 있습니다. 이러한 장점 덕분에 공부의 흐름이 끊기지 않아서 효율적으로 수험생활을 보낼 수 있었습니다.</p>
                                        <dl>
                                            <dt><strong>2023 연세대(미래) 의예과 합격</strong><br>
                                                러셀CORE 대전 이승섭</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
                                    <div class="stu-reveiw mt10">
                                        <p class="txt">바른공부 자습전용관의 책상이 넓어 실전 모의고사를 <br>
                                            연습하기 좋았고, 책꽂이가 있어 많은 책을 보관할 수 있어 좋았습니다. 또한, 개방형 구조로 하루 종일 내부에서 공부해도 답답하지 않았습니다. 화장실, 급식실이 가까워서 <br>
                                            하루 중 버리는 시간을 최소화할 수 있다는 점에서 효율적으로 공부할 수 있었습니다.</p>
                                        <dl>
                                            <dt><strong>2024 카이스트 합격</strong><br>
                                                러셀CORE 원주 정혜인</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kaist.png" alt="카이스트 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0250" Then '부천 %>
                                    <div class="stu-reveiw mt10">
                                        <p class="txt">현장강의를 듣는 강의실과 자습관이 같은 건물 내에 위치했기에 시간을 낭비하지 않고 많은 공부를 할 수 있었습니다. 
                                        </p>
                                        <dl>
                                            <dt><strong>2024 고려대 철학과 합격</strong><br>
                                                러셀 부천 전찬영</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% Else %>
                                    <div class="stu-reveiw">
                                        <p class="txt">한 건물에 자습관, 식당, 강의실이 같이 있어 이동 시간에 
                                            따른 체력소모와 자습시간 확보에 있어 큰 이점을 얻을 수 있었습니다.</p>
                                        <dl>
                                            <dt><strong>2024 충남대 수의예과 합격</strong><br>
                                                러셀CORE 창원 백지훈</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chungnam.png" alt="충남대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% End If %>
                                </div>
                                <div>
                                    <% If sCampusCode = "INTRO" or sCampusCode = "CD0349" Then '인트로/울산 %>
                                    <img src="<%=Application("img_path_russel")%>/intro/2024/half/cont03_slide03.jpg" alt="" />
                                    <% Else %>
                                    <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont03_slide03.jpg" alt="" />
                                    <% End If %>

                                    <% If sCampusCode = "CD0247" Then '강남 %>
                                    <p class="r-txt mt10">강의실은 운영 상황에 따라 별관(다른건물)으로 이동할 수도 있습니다.</p>
                                    <% End If %>
                                </div>
                                
                            </div>

                            <!-- 집단적인 면학분위기 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="txt-box">
                                        <p class="stit">집단적인<br>
                                            <strong>면학분위기</strong></p>
                                        <p class="stxt"><%=slide_txt01%>이 모여 경쟁하는 바자관은 <strong>개방형 구조</strong>로<br>
                                            되어 있어 <strong>끊임없이 학습동기와 긴장감을 부여</strong>합니다.<br>
                                            <strong>학습에 최적화되어 있는 환경</strong>에서<br>
                                            온전히 학습에만 집중할 수 있습니다.</p>
                                    </div>
                                    
                                    <% If sCampusCode = "CD0247" Then '강남 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">서로 경쟁하는 분위기가 느껴지는 구조였기 때문에,<br>
                                            공부하기 싫고 지치더라도 다시 정신 차릴 수 있었던 것<br>같습니다.</p>
                                        <dl>
                                            <dt><strong>2023 연세대 기계공학부 합격</strong><br>
                                                러셀 강남 권충만</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0245" Then '목동 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">바른공부 자습전용관의 개방형 구조로 학생들끼리 <br>
                                            긍정적인 자극이 형성되었다고 생각합니다. <br>
                                            하루 종일 공부를 하다 보면 지치는 순간이 있는데 <br>
                                            그때마다 열심히 공부하는 친구들을 보면서 자극을 받고 
                                            열심히 공부하게 되었습니다.</p>
                                        <dl>
                                            <dt><strong>2024 고려대 경영학과 합격</strong><br>
                                                러셀 목동 장준혁</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">공부를 하다가 고개를 들면 모두가 열심히 공부하고 <br>
                                            있기 때문에 자연스럽게 위기감과 경쟁심이 생기면서 더 
                                            공부하게 됩니다.</p>
                                        <dl>
                                            <dt><strong>2023 고려대 행정학과 합격</strong><br>
                                                러셀 분당 박OO</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">바자관의 장점은 일단 개방형 구조와 쾌적한 환경 속 집단적인 면학분위기입니다. 공부하는 도중에 약간 집중력이 떨어질 때 주변에서 열심히 공부하는 친구들을 보며 자극을 받아 다시 공부에 집중할 수 있었습니다.
                                        </p>
                                        <dl>
                                            <dt><strong>2024 경상국립대 의예과 합격
                                            </strong><br>
                                            러셀 센텀 고OO
                                        </dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_gyeongsang.png" alt="" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0249" Then '영통 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">바자관의 가장 큰 장점은 면학분위기라고 생각합니다.<br>
                                            조용하고 열정적인 분위기 속에서 저 또한<br>
                                            열심히 공부하게 되었던 것 같습니다.</p>
                                        <dl>
                                            <dt><strong>2023 서울대 간호학과 합격</strong><br>
                                                러셀 영통 이민지</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">바자관은 개방형 구조이고, 비슷한 성적대의 학생들과 <br>
                                            같은 공간에서 공부하다 보니 집중이 풀렸을 때나 <br>
                                            이동할 일이 생겼을 때 주변의 공부하는 모습을 보고 더욱 
                                            집중해서 공부할 수 있었습니다. </p>
                                        <dl>
                                            <dt><strong>2024 덕성여대 약학과 합격</strong><br>
                                                러셀 중계 민지우</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_deokseong.png" alt="덕성여대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">힘들 때 주변 학생들을 보면서 공부 자극을 받을 수 <br>
                                            있었고, 스탠딩 책상이 있어서 공부할 때 졸리거나 몸이 <br>
                                            너무 답답할 때 일어나서 공부를 할 수 있었습니다.</p>
                                        <dl>
                                            <dt><strong>2024 고려대 생명과학부 합격</strong><br>
                                                러셀 평촌 김하늘</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0342" Then '대구 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">러셀 대구 담임선생님께서는 반 학생들을 세심하게 챙겨 <br>
                                            주시고 면학분위기 조성에도 매우 큰 도움이 되었습니다. 
                                            모의고사 이후 어수선한 분위기에서도 학습에는 방해가 
                                            되지 않도록 북돋아주셨습니다.</p>
                                        <dl>
                                            <dt><strong>2024 가톨릭대 약학과 합격</strong><br>
                                                러셀 대구 곽승현</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_catholic.png" alt="가톨릭대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">바자관의 장점은 집단적인 면학분위기와 그로 인한 학습
                                            시간 확보입니다. 열심히 공부하는 러셀의 친구들과 언니
                                            들을 보고 자극을 받아 더 치열하게 공부할 수 있었고 <br>
                                            외로움 역시 덜 수 있었습니다.</p>
                                        <dl>
                                            <dt><strong>2024 서울대 자유전공학부 합격</strong><br>
                                                러셀CORE 광주 심혜림</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">바자관에 있는 친구들 모두가 최상위권 학생들로 구성되어 공부에만 집중하는 면학분위기가 조성되어 있습니다.</p>
                                        <dl>
                                            <dt><strong>2023 서울대 의예과 합격</strong><br>
                                                러셀CORE 대전 이상후</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
                                    <div class="stu-reveiw mt10">
                                        <p class="txt">바른공부 자습전용관에서 학습하며 특히 좋았던 점은 <br>
                                            성적이 비슷한 친구들과 함께 공부할 수 있다는 점이었습니다. 공부를 하다가 집중력이 흐트러졌을 때 공부에 열중
                                            하고 있는 주변 친구들을 보며 자극을 받아 다시 공부에 <br>
                                            집중할 수 있었습니다.</p>
                                        <dl>
                                            <dt><strong>2024 연세대학교 건축공학과 합격</strong><br>
                                                러셀CORE 원주 심태엽</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">좋은 면학분위기 덕분에 포기하지 않고 집중력을<br>
                                            이어나갈 수 있었습니다. 공부할 때 집중력을 잃고<br>
                                            부정적인 생각들이 밀려올 때마다 다시 집중할 수 있도록 해준 주역이었습니다.</p>
                                        <dl>
                                            <dt><strong>2024 고려대 의예과 합격</strong><br>
                                                러셀CORE 전주 서진원</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">자습관이 개방형 구조로 되어있기 때문에, 집중이 되지 <br>
                                            않을 때 옆에서 열심히 공부하고 있는 친구들을 보며 <br>
                                            동기부여를 받을 수 있었습니다.</p>
                                        <dl>
                                            <dt><strong>2024 한양대 화학과 합격</strong><br>
                                                러셀CORE 창원 이은지</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_hanyang.png" alt="한양대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0250" Then '부천 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">자습관의 가장 큰 장점은 개방적인 구조라고 생각합니다.<br>
                                            다른 학생들이 공부하는 모습을 볼 수 있어 집단적인 면학분위기를 형성할 수 있을 뿐만 아니라 어두운 분위기의 다른 독서실과 다르게 개방감을 주어 실내에 오랜 시간 머물러도 답답하지 않아 긴 시간 공부에 집중할 수 있도록 도와줍니다.          
                                        </p>
                                        <dl>
                                            <dt><strong>2024 강원대 의예과 합격</strong><br>
                                                러셀 부천 이가은</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kangwon.png" alt="강원대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% Else %>
                                    <div class="stu-reveiw">
                                        <p class="txt">바자관의 가장 큰 장점은 집단적인 면학분위기입니다.<br>
                                            최상위권 학생들이 모여있는 공간이기에 공부를 해야하는 
                                            분위기가 형성되어 있어서 더 집중할 수 있었습니다.</p>
                                        <dl>
                                            <dt><strong>2024 서울대 전기정보공학부 합격</strong><br>
                                                러셀 강남 유상원</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% End If %>
                                </div>
                                <div style="position:relative;">
                                    <% If sCampusCode = "INTRO" OR sCampusCode = "CD0341" Then '인트로/코어대전 %>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont03_slide04.jpg" alt="" /></div>
                                    <% Else %>
                                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont03_slide04.jpg" alt="" /></div>
                                    <% End If %>
                                    <a href="javascript:void(0)" class="bt-tt02 js-mask"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_pop.png" alt="바른공부 자습전용관 시설 보기" /></a>
                                </div>
                            </div>
                            <!-- 자체 식당 운영 -->
                            <% If isCore = 1 or sCampusCode = "CD0342" or sCampusCode = "CD0349" Then '코어/대구/울산 일경우 %>
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="txt-box">
                                        <p class="stit"><strong>자체 식당</strong><br>
                                            운영</p>
                                        <p class="stxt"><strong>자체 식당 운영</strong>으로<br> 
                                            <strong>균형 잡힌 수험생 식단 유지</strong>가 가능합니다.<br>
                                            외부와의 접촉을 최소화하고,<br> 
                                            <strong>이동시간을 줄여 학습에 몰입</strong>할 수있습니다.</p>
                                    </div>
                                    <% If sCampusCode = "CD0341" Then '코어대전 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">단과 강의실과 자체 식당이 같은 건물에 있기 때문에 이동시간이 짧아 편했습니다. 특히 급식이 맛있어서 밥을 먹고 기분 좋은 상태로 다시 공부에 집중할 수 있었습니다.</p>
                                        <dl>
                                            <dt><strong>2023 조선대 치의예과 합격</strong><br>
                                                러셀CORE 대전 박지현</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_joseon.png" alt="조선대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0342" Then '대구 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">러셀 대구 자체 식당 운영으로 급식을 따뜻하게 먹을 수 <br>
                                            있었습니다. 월요일부터 토요일까지 급식이 운영되어,<br>
                                            식사 걱정 없이 학원에 다닐 수 있었습니다.</p>
                                        <dl>
                                            <dt><strong>2024 경북대 약학과 합격</strong><br>
                                                러셀 대구 이서영</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyungpook.png" alt="경북대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
                                    <div class="stu-reveiw">
                                        <p class="txt">
                                            식당, 자습관, 강의실이 모두 한 건물에
                                            위치해서 동선을 최소화할 수 있었습니다.
                                            식당에서 점심, 저녁을 먹을 수 있어서,
                                            낭비되는 시간 없이 공부에만 집중할 수 있었습니다. 
                                        </p>
                                        <dl>
                                            <dt><strong>2024 강원대학교 수의예과 합격</strong><br>
                                                러셀CORE 원주 윤지혜</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kangwon.png" alt="강원대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% Else %>
                                    <div class="stu-reveiw">
                                        <p class="txt">자체 식당이 있어 급식과 단과와 자습을 한 건물에서 <br>
                                            해결할 수 있었고, 이동시간을 줄여 효율적으로 <br>
                                            공부하는 데에 도움이 되었습니다.</p>
                                        <dl>
                                            <dt><strong>2023 연세대 국어국문과 합격</strong><br>
                                                러셀CORE 광주 김지윤</dt>
                                            <dd><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dd>
                                        </dl>
                                    </div>
                                    <% End If %>
                                </div>

                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont03_slide05.jpg" alt="" /></div>
                            </div>
                            <% End If %>
                        </div>
                    </div>

                    <% If sCampusCode = "INTRO" Then '인트로 %>
                    <p class="r-txt mt15">* 학원별 운영 방법 및 시설은 상이하며, 자세한 내용은 학원별 페이지에서 확인할 수 있습니다.</p>
                    <% End If %>
                </div>
                <!-- 바자관 시간표 -->
                <!-- #include virtual = "/intro/2024/half/baja_time_table.asp" -->
                <!-- //바자관 시간표 -->

                <!-- 바자관 시설보기 팝업 -->
                <div class="layer-pop02 layer">
                    <a href="javascript:void(0)" class="bt-close"><img src="<%=Application("img_path_russel")%>/intro/2024/half/bt_close.png" alt="닫기"></a>
                    <div class="layer-wrap">
                        <% If sCampusCode = "CD0247" or sCampusCode = "CD0001" or sCampusCode = "CD0245" or sCampusCode = "CD0250" or sCampusCode = "CD0244" or sCampusCode = "CD0257" or sCampusCode = "CD0349" or sCampusCode = "CD0344" or sCampusCode = "CD0345" Then '강남/대치/목동/부천/분당/중계/울산/코어전주/코어창원 %>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont03_slide04_pop.jpg" alt="" />
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/intro/2024/half/cont03_slide04_pop.jpg" alt="" />
                        <% End If %>
                    </div>

                    <% If sCampusCode = "INTRO" Then '인트로 %>
                    <p class="txt">* 학원별로 시설은 상이할 수 있습니다.</p>
                    <% End If %>
                </div>
                <!-- //레이어팝업 -->
            </div>
        </div>
    </div>

    <div class="cont04">
        <div class="inner">
            <% If sCampusCode = "CD0257" Then '중계 %>
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont04_tit.png" alt="입시 전문 담임선생님의 학생 맞춤 관리" /></h3>
            <% Else %>
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont04_tit.png" alt="최상위권 전문 입시 담임선생님의 학생 맞춤 관리" /></h3>
            <% End If %>

            <% If sCampusCode = "CD0247" OR sCampusCode = "CD0250" Then '강남/부천 %>
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont04_img.jpg" alt="" /></p>
            <% Else %>
            <p><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont04_img.jpg" alt="" /></p>
            <% End If %>

            <% If sCampusCode = "INTRO" OR sCampusCode = "CD0244" OR sCampusCode = "CD0349" Then '인트로/분당/울산 %>
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
            <% ElseIf sCampusCode = "CD0245" OR sCampusCode = "CD0249" OR sCampusCode = "CD0250" OR sCampusCode = "CD0343" Then '목동/영통/부천/코어원주 %>
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
            <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
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
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont04_slide09.jpg" alt="" /></li>
                </ul>
            </div>
            <% Else %>
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
            <% End If %>
            

            <!-- 후기영역 -->
            <% If sCampusCode = "CD0247" Then '강남 %>
            <div class="b-review">
                <div>
                    <div class="txt">담임선생님이 바자관 앞에 상주하시기 때문에, 고민이 있거나 궁금한 것이 생기면 바로바로 상담하고 피드백을 받을 수 있어서 정말 좋았습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dt>
                        <dd><strong>2023 연세대 기계공학부 합격</strong><br>
                            러셀 강남 권충만</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">아침 출결 체크와 그에 따른 담임선생님의 지속적인 관리는<br>
                        저에게 꼭 필요했던 것이었고, 이를 통해 아침부터 공부 계획을 짜며<br>
                        효율적인 하루를 보내게 해주었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_wooseok.png" alt="우석대 로고" /></dt>
                        <dd><strong>2023 우석대 한의예과 합격</strong><br>
                            러셀 강남 이노아</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0245" Then '목동 %>
            <div class="b-review">
                <div>
                    <div class="txt">수험생활을 하다 보면 불안하고 지칠 수밖에 없는데 그런 시기에 담임선생님의 <br>
                        조언을 들으면서 극복할 수 있었습니다. 담임선생님께서 일대일로 상담을 하면서 
                        각자에게 맞는 방식으로 슬럼프를 극복하는 방법을 추천해 주셔서 <br>
                        도움이 많이 되었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dt>
                        <dd><strong>2024 고려대 국어교육과 합격</strong><br>
                            러셀 목동 윤지효</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">입시와 관련하여 혼자서는 다양한 정보를 얻기 어려웠는데 입시 전문가인 <br>
                        담임선생님과의 상담을 통해 신뢰성 있는 정보와 학습에 관한 정보를 얻을 수 <br>
                        있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_hanyang.png" alt="한양대 로고" /></dt>
                        <dd><strong>2024 한양대 의예과 합격</strong><br>
                            러셀 목동 한유진</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <div class="b-review">
                <div>
                    <div class="txt">담임선생님과 필요할 때마다 상담을 하며 크고 작은 고민들을 해결했고, 슬럼프에 
                        빠져 위험한 시간을 극복하는 데 도움이 되었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_ulsan.png" alt="울산대 로고" /></dt>
                        <dd><strong>2023 울산대 의예과 합격</strong><br>
                            러셀 분당 박OO</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">상담이 필요할 때에도 공부에 지장이 없게끔 핵심적인 부분 위주로 상담을 <br>
                        진행하여 저를 정말 배려해주신다는 느낌을 받았습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_hanyang.png" alt="한양대 로고" /></dt>
                        <dd><strong>2023 한양대 의예과 합격</strong><br>
                            러셀 분당 이OO</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
            <div class="b-review">
                <div>
                    <div class="txt">담임선생님과 오랫동안 함께 해서 그런지 저를 잘 알고 계셔서 좋았습니다. 상담할 때도 항상 친절하고 편하게 해 주셨는데, 특히 수시 원서 접수를 위해 상담을 할 때 불안한 마음에 거의 매일매일 상담을 했었는데, 항상 격려해 주시고 응원해 주셔서 감사했습니다.
                    </div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="" /></dt>
                        <dd><strong>2024 서울대 경제학부 합격
                        </strong><br>
                            러셀 센텀 이OO</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">담임선생님이 가장 기억에 남습니다. 정말 친절하시고 학생 하나하나에 굉장한 관심을 가지고 계시고 그 관심을 바탕으로 진행하는 상담에서 제 입시에 도움이 되는 맞춤형 정보들을 얻을 수 있었습니다. 

                    </div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_gyeongsang.png" alt="" /></dt>
                        <dd><strong>2024 경상국립대 약학부 합격</strong><br>
                            러셀 센텀 정OO</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0249" Then '영통 %>
            <div class="b-review">
                <div>
                    <div class="txt">면학분위기를 잘 조성해 주셨고, 멘탈 관리에 있어서도 적극적인 지지와 응원을<br>
                        보내 주신 덕분에 흔들리지 않을 수 있었습니다.</div>
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
                        좋았고, 또 제 수준이나 상황에 맞춰 상담하고 관리해 주신다는 느낌이 <br>들어 좋았습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dt>
                        <dd><strong>2023 서울대 의예과 합격</strong><br>
                            러셀 중계 노현지</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">담임선생님은 혼자라는 기분이 들지 않도록 항상 옆에 있어주셨습니다. <br>
                        수험생활이 혼자하는 싸움이라는 생각이 들 때, 담임선생님의 존재는 1년이라는 <br>
                        시간을 버티는 든든한 지원군이었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dt>
                        <dd><strong>2022 고려대 행정학과 합격</strong><br>
                            러셀 중계 이은상</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
            <div class="b-review">
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
                <div>
                    <div class="txt">선생님과 상담을 하면서 속을 전부 털어놓았습니다. 이것이 저에게 가장 큰 도움이 
                        되었나 싶습니다. 저조한 성적에 저조차도 저를 믿지 못하고 있을 때, 담임선생님의 
                        진심 어린 조언과 위로가 큰 힘이 되었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dt>
                        <dd><strong>2024 서울대 인문계열 합격</strong><br>
                            러셀 평촌 왕휘웅</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0342" Then '대구 %>
            <div class="b-review">
                <div>
                    <div class="txt">러셀 대구의 가장 큰 장점은 바자관 바로 앞 담임 부스에 담임선생님이 상주하고 <br>
                        계셔서 언제든 입시 고민과 정보들에 대해서 담임선생님과 이야기를 나눌 수 <br>
                        있다는 점입니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyungpook.png" alt="경북대 로고" /></dt>
                        <dd><strong>2024 경북대 치의예과 합격</strong><br>
                            러셀 대구 정은채</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">원서 접수 기간에 많이 막막했는데, 러셀 대구 입시 전문 담임선생님께서 <br>
                        생기부 내용과 성적에 맞춰 여러 학과와 전형을 정리해 주시고, 지원 전략과 <br>
                        관련해서 상담도 자세하게 해 주셔서 많은 도움이 됐습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyungpook.png" alt="경북대 로고" /></dt>
                        <dd><strong>2024 경북대 약학과 합격</strong><br>
                            러셀 대구 이서영</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
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
            <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
            <div class="b-review">
                <div>
                    <div class="txt">담임선생님과 수시로 상담하며 멘탈 케어를 할 수 있었고, 담임선생님의<br>
                        철저한 관리로 수험생활 내내 규칙적인 학습패턴을 유지할 수 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_eulji.png" alt="을지대 로고" /></dt>
                        <dd><strong>2023 을지대 의예과 합격</strong><br>
                            러셀CORE 대전 김우찬</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">담임선생님께서 매주 플래너 검사를 해주셔서 올바른 공부 습관이 잡혔고,<br>
                        체계적으로 공부할 수 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dt>
                        <dd><strong>2023 서울대 자유전공학부</strong><br>
                            러셀CORE 대전 김해솔</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
            <div class="b-review">
                <div>
                    <div class="txt">러셀 실전 콘텐츠 (다양한 모의고사)가 큰 도움이 되었습니다. 모의고사를 통해 <br>
                        공부 방향을 정할 수 있었습니다. 특히 수능 실전 환경에 적응할 수 있었고, <br>
                        부족한 점을 발견하고 보완하는데 모의고사가 큰 도움이 되었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dt>
                        <dd><strong>2024 서울대학교 물리천문학부 합격</strong><br>
                            러셀CORE 원주 이민성</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">입시 전문 담임선생님과의 1:1 상담을 통해 최신 입시 정보를 빠르게 얻을 수 있어, 
                        시간이 부족한 수험생 입장에서 많은 도움이 되었습니다. 정확한 데이터를 기반<br>
                        으로 자세하고 심도 있게 상담을 해주셔서 수시 카드를 쓸 때에 정말 좋았습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dt>
                        <dd><strong>2024 연세대학교(미래) 의예과 합격</strong><br>
                            러셀CORE 원주 박성환</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
            <div class="b-review">
                <div>
                    <div class="txt">담임선생님이 부족한 과목에 대한 학습법이나 입시에 대한 전문지식을 바탕으로 <br>
                        컨설팅해 주셔서 순수히 공부에만 집중할 수 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_hanyang.png" alt="한양대 로고" /></dt>
                        <dd><strong>2024 한양대 기계과 합격</strong><br>
                            러셀CORE 창원 성재호</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">학원 내 담임선생님들의 지속적인 순찰 및 면학분위기 조성을 통해 친목 행위로 <br>
                        면학분위기가 저해되지 않아서 좋았습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_ewha.png" alt="이화여대 로고" /></dt>
                        <dd><strong>2024 이화여대 인문 통합 계열 합격</strong><br>
                            러셀CORE 창원 김가영</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <div class="b-review">
                <div>
                    <div class="txt">담임선생님이 계셨기에 공부에만 더 전념할 수 있었습니다.<br>
                    
                        학습에 대한 고민거리와 불안감이 생길때마다 담임선생님께서 상담과 격려를 통해 고민거리와 불안감을 해결해주셨고 수시, 수능 원서 접수나 자습관 재등록, 시험 일정 등과 같이 공부 외적으로 신경써야 할 부분에 있어서도 항상 관심가지고 챙겨주셨기에 공부에만 집중할 수 있었습니다. 
                    </div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dt>
                        <dd><strong>2024 고려대 철학과 합격</strong><br>
                            러셀 부천 전찬영</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">담임선생님께서 학습 플래너를 지속적으로 검사해주셔서 계획을 잘 지킬 수 있었습니다. 또한 학습 방향에 대해서도 좋은 조언을 해주셔서 실제로 제 성적상승에 정말 많은 기여를 하셨다고 생각합니다.
                        
                    </div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_konkuk.png" alt="건국대 로고" /></dt>
                        <dd><strong>2024 건국대 수의예과 합격</strong><br>
                            러셀 부천 김희원</dd>
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

    <div class="cont05">
        <div class="inner">
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont05_tit.png" alt="메가스터디 온&middot;오프 수능 전문 강사진의 최상위권 수준별 맞춤 단과" /></h3>

            <ul class="danka-list">
                <li>
                    <p>과목별/수준별/진도별<br>
                        <strong>전략적인 수업 선택</strong>
                    </p>
                </li>
                
                <li>
                    <p>내게 필요한 수업 선택으로<br>
                        <strong>충분한 자습시간 확보</strong>
                    </p>
                </li>
                <li>
                    <p><%=danka_txt01%></p>
                </li>
                <li>
                    <p><%=danka_txt02%></p>
                </li>
            </ul>

            <!-- 선생님 롤링 슬라이드 -->
            <!--#include virtual="/intro/2024/half/teacher_slide.asp" -->
            <!-- //선생님 롤링 슬라이드 -->

            <!-- 단과 특강 -->
            <div class="danka-wrap">
                <div class="danka-btn">
                    <span>매월</span>
                    <p class="txt">오직 N수생을 위한<br>
                        집중 관리형 평일 오전/오후 단과</p>
                    <p class="stit"><%=am_txt%></p>
                    <a href="<%=am_url%>">바로가기</a>
                </div>
                <div class="danka-btn">
                    <span>매월</span>
                    <p class="txt">개념부터 실전까지<br>
                        빈틈없는 커리큘럼으로 수능 실력 완성</p>
                    <p class="stit"><%=regular_txt%></p>
                    <a href="<%=regular_url%>">바로가기</a>
                </div>
            </div>
            <!-- //단과 특강 -->

            <!-- 후기영역 -->
            <% If sCampusCode = "CD0247" Then '강남 %>
            <div class="b-review">
                <div>
                    <div class="txt">러셀 단과가 좋은 점은 선택지가 여럿 있다는 점입니다.<br>
                        A강의를 듣다가 조금 더 어려운 문제들을 풀어보고 싶어서 B강의를 <br>
                        듣기도 했습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_hanyang.png" alt="한양대 로고" /></dt>
                        <dd><strong>2023 한양대 약학과 합격</strong><br>
                            러셀 강남 김상훈</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">학습에 도움이 되는 풍부한 학습자료를 제공해 주시고 질문을 해도 바로 잘 답변을 해 주셔서 많은 도움이 되었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_daeguhanuidae.png" alt="대구한의대 로고" /></dt>
                        <dd><strong>2024 대구한의대 한의예과 합격</strong><br>
                            러셀 강남 김하린</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0245" Then '목동 %>
            <div class="b-review">
                <div>
                    <div class="txt">러셀은 자신이 원하는 단과만 신청할 수 있다는 점이 좋은 거 같습니다. 
                        선택적으로 필요한 단과만 수강할 수 있어서 자습시간을 많이 확보할 수 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dt>
                        <dd><strong>2024 연세대 융합인문사회학과 합격</strong><br>
                            러셀 목동 김은재</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">원하는 과목만 이동 시간 낭비 없이 들을 수 있어서 좋았습니다. <br>
                        개념 수업부터 심화, 실전 수업까지 커리큘럼이 탄탄하게 1년간 진행되어서 <br>
                        좋았습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sookmyng.png" alt="숙명여대 로고" /></dt>
                        <dd><strong>2024 숙명여대 약학부 합격</strong><br>
                            러셀 목동 이예은</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <div class="b-review">
                <div>
                    <div class="txt">러셀 분당 단과에서 훌륭한 선생님을 많이 만날 수 있어서 좋았습니다. <br>
                        경제 수업을 들었는데, 다양한 콘텐츠를 제공해주시고 학생에게 관심을 가져주셔서 감사했습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dt>
                        <dd><strong>2023 연세대 경영학과 합격</strong><br>
                            러셀 분당 이OO</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">인강으로만 듣던 수업을 현장강의로 들었는데, 인강에서는 느낄 수 없던 현장감을 
                        느낄 수 있어서 좋았고 수업에 온전히 집중할 수 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dt>
                        <dd><strong>2023 고려대 경영학과 합격</strong><br>
                            러셀 분당 김OO</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
            <div class="b-review">
                <div>
                    <div class="txt">러셀 현장강의에서 검증된 선생님들의 수업을  들으니 직접 만드신 모의고사와 과제들이 정말 좋았고, 시기마다 해야 하는 것들로 수업을 구성해 주셔서 좋았습니다.
                    </div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_inje.png" alt="" /></dt>
                        <dd><strong>2024 인제대 의예과 합격
                        </strong><br>
                        러셀 센텀 김OO
                    </dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">선생님들을 직접 현장에서 만나 수업을 들으니 시험 출제 경향이 바뀌면 바로바로 반영해서 수업해 주셔서 모의고사들과 수능 대비에 도움이 많이 되었습니다.

                    </div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_inje.png" alt="" /></dt>
                        <dd><strong>2024 인제대 의예과 합격</strong><br>
                        러셀 센텀 임OO</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0249" Then '영통 %>
            <div class="b-review">
                <div>
                    <div class="txt">선생님들의 체계적인 수업과 조교 선생님들의 질의응답이 만족스러웠습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sungkyunkwan.png" alt="성균관대 로고" /></dt>
                        <dd><strong>2023 성균관대 경영학과 합격</strong><br>
                            러셀 영통 이현은</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">수강해야 하는 강좌가 정해져 있는 다른 학원과는 달리, 러셀은 꼭 필요한 단과만을 선택해서 효율적으로 약점을 보충할 수 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sungkyunkwan.png" alt="성균관대 로고" /></dt>
                        <dd><strong>2023 성균관대 한문학과 합격</strong><br>
                            러셀 영통 장혜지</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
            <div class="b-review">
                <div>
                    <div class="txt">학생 수준에 맞춰 다양한 선생님의 수업을 선택할 수 있는 점이 장점입니다. <br>
                        선생님의 수업 내용을 반복적으로 복습하면서 성적을 향상 할 수 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dt>
                        <dd><strong>2024 서울대 물리학과 합격</strong><br>
                            러셀 중계 신현빈</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">현장강의를 들을 수 있어서 좋았습니다. 현강생들을 위해 매주 주어지는 <br>
                        풍부한 양의 자료와 선생님, 조교님의 학업 상담 등 인강으로는 채워지지 않는 <br>
                        부분이 수험생활에 있어서 큰 도움이 되었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyunghee.png" alt="경희대 로고" /></dt>
                        <dd><strong>2022 경희대 정치외교학과 합격</strong><br>
                            러셀 중계 김채연</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
            <div class="b-review">
                <div>
                    <div class="txt">수업 시간에 매주 양질의 모의고사를 풀며 부족한 부분을 파악하고, <br>
                        시험에서 마주할 수 있는 다양한 경험을 겪어보며 시험 운용 능력을 키울 수 <br>
                        있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dt>
                        <dd><strong>2024 고려대 사회학과 합격</strong><br>
                            러셀 평촌 김윤하</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">검증된 선생님을 실시간, 현장에서 만날 수 있는 것이 장점입니다. 인강에서 얻지 <br>
                        못하는 풍부한 자료를 얻을 수 있어서 좋았습니다. 타 재종과 달리 필요한 수업만을 
                        선택하여 들을 수 있던 것도 장점이라고 생각합니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dt>
                        <dd><strong>2024 연세대 행정학과 합격</strong><br>
                            러셀 평촌 윤상경</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0342" Then '대구 %>
            <div class="b-review">
                <div>
                    <div class="txt">검증된 강의를 들을 수 있는 인강의 장점과, 학습관리가 가능한 현강의 장점을 <br>
                        합친 것이 대치동 LIVE 수업이라고 생각합니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyungpook.png" alt="경북대 로고" /></dt>
                        <dd><strong>2024 경북대 약학과 합격</strong><br>
                            러셀 대구 이서영</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">서울에서만 볼 수 있는 선생님들을 직접 현장에서 만나 수업을 들을 수 있다는 것이 
                        좋았습니다. 또한 공부 관련 상담을 받을 때 아닌 건 아니라고 피드백해 주셔서 <br>
                        제 실력에 대한 객관화에 도움이 되었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dt>
                        <dd><strong>2024 고려대 바이오의공학부 합격</strong><br>
                            러셀 대구 오승현</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
            <div class="b-review">
                <div>
                    <div class="txt">러셀코어에 다니기 이전에 현장강의를 들은 경험이 있습니다. <br>
                        수업에서 나누어 주는 자료도 현장강의와 동일하며, 수업 몰입도에서도 <br>
                        충분히 현장강의와 같은 효과를 누릴 수 있다고 저는 확신합니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dt>
                        <dd><strong>2024 고려대 경영학과 합격</strong><br>
                            러셀CORE 광주 김형준</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">라이브 수업의 장점은 공부하고 있던 건물에서 바로 수업을 들을 수 <br>
                        있다는 점입니다. 수업에는 따로 조교 선생님들이 계셔서 질문이나 상담을 <br>
                        할 수 있었는데 이 점이 가장 만족스러웠습니다.</div>
                    <dl>
                        <dt><img style="width:35px;" src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_joseon.png" alt="조선대 로고" /></dt>
                        <dd><strong>2024 조선대 의예과 합격</strong><br>
                            러셀CORE 광주 김나연</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
            <div class="b-review">
                <div>
                    <div class="txt">대치동 현강 자료를 그대로 받아 볼 수 있다는 것이 큰 장점입니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chungnam.png" alt="충남대 로고" /></dt>
                        <dd><strong>2023 충남대 의예과 합격</strong><br>
                            러셀CORE 대전 박보근</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">대치동 유명 선생님들의 현장강의를 대전에서 실시간으로 현장감있게 듣는다는 점이 굉장히 좋았습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dt>
                        <dd><strong>2023 연세대(미래) 의예과 합격</strong><br>
                            러셀CORE 대전 이승섭</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
            <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
            <div class="b-review">
                <div>
                    <div class="txt">서울에 가지 않아도 대치동 LIVE 수업과 콘텐츠를 동일하게 이용할 수 있다는 점이 마음에 들었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chungnam.png" alt="충남대 로고" /></dt>
                        <dd><strong>2024 충남대 수의예과 합격</strong><br>
                            러셀CORE 창원 백지훈</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">대치에서 진행하는 수업을 실시간으로 수강할 수 있어 인강으로 채울 수 없는 부분에서 많은 도움을 받았습니다. </div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_ewha.png" alt="이화여대 로고" /></dt>
                        <dd><strong>2024 이화여대 커뮤니케이션 미디어 학부 합격 </strong><br>
                            러셀 CORE 창원 유승연</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <div class="b-review">
                <div>
                    <div class="txt">러셀 현장강의는 효과적으로 수업을 수강할 수 있다는 점이 가장 매력적이었습니다. 현장강의를 듣는 강의실과 자습관이 같은 건물 내에 위치했기에 시간을 낭비하지 않고 많은 공부를 할 수 있었습니다.<br>
                    
                        또한 여러 러셀학원에 출강하는 선생님들의 강의뿐만 아니라 메가스터디 인강을 촬영하시는 선생님들의 강의도 직접 들을 수 있었기에 더 인상깊었던 것 같습니다.
                    </div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dt>
                        <dd><strong>2024 고려대 철학과 합격</strong><br>
                            러셀 부천 전찬영</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">러셀 현장강의를 통해 현역 때는 몰랐던 스킬들을 많이 알 수 있었고,
                        아낌없이 많은 자료들을 공유해주셔서 수능 전까지 다양한 유형의 문제들을 경험해 볼 수 있었습니다. 이외에도 쉬는 시간까지 쪼개면서 질문을 받아주셔서 매주 과제를 통해 정리한 모르는 문제들을 해결하고 복습하는 시간을 가질 수 있었습니다.
                    </div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kangwon.png" alt="강원대 로고" /></dt>
                        <dd><strong>2024 강원대 의예과 합격</strong><br>
                            러셀 부천 이가은</dd>
                    </dl>
                </div>
            </div>
            <% Else %>
            <div class="b-review">
                <div>
                    <div class="txt">러셀 현장강의는 검증된 선생님의 수업을 직접 들을 수 있다 보니 집중도와<br> 
                        이해도가 훨씬 높았습니다. 또한 풍부한 수업자료를 제공해 주셔서 혼자 복습을 <br>
                        하는 데에도 큰 도움이 되었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dt>
                        <dd><strong>2024 서울대 수학교육과 합격</strong><br>
                            러셀 분당 오인경</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">서울에서만 볼 수 있는 선생님들을 직접 현장에서 만나 수업을 들을 수 있다는 것이 
                        좋았습니다. 또한 공부 관련 상담을 받을 때 아닌 건 아니라고 피드백해 주셔서 <br>
                        제 실력에 대한 객관화에 도움이 되었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dt>
                        <dd><strong>2024 고려대 바이오의공학부 합격</strong><br>
                            러셀 대구 오승현</dd>
                    </dl>
                </div>
            </div>
            <% End If %>
        </div>
    </div>
    
    <div class="cont06">
        <div class="inner">
            <% If sCampusCode = "CD0257" Then '중계 %>
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont06_tit.png" alt="반수생에게 반드시 필요한 러셀 실전 학습 콘텐츠" /></h3>
            <% Else %>
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_tit.png" alt="반수생에게 반드시 필요한 러셀 실전 학습 콘텐츠" /></h3>
            <% End If %>

            <div class="swiper-container program-slide">
                <ul class="swiper-wrapper">
                    <!-- QUEL 모의고사 -->
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide01.png" alt="QUEL 모의고사"></li>

                    <% If sCampusCode <> "CD0250" Then '부천 제외 %>
                    <!-- E-QUEL 모의고사 -->
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide02.png" alt="E-QUEL 모의고사"></li>
                    <% End If %>

                    <% If sCampusCode = "INTRO" OR sCampusCode = "CD0248" OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" OR sCampusCode = "CD0340" OR sCampusCode = "CD0341" Then '인트로/평촌/대구/울산/코어광주/코어대전 %>
                    <!-- QUEL : UNIT -->
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide03.png" alt="QUEL : UNIT"></li>
                    <% End If %>

                    <% If sCampusCode = "CD0248" Then '평촌 %>
                    <!-- 러셀CORE Weekly 모의고사 -->
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide05_2.png" alt="러셀CORE Weekly 모의고사"></li>
                    <% End If %>
                    
                    <!-- 메가X대성 더 프리미엄 모의고사 -->
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide04.png" alt="메가X대성 더 프리미엄 모의고사"></li>
                    
                    <% If isCore = 1 OR sCampusCode = "INTRO" OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" Then '코어/인트로/대구/울산 일경우 %>
                    <!-- 러셀CORE Weekly 모의고사 -->
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide05.png" alt="러셀CORE Weekly 모의고사"></li>
                    <% End If %>
                    
                    <!-- 월간 학습지 (월간 장영진) -->
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide06.png" alt="월간 학습지 (월간 장영진)"></li>

                    <% If sCampusCode = "CD0250" Then '부천 %>
                    <!-- 러셀CORE Weekly 모의고사 -->
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont06_slide05.png" alt="러셀CORE Weekly 모의고사"></li>
                    <% End If %>

                    <% If sCampusCode = "CD0245" Then '목동 %>
                    <!-- 장영진 식스팩(6PACK) -->
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide12.png" alt="장영진 식스팩(6PACK)"></li>
                    <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                    <!-- 내용다름 -->
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide11.png" alt="장영진 식스팩(6PACK)"></li>
                    <% ElseIf sCampusCode = "CD0250" Then '부천 %>
                    <!-- 내용다름 -->
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide13.png" alt="장영진 식스팩(6PACK)"></li>
                    <% End If %>
                    
                    <!-- 러셀 학습 플래너 -->
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide07.png" alt="러셀 학습 플래너"></li>

                    <!-- 일일수학 30제 -->
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide08.png" alt="일일수학 30제"></li>

                    <!-- 러셀 총평노트 -->
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont06_slide09.png" alt="러셀 총평노트"></li>

                    <% If sCampusCode = "CD0244" Then '분당 %>
                    <!-- 러셀 분당 재원생 전용 주간지 -->
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/russel_bundang/2024/half/cont06_slide10.png" alt="러셀 분당 재원생 전용 주간지"></li>
                    <% End If %>
                </ul>
                <div class="swiper-pagination type01"></div>
            </div>

            <div class="mt80">
                <% If sCampusCode = "INTRO" OR sCampusCode = "CD0349" OR sCampusCode ="CD0340" OR sCampusCode ="CD0341" Then '인트로/울산/코어광주/코어대전 일경우 %>
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
                            <% If sCampusCode = "CD0349" OR sCampusCode = "CD0340" Then '울산/코어광주 %>
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
                            <td class="bg-06">7월호 </td>
                            <td class="bg-06">8월호</td>
                            <td class="bg-06">9월호</td> 
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
                <% ElseIf sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" Then '코어원주/코어전주/코어창원/코어청주 %>
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
                            <% If sCampusCode = "CD0343" OR sCampusCode = "CD0345" OR sCampusCode = "CD0249" Then '코어원주/코어창원 %>
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
                <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
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
                            <td></td>
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
                            <th colspan="2">6PACK 모의고사</th>
                            <td class="bg-08">시즌1</td>
                            <td class="bg-08">시즌1</td>
                            <td class="bg-08">시즌2</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
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
                        <tr>
                            <th colspan="2">평가원 모의고사</th>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td class="bg-07">6평</td>
                            <td></td>
                            <td></td>
                            <td class="bg-07">9평</td>
                            <td></td>
                            <td></td>
                        </tr>
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
                <% ElseIf sCampusCode = "CD0245" Then '목동 %>
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
                            <td class="bg-04">9/27(금)</td>
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
                        <tr>
                            <th colspan="2">장영진 식스팩<br>
                            (6PACK)</th>
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
                    </tbody>
                </table>
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
                            <% If sCampusCode = "CD0001" OR sCampusCode = "CD0244" OR sCampusCode = "CD0249" Then '대치/분당/영통 %>
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
                <% End If %>
                <p class="r-txt mt15">* 상기 일정은 평가원 시행 계획 및 학원별 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
            </div>

            <!-- 후기영역 -->
            <% If sCampusCode = "CD0247" Then '강남 %>
            <div class="b-review p1">
                <div>
                    <div class="txt">퀄 모의고사와 더프 모의고사가 가장 저에게 도움이 되었습니다. 기출문제를 위주로 학습하던 저에게 퀄 모의고사와 더프 모의고사는<br>
                        그동안 제가 놓치고 있던 유형의 문제들을 다시 점검하게 해주었고, 흔치 않은 유형이면서 기초 개념과 연관되어 나오는 양질의 문제를 접하게 해준 점이 마음에 들었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_wooseok.png" alt="우석대 로고" /></dt>
                        <dd><strong>2023 우석대 한의예과 합격</strong><br>
                            러셀 강남 이노아</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0245" Then '목동 %>
            <div class="b-review">
                <div>
                    <div class="txt">매월 응시하는 모의고사는 많은 학생들이 응시할 뿐만 아니라 난이도와 <br>
                        문제 스타일 또한 평가원과 굉장히 유사하여 수능 감각을 익히는데 큰 도움이 <br>
                        되었습니다. 모의고사 후 성적을 확인함으로써 수험 기간 동안 긴장감을 유지할 수 
                        있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="연세대 로고" /></dt>
                        <dd><strong>2024 고려대 경영학과 합격</strong><br>
                            러셀 목동 장준혁</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">파이널 기간 동안 진행했던  QUEL 모의고사가 큰 도움이 되었습니다. <br>
                        QUEL 모의고사를 통해 전 과목을 실제 수능 시간에 맞춰 풀면서 실전 경험에 대한 
                        부족함을 해소할 수 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dt>
                        <dd><strong>2024 연세대 원주의과대학 합격</strong><br>
                            러셀 목동 윤서환</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <div class="b-review">
                <div>
                    <div class="txt">파이널 기간에 진행한 퀄모의고사를 통해 전과목을 실제 수능 시간에 맞춰 풀면서 
                        실전 경험에 대한 부족함을 해소할 수 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dt>
                        <dd><strong>2024 고려대 의과대학 합격</strong><br>
                            러셀 분당 이OO</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">모의고사를 통한 성적으로 담임선생님과 상담하며, 함께  달려주시는 분이 <br>
                        있다는 점을 느낄 수 있고 나에게 맞는 효율적 공부를 할 수 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_gacheon.png" alt="가천대 로고" /></dt>
                        <dd><strong>2023 가천대 한의예과 합격</strong><br>
                            러셀 분당 김OO</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
            <div class="b-review">
                <div>
                    <div class="txt">러셀에서 지속적으로 퀄 모의고사나 메대프 모의고사와 같은 사설 모의고사 컨텐츠를 제공해 주어 양질의 퀄리티로 출제된 문제와 난이도로 실전과 유사한 분위기에서 실모 연습을 할 수 있는 것이 큰 도움이 되었습니다.
                    </div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kosin.png" alt="" /></dt>
                        <dd><strong>2024 고신대 의예과 합격
                        </strong><br>
                        러셀 센텀 홍OO
                    </dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">메가X대성 더 프리미엄 모의고사가 매달 집체 모의고사 형태로 운영되어 평가원 모의평가 등 수능과 동일한 시간으로 시험을 응시하여 수능 시간에 맞추어 목표 성적을 받는 것을 연습할 수 있어 좋았습니다.
                    </div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_donga.png" alt="" /></dt>
                        <dd><strong>2024 동아대 의예과 합격
                        </strong><br>
                        러셀 센텀 권OO
                    </dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0249" Then '영통 %>
            <div class="b-review">
                <div>
                    <div class="txt">러셀학원에서 자료를 많이 제공해 줘서 좋았습니다. 모의고사의 퀄리티가 굉장히 좋고 해설까지 잘 쓰여 있어서 수능 대비에 많은 도움이 되었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></dt>
                        <dd><strong>2023 고려대(안암) 화학과 합격</strong><br>
                            러셀 영통 신승민</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">전국 단위 사설 모의고사인 메대프 모의고사와 퀄리티가 보증된 QUEL 모의고사를 응시할 수 있다는 점과 담임선생님들의 적극적인 입시 정보 제공 등 다양한 메리트들이 러셀에서 재수생활을 이어 나가겠다는 마음을 먹게 되었습니다.</div>
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
            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
            <div class="b-review">
                <div>
                    <div class="txt">매달 실시했던 메대프 모의고사가 큰 도움이 되었습니다. <br>
                        전 영역을 응시하기 때문에 수능날 발생할 수 있는 돌발 상황에 대처하는 연습을 <br>
                        할 수 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chonbuk.png" alt="전북대 로고" /></dt>
                        <dd><strong>2024 전북대 의예과 합격</strong><br>
                            러셀 평촌 홍지우</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">QUEL 모의고사, 장영진 모의고사, 월간 장연진, 플래너 제공 등 <br>
                        다양한 학생 지원 시스템이 구축되어 있어 본인이 의지가 있다면 공부에 활용할 수 
                        있는 자원들이 많은 느낌이었습니다. </div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></dt>
                        <dd><strong>2024 서울대 인문계열 합격</strong><br>
                            러셀 평촌 왕휘웅</dd>
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
            <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
            <div class="b-review">
                <div>
                    <div class="txt">공부하던 공간에서 응시할 수 있다는 점에서 이동을 최소화 시켜주며 또 실전 같은 
                        분위기에서 시험을 응시할 수 있어 수능의 감을 놓지 않을 수 있었습니다.<br>
                        매달 시행되다 보니 저의 부족한 점을 파악하고 새로 습득한 문제풀이법을 <br>
                        실전에서 연습해 볼 수 있어서 좋았습니다.</div>
                    <dl>
                        <dt><img style="width:35px;" src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_joseon.png" alt="조선대 로고" /></dt>
                        <dd><strong>2024 조선대 의예과 합격</strong><br>
                            러셀CORE 광주 김세준</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">혼자서 모의고사를 보면 현장감이 떨어져서 긴장이 되지 않는데 매달마다 학원생들 
                        전체가 모의고사를 응시하여 현장감을 느낄 수 있었습니다. 함께 본 모의고사 <br>
                        덕분에 실제 수능 날에는 긴장하지 않고 시험에 응시할 수 있었습니다.</div>
                    <dl>
                        <dt><img style="width:35px;" src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_joseon.png" alt="조선대 로고" /></dt>
                        <dd><strong>2024 조선대 의예과 합격</strong><br>
                            러셀CORE 광주 김시영</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
            <div class="b-review">
                <div>
                    <div class="txt">수험장과 유사한 환경에서 응시한 집체 모의고사 덕분에 수능날 발생할 수 있는 일을 시뮬레이션하고 루틴도 미리 테스트할 수 있어 좋았습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></dt>
                        <dd><strong>2023 연세대(서울) 의예과 합격</strong><br>
                            러셀CORE 대전 조한혁</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">매 달 실시하는 다양한 집체 모의고사를 통해 꾸준히 학습 성취도를 점검하고 전국 단위의 수험생들 사이에서 내 위치를 파악 할 수 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chungbuk.png" alt="충북대 로고" /></dt>
                        <dd><strong>2023 충북대 의예과 합격</strong><br>
                            러셀CORE 대전 김경호</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
            <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
            <div class="b-review">
                <div>
                    <div class="txt">실전과 같은 분위기에서 모의고사를 볼 수 있는 기회가 많지 않은데, 러셀은 <br>
                        위클리, 메대프, 퀄 모의고사 등으로 매주 수능과 같이 대비할 수 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_donga.png" alt="동아대 로고" /></dt>
                        <dd><strong>2024 동아대 의예과 합격</strong><br>
                            러셀CORE 창원 윤종빈</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">매주 응시하는 모의고사로 나의 위치를 객관적으로 깨닫고 학습 피드백을 <br>
                        할 수 있었습니다.</div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sogang.png" alt="서강대 로고" /></dt>
                        <dd><strong>2024 서강대 경제학과 합격</strong><br>
                            러셀CORE 창원 서희림</dd>
                    </dl>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <div class="b-review">
                <div>
                    <div class="txt">매달 봤던 메가X대성 더 프리미엄 모의고사가 많은 도움이 되었습니다.
                        수능과 같은 시간표로 전과목 실시하기 때문에 수능날에 일어날 수 있는 여러 상황에 대비할 수 있고, 평가원과 닮은 질 좋은 문제들로 많은 연습을 할 수 있었습니다.
                    </div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_jeju.png" alt="제주대 로고" /></dt>
                        <dd><strong>2024 제주대 수의예과 합격</strong><br>
                            러셀 부천 이동규</dd>
                    </dl>
                </div>
                <div>
                    <div class="txt">QUEL이나 메가X대성 더 프리미엄 모의고사 같은 질 좋은 모의고사를 주기적으로 실제 수능 시간에 맞춰 푸는 연습을 했기 때문에 6모, 9모는 물론 수능까지 감을 잃지 않을 수 있었습니다.
                    </div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kangwon.png" alt="강원대 로고" /></dt>
                        <dd><strong>2024 강원대 의예과 합격</strong><br>
                            러셀 부천 이가은</dd>
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
                    <div class="txt">러셀에서 지속적으로 퀄 모의고사나 메대프 모의고사와 <br>
                        같은 사설 모의고사 콘텐츠를 제공해주어 실전과 유사한 분위기에서 실모 연습을 
                        할 수 있는 것이 큰 도움이 되었습니다.</div>
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

    <div class="bottom-bar">
        <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/bt_banner.png" alt="다시 도전하는 최상위권 대입성공, 러셀 반수반이 대입성공의 가장 강력한 경쟁력입니다." /></p>
    </div>
</div>