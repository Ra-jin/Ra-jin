
<% 
barunUrl = "https://russel.megastudy.net/russel/study_hall/default.asp"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "CD0247":  barunUrl = "https://russelgn.megastudy.net/russel_gn/info/study_hall/study_hall.asp"  '강남

    Case "CD0001":  barunUrl = "https://russeldc.megastudy.net/russel/info/study_hall/study_hall.asp"  '대치

    Case "CD0245":  barunUrl = "https://russelmd.megastudy.net/russel_mokdong/info/study_hall/study_hall.asp"   '목동

    Case "CD0250":  barunUrl = "https://russelbc.megastudy.net/russel_bc/info/study_hall/study_hall.asp"   '부천

	Case "CD0244":  barunUrl = "https://russelbd.megastudy.net/russel_bundang/info/study_hall/study_hall.asp"   '분당

	Case "CD0246":  barunUrl = "https://russelct.megastudy.net/russel_ct/info/study_hall/study_hall.asp"   '센텀

    Case "CD0249":  barunUrl = "https://russelyt.megastudy.net/russel_yt/info/study_hall/study_hall.asp"   '영통

    Case "CD0257":  barunUrl = "https://russeljg.megastudy.net/russel_jg/info/study_hall/study_hall.asp"   '중계

	Case "CD0248":  barunUrl = "https://russelpc.megastudy.net/russel_pc/info/study_hall/study_hall.asp"   '평촌

	Case "CD0340":  barunUrl = "https://coregj.megastudy.net/core_gj/info/study_hall/study_hall.asp"   '코어광주

	Case "CD0341":  barunUrl = "https://coredj.megastudy.net/core_dj/info/study_hall/study_hall.asp"   '코어대전

    Case "CD0342":  barunUrl = "https://russeldg.megastudy.net/russel_dg/info/study_hall/study_hall.asp" '대구

    Case "CD0343":  barunUrl = "https://corewj.megastudy.net/core_wj/info/study_hall/study_hall.asp"  '코어원주

    Case "CD0344":  barunUrl = "https://corejj.megastudy.net/core_jj/info/study_hall/study_hall.asp"  '코어전주

    Case "CD0345":  barunUrl = "https://corecw.megastudy.net/core_cw/info/study_hall/study_hall.asp"  '코어창원

    Case "CD0346":  barunUrl = "https://corecj.megastudy.net/core_cj/info/study_hall/study_hall.asp"  '코어청주

	'Case "CD0258": txtDate = "기숙"
	'Case "CD0331": r_title = "삽자루 수학학원"
	'Case "CD0342": txtDate = "대구"	
