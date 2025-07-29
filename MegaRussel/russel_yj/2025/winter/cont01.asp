<!-- tab01 -->
<div class="cont js-cont">
    <div class="cont01">
        <div class="inner02">
            <div class="tit"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont01_stxt.png" alt="최상위권 합격생들이 가장 중요하다고 이야기하는 지금 이 시기,"></div>

		    <div class="tit02"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont01_tit.png" alt="러셀은 결과로 증명합니다."></div>
			<ul class="bubble-list">
                <li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/bubble_list01.png" alt=""></li>
                <li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/bubble_list02.png" alt=""></li>
                <li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/bubble_list03.png" alt=""></li>
                <li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/bubble_list04.png" alt=""></li>
                <li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/bubble_list05.png" alt=""></li>
                <li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/bubble_list06.png" alt=""></li>
                <li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/bubble_list07.png" alt=""></li>
                <li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/bubble_list08.png" alt=""></li>
            </ul>
            <div class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont01_bg.png" alt=""></div>

            <p class="c-txt">*2025학년도 합격자 후기 중 일부 발췌</p>
		</div>
        <% If sCampusCode = "CD0347" Then '남기숙 %>
        <div class="tit03"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont01_txt.png" alt=""></div>
        <% Else %>
        <div class="tit03"><img src="<%=img_path_russelw%>/2025/winter/cont01_txt.png" alt="겨울방학을 어떻게 보내느냐에 따라 대입 결과가 달라집니다."></div>
        <% End If %>
	</div>

    <!-- cont02 -->
	<div class="cont02">
		<h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont02_tit.png" alt="대입이라는 장거리 마라톤, 성공적인 완주를 위해 가장 중요한 것은 꾸준히 멀리 가는 힘, 학습 습관 형성!"></h3>
		<div class="inner" data-aos="fade-up">
            <p><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont02_img.png" alt=""></p>
        </div>
        <div class="mt50"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont02_txt.png" alt="겨울방학은 최상위권으로 도약하기 위한 학습 습관을 완성하기에 가장 적합한 시기입니다."></div>
	</div>

    <!-- cont03 -->
    <div class="cont03">
        <h3 class="mb50" data-aos="fade-down"><img src="<%=imgUrl%>/cont03_tit.png" alt="왜 겨울방학을 러셀에서 보내야 할까요? 최상위권의 선택에는 이유가 있습니다."></h3>
        <% If sCampusCode = "CD0348" Then '여기숙 %>
        <div class="inner" data-aos="fade-up">
            <p><img src="<%=imgUrl%>/cont03_img.jpg" alt=""></p>
            <p class="r-txt">*2025 여학생 전문관 러셀 기숙학원 윈터스쿨 재원생 대상 만족도 조사 결과<br>
                만족도=매우 만족, 만족, 보통 응답자 비율</p>
        </div>
        <% Else %>
        <div class="inner" data-aos="fade-up">
            <p><img src="<%=imgUrl%>/cont03_img.jpg" alt=""></p>
            <% If sCampusCode = "CD0347" Then '남기숙 %>
            <!-- 데이터 산출기준 -->
			<div class="info-stxt">
                <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
                <div class="data-view">
                    *최상위권 남학생 의대전문관 재원생의 진학 실적 기준 러셀 전체 학원별  2021-2023학년도 의치한약수약 대학 합격자수 1위<br>
                    (홈페이지 대입 실적 기준/2023. 02. 20 기준)
                </div>
            </div>
			<!-- //데이터 산출기준 -->
            <% End If %>
        </div>
        <% End If %>
    </div>

    <!-- cont04 -->
    <% If sCampusCode = "CD0347" Then '남기숙 %>
    <div class="cont04">
        <h3 class="mb60" data-aos="fade-down"><img src="<%=imgUrl%>/cont04_tit.png" alt=""></h3>
        <div class="inner" data-aos="fade-up">
            <p><img src="<%=imgUrl%>/cont04_img.png" alt=""></p>
        </div>
    </div>
    <% End If %>

    <!-- cont05 -->
    <div class="cont05">
        <% If sCampusCode = "CD0347" Then '남기숙 %>
        <h3 class="mb80" data-aos="fade-down"><img src="<%=img_path_russelsm%>/2025/winter/cont05_tit.png" alt=""></h3>
        <% Else %>
        <h3 class="mb80" data-aos="fade-down"><img src="<%=img_path_russelw%>/2025/winter/cont05_tit.png" alt="강의력과 관리력이 검증된 강사진, 메가스터디 수능 전문 강사진의 100% 현장강의"></h3>
        <% End If %>
        <div class="inner" data-aos="fade-up">
            <% If sCampusCode = "CD0347" Then '남기숙 %>
            <ul class="danka-list">
                <li>
                    <p><%=danka_list01%></p>
                </li>
                <li>
                    <p><%=danka_list02%></p>
                </li>
                <li>
                    <p><%=danka_list03%></p>
                </li>
                <li>
                    <p><%=danka_list04%></p>
                </li>
            </ul>
            <% Else %>
            <ul class="danka-list">
                <li>
                    <p class="ico"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/danka_bubble01.png" alt=""></p>
                    <p><%=danka_list01%></p>
                </li>
                <li>
                    <p class="ico"><img src="<%=img_path_russelw%>/2025/winter/danka_bubble02.png" alt=""></p>
                    <p><%=danka_list02%></p>
                </li>
                <li>
                    <p class="ico"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/danka_bubble03.png" alt=""></p>
                    <p><%=danka_list03%></p>
                </li>
                <li>
                    <p class="ico"><img src="<%=img_path_russelw%>/2025/winter/danka_bubble04.png" alt=""></p>
                    <p><%=danka_list04%></p>
                </li>
            </ul>
            <% End If %>

            <% If sCampusCode = "CD0348" or sCampusCode = "CD0363" Then '여기숙/최상위권기숙 %>
            <div class="tbl-box coming-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_tobe.png" alt="" /></p>
                    <p class="coming-txt">
                        <strong><%=txtCampus%>의 윈터스쿨 강사진은 </strong><br> 
                        추후 공개 예정입니다.
                    </p>
                </div>
            </div>
            <% Else %>
            <p><img src="<%=imgUrl%>/teacher_img.jpg" alt=""></p>
            <!-- <p class="r-txt">* 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.</p> -->
            <% End If %>
        </div>
    </div>

    <!-- cont06 -->
    <div class="cont06">
        <h3 class="mb80" data-aos="fade-down"><img src="<%=img_path_russelsm%>/2025/winter/cont06_tit.png" alt="학습 집중력을 높이는 관리와 시스템으로 폭발적인 학습량 증가"></h3>
        <div class="inner" data-aos="fade-up">
            <p><img src="<%=imgUrl%>/cont06_img.png" alt=""></p>
        </div>
    </div>

    <!-- cont07 -->
    <div class="cont07">
        <h3 class="mb60" data-aos="fade-down"><img src="<%=img_path_russelsm%>/2025/winter/cont07_tit.png" alt="학습에만 집중할 수 있는 학습 공간과 쾌적하고 편리한 생활공간"></h3>
        <div class="inner" data-aos="fade-up">
            <div class="living-wrap">
                <div>
                    <p class="img"><img src="<%=imgUrl%>/living_img01.jpg" alt=""></p>
                    <% If sCampusCode = "CD0348" or sCampusCode = "CD0363" Then '여기숙/최상위권기숙 %>
                    <div>
                        <% If sCampusCode = "CD0363" Then '최상위권기숙 %>
                        <p class="tit">3.3m 높은 층고로<br>
                            <strong>넓고 쾌적한 강의실</strong></p>
                        <% Else %>
                        <p class="tit">3.3m 높은 층고로<br>
                            넓고 쾌적한 <strong>강의실</strong></p>
                        <% End If %>
                        <ul class="list-base">
                            <li>기존 강의실보다 약 0.6m이상 <br>
                                높은 3.3m 강의실 층고로 넓은 공간 설계</li>
                            <li>자연 채광이 들어올 수 있도록 <br>
                                창문의 크기를 크고 높게 설계</li>
                            <li>강의실 단상의 높이를 올리고, <br>
                                좌우 끝이 잘 보이도록 곡면 와이드 칠판 설치</li>
                        </ul>
                    </div>
                    <% Else %>
                    <div>
                        <p class="tit">3.3m 높은 층고로<br>
                            넓고 쾌적한 <strong>강의실</strong></p>
                        <ul class="list-base">
                            <li>기존 강의실보다 약 0.6m이상 <br>
                                높은 3.3m 강의실 층고로 넓은 공간 설계</li>
                            <li>자연 채광이 들어올 수 있도록 창문의 크기를 <br>
                                크고 높게 만들고, 강의실 단상의 높이를 올리고,<br>
                                좌우 끝이 잘 보이도록 곡면 와이드 칠판 설치</li>
                            
                        </ul>
                    </div>
                    <% End If %>
                </div>
                <div>
                    <% If sCampusCode = "CD0348" Then '여기숙 %>
                    <div>
                        <p class="tit">숙면이 보장되는 <br>
                            2인 1실 / 4인 1실 <strong>숙소</strong></p>
                        <ul class="list-base">
                            <li>모든 숙소에 일룸 침대와 매트리스(하드 타입) 설치</li>
                            <li>넓고 쾌적한 숙소공간을 위해 <br>
                                2인 1실 / 4인 1실 1층 침대 구성</li>
                            <li>각 숙소 내 2개의 화장실을 만들어 <br>
                                불편함이 없도록 공간 설계</li>
                        </ul>
                    </div>
                    <% ElseIf sCampusCode = "CD0363" Then '최상위권기숙 %>
                    <div>
                        <p class="tit">최상의 컨디션을 위한 <br>
                            숙면이 보장되는 <strong>2인 1실 숙소</strong></p>
                        <ul class="list-base">
                            <li>모든 숙소에 <strong>시몬스 침대와 매트리스(하단 타입)</strong> 설치</li>
                            <li>2인실 기숙사로 생활 스트레스 최소화, 숙면 보장</li>
                            <li><strong>청소와 세탁 전문인력 투입</strong>으로 편안하게 생활</li>
                        </ul>
                    </div>
                    <% Else %>
                    <div>
                        <p class="tit">최상위권 컨디션을 위한<br>
                            숙면이 보장되는 전 <strong>2인 1실</strong> 숙소</p>
                        <ul class="list-base">
                            <li>모든 숙소에 일룸 침대와 매트리스(하단 타입) 설치</li>
                            <li>넓고 쾌적한 숙소공간을 위해 2인 1실 1층 침대 구성, <br>
                                각 숙소 비데 화장실을 만들어 <br>
                                불편함이 없도록 공간 설계</li>
                            <li><strong>청소와 세탁 전문인력 투입</strong>으로 편안하게 생활</li>
                        </ul>
                    </div>
                    <% End If %>
                    <p class="img"><img src="<%=imgUrl%>/living_img02.jpg" alt=""></p>
                </div>
                <div>
                    <p class="img"><img src="<%=imgUrl%>/living_img03.jpg" alt=""></p>
                    <% If sCampusCode = "CD0348" Then '여기숙 %>
                    <div>
                        <p class="tit">지친 심신을<br>
                            회복시켜주는 <strong>편의시설</strong></p>
                        <ul class="list-base">
                            <li>균형 잡힌 영양 식단을 위해 <br>
                                메가스터디그룹의 메가푸드 직접 운영 및 <br>
                                검증된 국내 최대 식자재 유통업체에서 재료 공급</li>
                            <li>감성적인 인테리어로 휴식과<br>
                                재충전의 장소가 될 수 있도록 설계</li>
                        </ul>
                    </div>
                    <% ElseIf sCampusCode = "CD0363" Then '최상위권기숙 %>
                    <div>
                        <p class="tit">지친 심신을 회복시켜주는<br>
                            <strong>다양한 편의시설</strong></p>
                        <ul class="list-base">
                            <li>감성적인 인테리어로<br>
                                휴식과 재충전의 장소가 될 수 있도록 설계</li>
                            <li>건강 관리에 신경쓸 수 있도록 체력단련실, 운동장,<br>
                                농구 골대, 탁구대, 배드민턴장 등 체육 시설 마련</li>
                            <li>외부 산책 공간 및 휴게 공간에서 리프레시</li>
                            <li>모든 재원생에게 1인 1태블릿 제공</li>
                        </ul>
                    </div>
                    <% Else %>
                    <div>
                        <p class="tit">지친 심신을<br>
                            회복시켜주는 <strong>편의시설</strong></p>
                        <ul class="list-base">
                            <li>건강 관리에 신경쓸 수 있도록<br>
                                체력 단련실, 넓은 잔디 운동장, 농구 골대, <br>
                                탁구대, 배드민턴장 등 체육 시설 마련</li>
                            <li>외부 산책 공간 및 휴게 공간에서 리프레시</li>
                            <li>감성적인 인테리어로 휴식과<br>
                                재충전의 장소가 될 수 있도록 설계</li>
                        </ul>
                    </div>
                    <% End If %>
                </div>
            </div>
        </div>
    </div>
</div>


