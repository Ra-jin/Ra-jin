<div class="cont js-cont <%=campusName%>">
    <div class="cont08">
		<% If sCampusCode = "CD0257" Then '중계 %>
        <h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont08_tit.png" alt="러셀에는 실전 수능에 완벽하게 대비할 수 있는 시기별 맞춤 실전 콘텐츠가 있습니다."></h3>
        <% Else %>
        <h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/cont08_tit.png" alt="러셀에서 최상위권 대입성공이 가능한 이유 러셀에는 실전 수능에 완벽하게 대비할 수 있는 최상위권 맞춤 실전 콘텐츠가 있습니다."></h3>
        <% End If %>
        <div class="inner">
            <div class="program-wrap">
                <div class="program-navi swiper-container <%=campusName%>">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">OMEGA 시리즈</div>
                        <div class="swiper-slide">집체 모의고사 시리즈</div>
                        <% If sCampusCode <> "CD0257" Then '중계 제외 %>
                        <div class="swiper-slide">수학 전용 실전 콘텐츠</div>
                        <% End If %>
                        <div class="swiper-slide">학습계획 콘텐츠</div>
                    </div>
                </div>
                <div class="program-slide swiper-container">
                    <div class="swiper-wrapper">
                        <% If sCampusCode = "CD0250" OR sCampusCode = "CD0257" Then '부천/중계 %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/program_slide02.png" alt="">
                            <a href="/event/omega_intro/index.asp" style="z-index:2;position:absolute;left:309px;top:563px;width:121px;height:35px;"></a>
                            <a href="/event/omega_intro/index.asp" style="z-index:2;position:absolute;right:239px;top:563px;width:121px;height:35px;"></a>
                            <a href="/event/omega_intro/index.asp" style="z-index:2;position:absolute;left:391px;top:1138px;width:121px;height:35px;"></a>
                            <a href="/event/omega_intro/index.asp" style="z-index:2;position:absolute;right:190px;top:1144px;width:121px;height:35px;"></a>
                        </div>
                        <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/program_slide02.png" alt="">
                            <a href="/event/omega_intro/index.asp" style="z-index:2;position:absolute;left:510px;top:378px;width:121px;height:35px;"></a>
                            <a href="/event/omega_intro/index.asp" style="z-index:2;position:absolute;left:365px;top:928px;width:121px;height:35px;"></a>
                            <a href="/event/omega_intro/index.asp" style="z-index:2;position:absolute;right:190px;top:932px;width:121px;height:35px;"></a>
                        </div>
                        <% Else %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/program_slide02_v2.png" alt="">
                            <a href="/event/omega_intro/index.asp" style="z-index:2;position:absolute;left:510px;top:378px;width:121px;height:35px;"></a>
                            <a href="/event/omega_intro/index.asp" style="z-index:2;position:absolute;left:365px;top:928px;width:121px;height:35px;"></a>
                            <a href="/event/omega_intro/index.asp" style="z-index:2;position:absolute;right:213px;top:928px;width:121px;height:35px;"></a>
                            <a href="/event/omega_intro/index.asp" style="z-index:2;position:absolute;left:376px;top:1509px;width:121px;height:35px;"></a>
                            <a href="/event/omega_intro/index.asp" style="z-index:2;position:absolute;right:190px;top:1509px;width:121px;height:35px;"></a>
                        </div>
                        <% End If %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/program_slide01_v2.png" alt="성적 향상을 위한 핵심 발판, ‘나의 위치 파악’">
                            <a href="/event/2025/jdsm/index.asp" style="z-index:2;position:absolute;left:510px;top:370px;width:121px;height:35px;"></a>
                            <a href="/intro/2022/premium/index.asp" style="z-index:2;position:absolute;left:510px;top:752px;width:121px;height:35px;"></a>
                        </div>
                        <% If sCampusCode <> "CD0257" Then '중계 제외 %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/program_slide03_v2.png" alt="">
                            <a href="/event/2025/alpha/index.asp" style="z-index:2;position:absolute;left:540px;top:360px;width:121px;height:35px;"></a>
                        </div>
                        <% End If %>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/program_slide04_v2.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="cont09">
        <div class="inner">
            <% If sCampusCode = "CD0257" Then '중계 %>
            <p class="mb80" data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont09_tit.png" alt="재학생 맞춤 실전 콘텐츠 과목별 시행 일정" /></p>
            <% Else %>
            <p class="mb80" data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/cont09_tit.png" alt="최상위권 맞춤 실전 콘텐츠 과목별 시행 일정" /></p>
            <% End If %>
            <% If sCampusCode = "CD0257" Then '중계 %>
            <div class="tbl-box">
                <table class="tbl-01 type02">
                    <colgroup>
                        <col style="width:10%">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>구분</th>
                            <th>과목</th>
                            <th>총 회차</th>
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
                        <!-- OMEGA -->
                        <tr>
                            <th class="bg-th" rowspan="7">OMEGA</th>
                            <td>국어</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>수학</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>영어</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>사탐</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅰ</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅱ</td>
                            <td>5회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>3회</td>
                            <td>2회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>한국사</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td>3회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <!-- OMEGA LINK -->
                        <tr>
                            <th class="bg-th" rowspan="7">OMEGA<br>link</th>
                            <td>국어</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>수학</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>영어</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>사탐</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅰ</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅱ</td>
                            <td>5회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>3회</td>
                            <td>2회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>한국사</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td>3회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <!-- OMEGA BLACK -->
                        <tr>
                            <th class="bg-th" rowspan="3">OMEGA<br>black</th>
                            <td>수학</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>사탐</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅰ</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <!-- OMEGA WEEKLY -->
                        <tr>
                            <th class="bg-th" rowspan="6">OMEGA<br>weekly</th>
                            <td>국어</td>
                            <td>16회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>수학</td>
                            <td>16회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>영어</td>
                            <td>16회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>사탐</td>
                            <td>4권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅰ</td>
                            <td>4권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅱ</td>
                            <td>4권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        
                        <!-- 전국 대단위 실전 모의고사 -->
                        <tr>
                            <th class="bg-th">전국 대단위<br>실전 모의고사</th>
                            <td>전 과목</td>
                            <td>2회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <!-- 메가X대성 더 프리미엄 모의고사 -->
                        <tr>
                            <th class="bg-th">메가X대성<br>더 프리미엄<br>
                            모의고사</th>
                            <td>전 과목</td>
                            <td>6회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td>1회</td>
                        </tr>
                    </tbody>
                </table>
                <p class="r-txt">* 상기 일정은 평가원 시행 계획 및 학원 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
            </div>
            <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
            <div class="tbl-box">
                <table class="tbl-01 type02">
                    <colgroup>
                        <col style="width:10%">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>구분</th>
                            <th>과목</th>
                            <th>총 회차</th>
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
                        <!-- OMEGA -->
                        <tr>
                            <th class="bg-th" rowspan="7">OMEGA</th>
                            <td>국어</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>수학</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>영어</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>사탐</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅰ</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅱ</td>
                            <td>5회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>3회</td>
                            <td>2회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>한국사</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td>3회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <!-- OMEGA LINK -->
                        <tr>
                            <th class="bg-th" rowspan="7">OMEGA<br>link</th>
                            <td>국어</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>수학</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>영어</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>사탐</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅰ</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅱ</td>
                            <td>5회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>3회</td>
                            <td>2회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>한국사</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td>3회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <!-- OMEGA WEEKLY -->
                        <tr>
                            <th class="bg-th" rowspan="6">OMEGA<br>weekly</th>
                            <td>국어</td>
                            <td>16회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>수학</td>
                            <td>16회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>영어</td>
                            <td>16회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>사탐</td>
                            <td>4권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅰ</td>
                            <td>4권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅱ</td>
                            <td>4권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        
                        <!-- 전국 대단위 실전 모의고사 -->
                        <tr>
                            <th class="bg-th">전국 대단위<br>실전 모의고사</th>
                            <td>전 과목</td>
                            <td>2회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <!-- 메가X대성 더 프리미엄 모의고사 -->
                        <tr>
                            <th class="bg-th">메가X대성<br>더 프리미엄<br>
                            모의고사</th>
                            <td>전 과목</td>
                            <td>6회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td>1회</td>
                        </tr>
                        <!-- ALPHA -->
                        <tr>
                            <th class="bg-th">ALPHA</th>
                            <td>수학</td>
                            <td>7회</td>
                            <td>2회</td>
                            <td>2회</td>
                            <td>2회</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                    </tbody>
                </table>
                <p class="r-txt">* 상기 일정은 평가원 시행 계획 및 학원 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
            </div>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <div class="tbl-box">
                <table class="tbl-01 type02">
                    <colgroup>
                        <col style="width:10%">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>구분</th>
                            <th>과목</th>
                            <th>총 회차</th>
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
                        <!-- OMEGA -->
                        <tr>
                            <th class="bg-th" rowspan="7">OMEGA</th>
                            <td>국어</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>수학</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>영어</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>사탐</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅰ</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅱ</td>
                            <td>5회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>3회</td>
                            <td>2회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>한국사</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td>3회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <!-- OMEGA LINK -->
                        <tr>
                            <th class="bg-th" rowspan="7">OMEGA<br>link</th>
                            <td>국어</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>수학</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>영어</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>사탐</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅰ</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅱ</td>
                            <td>5회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>3회</td>
                            <td>2회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>한국사</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td>3회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <!-- OMEGA BLACK -->
                        <tr>
                            <th class="bg-th" rowspan="3">OMEGA<br>black</th>
                            <td>수학</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>사탐</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅰ</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <!-- OMEGA WEEKLY -->
                        <tr>
                            <th class="bg-th" rowspan="3">OMEGA<br>weekly</th>
                            <td>국어</td>
                            <td>16회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>수학</td>
                            <td>16회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>영어</td>
                            <td>16회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <!-- 전국 대단위 실전 모의고사 -->
                        <tr>
                            <th class="bg-th">전국 대단위<br>실전 모의고사</th>
                            <td>전 과목</td>
                            <td>2회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <!-- 메가X대성 더 프리미엄 모의고사 -->
                        <tr>
                            <th class="bg-th">메가X대성<br>더 프리미엄<br>
                            모의고사</th>
                            <td>전 과목</td>
                            <td>6회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td>1회</td>
                        </tr>
                        <!-- ALPHA -->
                        <tr>
                            <th class="bg-th">ALPHA</th>
                            <td>수학</td>
                            <td>7회</td>
                            <td>2회</td>
                            <td>2회</td>
                            <td>2회</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                    </tbody>
                </table>
                <p class="r-txt">* 상기 일정은 평가원 시행 계획 및 학원 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
            </div>
            <% Else %>
            <div class="tbl-box">
                <table class="tbl-01 type02">
                    <colgroup>
                        <col style="width:10%">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>구분</th>
                            <th>과목</th>
                            <th>총 회차</th>
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
                        <!-- OMEGA -->
                        <tr>
                            <th class="bg-th" rowspan="7">OMEGA</th>
                            <td>국어</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>수학</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>영어</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>사탐</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅰ</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅱ</td>
                            <td>5회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>3회</td>
                            <td>2회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>한국사</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td>3회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <!-- OMEGA LINK -->
                        <tr>
                            <th class="bg-th" rowspan="7">OMEGA<br>link</th>
                            <td>국어</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>수학</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>영어</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>사탐</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅰ</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅱ</td>
                            <td>5회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>3회</td>
                            <td>2회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>한국사</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td>3회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <!-- OMEGA BLACK -->
                        <tr>
                            <th class="bg-th" rowspan="3">OMEGA<br>black</th>
                            <td>수학</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>사탐</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅰ</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <!-- OMEGA BLUE -->
                        <tr> 
                            <th class="bg-th" rowspan="2">OMEGA<br>blue</th>
                            <td>수학</td>
                            <td>10회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>2회</td>
                            <td>2회</td>
                            <td>3회</td>
                            <td>3회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅰ</td>
                            <td>10회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>2회</td>
                            <td>2회</td>
                            <td>3회</td>
                            <td>3회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <!-- OMEGA WEEKLY -->
                        <tr>
                            <th class="bg-th" rowspan="6">OMEGA<br>weekly</th>
                            <td>국어</td>
                            <td>16회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>수학</td>
                            <td>16회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>영어</td>
                            <td>16회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>사탐</td>
                            <td>4권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅰ</td>
                            <td>4권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅱ</td>
                            <td>4권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        
                        <!-- 전국 대단위 실전 모의고사 -->
                        <tr>
                            <th class="bg-th">전국 대단위<br>실전 모의고사</th>
                            <td>전 과목</td>
                            <td>2회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <!-- 메가X대성 더 프리미엄 모의고사 -->
                        <tr>
                            <th class="bg-th">메가X대성<br>더 프리미엄<br>
                            모의고사</th>
                            <td>전 과목</td>
                            <td>6회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td>1회</td>
                        </tr>
                        <!-- ALPHA -->
                        <tr>
                            <th class="bg-th">ALPHA</th>
                            <td>수학</td>
                            <td>7회</td>
                            <td>2회</td>
                            <td>2회</td>
                            <td>2회</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                    </tbody>
                </table>
                <p class="r-txt">* 상기 일정은 평가원 시행 계획 및 학원 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
            </div>
            <% End If %>
        </div>
    </div>

    <div class="bottom-bar">
		<% If sCampusCode = "CD0247" Then '강남 %>
        <p data-aos="fade-down" data-aos-offset="100">
            재학생에 최적화된 러셀 강남 재학생 최상위권반에서<br>
            <strong>여러분의 최상위권 대입성공이 확실해집니다.</strong>
        </p>
		<% ElseIf sCampusCode = "CD0257" Then '중계 %>
        <p data-aos="fade-down" data-aos-offset="100">
            재학생에 최적화된 러셀 재학생 정규반에서<br>
            <strong>여러분의 대입성공이 확실해집니다.</strong>
        </p>
		<% ElseIf sCampusCode = "CD0244" Then '분당 %>
        <p data-aos="fade-down" data-aos-offset="100">
            재학생(고3)에 최적화된 러셀 재학생 정규반에서<br>
            <strong>여러분의 최상위권 대입성공이 확실해집니다.</strong>
        </p>
        <% ElseIf sCampusCode = "CD0245" Then '목동 %>
        <p data-aos="fade-down" data-aos-offset="100">
            재학생에 최적화된 러셀 파이널 재학생 정규반에서<br>
            <strong>여러분의 최상위권 대입성공이 확실해집니다.</strong>
        </p>
        <% Else %>
        <p data-aos="fade-down" data-aos-offset="100">
            재학생에 최적화된 러셀 재학생 정규반에서<br>
            <strong>여러분의 최상위권 대입성공이 확실해집니다.</strong>
        </p>
        <% End If %>
    </div>
</div>