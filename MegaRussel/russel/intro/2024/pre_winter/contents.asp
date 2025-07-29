<div class="cont01">
    <h2 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/pre_winter/cont01_tit.png" alt="연간 재학생 모집 일정" /></h2>
    <div class="inner">
        <ul class="scd-list">
            <li class="scd-pre">
                <p>
                    프리윈터스쿨<br>
                    <span><%=cont01_day01%></span>
                </p>
                <span class="dot blink-ani"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/dot_active.png" alt="" /></span>
                <div>
                    <i class="floating-icon"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/ico01.png" alt="" /></i><br>
                    체계적인 학습관리,<br>
                    생활관리를 통한<br>
                    한발 앞선 겨울의 시작
                </div>
            </li>
            <li>
                <p>
                    윈터스쿨<br>
                    <span><%=cont01_day02%></span>
                </p>
                <span class="dot"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/dot_nonactive.png" alt="" /></span>
                <div>
                    <i><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/ico02.png" alt="" /></i><br>
                    올바른 학습,<br>
                    생활 습관 완성과<br>
                    탄탄한 실력 형성
                </div>
            </li>
            <li>
                <p>
                    재학생 정규반<br>
                    <span><%=cont01_day03%></span>
                </p>
                <span class="dot"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/dot_nonactive.png" alt="" /></span>
                <div>
                    <i><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/ico03.png" alt="" /></i><br>
                    최상위권 재학생을 위한<br>
                    최적화된 수준별 맞춤<br>
                    관리 시스템
                </div>
            </li>
            <li>
                <p>
                    썸머스쿨<br>
                    <span><%=cont01_day04%></span>
                </p>
                <span class="dot"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/dot_nonactive.png" alt="" /></span>
                <div>
                    <i><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/ico04.png" alt="" /></i><br>
                    N수와의 격차를<br>
                    줄이기 위한 여름방학<br>
                    최상위권 도약 프로그램
                </div>
            </li>
            <li>
                <p>
                    파이널 정규반<br>
                    <span><%=cont01_day05%></span>
                </p>
                <span class="dot"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/dot_nonactive.png" alt="" /></span>
                <div>
                    <i><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/ico05.png" alt="" /></i><br>
                    최상위권 재학생을 위한<br>
                    최적화된 수준별 맞춤<br>
                    관리 시스템
                </div>
            </li>
            <li class="scd-pre">
                <p>
                    FINISH
                </p>
                <span class="dot"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/dot_active.png" alt="" /></span>
                <div>
                    <i><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/ico06.png" alt="" /></i><br>
                    2026학년도<br>
                    대학수학능력시험
                </div>
            </li>
        </ul>
        
        <% If sCampusCode = "INTRO" Then '인트로 %>
        <p class="r-txt">※모집 전형 및 일정은 학원별로 상이할 수 있습니다.
        </p>
        <% End If %>
    </div>
</div>

<% If sCampusCode <> "INTRO" Then '인트로 제외 %>
<!-- 학원별 컨텐츠 -->
<%
    if campusName02 = "" then
        Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
		Response.End
    end if
    dirFile = "/intro/2024/pre_winter/"&campusName02&".asp"
    Server.Execute(dirFile)
%>
<!-- //학원별 컨텐츠 -->
<% End If %>
<% If sCampusCode = "INTRO" Then '인트로 %>
<div class="map">
    <!-- map-wrap -->
    <div class="map-wrap">
        <h2 class="tit mb50" data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/cont02_tit.png" alt="최근 5년 가장 어려웠던 수능, 러셀은 가장 탁월한 입결로 최상위권의 선택을 증명했습니다. 러셀의 방법은 옳았습니다.러셀 2024학년도 대입 의치한약수/SKY 각 지역 입결 1위*" /></h2>
        <!-- #include virtual="/common/inc/result/map02.asp" -->
    </div>
    <!-- //map-wrap -->
