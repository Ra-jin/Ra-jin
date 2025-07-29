<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<%

 	If gLoginOk = True Then
        strSql = ""
        strSql = strSql &" SELECT count(*) as cnt "
        strSql = strSql &" FROM MR_EVT_CONSULT2020 WITH(NOLOCK) "
        strSql = strSql &" WHERE EC_TYPE = 'C' "
		strSql = strSql & " 	AND EC_AGREE2_YN in ('1','2')  " '예약 대기/완료상태
	    strSql = strSql &"      AND EC_MEM_ID = '"&gLoginMemId&"'"
		
        Set objRs = russelobjdb.sqlQuery(strSql, 3)
        If Not (objRs.EoF And objRs.BoF) Then
            applyStatus = objRs(0)
        End If
        objRs.close
        Set objRs = Nothing
	Else
        applyStatus = 0
    End If

%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="2023 러셀 입시전략연구소 정시 지원 컨설팅" />
    <meta name="keywords" content="2023 러셀 입시전략연구소 정시 지원 컨설팅,2023 정시 지원 컨설팅" />
	<meta name="description" content="2023 러셀 입시전략연구소 정시 지원 컨설팅" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2023 러셀 입시전략연구소 정시 지원 컨설팅">
	<meta property="og:description" content="2023 러셀 입시전략연구소 정시 지원 컨설팅" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" href="./style.css">
	<link rel="stylesheet" href="/common/css/2022/full_danka.css">
</head>

