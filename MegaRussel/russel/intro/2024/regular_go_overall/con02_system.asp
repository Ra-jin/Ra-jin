<div class="cont js-cont">
    <!-- cont03 -->
    <div class="cont03">
        <div class="inner">
            <h2 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go_overall/cont03_tit.png" alt="러셀 재학생 정규반에는 최상위권 재학생에게 최적화된 시스템이 있습니다." /></h2>
            <p>
                <img usemap="#popOpen" src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go_overall/cont02_img.jpg" alt="컨텐츠" />
                <% If isCORE = "1" or sCampusCode = "CD0342" or sCampusCode = "CD0349" Then '코어 전체/대구/울산 %>
                <a href="/info/schoolBus.asp">
                    <img class="bus-badge" src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_bus.png" alt="통학버스 뱃지" />
                </a>
                <% end if %>
            </p>
            <map name="popOpen">
                <area shape="rect" coords="591,1360,658,1427" href="javascript:layerPop()">
           </map>
            <!-- popup -->
            <div class="zoom-pop">
                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go_overall/zoom_img.jpg" alt="" /></div>
            </div>
            <!-- popup -->
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <p class="r-txt">* 학원별 운영 방법 및 시설은 상이합니다.</p>
            <% end if %>

            <% If sCampusCode = "INTRO" Then '인트로 %>
            <div class="stu-review">
                <div class="top-con">
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_jhh.png" alt="조한혁" /></p>
                    <div class="review-con">
                        <strong>바른공부 자습전용관 장점은 최적의 학습 환경</strong>입니다. 의자는 오랜 시간 앉아 있어도 허리나 엉덩이가 아프지 않았고 책상도 넓어서 모의고사를 펼쳐놔도 넉넉했습니다.
                        그리고 <strong>담임선생님께서 바자관 안에 계시면서 면학분위기 조성</strong>을 엄격하게 해주셔서 좋았습니다. 
                    </div>
                </div>
                <p><strong>연세대</strong>(서울) <strong>의예과 합격</strong> 러셀CORE 대전 조한혁</p>
            </div>
            <% end if %>
        </div>
    </div>
    <!-- //cont03 -->

    <!-- cont04 -->
    <% If sCampusCode <> "CD0257" Then '중계 제외 %>
    <div class="cont04">
        <h2 class="mb30" data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont04_tit.png" alt="메가스터디 온오프 수능 전문 강사진의 최상위권 수준별 맞춤 단과" /></h2>
        <p class="mb70"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/cont04_stit.png" alt="나에게 꼭 필요한 과목별/수준별/진도별 수업 선택으로" /></p>
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2024/regular_go_overall/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
        <div class="inner mt30">
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <p class="r-txt">* 학원 홈페이지에서 학원별 출강 선생님을 확인할 수 있으며, 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.</p>
            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
            <p class="r-txt">* 2024년 출강 강사진 기준으로 학원 운영에 따라 변경될 수 있습니다.</p>
            <% ElseIf sCampusCode = "CD0342" Then '대구 %>
            <p class="r-txt">
                * 강사진 순서는 가나다 순입니다. <br>
                * 출강 강사진은 학원 운영 정책 상 변경될 수 있습니다.
            </p>
            <% Else %>
            <p class="r-txt">* 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.</p>
            <% end if %>

            <ul class="danka-wrap <%=campusName%>">
                <li>
                    <p>
                        <%=danka_txt01%>
                    </p>
                </li>
                <li>
                    <p>
                        내게 필요한 수업 선택으로 <br>
                        <strong>충분한 자습시간 확보</strong>
                    </p>
                </li>
                <li>
                    <p>
                        <%=danka_txt02%>
                    </p>
                </li>
                <li>
                    <p>
                        <strong>
                            강의 전후 학습관리와 <br>
                            시기별 맞춤 학습 콘텐츠
                        </strong>
                    </p>
                </li>
            </ul>
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <div class="stu-review">
                <div class="top-con">
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_nch.png" alt="남채현" /></p>
                    <div class="review-con">
                        <strong>메가스터디 선생님의 수업 중 필요한 수업만 선택</strong>해서 들을 수 있고, 바자관과 강의실이 한 건물에 있어 <strong>단과 수업 이동에 불필요한 시간 소비를 하지 않아도 되는 점</strong>이 좋았습니다.
                        수업이 끝나고 바로 내용을 기억해 뒀다가 오답 노트를 작성하는 등 시간 절약에 많은 도움이 되었습니다. 
                    </div>
                </div>
                <p><strong>가톨릭대</strong>(성의) <strong>의예과 합격</strong> 러셀 대치 남채현</p>
            </div>
            <% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
            <p class="mt40"><a href="/core_cj/2024/math_class/index.asp"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/math_lineBanner.jpg" alt="수학 내신 대비 현장수업 띠배너" /></a></p>
            <% end if %>
        </div>      
    </div>
    <% end if %>
    <!-- //cont04 -->

    <!-- cont05 -->
    <div class="cont05">
        <div class="inner">
            <h2 class="mb30" data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go_overall/cont05_tit.png" alt="최상위권 전문 입시 담임선생님의 재학생 맞춤 관리" /></h2>
            <p><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/cont05_stit.png" alt="학교와 병행해야 하는 재학생에 맞춰 재학생 전문 담임선생님이 방과 후/주말 집중 관리를 합니다." /></p>
            <div class="tab-month">
                <a class="on">3월</a>
                <a>4월</a>
                <a>5월</a>
                <a>6월</a>
                <a>7월</a>
                <a>8월</a>
                <a>9월</a>
                <a>10월</a>
                <a>11월</a>
                <a>12월</a>
            </div>
            <% If sCampusCode = "CD0343" Then '코어원주 %>
            <!-- 3월 -->
            <div class="cont-month on">
                <table>
                    <colgroup>
                        <col style="width:22.1%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>고1</th>
                            <td>
                                &middot; <strong>학습 콘텐츠</strong> 파악 및 <strong>개인별 최적의 학습 방향성 설계</strong> <br>
                                &middot; 3월 모의고사 응시에 따른 <strong>1:1 성적 분석 피드백</strong> 진행 (취약 부분 점검)
                            </td>
                        </tr>
                        <tr>
                            <th>고2</th>
                            <td>
                                &middot; 1학년 <strong>생활기록부 점검</strong> (활동 및 이수과목 방향성 체크) <br>
                                &middot; 개인별 <strong>학습 현황 파악 및 학습 밸런스 점검</strong> <br>
                                &middot; 3월 모의고사 응시에 따른 <strong>1:1 성적 분석 피드백</strong> 진행 (취약 부분 점검)
                            </td>
                        </tr>
                        <tr>
                            <th>고3</th>
                            <td>
                                &middot; 1~2학년 <strong>생활기록부 점검</strong> (활동 및 이수과목 방향성 체크) <br>
                                &middot; 개인별 <strong>학습 현황 파악 및 학습 밸런스 점검</strong> <br>
                                &middot; 3월 모의고사, THE PREMIUM 모의고사 응시에 따른 <strong>1:1 성적 분석 피드백</strong> 진행 (취약 부분 점검)
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 4월 -->
            <div class="cont-month">
                <table>
                    <colgroup>
                        <col style="width:22.1%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>고1</th>
                            <td>
                                &middot; 내신 시험에 맞춤 <strong>일별 학습 플랜 지도</strong><br>
                                &middot; 내신 대비를 위한 <storng>집중 자습 기간 운영</storng>
                            </td>
                        </tr>
                        <tr>
                            <th>고2</th>
                            <td>
                                &middot; 내신 시험에 맞춤 <strong>일별 학습 플랜 지도</strong><br>
                                &middot; 내신 대비를 위한 <storng>집중 자습 기간 운영</storng>
                            </td>
                        </tr>
                        <tr>
                            <th>고3</th>
                            <td>
                                &middot; 내신 시험에 맞춤 <strong>일별 학습 플랜 지도</strong><br>
                                &middot; 내신 대비를 위한 <storng>집중 자습 기간 운영</storng>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 5월 -->
            <div class="cont-month">
                <table>
                    <colgroup>
                        <col style="width:22.1%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>고1</th>
                            <td>
                                &middot; <strong>1회고사 결과 분석 및 피드백</strong> 진행 (취약 과목 분석 및 보완을 위한 플랜 제시)<br>
                                &middot; 학습 플래너를 기반으로 한 <strong>개인별 학습 성취도 점검</strong>
                            </td>
                        </tr>
                        <tr>
                            <th>고2</th>
                            <td>
                                &middot; <strong>1회고사 결과 분석 및 피드백</strong> 진행 (취약 과목 분석 및 보완을 위한 플랜 제시)<br>
                                &middot; <strong>모의고사 리마인드</strong>를 통한 실전 감각 유지
                            </td>
                        </tr>
                        <tr>
                            <th>고3</th>
                            <td>
                                &middot; 내신/수능 최저학력기준 기반 지원 가능한 <strong>대학 라인 점검</strong><br>
                                &middot; 대학별 <strong>입시관련 주요 변경사항</strong> 확인 <br>
                                &middot; 6월 모의고사 대비를 위한 <strong>과목별 학습 현황 점검</strong>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 6월 -->
            <div class="cont-month">
                <table>
                    <colgroup>
                        <col style="width:22.1%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>고1</th>
                            <td>
                                &middot; 내신 시험에 맞춤 <strong>일별 학습 플랜 지도</strong><br>
                                &middot; 내신 대비를 위한 <strong>집중 자습 기간 운영</strong><br>
                                &middot; 6월 모의고사 응시에 따른 <strong>1:1 성적 분석 피드백</strong> 진행 (취약 부분 점검)
                            </td>
                        </tr>
                        <tr>
                            <th>고2</th>
                            <td>
                                &middot; 내신 시험에 맞춤 <strong>일별 학습 플랜 지도</strong><br>
                                &middot; 내신 대비를 위한 <strong>집중 자습 기간 운영</strong><br>
                                &middot; 6월 모의고사 응시에 따른 <strong>1:1 성적 분석 피드백</strong> 진행 (취약 부분 점검)
                            </td>
                        </tr>
                        <tr>
                            <th>고3</th>
                            <td>
                                &middot; 6월 모의고사 응시에 따른 <strong>1:1 성적 분석 피드백</strong> 진행 (취약 부분 점검) <br>
                                &middot; 9월 모의고사 대비 <strong>학습 방향성 설계</strong><br>
                                &middot; <strong>입시 성공 노하우 공유</strong> (데이터 기반)
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 7월 -->
            <div class="cont-month">
                <table>
                    <colgroup>
                        <col style="width:22.1%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>고1</th>
                            <td>
                                &middot; <strong>1학기 생활기록부 내용 점검 및 1:1 피드백</strong> 진행<br>
                                &middot; 여름방학 학습 계획 상담<br>
                                &middot; 썸머스쿨을 통한 학습 습관 형성
                            </td>
                        </tr>
                        <tr>
                            <th>고2</th>
                            <td>
                                &middot; <strong>1학기 생활기록부 내용 점검 및 1:1 피드백</strong> 진행<br>
                                &middot; 여름방학 학습 계획 상담<br>
                                &middot; 썸머스쿨을 통한 학습 습관 형성
                            </td>
                        </tr>
                        <tr>
                            <th>고3</th>
                            <td>
                                &middot; 6월 모의고사 성적 기반 <strong>1:1 수시 컨설팅 진행</strong> (목표 대학 범위 설정)-1차<br>
                                &middot; <strong>원내 입시 설명회(수시) 및 특강 수강</strong> 등을 통한 <strong>수시 전략 수립</strong><br>
                                &middot; 생활기록부 마무리 전 <strong>전체 내용 점검 및 1:1 피드백</strong> 진행
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 8월 -->
            <div class="cont-month">
                <table>
                    <colgroup>
                        <col style="width:22.1%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>고1</th>
                            <td>
                                &middot; 여름방학 <strong>학습 성취도 점검</strong><br>
                                &middot; 9월 모의고사 준비를 위한 <strong>학습 계획 수립 및 학습 현황 점검</strong>
                            </td>
                        </tr>
                        <tr>
                            <th>고2</th>
                            <td>
                                &middot; 여름방학 <strong>학습 성취도 점검</strong><br>
                                &middot; 9월 모의고사 준비를 위한 <strong>학습 계획 수립 및 학습 현황 점검</strong><br>
                                &middot; 이전 모의고사 <strong>성적 추이 기반 취약점 파악</strong>
                            </td>
                        </tr>
                        <tr>
                            <th>고3</th>
                            <td>
                                &middot; 6월 모의고사 성적 기반 <strong>1:1 수시 컨설팅 진행</strong> (목표 대학 범위 설정)-2차<br>
                                &middot; 9월 모의고사 전 <strong>보완 사항 점검</strong><br>
                                &middot; 여름방학 <strong>학습 성취도 점검</strong>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 9월 -->
            <div class="cont-month">
                <table>
                    <colgroup>
                        <col style="width:22.1%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>고1</th>
                            <td>
                                &middot; 개인별 유불리를 고려한 <strong>진로/선택과목 점검</strong><br>
                                &middot; 내신 시험에 맞춤 <strong>일별 학습 플랜 지도</strong><br>
                                &middot; 내신 대비를 위한 <strong>집중 자습 기간 운영</strong>
                            </td>
                        </tr>
                        <tr>
                            <th>고2</th>
                            <td>
                                &middot; 개인별 유불리를 고려한 <strong>진로/선택과목 점검</strong><br>
                                &middot; 내신 시험에 맞춤 <strong>일별 학습 플랜 지도</strong><br>
                                &middot; 내신 대비를 위한 <strong>집중 자습 기간 운영</strong>
                            </td>
                        </tr>
                        <tr>
                            <th>고3</th>
                            <td>
                                &middot; <strong>수시 카드 확정 및 수시 지원</strong> (개인별 성적 향상률 및 경쟁률 고려)<br>
                                &middot; 9월 모의고사 성적 기반 <strong>학습 방향성 설정</strong>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 10월 -->
            <div class="cont-month">
                <table>
                    <colgroup>
                        <col style="width:22.1%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>고1</th>
                            <td>
                                &middot; 과목별 <strong>학습 밸런스 점검</strong><br>
                                &middot; 성적 및 생활기록부를 고려한 <strong>목표 대학 설계 진행</strong>
                            </td>
                        </tr>
                        <tr>
                            <th>고2</th>
                            <td>
                                &middot; 과목별 <strong>학습 밸런스 점검</strong><br>
                                &middot; 내신 기간 전 수능 <strong>최저학력기준에 대한 대비 플랜 구성</strong>
                            </td>
                        </tr>
                        <tr>
                            <th>고3</th>
                            <td>
                                &middot; <strong>실전 모의고사 운영 및 관리</strong><br>
                                &middot; 수능 대비 <strong>집중 자습 기간 운영</strong><br>
                                &middot; 수능 전 <strong>1:1 상담을 통한 멘탈 관리</strong>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 11월 -->
            <div class="cont-month">
                <table>
                    <colgroup>
                        <col style="width:22.1%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>고1</th>
                            <td>
                                &middot; 내신 시험에 맞춤 <strong>일별 학습 플랜 지도</strong><br>
                                &middot; 내신 대비를 위한 <strong>집중 자습 기간 운영</strong>
                            </td>
                        </tr>
                        <tr>
                            <th>고2</th>
                            <td>
                                &middot; 내신 시험에 맞춤 <strong>일별 학습 플랜 지도</strong><br>
                                &middot; 내신 대비를 위한 <strong>집중 자습 기간 운영</strong><br>
                                &middot; 12월 <strong>모의고사 대비 학습 점검</strong>
                            </td>
                        </tr>
                        <tr>
                            <th>고3</th>
                            <td>
                                &middot; 조, 종례를 통한 <strong>멘탈 관리 및 학습 분위기 형성</strong><br>
                                &middot; 수능 <strong>가채점 기반 입시 방향성 설계</strong>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 12월 -->
            <div class="cont-month">
                <table>
                    <colgroup>
                        <col style="width:22.1%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>고1</th>
                            <td>
                                &middot; 겨울방학 <strong>학습 계획 상담</strong><br>
                                &middot; 2회고사 결과 분석 및 <strong>개인별 1:1 피드백 진행</strong>
                            </td>
                        </tr>
                        <tr>
                            <th>고2</th>
                            <td>
                                &middot; 겨울방학 <strong>학습 계획 상담</strong><br>
                                &middot; 3학년 대비 <strong>희망 대학/학과 모집요강 파악</strong> 및  주요 변화를 분석한 <strong>1:1 입시 상담 진행</strong>
                            </td>
                        </tr>
                        <tr>
                            <th>고3</th>
                            <td>
                                &middot; 수능 <strong>실채점 결과를 통한 정시 지원전략 최종 1:1 배치 상담 진행</strong> (정시 지원자 대상)
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <% else %>
            <!-- 3월 -->
            <div class="cont-month on">
                <table>
                    <colgroup>
                        <col style="width:22.4%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>수시</th>
                            <td>&middot; <% If sCampusCode <> "CD0244" Then '분당 제외 %>내신 집중 관리 & <% end if %>수시 지원을 위한 <strong>서류, 자소서 관련 담임선생님과의 1:1 상담 진행</strong></td>
                        </tr>
                        <tr>
                            <th>정시</th>
                            <td>
                                &middot; 서울시 교육청 및 THE PREMIUM 모의고사 응시에 따른 성적 분석<br>
                                &middot; 담임선생님과 <strong>취약과목(파트) 점검 후 학습전략 수립</strong>
                                <% If sCampusCode = "CD0249" Then '영통 %> <br> &middot; 담임선생님과 <strong>과목별 커리큘럼 및 학습상태/방법 점검</strong><% end if %>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 4월 -->
            <div class="cont-month">
                <table>
                    <colgroup>
                        <col style="width:22.4%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>수시</th>
                            <td>
                                <% If sCampusCode <> "CD0249" Then '영통 제외 %>&middot; THE PREMIUM 모의고사 응시<br><% end if %>
                                &middot; 담임선생님과 <strong>수시 최저등급 충족을 위한 학습전략 수립</strong>
                            </td>
                        </tr>
                        <tr>
                            <th>정시</th>
                            <td>
                                &middot; THE PREMIUM 모의고사 응시에 따른 성적 분석<br>
                                &middot; 담임선생님과 <strong>취약과목(파트) 점검 후 학습전략 수립</strong>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 5월 -->
            <div class="cont-month">
                <table>
                    <colgroup>
                        <col style="width:22.4%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>공통</th>
                            <td>
                                <% If sCampusCode <> "CD0249" Then '영통 제외 %>&middot; THE PREMIUM 모의고사 응시<br><% end if %>
                                &middot; 6월 평가원 대비 <strong>과목별 성취도 파악 및  취약과목(파트) 점검</strong>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 6월 -->
            <div class="cont-month">
                <table>
                    <colgroup>
                        <col style="width:22.4%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>수시</th>
                            <td>
                                &middot; 6월 평가원 모의고사 응시<br>
                                &middot; 담임선생님과 6평 결과를 통한 <strong>목표 대학 최저 등급 충족 가능여부 파악 및 실 지원 대학 탐색</strong>
                            </td>
                        </tr>
                        <tr>
                            <th>정시</th>
                            <td>
                                &middot; 6월 평가원 모의고사 응시에 따른 성적 분석<br>
                                &middot; 담임선생님과 6월 평가원 <strong>과목별 성취도 파악 및 취약과목(파트) 점검 후 학습전략 수립</strong>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 7월 -->
            <div class="cont-month">
                <table>
                    <colgroup>
                        <col style="width:22.4%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>수시</th>
                            <td>
                                <% If sCampusCode <> "CD0249" Then '영통 제외 %>&middot; THE PREMIUM 모의고사 응시<br><% end if %>
                                &middot; 여름방학 기간 <strong>최저 등급 대비 집중 학습</strong>을 위해 <strong><% If sCampusCode = "CD0244" Then '분당 %>썸머특강 수강<% else %>재학생 특강(단기 완성) 수강<% end if %></strong><br>
                                &middot; 원내 입시 설명회(수시) 및 특강 수강 등을 통해 <strong>수시 전략 수립</strong>
                            </td>
                        </tr>
                        <tr>
                            <th>정시</th>
                            <td>
                                &middot; THE PREMIUM 모의고사 응시에 따른 성적 분석<br>
                                &middot; 여름방학 기간 <strong>취약과목(파트) 집중 학습</strong>을 위해 <strong><% If sCampusCode = "CD0244" Then '분당 %>썸머특강 수강<% else %>재학생 특강(단기 완성) 수강<% end if %></strong><br>
                                &middot; 담임선생님과 <strong>과목별 커리큘럼 및 학습상태/방법 점검</strong>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 8월 -->
            <div class="cont-month">
                <table>
                    <colgroup>
                        <col style="width:22.4%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>수시</th>
                            <td>
                                <% If sCampusCode <> "CD0249" Then '영통 제외 %>
                                <% If sCampusCode = "CD0342" Then '대구 %>
                                &middot; THE PREMIUM 모의고사 응시<br>
                                <% else %>
                                &middot; E-QUEL 모의고사 응시<br>
                                <% end if %>
                                <% end if %>
                                &middot; 여름방학 기간 <strong>최저 등급 대비 집중 학습</strong>을 위해 <strong><% If sCampusCode = "CD0244" Then '분당 %>썸머특강 수강<% else %>재학생 특강(단기 완성) 수강<% end if %></strong><br>
                                &middot; <strong>수시 원서접수 1:1 컨설팅</strong> (1차)
                            </td>
                        </tr>
                        <tr>
                            <th>정시</th>
                            <td>
                                <% If sCampusCode = "CD0342" Then '대구 %>
                                &middot; THE PREMIUM 모의고사 응시에 따른 성적 분석<br>
                                <% else %>
                                &middot; E-QUEL 모의고사 응시에 따른 성적 분석<br>
                                <% end if %>
                                &middot; 여름방학 기간 <strong>취약과목(파트) 집중 학습</strong>을 위해 <strong><% If sCampusCode = "CD0244" Then '분당 %>썸머특강 수강<% else %>재학생 특강(단기 완성) 수강<% end if %></strong><br>
                                &middot; 담임선생님과 <strong>과목별 커리큘럼 및 학습상태/방법 점검</strong>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 9월 -->
            <div class="cont-month">
                <table>
                    <colgroup>
                        <col style="width:22.4%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>수시</th>
                            <td>
                                &middot; 9월 평가원 모의고사 응시<br>
                                &middot; 담임선생님과 9평 결과를 통한 <strong>수시 원서접수 1:1 컨설팅</strong> (2차)
                            </td>
                        </tr>
                        <tr>
                            <th>정시</th>
                            <td>
                                &middot; 9월 평가원 모의고사 응시에 따른 성적 분석 <br>
                                &middot; 담임선생님과 9월 평가원 <strong>과목별 성취도 파악 및 취약과목(파트) 점검 후 학습전략 수립</strong>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 10월 -->
            <div class="cont-month">
                <table>
                    <colgroup>
                        <col style="width:22.4%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>수시</th>
                            <td>
                                <% If sCampusCode <> "CD0249" Then '영통 제외 %>&middot; THE PREMIUM 모의고사 응시<br><% end if %>
                                &middot; <strong>수시 최저등급 충족을 위한 최종 전략 수립</strong>
                            </td>
                        </tr>
                        <tr>
                            <th>정시</th>
                            <td>
                                <% If sCampusCode <> "CD0249" Then '영통 제외 %>&middot; THE PREMIUM 모의고사 응시에 따른 성적 분석<br><% end if %>
                                &middot; 수능 응시 전 <strong>취약과목(파트) 최종 점검 및 전략 수립</strong>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 11월 -->
            <div class="cont-month">
                <table>
                    <colgroup>
                        <col style="width:22.4%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>공통</th>
                            <td>
                                <% If sCampusCode = "CD0249" Then '영통 %>
                                &middot; 실전 모의고사 응시를 통한 <strong>최종 점검</strong><br>
                                <% elseIf sCampusCode = "CD0342" Then '대구 %>
                                &middot; THE PREMIUM 모의고사 응시를 통한 <strong>최종 실전 점검</strong><br>
                                <% else %>
                                &middot; E-QUEL 모의고사 응시를 통한 <strong>최종 실전 점검</strong><br>
                                <% end if %>
                                &middot; 수능 응시 및 가채점 결과를 통한 <strong>정시 지원 전략 1차 1:1 배치 상담 진행</strong>(※ 12월 성적 발표 후 2차 1:1 배치 상담 진행)
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 12월 -->
            <div class="cont-month">
                <table>
                    <colgroup>
                        <col style="width:22.4%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>공통</th>
                            <td>&middot; 수능 실채점 결과를 통한 <strong>정시 지원 전략 최종 1:1 배치 상담 진행</strong></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <% end if %>
            <% If sCampusCode <> "CD0245" and sCampusCode <> "CD0244" and sCampusCode <> "CD0343" and sCampusCode <> "CD0250" Then '목동/분당/코어원주/부천 제외 %>
            <p class="r-txt"><%=month_txt%></p>
            <% end if %>
            <ul class="txt-wrap">
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont05_img01.jpg" alt="" /></div>
                    <div class="txt-list">
                        <ul>
                            <li>학교와 병행하는 재학생에 맞춰 <strong>방과 후, <br> 주말 집중 관리 진행</strong></li>
                            <li>학습 고충 및 슬럼프를 긍정적으로 극복할 수 있도록 <strong>1:1 정신적 멘토링 진행</strong></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont05_img02.jpg" alt="" /></div>
                    <div class="txt-list">
                        <ul>
                            <li>학습 습관을 점검하여 보다 <strong>효율적인 자습<br>시간 관리</strong></li>
                            <li><% If sCampusCode <> "CD0244" Then '분당 제외 %>내신/모의고사 <% end if %>성적 누적 관리로 <strong>취약점 확인<% If sCampusCode <> "CD0244" Then '분당 제외 %><br><% end if %> 및 보완법 제안</strong></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont05_img03.jpg" alt="" /></div>
                    <div class="txt-list">
                        <ul>
                            <li>수시 지원을 위한 <strong><% If sCampusCode <> "CD0244" Then '분당 제외 %>내신 집중 관리, <% end if %>학생부 관련<% If sCampusCode <> "CD0244" Then '분당 제외 %><br><% end if %> 설계 및 지원</strong></li>
                            <li>누적된 재원생 학습 및 입시 결과 데이터 기반으로<br> <strong>개인 목표에 맞춘 입시 방향(수시/정시) 제시</strong></li>
                        </ul>
                    </div>
                </li>
            </ul>
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <div class="stu-review">
                <div class="top-con">
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_phr.png" alt="표혜림" /></p>
                    <div class="review-con">
                        <strong>담임선생님이 각 시기에 맞춰 1:1 컨설팅을 해주시는 것</strong>이 좋았습니다. 저에 대해 잘 알고 계신 담임선생님이 상담을 해 주시기 때문에 정말 많은 도움이 되었습니다.
                        <strong>공부 방향성과 시험시간 관리법뿐만 아니라 멘탈 케어도</strong> 함께 도와주셨습니다.
                        수험기간 동안 공부에 집중할 수 있도록 독려해 주셨기 때문에 합격할 수 있었다고 생각합니다.
                    </div>
                </div>
                <p><strong>서울대 언론정보학과 합격</strong> 러셀 강남 표혜림</p>
            </div>
            <% end if %>
        </div>
    </div>
    <!-- //cont05 -->    
    
    <!-- cont06 -->
    <div class="cont06">
        <div class="inner">
            <h2 class="mb30" data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go_overall/cont06_tit.png" alt="최상위권 대학 합격 선배들이 추천하는 러셀 실전 콘텐츠" /></h2>
            <p class="mb70"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/cont06_stit.png" alt="시기별 맞춤 콘텐츠로 실력 향상은 물론, 집체 모의고사 응시로 실전력까지 향상됩니다." /></p>
            <% If isCore = "1" or sCampusCode = "CD0349" Then '코어 전체/울산 %>
            <div class="contents-list mt70">
                <div>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/cont_list03.jpg" alt=""></p>
                    <div>
                        <p class="c-tit">러셀CORE<br>Weekly 모의고사</p>
                        <div class="c-txt-box">
                            <a href="/intro/2022/weekly/index.asp">자세히 보기</a>
                            <ul>
                                <li>러셀CORE 선생님들이 직접 <br> 출제한 모의고사 콘텐츠 제공</li>
                                <li>매주 정해진 시간에 집체 모의고사<br>응시하여 실전 감각 향상</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/cont_list02.jpg" alt=""></p>
                    <div>
                        <p class="c-tit">THE PREMIUM<br>모의고사</p>
                        <div class="c-txt-box">
                            <a href="/intro/2022/premium/index.asp">자세히 보기</a>
                            <ul>
                                <li>과목별 전문 출제진 구성 <br> 및 다회차 검토 과정</li>
                                <li>전 과목 응시로 객관적인 위치 확인</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/cont_list01.jpg" alt=""></p>                  
                    <div>
                        <p class="c-tit">QUEL<br>모의고사</p>
                        <div class="c-txt-box">
                            <a href="/event/2021/quel/index.asp">자세히 보기</a>
                            <ul>
                                <li>메가스터디 통합 전 영역 <br> 실전 수능 대비 모의고사</li>
                                <li>최신 출제 경향에 맞춘 <br>강도 있는 실전 훈련</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/cont_list04.jpg" alt=""></p>
                    <div>
                        <p class="c-tit">월간 학습지<br>(월간 장영진)</p>
                        <div class="c-txt-box">
                            <a href="/intro/info/monthly/index.asp">자세히 보기</a>
                            <ul>
                                <li>수학 장영진 선생님의 자작 문항으로<br>매월 집체 모의고사 진행</li>
                                <li>수험생활에 필요한 다양한 <br> 수학&middot;입시 정보 제공</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "INTRO" or sCampusCode = "CD0244" or sCampusCode = "CD0342" Then '인트로/분당/대구 %>
            <div class="contents-list mt70">
                <div>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/cont_list01.jpg" alt=""></p>                  
                    <div>
                        <p class="c-tit">QUEL<br>모의고사</p>
                        <div class="c-txt-box">
                            <a href="/event/2021/quel/index.asp">자세히 보기</a>
                            <ul>
                                <li>메가스터디 통합 전 영역 <br> 실전 수능 대비 모의고사</li>
                                <li>최신 출제 경향에 맞춘 <br>강도 있는 실전 훈련</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/cont_list02.jpg" alt=""></p>
                    <div>
                        <p class="c-tit">THE PREMIUM<br>모의고사</p>
                        <div class="c-txt-box">
                            <a href="/intro/2022/premium/index.asp">자세히 보기</a>
                            <ul>
                                <li>과목별 전문 출제진 구성 <br> 및 다회차 검토 과정</li>
                                <li>전 과목 응시로 객관적인 위치 확인</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <% If sCampusCode = "CD0244" Then '분당 %>
                <div>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/cont_list05.jpg" alt=""></p>
                    <div>
                        <p class="c-tit">러셀 분당<br>재원생 전용 주간지</p>
                        <div class="c-txt-box">
                            <a href="javascript:alert('추후 오픈 예정입니다.')">자세히 보기</a>
                            <ul>
                                <li>6평 대비 국어·수학 주간 모의고사 (역대 QUEL모의고사 모음)</li>
                                <li>10주 동안 매주 풀 모의고사 시행으로 실전 감각 유지 훈련</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <% else %>
                <div>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/cont_list03.jpg" alt=""></p>
                    <div>
                        <p class="c-tit">러셀CORE<br>Weekly 모의고사</p>
                        <div class="c-txt-box">
                            <a href="/intro/2022/weekly/index.asp">자세히 보기</a>
                            <ul>
                                <li>러셀CORE 선생님들이 직접 <br> 출제한 모의고사 콘텐츠 제공</li>
                                <li>매주 정해진 시간에 집체 모의고사<br>응시하여 실전 감각 향상</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <% end if %>
                <div>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/cont_list04.jpg" alt=""></p>
                    <div>
                        <p class="c-tit">월간 학습지<br>(월간 장영진)</p>
                        <div class="c-txt-box">
                            <a href="/intro/info/monthly/index.asp">자세히 보기</a>
                            <ul>
                                <li>수학 장영진 선생님의 자작 문항으로<br>매월 집체 모의고사 진행</li>
                                <li>수험생활에 필요한 다양한 <br> 수학&middot;입시 정보 제공</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <% else %> 
            <div class="contents-list mt70 academy">
                <div>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/cont_list01.jpg" alt=""></p>                  
                    <div>
                        <p class="c-tit">QUEL<br>모의고사</p>
                        <div class="c-txt-box">
                            <a href="/event/2021/quel/index.asp">자세히 보기</a>
                            <ul>
                                <li>메가스터디 통합 전 영역 <br> 실전 수능 대비 모의고사</li>
                                <li>최신 출제 경향에 맞춘 강도 있는 실전 훈련</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/cont_list02.jpg" alt=""></p>
                    <div>
                        <p class="c-tit">THE PREMIUM<br>모의고사</p>
                        <div class="c-txt-box">
                            <a href="/intro/2022/premium/index.asp">자세히 보기</a>
                            <ul>
                                <li>과목별 전문 출제진 구성, 다회차 검토 과정</li>
                                <li>전 과목 응시로 객관적인 위치 확인</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/cont_list04.jpg" alt=""></p>
                    <div>
                        <p class="c-tit">월간 학습지<br>(월간 장영진)</p>
                        <div class="c-txt-box">
                            <a href="/intro/info/monthly/index.asp">자세히 보기</a>
                            <ul>
                                <li>수학 장영진 선생님의 자작 문항으로 매월 <br>집체 모의고사 진행</li>
                                <li>수험생활에 필요한 다양한 수학&middot;입시 정보 제공</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <% end if %>

            <% If sCampusCode = "INTRO" Then '인트로 %>
            <div class="stu-review">
                <div class="top-con">
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_kge.png" alt="김가을" /></p>
                    <div class="review-con">
                        THE PREMIUM 모의고사와 퀄 모의고사와 같이 <strong>다양한 모의고사를 경험할 수 있어 좋았습니다.
                        학교를 가야 하는 재학생들도 주말에 시험을 응시</strong>할 수 있도록 환경을 마련해 주셨고, 실제 실전과 유사한 환경에서 훈련을 하며 <strong>실전 감각을 익히고 새로운 문제를 접할 수 있었습니다.</strong> 
                    </div>
                </div>
                <p><strong>부산대 의예과 합격</strong> 러셀 센텀 김가을</p>
            </div>
            <% end if %>
        </div>
    </div>
     <!-- //cont06 -->

     <% If sCampusCode = "CD0342" Then '대구 %>
     <!--cont07-->
     <div class="cont08">
        <div class="inner">
            <p>러셀 대구 실전 콘텐츠 <span>[과목별 연간 시행 일정]</span></p>
            <div class="studyHall-slide-wrap">
                <div class="swiper-container studyHall-navi">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">2월</div>
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
                <div class="swiper-container studyHall-slide">
                    <div class="swiper-wrapper">
                        <!--2월-->
                        <div class="swiper-slide">
                            <div>
                                <table class="tbl-01">
                                    <colgroup>
                                        <col style="width: 20%;">
                                        <col style="width: ;">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th>국어</th>
                                            <td>
                                                <ul class="list-03">
                                                    <li>기출분석</li>
                                                </ul>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>수학</th>
                                            <td>
                                                <ul class="list-03">
                                                    <li>[WEEKLY] Half 모의고사 5회차</li>
                                                    <li>[장영진] 2024 모의고사 4회차</li>
                                                    <li>[장영진] 2025 모의고사 2회차</li>
                                                </ul>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>영어</th>
                                            <td>
                                                <ul class="list-03">
                                                    <li>[WEEKLY] Half 모의고사 1회차</li>
                                                    <li>[문호상] 데일리 독해+어법성 &middot; 영어듣기</li>
                                                </ul>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>탐구</th>
                                            <td>
                                                <ul class="list-03">
                                                    <li>[WEEKLY] Half 모의고사 5회차</li>
                                                </ul>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <!--3월-->
                        <div class="swiper-slide">
                            <div>
                                <table class="tbl-01">
                                    <colgroup>
                                        <col style="width: 20%;">
                                        <col style="width: ;">
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
                                    <p>[3월] THE PREMIUM 모의고사 (국수영탐 FULL 모의고사)</p>
                                </div>
                            </div>
                        </div>

                        <!--4월-->
                        <div class="swiper-slide">
                            <div>
                                <table class="tbl-01">
                                    <colgroup>
                                        <col style="width: 20%;">
                                        <col style="width: ;">
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
                                    <p>[4월] THE PREMIUM 모의고사 (국수영탐 FULL 모의고사)</p>
                                </div>
                            </div>
                        </div>

                        <!--5월-->
                        <div class="swiper-slide">
                            <div>
                                <table class="tbl-01">
                                    <colgroup>
                                        <col style="width: 20%;">
                                        <col style="width: ;">
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
                                    <p>[5월] THE PREMIUM 모의고사 (국수영탐 FULL 모의고사)</p>
                                </div>
                            </div>
                        </div>

                        <!--6월-->
                        <div class="swiper-slide">
                            <div>
                                <table class="tbl-01">
                                    <colgroup>
                                        <col style="width: 20%;">
                                        <col style="width: ;">
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
                                <div>
                                    <p>[6월] THE PREMIUM 모의고사 (국수영탐 FULL 모의고사)</p>
                                </div>
                            </div>
                        </div>

                        <!--7월-->
                        <div class="swiper-slide">
                            <div>
                                <table class="tbl-01">
                                    <colgroup>
                                        <col style="width: 20%;">
                                        <col style="width: ;">
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
                                    <p>[7월] THE PREMIUM 모의고사 (국수영탐 FULL 모의고사)</p>
                                </div>
                            </div>
                        </div>

                        <!--8월-->
                        <div class="swiper-slide">
                            <div>
                                <table class="tbl-01">
                                    <colgroup>
                                        <col style="width: 20%;">
                                        <col style="width: ;">
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
                            </div>
                        </div>

                        <!--9월-->
                        <div class="swiper-slide">
                            <div>
                                <table class="tbl-01">
                                    <colgroup>
                                        <col style="width: 20%;">
                                        <col style="width: ;">
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
                                    <p>[9월] THE PREMIUM 모의고사 (국수영탐 FULL 모의고사)</p>
                                </div>
                            </div>
                        </div>

                        <!--10월-->
                        <div class="swiper-slide">
                            <div>
                                <table class="tbl-01">
                                    <colgroup>
                                        <col style="width: 20%;">
                                        <col style="width: ;">
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
                                    <p>[10월] THE PREMIUM 모의고사 (국수영탐 FULL 모의고사)</p>
                                </div>
                            </div>
                        </div>

                        <!--11월-->
                        <div class="swiper-slide">
                            <div>
                                <table class="tbl-01">
                                    <colgroup>
                                        <col style="width: 20%;">
                                        <col style="width: ;">
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
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </div>
     <!--//cont07-->
     <% end if %>

    <!--하단 배너-->
    <div class="bottom-bar">
        <p>
            <% If sCampusCode = "CD0250" Then '부천 %>고3에<% Else %>재학생에<% End If %> 최적화된 <%=txtCampus%><% If sCampusCode = "CD0244" Then '분당 %> 재학생(고3) 정규반<% ElseIf sCampusCode = "CD0247" Then '강남 %> 재학생 최상위권반<% ElseIf sCampusCode = "CD0250" Then '부천 %> 고3 정규반<% Else %> 재학생 종합반<% End If %>에서 <br>
            <span>여러분의 <% If sCampusCode = "CD0257" Then '중계 %>목표 대학 합격이 <% Else %>최상위권 대입성공이 <% End If %>확실해집니다.</span>
        </p>
    </div>
    <!--//하단 배너-->
</div>