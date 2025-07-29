<!-- 최상위권 맞춤 러셀 윈터스쿨 프로그램 -->
<div class="cont js-cont">
    <div class="cont03">
        <% If isCore = 1 Then '코어 일경우 %>
        <div class="inner">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont03_tit_c.png" alt="러셀CORE 윈터스쿨, 왜 최상위권이 먼저 선택할까요?" /></p>
            <p class="txt mb80"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont03_txt_c.png" alt="학생중심으로 설계된 러셀CORE 윈터스쿨에는 실력 향상은 물론 최상위권으로 도약하기 위한 모든 것이 준비되어 있기 때문입니다." /></p>
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont03_img_c.png" alt="" /></p>
        </div>
        <% ElseIf sCampusCode = "CD0244" or sCampusCode = "CD0257" Then '분당/중계 %>
        <div class="inner">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont03_tit.png" alt="러셀 윈터스쿨, 왜 최상위권이 먼저 선택할까요?" /></p>
            <p class="txt mb80"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont03_txt.png" alt="학생중심으로 설계된 러셀 윈터스쿨에는 실력 향상은 물론 최상위권으로 도약하기 위한 모든 것이 준비되어 있기 때문입니다." /></p>
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont03_img.png" alt="" /></p>
        </div>
        <% ElseIf sCampusCode = "CD0001" OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" OR sCampusCode = "CD0247" Then '대치/대구/울산/강남 %>
        <div class="inner">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont03_tit.png" alt="러셀 윈터스쿨, 왜 최상위권이 먼저 선택할까요?" /></p>
            <p class="txt mb80"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont03_txt.png" alt="학생중심으로 설계된 러셀 윈터스쿨에는 실력 향상은 물론 최상위권으로 도약하기 위한 모든 것이 준비되어 있기 때문입니다." /></p>
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont03_img.png" alt="" /></p>
        </div>
        <% Else %>
        <div class="inner">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont03_tit.png" alt="러셀 윈터스쿨, 왜 최상위권이 먼저 선택할까요?" /></p>
            <p class="txt mb80"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont03_txt.png" alt="학생중심으로 설계된 러셀 윈터스쿨에는 실력 향상은 물론 최상위권으로 도약하기 위한 모든 것이 준비되어 있기 때문입니다." /></p>
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont03_img.png" alt="" /></p>
        </div>
        <% End If %>
    </div>
    <div class="cont04">
        <div class="inner">
            <p class="mb45"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_point01.png" alt=""></p>
            <% If sCampusCode = "CD0257" Then '중계 %>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont04_tit.png" alt="메가스터디 온,오프 강사진의 최상위권 수준별 맞춤 단과" /></p>
            <% Else %>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont04_tit.png" alt="메가스터디 온,오프 강사진의 최상위권 수준별 맞춤 단과" /></p>
            <% End If %>
            <% If isCore = 1 Then '코어 일경우 %>
            <p class="txt mb80"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont04_txt_c.png" alt="" /></p>
            <p class="mb80"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont04_img_c.png" alt="" /></p>
            <% Else %>
            <p class="txt mb80"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont04_txt.png" alt="" /></p>
            <p class="mb80"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont04_img.png" alt="" /></p>
            <% End If %>
        </div>

        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2023/winter/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->

        <div class="subject-list <%=campusName%>">
            <% If sCampusCode = "CD0247" OR sCampusCode = "CD0245" OR sCampusCode = "CD0246" Then '강남/목동/센텀 %>
            <div class="box">
                <p>수능 1등급을 위한 탄탄한 커리큘럼<br><strong>정규 단과</strong></p>
                <a href="<%=regular_url%>"><span class="btn">바로가기</span></a>
                <% If sCampusCode = "CD0247" OR sCampusCode = "CD0246" Then '강남/센텀 %>
                <div class="open-day">2024년 <br>2월 개강</div>
                <% Else %>
                <div class="open-day">2024년 <br>1월 개강</div>
                <% End If %>
            </div>
            <div class="box">
                <p>겨울방학 실력 향상을 위한 단기 집중 완성<br><strong>윈터특강</strong></p>
                <a href="<%=winterUrl%>"><span class="btn p2">고3</span></a>
                <a href="<%=winterUrl02%>"><span class="btn p2">고2&middot;고1</span></a>
                <% If sCampusCode = "CD0247" OR sCampusCode = "CD0246" Then '강남/센텀 %>
                <div class="open-day">2024년 <br>2월 개강</div>
                <% Else %>
                <div class="open-day">2024년 <br>1월 개강</div>
                <% End If %>
            </div>
            <% ElseIf sCampusCode = "CD0001" OR sCampusCode = "CD0250" OR sCampusCode = "CD0244" OR sCampusCode = "CD0249" OR sCampusCode = "CD0257" OR sCampusCode = "CD0248" Then '대치/부천/분당/영통/중계/평촌 %>
            <div class="box">
                <p>수능 1등급을 위한 탄탄한 커리큘럼<br><strong>정규&middot;특강 단과</strong></p>
                <a href="<%=regular_url%>"><span class="btn">바로가기</span></a>
                <% If sCampusCode = "CD0250"  Then '부천 %>
                <div class="open-day">12/29(금)부터 <br>순차 개강</div>
                <% Else %>
                <div class="open-day">2024년 <br>1월 개강</div>
                <% End If %>
            </div>
            <div class="box">
                <p>겨울방학 실력 향상을 위한 단기 집중 완성<br><strong>윈터특강</strong></p>
                <a href="<%=winterUrl%>"><span class="btn">바로가기</span></a>
                <% If sCampusCode = "CD0250"  Then '부천 %>
                <div class="open-day">1/2(화)부터 <br>순차 개강</div>
                <% Else %>
                <div class="open-day">2024년 <br>1월 개강</div>
                <% End If %>
            </div>
            <% Else %>
            <div class="box">
                <p>수능 1등급을 위한 탄탄한 커리큘럼<br><strong>정규 단과</strong></p>
                <a href="<%=regular_url%>"><span class="btn">바로가기</span></a>
                <div class="open-day">2024년 <br>1월 개강</div>
            </div>
            <div class="box">
                <p>겨울방학 실력 향상을 위한 단기 집중 완성<br><strong>윈터특강</strong></p>
                <a href="<%=winterUrl%>"><span class="btn">바로가기</span></a>
                <div class="open-day">2024년 <br>1월 개강</div>
            </div>
            <% End If %>
        </div>
    </div>

    <div class="cont05">
        <div class="inner">
            <p class="mb45"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_point02.png" alt=""></p>
            <% If sCampusCode = "CD0257" Then '중계 %>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont05_tit.png" alt="전국 최상위권 집결 면학분위기로 소문난 바른 공부 자습전용관" /></p>
            <p class="txt mb80"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont05_txt.png" alt="" /></p>
            <% Else %>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont05_tit.png" alt="전국 최상위권 집결 면학분위기로 소문난 바른 공부 자습전용관" /></p>
            <p class="txt mb80"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont05_txt.png" alt="" /></p>
            <% End If %>
        </div>
        
        <div class="manage-swiper">
            <div class="manage-slide-nav">
                <div class="swiper-wrapper">
                    <div class="swiper-slide on">
                        <a class="tab01" href="javascript:void(0)"></a>
                    </div>
                    <div class="swiper-slide">
                        <a class="tab02" href="javascript:void(0)"></a>
                    </div>
                    <div class="swiper-slide">
                        <a class="tab03" href="javascript:void(0)"></a>
                    </div>
                    <div class="swiper-slide">
                        <a class="tab04" href="javascript:void(0)"></a>
                    </div>
                    <% If sCampusCode = "CD0342" OR sCampusCode = "CD0349" OR sCampusCode = "CD0340" OR sCampusCode = "CD0341" OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" Then '대구/울산/코어광주/코어대전/코어원주/코어전주/코어창원/코어청주 경우 %>
                    <div class="swiper-slide">
                        <a class="tab05" href="javascript:void(0)"></a>
                    </div>
                    <% End If %>
                </div>
            </div>

            <div class="swiper-container manage-slide">
                <% If isCore = 1 Then '코어 일경우 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="rbox">
                            <P><strong>전국의 최상위권 학생들</strong>이 집결하는 러셀CORE 윈터스쿨!<br>
                            <strong>면학분위기로 소문난 러셀CORE</strong>에서 경쟁하는 것이 <strong>최상위권 대입성공의 경쟁력</strong>입니다.</P>
                        </div>
                        <% If sCampusCode = "CD0345" OR sCampusCode = "CD0346" Then '코어창원,코어청주 %>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont05_slide01.png" alt="집단적인 면학분위기" />
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont05_slide01.png" alt="집단적인 면학분위기" />
                        <% End If %>
                    </div>
                    <div class="swiper-slide">
                        <div class="rbox">
                            <p><strong>한 건물 내에서 강의실-바자관-식당(급식)을 한 번에 해결</strong>할 수 있어 이동에 낭비되는 시간을 최소화하였습니다.<br>
                                학습 동선 최소화를 통해 효율적으로 시간을 관리하여 <strong>충분한 자습시간을 확보</strong>합니다.</p>
                        </div>
                        <% If sCampusCode = "CD0343" OR sCampusCode = "CD0345" OR sCampusCode = "CD0340" OR sCampusCode = "CD0344"  OR sCampusCode = "CD0346" Then '코어원주,코어창원,코어광주,코어전주,코어청주 %>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont05_slide02.png" alt="학습 동선 최소화" />
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont05_slide02_c.png" alt="학습 동선 최소화" />
                        <% End If %>
                    </div>
                    <div class="swiper-slide">
                        <div class="rbox">
                            <p><strong>수능에 기준한 바자관 표준 시간표</strong>로 생활하며 <strong>수능 학습 리듬을 체화</strong>할 수 있습니다.<br>
                                <strong>매일 규칙적인 시간표로 학습</strong>하여 방학 기간에도 학습 결손 없이 <strong>학습 패턴을 일정하게 유지</strong>합니다.</p>
                        </div>
                        <!-- schedule -->
                            <!--#include virtual="/intro/2023/winter/schedule.asp" -->
                        <!-- //schedule -->
                    </div>
                    <div class="swiper-slide">
                        <div class="rbox">
                            <p>최상위권 재학생들이 서로 경쟁하는 <strong>개방형 구조로 학습 동기를 부여하고<br>
                            긴장감을 유지</strong>하며, 학습에 최적화된 환경에서 <strong>강력한 면학분위기를 형성</strong>합니다.</p>  
                        </div>
                        <% If sCampusCode = "CD0341" OR sCampusCode = "CD0343" OR  sCampusCode = "CD0345" Then '코어대전,코어원주,코어창원 %>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont05_slide03.png" alt="개방형 구조" />
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont05_slide03_c.png" alt="개방형 구조" />
                        <% End If %>
                    </div>
                    <div class="swiper-slide">
                        <div class="rbox">
                            <p><strong>러셀CORE 자체 식당 운영</strong>으로 <strong>균형 잡힌 수험생 식단</strong> 유지가 가능합니다.<br> 
                                외부와의 접촉을 최소화하고, <strong>이동시간을 줄여 학습에 몰입</strong>할 수 있습니다.</p>
                        </div>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont05_slide04.png" alt="개방형 구조" />
                    </div>
                </div>
                <% Else %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <% If sCampusCode  = "CD0247" OR sCampusCode  = "CD0245" OR sCampusCode = "CD0244" OR sCampusCode  = "CD0250" OR sCampusCode  = "CD0248" OR sCampusCode = "CD0246" OR sCampusCode  = "CD0249" OR sCampusCode = "CD0257" OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" Then '강남,목동,분당,부천,평촌,센텀,영통,중계,대구,울산 %>
                        <div class="rbox">
                            <% If sCampusCode = "CD0244" Then '분당 %>
                            <P><strong>전국의 최상위권 학생들</strong>이 집결하는 <%=txtCampus%> 윈터스쿨!<br>
                            <strong>면학분위기로 소문난 <%=txtCampus%></strong>에서 경쟁하는 것이 <strong>최상위권 대입성공의 경쟁력</strong>입니다.</P>
                            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                            <P><strong>전국의 학생들</strong>이 집결하는 러셀 윈터스쿨!<br>
                            <strong>면학분위기로 소문난 러셀</strong>에서 경쟁하는 것이 <strong>목표 대학 합격의 지름길</strong>입니다.</P>
                            <% Else %>
                            <P><strong>전국의 최상위권 학생들</strong>이 집결하는 러셀 윈터스쿨!<br>
                            <strong>면학분위기로 소문난 러셀</strong>에서 경쟁하는 것이 <strong>최상위권 대입성공의 경쟁력</strong>입니다.</P>
                            <% End If %>
                        </div>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont05_slide01.png" alt="집단적인 면학분위기" />
                        <% Else %>
                        <div class="rbox">
                            <P><strong>전국의 최상위권 학생들</strong>이 집결하는 러셀 윈터스쿨!<br>
                            <strong>면학분위기로 소문난 러셀</strong>에서 경쟁하는 것이 <strong>최상위권 대입성공의 경쟁력</strong>입니다.</P>
                        </div>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont05_slide01.png" alt="집단적인 면학분위기" />
                        <% End If %>
                    </div>
                    <div class="swiper-slide">
                        <% If sCampusCode  = "CD0247" OR sCampusCode  = "CD0001" OR sCampusCode  = "CD0245" OR sCampusCode  = "CD0250" OR sCampusCode  = "CD0248" OR sCampusCode = "CD0246" OR sCampusCode  = "CD0249" OR sCampusCode = "CD0257" Then '강남,대치,목동,부천,평촌,센텀,영통,중계 %>
                        <div class="rbox">
                            <p><strong>한 건물 내에서 강의실-바자관-급식을 한 번에 해결</strong>할 수 있어 이동에 낭비되는 시간을 최소화하였습니다.<br>
                                학습 동선 최소화를 통해 효율적으로 시간을 관리하여 <strong>충분한 자습시간을 확보</strong>합니다.
                            </p>
                            <% If sCampusCode = "CD0247" Then '강남 %>
                            <p class="r-txt fz14 m0 mt20" style="text-align:left">※ 강의실은 운영 상황에 따라 별관(다른 건물)으로 이동할 수도 있습니다.
                            </p>
                            <% End If %>
                        </div>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont05_slide02.png" alt="학습 동선 최소화" />
                        <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                        <div class="rbox" style="padding:31px 60px 31px">
                            <p><strong>한 건물 내에서 강의실-바자관-급식(자체 식당)을 한 번에 해결</strong>할 수 있어 이동에 낭비되는 시간을 최소화하였습니다.<br>
                                학습 동선 최소화를 통해 효율적으로 시간을 관리하여 <strong>충분한 자습시간을 확보</strong>합니다.</p>
                                <span>* 학원 사정에 의해 달라질 수 있습니다.</span>
                        </div>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont05_slide02.png" alt="학습 동선 최소화" />
                        <% ElseIf sCampusCode = "CD0342" OR sCampusCode = "CD0349" Then '대구/울산 %>
                        <div class="rbox">
                            <p><strong>한 건물 내에서 강의실-바자관-자체식당을 한 번에 해결</strong>할 수 있어 이동에 낭비되는 시간을 최소화하였습니다.<br>
                                학습 동선 최소화를 통해 효율적으로 시간을 관리하여 <strong>충분한 자습시간을 확보</strong>합니다.</p>
                        </div>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont05_slide02.png" alt="학습 동선 최소화" />
                        <% Else %>
                        <div class="rbox" style="padding:31px 60px 31px">
                            <p><strong>한 건물 내에서 강의실-바자관-급식(식당)을 한 번에 해결</strong>할 수 있어 이동에 낭비되는 시간을 최소화하였습니다.<br>
                                학습 동선 최소화를 통해 효율적으로 시간을 관리하여 <strong>충분한 자습시간을 확보</strong>합니다.</p>
                                <span>* 각 학원별로 시설 및 운영 방법은 상이할 수 있습니다.</span>
                        </div>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont05_slide02.png" alt="학습 동선 최소화" />
                        <% End If %>
                    </div>
                    <div class="swiper-slide">
                        <div class="rbox">
                            <p><strong>수능에 기준한 바자관 표준 시간표</strong>로 생활하며 <strong>수능 학습 리듬을 체화</strong>할 수 있습니다.<br>
                                <strong>매일 규칙적인 시간표로 학습</strong>하여 방학 기간에도 학습 결손 없이 <strong>학습 패턴을 일정하게 유지</strong>합니다.</p>
                        </div>
                        <!-- schedule -->
                            <!--#include virtual="/intro/2023/winter/schedule.asp" -->
                        <!-- //schedule -->
                    </div>
                    <div class="swiper-slide">
                        <% If sCampusCode  = "CD0247" OR sCampusCode  = "CD0001" OR sCampusCode  = "CD0245" OR sCampusCode  = "CD0244" OR sCampusCode  = "CD0250" OR sCampusCode = "CD0246" OR sCampusCode  = "CD0249" OR sCampusCode = "CD0248" OR sCampusCode = "CD0342" OR sCampusCode = "CD0349"  Then '강남,대치,목동,분당,부천,센텀,영통,중계,평촌,대구,울산 %>
                        <div class="rbox">
                            <p>최상위권 재학생들이 서로 경쟁하는 <strong>개방형 구조로 학습 동기를 부여하고<br>
                            긴장감을 유지</strong>하며, 학습에 최적화된 환경에서 <strong>강력한 면학분위기를 형성</strong>합니다.</p>
                        </div>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont05_slide03.png" alt="개방형 구조" />
                        <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                        <div class="rbox" style="padding:31px 60px 31px">
                            <p>러셀 중계 재학생들이 서로 경쟁하는 <strong>개방형 구조로 학습 동기를 부여하고<br>
                            긴장감을 유지</strong>하며, 학습에 최적화된 환경에서 <strong>강력한 면학분위기를 형성</strong>합니다.</p>  
                            <span>* 각 학원별로 시설 및 운영 방법은 상이할 수 있습니다.</span>
                        </div>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont05_slide03.png" alt="개방형 구조" />
                        <% Else %>
                        <div class="rbox" style="padding:31px 60px 31px">
                            <p>최상위권 재학생들이 서로 경쟁하는 <strong>개방형 구조로 학습 동기를 부여하고<br>
                            긴장감을 유지</strong>하며, 학습에 최적화된 환경에서 <strong>강력한 면학분위기를 형성</strong>합니다.</p>  
                            <span>* 각 학원별로 시설 및 운영 방법은 상이할 수 있습니다.</span>
                        </div>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont05_slide03.png" alt="개방형 구조" />
                        <% End If %>
                    </div>
                    <% If sCampusCode = "CD0342" OR sCampusCode  = "CD0349" OR sCampusCode = "CD0349" Then '대구/울산 %>
                    <div class="swiper-slide">
                        <div class="rbox">
                            <p><strong><%=txtCampus%> 자체 식당 운영</strong>으로 <strong>균형 잡힌 수험생 식단</strong> 유지가 가능합니다.<br> 
                                외부와의 접촉을 최소화하고, <strong>이동시간을 줄여 학습에 몰입</strong>할 수 있습니다.</p>
                        </div>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont05_slide04.png" alt="개방형 구조" />
                    </div>
                    <% End If %>
                </div>
                <% End If %>
            </div>
        </div>
    </div>
    <div class="cont06">
        <div class="inner">
            <p class="mb45"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_point03.png" alt=""></p>
            <% If isCore = 1 Then '코어 일경우 %>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_tit_c.png" alt="최상위권 맞춤 관리력 최상위권 전문 입시 담임선생님의 맞춤 관리" /></p>
            <p class="txt" style="margin-bottom:136px;"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_txt_c.png" alt="" /></p>
            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_tit.png" alt="최상위권에 검증된 관리력 최상위권 전문 입시 담임선생님의 맞춤 관리" /></p>
            <p class="txt" style="margin-bottom:136px;"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_txt.png" alt="" /></p>
            <% Else %>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_tit.png" alt="최상위권에 검증된 관리력 최상위권 전문 입시 담임선생님의 맞춤 관리" /></p>
            <p class="txt" style="margin-bottom:136px;"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_txt.png" alt="" /></p>
            <% End If %>
            <!-- 맞춤관리 -->
            <div class="study-swiper">
                <div class="study-slide-nav">
                    <div class="swiper-wrapper" style="z-index: 5;">
                        <div class="swiper-slide on"><a href="javascript:void(0)">입시관리</a></div>
                        <div class="swiper-slide"><a href="javascript:void(0)">학습관리</a></div>
                        <div class="swiper-slide"><a href="javascript:void(0)">생활관리</a></div>
                        <% If sCampusCode <> "CD0341" Then '코어대전 제외 %>
                        <div class="swiper-slide"><a href="javascript:void(0)">가정통신문</a></div>
                        <% End If %>
                    </div>
                </div>
                
                
                <div class="swiper-container study-slide">
                    <div class="swiper-wrapper">
                        <!-- 입시관리 -->
                        <div class="swiper-slide tabslide">
                            <% If sCampusCode = "CD0257" Then '중계 %>
                            <p class="pl85"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_stxt01.jpg" alt="" /></p>
                            <% Else %>
                            <p class="pl85"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_stxt01.jpg" alt="" /></p>
                            <% End If %>
                            <% If sCampusCode = "INTRO" Then '인트로 %>
                            <div class="swiper-container tab-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_tab01_img01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_tab01_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_tab01_img03.jpg" alt="" /></div>
                                </div>
                            </div>
                            <% ElseIf sCampusCode = "CD0001" Then '대치 %>
                            <div class="swiper-container tab-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_tab01_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_tab01_img03.jpg" alt="" /></div>
                                </div>
                            </div>
                            <% Else %>
                            <div class="swiper-container tab-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_tab01_img01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_tab01_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_tab01_img03.jpg" alt="" /></div>
                                </div>
                                <% If sCampusCode = "CD0349" Then '울산 %>   
                                <p class="r-txt mb0">* 해당 이미지는 러셀 대구학원 이미지 입니다. </p>
                                <% End If %>
                            </div>
                            <% End If %>
                        </div>
                        <!-- 학습관리 -->
                        <div class="swiper-slide tabslide">
                            <% If sCampusCode = "CD0244" Then '분당 %>
                            <p class="pl85"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_stxt02.jpg" alt="" /></p>
                            <% Else %>
                            <p class="pl85"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_stxt02.jpg" alt="" /></p>
                            <% End If %>
                            <% If sCampusCode = "INTRO" OR sCampusCode = "CD0346" Then '인트로,코어청주 %>
                            <div class="swiper-container tab-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_tab02_img01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_tab02_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_tab02_img03.jpg" alt="" /></div>
                                </div>
                            </div>
                            <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
                            <div class="swiper-container tab-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_tab02_img01.jpg" alt="" /></div>
                                </div>
                            </div>
                            <% Else %>
                            <div class="swiper-container tab-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_tab02_img01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_tab02_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_tab02_img03.jpg" alt="" /></div>
                                </div>
                                <% If sCampusCode = "CD0349" Then '울산 %>   
                                <p class="r-txt mb0">* 해당 이미지는 러셀 대구학원 이미지 입니다. </p>
                                <% End If %>
                            </div>
                            <% End If %>
                        </div>
                        <!-- 생활관리 -->
                        <div class="swiper-slide tabslide">
                            <% If sCampusCode = "CD0250" Then '부천 %>
                            <p class="pl85"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_stxt03.jpg" alt="" /></p>
                            <% ElseIf sCampusCode = "CD0342" OR sCampusCode = "CD0349" Then '대구/울산 %>
                            <p class="pl85"><img src="<%=Application("img_path_russel")%>/russel_dg/2023/winter/cont06_stxt03.jpg" alt="" /></p>
                            <% Else %>
                            <p class="pl85"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_stxt03.jpg" alt="" /></p>
                            <% End If %>

                            <% If sCampusCode = "INTRO" OR sCampusCode = "CD0346" Then '인트로,코어청주 %>
                            <div class="swiper-container tab-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_tab03_img01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_tab03_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_tab03_img03.jpg" alt="" /></div>
                                </div>
                            </div>
                            <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
                            <div class="swiper-container tab-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_tab03_img01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_tab03_img02.jpg" alt="" /></div>
                                </div>
                            </div>
                            <% Else %>
                            <div class="swiper-container tab-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_tab03_img01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_tab03_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_tab03_img03.jpg" alt="" /></div>
                                </div>
                                <% If sCampusCode = "CD0349" Then '울산 %>   
                                <p class="r-txt mb0">* 해당 이미지는 러셀 대구학원 이미지 입니다. </p>
                                <% End If %>
                            </div>
                            <% End If %>
                        </div>
                        <!-- 가정통신문 -->
                        <% If sCampusCode = "CD0343" Then '코어원주 %>
                        <div class="swiper-slide tabslide">
                            <p class="pl85"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_stxt.png" alt="" /></p>
                            <div class="swiper-container tab-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_slide01.jpg" alt="" /></div>
                                </div>
                            </div>
                            <p class="stxt">*본 컨텐츠는 저작권법의 보호를 받는 저작물로써 무단전재 및 무단복제와 배포를 금합니다.</p>
                        </div>
                        <% ElseIf sCampusCode <> "CD0341" Then '코어대전 제외 %>
                        <div class="swiper-slide" style="padding: 110px 0;">
                            <% If sCampusCode  = "CD0250" Then '부천 %> 
                            <p class="mb45"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_stxt.png" alt="" /></p>
                            <% Else %>
                            <p class="mb45"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_stxt.png" alt="" /></p>
                            <% End If %>

                            <% If sCampusCode = "CD0247" OR sCampusCode = "CD0001" OR sCampusCode = "CD0244" OR sCampusCode = "CD0250" OR sCampusCode = "CD0245" OR sCampusCode = "CD0249" OR sCampusCode = "CD0257" OR sCampusCode = "CD0342" OR sCampusCode = "CD0340" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" OR sCampusCode = "CD0344" Then '강남,대치,분당,부천,목동,영통,중계,대구,코어광주,코어창원,코어청주,코어전주 %> 
                            <div class="swiper-container stu-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont06_slide01.jpg" alt="" /></div>
                                </div>
                            </div>
                            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                            <div class="swiper-container stu-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/russel_pc/2023/winter/cont06_slide01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/russel_pc/2023/winter/cont06_slide02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/russel_pc/2023/winter/cont06_slide03.jpg" alt="" /></div>
                                </div>
                                <div class="swiper-button-prev"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/btn_prev.png" alt=""></div>
                                <div class="swiper-button-next"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/btn_next.png" alt=""></div>	
                            </div>
                            <% Else %>
                            <div class="swiper-container stu-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_slide01.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont06_slide02.jpg" alt="" /></div>
                                </div>
                                <div class="swiper-button-prev"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/btn_prev.png" alt=""></div>
                                <div class="swiper-button-next"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/btn_next.png" alt=""></div>	
                            </div>
                            <% End If %>

                            <% If sCampusCode = "CD0247" OR sCampusCode = "CD0001" OR sCampusCode = "CD0250" OR sCampusCode = "CD0245" OR sCampusCode = "CD0249" OR sCampusCode = "CD0257" OR sCampusCode = "CD0248" OR sCampusCode = "CD0342" OR sCampusCode = "CD0346" OR sCampusCode = "CD0344" Then '강남,대치,부천,목동,영통,중계,평촌,대구,코어청주,코어전주 %> 
                            <p class="stxt">*본 컨텐츠는 저작권법의 보호를 받는 저작물로써 무단전재 및 무단복제와 배포를 금합니다.</p>
                            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                            <p class="stxt">* 본 콘텐츠는 러셀 분당 학원의 윈터스쿨 포트폴리오입니다. 저작권법의 보호를 받는 저작물로써 무단전재 및 무단복제와 배포를 금합니다.</p>
                            <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
                            <p class="stxt">* 저작권법의 보호를 받는 저작물로써 무단전재 및 무단복제와 배포를 금합니다.</p>
                            <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
                            <p class="stxt">*본 콘텐츠는 러셀CORE 광주 학원의 윈터스쿨 포트폴리오입니다.<br>저작권법의 보호를 받는 저작물로써 무단전재 및 무단복제외 배포를 금합니다.</p>
                            <% Else %>
                            <p class="stxt">* 본 콘텐츠는 러셀 평촌 학원의 윈터스쿨 포트폴리오입니다. 저작권법의 보호를 받는 저작물로써 무단전재 및 무단복제와 배포를 금합니다.</p>
                            <% End If %>
                        </div>
                        <% End If %>
                    </div>
                </div>
            </div>
            <% If sCampusCode = "INTRO" Then '인트로 %>   
            <p class="r-txt mb0">* 학원별 관리 방법은 상이할 수 있습니다.</p>
           
            <% End If %>
        </div>
    </div>
    <div class="cont07">
        <div class="inner">
            <p class="mb45"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_point04.png" alt=""></p>
            <% If sCampusCode = "CD0250" or sCampusCode = "CD0257" Then '부천/중계 %>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont07_tit.png" alt="올바른 학습 습관 및 탄탄한 실력 형성 최상위권 재원생이 추천하는 윈터스쿨 프로그램" /></p>
            <p class="txt mb80"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont07_txt.png" alt="" /></p>
            <% Else %>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont07_tit.png" alt="올바른 학습 습관 및 탄탄한 실력 형성 최상위권 재원생이 추천하는 윈터스쿨 프로그램" /></p>
            <p class="txt mb80"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont07_txt.png" alt="" /></p>
            <% End If %>
            <div class="program_wrap">
                <div class="program_box mb60">
                    <% If sCampusCode  = "CD0245" OR sCampusCode = "CD0244" OR sCampusCode  = "CD0249" OR sCampusCode = "CD0344" OR sCampusCode  = "CD0341" OR sCampusCode = "CD0343" OR sCampusCode = "CD0257" OR sCampusCode = "CD0345" Then '목동,분당,영통,중계,코어대전,코어원주,코어전주,코어창원 %>
                    <p class="txt"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont07_stit.png" alt=""></p>
                    <p class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont07_arr.png" alt=""></p>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont07_img01.jpg" alt=""></p>
                    <% ElseIf sCampusCode = "CD0250" Then '부천 %>
                    <p class="txt"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont07_stit.png" alt=""></p>
                    <p class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont07_arr.png" alt=""></p>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont07_img01.jpg" alt=""></p>
                    <% Else %>
                    <p class="txt"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont07_stit.png" alt=""></p>
                    <p class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont07_arr.png" alt=""></p>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont07_img01.jpg" alt=""></p>
                    <% End If %>

                    <% If sCampusCode = "CD0244" Then '분당 %>
                    <p class="stxt">* 월~토요일 바자관 표준 시간표 기준으로 작성하였으며, 층별 및 시기별 학습 전략에 따라 유동적으로 운영됩니다.<br>* 매 교시 담임선생님의 출석 및 학습 태도 관리가 진행됩니다.</p>
                    <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                    <p class="stxt">* 월~토요일 바자관 표준 시간표 기준으로 작성하였으며, 학원 운영에 따라 상세 시간은 변동될 수 있습니다.</p>
                    <% Else %>
                    <p class="stxt">* 평일(월~금요일)바자관 표준 시간표 기준으로 작성하였으며, 학원 운영에 따라 상세 시간은 변동될 수 있습니다.</p>
                    <% End If %>
                </div>
                
                <div>
                    <div class="program-swiper">
                        <div class="program-slide-nav">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide on"><p>윈터스쿨 프로그램 <strong>Daily 학습 습관</strong></p></div>
                                <% If isCore = 1 Then '코어 일경우 %>
                                <div class="swiper-slide"><p>러셀CORE <strong>Weekly 모의고사</strong></p></div>
                                <% Else %>
                                <div class="swiper-slide"><p>윈터스쿨 프로그램 <strong>학습 콘텐츠</strong></p></div>
                                <% End If %>
                            </div>
                        </div>
                        <div class="swiper-container program-slide">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <ul>
                                        <li><img src="<%=Application("img_path_russel")%>/intro/2023/winter/program_img01.png" alt=""></li>
                                        <li><img src="<%=Application("img_path_russel")%>/intro/2023/winter/program_img02.png" alt=""></li>
                                        <% If sCampusCode = "CD0257" Then '중계 %>
                                        <li><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/program_img03.png" alt=""></li>
                                        <% Else %>
                                        <li><img src="<%=Application("img_path_russel")%>/intro/2023/winter/program_img03.png" alt=""></li>
                                        <% End If %>
                                    </ul>
                                </div>
                                <% If sCampusCode = "CD0340" OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" OR sCampusCode = "CD0341" Then '코어광주,코어원주,코어전주,코어창원,코어청주/코어대전 %>
                                <div class="swiper-slide">
                                    <ul class="p2">
                                        <li><img style="padding-left:130px;" src="<%=Application("img_path_russel")%>/intro/2023/winter/program_img_c.png" alt=""></li>
                                    </ul>
                                </div>
                                <% ElseIf sCampusCode  = "CD0247" OR sCampusCode  = "CD0001" OR sCampusCode  = "CD0245" OR sCampusCode  = "CD0248" OR sCampusCode  = "CD0246" OR sCampusCode  = "CD0249" OR sCampusCode = "CD0257" Then '강남,대치,목동,평촌,센텀,영통,중계 %> 
                                <div class="swiper-slide">
                                    <ul class="p2">
                                        <li><img src="<%=Application("img_path_russel")%>/intro/2023/winter/program_img04.png" alt=""></li>
                                        <li><img src="<%=Application("img_path_russel")%>/intro/2023/winter/program_img06.png" alt=""></li>
                                    </ul>
                                </div>
                                <% ElseIf sCampusCode = "CD0244" OR sCampusCode = "CD0250" Then '분당,부천 %>
                                <div class="swiper-slide">
                                    <ul>
                                        <li><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/program_img04.png" alt=""></li>
                                        <li><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/program_img05.png" alt=""></li>
                                        <li><img src="<%=Application("img_path_russel")%>/intro/2023/winter/program_img06.png" alt=""></li>
                                    </ul>
                                </div>
                                <% Else %>
                                <div class="swiper-slide">
                                    <ul>
                                        <li><img src="<%=Application("img_path_russel")%>/intro/2023/winter/program_img04.png" alt=""></li>
                                        <li><img src="<%=Application("img_path_russel")%>/intro/2023/winter/program_img05.png" alt=""></li>
                                        <li><img src="<%=Application("img_path_russel")%>/intro/2023/winter/program_img06.png" alt=""></li>
                                    </ul>
                                </div>
                                <% End If %>
                            </div>
                        </div>
                    </div>
                </div>
                <p class="r-txt mt30 mb60">* 해당 콘텐츠는 러셀 윈터스쿨 재원생 대상으로 ‘전액지원‘ 되는 콘텐츠입니다.</p>

                <% If sCampusCode  = "CD0001" OR sCampusCode  = "CD0245" OR sCampusCode  = "CD0248" OR sCampusCode  = "CD0250" OR sCampusCode = "CD0244" OR sCampusCode  = "CD0249" OR sCampusCode  = "CD0341" OR sCampusCode = "CD0342" OR sCampusCode = "CD0343" OR sCampusCode = "CD0340" OR sCampusCode = "CD0345" OR sCampusCode = "CD0257" Then '대치,목동,부천,분당,영통,중계,대구,코어대전,코어광주,코어원주,코어창원 %> 
                <div class="program_box"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont07_img03.png" alt=""></div>
                <% Else %>
                <div class="program_box"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont07_img03.jpg" alt=""></div>
                <% End If %>
            </div>
        </div>
    </div>
    <% If sCampusCode = "CD0244" Then '분당 %>
    <!-- cont08 -->
    <div class="cont09">
        <div class="inner02">
            <p class="mb90"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont08_tit.png" alt="러셀 분당 2024 윈터스쿨 미리보기"></p>
            <div class="preview_wrap">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:8%" />
                        <col style="width:8%" />
                        <col style="width:%" />
                        <col style="width:%" />
                        <col style="width:%" />
                        <col style="width:%" />
                        <col style="width:%" />
                        <col style="width:%" />
                        <col style="width:%" />
                        <col style="width:%" />
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th colspan="2">구분</th>
                            <th>1주</th>
                            <th>2주</th>
                            <th>3주</th>
                            <th>4주</th>
                            <th>5주</th>
                            <th>6주</th>
                            <th>7주</th>
                            <th>8주</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th colspan="2" class="bg-sky">주요 일정</th>
                            <td>
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>개강</li>
                                    </ul>
                                </div>
                            </td>
                            <td colspan="2">
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>국수영 학습법 특강</li>
                                    </ul>
                                </div>
                            </td>
                            <td>
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>설 연휴</li>
                                    </ul>
                                </div>
                            </td>
                            <td>
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>월간 장영진<br>모의고사</li>
                                    </ul>
                                </div>
                            </td>
                            <td>
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>러셀 실전<br>모의고사</li>
                                    </ul>
                                </div>
                            </td>
                            <td>
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>선배와의 만남</li>
                                    </ul>
                                </div>
                            </td>
                            <td>
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>종강</li>
                                        <li>윈터스쿨<br>수료식</li>
                                        <li>윈터스쿨<br>우수자 시상</li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">1:1 상담</th>
                            <td colspan="3">
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>초기 상담
                                            <p>
                                                - 공부 습관 형성을 위한 학원 생활 규율 안내<br>
                                                - 개별 학습 상태 파악 및 목표 대학 확인
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                            <td colspan="3">
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>중기 및 심화 상담
                                            <p>
                                                - 개인별 학습 계획 수립 및 진행 상황 피드백<br>
                                                - 목표 대학을 위한 입시 전략 수립 및<br>개인별 입시 로드맵 설정
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                            <td colspan="2">
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>종강 상담
                                            <p>
                                                - 실전 모의고사 성적에 따른<br>약점 분석<br>
                                                - 윈터스쿨 생활 총평
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th rowspan="5" class="bg-sky">윈터스쿨<br>프로그램</th>
                            <td class="bg-sky">영단어,<br>듣기TEST</td>
                            <td class="diagonal"></td>
                            <td colspan="6">
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>영단어 TEST (평일 오전, 점심시간에 진행)</li>
                                        <li>듣기 TEST (매주 토요일 1교시 진행)</li>
                                    </ul>
                                </div>
                            </td>
                            <td class="diagonal"></td>
                        </tr>
                        <tr>
                            <td class="bg-sky">일일수학<br>30제</td>
                            <td class="diagonal"></td>
                            <td colspan="6">
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>일일수학 30제 풀이 및 확인 (매일 일정한 양의 수학 문제를 꾸준히 푸는 연습)</li>
                                    </ul>
                                </div>
                            </td>
                            <td class="diagonal"></td>
                        </tr>
                        <tr>
                            <td class="bg-sky">설명회</td>
                            <td></td>
                            <td></td>
                            <td>
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>인문계열<br>입시 전략</li>
                                        <li>자연계열<br>입시 전략</li>
                                    </ul>
                                </div>
                            </td>
                            <td></td>
                            <td>
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>메디컬 학생부 종합 전형</li>
                                    </ul>
                                </div>
                            </td>
                            <td>
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>메디컬<br>논술 전형</li>
                                    </ul>
                                </div>
                            </td>
                            <td>
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>인문 논술</li>
                                        <li>수리 논술</li>
                                    </ul>
                                </div>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="bg-sky">공개 특강</td>
                            <td>
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>플래너 작성법(1차)</li>
                                    </ul>
                                </div>
                            </td>
                            <td>
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>플래너 작성법(2차)</li>
                                        <li>영어 학습법</li>
                                    </ul>
                                </div>
                            </td>
                            <td>
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>국어 학습법</li>
                                    </ul>
                                </div>
                            </td>
                            <td>
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>수학 학습법</li>
                                    </ul>
                                </div>
                            </td>
                            <td></td>
                            <td></td>
                            <td>
                                <div class="f-center">
                                    <ul class="list-03">
                                        <li>모의고사<br>피드백</li>
                                    </ul>
                                </div>
                            </td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
                <p class="r-txt">※ 위 표는 2023 윈터스쿨에서 실제 진행된 내용을 바탕으로 구성된 학사일정입니다. 다가오는 2024 윈터스쿨 학사일정은 이보다 더욱 보완되어 진행될 예정입니다.</p>
            </div>
        </div>
    </div>
    <% End If %>

    <!-- 하단 배너 -->
    <div class="bt-banner">
        <% If isCore = 1 Then '코어 일경우 %>
        <p><img src="<%=Application("img_path_russel")%>/intro/2023/winter/banner_tit_c.png" alt="목표가 현실이 되는 겨울방학, 최상위권이 집결하는 러셀CORE 윈터스쿨과 함께하면 결과는 최상위권입니다." /></p>
        <% ElseIf sCampusCode = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/banner_tit.png" alt="목표가 현실이 되는 겨울방학, 최상위권이 집결하는 러셀 윈터스쿨과 함께하면 결과는 최상위권입니다." /></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/intro/2023/winter/banner_tit.png" alt="목표가 현실이 되는 겨울방학, 최상위권이 집결하는 러셀 윈터스쿨과 함께하면 결과는 최상위권입니다." /></p>
        <% End If %>
    </div>
    <!--// 하단 배너 -->
</div>
<!-- //최상위권 맞춤 러셀 윈터스쿨 프로그램 -->