</div>
<% Else %>
<div class="cont02">
    <% If sCampusCode = "CD0342" Then '대구 %>
    <h2 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont02_tit02.png" alt="최근 5년 가장 어려웠던 수능,
        러셀은 가장 탁월한 입결로 최상위권의 선택을 증명했습니다.
        러셀의 방법은 옳았습니다." /></h2>
    <div class="inner">
        <!-- style02 -->
        <div class="result-box style02">
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/cont01_txt01.png" alt="2023 개원 첫 해, 놀라운 입시 결과로 최상위권을 증명하다!" /></p>
            <div class="style02-inner">
                
                <ul class="num-list tp06">
                    <li>
                        <p class="stu-num"><strong>4</strong></p>                           
                        <p class="stu-tit">서울대 의예</p>
                    </li>
                    <li>
                        <p class="stu-num"><strong>3</strong></p>
                        <p class="stu-tit">연세대 의예</p>
                    </li>
                    <li>
                        <p class="stu-num"><strong>9</strong></p>
                        <p class="stu-tit">메이저 의예</p>
                        <span class="txt">(서울대, 연세대, 성균관대,<br>가톨릭대, 울산대 기준)</span>
                    </li>
                    <li>
                        <p class="stu-num"><strong>116</strong></p>
                        <p class="stu-tit">전국 의예</p>
                    </li>
                </ul>
                <ul class="num-list mt70 tp06">
                    <li>
                        <p class="stu-num"><strong>116</strong></p>                           
                        <p class="stu-tit">치&middot;한&middot;수&middot;약학</p>
                    </li>
                    <li>
                        <p class="stu-num"><strong>73</strong></p>
                        <p class="stu-tit">서&middot;연&middot;고</p>
                    </li>
                    <li>
                        <p class="stu-num"><strong>88</strong></p>
                        <p class="stu-tit">서성한이 <br>과학기술원</p>
                    </li>
                    <li>
                        <p class="stu-num"><strong>117</strong></p>
                        <p class="stu-tit">경북대</p>
                        <span class="txt" style="top:76px">(*의약학계열 44명)</span>
                    </li>
                </ul>
            </div>
            <div class="info-stxt tar" style="top:auto; bottom: 80px; right:100px;">
                <span class="info-color">*2023년 러셀 대구 바른공부 자습전용관 재원생 기준 (복수 대학 합격자 및 수시 중복 합격자 포함, 단과 수강생 미포함)
                </span>
            </div>        
        </div>
    </div>
    <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
    <h2 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont02_tit02.png" alt="최근 5년 가장 어려웠던 수능,
        러셀은 가장 탁월한 입결로 최상위권의 선택을 증명했습니다.
        러셀의 방법은 옳았습니다." /></h2>
    <div class="inner">
        <!-- style02 -->
        <div class="result-box style02">
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/pre_winter/cont02_txt01.png" alt="러셀 센텀 2024학년도 대입 합격 현황" /></p>
            <div class="style02-inner mt70">
                <ul class="num-list tp05">
                    <li>
                        <p class="stu-tit">의예과</p>
                        <p class="stu-num"><strong>47</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">치/한/약/수 
                        </p>
                        <p class="stu-num"><strong>34</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">서연고</p>
                        <p class="stu-num"><strong>34</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">서성한이</p>
                        <p class="stu-num"><strong>54</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">중경외시</p>
                        <p class="stu-num"><strong>36</strong><span>명</span></p>
                    </li>
                </ul>
                <ul class="num-list mt60 tp05">
                    <li>
                        <p class="stu-tit">건동홍숙</p>
                        <p class="stu-num"><strong>18</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">이공계특성화</p>
                        <p class="stu-num"><strong>7</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">경찰대&middot;사관학교
                        </p>
                        <p class="stu-num"><strong>3</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">교원&middot;교육대
                        </p>
                        <p class="stu-num"><strong>7</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">부산대&middot;경북대
                        </p>
                        <p class="stu-num"><strong>88</strong><span>명</span></p>
                    </li>
                </ul>
            </div>
            <div class="info-stxt tar" style="top:auto; bottom: 64px; right:35px;">
                <span class="info-color">
                    ※ 러셀 센텀학원 바른공부 자습전용관 재원생 24학년도 합격자 기준 (단과 수강생 제외, 복수대학 합격자 포함)                       
                </span>
            </div> 
        </div>
        <div class="result-box style02">
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/pre_winter/cont02_txt02.png" alt="최상위권의 선택! 러셀 센텀 5개년 누적 입결 현황" /></p>
            <div class="style02-inner mt70">
                <ul class="num-list tp05">
                    <li>
                        <p class="stu-tit">의예과</p>
                        <p class="stu-num"><strong>223</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">치/한/약/수 
                        </p>
                        <p class="stu-num"><strong>159</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">서연고</p>
                        <p class="stu-num"><strong>161</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">서성한이</p>
                        <p class="stu-num"><strong>219</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">중경외시</p>
                        <p class="stu-num"><strong>204</strong><span>명</span></p>
                    </li>
                </ul>
                <ul class="num-list mt60 tp05">
                    <li>
                        <p class="stu-tit">건동홍숙</p>
                        <p class="stu-num"><strong>93</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">이공계특성화</p>
                        <p class="stu-num"><strong>27</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">경찰대&middot;사관학교
                        </p>
                        <p class="stu-num"><strong>16</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">교원&middot;교육대
                        </p>
                        <p class="stu-num"><strong>46</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">부산대&middot;경북대
                        </p>
                        <p class="stu-num"><strong>322</strong><span>명</span></p>
                    </li>
                </ul>
            </div>
            <div class="info-stxt tar" style="top:auto; bottom: 64px; right:35px;">
                <span class="info-color">
                    ※ 러셀 센텀학원 바른공부 자습전용관 재원생 20-24학년도 합격자 기준 (단과 수강생 제외, 복수대학 합격자 포함)
                </span>
            </div>  
        </div>
    </div>
    <% ElseIf sCampusCode = "CD0349" Then '울산 %>
    <div class="inner">
        <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/cont02_tit.png" alt="러셀 2024학년도 대입 주요 대학 합격자 역대 최다 배출*" /></p>
        <!-- 입결 카운팅 -->
        <ul class="result-list mt70">
            <li>
                <dl>
                    <dt>서울대 의예과</dt>
                    <dd><strong class="counter" data-count="19">0</strong><span>명<sup>1)</sup></span></dd>
                </dl>
                <span class="badge"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/top_label.png" alt="" /></span>
            </li>
            <li>
                <dl>
                    <dt>메이저 의대</dt>
                    <dd><strong class="counter" data-count="96">0</strong><span>명<sup>2)</sup></span></dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt>전국 의예과</dt>
                    <dd><strong class="counter" data-count="745">0</strong><span>명<sup>3)</sup></span></dd>
                </dl>
            </li>
        </ul>
        <ul class="result-list">
            <li>
                <dl>
                    <dt>의치한약수</dt>
                    <dd><strong class="counter" data-count="1530">0</strong><span>명<sup>4)</sup></span></dd>
                </dl>
                <p>경희대 한의예과(인문) 4명</p>
            </li>
            <li>
                <dl>
                    <dt>서울대</dt>
                    <dd><strong class="counter" data-count="253">0</strong><span>명<sup>5)</sup></span></dd>
                </dl>
                <p>서울대 경영대학 11명, 서울대 경제학부 17명
                </p>
                <span class="badge"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/top_label.png" alt="" /></span>
            </li>
            <li>
                <dl>
                    <dt>서울대/연세대/고려대</dt>
                    <dd><strong class="counter" data-count="1053">0</strong><span>명<sup>6)</sup></span></dd>
                </dl>
            </li>
        </ul>
        <!-- //입결 카운팅 -->
        <div class="info-stxt">
            <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_info.png" alt="i" /></i></span>
            <div class="data-view">
                1) 2020-2024학년도 러셀에서 배출한 서울대 의예과 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29기준)<br>
                2024학년도 서울대의예과 (러셀 대치 7명, 러셀 부천 1명, 러셀 분당 1명, 러셀 평촌 1명, 러셀 대구 4명, 러셀CORE 광주 2명, 러셀CORE 대전 3명 배출)<br>
                2) 2020-2024학년도 러셀에서 배출한 메이저 의대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                2024학년도 메이저 의대 (서울대 의예과 19명, 연세대(서울) 의예과 23명, 성균관대 의예과 7명, 가톨릭대(성의) 의예과 21명, 울산대 의예과 6명, 고려대 의과대학 20명)<br>
                3) 2020-2024학년도 러셀에서 배출한 전국 의예과 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                4) 2020-2024학년도 러셀에서 배출한 서울대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                5) 2020-2024학년도 러셀에서 배출한 서울대 합격자 수 2024학년도 최대 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                6) 2020-2024학년도 러셀에서 배출한 서울대/연세대/고려대 합격자 수 2024학년도 최대 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                * 전국 1위_수능 업계 오프라인 학원_2024학년도 대입 서울대학교 의예과 / 서울대 합격자 수 홈페이지 노출 기준 (2024.02.29 기준)<br>
                ※ 본 결과는 최종 합격자를 기준으로 집계하였습니다.
            </div>
        </div> 
        <a href="https://russel.megastudy.net/perfect/2024/susi/index.asp" class="btn-black">2024학년도 대입 합격 결과</a>
    </div>
    <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
    <h2 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont02_tit02.png" alt="최근 5년 가장 어려웠던 수능,
        러셀은 가장 탁월한 입결로 최상위권의 선택을 증명했습니다.
        러셀의 방법은 옳았습니다." /></h2>
    <div class="inner">
        <!-- style02 -->
        <div class="result-box style02">
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/cont01_txt01.png" alt="러셀CORE 청주는 결과로 증명합니다! 2024학년도 개원 첫 해 대입 합격 현황" /></p>
            <div class="style02-inner">
                <ul class="num-list tp05">
                    <li>
                        <p class="stu-tit">서울대 의예</p>
                        <p class="stu-num"><strong>2</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">메이저 의예</p>
                        <p class="stu-num"><strong>9</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">전국 의예</p>
                        <p class="stu-num"><strong>69</strong><span>명</span></p>
                    </li>
                </ul>
                <ul class="num-list mt60 tp05">
                    <li>
                        <p class="stu-tit">메디컬<br>
                            <span>(의/치/한/약/수)</span></p>
                        <p class="stu-num"><strong>119</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit mb20">서연고</p>
                        <p class="stu-num"><strong>28</strong><span>명</span></p>
                    </li>
                </ul>
            </div>
            <div class="info-stxt" style="top:auto; bottom: 64px; right:100px;">
                <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_info.png" alt="i" /></i></span>
                <div class="data-view">
                    *러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2024.02.27 기준)<br>
                    (복수 대학 합격자 포함 / 단과 수강생 제외)<br>
                    *24학년도 대학수학능력시험 응시한 광주 지역 재학생 표준점수 최고점 기준<br>
                    *메이저 의예 : 서울대/연세대/성균관대/가톨릭대/울산대 기준
                </div>
            </div>        
        </div>
    </div>
    <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
    <h2 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont02_tit02.png" alt="최근 5년 가장 어려웠던 수능,
        러셀은 가장 탁월한 입결로 최상위권의 선택을 증명했습니다.
        러셀의 방법은 옳았습니다." /></h2>
    <div class="inner">
        <!-- style02 -->
        <div class="result-box style02">
            <div class="style02-inner">
                <ul class="num-list tp09">
                    <li>
                        <p class="stu-tit">2년 연속</p>
                        <p class="stu-num"><strong>서울대학교 의예과</strong><br> <span>합격생 배출</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">2년 연속</p>
                        <p class="stu-num"> <span>대전 지역</span> <strong>최상위권 입결 1위</strong></p>
                    </li>
                    <li>
                        <p class="stu-tit">2024학년도</p>
                        <p class="stu-num"><span>메이저 의예</span> <strong>7명</strong></p>
                    </li>
                    <li>
                        <p class="stu-tit">2024학년도 최종합격</p>
                        <p class="stu-num"><span>의/치/한/약/수</span> <strong>74명</strong></p>
                    </li>
                </ul>
            </div>
            <div class="style02-inner mt90">
                <ul class="num-list tp05">
                    <li>
                        <p class="stu-tit">서울대 의예</p>
                        <p class="stu-num"><strong>3</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">메이저 의예</p>
                        <p class="stu-num"><strong>7</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">전국 의예과</p>
                        <p class="stu-num"><strong>41</strong><span>명</span></p>
                    </li>
                </ul>
                <ul class="num-list mt60 tp05">
                    <li>
                        <p class="stu-tit">메디컬 <br><span>(의/치/한/약/수)</p>
                        <p class="stu-num"><strong>74</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">SKY/포항공대/ <br>카이스트</p>
                        <p class="stu-num"><strong>26</strong><span>명</span></p>
                    </li>
                </ul>
            </div>
            <div class="info-stxt" style="top:auto; bottom: 70px; right:100px;">
                <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_info.png" alt="i" /></i></span>
                <div class="data-view">
                    ※ 최종 업데이트 : 2024-03-05 기준<br>
                    ※ 2024학년도 수시/정시 최종 합격 기준 / 러셀CORE 대전 바른공부 자습전용관 재원생 합격생 기준<br>
                    ※ 최상위권: 메디컬(의/치/한/약/수) + SKY<br>
                    ※ 메이저 의예 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예<br>
                    ※ 대전 지역 단과학원_2023학년도, 2024학년도 의치한수약+서연고 최종 합격자 수 비교 기준<br>
                    (홈페이지 대입 실적 기준/2024-03-05 기준)
                               
                </div>
            </div>        
        </div>
    </div>
    <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
    <h2 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont02_tit02.png" alt="최근 5년 가장 어려웠던 수능,
        러셀은 가장 탁월한 입결로 최상위권의 선택을 증명했습니다.
        러셀의 방법은 옳았습니다." /></h2>
    <div class="inner">
        <!-- style02 -->
        <div class="result-box style02">
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/cont01_txt01.png" alt="러셀 영통 2020~2024학년도 합격자 현황" /></p>
            <div class="style02-inner">
                <ul class="num-list tp09">
                    <li>
                        <p class="stu-tit">2024학년도 최종합격</p>
                        <p class="stu-num"><strong>서울대학교</strong> <span>3명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">2024학년도 <strong>메이저 의예</strong></p>
                        <p class="stu-num"><strong>&lt;가톨릭대&gt;</strong> <span>합격생 배출</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">2024학년도 최종합격</p>
                        <p class="stu-num"><span>의/치/한/약/수</span> <strong>46명</strong></p>
                    </li>
                    <li>
                        <p class="stu-tit">2024학년도 최종합격</p>
                        <p class="stu-num"><span>SKY</span> <strong>17명</strong></p>
                    </li>
                </ul>
            </div>
            <div class="style02-inner mt80">
                <ul class="num-list tp05">
                    <li>
                        <p class="stu-tit">의예과</p>
                        <p class="stu-num"><strong>25</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">치의예</p>
                        <p class="stu-num"><strong>4</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">한의예</p>
                        <p class="stu-num"><strong>4</strong><span>명</span></p>
                    </li>
                </ul>
                <ul class="num-list mt60 tp05">
                    <li>
                        <p class="stu-tit">수의예</p>
                        <p class="stu-num"><strong>10</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">약학과</p>
                        <p class="stu-num"><strong>3</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">SKY</p>
                        <p class="stu-num"><strong>17</strong><span>명</span></p>
                    </li>
                </ul>
            </div>
            <div class="info-stxt" style="top:auto; bottom: 70px; right:100px;">
                <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_info.png" alt="i" /></i></span>
                <div class="data-view">
                    ※ 2023년 러셀CORE 원주학원 바른공부 자습전용관 재원생 합격자 기준 <br>
                    ※ 메이저 의예 기준 : 서울대/연세대/성균관대/가톨릭대(성의)/울산대 기준 <br>
                    ※ 최종 업데이트 : 2024-02-28   
                               
                </div>
            </div>
        </div>
    </div>
    <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
    <h2 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont02_tit02.png" alt="최근 5년 가장 어려웠던 수능,
        러셀은 가장 탁월한 입결로 최상위권의 선택을 증명했습니다.
        러셀의 방법은 옳았습니다." /></h2>
    <div class="inner">
        <!-- style02 -->
        <div class="result-box style02">
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/cont01_txt01.png" alt="러셀CORE 전주 바른공부 자습전용관 재원생 기준 2024학년도 합격생 현황" /></p>
            <div class="style02-inner">
                <ul class="num-list tp05">
                    <li>
                        <p class="stu-tit mb20">연세대 의예</p>
                        <p class="stu-num"><strong>3</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit mb20">고려대 의예</p>
                        <p class="stu-num"><strong>1</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit mb20">의예과</p>
                        <p class="stu-num"><strong>46</strong><span>명</span></p>
                    </li>
                </ul>
                <ul class="num-list mt70 tp05">
                    <li>
                        <p class="stu-tit mb20">치&middot;한&middot;수&middot;약</p>
                        <p class="stu-num"><strong>37</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit mb20">SKY</p>
                        <p class="stu-num"><strong>18</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">서성한이 <br>과기원</p>
                        <p class="stu-num"><strong>31</strong><span>명</span></p>
                    </li>
                </ul>
            </div>
            <div class="info-stxt tar" style="top:auto; bottom: 64px; right:97px;">
                <span class="info-color">
                    ※ 최종 업데이트 : 2024-02-26 기준 (지속적으로 업데이트할 예정입니다.) <br>
                    ※ 2024학년도 수시/정시 최종 합격 기준 / 러셀CORE 전주 바른공부 자습전용관 재원생 합격생 기준 <br>
                    (홈페이지 대입 실적 기준) 
                </span>
            </div>          
        </div>
    </div>
    <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
    <h2 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont02_tit02.png" alt="최근 5년 가장 어려웠던 수능,
        러셀은 가장 탁월한 입결로 최상위권의 선택을 증명했습니다.
        러셀의 방법은 옳았습니다." /></h2>
    <div class="inner">
        <!-- style02 -->
        <div class="result-box style02">
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/cont01_txt01.png" alt="러셀CORE 창원 2024학년도 대입 합격 현황" /></p>
            <div class="style02-inner">
                <ul class="num-list tp09">
                    <li>
                        <p class="stu-tit">개원 첫해</p>
                        <p class="stu-num"><strong>메이저 의대 합격생 배출</strong></p>
                    </li>
                    <li>
                        <p class="stu-tit">개원 첫해</p>
                        <p class="stu-num"><strong>전국 의예과 합격생 21명 배출</strong></p>
                    </li>
                    <li>
                        <p class="stu-tit">2024학년도 최종합격</p>
                        <p class="stu-num"><strong>의/치/한/약/수 42명</strong></p>
                    </li>
                    <li>
                        <p class="stu-tit">2024학년도 최종합격</p>
                        <p class="stu-num"><strong>SKY 10명</strong></p>
                    </li>
                </ul>
            </div>
            <div class="style02-inner mt80">
                <ul class="num-list tp05">
                    <li>
                        <p class="stu-tit">울산대 의예</p>
                        <p class="stu-num"><strong>1</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">서울대 치의예</p>
                        <p class="stu-num"><strong>1</strong><span>명</span></p>
                    </li>
                </ul>
                <ul class="num-list mt50 tp05">
                    <li>
                        <p class="stu-tit mb20">전국 의예</p>
                        <p class="stu-num"><strong>21</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">메디컬 <br>(의/치/한/약/수)</p>
                        <p class="stu-num"><strong>42</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">SKY <br>/서성한이</p>
                        <p class="stu-num"><strong>43</strong><span>명</span></p>
                    </li>
                </ul>
            </div>
            <div class="info-stxt tar" style="top:auto; bottom: 64px; right:102px;">
                <span class="info-color">
                    ※ 최종 업데이트 : 2024-03-07 <br>
                    ※ 2024학년도 러셀CORE 창원 바른공부 자습전용관 재원생 합격생 기준(복수 대학 합격자 포함, 단과 수강생 미포함)<br>
                    ※ 메이저 의대 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예                        
                </span>
            </div> 
        </div>
    </div>
    <% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
    <h2 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont02_tit02.png" alt="최근 5년 가장 어려웠던 수능,
        러셀은 가장 탁월한 입결로 최상위권의 선택을 증명했습니다.
        러셀의 방법은 옳았습니다." /></h2>
    <div class="inner">
        <!-- style02 -->
        <div class="result-box style02">
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/cont01_txt01.png" alt="러셀CORE 청주는 결과로 증명합니다! 2024학년도 개원 첫 해 대입 합격 현황" /></p>
            <div class="style02-inner">
                <ul class="num-list tp05">
                    <li>
                        <p class="stu-tit">의예</p>
                        <p class="stu-num"><strong>8</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">치의예</p>
                        <p class="stu-num"><strong>1</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">한의예</p>
                        <p class="stu-num"><strong>4</strong><span>명</span></p>
                    </li>
                </ul>
                <ul class="num-list mt70 tp05">
                    <li>
                        <p class="stu-tit">수의예</p>
                        <p class="stu-num"><strong>1</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">약학</p>
                        <p class="stu-num"><strong>3</strong><span>명</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">SKY</p>
                        <p class="stu-num"><strong>9</strong><span>명</span></p>
                    </li>
                </ul>
            </div>
            <div class="info-stxt" style="top:auto; bottom: 80px; right:100px;">
                <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_info.png" alt="i" /></i></span>
                <div class="data-view">
                    2023년 러셀CORE 청주 바른공부 자습전용관 재원 이력이 있는 학생 (복수대학 합격자 포함, 단과 수강생 제외) 
           
                </div>
            </div>        
        </div>
    </div>
    <% End If %>
