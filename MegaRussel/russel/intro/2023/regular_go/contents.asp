<div class="cont js-cont">

    <% If sCampusCode = "INTRO" Then '인트로 %>
    <!-- cont01 -->
    <div class="cont01 intro" style="padding-top: 220px;">
        <div class="inner">
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont01_tit.png" alt="비약적인 성적 상승" /></p>
            <p class="mt70"><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont01_img.jpg" alt="그래프 이미지" /></p>
            <p class="remark">※ 바른공부 자습전용관 2022학년도 재학생 정규반 재원생 중 2022 평가원 모의평가 및 수능 성적/등급(국수탐(2)) 확인이 가능한 자연계 재원생 분석 결과</p>
            <p class="mt130"><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont01_tit02.png" alt="최상위권 대학 진학에 성공" /></p>
            <p class="mt70"><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont01_img02_intro.jpg" alt="성적 상승 이미지" /></p>
            <p class="remark">※ 바른공부 자습전용관 2022학년도 재학생 정규반 재원생 중 2022 평가원 모의평가 및 수능 성적/등급(국수탐(2)) 확인이 가능한 자연계 재원생 분석 결과</p>
        </div>
    </div>
    <!--// cont01 -->
    <% Else %>
    <!-- cont01 -->
    <div class="cont01 russel" style="padding-top: 130px;">
        <div class="inner">
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular_go/cont01_tit.png" alt="비약적인 성적 상승" /></p>
            <% If sCampusCode = "CD0250" Then '부천 %>
            <p class="mt70"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular_go/cont01_img.jpg" alt="그래프 이미지" /></p>
            <a class="gotoPlay" onclick="playPop('https://tv.naver.com/embed/25759557')"></a>
            <div class="interview-swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/russel_bc/2022/winter/gw_uni.png" alt=""></span>
                        <dl class="name">
                            <dt>강원대<br>의예과</dt>
                            <dd>러셀 부천 HS반<br>강**</dd>
                        </dl>
                    </div>
                    <div class="swiper-slide">
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/russel_bc/2022/winter/ys_uni.png" alt=""></span>
                        <dl class="name">
                            <dt>연세대<br>의예과</dt>
                            <dd>러셀 부천 HS반<br>김**</dd>
                        </dl>
                    </div>
                    <div class="swiper-slide">
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/russel_bc/2022/winter/gh_uni.png" alt=""></span>
                        <dl class="name">
                            <dt>경희대<br>의예과</dt>
                            <dd>러셀 부천 HS반<br>엄**</dd>
                        </dl>
                    </div>
                    <div class="swiper-slide">
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/russel_bc/2022/winter/ds_uni.png" alt=""></span>
                        <dl class="name">
                            <dt>덕성여대<br>약학과</dt>
                            <dd>러셀 부천 HS반<br>정**</dd>
                        </dl>
                    </div>
                    <div class="swiper-slide">
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/russel_bc/2022/winter/cs_uni.png" alt=""></span>
                        <dl class="name">
                            <dt>조선대<br>약학과</dt>
                            <dd>러셀 부천 HS반<br>***</dd>
                        </dl>
                    </div>
                    <div class="swiper-slide">
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/russel_bc/2022/winter/gm_uni.png" alt=""></span>
                        <dl class="name">
                            <dt>계명대<br>의예과</dt>
                            <dd>러셀 부천 HS반<br>하**</dd>
                        </dl>
                    </div>
                    <div class="swiper-slide">
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/russel_bc/2022/winter/su_uni.png" alt=""></span>
                        <dl class="name">
                            <dt>서울대<br>언론정보학과</dt>
                            <dd>러셀 부천 연고대반<br>석**</dd>
                        </dl>
                    </div>
                    <div class="swiper-slide">
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/russel_bc/2022/winter/kr_uni.png" alt=""></span>
                        <dl class="name">
                            <dt>고려대<br>화학과</dt>
                            <dd>러셀 부천 HS반<br>***</dd>
                        </dl>
                    </div>
                    <div class="swiper-slide">
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/russel_bc/2022/winter/kr_uni.png" alt=""></span>
                        <dl class="name">
                            <dt>고려대<br>중어중문학과</dt>
                            <dd>러셀 부천 서의치대반<br>채**</dd>
                        </dl>
                    </div>
                    <div class="swiper-slide">
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/russel_bc/2022/winter/kr_uni.png" alt=""></span>
                        <dl class="name">
                            <dt>고려대<br>기계공학부</dt>
                            <dd>러셀 부천 HS반<br>서**</dd>
                        </dl>
                    </div>
                    <div class="swiper-slide">
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/russel_bc/2022/winter/kr_uni.png" alt=""></span>
                        <dl class="name">
                            <dt>고려대<br>바이오시스템<br>의과학부</dt>
                            <dd>러셀 부천 HS반<br>김**</dd>
                        </dl>
                    </div>
                    <div class="swiper-slide">
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/russel_bc/2022/winter/ys_uni.png" alt=""></span>
                        <dl class="name">
                            <dt>연세대<br>융합과학<br>공학부(ISE)</dt>
                            <dd>러셀 부천 서의치대반<br>김**</dd>
                        </dl>
                    </div>
                </div>
            </div>

            <% Else %>
            <p class="mt70"><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont01_img.jpg" alt="그래프 이미지" /></p>
            <% If sCampusCode = "CD0244" Then '분당 %>
            <p class="remark">※ 바른공부 자습전용관 2022학년도 정규반 [재학생(고3)] 재원생 중 2022 평가원 모의평가 및 수능 성적/등급(국수탐(2)) 확인이 가능한 자연계 재원생 분석 결과</p>
            <% Else %>
            <p class="remark">※ 바른공부 자습전용관 2022학년도 재학생 정규반 재원생 중 2022 평가원 모의평가 및 수능 성적/등급(국수탐(2)) 확인이 가능한 자연계 재원생 분석 결과</p>
            <% End If %>

            <p class="mt130"><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont01_tit02.png" alt="최상위권 대학 진학에 성공" /></p>
            <p class="mt70"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular_go/cont01_img02.jpg" alt="성적 상승 이미지" /></p>
            <% If sCampusCode = "CD0244" Then '분당 %>
            <p class="remark">※ 바른공부 자습전용관 2022학년도 정규반 [재학생(고3)] 재원생 중 2022 평가원 모의평가 및 수능 성적/등급(국수탐(2)) 확인이 가능한 자연계 재원생 분석 결과</p>
            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
            <% Else %>
            <p class="remark">※ 바른공부 자습전용관 2022학년도 재학생 정규반 재원생 중 2022 평가원 모의평가 및 수능 성적/등급(국수탐(2)) 확인이 가능한 자연계 재원생 분석 결과</p>
            <% End If %>
            <% End If %>
        </div>
    </div>
    <!--// cont01 -->
    <% End If %>


    <!-- cont02 -->
    <div class="cont02 js-cont" id="nav-cont">
        <div class="inner02">
            <p class="mb95"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular_go/cont02_tit.png" alt="러셀 재학생 정규반에는 최상위권 재학생에 최적화된 시스템이 있습니다." /></p>
            <p class="mb70 js-box"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular_go/cont02_cont01.png" alt="" /></p>
            <p class="mb70 js-box"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular_go/cont02_cont02.png" alt="" /></p>
            <p class="mb70 js-box"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular_go/cont02_cont03.png" alt="" /></p>
            <p class="mb70 js-box"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular_go/cont02_cont04.png" alt="" /></p>
            <p class="js-box tab-box02"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular_go/cont02_cont05.png" alt="" /></p>
        </div>
        <!-- nav -->
		<div class="nav-wrap">
            <div class="nav-in <%=campusName%>">
                <ul>
                    <li class="on">
                        <div>
                            <a href="javascript:void(0);" class="btn-nav"><span>집단적인<br>면학분위기</span></a>
                        </div>
					</li>
                    <li>
                        <div>
                            <% If sCampusCode = "CD0250" Then '부천 %>
                            <a href="javascript:void(0);" class="btn-nav" style="padding-top: 0;"><span>최상위권<br>수준별<br>맞춤 단과<br>(수능,내신)</span></a>
                            <% Else %>
                            <a href="javascript:void(0);" class="btn-nav"><span>최상위권<br>수준별<br>맞춤 단과</span></a>
                            <% End If %>
                        </div>
					</li>
                    <li>
                        <div>
                            <a href="javascript:void(0);" class="btn-nav"><span>재학생 전임<br>입시<br>담임선생님</span></a>
                        </div>
					</li>
					</li>
                    <li>
                        <div>
                            <a href="javascript:void(0);" class="btn-nav"><span>재학생에<br>맞춘<br>입시 전략</span></a>
                        </div>
					</li>
					</li>
                    <li>
                        <div>
                            <a href="javascript:void(0);" class="btn-nav"><span>최상위권<br>맞춤<br>실전 콘텐츠</span></a>
                        </div>
					</li>
                </ul>
            </div>
        </div>
		<!-- //nav -->
    </div>
    <!--// cont02 -->

    <!--cont03-->
    <div class="cont03">
        <div class="inner03">
            <p class="mb55"><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont03_tit.png" alt="면학분위기로 소문난 바른공부 자습전용관" /></p>
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular_go/cont03_cont01.png" alt="" /></p>
        </div>
    </div>
    <!--//cont03-->

    <!--cont04-->
    <div class="cont04">
        <div class="inner04">
            <% If sCampusCode = "CD0250" Then '부천 %>
            <p class="mb55"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular_go/cont04_tit.png" alt="최상위권 수준별 맞춤 단과" /></p>
            <% Else %>
            <p class="mb55"><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont04_tit.png" alt="최상위권 수준별 맞춤 단과" /></p>
            <% End If %>
        </div>
        <!-- 강사진 롤링 -->
        <!--#include virtual="/intro/2023/regular_go/teacher_slide.asp"-->
        <!-- //강사진 롤링 -->
    </div>
    <!--//cont04-->

    <!--cont05-->
    <div class="cont05">
        <div class="inner05">
            <% If sCampusCode = "CD0244" Then '분당 %>
            <p class="mb55"><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular_go/cont05_tit.png" alt="입시 담임선생님의 철저한 1:1 관리" /></p>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <p class="mb55"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular_go/cont05_tit.png" alt="입시 담임선생님의 철저한 1:1 관리" /></p>
            <% Else %>
            <p class="mb55"><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont05_tit.png" alt="입시 담임선생님의 철저한 1:1 관리" /></p>
            <% End If %>
            <div class="tab-month js-bt-tab">
                <span class="on">3월</span>
                <span>4월</span>
                <span>5월</span>
                <span>6월</span>
                <span>7월</span>
                <span>8월</span>
                <span>9월</span>
                <span>10월</span>
                <span>11월</span>
                <span>12월</span>
            </div>
            <!-- 3월 -->
            <div class="tbl-month js-tab-cont on">
                <table>
                    <colgroup>
                        <col style="width:10%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>수시</th>
                            <% If sCampusCode = "CD0249" Then '영통 %>
                            <td>-  내신 집중 관리 & 수시 지원을 위한 <strong>서류 관련 담임선생님과의 1:1 상담 진행</strong></td>
                            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
                            <td>-  내신 집중 관리 & 수시 지원을 위한 <strong>서류 검토 및 1:1 상담 진행</strong></td>
                            <% ElseIf sCampusCode = "CD0341" or sCampusCode = "CD0340" or sCampusCode = "CD0344" or sCampusCode = "CD0345" or sCampusCode = "CD0346" Then '코어광주/대전/전주/창원/청주 %>
                            <td>-  단과 집중 관리 & 수시 지원을 위한 <strong>서류 관련 담임선생님과의 1:1 상담 진행</strong></td>
                            <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
                            <td>-  단과 집중 관리 & 수시 지원을 위한 <strong>서류 관련 담임선생님과의 1:1 상담 진행</strong><br>
                                - 담임선생님과 <strong>수시 목표대학 점검 및 방향 수립</strong>
                            </td>
                            <% Else %>
                            <td>-  내신 집중 관리 & 수시 지원을 위한 <strong>서류 관련 담임선생님과의 1:1 상담 진행</strong></td>
                            <% End If %>
                        </tr>
                        <tr>
                            <th>정시</th>
                            <% If sCampusCode = "CD0343" Then '코어원주 %>
                            <td>- 서울시 교육청 및 메가X대성 더 프리미엄 모의고사 응시에 따른 성적 분석<br>
                                - 담임선생님과 <strong>취약 과목(파트) 점검 후 학습전략 수립</strong><br>
                                - 담임선생님과 <strong>정시 목표대학 점검 및 방향 수립</strong></td>
                            <% Else %>
                            <td>- 서울시 교육청 및 메가X대성 더 프리미엄 모의고사 응시에 따른 성적 분석<br>
                                - 담임선생님과 <strong>취약 과목(파트) 점검 후 학습전략 수립</strong></td>
                            <% End If %>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 4월 -->
            <div class="tbl-month js-tab-cont">
                <table>
                    <colgroup>
                        <col style="width:10%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>수시</th>
                            <td>- 메가X대성 더 프리미엄 모의고사 응시<br>
                                - 담임선생님과 <strong>수시 최저등급 충족을 위한 전략 수립</strong>
                            </td>
                        </tr>
                        <tr>
                            <th>정시</th>
                            <% If sCampusCode = "CD0343" Then '코어원주 %>
                            <td>
                                - 메가X대성 더 프리미엄 모의고사 응시에 따른 성적 분석<br>
                                - 담임선생님과 <strong>취약 과목(파트) 점검 후 학습전략 수립</strong><br>
                                - 전월대비 과목별 성취도 분석
                            </td>
                            <% Else %>
                            <td>
                                - 메가X대성 더 프리미엄 모의고사 응시에 따른 성적 분석<br>
                                - 담임선생님과 <strong>취약 과목(파트) 점검 후 학습전략 수립</strong>
                            </td>
                            <% End If %>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 5월 -->
            <div class="tbl-month js-tab-cont">
                <table>
                    <colgroup>
                        <col style="width:10%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>공통</th>
                            <td>
                                - 메가X대성 더 프리미엄 모의고사 응시<br>
                                - 6월 평가원 대비 <strong>과목별 성취도 파악 및  취약 과목(파트) 점검</strong>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 6월 -->
            <div class="tbl-month js-tab-cont">
                <table>
                    <colgroup>
                        <col style="width:10%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>수시</th>
                            <td>
                                - 6월 평가원 모의고사 응시<br>
                                - 담임선생님과 6평 결과를 통한 <strong>목표 대학 최저 등급 충족 가능여부 파악 및 실 지원 대학 탐색</strong>
                            </td>
                        </tr>
                        <tr>
                            <th>정시</th>
                            <td>
                                - 6월 평가원 모의고사 응시에 따른 성적 분석<br>
                                - 담임선생님과 6월 평가원 <strong>과목별 성취도 파악 및 취약 과목(파트) 점검 후 학습전략 수립</strong>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 7월 -->
            <div class="tbl-month js-tab-cont">
                <table>
                    <colgroup>
                        <col style="width:10%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>수시</th>
                            <% If sCampusCode = "CD0244" Then '분당 %>
                            <td>
                                - 전국학원연합 모의고사 응시<br>
                                - 여름방학 기간 <strong>최저 등급 대비 집중 학습</strong>을 위해 <strong> 썸머특강 수강</strong><br>
                                - 원내 입시 설명회(수시) 및 특강 수강 등을 통해 <strong>수시 전략 수립</strong>
                            </td>
                            <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
                            <td>
                                - 전국학원연합 모의고사 응시<br>
                                - 여름방학 기간 <strong>최저 등급 대비 학생</strong>을 위해 <strong> 재학생 단과 수강</strong><br>
                                - 원내 입시 설명회(수시) 및 특강 수강 등을 통해 <strong>수시 전략 수립</strong>
                            </td>
                            <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
                            <td>
                                - 전국학원연합 모의고사 응시<br>
                                - 여름방학 기간 <strong>최저 등급 대비 학습</strong>을 위해 <strong> 재학생 단과 수강</strong><br>
                                - 원내 입시 설명회(수시) 및 특강 수강 등을 통해 <strong>수시 전략 수립</strong>
                            </td>
                            <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
                            <td>
                                - 전국학원연합 모의고사 응시<br>
                                - 여름방학 기간 <strong>최저 등급 대비 학습</strong>을 위해 <strong> 재학생 단과 수강</strong><br>
                                - 원내 입시 설명회(수시) 및 특강 수강 등을 통해 <strong>수시 전략 수립</strong>
                            </td>
                            <% ElseIf sCampusCode = "CD0340" or sCampusCode = "CD0343" or sCampusCode = "CD0346" Then '코어광주/원주/청주 %>
                            <td>
                                - 전국학원연합 모의고사 응시<br>
                                - 여름방학 기간 <strong>최저 등급 대비 학습</strong>을 위해 <strong> 재학생 단과 수강</strong><br>
                                - 원내 입시 설명회(수시) 및 특강 수강 등을 통해 <strong>수시 전략 수립</strong>
                            </td>
                            <% Else %>
                            <td>
                                - 전국학원연합 모의고사 응시<br>
                                - 여름방학 기간 <strong>최저 등급 대비 집중 학습</strong>을 위해 <strong> 재학생 특강(단기 완성) 수강</strong><br>
                                - 원내 입시 설명회(수시) 및 특강 수강 등을 통해 <strong>수시 전략 수립</strong>
                            </td>
                            <% End If %>
                        </tr>
                        <tr>
                            <th>정시</th>
                            <% If sCampusCode = "CD0244" Then '분당 %>
                            <td>
                                - 전국학원연합 모의고사 응시에 따른 성적 분석<br>
                                - 여름방학 기간 <strong>취약 과목(파트) 집중 학습</strong>을 위해 <strong> 썸머특강 수강</strong><br>
                                - 담임선생님과 <strong>과목별 커리큘럼 및 학습상태/방법 점검</strong>
                            </td>
                            <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
                            <td>
                                - 전국학원연합 모의고사 응시에 따른 성적 분석<br>
                                - 여름방학 기간 <strong>취약 과목(파트) 학습</strong>을 위해 <strong> 재학생 단과 수강</strong><br>
                                - 담임선생님과 <strong>과목별 커리큘럼 및 학습상태/방법 점검</strong>
                            </td>
                            <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
                            <td>
                                - 전국학원연합 모의고사 응시에 따른 성적 분석<br>
                                - 여름방학 기간 <strong>취약 과목(파트) 학습</strong>을 위해 <strong> 재학생 단과 수강</strong><br>
                                - 담임선생님과 <strong>과목별 커리큘럼 및 학습상태/방법 점검</strong>
                            </td>
                            <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
                            <td>
                                - 전국학원연합 모의고사 응시에 따른 성적 분석<br>
                                - 여름방학 기간 <strong>취약 과목(파트) 학습</strong>을 위해 <strong> 재학생 단과 수강</strong><br>
                                - 담임선생님과 <strong>과목별 커리큘럼 및 학습상태/방법 점검</strong>
                            </td>
                            <% ElseIf sCampusCode = "CD0340" or sCampusCode = "CD0343" or sCampusCode = "CD0346" Then '코어광주/원주/청주 %>
                            <td>
                                - 전국학원연합 모의고사 응시에 따른 성적 분석<br>
                                - 여름방학 기간 <strong>취약 과목(파트) 집중 학습</strong>을 위해 <strong> 재학생 단과 수강</strong><br>
                                - 담임선생님과 <strong>과목별 커리큘럼 및 학습상태/방법 점검</strong>
                            </td>
                            <% Else %>
                            <td>
                                - 전국학원연합 모의고사 응시에 따른 성적 분석<br>
                                - 여름방학 기간 <strong>취약 과목(파트) 집중 학습</strong>을 위해 <strong> 재학생 특강(단기 완성) 수강</strong><br>
                                - 담임선생님과 <strong>과목별 커리큘럼 및 학습상태/방법 점검</strong>
                            </td>
                            <% End If %>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 8월 -->
            <div class="tbl-month js-tab-cont">
                <table>
                    <colgroup>
                        <col style="width:10%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>수시</th>
                            <% If sCampusCode = "CD0244" Then '분당 %>
                            <td>
                                - 메가X대성 더 프리미엄 모의고사 응시<br>
                                - 여름방학 기간 <strong>최저 등급 대비 집중 학습</strong>을 위해 <strong> 썸머특강 수강</strong><br>
                                - <strong>수시 원서접수 1:1 컨설팅</strong> (1차)
                            </td>
                            <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
                            <td>
                                - 메가X대성 더 프리미엄 모의고사 응시<br>
                                - 여름방학 기간 <strong>최저 등급 대비 학생</strong>을 위해 <strong> 재학생 단과 수강</strong><br>
                                - <strong>수시 원서접수 1:1 컨설팅</strong> (1차)
                            </td>
                            <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
                            <td>
                                - 메가X대성 더 프리미엄 모의고사 응시<br>
                                - 여름방학 기간 <strong>최저 등급 대비 학습</strong>을 위해 <strong> 재학생 단과 수강</strong><br>
                                - <strong>수시 원서접수 1:1 컨설팅</strong> (1차)
                            </td>
                            <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
                            <td>
                                - 메가X대성 더 프리미엄 모의고사 응시<br>
                                - 여름방학 기간 <strong>최저 등급 대비 학습</strong>을 위해 <strong> 재학생 단과 수강</strong><br>
                                - <strong>수시 원서접수 1:1 컨설팅</strong> (1차)
                            </td>
                            <% ElseIf sCampusCode = "CD0340" or sCampusCode = "CD0343" or sCampusCode = "CD0346" Then '코어광주/원주/청주 %>
                            <td>
                                - 메가X대성 더 프리미엄 모의고사 응시<br>
                                - 여름방학 기간 <strong>최저 등급 대비 학습</strong>을 위해 <strong> 재학생 단과 수강</strong><br>
                                - <strong>수시 원서접수 1:1 컨설팅</strong> (1차)
                            </td>
                            <% Else %>
                            <td>
                                - 메가X대성 더 프리미엄 모의고사 응시<br>
                                - 여름방학 기간 <strong>최저 등급 대비 집중 학습</strong>을 위해 <strong> 재학생 특강(단기 완성) 수강</strong><br>
                                - <strong>수시 원서접수 1:1 컨설팅</strong> (1차)
                            </td>
                            <% End If %>
                        </tr>
                        <tr>
                            <th>정시</th>
                            <% If sCampusCode = "CD0244" Then '분당 %>
                            <td>
                                - 메가X대성 더 프리미엄 모의고사 응시에 따른 성적 분석<br>
                                - 여름방학 기간 <strong>취약 과목(파트) 집중 학습</strong>을 위해 <strong> 썸머특강 수강</strong><br>
                                - 담임선생님과 <strong>과목별 커리큘럼 및 학습상태/방법 점검</strong>
                            </td>
                            <% ElseIf sCampusCode = "CD0341" or sCampusCode = "CD0344" Then '코어대전/전주 %>
                            <td>
                                - 메가X대성 더 프리미엄 모의고사 응시에 따른 성적 분석<br>
                                - 여름방학 기간 <strong>취약 과목(파트) 학습</strong>을 위해 <strong> 재학생 단과 수강</strong><br>
                                - 담임선생님과 <strong>과목별 커리큘럼 및 학습상태/방법 점검</strong>
                            </td>
                            <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
                            <td>
                                - 메가X대성 더 프리미엄 모의고사 응시에 따른 성적 분석<br>
                                - 여름방학 기간 <strong>취약 과목(파트) 학습</strong>을 위해 <strong> 재학생 단과 수강</strong><br>
                                - 담임선생님과 <strong>과목별 커리큘럼 및 학습상태/방법 점검</strong>
                            </td>
                            <% ElseIf sCampusCode = "CD0340" or sCampusCode = "CD0343" or sCampusCode = "CD0346" Then '코어광주/원주/청주 %>
                            <td>
                                - 메가X대성 더 프리미엄 모의고사 응시에 따른 성적 분석<br>
                                - 여름방학 기간 <strong>취약 과목(파트) 집중 학습</strong>을 위해 <strong> 재학생 단과 수강</strong><br>
                                - 담임선생님과 <strong>과목별 커리큘럼 및 학습상태/방법 점검</strong>
                            </td>
                            <% Else %>
                            <td>
                                - 메가X대성 더 프리미엄 모의고사 응시에 따른 성적 분석<br>
                                - 여름방학 기간 <strong>취약 과목(파트) 집중 학습</strong>을 위해 <strong> 재학생 특강(단기 완성) 수강</strong><br>
                                - 담임선생님과 <strong>과목별 커리큘럼 및 학습상태/방법 점검</strong>
                            </td>
                            <% End If %>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 9월 -->
            <div class="tbl-month js-tab-cont">
                <table>
                    <colgroup>
                        <col style="width:10%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>수시</th>
                            <td>
                                - 9월 평가원 모의고사 응시<br>
                                - 담임선생님과 9평 결과를 통한 <strong>수시 원서접수 1:1 컨설팅</strong> (2차)
                            </td>
                        </tr>
                        <tr>
                            <th>정시</th>
                            <td>
                                - 9월 평가원 모의고사 응시에 따른 성적 분석<br>
                                - 담임선생님과 9월 평가원 <strong>과목별 성취도 파악 및 취약 과목(파트) 점검 후 학습전략 수립</strong>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 10월 -->
            <div class="tbl-month js-tab-cont">
                <table>
                    <colgroup>
                        <col style="width:10%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>수시</th>
                            <td>
                                - 메가X대성 더 프리미엄 모의고사 응시<br>
                                - <strong>수시 최저등급 충족을 위한 최종 전략 수립</strong>
                            </td>
                        </tr>
                        <tr>
                            <th>정시</th>
                            <td>
                                - 메가X대성 더 프리미엄 모의고사 응시에 따른 성적 분석<br>
                                - 수능 응시 전 <strong>취약 과목(파트) 최종 점검 및 전략 수립</strong>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 11월 -->
            <div class="tbl-month js-tab-cont">
                <table>
                    <colgroup>
                        <col style="width:10%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>공통</th>
                            <td>
                                - 메가X대성 더 프리미엄 모의고사 응시를 통한 <strong>최종 실전 점검</strong><br>
                                - 수능 응시 및 가채점 결과를 통한 <strong>정시 지원전략 1차 1:1 배치상담 진행</strong> (※ 12월 성적 발표 후 2차 1:1 배치상담 진행)
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 12월 -->
            <div class="tbl-month js-tab-cont">
                <table>
                    <colgroup>
                        <col style="width:10%">
                        <col style="width:90%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>공통</th>
                            <td>- 수능 실채점 결과를 통한 <strong>정시 지원전략 최종 1:1 배치상담 진행</strong></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <% If sCampusCode = "CD0244" Then '분당 %>
            <p class="mt60"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular_go/cont05_img01.png" alt="" /></p>
            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
            <p class="remark03">
                ※ 위 일정은 학원 일정에 의해 변경 될 수 있습니다.<br>
                ※ 고2, 고1 재학생 상담은 학년에 맞춘 입시/학습 상담이 진행됩니다.
            </p>
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular_go/cont05_img01.png" alt="" /></p>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <p class="mt60"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular_go/cont05_img01.png" alt="" /></p>
            <% Else %>
            <p class="remark03">※ 고2, 고1 재학생 상담은 학년에 맞춘 입시/학습 상담이 진행됩니다.</p>
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular_go/cont05_img01.png" alt="" /></p>
            <% End If %>
        </div>
    </div>
    <!--//cont05-->

    <!--cont06-->
    <div class="cont06">
        <div class="inner06">
            <p class="mb55"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular_go/cont06_tit.png" alt="러셀 실전 콘텐츠" /></p>
            <% If sCampusCode = "CD0340" or sCampusCode = "CD0341" or sCampusCode = "CD0343" or sCampusCode = "CD0344" or sCampusCode = "CD0345" or sCampusCode = "CD0346" Then '코어광주/대전/원주/전주/창원/청주일 경우 %>
            <ul class="r-con-list">
                <li class="core-badge">
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_img03.png" alt="러셀CORE 위클리 모의고사" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_stit03.png" alt="" usemap="#r_cont03" />
                            <map name="r_cont03">
                                <area shape="rect" coords="450,32,574,60" href="/intro/2022/weekly/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>검증된 출제진</strong>
                                <span>러셀학원/메가스터디인강<br>
                                    선생님들이 직접 출제
                                </span>
                            </li>
                            <li>
                                <strong>우수 문항 구성</strong>
                                <span>단원별 필수 문항과<br>
                                    기출 변형+킬러문항으로 구성
                                </span>
                            </li>
                            <li>
                                <strong>1월~수능까지 매주 시행
                                </strong>
                                <span>매주 모의고사를 진행하여<br>문제풀이에 대한 감각 유지
                                </span>
                            </li>
                            <li>
                                <strong>실전 같은 긴장감 유지
                                </strong>
                                <span>매주 같은 시간에<br>
                                    전국 CORE 학원 재원생 대상<br>
                                    모의고사 동시 진행</span>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_img.png" alt="퀄 모의고사" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_stit01.png" alt="" usemap="#r_cont" />
                            <map name="r_cont">
                                <area shape="rect" coords="251,32,375,59" href="/event/2021/quel/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>최신 경향 반영</strong>
                                <span>개편 교육과정 반영<br>
                                    평가원 최신 경향 반영
                                </span>
                            </li>
                            <li>
                                <strong>평가원 형식/내용 복제</strong>
                                <span>평가원 출제 원칙 반영<br>
                                    수능과 동일한 구성
                                </span>
                            </li>
                            <li>
                                <strong>검증된 집필진
                                </strong>
                                <span>과목별 전문 출제진 개발<br>
                                    메가스터디 강사진 검토
                                </span>
                            </li>
                            <li>
                                <strong>메가스터디 온/오프<br>
                                    선생님 해설강의
                                </strong>
                            </li>
                            <li>
                                <strong>국수영탐ⅠⅡ구성</strong>
                                <span>최상위권 수험생을<br>
                                    위한 과탐Ⅱ 시행
                                </span>
                            </li>
                            <li>
                                <strong>강도 있는 실전 훈련</strong>
                                <span>실전 수능보다<br>
                                    다소 높은 난이도로 구성
                                </span>
                            </li>
                            <li>
                                <strong>최상위권과의 경쟁
                                </strong>
                                <span>러셀학원과 메가스터디학원<br>
                                    재원생 모두 응시
                                </span>
                            </li>
                            <li>
                                <strong>시험 분석 및 전략 수립</strong>
                                <span>온라인 풀서비스 제공<br>
                                    성적표 및 해설지 제공
                                </span>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_img02.png" alt="메가X대성 더 프리미엄 모의고사" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_stit02.png" alt="" usemap="#r_cont02" />
                            <map name="r_cont02">
                                <area shape="rect" coords="464,32,586,59" href="/intro/2022/premium/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>더 완벽하게!
                                </strong>
                                <span>평가원/교육청 모의고사<br>
                                    출제 경험이 있는 집필진
                                </span>
                            </li>
                            <li>
                                <strong>더 정확하게!
                                </strong>
                                <span>전국 최다 인원 응시로<br>
                                    정확한 객관적인 위치 확인
                                </span>
                            </li>
                            <li>
                                <strong>더 풍부하게!
                                </strong>
                                <span>국어, 수학, 영어, 한국사,<br>
                                    탐구영역까지 전 과목 구성
                                </span>
                            </li>
                            <li>
                                <strong>더 충분하게!
                                </strong>
                                <span>
                                    연간 총 7회 구성으로<br>
                                실전 훈련 및 감각 유지
                                </span>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_img04.png" alt="월간 학습지(월간 장영진)" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_stit04.png" alt="" usemap="#r_cont04" />
                            <map name="r_cont04">
                                <area shape="rect" coords="363,32,486,59" href="/intro/info/monthly/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>100% 자작 문항<br>모의고사+상세한 해설</strong>
                                <span>
                                    월별 학습목표에 맞춘<br>
                                    장영진 선생님의<br>
                                    100% 자작 문항
                                </span>
                            </li>
                            <li>
                                <strong>장영진&연구소의 수학 칼럼<br>
                                    러셀 입시담임팀의 입시 칼럼</strong>
                                <span>수험생활에 도움되는<br>
                                    다양한 정보 제공
                                </span>
                            </li>
                            <li>
                                <strong>최상위권 합격 선배 메시지
                                </strong>
                                <span>학습법, 인터뷰, 경험과<br>
                                    노하우가 담긴 상담 수록
                                </span>
                            </li>
                            <li>
                                <strong>매월 집체 모의고사
                                </strong>
                                <span>모의고사 진행 후<br>
                                    월별 누적 개인 성적표 제공<br>
                                    입시 담임선생님과 상담
                                </span>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "INTRO" Then '인트로 %>
            <ul class="r-con-list">
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_img.png" alt="퀄 모의고사" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_stit01.png" alt="" usemap="#r_cont" />
                            <map name="r_cont">
                                <area shape="rect" coords="251,32,375,59" href="/event/2021/quel/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>최신 경향 반영</strong>
                                <span>개편 교육과정 반영<br>
                                    평가원 최신 경향 반영
                                </span>
                            </li>
                            <li>
                                <strong>평가원 형식/내용 복제</strong>
                                <span>평가원 출제 원칙 반영<br>
                                    수능과 동일한 구성
                                </span>
                            </li>
                            <li>
                                <strong>검증된 집필진
                                </strong>
                                <span>과목별 전문 출제진 개발<br>
                                    메가스터디 강사진 검토
                                </span>
                            </li>
                            <li>
                                <strong>메가스터디 온/오프<br>
                                    선생님 해설강의
                                </strong>
                            </li>
                            <li>
                                <strong>국수영탐ⅠⅡ구성</strong>
                                <span>최상위권 수험생을<br>
                                    위한 과탐Ⅱ 시행
                                </span>
                            </li>
                            <li>
                                <strong>강도 있는 실전 훈련</strong>
                                <span>실전 수능보다<br>
                                    다소 높은 난이도로 구성
                                </span>
                            </li>
                            <li>
                                <strong>최상위권과의 경쟁
                                </strong>
                                <span>러셀학원과 메가스터디학원<br>
                                    재원생 모두 응시
                                </span>
                            </li>
                            <li>
                                <strong>시험 분석 및 전략 수립</strong>
                                <span>온라인 풀서비스 제공<br>
                                    성적표 및 해설지 제공
                                </span>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_img02.png" alt="메가X대성 더 프리미엄 모의고사" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_stit02.png" alt="" usemap="#r_cont02" />
                            <map name="r_cont02">
                                <area shape="rect" coords="464,32,586,59" href="/intro/2022/premium/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>더 완벽하게!
                                </strong>
                                <span>평가원/교육청 모의고사<br>
                                    출제 경험이 있는 집필진
                                </span>
                            </li>
                            <li>
                                <strong>더 정확하게!
                                </strong>
                                <span>전국 최다 인원 응시로<br>
                                    정확한 객관적인 위치 확인
                                </span>
                            </li>
                            <li>
                                <strong>더 풍부하게!
                                </strong>
                                <span>국어, 수학, 영어, 한국사,<br>
                                    탐구영역까지 전 과목 구성
                                </span>
                            </li>
                            <li>
                                <strong>더 충분하게!
                                </strong>
                                <span>
                                    연간 총 7회 구성으로<br>
                                실전 훈련 및 감각 유지
                                </span>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="core-badge">
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_img03.png" alt="러셀CORE 위클리 모의고사" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_stit03.png" alt="" usemap="#r_cont03" />
                            <map name="r_cont03">
                                <area shape="rect" coords="450,32,574,60" href="/intro/2022/weekly/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>검증된 출제진</strong>
                                <span>러셀학원/메가스터디인강<br>
                                    선생님들이 직접 출제
                                </span>
                            </li>
                            <li>
                                <strong>우수 문항 구성</strong>
                                <span>단원별 필수 문항과<br>
                                    기출 변형+킬러문항으로 구성
                                </span>
                            </li>
                            <li>
                                <strong>1월~수능까지 매주 시행
                                </strong>
                                <span>매주 모의고사를 진행하여<br>문제풀이에 대한 감각 유지
                                </span>
                            </li>
                            <li>
                                <strong>실전 같은 긴장감 유지
                                </strong>
                                <span>매주 같은 시간에<br>
                                    전국 CORE 학원 재원생 대상<br>
                                    모의고사 동시 진행</span>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_img04.png" alt="월간 학습지(월간 장영진)" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_stit04.png" alt="" usemap="#r_cont04" />
                            <map name="r_cont04">
                                <area shape="rect" coords="363,32,486,59" href="/intro/info/monthly/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>100% 자작 문항<br>모의고사+상세한 해설</strong>
                                <span>
                                    월별 학습목표에 맞춘<br>
                                    장영진 선생님의<br>
                                    100% 자작 문항
                                </span>
                            </li>
                            <li>
                                <strong>장영진&연구소의 수학 칼럼<br>
                                    러셀 입시담임팀의 입시 칼럼</strong>
                                <span>수험생활에 도움되는<br>
                                    다양한 정보 제공
                                </span>
                            </li>
                            <li>
                                <strong>최상위권 합격 선배 메시지
                                </strong>
                                <span>학습법, 인터뷰, 경험과<br>
                                    노하우가 담긴 상담 수록
                                </span>
                            </li>
                            <li>
                                <strong>매월 집체 모의고사
                                </strong>
                                <span>모의고사 진행 후<br>
                                    월별 누적 개인 성적표 제공<br>
                                    입시 담임선생님과 상담
                                </span>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
            <% Else %>
            <ul class="r-con-list">
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_img.png" alt="퀄 모의고사" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_stit01.png" alt="" usemap="#r_cont" />
                            <map name="r_cont">
                                <area shape="rect" coords="251,32,375,59" href="/event/2021/quel/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>최신 경향 반영</strong>
                                <span>개편 교육과정 반영<br>
                                    평가원 최신 경향 반영
                                </span>
                            </li>
                            <li>
                                <strong>평가원 형식/내용 복제</strong>
                                <span>평가원 출제 원칙 반영<br>
                                    수능과 동일한 구성
                                </span>
                            </li>
                            <li>
                                <strong>검증된 집필진
                                </strong>
                                <span>과목별 전문 출제진 개발<br>
                                    메가스터디 강사진 검토
                                </span>
                            </li>
                            <li>
                                <strong>메가스터디 온/오프<br>
                                    선생님 해설강의
                                </strong>
                            </li>
                            <li>
                                <strong>국수영탐ⅠⅡ구성</strong>
                                <span>최상위권 수험생을<br>
                                    위한 과탐Ⅱ 시행
                                </span>
                            </li>
                            <li>
                                <strong>강도 있는 실전 훈련</strong>
                                <span>실전 수능보다<br>
                                    다소 높은 난이도로 구성
                                </span>
                            </li>
                            <li>
                                <strong>최상위권과의 경쟁
                                </strong>
                                <span>러셀학원과 메가스터디학원<br>
                                    재원생 모두 응시
                                </span>
                            </li>
                            <li>
                                <strong>시험 분석 및 전략 수립</strong>
                                <span>온라인 풀서비스 제공<br>
                                    성적표 및 해설지 제공
                                </span>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_img02.png" alt="메가X대성 더 프리미엄 모의고사" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_stit02.png" alt="" usemap="#r_cont02" />
                            <map name="r_cont02">
                                <area shape="rect" coords="464,32,586,59" href="/intro/2022/premium/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>더 완벽하게!
                                </strong>
                                <span>평가원/교육청 모의고사<br>
                                    출제 경험이 있는 집필진
                                </span>
                            </li>
                            <li>
                                <strong>더 정확하게!
                                </strong>
                                <span>전국 최다 인원 응시로<br>
                                    정확한 객관적인 위치 확인
                                </span>
                            </li>
                            <li>
                                <strong>더 풍부하게!
                                </strong>
                                <span>국어, 수학, 영어, 한국사,<br>
                                    탐구영역까지 전 과목 구성
                                </span>
                            </li>
                            <li>
                                <strong>더 충분하게!
                                </strong>
                                <span>
                                    연간 총 7회 구성으로<br>
                                실전 훈련 및 감각 유지
                                </span>
                            </li>
                        </ul>
                    </div>
                </li>
                <% If sCampusCode = "CD0342" Then '대구 %>
                <li class="core-badge dg">
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_img03.png" alt="러셀CORE 위클리 모의고사" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/russel_dg/2023/regular_go/cont06_stit03.png" alt="" usemap="#r_cont03" />
                            <map name="r_cont03">
                                <area shape="rect" coords="450,32,574,60" href="/intro/2022/weekly/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>검증된 출제진</strong>
                                <span>러셀학원/메가스터디인강<br>
                                    선생님들이 직접 출제
                                </span>
                            </li>
                            <li>
                                <strong>우수 문항 구성</strong>
                                <span>단원별 필수 문항과<br>
                                    기출 변형+킬러문항으로 구성
                                </span>
                            </li>
                            <li>
                                <strong>1월~수능까지 매주 시행
                                </strong>
                                <span>매주 모의고사를 진행하여<br>문제풀이에 대한 감각 유지</span>
                            </li>
                            <li>
                                <strong>실전 같은 긴장감 유지
                                </strong>
                                <span>매주 같은 시간에<br>
                                    러셀 대구 & CORE 학원<br>재원생 대상<br>
                                    모의고사 동시 진행</span>
                            </li>
                        </ul>
                    </div>
                </li>
                <% ElseIf sCampusCode = "CD0250" Then '부천 %>
                <li class="core-badge bc">
                    <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular_go/cont06_img03.png" alt="러셀CORE 위클리 모의고사" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular_go/cont06_stit03.png" alt="" usemap="#r_cont03" />
                            <map name="r_cont03">
                                <area shape="rect" coords="450,32,574,60" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>러셀부천 과목별 <br>대표 선생님이 직접 출제</strong>
                            </li>
                            <li>
                                <strong>고퀄리티 문항</strong>
                                <span>최신 출제 경향과<br>
                                    시기별 학습패턴을 반영
                                </span>
                            </li>
                            <li>
                                <strong>매일 정해진 시간 응시로<br>공부 습관 형성
                                </strong>
                            </li>
                        </ul>
                    </div>
                </li>
                <% End If %>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_img04.png" alt="월간 학습지(월간 장영진)" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont06_stit04.png" alt="" usemap="#r_cont04" />
                            <map name="r_cont04">
                                <area shape="rect" coords="363,32,486,59" href="/intro/info/monthly/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>100% 자작 문항<br>모의고사+상세한 해설</strong>
                                <span>
                                    월별 학습목표에 맞춘<br>
                                    장영진 선생님의<br>
                                    100% 자작 문항
                                </span>
                            </li>
                            <li>
                                <strong>장영진&연구소의 수학 칼럼<br>
                                    러셀 입시담임팀의 입시 칼럼</strong>
                                <span>수험생활에 도움되는<br>
                                    다양한 정보 제공
                                </span>
                            </li>
                            <li>
                                <strong>최상위권 합격 선배 메시지
                                </strong>
                                <span>학습법, 인터뷰, 경험과<br>
                                    노하우가 담긴 상담 수록
                                </span>
                            </li>
                            <li>
                                <strong>매월 집체 모의고사
                                </strong>
                                <span>모의고사 진행 후<br>
                                    월별 누적 개인 성적표 제공<br>
                                    입시 담임선생님과 상담
                                </span>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
            <% End If %>
        </div>
    </div>
    <!--//cont06-->
    <p class="scroll-end" style="display: flex;justify-content: center;background-color: #4b5bf6;"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular_go/line_banner.jpg" alt="여러분의 최상위권 대입 성공이 확실해 집니다." /></p>
</div>