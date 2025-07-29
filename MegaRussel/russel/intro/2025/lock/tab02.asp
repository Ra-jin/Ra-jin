<div class="cont js-cont">
    <div class="cont03">
        <div class="inner">
            <p class="mb100"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/lock/cont03_tit.png" alt="" /></p>
            <p class="s-tit mb100"><img src="<%=Application("img_path_russel")%>/intro/2025/lock/cont03_txt.png" alt="" /></p>

            <div class="studyHall-slide-wrap">
                <div class="studyHall-navi">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인 면학분위기</div>
                        <div class="swiper-slide">충분한 자습시간</div>
                        <div class="swiper-slide">학습 동선 최소화</div>
                        <div class="swiper-slide">최적화된 학습환경</div>
                    </div>
                </div>
                <div class="studyHall-slide">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/lock/studyHall_img01.jpg" alt="" /></p>
                            <div class="txt">
                                <p>최상위권이 모여 경쟁하는<br>
                                    <strong>집단적인 면학분위기</strong></p>
                                <ul class="txt-list">
                                    <li>최상위권의 학구열을 직접 체감할 수 있는 <strong>개방형 구조</strong>로<br>
                                        <strong>지속적인 학습동기를 부여하며 긴장감을 유지</strong>하게 합니다.</li>
                                    <li class="mb0"><strong>입시 담임선생님의 관리</strong>하에 자율과 통제의<br>
                                        균형적인 운영으로 <strong>강력한 면학분위기를 형성</strong>합니다.</li>
                                </ul>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <p style="position:relative;">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/lock/studyHall_img02.jpg" alt="" />
                                <a href="javascript:void(0)" class="bt-tt02" style="position:absolute;bottom:0;left:0;width:100%;height:60px;"></a>
                            </p>
                            <div class="txt">
                                <p>실제 수능 시간표와 동일한<br>
                                    <strong>표준 시간표 운영</strong></p>
                                <ul class="txt-list">
                                    <li><strong>수능 시험 기준의 표준 시간표로 생활</strong>하여<br>
                                        학습&middot;생활 리듬이 수능에 최적화되도록 합니다.</li>
                                    <li class="mb0">개인의 학습 상황에 맞는 스케줄 운영과 <br>
                                        충분한 의무자습으로 <strong>매일 최대 자습시간을 확보</strong>하게 합니다.</li>
                                </ul>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/intro/2025/lock/studyHall_img03.jpg" alt="" /></p>
                            <div class="txt">
                                <p>이동에 낭비하는 시간 없도록<br>
                                    <strong>학습 동선 최소화</strong></p>
                                <ul class="txt-list">
                                    <li>한 건물 내에서 강의실-바자관-급식을<br>
                                        한 번에 해결하여 <strong>이동에 낭비하는 시간을 최소화</strong>합니다.</li>
                                    <li class="mb0">학습 동선을 최소화하여 <strong>효율적인 시간 활용</strong>이 가능하며<br>
                                        <strong>수업 및 자습시간에 높은 집중력을 발휘</strong>할 수 있습니다.</li>
                                </ul>
                            </div>
                            <% If sCampusCode = "CD0247" Then '강남 %>
                            <p class="r-txt">※ 강의실은 운영 상황에 따라 별관(다른 건물)으로 이동할 수도 있습니다.</p>
                            <% End If %>
                        </div>
                        <div class="swiper-slide">
                            <p style="position:relative;">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/lock/studyHall_img04.jpg" alt="" />
                                <a href="javascript:void(0)" class="bt-tt" style="position:absolute;bottom:0;right:0;width:81px;height:81px;"></a>
                            </p>
                            <div class="txt">
                                <p>학습에만 전념할 수 있도록<br>
                                    <strong>학습에 최적화된 환경</strong></p>
                                <ul class="txt-list">
                                    <li><strong>학습 효율성을 높이기 위해 설계된 시설과 환경</strong>에서<br>
                                        온전히 학습에만 집중할 수 있습니다.</li>
                                    <li class="mb0">바자관은 <strong>개방형 구조와 벽면이 통유리</strong>로 되어 있어<br>
                                        건강한 긴장감과 개방감을 느낄 수 있습니다.</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 바자관 시간표 -->
            <div class="layer-pop01 layer">
                <a href="javascript:void(0)" class="bt-close"><img src="<%=Application("img_path_russel")%>/intro/2025/lock/bt_close.png" alt="닫기"></a>
                <p class="stit">바른공부 자습전용관 표준 시간표</p>
                <div class="layer-wrap">
                    <% If sCampusCode = "CD0247" Then '강남 %>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width:10%" />
                            <col style="width:10%" />
                            <col style="width:15%" />
                            <col style="width:10%" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="2">구분</th>
                                <th>시간</th>
                                <th>자습시간</th>
                                <th>월요일~토요일</th>
                                <th>일요일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th rowspan="4" class="bg-sky">오전</th>
                                <td class="bg-red">0교시</td>
                                <td class="bg-red">AM 07:00~AM 07:50</td>
                                <td class="bg-red">50분</td>
                                <td class="bg-red"><span class="ico-txt s">선택자습</span></td>
                                <td class="bg-red"><span class="ico-txt s">선택자습</span></td>
                            </tr>
                            <tr>
                                <td>1교시</td>
                                <td>AM 08:00~AM 08:40</td>
                                <td>40분</td>
                                <td rowspan="3">
                                    <span class="ico-txt b">의무자습</span>
                                    <span class="ico-txt v">단과 수업</span>
                                    <span class="ico-txt r">담임 상담</span>
                                </td>
                                <td rowspan="3" class="bg-red"><span class="ico-txt s">선택자습</span></td>
                            </tr>
                            <tr>
                                <td>2교시</td>
                                <td>AM 08:50~AM 10:10</td>
                                <td>80분</td>
                            </tr>
                            <tr>
                                <td>3교시</td>
                                <td>AM 10:30~PM 12:10</td>
                                <td>100분</td>
                            </tr>
                            <tr>
                                <th colspan="2">점심시간</th>
                                <td>PM 12:10~PM 01:10</td>
                                <td>60분</td>
                                <td colspan="2">점심식사</td>
                            </tr>
                            <tr>
                                <th rowspan="3" class="bg-sky">오후</th>
                                <td>4교시</td>
                                <td>PM 01:10~PM 02:20</td>
                                <td>70분</td>
                                <td rowspan="3">
                                    <span class="ico-txt b">의무자습</span>
                                    <span class="ico-txt v">단과 수업</span>
                                    <span class="ico-txt r">담임 상담</span>
                                </td>
                                <td rowspan="3" class="bg-red"><span class="ico-txt s">선택자습</span></td>
                            </tr>
                            <tr>
                                <td>5교시</td>
                                <td>PM 02:40~PM 04:00</td>
                                <td>80분</td>
                            </tr>
                            <tr>
                                <td>6교시</td>
                                <td>PM 04:20~PM 05:30</td>
                                <td>70분</td>
                            </tr>
                            <tr>
                                <th colspan="2">저녁시간</th>
                                <td>PM 05:30~PM 06:30</td>
                                <td>60분</td>
                                <td colspan="2">저녁식사</td>
                            </tr>
                            <tr>
                                <th rowspan="2" class="bg-sky">저녁</th>
                                <td>7교시</td>
                                <td>PM 06:30~PM 08:00</td>
                                <td>90분</td>
                                <td rowspan="2">
                                    <span class="ico-txt b">의무자습</span>
                                    <span class="ico-txt v">단과 수업</span>
                                    <span class="ico-txt r">담임 상담</span>
                                </td>
                                <td rowspan="2" class="bg-red"><span class="ico-txt s">선택자습</span></td>
                            </tr>
                            <tr>
                                <td>8교시</td>
                                <td>PM 08:20~PM 09:50</td>
                                <td>90분</td>
                            </tr>
                            <tr>
                                <th colspan="2">귀가</th>
                                <td>PM 09:50~PM 10:10</td>
                                <td>20분</td>
                                <td colspan="2">-</td>
                            </tr>
                            <tr>
                                <th rowspan="2" class="bg-sky">심야</th>
                                <td class="bg-red">9교시</td>
                                <td class="bg-red">PM 10:10~PM 11:00</td>
                                <td class="bg-red">50분</td>
                                <td class="bg-red" rowspan="2"><span class="ico-txt s">선택자습</span></td>
                                <td class="bg-red" rowspan="2">(이용불가)</td>
                            </tr>
                            <tr>
                                <td class="bg-red">10교시</td>
                                <td class="bg-red">PM 11:10~AM 12:00</td>
                                <td class="bg-red">50분</td>
                            </tr>
                        </tbody>
                    </table>
                    <p class="r-stxt mt10">* 학원 사정에 따라 운영시간은 달라질 수 있습니다.</p>
                    <% ElseIf sCampusCode = "CD0250" Then '부천 %>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width:10%" />
                            <col style="width:12%" />
                            <col style="width:11%" />
                            <col style="width:11%" />
                            <col style="width:10%" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="2">구분</th>
                                <th>시작시간</th>
                                <th>종료시간</th>
                                <th>자습시간</th>
                                <th>월요일~금요일</th>
                                <th>일요일/공휴일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th rowspan="4" class="bg-sky">오전</th>
                                <td class="bg-sky">1교시</td>
                                <td>AM 08:00</td>
                                <td>AM 08:30</td>
                                <td>30분</td>
                                <td rowspan="4" ></td>
                                <td rowspan="4" ></td>
                            </tr>
                            <tr>
                                <td class="bg-sky">2교시</td>
                                <td>AM 08:40</td>
                                <td>AM 10:00</td>
                                <td>80분</td>
                            </tr>
                            <tr>
                                <td class="bg-sky">활력시간</td>
                                <td>AM 10:20</td>
                                <td>AM 10:30</td>
                                <td>10분</td>
                            </tr>
                            <tr>
                                <td class="bg-sky">3교시</td>
                                <td>AM 10:30</td>
                                <td>PM 12:10</td>
                                <td>100분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-sky">점심식사</th>
                                <td>PM 12:10</td>
                                <td>PM 01:10</td>
                                <td>60분</td>
                                <td>원내 급식 진행</td>
                                <td>급식 미진행</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-sky">일일 학습컨텐츠</th>
                                <td>PM 01:10</td>
                                <td>PM 01:20</td>
                                <td>10분</td>
                                <td colspan="2">
                                    [월~금 : 주간지 또는 영단어 테스트 / 토 : 영어듣기 / 일 : 자습] <br>
                                    (* 단, 토요일은 “PM 01:00”부터 영어듣기 진행)
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="4" class="bg-sky">오후</th>
                                <td class="bg-sky">담임조회</td>
                                <td>PM 01:20</td>
                                <td>PM 01:30</td>
                                <td>10분</td>
                                <td rowspan="4"></td>
                                <td rowspan="4"></td>
                            </tr>
                            <tr>
                                <td class="bg-sky">4교시</td>
                                <td>PM 01:30 </td>
                                <td>PM 02:20</td>
                                <td>50분</td>
                            </tr>
                            <tr>
                                <td class="bg-sky">5교시</td>
                                <td>PM 02:40 </td>
                                <td>PM 04:00</td>
                                <td>80분</td>
                            </tr>
                            <tr>
                                <td class="bg-sky">6교시</td>
                                <td>PM 04:20</td>
                                <td>PM 05:30</td>
                                <td>70분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-sky">저녁식사</th>
                                <td>PM 05:30</td>
                                <td>PM 06:40</td>
                                <td>70분</td>
                                <td>원내 급식 진행</td>
                                <td>급식 미진행</td>
                            </tr>
                            <tr>
                                <th rowspan="2" class="bg-sky">저녁</th>
                                <td class="bg-sky">7교시</td>
                                <td>PM 06:40</td>
                                <td>PM 08:10</td>
                                <td>90분</td>
                                <td rowspan="2"></td>
                                <td rowspan="2"></td>
                            </tr>
                            <tr>
                                <td class="bg-sky">8교시</td>
                                <td>PM 08:30 </td>
                                <td>PM 10:00</td>
                                <td>90분</td>
                            </tr>
                            <tr>
                                <th class="bg-sky" colspan="2">담임종례 및 귀가</th>
                                <td>PM 10:00</td>
                                <td>PM 10:20</td>
                                <td>20분</td>
                                <td colspan="2">-</td>
                            </tr>
                            <tr>
                                <th class="bg-sky">심야</th>
                                <td class="bg-sky">9교시</td>
                                <td>PM 10:20</td>
                                <td>PM 00:00</td>
                                <td>100분</td>
                                <td></td>
                                <td>미진행</td>
                            </tr>
                        </tbody>
                    </table>
                    <% End If %>
                </div>
            </div>
            <!-- //바자관 시간표 -->
            <!-- 바자관 시설보기 팝업 -->
            <div class="layer-pop layer">
                <a href="javascript:void(0)" class="bt-close"><img src="<%=Application("img_path_russel")%>/intro/2025/lock/bt_close.png" alt="닫기"></a>
                <div class="layer-wrap">
                    <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/lock/studyHall_img_pop.jpg" alt="" />
                </div>
            </div>
            <!-- //바자관 시설보기 팝업 -->
        </div>
    </div>
    <div class="cont04">
        <div class="inner">
            <p class="mb80"><img src="<%=Application("img_path_russel")%>/intro/2025/lock/cont04_tit.png" alt="" /></p>
            <div class="system-wrap">
                <div class="sbox ml0">
                    <p>목표 대학 합격을 위한 개인 맞춤<br>
                    <strong>입시관리</strong></p>
                    <ul class="list-03">
                        <li>입시 결과 및 수능 성적을 기반으로<br>
                            체계적인 1:1 상담</li>
                        <li>재원생 입시 결과를 활용하여 개인 목표에<br>
                            맞춘 시기별 입시(수시/정시) 방향 제시</li>
                        <li class="pb0">입시특강, 전형별 설명회 등<br>
                            최신 입시 정보 제공</li>
                    </ul>
                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/lock/system-img01.png" alt=""></p>
                </div>
                <div class="sbox">
                    <p>체계적인 분석을 통한 전략 수립<br>
                    <strong>학습관리</strong></p>
                    <ul class="list-03 mb60">
                        <li>성적 데이터와 학습 현황 기반으로<br>
                            과목별 보완점과 학습 방향 1:1 상담</li>
                        <li>목표 성적 맞춤 시기별 학습 전략 제시</li>
                        <li class="pb0">과목별 학습법 특강 및 설명회 제공으로<br>
                            시기별 맞춤 학습 전략 제안</li>
                    </ul>
                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/lock/system-img02.png" alt=""></p>
                </div>
                <div class="sbox">
                    <p>학습에만 전념할 수 있도록<br>
                    <strong>생활관리</strong></p>
                    <ul class="list-03">
                        <li>면학분위기가 유지될 수 있도록<br>
                            강력한 관리 및 태도 점수 운영</li>
                        <li>학습 플래너 점검 및 피드백으로<br>
                            학습 습관 및 방법 개선</li>
                        <li class="pb0">학습 고충 및 슬럼프를 극복할 수 있도록<br>
                            지속적인 상담으로 학습동기 부여</li>
                    </ul>
                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/lock/system-img03.png" alt=""></p>
                </div>
            </div>
        </div>
    </div>


    <% If sCampusCode = "CD0247" Then '강남 %>
    <div class="cont05">

        <h3><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/lock/cont05_tit02.png" alt="러셀에서 최상위권 대입성공이 가능한 이유 러셀에는 실전 수능에 완벽하게 대비할 수 있는 최상위권 맞춤 실전 콘텐츠가 있습니다."></h3>

        <div class="inner">
            <div class="program-wrap">
                <div class="program-navi swiper-container <%=campusName%>">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">OMEGA 시리즈</div>
                        <div class="swiper-slide">집체 모의고사 시리즈</div>
                        <div class="swiper-slide">수학 전용 실전 콘텐츠</div>
                        <div class="swiper-slide">학습계획 콘텐츠</div>
                    </div>
                </div>
                <div class="program-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/intro/2025/regular/program_slide02_v2.png" alt="">
                            <a href="/event/omega_intro/index.asp" style="z-index:2;position:absolute;left:510px;top:378px;width:121px;height:35px;"></a>
                            <a href="/event/omega_intro/index.asp" style="z-index:2;position:absolute;left:365px;top:928px;width:121px;height:35px;"></a>
                            <a href="/event/omega_intro/index.asp" style="z-index:2;position:absolute;right:213px;top:928px;width:121px;height:35px;"></a>
                            <a href="/event/omega_intro/index.asp" style="z-index:2;position:absolute;left:376px;top:1509px;width:121px;height:35px;"></a>
                            <a href="/event/omega_intro/index.asp" style="z-index:2;position:absolute;right:190px;top:1509px;width:121px;height:35px;"></a>
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/intro/2025/regular/program_slide01_v2.png" alt="최상위권 맞춤 실전 콘텐츠 과목별 시행 일정">
                            <a href="/event/2025/jdsm/index.asp" style="z-index:2;position:absolute;left:510px;top:370px;width:121px;height:35px;"></a>
                            <a href="/intro/2022/premium/index.asp" style="z-index:2;position:absolute;left:510px;top:752px;width:121px;height:35px;"></a>
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/intro/2025/regular/program_slide03_v2.png" alt="">
                            <a href="/event/2025/alpha/index.asp" style="z-index:2;position:absolute;left:540px;top:360px;width:121px;height:35px;"></a>
                        </div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/program_slide04_v2.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- <div class="inner">
            <p class="txt mb60"><img src="<%=Application("img_path_russel")%>/intro/2025/lock/cont05_tit.png" alt="" /></p>
            <p class="txt mb60"><img src="<%=Application("img_path_russel")%>/intro/2025/lock/cont05_txt01.png" alt="" /></p>
            <p class="txt mb60"><img src="<%=Application("img_path_russel")%>/intro/2025/lock/cont05_txt02.png" alt="" /></p>
            <p class="r-txt">* 재원생 전용 콘텐츠 공개 일정은 예고 없이 변경될 수 있습니다.</p>
        </div>
        <p class="bg"><img src="<%=Application("img_path_russel")%>/intro/2025/lock/cont05_bg.jpg" alt=""></p> -->
    </div>
    <% End If %>
    
    
    <% If sCampusCode = "CD0250" Then '부천 %>
    <div class="cont06">
        <div class="inner">
            <p class="mb80"><img src="<%=Application("img_path_russel")%>/intro/2025/first/cont06_tit.png" alt="수능까지 이어지는 시기별 맞춤 학습 콘텐츠" /></p>
            <div class="program-wrap">
                <div class="program-navi swiper-container <%=campusName%>">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집체 모의고사 시리즈</div>
                        <div class="swiper-slide">OMEGA 시리즈</div>
                        <div class="swiper-slide">수학 전용 실전 콘텐츠</div>
                        <div class="swiper-slide">학습계획 콘텐츠</div>
                    </div>
                </div>
                <div class="program-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/intro/2025/first/program_slide01.png" alt="최상위권 맞춤 실전 콘텐츠 과목별 시행 일정">
                            <a href="/intro/2022/premium/index.asp" style="z-index:2;position:absolute;left:469px;bottom:118px;width:121px;height:35px;"></a>
                        </div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2025/first/program_slide02.png" alt=""></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2025/first/program_slide03.png" alt=""></div>
                        <% If sCampusCode <> "CD0244" Then '분당 제외 %>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2025/first/program_slide04.png" alt=""></div>
                        <% End If %>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="cont07">
        <div class="inner">
            <p class="mb80"><img src="<%=Application("img_path_russel")%>/intro/2025/lock/cont07_tit.png" alt="최상위권 맞춤 실전 콘텐츠 과목별 시행 일정" /></p>
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
                        <tr>
                            <th class="bg-th">메가X대성<br>더 프리미엄<br>모의고사</th>
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
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <th class="bg-th" rowspan="7">OMEGA<br>LINK</th>
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
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <th class="bg-th" rowspan="3">OMEGA<br>BLACK</th>
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
                        <tr> 
                            <th class="bg-th" rowspan="2">OMEGA<br>BLUE</th>
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
                        <tr>
                            <th class="bg-th" rowspan="6">OMEGA<br>WEEKLY</th>
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
                        <tr>
                            <th class="bg-th">알파 모의고사</th>
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
            </div>
            <p class="r-txt">* 상기 일정은 평가원 시행 계획 및 학원 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
        </div>
    </div>
    <% End If %>
</div>
<div class="bt-banner">
    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/lock/banner_tit.png" alt=""></p>
</div>