</div>
<% End If %>

<div class="cont03">
    <div class="inner">
        <h2 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/pre_winter/cont03_tit.png" alt="한발 앞선 겨울의 시작, 러셀이라면 프리윈터스쿨도 다르다" /></h2>
        <% If sCampusCode = "CD0246" Then '센텀 %>
        <h3>
            프리윈터스쿨은 <strong>윈터스쿨 개강 전</strong>, 보다 효율적인 학습을 위해 <strong>학년별&middot;과목별 구분된 1회차 프리윈터특강</strong>과<br>
            <strong>입시 전문 담임선생님의 철저한 학습관리</strong>가 더해진 <strong>가장 효율적인 겨울을 시작하는 학습관리 프로그램</strong>입니다.<br>
            <br>
            프리윈터특강으로 <strong>본인의 약점을 보완</strong>하고, <strong>윈터스쿨 출강 선생님의 수업을 미리 수강해보세요. </strong>
        </h3>
        <% Else %>
        <h3>
            <strong>프리윈터스쿨</strong>은 체계적인 학습, 생활 습관 관리가 중요한 재학생을 대상으로<br>
            <strong>‘입시 전문 담임선생님의 철저한 학습관리’</strong>와 <strong>‘수능 시간표 기반의 규칙적인 생활관리’</strong>를 통해<br>
            <strong>한발 앞서 효율적인 겨울을 시작</strong>하는 학습관리 프로그램입니다.
        </h3>
        <% End If %>
        <div class="mng-point">
            <% If sCampusCode = "CD0246" Then '센텀 %>
            <h4>프리윈터스쿨만의 수업 포인트</h4>
            <% Else %>
            <h4>프리윈터스쿨만의 관리 포인트</h4>
            <% End If %>
            <ol>
                <li data-aos="flip-left">
                    <div class="m-p-num"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/cont03_num01.png" alt="01" /></div>
                    <% If sCampusCode = "CD0343" Then '코어원주 %>
                    <div class="card-box">
                        <p>생활관리</p>
                        <ul>
                            <li>학습 저해 요소 제거<br>
                                <span>(휴대폰 제출 필수/<br>
                                학습 목적 외 태블릿 이용 금지)</span></li>
                            <li>1일 8회 이상<br>
                            지속적인 학습 집중도 점검
                            </li>
                            <li>데이터 기반 자습 집중도 점검 및<br>
                            면학 분위기 관리,<br>
                            정기적 학생/학부모 대상 문자 발송
                            </li>
                            <li>교육점수 제도로<br>
                            엄격한 면학 분위기 관리
                            </li>
                        </ul>
                    </div>
                    <span style="bottom:-7px"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/cont03_img01.png" alt="" /></span>
                    <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
                    <div class="card-box">
                        <p>단기 집중 수업</p>
                        <ul>
                            <li>
                                정말 필요로 하는 범위/단원만<br>
                                수강할 수 있는 단기 특강
                            </li>
                            <li>과목별/수준별/진도별<br>
                            전략적인 수업 선택</li>
                        </ul>
                    </div>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/cont03_img01.png" alt="" /></span>
                    <% Else %>
                    <div class="card-box">
                        <p>생활관리</p>
                        <ul>
                            <li>
                                전자 출결 시스템과<br>
                                수시 현장 점검을 통한 철저한 출결 관리</li>
                            <li>교육점수 제도로<br>
                            엄격한 면학분위기 관리</li>
                            <li>지속적인 1 대 1 개별 상담으로<br>학습 동기부여</li>
                        </ul>
                    </div>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/cont03_img01.png" alt="" /></span>
                    <% End If %>
                </li>
                <li data-aos="flip-left" data-aos-delay="300">
                    <div class="m-p-num"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/cont03_num02.png" alt="02" /></div>
                    <% If sCampusCode = "CD0343" Then '코어원주 %>
                    <div class="card-box">
                        <p>학습관리</p>
                        <ul>
                            <li>올바른 학습 습관 형성을 위한<br>구조화된 학습 가이드 제시</li>
                            <li>과목별 보완점과 체계적인 학습 방향 상담<br>
                                - 영단어&amp;영어듣기 : <br>
                                <span>매일 진행되어 겨울방학 전 영어 실력 향상</span><br>
                                - 학습 플래너 작성 : <br>
                                <span>학습 목표 수립 및 담임선생님의<br>피드백을 통해 학습 밸런스 점검 및 관리</span><br>
                                - 일일수학 30제 : <br>
                                <span>매일 일정한 양의 수학 문제 풀이로<br>학습 습관 형성 후 주/월별 학습 현황 파악</span>
                                
                            </li>
                        </ul>
                    </div>
                    <span style="right:5px;bottom:-17px;"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/cont03_img02.png" alt="" /></span>
                    <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
                    <div class="card-box">
                        <p>개별 질의응답</p>
                        <ul>
                            <li>검증된 강사진의 1:1 질의응답 진행</li>
                            <li>수강하지 않는 과목도 언제든지 가능한<br>
                            과목별 질의응답 신청 시스템 </li>
                        </ul>
                    </div>
                    <span style="right:5px;bottom:-3px;"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/cont03_img02.png" alt="" /></span>
                    <% Else %>
                    <div class="card-box">
                        <p>학습관리</p>
                        <ul>
                            <li>올바른 학습 습관 형성을 위한<br>구조화된 학습 가이드 제시</li>
                            <li>플래너 점검으로 학습 현황 점검 및<br>부정적 습관 개선</li>
                            <li>과목별 보완점 체크와<br>체계적인 학습 방향 상담</li>
                        </ul>
                    </div>
                    <span style="right:5px;bottom:-3px;"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/cont03_img02.png" alt="" /></span>
                    <% End If %>
                </li>
                <li data-aos="flip-left" data-aos-delay="600">
                    <div class="m-p-num"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/cont03_num03.png" alt="03" /></div>
                    <% If sCampusCode = "CD0343" Then '코어원주 %>
                    <div class="card-box">
                        <p>입시관리</p>
                        <ul>
                            <li>다양하고 정확한 입시 정보 제공<br><span>(설명회, 입시 특강 등)</span></li>
                            <li>학생 맞춤형 입시 전략 제시<br>
                            <span>(입학 전 성적부터 성적 데이터<br>체계적으로 관리)</span></li>
                            <li>성적 포트폴리오와<br>실제 사례를 기반으로<br>목표 대학/학과에 필요한 요소,<br> 
                                점수 확보에 대한 맞춤 학습 계획 수립
                           </li>
                        </ul>
                    </div>
                    <span style="right:20px;bottom:-7px"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/cont03_img03.png" alt="" /></span>
                    <% Else %>
                    <div class="card-box">
                        <p>입시관리</p>
                        <ul>
                            <li>다양하고 정확한 입시 정보 제공<br><span>(설명회, 특강 등)</span></li>
                            <li>내신 및 모의고사 성적 추이 분석을<br>통한 맞춤 전략 확립</li>
                        </ul>
                    </div>
                    <span style="right:20px"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/cont03_img03.png" alt="" /></span>
                    <% End If %>
                </li>
            </ol>
        </div>
    </div>