End Select 
%>
<div class="cont js-cont">
    <!-- cont03 -->
    <div class="cont03 bg-green02">
        <div class="inner">
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont03_tit.png" alt="면학분위기로 소문난 바른공부 자습전용관" /></p>
            <a href="<%=barunUrl%>" class="study-btn"><img src="<%=Application("img_path_russel")%>/intro/2023/first/b-banner.png" alt="바른공부 자습전용관 자세히보기" /></a>
            <div class="first-slide-wrap">
                <div class="studyHall-slide-wrap">
                    <div class="studyHall-navi type01">
                        <span class="bar"></span>
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">집단적인 면학분위기</div>
                            <div class="swiper-slide">학습 동선 최소화</div>
                            <div class="swiper-slide">최대 자습 시간 확보</div>
                            <div class="swiper-slide">개방형 구조</div>
                        </div>
                    </div>
                    <div class="swiper-container studyHall-slide type01">
                        <div class="swiper-wrapper">

                            <% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0247" Then '강남 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/russel_gn/2023/first/cont03_slide01.png" alt="" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont03_slide02.png" alt="" /></div>
                            </div>

                            <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0257" Then '중계 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/russel_jg/2023/first/cont03_slide01.png" alt="" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/russel_jg/2023/first/cont03_slide02.png" alt="" /></div>
                            </div>

                            <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0249" Then '영통 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/russel_yt/2023/first/cont03_slide01.png" alt="" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont03_slide02.png" alt="" /></div>
                            </div>

                            <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0245" Then '목동 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/first/cont03_slide01.png" alt="" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont03_slide02.png" alt="" /></div>
                            </div>

                            <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0001" Then '대치 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/russel/2023/first/cont03_slide01.png" alt="" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/russel/2023/first/cont03_slide02.png" alt="" /></div>
                            </div>

                            <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0246" Then '센텀 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/russel_ct/2023/first/cont03_slide01.png" alt="" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/russel_ct/2023/first/cont03_slide02.png" alt="" /></div>
                            </div>

                            <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0250" Then '부천 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/first/cont03_slide01.png" alt="" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont03_slide02.png" alt="" /></div>
                            </div>

                            <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0248" Then '평촌 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/russel_pc/2023/first/cont03_slide01.png" alt="" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/russel_pc/2023/first/cont03_slide02.png" alt="" /></div>
                            </div>

                            <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0244" Then '분당 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/first/cont03_slide01.png" alt="" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/first/cont03_slide02.png" alt="" /></div>
                            </div>

                            
                            <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0340" Then '코어광주 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont03_slide01.png" alt="" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/core_gj/2023/first/cont03_slide02.png" alt="" /></div>
                            </div>

                            <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0341" Then '코어대전 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/core_dj/2023/first/cont03_slide01.png" alt="" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/core_dj/2023/first/cont03_slide02.png" alt="" /></div>
                            </div>

                            <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0342" Then '대구 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont03_slide01.png" alt="" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/russel_dg/2023/first/cont03_slide02.png" alt="" /></div>
                            </div>
                            
                            <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0343" Then '코어원주 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/core_wj/2023/first/cont03_slide01.png" alt="" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/core_wj/2023/first/cont03_slide02.png" alt="" /></div>
                            </div>
                            <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0344" Then '코어전주 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont03_slide01.png" alt="" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/core_jj/2023/first/cont03_slide02.png" alt="" /></div>
                            </div>
                            <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0345" Then '코어창원 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont03_slide01.png" alt="" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/core_cw/2023/first/cont03_slide02.png" alt="" /></div>
                            </div>
                            <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0346" Then '코어청주 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont03_slide01.png" alt="" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/core_cj/2023/first/cont03_slide02.png" alt="" /></div>
                            </div>

                            <% else %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont03_slide01.png" alt="" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont03_slide02.png" alt="" /></div>
                            </div>
                            <% end if %>
                            <div class="swiper-slide">
								<p class="stxt"><strong>수능 시험 시간에 기준한 표준 시간표</strong>로 <strong>신체&middot;생활 리듬이 수능에 최적화</strong>되도록 하고,<br> 개인에 맞게 학습 스케줄을 운영하여 <strong>최대 자습 시간을 확보</strong>할 수 있습니다.</p>
                                <!-- schedule -->
                                <!--#include virtual="/intro/2023/first/schedule.asp" -->
                                <!-- //schedule -->
							</div>

                            <% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0257" Then '중계 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/russel_jg/2023/first/cont03_slide04.png" alt="" /></div>
                            </div>

                            <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0246" Then '센텀 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/russel_ct/2023/first/cont03_slide04.png" alt="" /></div>
                            </div>

                            <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "INTRO" Then '인트로 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont03_slide04.png" alt="" /></div>
                            </div>
                            
                            <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0248" Then '평촌 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/russel_pc/2023/first/cont03_slide04.png" alt="" /></div>
                            </div>

                            <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0345" Then '코어창원 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/core_cw/2023/first/cont03_slide04.png" alt="" /></div>
                            </div>

                            <% else %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont03_slide05.png" alt="" /></div>
                            </div>
                            <% end if %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //cont03 -->
    <!-- cont04 -->
    <div class="cont04 bg-gray">
        <!-- <p><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont04_tit.png" alt="최상위권 수준별 맞춤 단과" /></p> -->
        <p><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont04_tit_230712.png" alt="최상위권 수준별 맞춤 단과" /></p>
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2023/first/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
    </div>
    <!-- //cont04 -->
    <!-- cont05 -->
    <div class="cont05 bg-green02">
        <div class="inner02">
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_tit.png" alt="최상위권 전문 입시 담임선생님의 철저한 관리" /></p>
            <div class="first-slide-wrap">
                <div class="studyHall-slide-wrap">
                    <div class="studyHall-navi type02">
                        <span class="bar"></span>
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">학습관리</div>
                            <div class="swiper-slide">입시관리</div>
                            <div class="swiper-slide">생활관리</div>
                        </div>
                    </div>
                    <% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0247" Then '강남 %>
                    <div class="swiper-container studyHall-slide type02">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_txt01.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st01.png" alt="" /></div>
                                    <div class="review">
                                        <p>“담임선생님께서는 제가 평소 힘들어 할 때 격려를 해주시거나 <strong>저에게 도움이 될 수 있는 여러 특강을 추천</strong>해주시곤 하셨습니다. 그리고 상담을 할 때에도 저의 <strong>취약한 과목을 극복할 수 있도록 여러 방법</strong>을 가르쳐 주셔서 마지막까지 성적을 올릴 수 있었습니다.”
                                        </p>
                                        <p><strong>고려대학교 보건환경융합과학부</strong> 러셀 HS반 이시은<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_gn/2023/first/cont05_txt02.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st02.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님과의 상담이 가장 많은 도움</strong>이 되었습니다. 수시 원서 접수와 같은 수험 생활에 필요한 크고 작은 <strong>입시 정보들을 상담을 통해 알려주시고, 입시 전략을 짜는데에 있어서 많은 도움</strong>을 주셔서 편안한 마음으로 공부하는 데에 도움이 되었습니다.”
                                        </p>
                                        <p><strong>서울대학교 치의학과</strong> 러셀 HS반 안예준<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_gn/2023/first/cont05_txt03.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st03.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님의 철저한 관리</strong>가 좋았습니다. 학원 내에서 대화 금지는 공부하기에는 정말 최고의 학습 환경으로 만들어준다고 생각합니다. 그리고 <strong>태도점수 제도를 통해 학생들 관리가 잘 되는 것</strong>도 좋았습니다. 담임 선생님들께서 모의고사 직후에 총평을 작성하라고 지도해 주시는데, 이 부분도 학생의 부족한 점을 스스로 파악하고 더 나은 방향을 모색하도록 잘 유도해주어서 만족했습니다.”
                                        </p>
                                        <p><strong>전북대학교 의예과</strong> 러셀 HS반 김진석<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0257" Then '중계 %>
                    <div class="swiper-container studyHall-slide type02">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_jg/2023/first/cont05_txt01.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_jg/2023/first/cont05_st01.png" alt="" /></div>
                                    <div class="review">
                                        <p>“평가원이나 모의고사 본 뒤에 항상 상담을 해주셔서 현재 저의 객관적인 위치와 취약점을 알 수 있었고, 원서 접수 기간에도 계속 신경 써주시면서 내신 등급과  논술 유형상 어느 학교가 적합할지 구체적으로 상담해주셨습니다. 특히, <strong>수험생활 전반에 있어 학생들에게 관심을 많이 가지고 계셨기 때문에 제가 힘들어 할때나  조금 풀리는 모습이 보여질때면 저를 복돋아 주시거나  응원해주셔서 힘을 낼 수 있었습니다.</strong>”
                                        </p>
                                        <p><strong>중앙대학교 경영학</strong> 러셀 중계 서의치반 김승연<br>
                                            <span>(재원기간 : 2021년 2월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_jg/2023/first/cont05_txt02.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_jg/2023/first/cont05_st02.png" alt="" /></div>
                                    <div class="review">
                                        <p>“담임선생님을 뵙게 된 것이 러셀중계학원을 다녀서 얻은 가장 큰 이점이라고 생각합니다.<br>공부할때 번아웃이 크게 와서 방황했었는데, 선생님께서 저를 많이 이해해주시고 제가 좋은 길로 갈 수 있도록 인도해주셔서<strong> 수험생활을 성공적으로 마칠 수 있었던것 같습니다.</strong> 뿐만아니라<strong> 원서 접수기간에 자소서도 꼼꼼히 봐주시고 정보도 많이 알아봐주셔서 혼자 준비하는 것보다 훨씬 수월하게 준비할 수 있었습니다. 담임선생님께 큰 도움을 받아서 좋은 결과를 얻을 수 있었던것 같습니다.</strong>”
                                        </p>
                                        <p><strong>서울대학교 인문계열</strong> 러셀 중계 HS반 권희정<br>
                                            <span>(재원기간 : 2021년 2월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_jg/2023/first/cont05_txt03.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_jg/2023/first/cont05_st03.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님께서 정기적으로 상담을 진행</strong>해주셔서 좋았습니다.<br>수험생활을 하다보면 여러가지 고민이 생기기 마련인데, 그럴때마다 담임선생님께 학업에 대한 제 고민을 말씀드렸고, <strong>선생님께서 적절한 해결책을 제시</strong>해주셨습니다. 선생님께서 저를 포함한 <strong>학생들의 멘토 역할</strong>을 해주셨습니다.”
                                        </p>
                                        <p><strong>한양대학교 간호학과</strong> 러셀 중계 연고대반 이채영<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0249" Then '영통 %>
                    <div class="swiper-container studyHall-slide type02">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_yt/2023/first/cont05_txt01.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st01.png" alt="" /></div>
                                    <div class="review">
                                        <p>“담임선생님께서는 제가 평소 힘들어 할 때 격려를 해주시거나 <strong>저에게 도움이 될 수 있는 여러 특강을 추천</strong>해주시곤 하셨습니다. 그리고 상담을 할 때에도 저의 <strong>취약한 과목을 극복할 수 있도록 여러 방법</strong>을 가르쳐 주셔서 마지막까지 성적을 올릴 수 있었습니다.”
                                        </p>
                                        <p><strong>고려대학교 보건환경융합과학부</strong> 러셀 HS반 이시은<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_yt/2023/first/cont05_txt02.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st02.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님과의 상담이 가장 많은 도움</strong>이 되었습니다. 수시 원서 접수와 같은 수험 생활에 필요한 크고 작은 <strong>입시 정보들을 상담을 통해 알려주시고, 입시 전략을 짜는데에 있어서 많은 도움</strong>을 주셔서 편안한 마음으로 공부하는 데에 도움이 되었습니다.”
                                        </p>
                                        <p><strong>서울대학교 치의학과</strong> 러셀 HS반 안예준<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_yt/2023/first/cont05_txt03.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st03.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님의 철저한 관리</strong>가 좋았습니다. 학원 내에서 대화 금지는 공부하기에는 정말 최고의 학습 환경으로 만들어준다고 생각합니다. 그리고 <strong>태도점수 제도를 통해 학생들 관리가 잘 되는 것</strong>도 좋았습니다. 담임 선생님들께서 모의고사 직후에 총평을 작성하라고 지도해 주시는데, 이 부분도 학생의 부족한 점을 스스로 파악하고 더 나은 방향을 모색하도록 잘 유도해주어서 만족했습니다.”
                                        </p>
                                        <p><strong>전북대학교 의예과</strong> 러셀 HS반 김진석<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0245" Then '목동 %>
                    <div class="swiper-container studyHall-slide type02">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/first/cont05_txt01.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/first/cont05_st01.png" alt="" /></div>
                                    <div class="review">
                                        <p>“저는 멘탈이 많이 약했던 편이라 <strong>담임선생님과 자주 상담하면서 길고 힘든 수험생활을 버틸 수 있었습니다.</strong>담임선생님의 관리가 성적 상승에 아주 좋은 역할을 했다고 생각합니다. 특히 가장 약했던 국어 과목 같은 경우에는 공부하는 방법을 알려주셔서 성적을 올리는 데 큰 도움이 되었습니다.”
                                        </p>
                                        <p><strong>을지대학교 의예과</strong> 러셀 목동 HS반 정혜윤<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/first/cont05_txt02.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/first/cont05_st02.png" alt="" /></div>
                                    <div class="review">
                                        <p>“바른공부 자습전용관에서 제 공부를 하면서 중간중간에 담임선생님께 자소서 첨삭을 받을 수 있어서 시간을 많이 뺏기지 않고 제 공부에 전념할 수 있었습니다.<br>
                                        <strong>학습 방향에 관한 고민이 있을 때 긴 시간 동안 주기적인 상담</strong>을 통해 학습 계획을 잡아주셔서 방황하지 않고 재수 생활을 보낼 수 있어서 좋았습니다.”
                                        </p>
                                        <p><strong>서울교대 초등교육과</strong> 러셀 목동 서의치약반 이수빈<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/first/cont05_txt03.png" alt="" /></div>
                                </div>
                                <div class="student pt60">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/first/cont05_st03.png" alt="" /></div>
                                    <div class="review">
                                        <p>“수능 공부를 할 때 규칙적인 공부 스케줄과 취침 시간을 유지하는 것이 어려운데, <strong>러셀 학원의 철저한 관리를 통해 수능형 생활 습관을 형성할 수 있었습니다.</strong> 표준 시간표에 맞춰 체계적으로 학습 시간 관리를 하면서 <strong>공부에 능률이 오를 뿐만 아니라 수능 시험장에서의 컨디션 관리까지 가능했습니다.</strong><br>
                                        러셀을 다니고 바른공부 자습전용관을 이용하면서 <strong>담임선생님의 주기적인 상담이 성적 상승에 아주 좋은 역할을 했다고 생각합니다.</strong> 그리고 담임선생님과의 1:1 상담으로 멘탈 케어가 되면서 지칠 때마다 마음을 다잡게 되었습니다.”
                                        </p>
                                        <p><strong>고려대학교 일어일문학과</strong> 러셀 목동 연고대반 김유민<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0001" Then '대치 %>
                    <div class="swiper-container studyHall-slide type02">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel/2023/first/cont05_txt01.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st01.png" alt="" /></div>
                                    <div class="review">
                                        <p>“담임선생님께서는 제가 평소 힘들어 할 때 격려를 해주시거나 <strong>저에게 도움이 될 수 있는 여러 특강을 추천</strong>해주시곤 하셨습니다. 그리고 상담을 할 때에도 저의 <strong>취약한 과목을 극복할 수 있도록 여러 방법</strong>을 가르쳐 주셔서 마지막까지 성적을 올릴 수 있었습니다.”
                                        </p>
                                        <p><strong>고려대학교 보건환경융합과학부</strong> 러셀 HS반 이시은<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel/2023/first/cont05_txt02.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st02.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님과의 상담이 가장 많은 도움</strong>이 되었습니다. 수시 원서 접수와 같은 수험 생활에 필요한 크고 작은 <strong>입시 정보들을 상담을 통해 알려주시고, 입시 전략을 짜는데에 있어서 많은 도움</strong>을 주셔서 편안한 마음으로 공부하는 데에 도움이 되었습니다.”
                                        </p>
                                        <p><strong>서울대학교 치의학과</strong> 러셀 HS반 안예준<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel/2023/first/cont05_txt03.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st03.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님의 철저한 관리</strong>가 좋았습니다. 학원 내에서 대화 금지는 공부하기에는 정말 최고의 학습 환경으로 만들어준다고 생각합니다. 그리고 <strong>태도점수 제도를 통해 학생들 관리가 잘 되는 것</strong>도 좋았습니다. 담임 선생님들께서 모의고사 직후에 총평을 작성하라고 지도해 주시는데, 이 부분도 학생의 부족한 점을 스스로 파악하고 더 나은 방향을 모색하도록 잘 유도해주어서 만족했습니다.”
                                        </p>
                                        <p><strong>전북대학교 의예과</strong> 러셀 HS반 김진석<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0246" Then '센텀 %>
                    <div class="swiper-container studyHall-slide type02">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_ct/2023/first/cont05_txt01.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st01.png" alt="" /></div>
                                    <div class="review">
                                        <p>“담임선생님께서는 제가 평소 힘들어 할 때 격려를 해주시거나 <strong>저에게 도움이 될 수 있는 여러 특강을 추천</strong>해주시곤 하셨습니다. 그리고 상담을 할 때에도 저의 <strong>취약한 과목을 극복할 수 있도록 여러 방법</strong>을 가르쳐 주셔서 마지막까지 성적을 올릴 수 있었습니다.”
                                        </p>
                                        <p><strong>고려대학교 보건환경융합과학부</strong> 러셀 HS반 이시은<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_ct/2023/first/cont05_txt02.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st02.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님과의 상담이 가장 많은 도움</strong>이 되었습니다. 수시 원서 접수와 같은 수험 생활에 필요한 크고 작은 <strong>입시 정보들을 상담을 통해 알려주시고, 입시 전략을 짜는데에 있어서 많은 도움</strong>을 주셔서 편안한 마음으로 공부하는 데에 도움이 되었습니다.”
                                        </p>
                                        <p><strong>서울대학교 치의학과</strong> 러셀 HS반 안예준<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_ct/2023/first/cont05_txt03.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st03.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님의 철저한 관리</strong>가 좋았습니다. 학원 내에서 대화 금지는 공부하기에는 정말 최고의 학습 환경으로 만들어준다고 생각합니다. 그리고 <strong>태도점수 제도를 통해 학생들 관리가 잘 되는 것</strong>도 좋았습니다. 담임 선생님들께서 모의고사 직후에 총평을 작성하라고 지도해 주시는데, 이 부분도 학생의 부족한 점을 스스로 파악하고 더 나은 방향을 모색하도록 잘 유도해주어서 만족했습니다.”
                                        </p>
                                        <p><strong>전북대학교 의예과</strong> 러셀 HS반 김진석<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0250" Then '부천 %>
                    <div class="swiper-container studyHall-slide type02">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/first/cont05_txt01.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/first/cont05_st01.png" alt="" /></div>
                                    <div class="review">
                                        <p>“담임 선생님께 당연히 공부 관련해서도 도움을 받았는데 <strong>질의응답은 9월까지 거의 매일 신청</strong>했던 것 같습니다. 질의응답으로 많이 피곤할 때는 스스로가 잘 하고 있는지, 그리고 <strong>선생님과 비교해서 제가 어떻게 생각하고 있는지 알아볼 수 있어서 좋았습니다.</strong>”
                                        </p>
                                        <p><strong>서울대학교 식물생산과학부</strong> 러셀 부천 서의치대반 권인진<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/first/cont05_txt02.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/first/cont05_st02.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님과 전문적인 상담</strong>이 가능합니다. <strong>수시나 정시 원서를 작성할 때 러셀의 데이터를 바탕으로 상담해주시기 때문에 전략을 짜기에 좋습니다.</strong> 또한 <strong>1년 동안 계속해서 개인 상담을 진행</strong>해 주시기 때문에, 공부하다가 잘못된 부분을 지적해주실 수 있습니다. 제 경우에는 6월 평가원 시험을 이후로 담임선생님과 수학공부에 대한 상담을 진행하였고, 그 결과 9월 평가원에서 더 좋은 성적을 거둘 수 있었습니다.”
                                        </p>
                                        <p><strong>삼육대학교 약학과</strong> 러셀 부천 서의치대반 송은빈<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/first/cont05_txt03.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/first/cont05_st03.png" alt="" /></div>
                                    <div class="review">
                                        <p>“제가 수험생활에서 난관에 처했을 때마다 <strong>자습관 바로 앞에 계신 담임선생님께 찾아가서 마음을 터놓고 상담을 할 수 있었다는 점</strong>이 정말 좋았습니다. 수험생활과 관련해 고민인 점을 말씀드릴 때마다  <strong>선생님께서 적절한 해결 방법을 조언해주시고 마음을 가볍게 해주셨기에 위기를 잘 넘길 수 있었던 것 같습니다.</strong>”
                                        </p>
                                        <p><strong>서울대학교 경제학과</strong> 러셀 부천 HS반 홍승혁<br>
                                            <span>(재원기간 : 2021년 2월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0248" Then '평촌 %>
                    <div class="swiper-container studyHall-slide type02">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_pc/2023/first/cont05_txt01.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_pc/2023/first/cont05_st01.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>매일매일 아침 일찍 공부할 수 있도록 강제성을 띄기 때문에</strong> 이 점이 매우 큰 도움이 되었습니다! 러셀 평촌에 다니지 않았던 때와 이 점이 가장 크게 다른 것 같아요. <strong>강제적으로라도 일찍 일어나서 매일 늦어도 8시에 공부를 시작하는 습관을 들였기 때문에</strong> 수험기간동안 꾸준히 집중할 수 있었던 것 같습니다.”
                                        </p>
                                        <p><strong>고려대학교 중어중문과</strong> 러셀 평촌 HS반 전지효<br>
                                            <span>(재원기간 : 2020년 2월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_pc/2023/first/cont05_txt02.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st02.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님과의 상담이 가장 많은 도움</strong>이 되었습니다. 수시 원서 접수와 같은 수험 생활에 필요한 크고 작은 <strong>입시 정보들을 상담을 통해 알려주시고, 입시 전략을 짜는데에 있어서 많은 도움</strong>을 주셔서 편안한 마음으로 공부하는 데에 도움이 되었습니다.”
                                        </p>
                                        <p><strong>서울대학교 치의학과</strong> 러셀 HS반 안예준<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_pc/2023/first/cont05_txt03.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_pc/2023/first/cont05_st03.png" alt="" /></div>
                                    <div class="review">
                                        <p>“담임 선생님은 러셀을 1년동안 다니면서, 언매 VS 화작 등 <strong>학습적인 고민에서부터 수험 생활 멘탈 관리 등 정서적인 고민까지 쌤과 이야기하며 많이 의지하고 도움</strong>받을 수 있었어요. 그리고 수시를 넣으면서 <strong>자소서 첨삭과 면접 준비까지 폭넓게 신경</strong>써 주셨고, 정시 원서를 정할 때도 <strong>제 상황과 점수대에 맞는 대학을 소위 말하는 스나이핑으로 정확하고 현명하게 추천</strong>해주셔서 수시와 정시 모두 좋은 결과를 낼 수 있었어요.”
                                        </p>
                                        <p><strong>고려대학교 산업경영공학부</strong> 러셀 평촌 HS반 김태영<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0342" Then '대구 %>
                    <div class="swiper-container studyHall-slide type02">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_txt01.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st01.png" alt="" /></div>
                                    <div class="review">
                                        <p>“담임선생님께서는 제가 평소 힘들어 할 때 격려를 해주시거나 <strong>저에게 도움이 될 수 있는 여러 특강을 추천</strong>해주시곤 하셨습니다. 그리고 상담을 할 때에도 저의 <strong>취약한 과목을 극복할 수 있도록 여러 방법</strong>을 가르쳐 주셔서 마지막까지 성적을 올릴 수 있었습니다.”
                                        </p>
                                        <p><strong>고려대학교 보건환경융합과학부</strong> 러셀 HS반 이시은<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_txt02.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st02.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님과의 상담이 가장 많은 도움</strong>이 되었습니다. 수시 원서 접수와 같은 수험 생활에 필요한 크고 작은 <strong>입시 정보들을 상담을 통해 알려주시고, 입시 전략을 짜는데에 있어서 많은 도움</strong>을 주셔서 편안한 마음으로 공부하는 데에 도움이 되었습니다.”
                                        </p>
                                        <p><strong>서울대학교 치의학과</strong> 러셀 HS반 안예준<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_dg/2023/first/cont05_txt03.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st03.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님의 철저한 관리</strong>가 좋았습니다. 학원 내에서 대화 금지는 공부하기에는 정말 최고의 학습 환경으로 만들어준다고 생각합니다. 그리고 <strong>태도점수 제도를 통해 학생들 관리가 잘 되는 것</strong>도 좋았습니다. 담임 선생님들께서 모의고사 직후에 총평을 작성하라고 지도해 주시는데, 이 부분도 학생의 부족한 점을 스스로 파악하고 더 나은 방향을 모색하도록 잘 유도해주어서 만족했습니다.”
                                        </p>
                                        <p><strong>전북대학교 의예과</strong> 러셀 HS반 김진석<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0244" Then '분당 %>
                    <div class="swiper-container studyHall-slide type02">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/first/cont05_txt01.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st01.png" alt="" /></div>
                                    <div class="review">
                                        <p>“담임선생님께서는 제가 평소 힘들어 할 때 격려를 해주시거나 <strong>저에게 도움이 될 수 있는 여러 특강을 추천</strong>해주시곤 하셨습니다. 그리고 상담을 할 때에도 저의 <strong>취약한 과목을 극복할 수 있도록 여러 방법</strong>을 가르쳐 주셔서 마지막까지 성적을 올릴 수 있었습니다.”
                                        </p>
                                        <p><strong>고려대학교 보건환경융합과학부</strong> 러셀 분당 HS반 이시은<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/first/cont05_txt02.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st02.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님과의 상담이 가장 많은 도움</strong>이 되었습니다. 수시 원서 접수와 같은 수험 생활에 필요한 크고 작은 <strong>입시 정보들을 상담을 통해 알려주시고, 입시 전략을 짜는데에 있어서 많은 도움</strong>을 주셔서 편안한 마음으로 공부하는 데에 도움이 되었습니다.”
                                        </p>
                                        <p><strong>서울대학교 치의학과</strong> 러셀 분당 HS반 안예준<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/first/cont05_txt03.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/first/cont05_st03.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님과 어느 때나 편하게 상담할 수 있는 점이 좋았습니다.</strong> 비단 학습 고민 뿐만 아니라 진로, 과목 선택, 슬럼프 등 다양한 고민을 털어놓을 수 있어, 학습에 방해되는 거의 모든 요인에 구애 받지 않고 학습에만 집중할 수 있었습니다. 또한, <strong>담임선생님이 수험 생활의 든든한 동반자 포지션으로, 수험생들의 입장에서 최대한 생각해주시고 배려해주시는 것이 느껴져</strong> 편안함과 안정감을 느낄 수 있었고, 학습에 더욱 집중할 수 있었습니다.”
                                        </p>
                                        <p><strong>조선대학교 의예과</strong> 러셀 분당 HS반 김상범<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0340" Then '코어광주 %>
                    <div class="swiper-container studyHall-slide type02">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/core_gj/2023/first/cont05_txt01.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st01.png" alt="" /></div>
                                    <div class="review">
                                        <p>“담임선생님께서는 제가 평소 힘들어 할 때 격려를 해주시거나 <strong>저에게 도움이 될 수 있는 여러 특강을 추천</strong>해주시곤 하셨습니다. 그리고 상담을 할 때에도 저의 <strong>취약한 과목을 극복할 수 있도록 여러 방법</strong>을 가르쳐 주셔서 마지막까지 성적을 올릴 수 있었습니다.”
                                        </p>
                                        <p><strong>고려대학교 보건환경융합과학부</strong> 러셀 HS반 이시은<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/core_gj/2023/first/cont05_txt02.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st02.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님과의 상담이 가장 많은 도움</strong>이 되었습니다. 수시 원서 접수와 같은 수험 생활에 필요한 크고 작은 <strong>입시 정보들을 상담을 통해 알려주시고, 입시 전략을 짜는데에 있어서 많은 도움</strong>을 주셔서 편안한 마음으로 공부하는 데에 도움이 되었습니다.”
                                        </p>
                                        <p><strong>서울대학교 치의학과</strong> 러셀 HS반 안예준<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/core_gj/2023/first/cont05_txt03.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st03.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님의 철저한 관리</strong>가 좋았습니다. 학원 내에서 대화 금지는 공부하기에는 정말 최고의 학습 환경으로 만들어준다고 생각합니다. 그리고 <strong>태도점수 제도를 통해 학생들 관리가 잘 되는 것</strong>도 좋았습니다. 담임 선생님들께서 모의고사 직후에 총평을 작성하라고 지도해 주시는데, 이 부분도 학생의 부족한 점을 스스로 파악하고 더 나은 방향을 모색하도록 잘 유도해주어서 만족했습니다.”
                                        </p>
                                        <p><strong>전북대학교 의예과</strong> 러셀 HS반 김진석<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0341" Then '코어대전 %>
                    <div class="swiper-container studyHall-slide type02">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/core_dj/2023/first/cont05_txt01.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st01.png" alt="" /></div>
                                    <div class="review">
                                        <p>“담임선생님께서는 제가 평소 힘들어 할 때 격려를 해주시거나 <strong>저에게 도움이 될 수 있는 여러 특강을 추천</strong>해주시곤 하셨습니다. 그리고 상담을 할 때에도 저의 <strong>취약한 과목을 극복할 수 있도록 여러 방법</strong>을 가르쳐 주셔서 마지막까지 성적을 올릴 수 있었습니다.”
                                        </p>
                                        <p><strong>고려대학교 보건환경융합과학부</strong> 러셀 HS반 이시은<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/core_dj/2023/first/cont05_txt02.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st02.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님과의 상담이 가장 많은 도움</strong>이 되었습니다. 수시 원서 접수와 같은 수험 생활에 필요한 크고 작은 <strong>입시 정보들을 상담을 통해 알려주시고, 입시 전략을 짜는데에 있어서 많은 도움</strong>을 주셔서 편안한 마음으로 공부하는 데에 도움이 되었습니다.”
                                        </p>
                                        <p><strong>서울대학교 치의학과</strong> 러셀 HS반 안예준<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/core_dj/2023/first/cont05_txt03.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st03.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님의 철저한 관리</strong>가 좋았습니다. 학원 내에서 대화 금지는 공부하기에는 정말 최고의 학습 환경으로 만들어준다고 생각합니다. 그리고 <strong>태도점수 제도를 통해 학생들 관리가 잘 되는 것</strong>도 좋았습니다. 담임 선생님들께서 모의고사 직후에 총평을 작성하라고 지도해 주시는데, 이 부분도 학생의 부족한 점을 스스로 파악하고 더 나은 방향을 모색하도록 잘 유도해주어서 만족했습니다.”
                                        </p>
                                        <p><strong>전북대학교 의예과</strong> 러셀 HS반 김진석<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0343" Then '코어원주 %>
                    <div class="swiper-container studyHall-slide type02">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_txt01.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st01.png" alt="" /></div>
                                    <div class="review">
                                        <p>“담임선생님께서는 제가 평소 힘들어 할 때 격려를 해주시거나 <strong>저에게 도움이 될 수 있는 여러 특강을 추천</strong>해주시곤 하셨습니다. 그리고 상담을 할 때에도 저의 <strong>취약한 과목을 극복할 수 있도록 여러 방법</strong>을 가르쳐 주셔서 마지막까지 성적을 올릴 수 있었습니다.”
                                        </p>
                                        <p><strong>고려대학교 보건환경융합과학부</strong> 러셀 HS반 이시은<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_txt02.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st02.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님과의 상담이 가장 많은 도움</strong>이 되었습니다. 수시 원서 접수와 같은 수험 생활에 필요한 크고 작은 <strong>입시 정보들을 상담을 통해 알려주시고, 입시 전략을 짜는데에 있어서 많은 도움</strong>을 주셔서 편안한 마음으로 공부하는 데에 도움이 되었습니다.”
                                        </p>
                                        <p><strong>서울대학교 치의학과</strong> 러셀 HS반 안예준<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_txt03.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st03.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님의 철저한 관리</strong>가 좋았습니다. 학원 내에서 대화 금지는 공부하기에는 정말 최고의 학습 환경으로 만들어준다고 생각합니다. 그리고 <strong>태도점수 제도를 통해 학생들 관리가 잘 되는 것</strong>도 좋았습니다. 담임 선생님들께서 모의고사 직후에 총평을 작성하라고 지도해 주시는데, 이 부분도 학생의 부족한 점을 스스로 파악하고 더 나은 방향을 모색하도록 잘 유도해주어서 만족했습니다.”
                                        </p>
                                        <p><strong>전북대학교 의예과</strong> 러셀 HS반 김진석<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0344" Then '코어전주 %>
                    <div class="swiper-container studyHall-slide type02">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_txt01.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st01.png" alt="" /></div>
                                    <div class="review">
                                        <p>“담임선생님께서는 제가 평소 힘들어 할 때 격려를 해주시거나 <strong>저에게 도움이 될 수 있는 여러 특강을 추천</strong>해주시곤 하셨습니다. 그리고 상담을 할 때에도 저의 <strong>취약한 과목을 극복할 수 있도록 여러 방법</strong>을 가르쳐 주셔서 마지막까지 성적을 올릴 수 있었습니다.”
                                        </p>
                                        <p><strong>고려대학교 보건환경융합과학부</strong> 러셀 HS반 이시은<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_txt02.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st02.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님과의 상담이 가장 많은 도움</strong>이 되었습니다. 수시 원서 접수와 같은 수험 생활에 필요한 크고 작은 <strong>입시 정보들을 상담을 통해 알려주시고, 입시 전략을 짜는데에 있어서 많은 도움</strong>을 주셔서 편안한 마음으로 공부하는 데에 도움이 되었습니다.”
                                        </p>
                                        <p><strong>서울대학교 치의학과</strong> 러셀 HS반 안예준<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_txt03.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st03.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님의 철저한 관리</strong>가 좋았습니다. 학원 내에서 대화 금지는 공부하기에는 정말 최고의 학습 환경으로 만들어준다고 생각합니다. 그리고 <strong>태도점수 제도를 통해 학생들 관리가 잘 되는 것</strong>도 좋았습니다. 담임 선생님들께서 모의고사 직후에 총평을 작성하라고 지도해 주시는데, 이 부분도 학생의 부족한 점을 스스로 파악하고 더 나은 방향을 모색하도록 잘 유도해주어서 만족했습니다.”
                                        </p>
                                        <p><strong>전북대학교 의예과</strong> 러셀 HS반 김진석<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0345" Then '코어창원 %>
                    <div class="swiper-container studyHall-slide type02">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_txt01.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st01.png" alt="" /></div>
                                    <div class="review">
                                        <p>“담임선생님께서는 제가 평소 힘들어 할 때 격려를 해주시거나 <strong>저에게 도움이 될 수 있는 여러 특강을 추천</strong>해주시곤 하셨습니다. 그리고 상담을 할 때에도 저의 <strong>취약한 과목을 극복할 수 있도록 여러 방법</strong>을 가르쳐 주셔서 마지막까지 성적을 올릴 수 있었습니다.”
                                        </p>
                                        <p><strong>고려대학교 보건환경융합과학부</strong> 러셀 HS반 이시은<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_txt02.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st02.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님과의 상담이 가장 많은 도움</strong>이 되었습니다. 수시 원서 접수와 같은 수험 생활에 필요한 크고 작은 <strong>입시 정보들을 상담을 통해 알려주시고, 입시 전략을 짜는데에 있어서 많은 도움</strong>을 주셔서 편안한 마음으로 공부하는 데에 도움이 되었습니다.”
                                        </p>
                                        <p><strong>서울대학교 치의학과</strong> 러셀 HS반 안예준<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_txt03.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st03.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님의 철저한 관리</strong>가 좋았습니다. 학원 내에서 대화 금지는 공부하기에는 정말 최고의 학습 환경으로 만들어준다고 생각합니다. 그리고 <strong>태도점수 제도를 통해 학생들 관리가 잘 되는 것</strong>도 좋았습니다. 담임 선생님들께서 모의고사 직후에 총평을 작성하라고 지도해 주시는데, 이 부분도 학생의 부족한 점을 스스로 파악하고 더 나은 방향을 모색하도록 잘 유도해주어서 만족했습니다.”
                                        </p>
                                        <p><strong>전북대학교 의예과</strong> 러셀 HS반 김진석<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0346" Then '코어청주 %>
                    <div class="swiper-container studyHall-slide type02">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_txt01.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st01.png" alt="" /></div>
                                    <div class="review">
                                        <p>“담임선생님께서는 제가 평소 힘들어 할 때 격려를 해주시거나 <strong>저에게 도움이 될 수 있는 여러 특강을 추천</strong>해주시곤 하셨습니다. 그리고 상담을 할 때에도 저의 <strong>취약한 과목을 극복할 수 있도록 여러 방법</strong>을 가르쳐 주셔서 마지막까지 성적을 올릴 수 있었습니다.”
                                        </p>
                                        <p><strong>고려대학교 보건환경융합과학부</strong> 러셀 HS반 이시은<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_txt02.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st02.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님과의 상담이 가장 많은 도움</strong>이 되었습니다. 수시 원서 접수와 같은 수험 생활에 필요한 크고 작은 <strong>입시 정보들을 상담을 통해 알려주시고, 입시 전략을 짜는데에 있어서 많은 도움</strong>을 주셔서 편안한 마음으로 공부하는 데에 도움이 되었습니다.”
                                        </p>
                                        <p><strong>서울대학교 치의학과</strong> 러셀 HS반 안예준<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_txt03.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st03.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님의 철저한 관리</strong>가 좋았습니다. 학원 내에서 대화 금지는 공부하기에는 정말 최고의 학습 환경으로 만들어준다고 생각합니다. 그리고 <strong>태도점수 제도를 통해 학생들 관리가 잘 되는 것</strong>도 좋았습니다. 담임 선생님들께서 모의고사 직후에 총평을 작성하라고 지도해 주시는데, 이 부분도 학생의 부족한 점을 스스로 파악하고 더 나은 방향을 모색하도록 잘 유도해주어서 만족했습니다.”
                                        </p>
                                        <p><strong>전북대학교 의예과</strong> 러셀 HS반 김진석<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% else %>
                    <div class="swiper-container studyHall-slide type02">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_txt01.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st01.png" alt="" /></div>
                                    <div class="review">
                                        <p>“담임선생님께서는 제가 평소 힘들어 할 때 격려를 해주시거나 <strong>저에게 도움이 될 수 있는 여러 특강을 추천</strong>해주시곤 하셨습니다. 그리고 상담을 할 때에도 저의 <strong>취약한 과목을 극복할 수 있도록 여러 방법</strong>을 가르쳐 주셔서 마지막까지 성적을 올릴 수 있었습니다.”
                                        </p>
                                        <p><strong>고려대학교 보건환경융합과학부</strong> 러셀 분당 HS반 이시은<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_txt02.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st02.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님과의 상담이 가장 많은 도움</strong>이 되었습니다. 수시 원서 접수와 같은 수험 생활에 필요한 크고 작은 <strong>입시 정보들을 상담을 통해 알려주시고, 입시 전략을 짜는데에 있어서 많은 도움</strong>을 주셔서 편안한 마음으로 공부하는 데에 도움이 되었습니다.”
                                        </p>
                                        <p><strong>서울대학교 치의학과</strong> 러셀 분당 HS반 안예준<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_txt03.png" alt="" /></div>
                                </div>
                                <div class="student">
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont05_st03.png" alt="" /></div>
                                    <div class="review">
                                        <p>“<strong>담임선생님의 철저한 관리</strong>가 좋았습니다. 학원 내에서 대화 금지는 공부하기에는 정말 최고의 학습 환경으로 만들어준다고 생각합니다. 그리고 <strong>태도점수 제도를 통해 학생들 관리가 잘 되는 것</strong>도 좋았습니다. 담임 선생님들께서 모의고사 직후에 총평을 작성하라고 지도해 주시는데, 이 부분도 학생의 부족한 점을 스스로 파악하고 더 나은 방향을 모색하도록 잘 유도해주어서 만족했습니다.”
                                        </p>
                                        <p><strong>전북대학교 의예과</strong> 러셀 기숙 HS반 김진석<br>
                                            <span>(재원기간 : 2021년 1월 ~ 수능 전까지)</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% end if %>
                </div>
            </div>
        </div>
    </div>
    <!-- //cont05 -->
    <!-- cont06 -->
    <div class="cont06 bg-gray">
        <div class="inner02">
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_tit.png" alt="프리미엄 콘텐츠" /></p>
            <div class="card-list-box">

				<% If sCampusCode = "CD0247" Or sCampusCode = "CD0257" Or sCampusCode = "CD0249" Or sCampusCode = "CD0245" Or sCampusCode = "CD0001" Or sCampusCode = "CD0246" Or sCampusCode = "CD0248" Then '강남/중계/영통/목동/대치/센텀/평촌 %>
                <div class="card-list type02">
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img01.png" alt="실전 모의고사" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img03.png" alt="월간 학습지(월간 경영진)" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img04.png" alt="러셀 학습 플래너" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img05.png" alt="매일 영단어&영어듣기" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img06.png" alt="일일수학 30제" /></div>
                </div>
                <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0244" Then '분당 %>
                <div class="card-list">
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img01.png" alt="실전 모의고사" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/first/cont06_img07.png" alt="러셀분당 주간지" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img03.png" alt="월간 학습지(월간 경영진)" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img04.png" alt="러셀 학습 플래너" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img05.png" alt="매일 영단어&영어듣기" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img06.png" alt="일일수학 30제" /></div>
                </div>
                <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0250" Then '부천 %>
                <div class="card-list">
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img01.png" alt="실전 모의고사" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/first/cont06_img02.jpg" alt="실전 모의고사" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img03.png" alt="월간 학습지(월간 경영진)" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img04.png" alt="러셀 학습 플래너" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img05.png" alt="매일 영단어&영어듣기" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img06.png" alt="일일수학 30제" /></div>
                </div>
                <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0342" Then '대구 %>
                <div class="card-list">
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img01.png" alt="실전 모의고사" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/russel_dg/2023/first/cont06_img02.jpg" alt="러셀 Weekly모의고사" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img03.png" alt="월간 학습지(월간 경영진)" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img04.png" alt="러셀 학습 플래너" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img05.png" alt="매일 영단어&영어듣기" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img06.png" alt="일일수학 30제" /></div>
                </div>
                <% else %>
                <!-- 2,3,5개일때 class="type02" 추가, 4개는 type03-->
                <div class="card-list">
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img01_230712.png" alt="실전 모의고사" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img02_230712.png" alt="러셀CORE Weekly모의고사" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img03_230712.png" alt="월간 학습지(월간 경영진)" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img04_230712.png" alt="러셀 학습 플래너" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img05_230712.png" alt="매일 영단어&영어듣기" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont06_img06_230712.png" alt="일일수학 30제" /></div>
                </div>
                <ul class="remark-02">
                    <li><sup>*</sup> 각 학원에서 제공되는 콘텐츠는 상이할 수 있습니다.</li>
                </ul>
                <% end if %>
            </div>
        </div>
    </div>
    <!-- //cont06 -->
</div>