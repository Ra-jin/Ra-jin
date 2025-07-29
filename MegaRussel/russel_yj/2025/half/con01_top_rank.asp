<!-- cont01 -->
<div class="cont01">
	<h3 data-aos="flip-up" class="mb80"><img src="<%=imgUrl%>/cont01_tit.png" alt="성공적인 반수를 위한 변함없는 공식, 의치한약수 대입 결과로 증명된 남학생 전문관 러셀 기숙학원"></h3>
	<div class="inner">
        <% If sCampusCode = "CD0347" Then '남기숙 %>
        <div class="result-box">
            <p><img src="<%=imgUrl%>/cont01_txt.png" alt=""></p>
            <ul class="num-list">
				<li>
					<p>러셀 전체 학원 내 최상위권 대학 입결 1등 <i style="right:-15px;">1)</i></p>
				</li>
				<li>
					<p>의치한수약 합격생 2025학년도 최다 배출 <i>2)</i></p>
                </li>
                <li>
					<p>러셀 기숙학원 자연계 재원생 2명 중 1명은 의치한수약 합격 <i>3)</i></p>
                </li>
			</ul>
            <ul class="result-list mt60">
				<li>
                    <p class="year">2025학년도</p>
                    <p class="tit">자연계 재원생<br>362명 중</p>
					<p class="num"><strong>196</strong> 명</p>
				</li>
				<li>
                    <p class="year">2024학년도</p>
                    <p class="tit">자연계 재원생<br>309명 중</p>
					<p class="num"><strong>162</strong> 명</p>
                </li>
                <li>
                    <p class="year">2023학년도</p>
                    <p class="tit">자연계 재원생<br>320명 중</p>
					<p class="num"><strong>174</strong> 명</p>
                </li>
                <li>
                    <p class="year">2022학년도</p>
                    <p class="tit">자연계 재원생<br>305명 중</p>
					<p class="num"><strong>169</strong> 명</p>
                </li>
                <li>
                    <p class="year">2021학년도</p>
                    <p class="tit">자연계 재원생<br>302명 중</p>
					<p class="num"><strong>149</strong> 명</p>
                </li>
			</ul>
        </div>
        <div class="info-stxt">
			<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
			<div class="data-view">
				1) 러셀 전체 학원별 2021-2025학년도 의치한수약 대학 합격자 수 기준 (홈페이지 대입 실적 기준 / 2025.02.26 기준)<br>
                2) 남학생 의대전문관/서연고 의치대 전문관 러셀 기숙학원에서 배출한 2021~2025학년도 의치한수약 대학 합격자 수 중 2025학년도 합격자 수 최다<br>
                3) 2025학년도 남학생 의대전문관/서연고 의치대 전문관 러셀 기숙학원 자연계 재원생 대비 의치한수약 대학 합격자 기준<br>
                ※ 남학생 의대전문관/서연고 의치대 전문관 러셀 기숙학원 2021~2025학년도 재원생의 진학 실적만을 합산한 수치로, 최종합격자를 기준으로 하며, 복수대학 합격자가 포함되었습니다. 
			</div>
		</div>
        <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
        <div class="result-box">
            <p><img src="<%=imgUrl%>/cont01_txt.png" alt=""></p>
            <ul class="num-list ver02 mt50">
                <li>
                    <p class="stu-num">의예</p>
                    <p class="stu-tit"><strong>50</strong>명</p>
                </li>
                <li>
                    <p class="stu-num">치의예</p>
                    <p class="stu-tit"><strong>4</strong>명</p>
                </li>
                <li>
                    <p class="stu-num">한의예</p>
                    <p class="stu-tit"><strong>4</strong>명</p>
                </li>
                <li>
                    <p class="stu-num">약학</p>
                    <p class="stu-tit"><strong>16</strong>명</p>
                </li>
                <li>
                    <p class="stu-num">수의예</p>
                    <p class="stu-tit"><strong>5</strong>명</p>
                </li>
            </ul>
            <ul class="num-list ver02 mt40">
                <li>
                    <p class="stu-num">서연고</p>
                    <p class="stu-tit"><strong>13</strong>명</p>
                </li>
                <li>
                    <p class="stu-num">서성한이</p>
                    <p class="stu-tit"><strong>17</strong>명</p>
                </li>
                <li>
                    <p class="stu-num">중경외시</p>
                    <p class="stu-tit"><strong>30</strong>명</p>
                </li>
                <li>
                    <p class="stu-num">건동홍숙</p>
                    <p class="stu-tit"><strong>15</strong>명</p>
                </li>
            </ul>
        </div>
        <div class="info-stxt">
			<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
			<div class="data-view">
				-2025학년도 여학생 전문관 러셀 기숙 10월 과정 재원생 175명 대상<br>
                -최종 합격자 기준<br>
                -중복 대학 합격자 포함
			</div>
		</div>
        <% End If %>
	</div>
