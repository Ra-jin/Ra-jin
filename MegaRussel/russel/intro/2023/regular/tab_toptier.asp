<div class="cont js-cont">
    <!-- cont01 -->
    <div class="cont01">
        <div class="inner">
            <% if isCore = 1 Then '코어 일경우 %>
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont01_tit_2.jpg" alt="전국의 최상위권 학생은 러셀코어에 집결합니다." /></p>
            <% Else %>
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont01_tit.jpg" alt="전국의 최상위권 학생은 러셀에 집결합니다." /></p>
            <% End If %>
            <p class="mt90"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont01_tit02.png" alt="4년 연속 수능 만점자 배출" /></p>
            <ul class="perfect-list">
                <li>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/regular/per_01.jpg" alt="" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/regular/per_01_on.jpg" alt="" /></span>
                </li>
                <% If sCampusCode = "CD0244" Then '분당 %>
                <li>
                    <span><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/per_02.jpg" alt="" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/per_02_on.jpg" alt="" /></span>
                </li>
                <li>
                    <span><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/per_03.jpg" alt="" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/per_03_on.jpg" alt="" /></span>
                </li>
                <% Else %>
                <li>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/regular/per_02.jpg" alt="" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/regular/per_02_on.jpg" alt="" /></span>
                </li>
                <li>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/regular/per_03.jpg" alt="" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/regular/per_03_on.jpg" alt="" /></span>
                </li>
                <% End If %>
                <li>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/regular/per_04.jpg" alt="" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/regular/per_04_on.jpg" alt="" /></span>
                </li>
                <li>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/regular/per_05.jpg" alt="" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/regular/per_05_on.jpg" alt="" /></span>
                </li>
                <li>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/regular/per_06.jpg" alt="" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/regular/per_06_on.jpg" alt="" /></span>
                </li>
            </ul>
            <p class="r-txt">*2018,2019.2020,2021 수능 실채점 기준(러셀 강남, 러셀 대치, 러셀 분당 배출)<br>*2021 수능 만점자는 개인 정보 활용에 동의하지 않아,  전국 수석으로 대체하였습니다.
            </p>
            
            <% If sCampusCode = "CD0001" Then '대치 %>
            <div class="count">
                <p class="tit02"><strong>최상위권이 집결하고, 결과로 증명하는</strong>러셀 대치</p>
                <div class="result-box dc">
                    <ul class="exam-result">
                        <li>
                            <p>
                                2018,2020 <br>
                                <strong>수능 만점자 배출</strong><sup>1)</sup>
                            </p>
                        </li>
                        <li>
                            <p>
                                2022<br>서울대 7명,<br>연세대 6명 등<br>
                                <strong>메이저 의예과<br>총 17명 배출</strong><sup>2)</sup><br>
                                <span class="s-txt">* 메이저 의대: 서울대, 연세대(서울), 성균관대,<br>가톨릭대(성의), 울산대
                                </span>
                            </p>
                        </li>
                        <li>
                            <p>
                                2022<br>
                                서울대 의예과 7명 포함<br>
                                <strong>의치한수약 &amp;<br>서연고 367명 배출</strong><sup>3)</sup>
                            </p>
                        </li>
                        <li>
                            <p>
                                2021 수능 전국 수석<br>
                                <strong>[백분위] 배출</strong><sup>4)</sup>
                            </p>
                        </li>
                    </ul>
                </div>
                <div class="r-txt mt30">
                    1) 2020-2018 수능 실채점 기준<br>
                    2, 3)러셀 대치 바른공부 자습전용관 재원생 2022.02.10 기준<br>
                    4) 2021 수능 국어/수학/탐구2 자연계 백분위합 400점 (영어, 한국사 1등급)
                </div>
                <a href="https://russeldc.megastudy.net/russel/info/notice/notice_view.asp?Code=27192&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1" class="link-btn-bk"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/link_btn.png" alt="2023학년도 대입 합격 결과 보기" /></a>
            </div>
            <% ElseIf sCampusCode = "CD0245" Then '목동 %>
            <div class="count">
                <p class="tit02"><strong>매년 압도적으로 성장</strong>하는 러셀 목동</p>
                <div class="result-box md">
                    <ul class="exam-result">
                        <li>
                            <p>
                                2021,2022<br>
                                <strong>전년대비<br>의치한수약 400% 증가</strong><sup>1)</sup>
                                <span class="s-txt">2022학년도 의치한수 13명<br>2023학년도 의치한수약 67명<sup>1)</sup>
                                </span>
                            </p>
                        </li>
                        <li>
                            <p>
                                2022<br>
                                <strong>의치한수약 67명,<br>SKY 47명 배출</strong><sup>2)</sup><br>
                                <span class="s-txt">2022 주요 최상위권 대학 (교대 포함) 120명<br>그 외 주요 상위권 대학 350명
                                </span>
                            </p>
                        </li>
                        <li>
                            <p>
                                2020-2022<br>
                                <strong>3년 연속 서울대 의예과<br>목동 지역 유일 배출</strong><sup>3)</sup>
                            </p>
                        </li>
                    </ul>
                </div>
                <div class="r-txt mt30">
                    1)  목동 지역 학원_2023학년도 의치한수+서연고 최종 합격자 수 비교 기준 (홈페이지 대입 실적 기준 / 2021/03/10 기준)<br>
                    2) 목동 지역_2023학년도 의치한수+서연고 최종 합격자 수 비교 기준 (홈페이지 대입 실적 기준 / 2021.03.18 기준)<br>
                    3) 2023학년도 대입에 합격한 러셀  학원 재원생의 결과 (단과 수강생 제외 / 복수대학 합격 자포함, 최종 업데이트 2021.03.18 기준)
                </div>
                <a href="/russel_mokdong/event/2023/interview/index.asp" class="link-btn-bk"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/link_btn.png" alt="2023학년도 대입 합격 결과 보기" /></a>
            </div>
            <% ElseIf sCampusCode = "CD0249" Then '영통 %>
            <div class="count">
                <p class="tit02">20~22 <strong>3년 연속 수원 지역 최상위권 입결 1위,</strong> 러셀 영통</p>
                <div class="result-box yt">
                    <ul class="exam-result">
                        <li>
                            <p>
                                2020-2022 <strong>3년 연속<br>
                                수원지역<br>
                                최상위권 입결</strong><sup>1)</sup>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="1">1</strong><span>위</span>
                            </div>
                            <span class="s-txt02">의치한약수 133명/<br>
                                서울대 42명/SKY 166명
                            </span>
                        </li>
                        <li>
                            <p>
                                2020-2022 <strong>3년 연속<br>
                                수원지역<br>
                                의학계열 배출 1위</strong><sup>2)</sup>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="133">0</strong><span class="fz45">명</span>
                            </div>
                            <span class="s-txt02">20’ 의치한수 25명/<br>
                                21’ 의치한수 53명/22’ 의치한수약 55명
                            </span>
                        </li>
                        <li>
                            <p>
                                2020-2022 
                                <strong>서울대<br>합격자 수원지역<br>
                                배출 1위</strong><sup>3)</sup>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="42">0</strong><span class="fz45">명</span>
                            </div>
                            <span class="s-txt02">20’ 서울대 11명/<br>
                                21’ 서울대 18명/22’ 서울대 13명
                                
                            </span>
                        </li>
                        <li>
                            <p>
                                2020-2022<br><strong>주요<br>
                                    15개 대학 합격</strong><sup>4)</sup>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="486">0</strong><span class="fz45">명</span>
                            </div>
                            <span class="s-txt02">서울지역 내<br>
                                주요 15개 대 기준
                            </span>
                        </li>
                    </ul>
                </div>
                <div class="r-txt mt30">
                    1) 19-21년 수원지역 단과학원 의/치/한/수/약+SKY 최종 합격 비교 기준(홈페이지 대입 실적 기준, 2022.03.31 기준)<br>
                    2) 20,21,22 수시/정시 입결. 19-21년 러셀 영통 바른공부 자습전용관 재원생 기준<br>
                    3) 20-22 수시/정시 입결. 19-21년 러셀 영통 바른공부 자습전용관 재원생 기준<br>
                    4) 정시+수시 통합, 19-21년 러셀 영통 바른공부 자습전용관 재원생 기준<br>
                    * 복수대학 합격자 포함
                </div>
                <a href="/russel_yt/event/2023/hero/index.asp" class="link-btn-bk"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/link_btn.png" alt="2023학년도 대입 합격 결과 보기" /></a>
            </div>
            <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
            <div class="count">
                <p class="tit02">20~22 <strong>3년 연속 부산 지역 최상위권 입결 1위,</strong> 러셀 센텀</p>
                <div class="result-box yt">
                    <ul class="exam-result">
                        <li>
                            <p>
                                <strong>3년 연속 부산지역<br>
                                최상위권 입결</strong>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="1">1</strong><span>위</span><sup>1)</sup>
                            </div>
                            <span class="s-txt02">의치한약수 97명/서울대 3명/<br>연세대 15명 고려대 16명</span>
                        </li>
                        <li>
                            <p>
                                <strong>2년 연속 의학계열<br>
                                    부산지역 단일 학원/학년 기준 배출 1위
                                </strong>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="97">0</strong><span class="fz45">명</span><sup>2)</sup>
                            </div>
                            <span class="s-txt02">21’ 의치한수 70명<br>
                                22’ 의예과 53명/치한약수 44명
                            </span>
                        </li>
                        <li>
                            <p>
                                <strong>22'자연계열 재원생<br>
                                    의치한약수 대학 합격률</strong>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="44">0</strong><span class="fz45">%</span><sup>3)</sup>
                            </div>
                            <span class="s-txt02">의예과 53명/치예과 7명/<br>
                                한의예과 7명/약학과 23명/수의예과 7명                                
                            </span>
                        </li>
                        <li>
                            <p>2022 수능<br>
                                <strong>주요대학 합격</strong>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="254">0</strong><span class="fz45">명</span><sup>4)</sup>
                            </div>
                            <span class="s-txt02">22'재원생 기준 88%이상<br>
                                주요대학 합격                                
                            </span>
                        </li>
                    </ul>
                </div>
                <div class="r-txt mt30">
                    1) 19-21년 부산지역 단과학원 의/치/한/수/약+SKY 최종 합격 비교 기준(홈페이지 대입 실적 기준, 2022.02.28 기준)<br>
                    2) 21,22 수시/정시 입결. 20-21년 러셀 센텀 바른공부 자습전용관 재원생 기준<br>
                    3) 2022 의/치/한/수/약 합격률. 21년 러셀 센텀 바른공부 자습전용관 11월 재원생 기준<br>
                    4) 정시+수시 통합, 21년 러셀 센텀 바른공부 자습전용관 재원생 기준<br>
                    * 복수대학 합격자 포함
                </div>
                <a href="https://russelct.megastudy.net/russel/info/notice/notice_view.asp?Code=26592&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1" class="link-btn-bk"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/link_btn.png" alt="2023학년도 대입 합격 결과 보기" /></a>
            </div>
            <% ElseIf sCampusCode = "CD0247" Then '강남 %>
            <div class="count">
                <p class="tit02"><strong>최상위권이 집결하고, 결과로 증명</strong>하는 러셀 강남
                </p>
                <div class="result-box gn">
                    <ul class="exam-result">
                        <li>
                            <p>
                                <strong>5년 연속 서울대학교 의예과<br>합격생 배출 <sup>1)</sup></strong>
                            </p>
                        </li>
                        <li>
                            <p>
                                <strong>의약학계열 합격생 548명 배출 <sup>1)</sup></strong>
                            </p>
                            <span class="s-txt02">(서울대 의예 포함 의예과 300명)</span>
                        </li>
                        <!-- <li>
                            <p>
                                <strong>최상위권 대학 누적 합격생 수 1위 <sup>2)</sup></strong>
                                <span class="s-txt02">(의약학계열+최상위권 대학)</span>
                            </p>
                        </li> -->
                    </ul>
                </div>
                <div class="r-txt mt30">
                    1) 러셀 강남 바자관 재원생 18~23학년도 합격자 기준 (단과수강생 제외, 복수대학 합격자 포함)

                </div>
                <a href="/russel_gn/event/2022/hero/index.asp" class="link-btn-bk"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/link_btn.png" alt="2023학년도 대입 합격 결과 보기" /></a>
            </div>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <div class="count">
                <p class="tit02">20-22 
                    <strong>3년 연속 인천&middot;부천 지역 최상위권 입결 1위,</strong> 러셀 부천 <sup>1)</sup>
                </p>
                <div class="result-box bc">
                    <ul class="exam-result">
                        <li>
                            <p>
                                <strong>3년 연속 인천&middot;부천지역<br>
                                    최상위권 입결
                                </strong>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="1">1</strong><span>위</span>
                            </div>
                            <span class="s-txt02">의약학계열 34명/서울대 5명/<br>연고대 20명
                            </span>
                        </li>
                        <li>
                            <p>2022 수능<br>
                                <strong>
                                    의약학계열 합격</strong>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="34">0</strong><span class="fz45">명</span>
                            </div>
                            <span class="s-txt02">의예과 12명/치의예과 2명/<br>
                                한의예과 3명/수의예과 5명/약학과 12명
                            </span>
                        </li>
                        <li>
                            <p>2022 수능<br>
                                <strong>
                                    서울대&middot;연세대&middot;고려대 합격
                                    </strong>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="25">0</strong><span class="fz45">명</span>
                            </div>
                            <span class="s-txt02">서울대 수의예과 1명/<br>
                                연세대 의예과 1명 포함
                            </span>
                        </li>
                    </ul>
                </div>
                <div class="r-txt mt30">
                    1) 인천&middot;부천 지역 학원_2020~2023학년도 의약학계열+서연고 최종 합격자 수 비교 기준 (홈페이지 대입 실적 기준 / 2022.03.14 기준)

                </div>
                <a href="/russel_bc/event/2023/interview/index.asp" class="link-btn-bk"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/link_btn.png" alt="2023학년도 대입 합격 결과 보기" /></a>
            </div>
            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <div class="count">
                <p class="tit02">20-23 4년 연속 
                    <strong>분당 지역 최상위권 입결 압도적 1위,</strong> 러셀 분당
                </p>
                <div class="result-box bd">
                    <ul class="exam-result">
                        <li>
                            <p>2020-2023
                                <strong>4년 연속<br>분당지역<br>
                                    최상위권 입결
                                </strong><sup>1)</sup>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="1">1</strong><span>위</span>
                            </div>
                        </li>
                        <li>
                            <p>2020-2021 학년도<br>
                                <strong>
                                    수능 만점자 배출</strong><sup>2)</sup>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="3">0</strong><span class="fz45">명</span>
                            </div>
                            <span class="s-txt02">* 2022학년도 1명, 2020학년도 2명
                            </span>
                        </li>
                        <li>
                            <p>2020-2023년 누적<br>
                                <strong>
                                    의약학계열 합격자
                                    </strong><sup>3)</sup>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="310">0</strong><span class="fz45">명</span>
                            </div>
                            <span class="s-txt02" style="bottom:-45px">* 2023학년도 87명 합격<br>(서울대 포함 메이저 의대 14명)
                            </span>
                        </li>
                        <li>
                            <p>2020-2023년 누적<br>
                                <strong>서연고 합격자</strong>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="411">0</strong><span class="fz45">명</span>
                            </div>
                            <span class="s-txt02" style="bottom:-45px">* 2023학년도 104명 합격<br>(서울대학교 20명)
                            </span>
                        </li>
                    </ul>
                </div>
                <div class="r-txt mt30">
                    1) 분당지역 2020-2023년 의치한수약+SKY 합격생 수 기준 (2023.03.06 기준)<br>
                    2) 2020, 2022학년도 수능 실채점 기준 (2023.03.06 기준)<br>
                    3) 의약학계열 : 의예,치의예,한의예,약학대,수의예 기준
                </div>
                <a href="/russel_bundang/event/2023/interview/index.asp" class="link-btn-bk"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/link_btn.png" alt="2023학년도 대입 합격 결과 보기" /></a>
            </div>
            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
            <div class="count">
                <p class="tit02"><strong>계속되는 폭발적 성장,</strong> 러셀 중계</p>
                <div class="result-box jg">
                    <ul class="exam-result">
                        <li>
                            <p>
                                <strong>서울대 9명 합격<br>
                                    의치한약수 30명 합격<br>
                                    연세대 13명 합격<br>
                                    고려대 32명 합격
                                </strong>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="84">0</strong><span>명</span>
                            </div>
                        </li>
                        <li>
                            <p>
                                <strong>서성한이 47명 합격<br>
                                    중경외시 43명 합격<br>
                                    건동홍숙 외 기타 주요대학<br>100명 합격                                    
                                </strong>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="190">0</strong><span>명</span>
                            </div>
                        </li>
                        <li>
                            <p>
                                <strong>전년대비<br>
                                    최상위권 대학 진학률<br>
                                    대폭 증가
                                </strong>
                            </p>
                            <div class="counter-txt">
                                의치한수약 158%<br>
                                SKY 대학 129%
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="r-txt mt30">
                    ※ UPDATE 2022.03.02 기준<br>
                    ※ 2021년 바른공부 자습전용관 재원생 기준<br>
                    - 전체 293명(고3 77명, N수 216명) 재원생 합격자 중 복수 대학 합격자 포함                    
                </div>
                <a href="/russel_jg/event/2023/hero/index.asp" class="link-btn-bk"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/link_btn.png" alt="2023학년도 대입 합격 결과 보기" /></a>
            </div>
            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
            <div class="count">
                <p class="tit02">20-22 <strong>3년 연속 안양/평촌 지역 최상위권 입결 1위,</strong> 러셀 평촌</p>
                <div class="result-box pc">
                    <ul class="exam-result">
                        <li>
                            <p>
                                <strong>3년 연속 안양/평촌지역<br>
                                    최상위권 입결 
                                </strong>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="1">1</strong><span>위</span><sup>1)</sup>
                            </div>
                            <span class="s-txt02">의치한약수 64명/서울대 23명/<br>
                                연&middot;고대 58명 / 서성한이 78명 배출
                            </span>
                        </li>
                        <li>
                            <p>
                                <strong>
                                    22’서울대 합격자<br>
                                    최다 배출
                                </strong>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="23">0</strong><span class="fz45">명</span><sup>2)</sup>
                            </div>
                            <span class="s-txt02">22년 23명 / 21년 14명 / 20년 12명 / 29년 11명
                            </span>
                        </li>
                        <li>
                            <p>
                                <strong>
                                    22’<br>의약학계열
                                    </strong>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="64">0</strong><span class="fz45">명</span><sup>3)</sup>
                            </div>
                            <span class="s-txt02">의예과 23명/치예과 6명/<br>
                                한의예과 9명/약학과 17명/<br>
                                수의예과 10명
                            </span>
                        </li>
                        <li>
                            <p>
                                <strong>2022  수능<br>
                                    주요대학 합격
                                    </strong>
                            </p>
                            <div class="counter-wrap">
                                <strong class="counter" data-count="464">0</strong><span class="fz45">명</span><sup>4)</sup>
                            </div>
                            <span class="s-txt02">22'재원생 기준 88%이상<br>
                                주요대학 합격                                
                            </span>
                        </li>
                    </ul>
                </div>
                <div class="r-txt mt30">
                    1) 19-21년 평촌지역 단과학원 의/치/한/수/약+SKY 최종 합격 비교 기준(홈페이지 대입 실적 기준, 2022.02.28 기준)<br>
                    2) 21,22 수시/정시 입결. 20-21년 러셀 평촌 바른공부 자습전용관 재원생 기준<br>
                    3) 2022 의/치/한/수/약 합격률. 21년 러셀 평촌바른공부 자습전용관 11월 재원생 기준<br>
                    4) 정시+수시 통합, 21년 러셀 평촌 바른공부 자습전용관 재원생 기준<br>
                    * 복수대학 합격자 포함  
                </div>
                <a href="https://russelpc.megastudy.net/russel/info/notice/notice_view.asp?Code=23394&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1" class="link-btn-bk"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/link_btn.png" alt="2023학년도 대입 합격 결과 보기" /></a>
            </div>
            <% Else %>
            <div class="count">
                <% if isCore = 1 Then '코어 일경우 %>
                <p class="tit02">매년 <strong>대한민국 최상위권 입시 주도</strong>하는 러셀CORE</p>
                <% Else %>
                <p class="tit02">매년 <strong>대한민국 최상위권 입시 주도</strong>하는 러셀</p>
				<% end if %>
                <div class="result-box">
                    <ul class="exam-result">
                        <li>
                            <p>
                                러셀 4년 누적<br>
                                <strong>서울대 의예과<br>
                                학원 업계 최다 배출</strong><sup>1)</sup>
                            </p>
                            <div class="counter" data-count="43">0</div>
                        </li>
                        <li>
                            <p>
                                러셀 4년 연속<br>
                                <strong>메이저 의대[수시]<br>
                                학원 업계 최다 배출</strong><sup>2)</sup>
                            </p>
                            <div class="counter" data-count="88">0</div>
                        </li>
                        <li>
                            <p>
                                2023학년도 대입<br>
                                <strong>메이저 의대 합격자<br>
                                역대 최다 배출</strong><sup>3)</sup>
                            </p>
                            <div class="counter" data-count="68">0</div>
                        </li>
                        <li>
                            <p>
                                2023학년도 대입<br>
                                <strong>전국 의예과 합격자<br>
                                역대 최다 배출</strong><sup>3)</sup>
                            </p>
                            <div class="counter" data-count="497">0</div>
                        </li>
                    </ul>
                </div>
                <div class="r-txt mt30">
                    1) 수능 업계 오프라인학원_2020-2023학년도 대입 서울대학교 의예과 합격자 수 홈페이지 노출 기준 (2023.02.28 기준)<br>
                    2) 수능 업계 오프라인 학원_ 2020-2023학년도 메이저 의대[서울대, 연세대(서울),성균관대, 가톨릭대(성의), 울산대] ‘수시’ 표기된 최종 수시 합격자 수 홈페이지 노출 기준 (2023.02.28 기준)<br>
                    3) 2018-2023학년도 러셀에서 배출한 메이저 의대, 전국 의예과 합격자 수 2023학년도 최다 배출 (단과 수강생 제외/복수대학 합격자 포함) (2023.02.28 기준)<br>
                    ※ 타 학원 합격자 노출 상황에 따라, 변경될 수 있습니다.                    
                </div>
                <% if sCampusCode = "CD0340" Then '코어 광주 일경우 %>
                <a href="/core_gj/event/2023/interview/index.asp" class="link-btn-bk"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/link_btn.png" alt="2023학년도 대입 합격 결과 보기" /></a>
                <% elseif sCampusCode = "CD0341" Then '코어 대전 일경우 %>
                <a href="/core_dj/event/2023/interview/index.asp" class="link-btn-bk"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/link_btn.png" alt="2023학년도 대입 합격 결과 보기" /></a>
                <% Else %>
                <a href="/perfect/2023/susi/index.asp" class="link-btn-bk"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/link_btn.png" alt="2023학년도 대입 합격 결과 보기" /></a>
                <% end if %>
            </div>
            <% End If %>
        </div>
    </div>
    <!--// cont01 -->
    <!-- cont02 -->
    <div class="cont02">
        <div class="inner02">
            <% If sCampusCode = "CD0245" Then '목동 %>
            <p><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/regular/cont02_tit.png" alt="러셀 목동 N수 정규반 재원생의 결과는 압도적입니다." /></p>
            <div class="graph-wrap md">
                <div class="graph-list">
                    <div class="graph01">
                        <p><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/regular/graph01_tit.png" alt="N수 정규반 재원생 10명 중 9명 성적 상승" /></p>
                        <div class="chart-area">
                            <canvas id="doughnut-chart"></canvas>
                            <p><strong>94.4%</strong><br>성적 상승</p>
                        </div>
                    </div>
                    <div class="graph02">
                        <p><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/regular/graph02_tit.png" alt="2021 vs 2022 수능 영역별 백분위 10점 이상 성적 상승" /></p>
                        <div>
                            <p class="txt"><strong>38.4점</strong><br>상승</p>
                            <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph02_arrow.png" alt="" /></div>
                        </div>
                    </div>
                </div>
                <div class="graph-list02">
                    <div class="graph03">
                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_tit.png" alt="2021 vs 2022 국어 백분위 점수 상승" /></p>
                        <div>
                            <p class="txt"><strong>14.7점</strong><br>상승</p>
                            <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                        </div>
                    </div>
                    <div class="graph04">
                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph04_tit.png" alt="2021 vs 2022 수학 백분위 점수 상승" /></p>
                        <div>
                            <p class="txt"><strong>20.6점</strong><br>상승</p>
                            <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                        </div>
                    </div>
                    <div class="graph05">
                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph05_tit.png" alt="2021 vs 2022 탐구(2) 백분위 점수 상승" /></p>
                        <div>
                            <p class="txt"><strong>15.7점</strong><br>상승</p>
                            <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="r-txt mt30 txt_gray">
                ※ 러셀 목동 바른공부 자습전용관 2023학년도  N수 정규반 재원생 중 2021/2022 수능 성적/등급(국수탐(2)) 확인이 가능한 자연계 재원생 분석 결과
            </div>
            <p class="tit">비약적인 성적 상승으로 <strong>최상위권 대학 진학 목표 달성</strong></p>
            <ul class="review-list md">
                <li>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph06_tit.png" alt="러셀의 학생 중심 시스템은 자신에게 맞는 학습 루틴을 만들 수 있습니다." /></p>
                    <div class="review-con">
                        <div class="review-st">
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/st_jwg.jpg" alt="" /></div>
                            <dl>
                                <dt>
                                    <strong>서울대학교 전기전자공학과</strong><br>
                                    <span>러셀 목동 정원기</span>
                                </dt>
                                <dd>
                                    재원 기간: 2021년 3월~수능까지
                                </dd>
                            </dl>
                        </div>
                        <div class="graph06">
                            <div>
                                <p class="txt"><strong>86.5%</strong><br>상승</p>
                                <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                            </div>
                        </div>
                    </div>
                    <p class="review-txt">
                        “<strong>수능 시간표</strong>로 계속 생활하면서 수능 당일에도 전혀 체력적인 부담을<br>느끼지 않았습니다. 또 수면 관리는 저 자신의 학습에 도움을 줄 뿐 아니라<br>
                        <strong>주변의 다른 학생들과 좋은 면학 분위기를 조성</strong>하는데 도움을 줍니다.<br>
                        <strong>담임선생님이 학생들의 의견을 적극적으로 들어주었던 점</strong>이 가장 좋았습니다.<br>
                        면학분위기에 대한 건의사항도 적극적으로 수용해주시고<br>
                        <strong>언제든 상담할 수 있는 분위기를 조성</strong>해 주십니다.”
                    </p>
                </li>
                <li>
                    <p><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/regular/graph07_tit.png" alt="담임선생님들이 최고의 면학분위기를 조성해 주셔서 입시에만 집중을 할 수 있었습니다." /></p>
                    <div class="review-con">
                        <div class="review-st">
                            <div><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/regular/st_kym.jpg" alt="" /></div>
                            <dl>
                                <dt>
                                    <strong>고려대학교 일어일문학과</strong><br>
                                    <span>러셀 목동 김유민</span>
                                </dt>
                                <dd>
                                    재원 기간: 2021년 3월~수능까지
                                </dd>
                            </dl>
                        </div>
                        <div class="graph07">
                            <div>
                                <p class="txt"><strong>66.2%</strong><br>상승</p>
                                <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                            </div>
                        </div>
                    </div>
                    <p class="review-txt">
                        “<strong>개방형 구조</strong>로 되어 있기에 공부하다 지칠 때는 열심히 공부하는 학생들을<br>보면서 <strong>저도 마음을 다잡고 공부에 임할 수 있었습니다.</strong>
                        우수한 학생들이<br>열심히 공부하는 모습을 보며 <strong>경쟁심을 느낄 수 있었고, 더 자극되어 열심히 공부할 수<br>있었습니다.</strong>
                        담임 선생님께서 제 3자의 입장에서 필요한 피드백을 해주셨으며,<br>슬럼프가 왔을 때 선생님께서 관리했던 학생들 중 저와 비슷했고 결국 성공한<br>학생들의 케이스를 말씀하시며 격려해주신 것이 큰 도움이 되었습니다.”
                    </p>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont02_tit.png" alt="러셀 N수 정규반 재원생의 결과는 압도적입니다." /></p>
            <div class="graph-wrap bc">
                <div class="graph-list">
                    <div class="graph01">
                        <p><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/graph01_tit.png" alt="N수 정규반 재원생 10명 중 8명 성적 상승" /></p>
                        <div class="chart-area">
                            <canvas id="doughnut-chart"></canvas>
                            <p><strong>81.6%</strong><br>성적 상승</p>
                        </div>
                    </div>
                    <div class="graph02">
                        <div>
                            <p class="txt"><strong>37.8점</strong><br>상승</p>
                            <div class="arrow"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/graph02_arrow.png" alt="" /></div>
                        </div>
                    </div>
                </div>
                <div class="graph-list02">
                    <div class="graph03">
                        <div>
                            <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                            <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                            <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="r-txt mt30 txt_gray">
                ※ 러셀 부천 바른공부 자습전용관 2023학년도  N수 정규반 재원생 중 2021/2022 수능 성적 분석 결과<br>
                *국수탐(2) 백분위 합 기준<br>
                **취약과목 기준 : 국어, 수학, 탐구 과목 중 백분위가 가장 낮은 과목
            </div>
            <p class="tit">비약적인 성적 상승으로 <strong>최상위권 대학 진학 목표 달성</strong></p>
            <ul class="review-list bc">
                <li>
                    <p><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/graph06_tit.png" alt="담임선생님과의 활발한 소통과 상담이저의 합격 노하우입니다." /></p>
                    <div class="review-con">
                        <div class="review-st">
                            <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/st_seb.jpg" alt="" /></div>
                            <dl>
                                <dt>
                                    <strong>삼육대학교 약학과
                                    </strong><br>
                                    <span>러셀 부천 송은빈</span>
                                </dt>
                                <dd>
                                    재원 기간: 2021년 1월~수능까지
                                </dd>
                            </dl>
                        </div>
                        <div class="graph06">
                            <div>
                                <p class="txt">백분위<br><strong>106상승</strong></p>
                                <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                            </div>
                        </div>
                    </div>
                    <p class="review-txt">
                        “<strong>1년 동안 계속해서 개인 상담을 진행</strong>해 주시기 때문에, 공부하다가 잘못된 부분을 지적해 주실 수 있습니다. 제 경우에는 6월 평가원 시험을 이후로 담임선생님과 수학 공부에 대한 상담을 진행하였고, 그 결과 6월 평가원보다 9월 평가원에 더 좋은 성적을 거둘 수 있었습니다. 또한 1년 동안 재수를 하다 보면 힘든 점이 많은데 이 부분에서 <strong>가장 많은 위로가 되는 부분도 담임선생님</strong>이셨습니다. 힘들던 재수생활을 버티게 해준 가장 큰 원인이었던 것 같습니다.”
                    </p>
                </li>
                <li>
                    <p><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/graph07_tit.png" alt="철저한 관리와 우수한 면학분위기로 공부 말고 아무것도 신경 안 쓸 수 있습니다." /></p>
                    <div class="review-con">
                        <div class="review-st">
                            <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/st_gij.jpg" alt="" /></div>
                            <dl>
                                <dt>
                                    <strong>서울대학교 식물생산과학부</strong><br>
                                    <span>러셀 부천 권인진</span>
                                </dt>
                                <dd>
                                    재원 기간: 2021년 1월~수능까지
                                </dd>
                            </dl>
                        </div>
                        <div class="graph07">
                            <div>
                                <p class="txt">백분위<br><strong>100상승</strong></p>
                                <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                            </div>
                        </div>
                    </div>
                    <p class="review-txt">
                        “우선 <strong>휴대폰을 수거해서 공부에 도움</strong>이 됐고요. <strong>자습관의 개방형 구조와 다른 학생들이 공부하는 모습을 보게 해줘서 집중력을 높이는 데 큰 도움</strong>이 되었습니다. 물론 숨 막힌다고 볼 수 있지만 공부를 하러 온 곳이기에 단점이 아니라고 생각합니다. 오히려 전 거꾸로 얼마나 힘들었는가를 가지고 공부를 잘 했는가를 따지기도 했어요. 그래서 여기 면학분위기에 익숙해지면 어떤 상황에서도 집중할 수 있을 겁니다.”
                    </p>
                </li>
            </ul>
            <% Else %>

            <% if isCore = 1 Then '코어 일경우 %>
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont02_tit_2.png" alt="러셀 N수 정규반 재원생의 결과는 압도적입니다." /></p>
            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <p><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/cont02_tit.png" alt="러셀 정규반N수 재원생의 결과는 압도적입니다." /></p>
            <% Else %>
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont02_tit.png" alt="러셀 N수 정규반 재원생의 결과는 압도적입니다." /></p>
            <% end if %>
            <div class="graph-wrap">
                <% If sCampusCode = "INTRO" or sCampusCode = "CD0247" or sCampusCode = "CD0001" or sCampusCode = "CD0244" or sCampusCode = "CD0249" or sCampusCode = "CD0257" or sCampusCode = "CD0248" or sCampusCode = "CD0246" or sCampusCode = "CD0342" or isCore = 1 Then '인트로/강남/대치/분당/영통/중계/평촌/센텀/대구/코어' %>
                <div class="graph-list list-2023">
                    <div class="graph01">
                        <p><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/graph01_tit.png" alt="N수 정규반 재원생 10명 중 약 9명 성적 상승" /></p>
                        <div class="chart-area">
                            <canvas id="doughnut-chart"></canvas>
                            <p><strong>89%</strong><br>성적 상승</p>
                        </div>
                    </div>
                    <div class="graph02">
                        <p><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/graph02_tit.png" alt="2021 vs 2022 수능 영역별 백분위 10점 이상 성적 상승" /></p>
                        <div>
                            <p class="txt"><strong>33.2점</strong><br>상승</p>
                            <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph02_arrow.png" alt="" /></div>
                        </div>
                    </div>
                </div>
                <div class="graph-list02 list-2023">
                    <div class="graph03">
                        <p><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/graph03_tit.png" alt="2021 vs 2022 국어 백분위 점수 상승" /></p>
                        <div>
                            <p class="txt"><strong>약 8.3배</strong><br>증가</p>
                            <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                        </div>
                    </div>
                    <div class="graph04">
                        <p><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/graph04_tit.png" alt="2021 vs 2022 수학 백분위 점수 상승" /></p>
                        <div>
                            <p class="txt"><strong>약 4.5배</strong><br>증가</p>
                            <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                        </div>
                    </div>
                    <div class="graph05">
                        <p><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/graph05_tit.png" alt="2021 vs 2022 탐구(2) 백분위 점수 상승" /></p>
                        <div>
                            <p class="txt"><strong>약 13.9배</strong><br>증가</p>
                            <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                        </div>
                    </div>
                </div>
                <div class="r-txt mt30 txt_gray">
                    ※ 바른공부 자습전용관 2023학년도  N수 정규반 재원생 중 2022/2023 수능 성적/등급(국수탐(2)) 확인이 가능한 재원생 분석 결과
                </div>
                <% Else %>
                <div class="graph-list">
                    <div class="graph01">
                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph01_tit.png" alt="N수 정규반 재원생 10명 중 9명 성적 상승" /></p>
                        <div class="chart-area">
                            <canvas id="doughnut-chart"></canvas>
                            <p><strong>91.3%</strong><br>성적 상승</p>
                        </div>
                    </div>
                    <div class="graph02">
                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph02_tit.png" alt="2021 vs 2022 수능 영역별 백분위 10점 이상 성적 상승" /></p>
                        <div>
                            <p class="txt"><strong>37.7점</strong><br>상승</p>
                            <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph02_arrow.png" alt="" /></div>
                        </div>
                    </div>
                </div>
                <div class="graph-list02">
                    <div class="graph03">
                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_tit.png" alt="2021 vs 2022 국어 백분위 점수 상승" /></p>
                        <div>
                            <p class="txt"><strong>13.5점</strong><br>상승</p>
                            <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                        </div>
                    </div>
                    <div class="graph04">
                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph04_tit.png" alt="2021 vs 2022 수학 백분위 점수 상승" /></p>
                        <div>
                            <p class="txt"><strong>21.5점</strong><br>상승</p>
                            <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                        </div>
                    </div>
                    <div class="graph05">
                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph05_tit.png" alt="2021 vs 2022 탐구(2) 백분위 점수 상승" /></p>
                        <div>
                            <p class="txt"><strong>14.1점</strong><br>상승</p>
                            <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                        </div>
                    </div>
                </div>
                <div class="r-txt mt30 txt_gray">
                    ※ 바른공부 자습전용관 2023학년도  N수 정규반 재원생 중 2021/2022 수능 성적/등급(국수탐(2)) 확인이 가능한 자연계 재원생 분석 결과
                </div>
                <% end if %>
            </div>         
            <p class="tit">비약적인 성적 상승으로 <strong>최상위권 대학 진학 목표 달성</strong></p>
            <% If sCampusCode = "CD0248" Then '평촌 %>
            <ul class="review-list pc">
                <li>
                    <p><img src="<%=Application("img_path_russel")%>/russel_pc/2023/regular/graph06_tit.png" alt="" /></p>
                    <div class="review-con">
                        <div class="review-st">
                            <div><img src="<%=Application("img_path_russel")%>/russel_pc/2023/regular/st_jjh.jpg" alt="" /></div>
                            <dl>
                                <dt>
                                    <strong>영남대학교 의예과</strong><br>
                                    <span>러셀 평촌 정재호</span>
                                </dt>
                                <dd>
                                    재원 기간: 2021년 2월~수능까지
                                </dd>
                            </dl>
                        </div>
                        <div class="graph06">
                            <div>
                                <p class="txt"><strong>43.5점</strong><br>상승</p>
                                <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                            </div>
                        </div>
                    </div>
                    <p class="review-txt">
                        “바른공부 자습전용관의 좋은 점을 뽑자면 <strong>좋은 학습 분위기입니다.</strong><br> 바른공부 자습전용관은 1인 독서실처럼 막혀 있는 구조가 아니라 <strong>개방형<br>구조로 되어있어 답답한 느낌을 주지 않고,</strong> 다른 학생들이 열심히 공부하는<br>모습이 잘 보여서 좋은 자극제가 됐습니다. 또한 주기적인 환기를 통해 쾌적한<br>공기가 유지되며 규칙적인 시간표를 갖고 있어 <strong>수능날과 유사한 학습 리듬을<br>만들 수 있고, 책꽂이가 책상 바로 옆에 있어서 따로 사물함까지 이동하지<br>않아도 되어 편리했습니다.</strong>”
                    </p>
                </li>
                <li>
                    <p><img src="<%=Application("img_path_russel")%>/russel_pc/2023/regular/graph07_tit.png" alt="" /></p>
                    <div class="review-con">
                        <div class="review-st">
                            <div><img src="<%=Application("img_path_russel")%>/russel_pc/2023/regular/st_kty.jpg" alt="" /></div>
                            <dl>
                                <dt>
                                    <strong>고려대학교 산업경영공학부</strong><br>
                                    <span>러셀 평촌 김태영</span>
                                </dt>
                                <dd>
                                    재원 기간: 2021년 1월~수능까지
                                </dd>
                            </dl>
                        </div>
                        <div class="graph07">
                            <div>
                                <p class="txt"><strong>17점</strong><br>상승</p>
                                <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                            </div>
                        </div>
                    </div>
                    <p class="review-txt">
                        
                        “언매 VS 화작 등 <strong>학습적인 고민에서부터 수험 생활 멘탈 관리 등 정서적인<br>고민까지</strong> 선생님과 이야기하며 많이 의지하고 도움받을 수 있었어요.<br>그리고 수시를 넣으면서 <strong>자소서 첨삭과 면접 준비까지 폭넓게 신경 써주셨고,</strong><br>정시 원서를 정할 때도 제 상황과 점수대에 맞는 대학을 소위 말하는<br><strong>스나이핑으로 정확하고 현명하게 추천</strong>해 주셔서 수시와 정시 모두<br>좋은 결과를 낼 수 있었어요.”

                    </p>
                </li>
            </ul>
            <% ElseIf sCampusCode = "INTRO" or sCampusCode = "CD0247" or sCampusCode = "CD0001" or sCampusCode = "CD0244" or sCampusCode = "CD0249" or sCampusCode = "CD0257" or sCampusCode = "CD0248" or sCampusCode = "CD0246" or sCampusCode = "CD0342" or isCore = 1 Then '인트로/강남/대치/분당/영통/중계/평촌/센텀/대구/코어' %>
            <ul class="review-list list-2023">
                <li>
                    <p><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/graph06_tit.png" alt="" /></p>
                    <div class="review-con">
                        <div class="review-st">
                            <div>
                                <img src="<%=Application("img_path_russel")%>/intro/2023/regular/st_lys.jpg" alt="이윤서" />
                                <img onclick="playPop('https://tv.naver.com/embed/35106563')" src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/play_btn.png" alt="" />
                            </div>
                            <dl>
                                <dt>
                                    <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="" />
                                </dt>
                                <dd>
                                    <strong>2023 서울대학교<br>의예과 합격</strong>
                                    <% If sCampusCode = "INTRO" Then '인트로 %>
                                    <p>러셀 강남 이윤서</p>
                                    <% Else %>
                                    <p>러셀 이윤서</p>
                                    <% end if %>
                                </dd>
                            </dl>
                        </div>
                        <div class="graph06">
                            <div>
                                <p class="txt"><strong>93.3%</strong><br>상승</p>
                                <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                            </div>
                        </div>
                    </div>
                    <p class="review-txt">
                        “<strong>러셀의 장점은 면학분위기입니다.</strong> 주변 학생들이 열심히 공부하니 자극도 받고,<br>
                        생활패턴을 보고 배울 수 있어서 좋았습니다. 또한, <strong>수능 시간표에 맞춰서<br>
                        생활할 수 있게 지도</strong>해주는 것이 가장 좋았습니다. 덕분에 아침에 일찍 일어나는<br>
                        습관을 기를 수 있었습니다. 특히 국어 과목의 경우 아침에 꾸준히 하는 것이<br>
                        중요하다고 생각해서 그러한 부분이 많이 도움이 됐습니다.”
                    </p>
                </li>
                <li>
                    <p><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/graph07_tit.png" alt="" /></p>
                    <div class="review-con">
                        <div class="review-st">
                            <div>
                                <img src="<%=Application("img_path_russel")%>/intro/2023/regular/st_kmj.jpg" alt="김민재" />
                                <img onclick="playPop('https://tv.naver.com/embed/33008573')" src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/play_btn.png" alt="" />
                            </div>
                            <dl>
                                <dt>
                                    <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="" />
                                </dt>
                                <dd>
                                    <strong style="font-size: 15px;">2023 연세대학교(서울)<br>의예과 합격</strong>
                                    <% If sCampusCode = "INTRO" Then '인트로 %>
                                    <p>러셀 센텀 김민재</p>
                                    <% Else %>
                                    <p>러셀 김민재</p>
                                    <% end if %>
                                </dd>
                            </dl>
                        </div>
                        <div class="graph07">
                            <div>
                                <p class="txt"><strong>97.1%</strong><br>상승</p>
                                <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                            </div>
                        </div>
                    </div>
                    <p class="review-txt">
                        “ <strong>바자관 바로 앞에 담임선생님께서 상주</strong>해 계시기 때문에 마음이 불편하거나<br>
                        공부가 잘 안 될 때 담임선생님과 상담하며 큰 도움을 받았습니다.<br>
                        <strong>선생님의 조언 뿐만 아니라 전년도 합격 선배들의 이야기를 들으며 안정감</strong>을<br>
                        얻을 수 있었습니다. 늘 <strong>귀 기울여 상담해 주신 담임선생님께 감사의 말씀</strong><br>
                        전하고 싶습니다.”
                    </p>
                </li>
                <li>
                    <p><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/graph08_tit.png" alt="" /></p>
                    <div class="review-con">
                        <div class="review-st">
                            <div>
                                <img src="<%=Application("img_path_russel")%>/intro/2023/regular/st_bjw.jpg" alt="백장운" />
                                <img onclick="playPop('https://tv.naver.com/embed/35702345')" src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/play_btn.png" alt="" />
                            </div>
                            <dl>
                                <dt>
                                    <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="" />
                                </dt>
                                <dd>
                                    <strong>2023 서울대학교<br>자유전공학부 합격</strong>
                                    <% If sCampusCode = "INTRO" Then '인트로 %>
                                    <p style="font-size: 14px;">러셀CORE 광주 백장운</p>
                                    <% Else %>
                                    <p>러셀 백장운</p>
                                    <% end if %>
                                </dd>
                            </dl>
                        </div>
                        <div class="graph08">
                            <div>
                                <p class="txt"><strong>90.1%</strong><br>상승</p>
                                <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                            </div>
                        </div>
                    </div>
                    <p class="review-txt">
                        “<strong>모의고사 후 스스로 총평을 작성하도록 한 것이, 실수 노트 정리 시에<br>
                            아주 도움</strong>이 되었습니다. <strong>단과 수업을 바자관 바로 옆에서 들을 수 있어서<br>
                                좋았습니다.</strong> 승강반제도는 <strong>학습 중반, 동기부여를 살짝 잃으려고 할 때 승반을<br>
                                    향한 욕구가 그것을 대체</strong>했습니다. 또한 <strong>표준시간표가 수능 시간과 거의<br>
                                        동일하게 구성</strong>되어 있어, 자연스럽게 패턴을 수능에 맞출 수 있어 좋았습니다.”
                    </p>
                </li>
                <li>
                    <p><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/graph09_tit.png" alt="" /></p>
                    <div class="review-con">
                        <div class="review-st">
                            <div>
                                <img src="<%=Application("img_path_russel")%>/intro/2023/regular/st_cey.jpg" alt="최은영" />
                                <img onclick="playPop('https://tv.naver.com/embed/35608756')" src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/play_btn.png" alt="" />
                            </div>
                            <dl>
                                <dt>
                                    <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="" />
                                </dt>
                                <dd>
                                    <strong>2023 서울대학교<br>인문계열 합격</strong>
                                    <% If sCampusCode = "INTRO" Then '인트로 %>
                                    <p>러셀 목동 최은영</p>
                                    <% Else %>
                                    <p>러셀 최은영</p>
                                    <% end if %>
                                </dd>
                            </dl>
                        </div>
                        <div class="graph09">
                            <div>
                                <p class="txt"><strong>88.3%</strong><br>상승</p>
                                <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                            </div>
                        </div>
                    </div>
                    <p class="review-txt">
                        “필수로 들어야 하는 수업이 많은 타 학원과 달리 <strong>원하는 만큼의 수업만 들을 수<br>
                        있다는 점에서 러셀을 선택</strong>하게 되었습니다. 저는 수업을 듣기보다 자습을<br>
                        선호하는 편인데 <strong>자습시간을 확보</strong>할 수 있어서 좋았습니다. <strong>하루를 능동적으로<br>
                        구성할 수 있어서 그때그때 제게 필요한 학습을 충분히 할 수 있었고 수능까지<br>
                        효율적으로 공부</strong>할 수 있었습니다.”
                    </p>
                </li>
            </ul>
            <% Else %>
            <ul class="review-list">
                <li>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph06_tit.png" alt="러셀의 학생 중심 시스템은 자신에게 맞는 학습 루틴을 만들 수 있습니다." /></p>
                    <div class="review-con">
                        <div class="review-st">
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/st_jwg.jpg" alt="" /></div>
                            <dl>
                                <dt>
                                    <strong>서울대학교 전기전자공학과</strong><br>
                                    <% If sCampusCode = "INTRO" Then '인트로 %>
                                    <span>러셀 목동 정원기</span>
                                    <% Else %>
                                    <span>러셀 정원기</span>
                                    <% end if %>
                                </dt>
                                <dd>
                                    재원 기간: 2021년 3월~수능까지
                                </dd>
                            </dl>
                        </div>
                        <div class="graph06">
                            <div>
                                <p class="txt"><strong>86.5%</strong><br>상승</p>
                                <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                            </div>
                        </div>
                    </div>
                    <p class="review-txt">
                        “<strong>수능 시간표</strong>로 계속 생활하면서 수능 당일에도 전혀 체력적인 부담을<br>느끼지 않았습니다. 또 수면 관리는 저 자신의 학습에 도움을 줄 뿐 아니라<br>
                        <strong>주변의 다른 학생들과 좋은 면학 분위기를 조성</strong>하는데 도움을 줍니다.<br>
                        <strong>담임선생님이 학생들의 의견을 적극적으로 들어주었던 점</strong>이 가장 좋았습니다.<br>
                        면학분위기에 대한 건의사항도 적극적으로 수용해주시고<br>
                        <strong>언제든 상담할 수 있는 분위기를 조성</strong>해 주십니다.”
                    </p>
                </li>
                <li>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph07_tit.png" alt="담임선생님들이 최고의 면학분위기를 조성해 주셔서 오롯이 공부에만 집중을 할 수 있었습니다." /></p>
                    <div class="review-con">
                        <div class="review-st">
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/st_myh.jpg" alt="" /></div>
                            <dl>
                                <dt>
                                    <strong>서울대학교 인문계열</strong><br>
                                    <% If sCampusCode = "INTRO" Then '인트로 %>
                                    <span>러셀 센텀 민영환</span>
                                    <% Else %>
                                    <span>러셀 민영환</span>
                                    <% end if %>
                                </dt>
                                <dd>
                                    재원 기간: 2021년 2월~수능까지
                                </dd>
                            </dl>
                        </div>
                        <div class="graph07">
                            <div>
                                <p class="txt"><strong>86%</strong><br>상승</p>
                                <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/graph03_arrow.png" alt="" /></div>
                            </div>
                        </div>
                    </div>
                    <p class="review-txt">
                        “러셀이 다른 학원들에 비해 <strong>면학환경이 깔끔하고 학습 시스템이 체계적</strong><br>이라는 것을 알게 되었습니다.
                        <strong>조용한 분위기와 깔끔한 환경은 저의<br>공부 효율을 극대화</strong>시켜 자강불식의 마음을 제 가슴에 새길 수 있었습니다.<br>
                        또한 <strong>옆에서 공부를 같이한 저의 훌륭한 학우들은 저의 학습에 큰 동기부여</strong>를<br>해주었습니다.
                        그들에게서 느껴진 열정이 저의 학습에 큰 도움을 주었습니다.” 
                    </p>
                </li>
            </ul>
            <% end if %>
            <% End If %>
        </div>
        <% If sCampusCode = "INTRO" Then '인트로 %>
        <div class="roll-swiper swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_hy02.png" alt="" /></dt>
                        <dd>한양대학교<br>의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 297점</strong><br>
                            <span>2022학년도 282.5점</span>
                        </p>
                        <div><strong>82.9%</strong>상승</div>
                    </div>
                    <p>러셀 분당 김민수</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cau.jpg" alt="" /></dt>
                        <dd>중앙대학교<br>의학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 296점</strong><br>
                            <span>2022학년도 286점</span>
                        </p>
                        <div><strong>71.4%</strong>상승</div>
                    </div>
                    <p>러셀 분당 김상범</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yn02.png" alt="" /></dt>
                        <dd>영남대학교<br>의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 295점</strong><br>
                            <span>2022학년도 280점</span>
                        </p>
                        <div><strong>75.0%</strong>상승</div>
                    </div>
                    <p>러셀 센텀 장종호</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_jeonbuk.jpg" alt="" /></dt>
                        <dd>전북대학교<br>의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294.5점</strong><br>
                            <span>2022학년도 271.5점</span>
                        </p>
                        <div><strong>80.7%</strong>상승</div>
                    </div>
                    <p>러셀CORE 광주 김준표</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_josun02.png" alt="" /></dt>
                        <dd>조선대학교<br>의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294.5점</strong><br>
                            <span>2022학년도 269.5점</span>
                        </p>
                        <div><strong>82.0%</strong>상승</div>
                    </div>
                    <p>러셀 강남 김한수</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_josun02.png" alt="" /></dt>
                        <dd>조선대학교<br>의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 293점</strong><br>
                            <span>2022학년도 271점</span>
                        </p>
                        <div><strong>75.9%</strong>상승</div>
                    </div>
                    <p>러셀 센텀 김지희</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_josun02.png" alt="" /></dt>
                        <dd>조선대학교<br>의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 293점</strong><br>
                            <span>2022학년도 279.5점</span>
                        </p>
                        <div><strong>65.9%</strong>상승</div>
                    </div>
                    <p>러셀 강남 이현욱</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_semyung.jpg" alt="" /></dt>
                        <dd>세명대학교<br>한의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294점</strong><br>
                            <span>2022학년도 277점</span>
                        </p>
                        <div><strong>73.9%</strong>상승</div>
                    </div>
                    <p>러셀 영통 정인지</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cau.jpg" alt="" /></dt>
                        <dd>중앙대학교<br>약학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 285.5점</strong><br>
                            <span>2022학년도 259.5점</span>
                        </p>
                        <div><strong>64.2%</strong>상승</div>
                    </div>
                    <p>러셀 평촌 표소정</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ewha02.png" alt="" /></dt>
                        <dd>이화여자대학교<br>약학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 292.5점</strong><br>
                            <span>2022학년도 237점</span>
                        </p>
                        <div><strong>88.1%</strong>상승</div>
                    </div>
                    <p>러셀 대치 이정민</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_hy02.png" alt="" /></dt>
                        <dd>한양대학교<br>약학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 293점</strong><br>
                            <span>2022학년도 230점</span>
                        </p>
                        <div><strong>90.0%</strong>상승</div>
                    </div>
                    <p>러셀 강남 김상훈</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kangwon02.png" alt="" /></dt>
                        <dd>강원대학교<br>약학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 291점</strong><br>
                            <span>2022학년도 275.5점</span>
                        </p>
                        <div><strong>63.3%</strong>상승</div>
                    </div>
                    <p>러셀 강남 김태완</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_chonnam.png" alt="" /></dt>
                        <dd>전남대학교<br>약학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 282점</strong><br>
                            <span>2022학년도 251.5점</span>
                        </p>
                        <div><strong>62.9%</strong>상승</div>
                    </div>
                    <p>러셀CORE 광주 임은결</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="" /></dt>
                        <dd>서울대학교<br>컴퓨터공학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 295.5점</strong><br>
                            <span>2022학년도 283.5점</span>
                        </p>
                        <div><strong>72.7%</strong>상승</div>
                    </div>
                    <p>러셀 분당 김세현</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="" /></dt>
                        <dd>서울대학교<br>산림과학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 277점</strong><br>
                            <span>2022학년도 233.5점</span>
                        </p>
                        <div><strong>65.4%</strong>상승</div>
                    </div>
                    <p>러셀 분당 한태형</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="" /></dt>
                        <dd>연세대학교<br>전기전자공학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 289.5점</strong><br>
                            <span>2022학년도 238.5점</span>
                        </p>
                        <div><strong>82.9%</strong>상승</div>
                    </div>
                    <p>러셀 분당 유정원</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="" /></dt>
                        <dd>연세대학교<br>응용통계학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 286점</strong><br>
                            <span>2022학년도 249.5점</span>
                        </p>
                        <div><strong>72.3%</strong>상승</div>
                    </div>
                    <p>러셀 목동 석지훈</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="" /></dt>
                        <dd>연세대학교<br>생활디자인학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 281점</strong><br>
                            <span>2022학년도 247점</span>
                        </p>
                        <div><strong>64.2%</strong>상승</div>
                    </div>
                    <p>러셀 대치 강세인</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="" /></dt>
                        <dd>고려대학교<br>전기전자공학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294.5점</strong><br>
                            <span>2022학년도 205점</span>
                        </p>
                        <div><strong>94.2%</strong>상승</div>
                    </div>
                    <p>러셀 대치 양선호</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="" /></dt>
                        <dd>고려대학교<br>기계공학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 288.5점</strong><br>
                            <span>2022학년도 260.5점</span>
                        </p>
                        <div><strong>70.9%</strong>상승</div>
                    </div>
                    <p>러셀 강남 송승원</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="" /></dt>
                        <dd>고려대학교<br>자유전공학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 284.5점</strong><br>
                            <span>2022학년도 196점</span>
                        </p>
                        <div><strong>85.1%</strong>상승</div>
                    </div>
                    <p>러셀 목동 김현준</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="" /></dt>
                        <dd>고려대학교<br>가정교육학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 283점</strong><br>
                            <span>2022학년도 243.5점</span>
                        </p>
                        <div><strong>69.9%</strong>상승</div>
                    </div>
                    <p>러셀 강남 김다인</p>
                </div>
            </div>
        </div>
        <div class="inner02 r-txt mt30 txt_gray">
            ※ 바른공부 자습전용관 2023학년도  N수 정규반 재원생 중 2022/2023 수능 성적/등급(국수탐(2)) 확인이 가능한 재원생 분석 결과
        </div>
        <% ElseIf sCampusCode = "CD0245" Then '목동 %>
        <div class="roll-swiper swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_korea.jpg" alt="" /></dt>
                        <dd>고려대학교<br>일어일문학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 287점</strong><br>
                            <span>2021학년도 261.5점</span>
                        </p>
                        <div><strong>66.2%</strong>상승</div>
                    </div>
                    <p>러셀 목동 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_snu.jpg" alt="" /></dt>
                        <dd>서울대학교<br>전기전자공학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 296.5점</strong><br>
                            <span>2021학년도 274점</span>
                        </p>
                        <div><strong>86.5%</strong>상승</div>
                    </div>
                    <p>러셀 목동 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_eulji.jpg" alt="" /></dt>
                        <dd>을지대학교<br>의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 295.5점</strong><br>
                            <span>2021학년도 283.5점</span>
                        </p>
                        <div><strong>727%</strong>상승</div>
                    </div>
                    <p>러셀 목동 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_yonsei.jpg" alt="" /></dt>
                        <dd>연세대학교<br>경제학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 278점</strong><br>
                            <span>2021학년도 237.5점</span>
                        </p>
                        <div><strong>64.8%</strong>상승</div>
                    </div>
                    <p>러셀 목동 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_wku.jpg" alt="" /></dt>
                        <dd>원광대학교<br>치의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 294.5점</strong><br>
                            <span>2021학년도 263.5점</span>
                        </p>
                        <div><strong>84.9%</strong>상승</div>
                    </div>
                    <p>러셀 목동 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_korea.jpg" alt="" /></dt>
                        <dd>고려대학교<br>보건환경융합과학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 284점</strong><br>
                            <span>2021학년도 254.5점</span>
                        </p>
                        <div><strong>64.8%</strong>상승</div>
                    </div>
                    <p>러셀 목동 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_yonsei.jpg" alt="" /></dt>
                        <dd>연세대학교<br>의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 298점</strong><br>
                            <span>2021학년도 283점</span>
                        </p>
                        <div><strong>88.2%</strong>상승</div>
                    </div>
                    <p>러셀 목동 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_snu.jpg" alt="" /></dt>
                        <dd>서울대학교<br>인문계열</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 295.5점</strong><br>
                            <span>2021학년도 271점</span>
                        </p>
                        <div><strong>84.5%</strong>상승</div>
                    </div>
                    <p>러셀 목동 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_yonsei.jpg" alt="" /></dt>
                        <dd>연세대학교<br>경제학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 284.5점</strong><br>
                            <span>2021학년도 249.5점</span>
                        </p>
                        <div><strong>69.3%</strong>상승</div>
                    </div>
                    <p>러셀 목동 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_korea.jpg" alt="" /></dt>
                        <dd>고려대학교<br>컴퓨터학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 277점</strong><br>
                            <span>2021학년도 248.5점</span>
                        </p>
                        <div><strong>55.3%</strong>상승</div>
                    </div>
                    <p>러셀 목동 OOO</p>
                </div>
            </div>
        </div>
        <div class="inner02 r-txt mt30 txt_gray">
            ※ 러셀 목동 바른공부 자습전용관 2023학년도  N수 정규반 재원생 중 2021/2022 수능 성적(국수탐(2)) 확인이 가능한  재원생의 성적 비교
        </div>
        <% ElseIf sCampusCode = "CD0250" Then '부천 %>
        <% ElseIf sCampusCode = "CD0247" or sCampusCode = "CD0001" or sCampusCode = "CD0244" or sCampusCode = "CD0249" or sCampusCode = "CD0257" or sCampusCode = "CD0248" or sCampusCode = "CD0246" or sCampusCode = "CD0342" or isCore = 1 Then '강남/대치/분당/영통/중계/평촌/센텀/대구/코어' %>
        <div class="roll-swiper swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_hy02.png" alt="" /></dt>
                        <dd>한양대학교<br>의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 297점</strong><br>
                            <span>2022학년도 282.5점</span>
                        </p>
                        <div><strong>82.9%</strong>상승</div>
                    </div>
                    <p>러셀 김민수</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cau.jpg" alt="" /></dt>
                        <dd>중앙대학교<br>의학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 296점</strong><br>
                            <span>2022학년도 286점</span>
                        </p>
                        <div><strong>71.4%</strong>상승</div>
                    </div>
                    <p>러셀 김상범</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yn02.png" alt="" /></dt>
                        <dd>영남대학교<br>의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 295점</strong><br>
                            <span>2022학년도 280점</span>
                        </p>
                        <div><strong>75.0%</strong>상승</div>
                    </div>
                    <p>러셀 장종호</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_jeonbuk.jpg" alt="" /></dt>
                        <dd>전북대학교<br>의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294.5점</strong><br>
                            <span>2022학년도 271.5점</span>
                        </p>
                        <div><strong>80.7%</strong>상승</div>
                    </div>
                    <p>러셀CORE 김준표</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_josun02.png" alt="" /></dt>
                        <dd>조선대학교<br>의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294.5점</strong><br>
                            <span>2022학년도 269.5점</span>
                        </p>
                        <div><strong>82.0%</strong>상승</div>
                    </div>
                    <p>러셀 김한수</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_josun02.png" alt="" /></dt>
                        <dd>조선대학교<br>의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 293점</strong><br>
                            <span>2022학년도 271점</span>
                        </p>
                        <div><strong>75.9%</strong>상승</div>
                    </div>
                    <p>러셀 김지희</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_josun02.png" alt="" /></dt>
                        <dd>조선대학교<br>의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 293점</strong><br>
                            <span>2022학년도 279.5점</span>
                        </p>
                        <div><strong>65.9%</strong>상승</div>
                    </div>
                    <p>러셀 이현욱</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_semyung.jpg" alt="" /></dt>
                        <dd>세명대학교<br>한의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294점</strong><br>
                            <span>2022학년도 277점</span>
                        </p>
                        <div><strong>73.9%</strong>상승</div>
                    </div>
                    <p>러셀 정인지</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cau.jpg" alt="" /></dt>
                        <dd>중앙대학교<br>약학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 285.5점</strong><br>
                            <span>2022학년도 259.5점</span>
                        </p>
                        <div><strong>64.2%</strong>상승</div>
                    </div>
                    <p>러셀 표소정</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ewha02.png" alt="" /></dt>
                        <dd>이화여자대학교<br>약학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 292.5점</strong><br>
                            <span>2022학년도 237점</span>
                        </p>
                        <div><strong>88.1%</strong>상승</div>
                    </div>
                    <p>러셀 이정민</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_hy02.png" alt="" /></dt>
                        <dd>한양대학교<br>약학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 293점</strong><br>
                            <span>2022학년도 230점</span>
                        </p>
                        <div><strong>90.0%</strong>상승</div>
                    </div>
                    <p>러셀 김상훈</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kangwon02.png" alt="" /></dt>
                        <dd>강원대학교<br>약학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 291점</strong><br>
                            <span>2022학년도 275.5점</span>
                        </p>
                        <div><strong>63.3%</strong>상승</div>
                    </div>
                    <p>러셀 김태완</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_chonnam.png" alt="" /></dt>
                        <dd>전남대학교<br>약학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 282점</strong><br>
                            <span>2022학년도 251.5점</span>
                        </p>
                        <div><strong>62.9%</strong>상승</div>
                    </div>
                    <p>러셀CORE 임은결</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="" /></dt>
                        <dd>서울대학교<br>컴퓨터공학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 295.5점</strong><br>
                            <span>2022학년도 283.5점</span>
                        </p>
                        <div><strong>72.7%</strong>상승</div>
                    </div>
                    <p>러셀 김세현</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="" /></dt>
                        <dd>서울대학교<br>산림과학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 277점</strong><br>
                            <span>2022학년도 233.5점</span>
                        </p>
                        <div><strong>65.4%</strong>상승</div>
                    </div>
                    <p>러셀 한태형</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="" /></dt>
                        <dd>연세대학교<br>전기전자공학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 289.5점</strong><br>
                            <span>2022학년도 238.5점</span>
                        </p>
                        <div><strong>82.9%</strong>상승</div>
                    </div>
                    <p>러셀 유정원</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="" /></dt>
                        <dd>연세대학교<br>응용통계학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 286점</strong><br>
                            <span>2022학년도 249.5점</span>
                        </p>
                        <div><strong>72.3%</strong>상승</div>
                    </div>
                    <p>러셀 석지훈</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="" /></dt>
                        <dd>연세대학교<br>생활디자인학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 281점</strong><br>
                            <span>2022학년도 247점</span>
                        </p>
                        <div><strong>64.2%</strong>상승</div>
                    </div>
                    <p>러셀 강세인</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="" /></dt>
                        <dd>고려대학교<br>전기전자공학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 294.5점</strong><br>
                            <span>2022학년도 205점</span>
                        </p>
                        <div><strong>94.2%</strong>상승</div>
                    </div>
                    <p>러셀 양선호</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="" /></dt>
                        <dd>고려대학교<br>기계공학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 288.5점</strong><br>
                            <span>2022학년도 260.5점</span>
                        </p>
                        <div><strong>70.9%</strong>상승</div>
                    </div>
                    <p>러셀 송승원</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="" /></dt>
                        <dd>고려대학교<br>자유전공학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 284.5점</strong><br>
                            <span>2022학년도 196점</span>
                        </p>
                        <div><strong>85.1%</strong>상승</div>
                    </div>
                    <p>러셀 김현준</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="" /></dt>
                        <dd>고려대학교<br>가정교육학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2023학년도 283점</strong><br>
                            <span>2022학년도 243.5점</span>
                        </p>
                        <div><strong>69.9%</strong>상승</div>
                    </div>
                    <p>러셀 김다인</p>
                </div>
            </div>
        </div>
        <div class="inner02 r-txt mt30 txt_gray">
            ※ 바른공부 자습전용관 2023학년도  N수 정규반 재원생 중 2022/2023 수능 성적/등급(국수탐(2)) 확인이 가능한 재원생 분석 결과
        </div>
        <% Else %>
        <div class="roll-swiper swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_catholic.jpg" alt="" /></dt>
                        <dd>가톨릭대학교<br>의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 297점</strong><br>
                            <span>2021학년도 262.5점</span>
                        </p>
                        <div><strong>92.0%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_pusan.jpg" alt="" /></dt>
                        <dd>부산대학교<br>의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 295점</strong><br>
                            <span>2021학년도 238점</span>
                        </p>
                        <div><strong>91.9%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_yu.jpg" alt="" /></dt>
                        <dd>영남대학교<br>의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 296.5점</strong><br>
                            <span>2021학년도 273.5점</span>
                        </p>
                        <div><strong>86.8%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_yonsei.jpg" alt="" /></dt>
                        <dd>연세대학교(미래)<br>의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 295점</strong><br>
                            <span>2021학년도 265.5점</span>
                        </p>
                        <div><strong>85.5%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_dku.jpg" alt="" /></dt>
                        <dd>단국대학교<br>의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 294.5점</strong><br>
                            <span>2021학년도 270.5점</span>
                        </p>
                        <div><strong>81.4%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_yonsei.jpg" alt="" /></dt>
                        <dd>연세대학교<br>치의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 297.5점</strong><br>
                            <span>2021학년도 271.5점</span>
                        </p>
                        <div><strong>91.2%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_yonsei.jpg" alt="" /></dt>
                        <dd>연세대학교<br>치의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 296점</strong><br>
                            <span>2021학년도 278.5점</span>
                        </p>
                        <div><strong>81.4%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_knu.jpg" alt="" /></dt>
                        <dd>경북대학교<br>치의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 296점</strong><br>
                            <span>2021학년도 252.5점</span>
                        </p>
                        <div><strong>91.6%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_dku.jpg" alt="" /></dt>
                        <dd>단국대학교<br>치의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 288.5점</strong><br>
                            <span>2021학년도 238.5점</span>
                        </p>
                        <div><strong>81.3%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_pusan.jpg" alt="" /></dt>
                        <dd>부산대학교<br>치의학학석사통합과정</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 294.5점</strong><br>
                            <span>2021학년도 268점</span>
                        </p>
                        <div><strong>82.8%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_snu.jpg" alt="" /></dt>
                        <dd>서울대학교<br>지리학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 295.5점</strong><br>
                            <span>2021학년도 268점</span>
                        </p>
                        <div><strong>85.9%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_snu.jpg" alt="" /></dt>
                        <dd>서울대학교<br>수리과학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 294.5점</strong><br>
                            <span>2021학년도 266.5점</span>
                        </p>
                        <div><strong>83.6%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_gachon.jpg" alt="" /></dt>
                        <dd>가천대학교<br>한의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 292.5점</strong><br>
                            <span>2021학년도 255점</span>
                        </p>
                        <div><strong>83.3%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_gachon.jpg" alt="" /></dt>
                        <dd>가천대학교<br>한의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 292.5점</strong><br>
                            <span>2021학년도 260.5점</span>
                        </p>
                        <div><strong>81.0%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_wku.jpg" alt="" /></dt>
                        <dd>원광대학교<br>한의예과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 290.5점</strong><br>
                            <span>2021학년도 236.5점</span>
                        </p>
                        <div><strong>85.0%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_ewha02.jpg" alt="" /></dt>
                        <dd>이화여자대학교<br>약학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 293점</strong><br>
                            <span>2021학년도 258.5점</span>
                        </p>
                        <div><strong>83.1%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_ajou.jpg" alt="" /></dt>
                        <dd>아주대학교<br>약학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 291.5점</strong><br>
                            <span>2021학년도 240.5점</span>
                        </p>
                        <div><strong>85.7%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_yonsei.jpg" alt="" /></dt>
                        <dd>연세대학교<br>경영학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 293점</strong><br>
                            <span>2021학년도 241.5점</span>
                        </p>
                        <div><strong>88.0%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_yonsei.jpg" alt="" /></dt>
                        <dd>연세대학교<br>수학과</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 290.5점</strong><br>
                            <span>2021학년도 207.5점</span>
                        </p>
                        <div><strong>89.7%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_korea.jpg" alt="" /></dt>
                        <dd>고려대학교<br>전기전자공학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 289.5점</strong><br>
                            <span>2021학년도 239점</span>
                        </p>
                        <div><strong>82.8%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
                <div class="swiper-slide">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_korea.jpg" alt="" /></dt>
                        <dd>고려대학교<br>보건정책관리학부</dd>
                    </dl>
                    <div>
                        <p>
                            <strong>2022학년도 284.5점</strong><br>
                            <span>2021학년도 210.5점</span>
                        </p>
                        <div><strong>82.7%</strong>상승</div>
                    </div>
                    <p>러셀 OOO</p>
                </div>
            </div>
        </div>
        <div class="inner02 r-txt mt30 txt_gray">
            ※ 바른공부 자습전용관 2023학년도  N수 정규반 재원생 중 2021/2022 수능 성적(국수탐(2)) 확인이 가능한  재원생의 성적 비교
        </div>

        <% end if %>
    </div>
    <!--// cont02 -->
</div>