</div>
<% If sCampusCode = "CD0246" Then '센텀 %>
<div class="cont03-1">
    <div class="inner">
        <h2 class="tit" data-aos="fade-down">프리윈터스쿨 특강 시간표</h2>
        
        <div class="tab-cont-wrap tbl-box type02 mt100">
            <div class="bt-tab">
                <a href="javascript:void(0)" class="on"><strong>고3</strong></a>
                <a href="javascript:void(0)"><strong>고2</strong></a>
                <a href="javascript:void(0)"><strong>고1</strong></a>
            </div>
            <!-- 고3 -->
            <div class="cont-box mt50 on">
                <table class="tbl-01 schedule">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>시간</th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="bg-gray">
                            <td>요일</td>
                            <td>12월 16일</td>
                            <td>12월 17일</td>
                            <td>12월 18일</td>
                            <td>12월 19일</td>
                            <td>12월 20일</td>
                            <td>12월 21일</td>
                        </tr>
                        <tr>
                            <td rowspan="2">오전</td>
                            <td class="bg-sky" rowspan="2" colspan="5">학사 일정</td>
                            <td>
                                수학<br>
                                바른찬 선생님
                            </td>
                        </tr>
                        <tr>
                            <td>
                                한국사<br>
                                홍민수 선생님
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="2">오후</td>
                            <td class="bg-sky" rowspan="2" colspan="5">학사 일정</td>
                            <td>
                                영어<br>
                                위대영 선생님
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td rowspan="2">저녁</td>
                            <td>&nbsp;</td>
                            <td>
                                인문논술<br>
                                최우석 선생님
                            </td>
                            <td>
                                화학<br>
                                정우정 선생님
                                
                            </td>
                            <td>
                                생활과윤리<br>
                                황진섭 선생님
                            </td>
                            <td>
                                수학<br>
                                손원재 선생님
                            </td>
                            <td>
                                생명과학<br>
                                이석준 선생님
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                지구과학<br>
                                함석진 선생님(1)
                            </td>
                            <td>
                                지구과학<br>
                                함석진 선생님(2)
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                사회문화<br>
                                이민기 선생님
                            </td>
                        </tr>
                        <tr class="bg-gray">
                            <td>요일</td>
                            <td>12월 23일</td>
                            <td>12월 24일</td>
                            <td>12월 25일</td>
                            <td>12월 26일</td>
                            <td>12월 27일</td>
                            <td>12월 28일</td>
                        </tr>
                        <tr>
                            <td rowspan="2">오전</td>
                            <td class="bg-sky" rowspan="2" colspan="5">학사 일정</td>
                            <td>
                                수학<br>
                                김도형 선생님
                            </td>
                        </tr>
                        <tr>
                            <td>
                                한국지리<br>
                                홍민수 선생님
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="2">오후</td>
                            <td class="bg-sky" rowspan="2" colspan="5">학사 일정</td>
                            <td>
                                국어<br>
                                박수빈 선생님
                            </td>
                        </tr>
                        <tr>
                            <td>
                                수학<br>
                                권동우 선생님
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="2">저녁</td>
                            <td>
                                수학<br>
                                권동우 선생님
                            </td>
                            <td>
                                물리<br>
                                신승환 선생님
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                수리논술<br>
                                김지훈 선생님
                            </td>
                            <td>
                                영어<br>
                                한세훈 선생님
                            </td>
                            <td>
                                영어<br>
                                문재원 선생님
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- //고3 -->
            <!-- 고2 -->
            <div class="cont-box mt50">
                <table class="tbl-01 schedule">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>시간</th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="bg-gray">
                            <td>요일</td>
                            <td>12월 16일</td>
                            <td>12월 17일</td>
                            <td>12월 18일</td>
                            <td>12월 19일</td>
                            <td>12월 20일</td>
                            <td>12월 21일</td>
                        </tr>
                        <tr>
                            <td rowspan="3">오전</td>
                            <td class="bg-sky" rowspan="3" colspan="5">학사 일정</td>
                            <td>
                                영어<br>
                                이지수 선생님
                            </td>
                        </tr>
                        <tr>
                            <td>
                                한국사<br>
                                홍민수 선생님
                            </td>
                        </tr>
                        <tr>
                            <td>
                                수학<br>
                                바른찬 선생님
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="2">오후</td>
                            <td class="bg-sky" rowspan="2" colspan="5">학사 일정</td>
                            <td>
                                수학<br>
                                권동우 선생님
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td rowspan="3">저녁</td>
                            <td>&nbsp;</td>
                            <td>
                                영어<br>
                                차희경 선생님
                            </td>
                            <td>
                                수리논술<br>
                                김지훈 선생님
                            </td>
                            <td>
                                국어<br>
                                정은주 선생님
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td> 국어<br>
                                최미성 선생님
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                인문논술<br>
                                최우석 선생님
                            </td>
                            <td>
                                화학<br>
                                정우정 선생님
                            </td>
                            <td>
                                생활과윤리<br>
                                황진섭 선생님
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                사회문화<br>
                                이민기 선생님
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                지구과학<br>
                                함석진 선생님(1)
                            </td>
                            <td>
                                지구과학<br>
                                함석진 선생님(2)
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                생명과학<br>
                                이석준 선생님
                            </td>
                        </tr>
                        <tr class="bg-gray">
                            <td>요일</td>
                            <td>12월 23일</td>
                            <td>12월 24일</td>
                            <td>12월 25일</td>
                            <td>12월 26일</td>
                            <td>12월 27일</td>
                            <td>12월 28일</td>
                        </tr>
                        <tr>
                            <td rowspan="3">오전</td>
                            <td class="bg-sky" rowspan="3" colspan="5">학사 일정</td>
                            <td>
                                한국지리<br>
                                홍민수 선생님
                            </td>
                        </tr>
                        <tr>
                            <td>
                                수학<br>
                                김도형 선생님
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td rowspan="2">오후</td>
                            <td class="bg-sky" rowspan="2" colspan="5">학사 일정</td>
                            <td>
                                수학<br>
                                권동우 선생님
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="2">저녁</td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                국어<br>
                                최미성 선생님
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                수학<br>
                                최병찬 선생님
                            </td>
                            <td>
                                영어<br>
                                차희경 선생님
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </tbody>
                </table>
                
            </div>
            <!-- //고2 -->
            <!-- 고1 -->
            <div class="cont-box mt50">
                <table class="tbl-01 schedule">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>시간</th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="bg-gray">
                            <td>요일</td>
                            <td>12월 16일</td>
                            <td>12월 17일</td>
                            <td>12월 18일</td>
                            <td>12월 19일</td>
                            <td>12월 20일</td>
                            <td>12월 21일</td>
                        </tr>
                        <tr>
                            <td rowspan="2">오전</td>
                            <td class="bg-sky" rowspan="2" colspan="5">학사 일정</td>
                            <td>
                                영어<br>
                                이지수 선생님
                            </td>
                        </tr>
                        <tr>
                            <td>
                                한국사<br>
                                홍민수 선생님
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="2">오후</td>
                            <td class="bg-sky" rowspan="2" colspan="5">학사 일정</td>
                            <td>
                                수학<br>
                                권동우 선생님
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td rowspan="2">저녁</td>
                            <td>&nbsp;</td>
                            <td>
                                영어<br>
                                차희경 선생님
                            </td>
                            <td>
                                영어<br>
                                이지수 선생님
                                
                            </td>
                            <td>
                                국어<br>
                                정은주 선생님
                            </td>
                            <td>
                                통합사회<br>
                                황진섭 선생님
                            </td>
                            <td>
                                국어<br>
                                최미성 선생님
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr class="bg-gray">
                            <td>요일</td>
                            <td>12월 23일</td>
                            <td>12월 24일</td>
                            <td>12월 25일</td>
                            <td>12월 26일</td>
                            <td>12월 27일</td>
                            <td>12월 28일</td>
                        </tr>
                        <tr>
                            <td rowspan="2">오전</td>
                            <td class="bg-sky" rowspan="2" colspan="5">학사 일정</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td rowspan="2">오후</td>
                            <td class="bg-sky" rowspan="2" colspan="5">학사 일정</td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="2">저녁</td>
                            <td>
                                통합과학<br>
                                신승환 선생님
                            </td>
                            <td>
                                국어<br>
                                최미성 선생님
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                수학<br>
                                최병찬 선생님
                            </td>
                            <td>
                                영어<br>
                                차희경 선생님
                            </td>
                            <td>
                                수학<br>
                                최병찬 선생님
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </tbody>
                </table>
                
            </div>
            <!-- //고1 -->
        </div>
        <div style="display:flex;justify-content: flex-end;">
            <p class="txt_left mt20 fz13">
                * 프리윈터특강만 수강도 가능합니다.<br>
                * 커리큘럼에 맞춰 학년 구분 없이 신청 가능합니다.<br>
                * 전 과목 1회차 특강입니다. (지구과학 제외)
            </p>
        </div>

        <a href="https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1821" class="btn-black">프리윈터특강 신청하기</a>
    </div>