<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- consulting-wrap -->
<div class="consulting-wrap">
	<div class="visual-area">
		<div class="inner">
			<p><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/visual_tit.png" alt="" /></p>
			<div class="info-txt">
				<div>
					<dl>
						<dt>예약 접수</dt>
						<dd>11.28(월) 10시 이후부터 <span>선착순 온라인 접수</span></dd>
					</dl>
					<dl>
						<dt>컨설팅 일정</dt>
						<dd>2022.12.23(금) ~ 12.29(목)</dd>
					</dl>
				</div>
			</div>
			<div class="info-link">
				<a href="javascript:void(0);" class="btn-m-gray" onclick="fn_qnaGo()">온라인 문의</a>
				<% If applyStatus = 0 then %>
				<a href="javascript:void(0);" class="btn-m-gold" onclick="fn_eventGo()">온라인 접수 바로가기</a> 
				<% else %>
				<a href="javascript:void(0);" class="btn-m-gold" onclick="fn_eventGo()">온라인 접수 내역 확인</a>
				<% end if %>

				<!-- D: 11/28(월) 미로그인시 -->
				<!-- <a href="javascript:void(0);" class="btn-m-gold" onclick="alert('로그인 후 이용 가능합니다.')">온라인 접수 바로가기</a> -->
				<!-- D: 11/28(월) 로그인시 미접수자의 경우 노출-->
				<!--<a href="javascript:void(0);" onclick="fn_eventGo()" class="btn-m-gold">온라인 접수 바로가기</a>-->
				
				<!-- D: 11/28(월) 로그인시 온라인접수 '접수완료','대기완료'자의 경우 노출 -->
				<!-- <a href="javascript:void(0);" class="btn-m-gold">온라인 접수 내역 확인</a> -->
			</div>
		</div>
	</div>
	<nav class="fix-menu-wrap">
		<div class="fix-menu js-fix-menu">
			<div class="menu">
				<a class="on" href="javascript:void(0);">
					<span class="blind">러셀 입시전략연구소를 선택해야 하는 이유</span>
				</a>
				<a href="javascript:void(0);">
					<span class="blind">생생한 컨설팅 후기</span>
				</a>
				<a href="javascript:void(0);">
					<span class="blind">2023 정시 지원 컨설팅 안내</span>
				</a>
			</div>
		</div>
	</nav>
	<!-- tab01 -->
	<div class="cont js-cont">
		<!-- cont01 -->
		<div class="cont01">
			<div class="inner">
				<p><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont01_tit.png" alt="왜 러셀 입시전략연구소를 선택해야 할까요?" /></p>
				<div class="c-box01">
					<p class="mt100"><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont01_stit.png" alt="복잡한 입시 미로를 함께 헤쳐나갈 단 하나의 컨설팅, 러셀 입시전략연구소의 대입 전문가들과 함께 복잡한 입시 미로 속에서 최적의 길을 찾아가시기 바랍니다." /></p>
					<ul>
						<li>
							<p class="tit">대입 전문 컨설턴트의<br>경험과 노하우</p>
							<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont01_img1.jpg" alt="" /></div>
							<p class="txt">다년간 입시를 공부하고 분석해온 
								러셀 입시전문 컨설턴트의<br><strong>근거와 논리에 기반한 정시 컨설팅</strong>
							</p>
						</li>
						<li>
							<p class="tit">1:1 개별 맞춤형<br>정시지원 포트폴리오 제공</p>
							<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont01_img2.jpg" alt="" /></div>
							<p class="txt"><strong>학생 지원 성향과 수능성적을<br>고려한</strong>  1:1 개별 맞춤형 전략적<br>정시지원 포트폴리오 제공</p>
						</li>
						<li>
							<p class="tit">러셀만의 데이터와<br>실제 합격사례</p>
							<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont01_img3.jpg" alt="" /></div>
							<p class="txt">메가스터디 러셀의 <strong>객관적 데이터</strong>와<br>러셀만의 <strong>실제 입결사례</strong>를 토대로<br>합격 가능성 분석 및 예측</p>
						</li>
						<li>
							<p class="tit">Final Call을 통한<br>최종 피드백</p>
							<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont01_img4.jpg" alt="" /></div>
							<p class="txt">최종 지원 전,<br> 
								Final Call 진행을 통해<br> 
								<strong>실시간 변수에 즉각 대응</strong> 
							</p>
						</li>
					</ul>
				</div>
				<div class="c-box02">
					<p class="mt100"><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont01_stit02.png" alt="입시의 과거와 현재를 토대로 미래를 꿰뚫는 대입 전문 컨설턴트" /></p>
					<div class="mt70">
						<img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont01_img5.png" alt="" />
						<ul class="blind">
							<li>
								러셀 입시전략연구소 대표 컨설턴트 이상연 소장
								<p>
									(現) 러셀 입시전략연구소 소장
									(前) 러셀 강남학원 부원장
									(前) 러셀 강남학원 인문/자연 최상위권반 4년 연속 담임
									(前) 신촌메가스터디 자연계열 최상위권반 5년 연속 담임
								</p>
							</li>
							<li>
								러셀 입시전략연구소 대표 컨설턴트 김광석 부소장
								<p>
									(現) 러셀 입시전략연구소 부소장
									(前) 메가스터디 대입컨설팅센터 대표 컨설턴트
									(前) 강북메가스터디 입시전략연구소 수석연구원
								</p>
							</li>
						</ul>
					</div>
					<!-- 컨설턴트 롤링 -->
					<div class="roll-swiper swiper-container">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/c_psj.jpg" alt="수석 컨설턴트 박성재" /></div>
							</div>
							<div class="swiper-slide">
								<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/c_gsh.jpg" alt="수석 컨설턴트 고성호" /></div>
							</div>
							<div class="swiper-slide">
								<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/c_ajs.jpg" alt="수석 컨설턴트 안중수" /></div>
							</div>
							<div class="swiper-slide">
								<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/c_csh.jpg" alt="수석 컨설턴트 추선호" /></div>
							</div>
							<div class="swiper-slide">
								<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/c_gjy.jpg" alt="수석 컨설턴트 구자영" /></div>
							</div>
							<div class="swiper-slide">
								<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/c_khs.jpg" alt="수석 컨설턴트 김형석" /></div>
							</div>
							<div class="swiper-slide">
								<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/c_pgh.jpg" alt="수석 컨설턴트 박규한" /></div>
							</div>
							<div class="swiper-slide">
								<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/c_lsw.jpg" alt="수석 컨설턴트 이상원" /></div>
							</div>
							<div class="swiper-slide">
								<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/c_cjk.jpg" alt="수석 컨설턴트 최정길" /></div>
							</div>
							<div class="swiper-slide">
								<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/c_gjj.jpg" alt="수석 컨설턴트 구자진" /></div>
							</div>
						</div>
					</div>
					<p class="mb90 mt80"><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont01_stit03.png" alt="다년간의 경험에 기반한 세밀한 분석, 현 대입의 흐름을 읽는 정확한 예측을 토대로 최선의 정시 지원 전락을 제시해 드립니다." /></p>
				</div>
				<div class="c-box03">
					<p class="mt100"><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont01_stit04.png" alt="2023 러셀 입시전략연구소 컨설팅 진행 순서" /></p>
					<div class="progress-step">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont01_img6.png" alt="" /></div>
						<ul>
							<li class="step01">
								<dl>
									<dt>1단계</dt>
									<dd>수능 성적표 분석</dd>
								</dl>
							</li>
							<li class="step02">
								<dl>
									<dt>2단계</dt>
									<dd>지원가능<br>대학&middot;학과 검토</dd>
								</dl>
							</li>
							<li class="step03">
								<dl>
									<dt>3단계</dt>
									<dd>지원 성향을 고려한<br>전략 수립</dd>
								</dl>
							</li>
							<li class="step04">
								<dl>
									<dt>4단계</dt>
									<dd>Cross Checking을<br>통한 최적의 전략 제시</dd>
								</dl>
							</li>
							<li class="step05">
								<dl>
									<dt>5단계</dt>
									<dd>전략 구성안<br>포트폴리오 제공</dd>
								</dl>
							</li>
							<li class="step06">
								<dl>
									<dt>6단계</dt>
									<dd>Final Call 진행</dd>
								</dl>
							</li>
						</ul>
					</div>
					<ul>
						<li>
							<dl>
								<dt>1단계</dt>
								<dd>수능 성적표 분석</dd>
							</dl>
							<p>수능 성적표 및 학생생활기록부(선택사항)분석을 통한<br>나의 객관적 위치 파악</p>
						</li>
						<li>
							<dl>
								<dt>2단계</dt>
								<dd>지원가능 대학&middot;학과 검토</dd>
							</dl>
							<p>나의 유불리 파악+대학별 반영비율 및 환산점수 분석+<br>당해년도 입시변수 예측 &gt; 지원 유리 대학 검토/선정</p>
						</li>
						<li>
							<dl>
								<dt>3단계</dt>
								<dd>지원 성향을 고려한 전략 수립</dd>
							</dl>
							<p>진로 및 적성에 맞는 학과 추천+상향/소신/적정/안정 등<br>지원 성향에 따른 맞춤 전략 수립</p>
						</li>
						<li>
							<dl>
								<dt>4단계</dt>
								<dd>Cross Checking을 통한 최적의 전략 제시</dd>
							</dl>
							<p>러셀 대표 컨설턴트들의 Cross Checking을 통한<br>전략구성안 최종 수립</p>
						</li>
						<li>
							<dl>
								<dt>5단계</dt>
								<dd>전략 구성안 포트폴리오 제공</dd>
							</dl>
							<p>러셀만의 특별한 입시 노하우와 DB &gt; 여러 변수와<br>추가합격까지 고려한 전략적 정시 포트폴리오 제공</p>
						</li>
						<li>
							<dl>
								<dt>6단계</dt>
								<dd>Final Call 진행</dd>
							</dl>
							<p>최종 지원 전 Final Call 진행을 통해 실시간 변수에 대응/<br>세밀한 피드백 제시</p>
						</li>
					</ul>
					<p class="mb80"><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont01_stit05.png" alt="전문 컨설턴트와의 1:1 컨설팅을 통해 최상의 정시 지원 전략을 도출합니다." /></p>
				</div>
			</div>
		</div>
		<!-- //cont01 -->
	</div>
	<!-- //tab01 -->
	
	<!-- tab02 -->
	<div class="cont js-cont">
		<!-- cont02 -->
		<div class="cont02">
			<div class="inner">
				<p><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont02_tit.png" alt="컨설팅 추천 의사 100% 생생한 컨설팅 후기, 러셀 입시전략연구소 정시 컨설팅 고객님들의 실제 후기입니다." /></p>
				<ul class="remark-01">
					<li>*러셀 입시전략연구소 컨설팅 후기 설문 대상자 기준</li>
				</ul>
				<div class="review-rolling swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<p>
								선생님, 사실 제가 일을 하다 보니 입시에 대해서 전혀 몰랐다가 <span>선생님 뵙고는 구세주 만난 기분입니다.</span><br> 
								끝까지 도움 주심에 너무 감사드리고, 덕분에 잘 마무리 할 수 있었습니다. 정말 감사드립니다!!
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								안녕하세요. 저번에 000 소개 통해서 상담 받았던 학생 000입니다. 선생님 덕분에 정시 원서를 현명하게 작성할 수 있었고,<br>결국 <span>서울대학교 경제학부에 최초합격</span> 할 수 있었습니다! 정말 감사드리고, 새해 복 많이 받으세요!!
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								안녕하세요. 컨설팅 해주셨던 000엄마입니다.<span>선생님 덕분에 00이가 <strong>고대 독문과 합격</strong></span>했다는 좋은 소식을 드립니다^^ <br><span>상담 때 저희 아이 성적에 유리한 대학으로만 쏙쏙 골라주셔서 한결 수월하게  원서 쓸 수 있었던 것 같아요!</span><br>원서 넣는 마지막까지 챙겨주셔서 진심으로 감사드리고 아이가 너무 기뻐하네요ㅎㅎ 항상 행복하세요 선생님~
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								쌤~~ 저 <span>한양대 합격했어요!!</span> 덕분에 원서 잘 쓴거 같아요. 이 은혜 잊지 않겠습니다. 항상 건강하세요! -000 드림
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								선생님 감사합니다. <span>덕분에 00이 숙대 아동복지학과 합격통지서 받았어요.</span> 선생님 아니었음 숙대는 써볼 생각도 못했을거에요ㅠㅠ 넘 감사합니다. 
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								안녕하세요 선생님~ <span>저희 00이 부산치대 합격했습니다.</span> 결과 나올 때까지 노심초사 했는데 선생님의 현명한 지혜 덕분에 성공한 것 같습니다. <br>정말 많이 감사드려요. 코로나에 건강 조심하시고, 새해 복 많이 받으세요^^
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								선생님!!! <span>저 오늘 연대 5차 추합했습니다ㅠㅠ</span> 결과 보자마자 선생님 생각나서 바로 연락드려요! 예비 보고 이게 될까? 약간 불안했었는데 <br>
								<span>결과적으로 선생님 믿고 원서 쓰기 너무 잘한 것 같아요</span>ㅠㅠ 그저 너무너무 감사드립니다.<br>선생님 은혜 잊지 않고 캠퍼스 생활 열심히 하겠습니다. 항상 건강하세요♥
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								안녕하세요 선생님! <span><strong>홍익대 추추합으로 합격</strong></span>했습니다. 여러가지로 막막해하던 때에 이런 결과를 받아서 저희 부부는 너무 감사해하고 있습니다.<br> 친절하게 긴 시간 상담해주셔서 정말 감사했습니다. <span>올 한해 선생님께서 상담해주신 덕분에 아이가 내년에 갈 곳이 생겼습니다.</span><br> 정말 다행이고 진심으로 감사드려요. 늘 건강하시고 하시는 모든 일 번창하시기를 기원합니다. -000 올림
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								선생님~ <span>00이 건대 최초합 했습니다. 말씀해주신 곳이 좀 더 낮은 경쟁률이었어요.</span> <br>좋은 결과 드릴 수 있어 다행이고 큰 도움 주신 점 정말 감사드립니다. 즐거운 주말 보내세요^^
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								선생님 안녕하세요. <span>오늘 중앙대 합격 통지 받았습니다.</span> 아무래도 00이가 거의 막차를 탄 것 같네요. <span>컨설팅 끝난 이후에도 끝까지 <br>피드백 전화 해주시고 친절하게 설명해주셔서</span> 너무 감사했습니다. 날이 추운데 건강 조심하시고 다시 한 번 감사드린다는 말씀 전합니다. 
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								안녕하세요 선생님. 000 엄마입니다. <span>00이 고대 합격</span>했습니다~^^ <span>수능 접수 시점까지 전화와 카톡으로 내 일처럼 상담해주셔서 너무 감사드립니다.<br></span> 기나긴 1년이 지나고 드디어 입시 끝이네요. 합격 발표나면 꼭 감사인사 드리고 싶었습니다. 내후년 00이 입시 때 또 찾아뵐게요. 항상 건강하세요
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								쌤! 잘 지내시죠??? 저 오늘 <span>외대 3차 추합</span>됐습니다!! 와~~ 추합 화면 보자마자 소리질렀어요ㅋㅋ <br><span>전 제 성적으로 건동홍만 가도 다행이다 생각했는데 외대라니.. 진짜 쌤 만나서 정시 성공한 것 같아요ㅜㅜ!!</span> 너무 너무 감사드려요!! <br>ㅎㅎ 휴 이제 두 다리 뻗고 자도 되겠죠?? 쌤은 정말 정시의 신.. 편안한 밤 되세요~ㅎㅎ
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								선생님 안녕하세요. 00이 오늘 한양대를 끝으로 <span>지원 대학 3곳 모두 올킬입니다.</span> 선생넘 덕분에 입시 잘 마무리 할 수 있었던 것 같아 진심으로 감사드립니다. <br><span>차분하고 논리적으로 설명해주신 선생님 덕분에 저희도 믿고 원서 쓸 수 있었어요.</span>  주변 분들에게도 추천 많이 하겠습니다. 감사합니다.
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								안녕하세요 선생님! 00엄마입니다. 00이 <span>중대 약대 합격했습니다.</span> 아이가 재수하면서 심적으로 많이 힘들어했는데 선생님 덕분에 원서 잘 쓰고 <br>원하는 대학 합격한 모습을 보니 감격스럽습니다. <span>상담 때 해주신 따뜻한 말씀 덕분에 아이가 희망도 얻고 자신감도 가질 수 있었어요.</span> <br>정시 기간 내내 큰 도움 주신 선생님께 감사한 맘 잊지 않겠습니다. 정말 감사합니다!
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								안녕하세요 000 엄마입니다. 오늘 00이가 <span>성균관대 추가합격을 했습니다. 학원에서 처음 상담받은 날 이후에도 답답한 마음에 <br>전화나 카톡 많이 드렸는데 매번 빠르게 피드백</span> 주셔서 얼마나 감사했는지 모릅니다.<br>제가 입시는 잘 몰라 선생님이 저희에겐 유일한 희망이셨어요. 연말에 너무 고생 많으셨고 항상 건강하시기 바랍니다. 감사합니다. 
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								선생님, 사실 제가 일을 하다 보니 입시에 대해서 전혀 몰랐다가 <span>선생님 뵙고는 구세주 만난 기분입니다.</span><br> 
								끝까지 도움 주심에 너무 감사드리고, 덕분에 잘 마무리 할 수 있었습니다. 정말 감사드립니다!!
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								안녕하세요. 저번에 000 소개 통해서 상담 받았던 학생 000입니다. 선생님 덕분에 정시 원서를 현명하게 작성할 수 있었고,<br>결국 <span>서울대학교 경제학부에 최초합격</span> 할 수 있었습니다! 정말 감사드리고, 새해 복 많이 받으세요!!
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								안녕하세요. 컨설팅 해주셨던 000엄마입니다.<span>선생님 덕분에 00이가 <strong>고대 독문과 합격</strong></span>했다는 좋은 소식을 드립니다^^ <br><span>상담 때 저희 아이 성적에 유리한 대학으로만 쏙쏙 골라주셔서 한결 수월하게  원서 쓸 수 있었던 것 같아요!</span><br>원서 넣는 마지막까지 챙겨주셔서 진심으로 감사드리고 아이가 너무 기뻐하네요ㅎㅎ 항상 행복하세요 선생님~
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								쌤~~ 저 <span>한양대 합격했어요!!</span> 덕분에 원서 잘 쓴거 같아요. 이 은혜 잊지 않겠습니다. 항상 건강하세요! -000 드림
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								선생님 감사합니다. <span>덕분에 00이 숙대 아동복지학과 합격통지서 받았어요.</span> 선생님 아니었음 숙대는 써볼 생각도 못했을거에요ㅠㅠ 넘 감사합니다. 
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								안녕하세요 선생님~ <span>저희 00이 부산치대 합격했습니다.</span> 결과 나올 때까지 노심초사 했는데 선생님의 현명한 지혜 덕분에 성공한 것 같습니다. <br>정말 많이 감사드려요. 코로나에 건강 조심하시고, 새해 복 많이 받으세요^^
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								선생님!!! <span>저 오늘 연대 5차 추합했습니다ㅠㅠ</span> 결과 보자마자 선생님 생각나서 바로 연락드려요! 예비 보고 이게 될까? 약간 불안했었는데 <br>
								<span>결과적으로 선생님 믿고 원서 쓰기 너무 잘한 것 같아요</span>ㅠㅠ 그저 너무너무 감사드립니다.<br>선생님 은혜 잊지 않고 캠퍼스 생활 열심히 하겠습니다. 항상 건강하세요♥
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								안녕하세요 선생님! <span><strong>홍익대 추추합으로 합격</strong></span>했습니다. 여러가지로 막막해하던 때에 이런 결과를 받아서 저희 부부는 너무 감사해하고 있습니다.<br> 친절하게 긴 시간 상담해주셔서 정말 감사했습니다. <span>올 한해 선생님께서 상담해주신 덕분에 아이가 내년에 갈 곳이 생겼습니다.</span><br> 정말 다행이고 진심으로 감사드려요. 늘 건강하시고 하시는 모든 일 번창하시기를 기원합니다. -000 올림
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								선생님~ <span>00이 건대 최초합 했습니다. 말씀해주신 곳이 좀 더 낮은 경쟁률이었어요.</span> <br>좋은 결과 드릴 수 있어 다행이고 큰 도움 주신 점 정말 감사드립니다. 즐거운 주말 보내세요^^
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								선생님 안녕하세요. <span>오늘 중앙대 합격 통지 받았습니다.</span> 아무래도 00이가 거의 막차를 탄 것 같네요. <span>컨설팅 끝난 이후에도 끝까지 <br>피드백 전화 해주시고 친절하게 설명해주셔서</span> 너무 감사했습니다. 날이 추운데 건강 조심하시고 다시 한 번 감사드린다는 말씀 전합니다. 
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								안녕하세요 선생님. 000 엄마입니다. <span>00이 고대 합격</span>했습니다~^^ <span>수능 접수 시점까지 전화와 카톡으로 내 일처럼 상담해주셔서 너무 감사드립니다.<br></span> 기나긴 1년이 지나고 드디어 입시 끝이네요. 합격 발표나면 꼭 감사인사 드리고 싶었습니다. 내후년 00이 입시 때 또 찾아뵐게요. 항상 건강하세요
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								쌤! 잘 지내시죠??? 저 오늘 <span>외대 3차 추합</span>됐습니다!! 와~~ 추합 화면 보자마자 소리질렀어요ㅋㅋ <br><span>전 제 성적으로 건동홍만 가도 다행이다 생각했는데 외대라니.. 진짜 쌤 만나서 정시 성공한 것 같아요ㅜㅜ!!</span> 너무 너무 감사드려요!! <br>ㅎㅎ 휴 이제 두 다리 뻗고 자도 되겠죠?? 쌤은 정말 정시의 신.. 편안한 밤 되세요~ㅎㅎ
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								선생님 안녕하세요. 00이 오늘 한양대를 끝으로 <span>지원 대학 3곳 모두 올킬입니다.</span> 선생넘 덕분에 입시 잘 마무리 할 수 있었던 것 같아 진심으로 감사드립니다. <br><span>차분하고 논리적으로 설명해주신 선생님 덕분에 저희도 믿고 원서 쓸 수 있었어요.</span>  주변 분들에게도 추천 많이 하겠습니다. 감사합니다.
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								안녕하세요 선생님! 00엄마입니다. 00이 <span>중대 약대 합격했습니다.</span> 아이가 재수하면서 심적으로 많이 힘들어했는데 선생님 덕분에 원서 잘 쓰고 <br>원하는 대학 합격한 모습을 보니 감격스럽습니다. <span>상담 때 해주신 따뜻한 말씀 덕분에 아이가 희망도 얻고 자신감도 가질 수 있었어요.</span> <br>정시 기간 내내 큰 도움 주신 선생님께 감사한 맘 잊지 않겠습니다. 정말 감사합니다!
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								안녕하세요 000 엄마입니다. 오늘 00이가 <span>성균관대 추가합격을 했습니다. 학원에서 처음 상담받은 날 이후에도 답답한 마음에 <br>전화나 카톡 많이 드렸는데 매번 빠르게 피드백</span> 주셔서 얼마나 감사했는지 모릅니다.<br>제가 입시는 잘 몰라 선생님이 저희에겐 유일한 희망이셨어요. 연말에 너무 고생 많으셨고 항상 건강하시기 바랍니다. 감사합니다. 
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //cont02 -->
		<!-- cont03 -->
		<div class="cont03">
			<p><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_tit.png" alt="대입 합격의 길을 함께 찾아나가는 컨설팅 현장 갤러리 러셀 입시전략연구소의 뜨거운 컨설팅 현장을 소개합니다." /></p>
			<div class="gall-rolling swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling01.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling02.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling03.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling04.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling05.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling06.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling07.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling08.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling09.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling10.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling11.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling12.png" alt="" /></div>
					</div>
				</div>
			</div>
			<div class="gall-rolling02 swiper-container" dir="rtl">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling12.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling11.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling10.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling09.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling08.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling07.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling06.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling05.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling04.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling03.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling02.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont03_rolling01.png" alt="" /></div>
					</div>
				</div>
			</div>
		</div>
		<!-- //cont03 -->
	</div>
	<!-- //tab02 -->
	
	<!-- tab03 -->
	<div class="cont js-cont">
		<!-- cont04 -->
		<div class="cont04">
			<div class="inner">
				<p><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont04_tit01.png" alt="나만의 맞춤 전략과 경쟁력을 확보할 수 있는 1:1 정시 지원 컨설팅, 정시 지원 컨설팅 안내" /></p>
				<div class="mt50">
					<table class="tbl-01 type01">
						<colgroup>
							<col style="width:20%">
							<col style="width:auto;">
						</colgroup>
						<tbody>
							<tr>
								<th>&middot; 컨설팅 장소</th>
								<td>
									<ul class="c-list">
										<li>
											러셀 대치 <a href="https://russeldc.megastudy.net/russel/info/location.asp" target="_blank">오시는 길</a>
										</li>
										<li>
											러셀 목동 <a href="https://russelmd.megastudy.net/russel_mokdong/info/location.asp" target="_blank">오시는 길</a>
										</li>
										<li>
											러셀 분당 <a href="https://russelbd.megastudy.net/russel_bundang/info/location.asp" target="_blank">오시는 길</a>
										</li>
									</ul>
								</td>
							</tr>
							<tr>
								<th>&middot; 컨설팅 일정</th>
								<td>
									<p>
										12/23(금) ~ 12/29(목) 7일간 진행 (운영시간: 10시~18시까지)
										<ul class="remark-02 red_txt">
											<li>*상담은 스케줄에 따라 진행되며, 스케줄은 유선 안내 시 조정합니다</li>
										</ul>
									</p>
									<div>
										<p><strong class="fz20 txt_center">2022.12</strong></p>
										<table class="tbl-01 type02">
											<colgroup>
												<col style="width:auto;">
												<col style="width:auto;">
												<col style="width:auto;">
												<col style="width:auto;">
												<col style="width:auto;">
												<col style="width:auto;">
												<col style="width:auto;">
											</colgroup>
											<thead>
												<tr>
													<th>일</th>
													<th>월</th>
													<th>화</th>
													<th>수</th>
													<th>목</th>
													<th>금</th>
													<th>토</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>
														<span>11</span>
													</td>
													<td>
														<span>12</span>
													</td>
													<td>
														<span>13</span>
													</td>
													<td>
														<span>14</span>
													</td>
													<td>
														<span>15</span>
													</td>
													<td>
														<span>16</span>
													</td>
													<td>
														<span>17</span>
													</td>
												</tr>
												<tr>
													<td>
														<span>18</span>
													</td>
													<td>
														<span>19</span>
													</td>
													<td>
														<span>20</span>
													</td>
													<td>
														<span>21</span>
													</td>
													<td>
														<span>22</span>
													</td>
													<td class="bg-green">
														<span>23</span>
														분당
													</td>
													<td class="bg-green">
														<span>24</span>
														분당
													</td>
												</tr>
												<tr>
													<td class="bg-pink">
														<span>25</span>
														목동
													</td>
													<td class="bg-pink">
														<span>26</span>
														목동
													</td>
													<td class="bg-yellow">
														<span>27</span>
														대치
													</td>
													<td class="bg-yellow">
														<span>28</span>
														대치
													</td>
													<td class="bg-yellow">
														<span>29</span>
														대치
													</td>
													<td>
														<span>30</span>
													</td>
													<td>
														<span>31</span>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<th>&middot; 제출 서류</th>
								<td>
									<p>
										<ul class="c-list">
											<li>필수 제출 서류: 수능 성적표</li>
											<li>선택 제출 서류: 내신 성적표</li>
										</ul>
										<ul class="remark-02 red_txt">
											<li>*신청 팝업에서 이미지 또는 PDF파일 첨부</li>
										</ul>
									</p>
								</td>
							</tr>
							<tr>
								<th>&middot; 비용 안내</th>
								<td class="txt_left">450,000원</td>
							</tr>
						</tbody>
					</table>
				</div>
				<p class="mt130"><img src="<%=Application("img_path_russel")%>/intro/2023/consulting/cont04_tit02.png" alt="정시 컨설팅 예약접수 절차" /></p>
				<ul class="step-list">
					<li>
						<dl>
							<dt>STEP 1</dt>
							<dd>
								<p>
									온라인 페이지 <span>예약접수</span> 진행<br>
									(22년 11/28(월)~)
								</p>
								<ul class="remark-03">
									<li>*접수 시 수능성적표 첨부必</li>
								</ul>
							</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>STEP 2</dt>
							<dd>
								<p>
									예약접수 내용 확인 후 <span>안내전화</span>
								</p>
							</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>STEP 3</dt>
							<dd>
								<p>
									*<span>결제</span> 진행<br><span class="txt_gold">(2일 이내 결제)必</span>
								</p>
							</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>STEP 4</dt>
							<dd>
								<p>
									<span>컨설팅 신청 완료</span><br>(안내문자 발송)
								</p>
							</dd>
						</dl>
					</li>
				</ul>
				<ul class="remark-04">
					<li>
						<p class="red_txt">※ 컨설팅 신청 전 확인해주세요!</p>
						<ul>
							<li>정시 지원 컨설팅은 선착순 예약접수로 진행됩니다.<br>(선착순 마감 시 대기 접수를 진행하며, 상황에 따라 예약 및 신청이 조기 종료될 수 있습니다.)</li>
							<li>온라인 페이지에서는 예약접수만 진행 가능합니다.</li>
							<li>컨설팅 결제완료 및 수험생의 성적 자료 확인 후 컨설팅 신청이 완료됩니다.</li>
							<li>고른기회, 다자녀전형, 예체능전형 등 특수전형은 상담을 진행하지 않습니다.</li>
							<li>상담은 학원 현장에서 대면으로 이루어지며, 비대면 상담은 진행하지 않습니다.</li>
							<li class="red_txt">컨설팅 예약접수 안내전화 후 2일 이내에 결제가 이루어지지 않는 경우, 접수 내역이 자동으로 취소됩니다.</li>
							<li class="red_txt">(결제) 환불은 신청한 상담일 기준 최소 2일 전에 요청하셔야 불이익이 없습니다.</li>
							<li class="red_txt">온라인 접수 수정&amp;취소는 12/16(금)까지 가능합니다.</li>
							
							<li>
								예약/결제/취소 문의는 페이지 상단에서 
								<a href="javascript:void(0);" onclick="fn_qnaGo()" class="link-btn">온라인 문의</a>
								학원 선택 > ‘입시전략연구소’ 선택 후 문의 또는 02-3498-4332(평일 10:00 ~ 18:00 상담 운영)로 문의주시기 바랍니다.
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<!-- //cont04 -->
	</div>
	<!-- //tab03 -->