</div>

<!-- cont02 -->
<div class="cont02">
	<h3 data-aos="flip-up" class="mb80"><img src="<%=imgUrl%>/cont02_tit.png" alt="남학생 전문관 러셀 기숙에서 만들어낸 놀라운 결과, N수 실제 재원생 선배들이 증명하고 있습니다."></h3>
	<% If sCampusCode = "CD0347" Then '남기숙 %>
    <div class="inner">
		<ul class="review-list">
            <li>
                <div class="review-txt">
                    <p class="tit">매주, 매일 보는 테스트와 영어듣기가<br>도움이 되었습니다.</p>
                    <p class="txt">매일 보는 <strong>영단어 테스트</strong>, 그리고 매주 나눠주는 <br>
                        <strong>실전 모의고사</strong>가 양적, 질적 측면에서 많은 도움이 <br>
                        되었습니다.</p>
                </div>
                <div class="img">
                    <img src="<%=imgUrl%>/stu_img01.jpg" alt="">
                    <a onclick="CastPopup('https://www.youtube.com/embed/ylcC5CO1WMg?si=UO3UQ6Bxba-2uthm')" class="i-play"><img src="<%=img_path_russelsm%>/2025/half/i-play.png" alt=""></a>
                </div>
                <dl class="stu-info">
                    <dt>2024 전북대학교 의예과 합격</dt>
                    <dd>서연고&middot;의치대 전문관 러셀 기숙학원 최미성</dd>
                </dl>
            </li>
            <li>
                <div class="review-txt">
                    <p class="tit">최고의 학습 환경에서 끊임없이<br>
                        동기 부여를 받을 수 있었습니다.</p>
                    <p class="txt">바자관은 최고의 학습 환경이었습니다. <strong>통유리로 <br>
                        넓게 트인 공간</strong>에서 자습을 하니 저도 끊임없이<br>
                        동기부여를 받을 수 있었습니다.</p>
                </div>
                <div class="img">
                    <img src="<%=imgUrl%>/stu_img02.jpg" alt="">
                    <a onclick="CastPopup('https://www.youtube.com/embed/W3m-6I3ms1w?si=JlLE9Rn_bxefOLmh')" class="i-play"><img src="<%=img_path_russelsm%>/2025/half/i-play.png" alt=""></a>
                </div>
                <dl class="stu-info">
                    <dt>2024 서울대학교 사회학과 합격</dt>
                    <dd>서연고&middot;의치대 전문관 러셀 기숙학원 최문성</dd>
                </dl>
            </li>
            <li>
                <div class="review-txt">
                    <p class="tit">담임선생님의 관리로 방향을 잘 잡고<br>
                        공부할 수 있었습니다.</p>
                    <p class="txt"><strong>입시에 대해</strong> 모르는 것이 많아 초반에 담임선생님<br>
                        께 많은 질문을 했는데, <strong>상세히 답해 주셔서</strong> <br>
                        초기에 방향을 잘 잡을 수 있었습니다.</p>
                </div>
                <div class="img">
                    <img src="<%=imgUrl%>/stu_img03.jpg" alt="">
                    <a onclick="CastPopup('https://www.youtube.com/embed/ro9olaWEWVE?si=_i4jwAoQrZYI7Grf')" class="i-play"><img src="<%=img_path_russelsm%>/2025/half/i-play.png" alt=""></a>
                </div>
                <dl class="stu-info">
                    <dt>2024 서울대학교 자유전공학부 합격</dt>
                    <dd>서연고&middot;의치대 전문관 러셀 기숙학원 김영준</dd>
                </dl>
            </li>
            <li>
                <div class="review-txt">
                    <p class="tit">기숙학원에서는 낭비되는 시간 없이<br>
                        온전히 공부에만 시간을 활용할 수<br>
                        있었습니다.</p>
                    <p class="txt"><strong>기숙사와 강의실, 식당이 가까워</strong> 동선을 아낄 수 <br>
                        있고, <strong>전자기기 차단으로 낭비되는 시간 없이</strong> <br>
                        온전히 공부에 집중할 수 있었습니다.</p>
                </div>
                <div class="img">
                    <img src="<%=imgUrl%>/stu_img04.jpg" alt="">
                    <a onclick="CastPopup('https://www.youtube.com/embed/DBVRr7Lp_ro?si=_gS7U7BefVmGi7n0')" class="i-play"><img src="<%=img_path_russelsm%>/2025/half/i-play.png" alt=""></a>
                </div>
                <dl class="stu-info">
                    <dt>2024 원광대학교 한의예과 합격</dt>
                    <dd>서연고&middot;의치대 전문관 러셀 기숙학원 노윤호</dd>
                </dl>
            </li>
            <li>
                <div class="review-txt">
                    <p class="tit">담임선생님의 1:1 상담으로 흔들리지<br>
                        않고 집중력을 유지할 수 있었습니다.</p>
                    <p class="txt">학습적으로나 생활적으로나 힘든 일이 많았는데, <br>
                        이를 <strong>담임선생님과 상담하면서 풀어낼 수 <br> 
                        있었습니다.</strong></p>
                </div>
                <div class="img">
                    <img src="<%=imgUrl%>/stu_img05.jpg" alt="">
                    <a onclick="CastPopup('https://www.youtube.com/embed/4WpKTiHkJ-o?si=FKIkP0gcz3Rj6iw7')" class="i-play"><img src="<%=img_path_russelsm%>/2025/half/i-play.png" alt=""></a>
                </div>
                <dl class="stu-info">
                    <dt>2024 상지대학교 한의예과 합격</dt>
                    <dd>서연고&middot;의치대 전문관 러셀 기숙학원 윤민재</dd>
                </dl>
            </li>
            <li>
                <div class="review-txt">
                    <p class="tit">공부에만 집중할 수 있는 환경이<br>
                        큰 장점입니다.</p>
                    <p class="txt">선생님과 학생들의 노력으로 <strong>바자관 내에서는 <br>
                        정숙이 이루어지고 공부에만 집중할 수 있는 <br>
                        환경이 주어집니다.</strong></p>
                </div>
                <div class="img">
                    <img src="<%=imgUrl%>/stu_img06.jpg" alt="">
                    <a onclick="CastPopup('https://www.youtube.com/embed/Od8GwfRS7qA?si=ODVoFwacDJv58PLo')" class="i-play"><img src="<%=img_path_russelsm%>/2025/half/i-play.png" alt=""></a>
                </div>
                <dl class="stu-info">
                    <dt>2024 우석대학교 한의예과 합격</dt>
                    <dd>서연고&middot;의치대 전문관 러셀 기숙학원 오성원</dd>
                </dl>
            </li>
        </ul>
        <p class="r-txt">* 합격생 후기 일부 발췌</p>
	</div>
    <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
    <div class="inner02">
        <img src="<%=imgUrl%>/cont02_img.png" alt="">
        <p class="r-txt">* 2024-2025 수능 국수탐(2) 백분위 기준 성적 상승률</p>
    </div>
    <% End If %>
