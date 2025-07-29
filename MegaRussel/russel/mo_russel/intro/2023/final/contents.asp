
<div class="cont-all-wrap <%=campusName%>">

    <!-- fix-menu -->
    <ul class="fix-menu js-fix-menu <%=campusName%>">
        <li class="on"><%=txt_campus%><br>모집요강 및 장학혜택</li>
        <li><%=txt_campus%><br>파이널 정규반</li>
    </ul>
    <!--// fix-menu -->

    <% If campus_code <> "INTRO" Then '인트로 제외 모집안내영역 %>
    <!-- recruit-wrap -->
    <div class="recruit-wrap js-cont-wrap js-cont">
        <p class="recruit-tit" id="recruit-cont">
            <%=txt_campus%> 파이널 정규반<br><strong>모집 안내</strong>
        </p>
        <table class="tbl-type01">
            <colgroup>
                <col style="width: 20%;">
                <col style="width: ;">
            </colgroup>
            <tbody>
                <tr>
                    <th><%=tit_01%></th>
                    <td class="txt-left"><%=txt_01%></td>
                </tr>
                <% If campus_code <> "CD0346" Then '코어청주 제외 %>
                <tr>
                    <th><%=tit_02%></th>
                    <td class="txt-left"><%=txt_02%></td>
                </tr>
                <% END IF %>
                <tr>
                    <th><%=tit_03%></th>
                    <td class="txt-left"><%=txt_03%></td>
                </tr>
                <% If campus_code = "CD0250" Then '부천 %>
                <tr>
                    <th><%=tit_04%></th>
                    <td class="txt-left"><%=txt_04%></td>
                </tr>
                <% ElseIf campus_code = "CD0249" Then '영통 %>
                <tr>
                    <th><%=tit_04%></th>
                    <td class="txt-left"><%=txt_04%></td>
                </tr>
                <% END IF%>
            </tbody>
        </table>

        <!--원서접수 또는 대기접수 바로가기 버튼-->
        <% If campus_code = "CD0244" Then '분당 %>
        <div class="goto-wrap">
            <a href="<%=pc_url%>russel/apply/jaejung/apply.asp?app_cd=148" class="btn-link btn-pc mt20">N수생 <br> 대기접수 바로가기</a>
            <a href="<%=pc_url%>russel/apply/yonhab/apply.asp?app_cd=152" class="btn-link btn-pc mt20">재학생(고3) <br> 대기접수 바로가기</a>
        </div>
        <% else %>
        <%=apply_btn%>
        <% End If %>
        <!--//원서접수 대기접수 바로가기 버튼-->


        <!--마감딱지-->
        <% If campus_code = "CD0244" Then '분당 %>
        <div class="ico-end" style="right: 3%;"><p>전석 마감<br>(대기자 접수 中)</p></div>
        <% End If %>
        <!--//마감딱지-->


    </div>
    <!-- //recruit-wrap -->
    <% End If %>



    <% If campus_code <> "INTRO" Then '인트로제외 %>
    <div id="cont">
        <!--학원별 컨텐츠 -->
        <%
            IF campusName <> "" THEN
                dirFile = "/intro/2023/final/"&campusName&".asp"
                Server.Execute(dirFile)
            ELSE
                Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
                Response.End
            END IF

        %>
        <!-- //학원별 컨텐츠 -->
    </div>
    <% End If %>


    <!--러셀 수능 파이널 합격전략 영역-->
    <% if isCore = 1 Then '코어 %>
    <p class="img js-cont-wrap js-cont"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/main_tit01_core.jpg" alt=""></p>
    <% else %>
    <p class="img js-cont-wrap js-cont"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/main_tit01.jpg" alt=""></p>
    <% end If %>
    <p class="img strategy-slide-start"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/gr.jpg" alt=""></p>
    <div class="cont-wrap wrap01">
        <div class="swiper-container strategy-slide">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <strong>9월 모의평가 점검 및 분석</strong>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=img_name%>/2023/final/strategy_01.jpg" alt="">
                    <ul class="list-dot">
                        <li>9월 모의평가 = 예비 수능</li>
                        <li>
                            모의고사 난이도 및 출제 경향 분석을 통한<br>
                            2024 수능 예측
                        </li>
                        <li>본인 성적을 통한 수능 경쟁력 점검</li>
                    </ul>
                </div>
                <div class="swiper-slide">
                    <strong>수능 대비 파이널 학습 전략</strong>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=img_name%>/2023/final/strategy_02.jpg" alt="">
                    <ul class="list-dot">
                        <li>
                            모의고사 성적 분석을 통한 취약 과목 및 영역 <br>
                            집중 보완
                        </li>
                        <li>
                            수능 대비 모의고사에 출제된 신유형 분석 및  <br>
                            유사 문항 학습
                        </li>
                        <li>수능 대비 실전력 강화 훈련</li>
                    </ul>
                </div>
                <div class="swiper-slide">
                    <strong>개인별 맞춤 입시 전략</strong>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=img_name%>/2023/final/strategy_03.jpg" alt="">
                    <ul class="list-dot">
                        <li>
                            모의고사 성적을 통한 수시/정시 경쟁력 검토 및 <br>
                            지원 전략 수립
                        </li>
                        <li>
                            수시모집 원서접수 대비 수시 컨설팅
                        </li>
                        <li>수시 대비 논술 프로그램 준비</li>
                        <li>수능 이후 개인별 맞춤 정시 컨설팅</li>
                    </ul>
                </div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
    </div>
    <!--//러셀 수능 파이널 합격전략 영역-->

    <!--러셀 파이널 정규반 프로그램 영역-->
    <% if isCore = 1 Then '코어 %>
    <p class="img strategy-slide-end"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/main_tit02_core.jpg" alt=""></p>
    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/sub_tit01_core.jpg" alt=""></p>
    <% else %>
    <p class="img strategy-slide-end"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/main_tit02.jpg" alt=""></p>
    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/sub_tit01.jpg" alt=""></p>
    <% end If %>
    <div class="cont-wrap wrap02">
        <% If campus_code = "CD0342" Then '대구 %>
        <!-- teacher_slide -->
        <!-- #include virtual = "/inc/t_list/t_list_full_dg.asp" -->
        <!-- //teacher_slide -->
        <% Else %>
        <!-- teacher_slide -->
        <!-- #include virtual = "/intro/2023/final/teacher_slide.asp" -->
        <!-- //teacher_slide -->
        <% end If %>

        <!-- danka -->
        <!-- #include virtual = "/intro/2023/final/danka.asp" -->
        <!-- //danka -->
    </div>
    <!--//러셀 파이널 정규반 프로그램 영역-->

    <!--면학분위기로 소문난 바른공부 자습전용관 영역-->
    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/sub_tit02.jpg" alt=""></p>
    <div class="cont-wrap wrap03">
        <div class="swiper-container baja-slide">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <strong>집단적인 면학분위기</strong>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=img_name%>/2023/final/baja_01.jpg" alt="">
                    <ul class="list-dot">
                        <li>
                            <b>개방형 구조</b>로 이루어져 있어 <b>재원생들의 학구열</b>로 <br>
                            자연스럽게 학습동기 부여
                        </li>
                        <li>
                            <b>입시 담임선생님의 관리</b>하에 자율과 통제의 균형적인 <br>
                            운영으로 <b>집단적인 면학분위기 형성 및 유지</b>
                        </li>
                    </ul>
                </div>
                <div class="swiper-slide">
                    <strong>바자관 표준 시간표</strong>
                    <% If campus_code = "CD0340" or campus_code = "CD0344" or campus_code = "CD0244" or campus_code = "CD0257" Then '코어광주/코어전주/분당/중계' %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=img_name%>/2023/final/baja_02.jpg" alt="">
                    <% elseif campus_code = "CD0250" Then '부천 %>
                    <a href="https://mrusselbc.megastudy.net/board/notice_view.asp?code=28876"><img src="<%=Application("img_path_russel")%>/m_russel/<%=img_name%>/2023/final/baja_02.jpg" alt=""></a>
                    <% else %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/baja_02.jpg" alt="">
                    <% end If %>
                    <ul class="list-dot">
                        <li>
                            <b>실제 수능 시간표와 동일한 바자관 표준 시간표</b>에 <br>
                            맞춰 실전 감각 유지
                        </li>
                        <li>
                            바자관 의무자습과 개인 맞춤형 학습 스케줄 운영으로 <br>
                            <b>매일 최대 720분의 충분한 자습시간 확보</b>
                        </li>
                    </ul>
                </div>
                <div class="swiper-slide">
                    <strong>학습 동선 최소화</strong>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=img_name%>/2023/final/baja_03.jpg" alt="">
                    <ul class="list-dot">
                        <li>
                            <b>한 건물 내에서 강의실-바자관-<% if isCore = 1 or campus_code = "CD0342" Then '코어/대구 %>자체 식당<% ElseIf campus_code = "CD0244" Then '분당 %>급식(자체 식당)<br><% else %>급식<% end If %>을 한번에 해결</b> <br>
                            할 수 있어 이동에 낭비되는 시간 최소화
                        </li>
                        <li>
                            <b>학습 동선 최소화</b>를 통해 효율적인 시간 관리가 <br>
                            가능하여 <b>수업, 자습시간에 높은 집중력 발휘</b>
                        </li>
                    </ul>
                </div>
            </div>
            <% If campus_code = "INTRO" Then '인트로' %>
            <p class="r-txt type02">※ 각 학원별로 시설 및 운영 방법은 상이할 수 있습니다.</p>
            <% End If %>
            <div class="swiper-pagination"></div>
        </div>
        <div class="st-review">
            <% If campus_code = "CD0249" Then '영통' %>
            <p>
                <strong>러셀의 장점은 좋은 면학분위기입니다.</strong> 공부에 집중이 되지 않을 때 같은 공간에서 열심히 공부하고 있는
                다른 학생들을 보면서 마음을 다잡을 수 있었습니다. 또한 학원과 바른공부 자습전용관이 가까워서 이동하는 시간이 들지 않아
                더 많은 자습시간을 확보하여 공부에 전념할 수 있었습니다. <br>
                그리고 <strong>표준 시간표와 철저한 관리가 가장 좋았습니다.</strong> 처음에는 항상 정해진 시간에 공부해야 한다는 점이 힘들었지만,
                결국 제가 좋은 결실을 얻을 수 있었던 이유는 수능형으로 일과를 유지한 덕분이 아닐까 싶습니다.
            </p>
            <div>
                <div class="txt">
                    <strong>2023 이화여자대학교 약학부 합격</strong>
                    <p>러셀 영통 이가현</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_lgh.png" alt=""></p>
            </div>
            <% ElseIf campus_code = "CD0247" Then '강남' %>
            <p>
                <strong>수능 시간표에 맞춰서 생활할 수 있게 지도해주는 것이 가장 좋았습니다.</strong>
                덕분에 아침에 일찍 일어나는 습관을 기를 수 있었습니다. 특히 국어 과목의 경우 아침에 꾸준히 하는 것이 중요하다고 생각해서
                그러한 부분이 많이 도움이 됐습니다. 또한 <strong>바자관에서 공부할 때 주변에서 같이 공부하는 분들의 모습이 보여서 동기부여</strong>도 되었습니다.
            </p>
            <div>
                <div class="txt">
                    <strong>2023 서울대학교 의예과 합격</strong>
                    <p>러셀 강남 이윤서</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_lys.png" alt=""></p>
            </div>
            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
            <p>
                <strong>러셀CORE 학원의 장점은 목표를 위해 함께 노력하고 있는 연대감</strong>을 가질 수 있었고,
                <strong>스스로 통제할 수 없었던 습관들을 제어</strong>할 수 있었습니다. 표준 시간표대로 종이 울려서 규칙적인 생활을 하기 좋았고,
                 늦잠의 유혹을 뿌리치고 식사 고민 없이 수능형 리듬을 습관들일 수 있었습니다. 또한 바자관의 개방형 구조는 열심히 하는
                  친구들의 모습에 긴장하며 공부할 수 있었습니다.<br>
                <strong>담임선생님 또한 저에게 항상 해줄 조언들로 준비된 분</strong>이셨으며, 제가 필요로 하는 자료들은 항상 구해 주셔서 큰 도움이 되었습니다.
            </p>
            <div>
                <div class="txt">
                    <strong>2023 연세대학교 의예과 합격</strong>
                    <p>러셀CORE 광주 김OO</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_woman.png" alt=""></p>
            </div>
            <% ElseIf campus_code = "CD0248" Then '평촌 %>
            <p>
                <strong>바자관의 가장 큰 장점으로는 좋은 면학분위기</strong>를 뽑고 싶습니다.
                바자관은 워낙 철저하게 관리하다 보니, <br>
                <strong>우수한 학생들만 모여서 더욱 공부 분위기</strong>가 좋았고,
                <strong>개방형 구조라서 탁 트여서 경쟁하는 기분</strong>이 들어서
                동기부여가 많이 됐습니다.
            </p>
            <div>
                <div class="txt">
                    <strong>2023 연세대학교(서울) 경영학과 합격</strong>
                    <p>러셀 평촌 임수안</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_isa.png" alt=""></p>
            </div>
            <% ElseIf campus_code = "CD0244" Then '분당 %>
            <p>
                <strong>개방형 구조로 이루어져 열심히 공부하는 주변 학생들을 보며
                자극</strong>을 받을 수 있었습니다. 또한 바자관 안의 책상이 넓어
                책과 태블릿, 필통을 다 놓아도 공간이 남았고, 넓은 사물함이
                책상 바로 옆에 있어 하던 공부가 질릴 때 바로 다른 공부를
                할 수 있었습니다. <br> 이외에도, 식사 시간이 충분히 길어서 식사 후
                양치 및 휴식을 취할 수 있어 재충전을 할 수 있었습니다.<br>
                또한 물을 많이 마시는 편이어서 정수기가 있어 만족스러웠고,
                가끔 졸릴 때면 스탠딩 책상에서 공부를 하였습니다.
            </p>
            <div>
                <div class="txt">
                    <strong>2023 서울대학교 전기정보공학부 합격</strong>
                    <p>러셀 분당 강민혁</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_kmh.png" alt=""></p>
            </div>
            <% ElseIf campus_code = "CD0257" Then '중계 %>
            <p>
                <strong>바자관의 첫번째 장점은 쾌적한 환경입니다.</strong> 제가 식물을 좋아하는데 자리마다 식물이 있어서
                 분위기가 편하게 느껴졌고 의자도 매우 편해서 공부에 집중할 수 있었습니다. <br>
                <strong>두 번째 장점은 표준 시간표입니다.</strong>  특히 윈터스쿨 시기에 하루 종일 저에게 주어진 열 몇시간을
                 계획해서 사용하는 것이 막막했는데 수능 시간표에 맞춰서 계획을 세우니 과목별로 균형을 맞춰서
                 규칙적으로 공부할 수 있는 것이 큰 도움이 되었습니다.
            </p>
            <div>
                <div class="txt">
                    <strong>2023 서울대학교 의예과 합격</strong>
                    <p>러셀 중계 노현지</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_nhj.png" alt=""></p>
            </div>
            <% ElseIf campus_code = "CD0250" Then '부천 %>
            <p>
                <strong>바자관의 개방형 구조</strong>가 좋았습니다. 공부를 하다보면 집중이 흐트러질 때가 종종 오는데
                그럴 때마다 제 앞과 옆 시야에 보이는 열심히 공부하는 친구들을 보며 마음을 다잡곤 했습니다.
                또한 다들 엄청 열심히 공부하고 정숙한 분위기이기 때문에 여느 때보다 집중이 훨씬 더 잘 되었습니다. <br>
                그리고 <strong>단과수업과 자습을 동시에 해결</strong>할 수 있었던 것이 좋았습니다. 웬만큼 공부습관이 다 잡히지
                않은 사람이라면 단과 수업 공간과 자습 공간이 멀리 떨어져 있을 때 중간에 다른 길로 새고 싶은 유혹이 올 수 있습니다.
                그러나 <strong>단과 강의실과 바자관이 한 건물에 있어 수업을 듣고 바로 자습관으로 향할 수 있었기 때문에 온전히 공부에 집중</strong>할 수 있었습니다.
            </p>
            <div>
                <div class="txt">
                    <strong>2023 서울대학교 자유전공학부 합격</strong>
                    <p>러셀 부천 강수민</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_ksm.png" alt=""></p>
            </div>
            <% else %>
            <p>
                <strong>바자관의 첫 번째 장점으로는 면학분위기입니다.</strong>
                담임선생님이 확실히 관리해 준다는 느낌을 받았고,
                바자관에 있는 친구들 모두가 최상위권 학생들로 구성되어
                공부에만 집중하는 면학분위기가 조성되어 있습니다.
                오랜 시간 공부하다 보면 풀어지거나, 쉬고 싶어지는 때가
                있기 마련인데, 그럴 때마다 주변 학생들이 공부하는 모습을
                보면서 다시 동기부여를 받을 수 있었습니다.<br><br>
                <strong>두 번째 장점은 규칙적으로 짜여 있는 표준 시간표에 따라
                생활</strong> 하는 것이었습니다. 바자관에서는 아침 등원부터
                하원까지 정확하게 짜여 있는 표준 시간표에 맞춰 규칙적인
                생활을 할 수 있다는 점이 굉장히 매력적이었고, 각 시간에 맞춰
                학습 계획을 짜고, 이행하는 패턴을 수능 때까지 유지할 수
                있었습니다.
            </p>
            <div>
                <div class="txt">
                    <strong>2023 서울대학교 의예과 합격</strong>
                    <p>러셀CORE 대전 이상후</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_lsh.png" alt=""></p>
            </div>
            <% End If %>
        </div>
    </div>
    <!--//면학분위기로 소문난 바른공부 자습전용관 영역-->

    <!--입시 담임선생님의 파이널 맞춤 관리 영역-->
    <p class="img final-slide-start"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/sub_tit03.jpg" alt=""></p>
    <div class="cont-wrap wrap04">
        <div class="swiper-container mng-slide">
            <div class="swiper-wrapper">
                <div class="swiper-slide">


                    <strong>입시관리</strong>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=img_name%>/2023/final/mng_01.jpg" alt="">
                    <ul class="list-dot">
                        <li>
                            9월 모의평가 성적 분석을 통한 <b>수시 최종 지원 대학 <br>
                            결정 등 수시 컨설팅</b>
                        </li>
                        <li>
                            <b>9월 모의평가 성적 기반 수능 성적 예측</b>으로 정시 지원<br>
                            가능 대학 파악 및 목표 대학 합격 가능성 확인
                        </li>
                        <li>수능 이후 <b>개인별 맞춤 입시관리</b> 진행</li>
                    </ul>
                </div>
                <div class="swiper-slide">


                    <strong>학습관리</strong>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=img_name%>/2023/final/mng_02.jpg" alt="">
                    <ul class="list-dot">
                        <li>
                            9월 모의평가까지의 성적 분석으로 <b>수능 고득점을 위한<br>
                            학습 상담</b> 진행
                        </li>
                        <li>
                            <b>실전과 유사한 환경에서 집체 모의고사 진행</b>으로 <br>
                            실전 감각 극대화
                        </li>
                        <li>
                            마지막까지 흐트러지지 않도록 매일 균형 있는 <br>
                            <b>학습 습관 루틴 점검</b>
                        </li>
                    </ul>
                </div>
                <div class="swiper-slide">


                    <strong>생활관리</strong>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=img_name%>/2023/final/mng_03.jpg" alt="">
                    <ul class="list-dot">
                        <li>
                            실제 수능 시간표와 동일한 <b>바자관 표준 시간표 운영 <br>
                            및 생활관리</b>
                        </li>
                        <li>
                            마지막까지 면학분위기가 유지 될 수 있도록 <b>엄격 관리 <br>
                            및 태도 점수 운영</b>
                        </li>
                        <li>
                            수능까지 최상의 컨디션을 유지할 수 있도록 <br>
                            <b>1:1 정신적 멘토링</b> 진행
                        </li>
                    </ul>
                </div>
            </div>
            <% If campus_code = "INTRO" Then '인트로' %>
            <p class="r-txt type02">※각 학원별로 관리 및 운영 방법은 상이할 수 있습니다.</p>
            <% End If %>
            <div class="swiper-pagination"></div>
        </div>
        <div class="st-review final-slide-end">
            <% If campus_code = "CD0341" Then '코어 대전' %>
            <p>
                담임선생님께서 <strong>수시로 상담을 통해 멘탈적인 케어와 취약한 과목의 객관적인 문제점 분석 및 솔루션</strong>을 주셨습니다.
                러셀CORE 대전 담임선생님 덕분에 건강한 마음가짐으로 수험 생활에 대한 방향성을 올바르게 교정할 수 있었습니다.
            </p>
            <div>
                <div class="txt">
                    <strong>2023 연세대학교(미래) 의예과 합격</strong>
                    <p>러셀CORE 대전 이승섭</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_lss.png" alt=""></p>
            </div>
            <% ElseIf campus_code = "CD0249" Then '영통' %>
            <p>
                <strong>바른공부 자습전용관 바로 앞에 담임선생님들께서 계셨기 때문에 편하게 상담</strong>을 할 수 있어서 좋았고,
                수시 원서 접수기간에 수시로 질문을 받아 주시고, 조언을 해 주셔서 좋았습니다.<br>
                <strong>또한, 좋은 공부 습관을 만들어 준다는 것이 장점입니다.</strong>
                다양한 관리를 통해 낭비하는 시간들을 공부 시간으로 확보할 수 있었고,
                공부하기에 최적화된 환경이 조성되어 집중이 잘 되었기 때문입니다.
            </p>
            <div>
                <div class="txt">
                    <strong>2023 충남대학교 의예과 합격</strong>
                    <p>러셀 영통 민승원</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_msw.png" alt=""></p>
            </div>
            <% ElseIf campus_code = "CD0247" Then '강남' %>
            <p>
                <strong>입시와 관련하여 많은 정보를 가지고 계신 담임선생님과 일대일로 상담할 수 있어 좋았습니다.</strong>
                9평이 끝나고 수시 원서를 접수하기 전에 담임선생님과 함께 모의고사 성적을 기반으로 <strong>정시와 수시 지원 전략을 짜며 큰 도움</strong>을 받았습니다.
            </p>
            <div>
                <div class="txt">
                    <strong>2023 서울대학교 경제학부 합격</strong>
                    <p>러셀 강남 이다현</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_ldh.png" alt=""></p>
            </div>
            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
            <p>
                <strong>담임선생님께서 멘토역할을 정말 잘 해주셨습니다.</strong> 계속 저의
                부족한 부분만을 생각하고 그것을 채우는 데에 급급했던 제게
                부족한 부분을 끌어올리는 것도 중요하지만 자신의 강점을
                유지하는 것도 중요하니 부족한 부분을 보충하다가
                강점을 잃는 일이 없도록 주의하라고 조언을 해주셨습니다. <br>
                또한 성적이 가장 좋을 때에 집중하는 것이 아니라 성적이
                저점을 찍을 때에 초점을 두라고 말씀하셨습니다.
                그래서 저는 <strong>저의 저점일 때의 성적을 높이는 데에 집중했고,
                수능과 입시에서 좋은 결과
                </strong>를 받을 수 있었습니다.
           </p>
            <div>
                <div class="txt">
                    <strong>2023 전북대학교 의예과 합격</strong>
                    <p>러셀CORE 광주 류OO</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_man.png" alt=""></p>
            </div>
            <% ElseIf campus_code = "CD0248" Then '평촌 %>
            <p>
                <strong>담임선생님께서 구체적인 입시자료를 기반으로 입시컨설팅</strong>을
                해주셔서 수시를 준비하는데 도움을 받았습니다. <br>
                그리고 <strong>바자관 바로 앞에 담임부스에 담임선생님께서
                항상 계시다 보니</strong> 공부하면서 생기는 의문점이나 입시에 관해서
                모르는 부분이 생길 때 담임선생님께 바로 질문 드려
                해결할 수 있었습니다. 이를 통해, 불필요한 생각을 줄이고
                공부에만 집중할 수 있었습니다.
           </p>
            <div>
                <div class="txt">
                    <strong>2023 서울대학교 건축학과 합격</strong>
                    <p>러셀 평촌 이지흔</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_ljh.png" alt=""></p>
            </div>
            <% ElseIf campus_code = "CD0257" Then '중계 %>
            <p>
                <strong>담임선생님과 바자관 바로 앞에서 편하게 상담할 수 있다는 것이 좋았습니다.</strong> <br>
                대학 원서를 써야 할 시기가 되어서 입시 상담을 받아야 했었는데, 자습관에서
                공부하다가 바로 담임선생님과 상담을 할 수 있어서 시간도 절약되었고,
                제 생기부와 입시 결과 등의 정보를 참고해 <strong>질 높은 상담을 해주셔서 도움이 많이 되었습니다.</strong>
                그리고 입시 외에도 고민이나 심리 등에 대해서도 상담을 해주셔서 <strong>수험생활동안 믿고 의지할 수 있었습니다.</strong>
           </p>
            <div>
                <div class="txt">
                    <strong>2023 서울대학교 생물교육과 합격</strong>
                    <p>러셀 중계 김태홍</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_kth.png" alt=""></p>
            </div>
            <% ElseIf campus_code = "CD0250" Then '부천 %>
            <p>
                자소서나 면접 등 개인적으로 준비해야할 것이 많았는데
                 <strong>담임선생님은 막막했던 저에게 다양한 자료를 제공해 주셨고, 오랜 시간에 걸쳐 피드백을 해주셨습니다.</strong>
                담임선생님의 관리는 수험생으로서 가장 필요했던 부분이었기에 정말 기억에 남습니다. <br>
                수능 직전까지 다양한 불안에 힘들어하는 저를 <strong>응원과 격려로 보듬어 주시면서도 더 앞으로 나아갈 수 있는 방향을 제시해 주시던 선생님께 정말 감사드립니다.</strong>
           </p>
            <div>
                <div class="txt">
                    <strong>2023 경희대학교 한의예과(인문) 합격</strong>
                    <p>러셀 부천 양한빈</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_yhb.png" alt=""></p>
            </div>
            <% Else %>
            <p>
                <strong>러셀 담임선생님은 바자관 바로 앞 가까운 곳에 계셔서
                언제나 입시 관련 고민이 생기면 편하게 문의드릴 수 있어
                좋았습니다.</strong> 공부뿐만 아니라 학생 개개인의 생활에도 관심을
                가져 주시면서 상담을 할 때 자세하고 진심 어린 조언을 주셔서
                정말 감사했습니다. <br>
                특히 <strong>수시 원서를 쓸 때와 자소서를 쓸 때 모두 담임선생님과
                함께 세운 전략이 정말 큰 도움</strong>이 되었고,
                대입에 있어 저만의 기준을 잡을 수 있게 해주셨습니다.
            </p>
            <div>
                <div class="txt">
                    <strong>2023 서울대학교 의예과 합격</strong>
                    <p>러셀 분당 이주연</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_ljy.png" alt=""></p>
            </div>
            <% End If %>
        </div>
    </div>
    <!--//입시 담임선생님의 파이널 맞춤 관리 영역-->

    <!--파이널 실전 콘텐츠 & 집체 모의고사 영역-->
    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/sub_tit04.jpg" alt=""></p>
    <!-- pre-cont -->
    <div class="pre-cont">
        <div class="tab-wrap <%=tab_name%>">
            <% If campus_code = "INTRO" or campus_code = "CD0342" Then '인트로/대구 %>
            <a href="" class="on pt25">QUEL 모의고사</a>
            <a href="">메가X대성 <br> THE PREMIUM 모의고사</a>
            <a href=""><% If campus_code = "CD0342" Then '대구 %>러셀<% Else %>러셀CORE<% End If %> <br> Weekly 모의고사</a>
            <a href="" class="pt25">월간 학습지 (월간 장영진)</a>
            <% ElseIf isCore = 1 Then '코어 %>
            <a href="" class="on">러셀CORE <br> Weekly 모의고사</a>
            <a href="" class="pt25">QUEL 모의고사</a>
            <a href="">메가X대성 <br> THE PREMIUM 모의고사</a>
            <a href="" class="pt25">월간 학습지 (월간 장영진)</a>
            <% ElseIf campus_code = "CD0250" Then '부천 %>
            <a href="" class="on">QUEL <br> 모의고사</a>
            <a href="">메가X대성 <br> THE PREMIUM 모의고사</a>
            <a href="" class="pt25">월간 학습지 <br> (월간 장영진)</a>
            <a href="">러셀 부천 <br> 수/영 주간지</a>
            <a href="" class="pt25">월간 수학 학습지 <br> (월간 정창민)</a>
            <a href="">러셀 부천 <br> 실전 수능반</a>
            <% Else %>
            <a href="" class="on">QUEL <br> 모의고사</a>
            <a href="">메가X대성 <br> THE PREMIUM<br>모의고사</a>
            <a href="" class="pt25">월간 학습지 <br> (월간 장영진)</a>
            <% End If %>
        </div>
        <% If campus_code = "INTRO" or campus_code = "CD0342" Then '인트로/대구 %>
        <!-- QUEL 모의고사 -->
        <div class="tab-cont" style="display:block;">
            <div>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/pre_tab_img01.jpg" alt=""></p>
                <div class="txt">
                    <p>최신 출제 경향 맞춤 실전 수능</p>
                    <strong>QUEL<br>모의고사</strong>
                </div>
            </div>
            <ul class="list-dot">
                <li>메가스터디 통합 전 영역 실전 수능 대비 모의고사</li>
                <li>최신 출제 경향에 맞춘 강도 있는 실전 훈련</li>
            </ul>
            <a href="<%=url_quel%>">자세히 보기</a>
        </div>
        <!-- //QUEL 모의고사 -->
        <!-- THE PREMIUM 모의고사 -->
        <div class="tab-cont">
            <div>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/pre_tab_img02.jpg" alt=""></p>
                <div class="txt">
                    <p>전략에 실전을 THE하다</p>
                    <strong>메가X대성<br>THE PREMIUM<br>모의고사</strong>
                </div>
            </div>
            <ul class="list-dot">
                <li>과목별 전문 출제진 구성 및 다회차 검토 과정</li>
                <li>전과목 모두 구성 및 정확한 객관적인 위치 확인</li>
            </ul>
            <a href="<%=url_premium%>">자세히 보기</a>
        </div>
        <!-- //THE PREMIUM 모의고사 -->
        <!-- Weekly 모의고사 -->
        <div class="tab-cont">
            <% If campus_code = "INTRO" Then '인트로 %>
            <div>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/pre_tab_img03.jpg" alt=""></p>
                <div class="txt">
                    <p>러셀CORE 선생님 직접 출제</p>
                    <strong>러셀CORE<br>Weekly<br>모의고사</strong>
                </div>
            </div>
            <ul class="list-dot">
                <li>
                    러셀CORE 선생님들이 직접 출제한 <br>
                    모의고사 콘텐츠 제공
                </li>
                <li>매주 정해진 시간에 집체 모의고사 응시하여 실전 감각<br>
                    향상 및 긴장감 유지
                </li>
            </ul>
            <% ElseIf campus_code = "CD0342" Then '대구 %>
            <div>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/pre_tab_img03.jpg" alt=""></p>
                <div class="txt">
                    <p>러셀CORE 선생님 직접 출제</p>
                    <strong>러셀<br>Weekly<br>모의고사</strong>
                </div>
            </div>
            <ul class="list-dot">
                <li>
                    러셀CORE 선생님들이 직접 출제한 <br>
                    모의고사 콘텐츠 제공
                </li>
                <li>매주 정해진 시간에 집체 모의고사 응시하여 실전 감각<br>
                    향상 및 긴장감 유지
                </li>
            </ul>
            <% End If %>
            <a href="<%=url_weekly%>">자세히 보기</a>
        </div>
        <!-- //Weekly 모의고사 -->
        <!-- 월간 장영진 -->
        <div class="tab-cont">
            <div>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/pre_tab_img04.jpg" alt=""></p>
                <div class="txt">
                    <p>러셀 수학 월간지</p>
                    <strong>월간 학습지<br>(월간 장영진)</strong>
                </div>
            </div>
            <ul class="list-dot">
                <li>
                    수학 장영진 선생님의 자작 문항으로 <br>
                    매월 집체 모의고사 진행
                </li>
                <li>수험생활에 필요한 다양한 수학&middot;입시관련 정보 제공</li>
            </ul>
            <a href="<%=url_month%>">자세히 보기</a>
        </div>
        <!-- //월간 장영진 -->
        <% ElseIf isCore = 1 Then '코어 %>
        <!-- Weekly 모의고사 -->
        <div class="tab-cont" style="display:block;">
            <div>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/pre_tab_img03.jpg" alt=""></p>
                <div class="txt">
                    <p>러셀CORE 선생님 직접 출제</p>
                    <strong>러셀CORE<br>Weekly<br>모의고사</strong>
                </div>
            </div>
            <ul class="list-dot">
                <li>
                    러셀CORE 선생님들이 직접 출제한 <br>
                    모의고사 콘텐츠 제공
                </li>
                <li>매주 정해진 시간에 집체 모의고사 응시하여 실전 감각<br>
                    향상 및 긴장감 유지
                </li>
            </ul>
            <a href="<%=url_weekly%>">자세히 보기</a>
        </div>
        <!-- //Weekly 모의고사 -->
        <!-- QUEL 모의고사 -->
        <div class="tab-cont">
            <div>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/pre_tab_img01.jpg" alt=""></p>
                <div class="txt">
                    <p>최신 출제 경향 맞춤 실전 수능</p>
                    <strong>QUEL<br>모의고사</strong>
                </div>
            </div>
            <ul class="list-dot">
                <li>메가스터디 통합 전 영역 실전 수능 대비 모의고사</li>
                <li>최신 출제 경향에 맞춘 강도 있는 실전 훈련</li>
            </ul>
            <a href="<%=url_quel%>">자세히 보기</a>
        </div>
        <!-- //QUEL 모의고사 -->
        <!-- THE PREMIUM 모의고사 -->
        <div class="tab-cont">
            <div>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/pre_tab_img02.jpg" alt=""></p>
                <div class="txt">
                    <p>전략에 실전을 THE하다</p>
                    <strong>메가X대성<br>THE PREMIUM<br>모의고사</strong>
                </div>
            </div>
            <ul class="list-dot">
                <li>과목별 전문 출제진 구성 및 다회차 검토 과정</li>
                <li>전과목 모두 구성 및 정확한 객관적인 위치 확인</li>
            </ul>
            <a href="<%=url_premium%>">자세히 보기</a>
        </div>
        <!-- //THE PREMIUM 모의고사 -->
        <!-- 월간 장영진 -->
        <div class="tab-cont">
            <div>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/pre_tab_img04.jpg" alt=""></p>
                <div class="txt">
                    <p>러셀 수학 월간지</p>
                    <strong>월간 학습지<br>(월간 장영진)</strong>
                </div>
            </div>
            <ul class="list-dot">
                <li>
                    수학 장영진 선생님의 자작 문항으로 <br>
                    매월 집체 모의고사 진행
                </li>
                <li>수험생활에 필요한 다양한 수학&middot;입시관련 정보 제공</li>
            </ul>


            <a href="<%=url_month%>">자세히 보기</a>
        </div>
        <!-- //월간 장영진 -->
        <% ElseIf campus_code = "CD0250" Then '부천 %>
        <!-- QUEL 모의고사 -->
        <div class="tab-cont" style="display:block;">
            <div>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/pre_tab_img01.jpg" alt=""></p>
                <div class="txt">
                    <p>최신 출제 경향 맞춤 실전 수능</p>
                    <strong>QUEL<br>모의고사</strong>
                </div>
            </div>
            <ul class="list-dot">
                <li>메가스터디 통합 전 영역 실전 수능 대비 모의고사</li>
                <li>최신 출제 경향에 맞춘 강도 있는 실전 훈련</li>
            </ul>
            <a href="<%=url_quel%>">자세히 보기</a>
        </div>
        <!-- //QUEL 모의고사 -->
        <!-- THE PREMIUM 모의고사 -->
        <div class="tab-cont">
            <div>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/pre_tab_img02.jpg" alt=""></p>
                <div class="txt">
                    <p>전략에 실전을 THE하다</p>
                    <strong>메가X대성<br>THE PREMIUM<br>모의고사</strong>
                </div>
            </div>
            <ul class="list-dot">
                <li>과목별 전문 출제진 구성 및 다회차 검토 과정</li>
                <li>전과목 모두 구성 및 정확한 객관적인 위치 확인</li>
            </ul>
            <a href="<%=url_premium%>">자세히 보기</a>
        </div>
        <!-- //THE PREMIUM 모의고사 -->
        <!-- 월간 장영진 -->
        <div class="tab-cont">
            <div>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/pre_tab_img04.jpg" alt=""></p>
                <div class="txt">
                    <p>러셀 수학 월간지</p>
                    <strong>월간 학습지<br>(월간 장영진)</strong>
                </div>
            </div>
            <ul class="list-dot">
                <li>
                    수학 장영진 선생님의 자작 문항으로 <br>
                    매월 집체 모의고사 진행
                </li>
                <li>수험생활에 필요한 다양한 수학&middot;입시관련 정보 제공</li>
            </ul>
            <a href="<%=url_month%>">자세히 보기</a>
        </div>
        <!-- //월간 장영진 -->
        <!-- 러셀부천 수/영 주간지 -->
        <div class="tab-cont bc">
            <div>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2023/final/pre_tab_bc01.jpg" alt=""></p>
                <p class="bc-ico"><img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2023/final/bc_ico.png" alt="부천전용딱지"></p>
                <div class="txt">
                    <p>시기별 꼭 필요한 <br> 핵심 문제 학습</p>
                    <strong>러셀 부천<br>수/영 주간지</strong>
                </div>
            </div>
            <ul class="list-dot">
                <li>
                    러셀 부천 출강 수학/영어 선생님 제공
                </li>
                <li>최신 출제 경향과 시기별 학습 패턴을 반영한 콘텐츠 제공</li>
                <li>누적학습과 확인학습을 한번에 가능</li>
            </ul>
        </div>
        <!-- //러셀부천 수/영 주간지 -->
        <!-- 월간 수학 학습지 정창민 -->
        <div class="tab-cont bc">
            <div>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2023/final/pre_tab_bc02.jpg" alt=""></p>
                <p class="bc-ico"><img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2023/final/bc_ico.png" alt="부천전용딱지"></p>
                <div class="txt">
                    <p>고득점을 결정짓는 <br>문항 집중 연습</p>
                    <strong>월간 수학 학습지<br>(월간 정창민)</strong>
                </div>
            </div>
            <ul class="list-dot">
                <li>난이도별 구성 및 문제풀이 훈련</li>
                <li>기출 분석을 통한 부족한 개념 보완 및 문제 해결력 향상</li>
                <li>러셀 부천 합격 선배들에게 검증된 콘텐츠</li>
            </ul>
        </div>
        <!-- //월간 수학 학습지 정창민 -->
        <!-- 실전 수능반 -->
        <div class="tab-cont bc">
            <div>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2023/final/pre_tab_bc03.jpg" alt=""></p>
                <p class="bc-ico"><img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2023/final/bc_ico.png" alt="부천전용딱지"></p>
                <div class="txt">
                    <p>수능 대응 시나리오 <br> 완성을 위한</p>
                    <strong>러셀 부천<br>실전 수능반</strong>
                </div>
            </div>
            <ul class="list-dot">
                <li>
                    수능과 같은 조건에서 훈련
                </li>
                <li>
                    수능 당일 평소 능력 발휘할 수 있도록 <br>
                    마인드 컨트롤 실습
                </li>
            </ul>
        </div>
        <!-- //실전 수능반 -->
        <% Else %>
        <!-- QUEL 모의고사 -->
        <div class="tab-cont" style="display:block;">
            <div>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/pre_tab_img01.jpg" alt=""></p>
                <div class="txt">
                    <p>최신 출제 경향 맞춤 실전 수능</p>
                    <strong>QUEL<br>모의고사</strong>
                </div>
            </div>
            <ul class="list-dot">
                <li>메가스터디 통합 전 영역 실전 수능 대비 모의고사</li>
                <li>최신 출제 경향에 맞춘 강도 있는 실전 훈련</li>
            </ul>
            <a href="<%=url_quel%>">자세히 보기</a>
        </div>
        <!-- //QUEL 모의고사 -->
        <!-- THE PREMIUM 모의고사 -->
        <div class="tab-cont">
            <div>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/pre_tab_img02.jpg" alt=""></p>
                <div class="txt">
                    <p>전략에 실전을 THE하다</p>
                    <strong>메가X대성<br>THE PREMIUM<br>모의고사</strong>
                </div>
            </div>
            <ul class="list-dot">
                <li>과목별 전문 출제진 구성 및 다회차 검토 과정</li>
                <li>전과목 모두 구성 및 정확한 객관적인 위치 확인</li>
            </ul>
            <a href="<%=url_premium%>">자세히 보기</a>
        </div>
        <!-- //THE PREMIUM 모의고사 -->
        <!-- 월간 장영진 -->
        <div class="tab-cont">
            <div>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/pre_tab_img04.jpg" alt=""></p>
                <div class="txt">
                    <p>러셀 수학 월간지</p>
                    <strong>월간 학습지<br>(월간 장영진)</strong>
                </div>
            </div>
            <ul class="list-dot">
                <li>
                    수학 장영진 선생님의 자작 문항으로 <br>
                    매월 집체 모의고사 진행
                </li>
                <li>수험생활에 필요한 다양한 수학&middot;입시관련 정보 제공</li>
            </ul>
            <a href="<%=url_month%>">자세히 보기</a>
        </div>
        <!-- //월간 장영진 -->

        <% End If %>
    </div>
    <!-- //pre-cont -->
    <% if isCore = 1 Then '코어 %>
    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/sub_tit05_core.jpg" alt=""></p>
    <% else %>
    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/sub_tit05.jpg" alt=""></p>
    <% end If %>
    <div class="final-tbl">
        <% if isCore = 1 Then '코어 %>
        <table class="tbl-type01 tbl-center">
            <colgroup>
                <col style="width: 10%;">
                <col style="width: 12%;">
                <col style="width: 15%;">
                <col style="width: 15%;">
                <col style="width: 15%;">
                <col style="width: 15%;">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">구분</th>
                    <th>평가원</th>
                    <th>
                        러셀CORE<br>Weekly<br>모의고사
                    </th>
                    <th>
                        QUEL<br>모의고사
                    </th>
                    <th>
                        메가X대성<br>더 프리미엄<br>모의고사
                    </th>
                    <th>
                        월간<br>장영진<br>모의고사
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="4">9월</th>
                    <td>1주차</td>
                    <td class="bg01">9평</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="bg05">9월호</td>
                </tr>
                <tr>
                    <td>2주차</td>
                    <td></td>
                    <td class="bg04">25회</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>3주차</td>
                    <td></td>
                    <td></td>
                    <td class="bg02">3회</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>4주차</td>
                    <td></td>
                    <td class="bg04">26회</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <th rowspan="4">10월</th>
                    <td>1주차</td>
                    <td></td>
                    <td class="bg04">27회</td>
                    <td></td>
                    <td></td>
                    <td class="bg05">10월호</td>
                </tr>
                <tr>
                    <td>2주차</td>
                    <td></td>
                    <td></td>
                    <td class="bg02">4회</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>3주차</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="bg03">10월</td>
                    <td></td>
                </tr>
                <tr>
                    <td>4주차</td>
                    <td></td>
                    <td></td>
                    <td class="bg02">5회</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <th rowspan="3">11월</th>
                    <td>1주차</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="bg03">11월</td>
                    <td></td>
                </tr>
                <tr>
                    <td>2주차</td>
                    <td></td>
                    <td class="bg04">28회</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>3주차</td>
                    <td class="bg01">수능</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
        <% ElseIf campus_code = "INTRO" or campus_code = "CD0342" Then '인트로/대구' %>
        <table class="tbl-type01 tbl-center">
            <colgroup>
                <col style="width: 10%;">
                <col style="width: 12%;">
                <col style="width: 15%;">
                <col style="width: 15%;">
                <col style="width: 15%;">
                <col style="width: 15%;">
                <col style="width: 15%;">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">구분</th>
                    <th>평가원</th>
                    <th>
                        QUEL<br>모의고사
                    </th>
                    <th>
                        메가X대성<br>더 프리미엄<br>모의고사
                    </th>
                    <th>
                        러셀<% if campus_code = "INTRO" Then '인트로 %>CORE<% end If %><br>Weekly<br>모의고사
                    </th>
                    <th>
                        월간<br>장영진<br>모의고사
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="4">9월</th>
                    <td>1주차</td>
                    <td class="bg01">9평</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="bg05">9월호</td>
                </tr>
                <tr>
                    <td>2주차</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="bg04">25회</td>
                    <td></td>
                </tr>
                <tr>
                    <td>3주차</td>
                    <td></td>
                    <td class="bg02">3회</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>4주차</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="bg04">26회</td>
                    <td></td>
                </tr>
                <tr>
                    <th rowspan="4">10월</th>
                    <td>1주차</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="bg04">27회</td>
                    <td class="bg05">10월호</td>
                </tr>
                <tr>
                    <td>2주차</td>
                    <td></td>
                    <td class="bg02">4회</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>3주차</td>
                    <td></td>
                    <td></td>
                    <td class="bg03">10월</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>4주차</td>
                    <td></td>
                    <td class="bg02">5회</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <th rowspan="3">11월</th>
                    <td>1주차</td>
                    <td></td>
                    <td></td>
                    <td class="bg03">11월</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>2주차</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="bg04">28회</td>
                    <td></td>
                </tr>
                <tr>
                    <td>3주차</td>
                    <td class="bg01">수능</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
        <% else %>
        <table class="tbl-type01 tbl-center">
            <colgroup>
                <col style="width: 10%;">
                <col style="width: 12%;">
                <col style="width: 15%;">
                <col style="width: 15%;">
                <col style="width: 15%;">
                <col style="width: 15%;">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">구분</th>
                    <th>평가원</th>
                    <th>
                        QUEL<br>모의고사
                    </th>
                    <th>
                        메가X대성<br>더 프리미엄<br>모의고사
                    </th>
                    <th>
                        월간<br>장영진<br>모의고사
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="4">9월</th>
                    <td>1주차</td>
                    <td class="bg01">9평</td>
                    <td></td>
                    <td></td>
                    <td class="bg05">9월호</td>
                </tr>
                <tr>
                    <td>2주차</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>3주차</td>
                    <td></td>
                    <td class="bg02">3회</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>4주차</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <th rowspan="4">10월</th>
                    <td>1주차</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="bg05">10월호</td>
                </tr>
                <tr>
                    <td>2주차</td>
                    <td></td>
                    <td class="bg02">4회</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>3주차</td>
                    <td></td>
                    <td></td>
                    <td class="bg03">10월</td>
                    <td></td>
                </tr>
                <tr>
                    <td>4주차</td>
                    <td></td>
                    <td class="bg02">5회</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <th rowspan="3">11월</th>
                    <td>1주차</td>
                    <td></td>
                    <td></td>
                    <td class="bg03">11월</td>
                    <td></td>
                </tr>
                <tr>
                    <td>2주차</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>3주차</td>
                    <td class="bg01">수능</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
        <% end If %>
        <p class="r-txt">※ 상기 일정 및 시행 요일은 학원별 학사일정에 따라 변경 및 조정될 수 있습니다.</p>

        <div class="swiper-container pic-slide">
            <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=img_name%>/2023/final/pic01.jpg" alt=""></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=img_name%>/2023/final/pic02.jpg" alt=""></div>
            </div>
        </div>

        <div class="st-review">
            <% If campus_code = "CD0341" Then '코어 대전' %>
            <p>
                <strong>러셀CORE 대전에서 가장 좋았던 시스템은 QUEL 모의고사와 메가X대성 더 프리미엄 모의고사</strong>였습니다.
                수험장 분위기, 시간표 등 실제 <strong>수험장과 가장 유사하게 구현</strong>하여 모의고사를 치르기 때문에
                수능날 발생 할 수 있는 일을 시뮬레이션해 볼 수 있고, 수능장에서 해야 할 루틴을 미리 테스트 해볼 수 있었습니다.
                <strong>9평 이후 매달 집체모의고사를 응시하며 부족한 부분을 채울 수 있었고, 동기 부여를 받을 수 있었습니다.</strong>
            </p>
            <div>
                <div class="txt">
                    <strong>2023 연세대학교(서울) 의예과 합격</strong>
                    <p>러셀CORE 대전 조한혁</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_jhh.png" alt=""></p>
            </div>
            <% ElseIf campus_code = "CD0249" Then '영통' %>
            <p>
                <strong>메가X대성 THE PREMIUM 모의고사와 QUEL 모의고사를 매월 보면서 저의 실력을 점검</strong>할 수 있었고
                <strong>실제 수능을 보는 것처럼 시뮬레이션</strong>을 해 볼 수 있어 좋았습니다. <br>
                또한 시험 이후에 나오는 <strong>성적표를 통해 저의 위치를 객관적으로 파악하고 반성하거나 성취감</strong>을 느낄 수 있었습니다.
            </p>
            <div>
                <div class="txt">
                    <strong>2023 이화여자대학교 약학부 합격</strong>
                    <p>러셀 영통 김채연</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_kcy.png" alt=""></p>
            </div>
            <% ElseIf campus_code = "CD0247" Then '강남' %>
            <p>
                <strong>러셀에서 좋았던 점은 모의고사 이후 총평 적는 것입니다.</strong>
                모의고사를 풀고 난 직후 다시 그때 상황을 복기해서
                <strong>나의 약점이나 부족했던 부분들을 찾아내는 게 학습 방향성을 정하는 데에 큰 도움</strong>이 되었습니다.
                또한 러셀에는 <strong>퀄, 메가X대성 더 프리미엄 모의고사 등 여러 모의고사</strong>가 있기 때문에
                이에 대한 <strong>피드백을 통해서 보다 구체적인 학습 목표들을 설정</strong>할 수 있었습니다.
            </p>
            <div>
                <div class="txt">
                    <strong>2023 경희대학교(서울) 의예과 합격</strong>
                    <p>러셀 강남 정연욱</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_jyw.png" alt=""></p>
            </div>
            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
            <p>
                저는 수능 대비를 위해선 그와 <strong>가장 비슷한 환경에서 가장
                비슷한 퀄리티의 문제를 풀어보는 게 중요하다고 생각하는데
                이 점에서 퀄 모의고사와 메대프 모의고사는 여기에 가장
                부합하는 시험</strong>이라고 생각합니다. 거기에 성적도 체계적으로
                산출되고 분석 해주시니 본인의 부족한 점을 점검하고
                개선해가는 데에는 더없이 좋은 시스템이라고 생각합니다. <br>
                또한 <strong>자습, 단과, 급식을 모두 한 건물에서 해결할 수 있으니
                이동시간도 절약되고 너무 편했습니다.</strong> 그렇기에 남는 시간에
                자습, 산책 등을 자유롭게 할 수 있으니 공부하는 데
                최적의 환경이라고 생각합니다.
            </p>
            <div>
                <div class="txt">
                    <strong>2023 조선대학교 의예과 합격</strong>
                    <p>러셀CORE 광주 조OO</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_man.png" alt=""></p>
            </div>
            <% ElseIf campus_code = "CD0248" Then '평촌 %>
            <p>
                <strong>퀄 모의고사와 메가X대성 더 프리미엄 모의고사가 좋았습니다.</strong>
                수능 공부를 하면서 개념을 익히고 여러 문제를 푸는 것도
                좋지만, 모의시험을 자주 치르면서 시험에 대한 긴장감도 줄이고
                실력도 쌓을 수 있었습니다. 문제를 풀면서 시간 관리를 하거나
                문제 푸는 습관도 점검할 수 있었습니다. <br>
                특히 메대프의 경우, 전국 단위 백분위와 유형별 정답률이
                분석되기 때문에 제 위치를 알고 또 어느 분야가 부족한지
                인지하고 고칠 수 있었던 점에서 정말 좋았습니다.
            </p>
            <div>
                <div class="txt">
                    <strong>2023 덕성여자대학교 약학과 합격</strong>
                    <p>러셀 평촌 신영진</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_syj.png" alt=""></p>
            </div>
            <% ElseIf campus_code = "CD0257" Then '중계 %>
            <p>
                <strong>저는 메가X대성 프리미엄 모의고사가 제일 좋았습니다. </strong>
                모의고사 퀄리티도 좋고 실제 수능 시간표대로 긴장감을 느끼며
                시험을 볼 수 있어서 실전 연습에 많은 도움이 되었습니다.
                학원 다니기 전에 몇 번 응시 했었는데, 매번 만족스러웠기 때문에 학원 등록하기로 결심했을 때
                다른 학원은 고려하지 않고 바로 러셀 중계학원으로 등록했습니다.
            </p>
            <div>
                <div class="txt">
                    <strong>2023 이화여자대학교 약학과 합격</strong>
                    <p>러셀 중계 이유진</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_lyj.png" alt=""></p>
            </div>
            <% ElseIf campus_code = "CD0250" Then '부천 %>
            <p>
                메가X대성 더 프리미엄 모의고사가 좋았습니다. 사설 모의고사 중 평가원과 유사한 문제를 찾기 어려울뿐더러
                <strong>실전 분위기에서 모의고사를 풀 수 있는 기회를 갖기 힘든데, 질 높은 문제를 실전 분위기에서 풀 수 있다는 점</strong>이 좋았습니다.
            </p>
            <div>
                <div class="txt">
                    <strong>2023 덕성여자대학교 약학과 합격</strong>
                    <p>러셀 부천 김희진</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_khj.png" alt=""></p>
            </div>
            <% Else %>
            <p>
                <strong>러셀학원에서 가장 좋았던 시스템은 <% If campus_code = "CD0244" Then '분당 %>현장에서 응시하는 실전<% Else %>메가X대성 더 프리미엄<% End if %>
                모의고사</strong>였습니다. 한 달에 한 번씩 보는 메대프는 <strong>수능과
                똑같은 시간표로 진행되기 때문에 수능 실전 연습을 하기에
                적합</strong>하였습니다.<br>
                또한 <strong>문제 퀄리티가 좋아서 실제 수능을 푸는 마음가짐</strong>으로
                임할 수 있었고, 시험이 끝난 후 오답을 분석하면서 배워 갈
                점들을 많이 얻었습니다. 메대프가 끝난 후 성적표에 <strong>제 등수나
                영역별 점수가 자세히 나와서 저의 객관적인 위치를 확인</strong>할 수
                있었고, 동기 부여를 받을 수 있었습니다.
            </p>
            <div>
                <div class="txt">
                    <strong>2023 연세대학교(서울) 의예과 합격</strong>
                    <p>러셀 분당 백승주</p>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/st_bsj.png" alt=""></p>
            </div>
            <% End if %>
        </div>

    </div>
    <!--//파이널 실전 콘텐츠 & 집체 모의고사 영역-->

    <!--띠배너 영역-->
    <% if isCore = 1 Then '코어 %>
    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/btm_banner_core.jpg" alt=""></p>
    <% else %>
    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/btm_banner.jpg" alt=""></p>
    <% end If %>
    <!--//띠배너 영역-->
</div>