</div>
<!-- consulting-wrap -->



<!--  공통 하단 //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->


<script src="./ui.js"></script>
<script>
	
	// 팝업창
	var popupWidth = 810;
	var popupX = (window.screen.width / 2) - (popupWidth / 2);

	// 온라인 문의 팝업
	function fn_qnaGo() {
		
		<% If gLoginOk = false Then %>
			alert("로그인 후 이용가능합니다.");
			location.href="/russel/member/login.asp?rtnUrl=%2Frussel%2Finfo%2Fqna%2Fqna_write%2Easp?mode=consult_qna"
			return;
		<% else %>
			window.open('/russel/info/qna/qna_write.asp?mode=consult_qna')
		<% End If %>

	}
	
	// 온라인 접수 팝업
	function fn_eventGo() {
		<% IF curYmdhmin >= 202312300000 AND applyStatus = 0 Then '2023-11-04 강희경 파트장님 요청 : 202212300000 -> 202312300000 %>
			alert("마감 되었습니다.");
			return;
		<% End If %>

		<% If gLoginOk = false Then %>
			alert("로그인 후 이용가능합니다.");
			location.href="/russel/member/login.asp?rtnUrl=%2Fintro%2F2023%2Fconsulting%2Findex%2Easp%3F"
			return;
		<% else %>
			window.open('./popup.asp','online_qna','scrollbars=yes,width=810,height=1500,top=0,left='+ popupX);
		<% End If %>
	}

</script>
</body>
</html>