</div>

<!-- cont03 -->
<div class="cont03 <%=campusName%>">
	<h3 data-aos="flip-up" class="mb80"><img src="<%=imgUrl%>/cont03_tit.png" alt="이제는 특화된 기숙학원이 답이다! 왜 남학생 전문관 러셀 기숙학원이어야 하는가?"></h3>
	<div class="inner">
        <% If sCampusCode = "CD0347" Then '남기숙 %>
		<p><img src="<%=imgUrl%>/cont03_img.png" alt=""></p>
        <div class="info-stxt">
			<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
			<div class="data-view">
				최상위권 남학생 의대전문관 재원생의 진학 실적 기준 러셀 전체 학원별 <br>
                2021-2023학년도 의치한약수약 대학 합격자수 1위 (홈페이지 대입 실적 기준/2023. 02. 20 기준)
			</div>
		</div>
        <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
        <div class="review-slide swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <p class="info-txt">
                        <span class="year">2024</span>
                        <strong>계명대 의예과 합격</strong>
                    </p>
                    <div class="review-txt">
                        <p class="tit">짧은 기간, 러셀 시스템으로<br>
                            최대한의 공부 시간을 확보했습니다.</p>
                        <p class="txt">6월 반수반부터 준비하였고, 체계적인 생활 관리를 위해서 기숙학원 입소를 선택했습니다. 
                            기대했던 만큼 <strong>기상 시간, 식사 시간, 취침 시간을 엄격하게 관리해 주셨고 
                            덕분에 최대한의 공부시간을 확보</strong>하며 수능 날까지 건강한 생활을 할 수 있었습니다.</p>
                    </div>
                    <dl class="stu-info">
                        <dt>여학생 전문관 러셀 기숙 배*헌</dt>
                        <dd><img src="<%=img_path_russelw%>/2025/half/stu_img01.png" alt=""></dd>
                    </dl>
                </div>
                <div class="swiper-slide">
                    <p class="info-txt">
                        <span class="year">2024</span>
                        <strong>전남대 치의학학석사통합과정 합격</strong>
                    </p>
                    <div class="review-txt">
                        <p class="tit">러셀 시스템으로 공부 리듬을 만들고<br>
                            합격을 앞당겼습니다.</p>
                        <p class="txt">반수반부터 공부를 시작했는데 여학생 전문관 러셀 기숙은 <strong>시간표가 
                            수능 시험 시간에 맞춰져 있어서 공부 리듬을 형성하는 데 도움</strong>이 되었습니다. 
                            또한 바자관이 개방적인 구조여서 <strong>다른 학생들이 공부하는 모습을 보고 같이 공부하게 되는 분위기를 조성</strong>해 주는 점이 좋았습니다.
                        </p>
                    </div>
                    <dl class="stu-info">
                        <dt>여학생 전문관 러셀 기숙 신*지</dt>
                        <dd><img src="<%=img_path_russelw%>/2025/half/stu_img02.png" alt=""></dd>
                    </dl>
                </div>
                <div class="swiper-slide">
                    <p class="info-txt">
                        <span class="year">2024</span>
                        <strong>조선대 치의예과 합격</strong>
                    </p>
                    <div class="review-txt">
                        <p class="tit">체계적인 관리와 상담 시스템<br>
                            덕분에 학업에만 집중할 수 있었습니다.</p>
                        <p class="txt">기숙학원 생활 중에 학습적인 부분이나 생활적인 부분에서 <strong>고민이 생기면 
                            담임선생님과의 상담을 통해 해결해 나갈 수 있어서 좋았습니다.</strong> 
                            또한 기숙학원에는 규칙적인 생활 스케줄과 강력한 학원 생활 규정이 있어 
                            <strong>학업에만 집중할 수 있는 환경이 조성</strong>되어 있었습니다.</p>
                    </div>
                    <dl class="stu-info">
                        <dt>여학생 전문관 러셀 기숙 유*희</dt>
                        <dd><img src="<%=img_path_russelw%>/2025/half/stu_img03.png" alt=""></dd>
                    </dl>
                </div>
                <div class="swiper-slide">
                    <p class="info-txt">
                        <span class="year">2024</span>
                        <strong>고려대 자유전공학부 합격</strong>
                    </p>
                    <div class="review-txt">
                        <p class="tit">수업의 몰입도와 풍부한 자료 제공으로<br>
                            실력을 빠르게 키울 수 있었습니다.</p>
                        <p class="txt"><strong>검증된 선생님들께서 직접 현장에 나오셔서 수업을 해주신다는 점</strong>이 좋았습니다. 
                            인터넷 강의보다 몰입도가 높은 것은 당연하고 수업 자료들도 매우 풍부했으며, 
                            <strong>현장에서 직접 질의응답을 바로바로 받아주셔서 실력 향상에 큰 도움</strong>이 되었습니다.
                        </p>
                    </div>
                    <dl class="stu-info">
                        <dt>여학생 전문관 러셀 기숙 윤*정</dt>
                        <dd><img src="<%=img_path_russelw%>/2025/half/stu_img04.png" alt=""></dd>
                    </dl>
                </div>
            </div>
    
            <!-- 화살표 -->
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div> 
        </div>

        <p class="r-txt">*합격생 인터뷰 중 일부 발췌</p>
        <p class="mt80"><img src="<%=imgUrl%>/cont03_tit02.png" alt=""></p>
        <% End If %>
	</div>
</div>

<!-- cont04 -->
<% If sCampusCode = "CD0347" Then '남기숙 %>
<div class="cont04">
	<h3 data-aos="flip-up" class="mb80"><img src="<%=imgUrl%>/cont04_tit.png" alt=""></h3>
	<div class="inner">
		<p><img src="<%=imgUrl%>/cont04_img.png" alt="이미 검증된 러셀 학원 내 입결 1위 남학생 전문관, 합격을 위한 모든 것이 있는 곳!"></p>
        <div class="info-stxt">
			<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
			<div class="data-view">
				최상위권 남학생 의대전문관 재원생의 진학 실적 기준 러셀 전체 학원별 <br>
                2021-2023학년도 의치한약수약 대학 합격자수 1위 (홈페이지 대입 실적 기준/2023. 02. 20 기준)
			</div>
		</div>
        <p class="mt100"><img src="<%=imgUrl%>/cont04_tit02.png" alt="어느 하나도 놓치지 않아야 실력이 올라 갑니다! 더 강력해진 시설/강의/컨텐츠로 2026학년도 반수생들의 목표를 책임집니다."></p>
	</div>
</div>
<% End If %>