</div>

<script>
    tabMenu('.bt-tab','.cont-box')
</script>
<% End If %>
<div class="cont04">
    <div class="inner">
        <!-- 바자관 시간표 -->
        <!--#include virtual="/intro/2024/pre_winter/baja_schedule.asp"-->
        <!-- 바자관 시간표 -->
    </div>
</div>

<div class="cont05">
    <div class="inner">
        <h2 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/cont05_tit.png" alt="올바른 공부 습관 형성으로 수능까지 탄탄하게! 프리윈터스쿨 프로그램" /></h2>
        <div class="program-info">
            <div data-aos="<%=cont05_fade01%>">
                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/pre_winter/cont05_img01.jpg" alt="" /></div>
                <dl>
                    <dt>학습에만 몰입할 수 있는 환경</dt>
                    <dd>
                        <ul>
                            <li>수능 시간표 기반의 표준 시간표를 통한 <strong>규칙적 생활관리</strong></li>
                            <li><strong>학습 방해 요소 제거</strong><br>
                                (입실시 휴대폰 필수 제출 / 학습 목적 외 태블릿PC 이용 금지)</li>
                            <li>1일 8회 이상 출결 관리로 <strong>지각 / 무단 외출 / 무단 결석 등<br>
                            면학분위기 저해 요소 차단</strong></li>
                            <li>슬럼프, 학습 고충을 긍정적으로 극복할 수 있도록<br>
                            <strong>정기적 상담 진행</strong></li>
                        </ul>
                    </dd>
                </dl>
            </div>
            <div data-aos="<%=cont05_fade02%>">
                <dl>
                    <dt>올바른 학습 계획
                    </dt>
                    <dd>
                        <ul>
                            <li>모의고사 및 내신 성적 분석을 통한 <strong>과목별 학습 상황 점검</strong></li>
                            <li><strong>데일리 영단어 &amp; 영어듣기 테스트</strong> : 겨울방학 전 영어 실력 향상</li>
                            <li><strong>러셀 학습 플래너</strong> : 학습 목표 수립 및 담임선생님 피드백을 통한<br>
                                <strong>자기주도학습 훈련</strong></li>
                            <li><strong>일일수학 30제</strong> : 매일 일정한 양의 수학 문제 풀이로<br>
                                <strong>학습 습관 형성</strong> 및 <strong>주/월별 학습 현황 파악</strong></li>
                        </ul>
                    </dd>
                </dl>
                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/pre_winter/cont05_img02.jpg" alt="" /></div>
            </div>
            <% If sCampusCode <> "CD0340" Then '코어광주 제외 %>
            <div data-aos="<%=cont05_fade03%>">
                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/pre_winter/cont05_img03.jpg" alt="" /></div>
                <dl>
                    <dt>학생 학습 맞춤 입시전략
                    </dt>
                    <dd>
                        <ul>
                            <li>과목별 학습 패턴 파악 후 <strong>맞춤형 학습법</strong> 제시</li>
                            <li>성적 포트폴리오와 누적된 실제 사례를 기반으로<br>
                                <strong>목표대학/학과에 필요한 맞춤 학습 계획 수립</strong></li>
                            <li>입시 특강 및 설명회<br>
                                - 과목별 강사진의 <strong>학습법 특강</strong><br>
                                - 수시/정시 전형 및 대입 제도 변화에 따른 <strong>입시전략 설명회</strong><br>
                                - <strong>학부모 입시 교실</strong>로 최근 입시 주요 포인트와<br>
                                전공별 전망 등 안내</li>
                        </ul>
                    </dd>
                </dl>
            </div>
            <% End If %>
            <div data-aos="<%=cont05_fade04%>">
                <dl>
                    <dt>집단적인 면학분위기 &amp;<br>
                    개방형 구조</dt>
                    <dd>
                        <ul>
                            <li>최상위권 재원생들의 학습 분위기를 체감할 수 있는<br>
                            개방형 구조로 <strong>학습 동기부여 및 긴장감 유지</strong></li>
                            <li>한 건물 내에서 강의실-바자관-식당을 한번에 이용하여<br>
                                <strong>효율적인 동선 관리</strong></li>
                            <li>개방형 구조와 벽면 통유리로 <strong>건강한 긴장감과 개방감</strong> 유지</li>
                            <li>자체 식당 운영으로 <strong>균형잡힌 식단 유지 및 이동 동선 최적화</strong></li>
                        </ul>
                        <p class="r-txt">*식당 운영은 학원 운영 일정에 따라 변동이 있을 수 있습니다.</p>
                    </dd>
                </dl>
                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/pre_winter/cont05_img04.jpg" alt="" /></div>
            </div>
            <div data-aos="<%=cont05_fade05%>">
                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/pre_winter/cont05_img05.jpg" alt="" /></div>
                <dl>
                    <dt>쾌적한 학습환경</dt>
                    <dd>
                        <ul>
                            <li>적정온도, 습도 유지를 위한 <strong>가습기 및 에어 서큘레이터 가동</strong></li>
                            <li>공기정화식물, 숯을 대량 비치하고 공기청정기를 운영하여<br>
                                <strong>상쾌한 공기질 유지</strong>
                            </li>
                            
                            <% If sCampusCode = "CD0344" Then '코어전주 %>
                            <li>3.1m이상의 높은 층고, 탁 트인 책상 배치,<br>
                             충분한 통로 확보로 <strong>쾌적한 학습 환경</strong>
                            </li>
                            <% Else %>
                            <li>2.9m이상의 높은 층고, 탁 트인 책상 배치,<br>
                             충분한 통로 확보로 <strong>쾌적한 학습 환경</strong>
                            </li>
                            <% End If %>
                            <li>끊김 없는 인강 수강을 위한 
                            <strong>기가바이트급 광대역 무선망 구축</strong></li>
                            
                            <li>모의고사를 펼쳐도 넉넉한 <strong>넓은 책상</strong>과<br>
                            장시간 앉아있어도 <strong>편안한 의자</strong><%=cont05_txt05%></li>
                        </ul>
                    </dd>
                </dl>
            </div>
        </div>
    </div>
</div>
<div class="bottom-banner">
    <p data-aos="zoom-in">
        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/pre_winter/bottom_txt.png" alt="한발 더 빠른 시작이 차이를 만듭니다. 러셀 프리윈터스쿨에서 한발 앞선 겨울을 시작해 보세요." />
    </p>
</div>