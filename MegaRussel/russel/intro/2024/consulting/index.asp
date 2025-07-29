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
		strSql = strSql & " 	AND EC_YEAR = 2024 " ' 2024 학년도
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
    <meta name="title" content="2024 러셀 입시전략연구소 정시 지원 컨설팅" />
    <meta name="keywords" content="2024 러셀 입시전략연구소 정시 지원 컨설팅,2023 정시 지원 컨설팅" />
	<meta name="description" content="2024 러셀 입시전략연구소 정시 지원 컨설팅" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2024 러셀 입시전략연구소 정시 지원 컨설팅">
	<meta property="og:description" content="2024 러셀 입시전략연구소 정시 지원 컨설팅" />
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
			<p><img src="<%=Application("img_path_russel")%>/intro/2024/consulting/visual_tit_sub.png" alt="" /></p>
			<p><img src="<%=Application("img_path_russel")%>/intro/2024/consulting/visual_tit.png" alt="" /></p>
			<div class="info-txt">
				<div>
					<dl>
						<dt>신청 기간</dt>
						<dd>2023.11.22(수) 10:00 ~ <span>선착순 신청 마감시까지</span></dd>
					</dl>
					<dl>
						<dt>컨설팅 일정</dt>
						<dd>2023.12.23(토) ~ 2024.01.01(월)</dd>
					</dl>
				</div>
			</div>
			<div class="info-link">
				<a href="javascript:void(0);" class="btn-m-gray" onclick="fn_qnaGo()">온라인 문의</a>
				<% If applyStatus = 0 then %>
				<a href="javascript:void(0);" class="btn-m-blue" onclick="fn_eventGo()">온라인 접수 바로가기</a> 
				<% else %>
				<a href="javascript:void(0);" class="btn-m-blue" onclick="fn_historyGo()">온라인 접수 내역 확인</a>
				<% end if %>


				<!-- D: 미로그인시 -->
				<!-- <a href="javascript:void(0);" class="btn-m-gold" onclick="alert('로그인 후 이용 가능합니다.')">온라인 접수 바로가기</a> -->
				<!-- D: 로그인시 미접수자의 경우 노출-->
				<!--<a href="javascript:void(0);" onclick="fn_eventGo()" class="btn-m-gold">온라인 접수 바로가기</a>-->
				
				<!-- D: 로그인시 온라인접수 '접수완료','대기완료'자의 경우 노출 -->
				<!-- <a href="javascript:void(0);" class="btn-m-gold">온라인 접수 내역 확인</a> -->
				<!-- 12/22(금) 24시 이후 접근 시 신청이력과 무관하게 얼럿 표출하여 신청 불가하도록 처리 “마감 되었습니다.” -->
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
					<span class="blind">2024 정시 지원 컨설팅 안내</span>
				</a>
			</div>
		</div>
	</nav>
	<!-- tab01 -->
	<div class="cont js-cont">
		<!-- cont01 -->
		<div class="cont01">
			<div class="inner">
				<p><img src="<%=Application("img_path_russel")%>/intro/2024/consulting/cont01_tit.png" alt="왜 러셀 입시전략연구소를 선택해야 할까요?" /></p>
				<div class="c-box01">
					<p class="pt100 pb50"><img src="<%=Application("img_path_russel")%>/intro/2024/consulting/cont01_stit.png" alt="복잡한 입시 미로를 함께 헤쳐나갈 단 하나의 컨설팅, 러셀 입시전략연구소의 대입 전문가들과 함께 복잡한 입시 미로 속에서 최적의 길을 찾아가시기 바랍니다." /></p>
					<p><img src="<%=Application("img_path_russel")%>/intro/2024/consulting/cont01_puzzle.png" alt="퍼즐모양" /></p>
				</div>
			</div>
		</div>
		<!-- //cont01 -->

		<!-- cont02 -->
		<div class="cont02">
			<div class="inner">
				<p><img src="<%=Application("img_path_russel")%>/intro/2024/consulting/cont02_tit.png" alt="6단계 process의 컨설팅" /></p>
				<div class="c-box01">
					<p><img src="<%=Application("img_path_russel")%>/intro/2024/consulting/cont02_cont.png" alt="" /></p>
					<p class="pt70"><img src="<%=Application("img_path_russel")%>/intro/2024/consulting/cont02_stit.png" alt="최상의 정시 지원 전략을 도출합니다" /></p>
				</div>
			</div>
		</div>
		<!-- //cont02 -->

		<!-- cont03 -->
		<div class="cont03">
			<div class="inner">
				<p><img src="<%=Application("img_path_russel")%>/intro/2024/consulting/cont03_tit.png" alt="미래를 꿰뚫는 대입전문 컨설턴트" /></p>
				<div class="c-box01">
					<p><img src="<%=Application("img_path_russel")%>/intro/2024/consulting/cont03_cont.png" alt="이상연 소장, 김광석 부소장" /></p>


					<!-- 컨설턴트 롤링 -->
					<div class="roll-swiper swiper-container">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="img">
									<img src="<%=Application("img_path_russel")%>/intro/2024/consulting/st_img01.jpg" alt="임광현" /> 
								</div>
							</div>
							<div class="swiper-slide">
								<div class="img">
									<img src="<%=Application("img_path_russel")%>/intro/2024/consulting/st_img02.jpg" alt="박일" /> 
								</div>
							</div>
							<div class="swiper-slide">
								<div class="img">
									<img src="<%=Application("img_path_russel")%>/intro/2024/consulting/st_img03.jpg" alt="고성호" /> 
								</div>
							</div>
							<div class="swiper-slide">
								<div class="img">
									<img src="<%=Application("img_path_russel")%>/intro/2024/consulting/st_img04.jpg" alt="안중수" /> 
								</div>
							</div>
							<div class="swiper-slide">
								<div class="img">
									<img src="<%=Application("img_path_russel")%>/intro/2024/consulting/st_img05.jpg" alt="박규한" /> 
								</div>
							</div>                    
							<div class="swiper-slide">
								<div class="img">
									<img src="<%=Application("img_path_russel")%>/intro/2024/consulting/st_img06.jpg" alt="이서두" /> 
								</div>
							</div>
							<div class="swiper-slide">
								<div class="img">
									<img src="<%=Application("img_path_russel")%>/intro/2024/consulting/st_img07.jpg" alt="김형석" /> 
								</div>
							</div>                    
							<div class="swiper-slide">
								<div class="img">
									<img src="<%=Application("img_path_russel")%>/intro/2024/consulting/st_img08.jpg" alt="서승환" /> 
								</div>
							</div>
							<div class="swiper-slide">
								<div class="img">
									<img src="<%=Application("img_path_russel")%>/intro/2024/consulting/st_img09.jpg" alt="정동환" /> 
								</div>
							</div>
							<div class="swiper-slide">
								<div class="img">
									<img src="<%=Application("img_path_russel")%>/intro/2024/consulting/st_img10.jpg" alt="나동현" /> 
								</div>
							</div>
							<div class="swiper-slide">
								<div class="img">
									<img src="<%=Application("img_path_russel")%>/intro/2024/consulting/st_img11.jpg" alt="채성길" /> 
								</div>
							</div>
							<div class="swiper-slide">
								<div class="img">
									<img src="<%=Application("img_path_russel")%>/intro/2024/consulting/st_img12.jpg" alt="최정길" /> 
								</div>
							</div>
						</div>
					</div>
					<!-- //컨설턴트 롤링 -->

					<p><img src="<%=Application("img_path_russel")%>/intro/2024/consulting/cont03_stit.png" alt="최선의 정시 지원 전략을 제시해 드립니다." /></p>
				</div>
			</div>
		</div>
		<!-- //cont03 -->

		<!-- cont04 -->
		<div class="cont04">
			<div class="inner">
				<p><img src="<%=Application("img_path_russel")%>/intro/2024/consulting/cont04_tit.png" alt="컨설팅 추천 의사 100% 생생한 컨설팅 후기, 러셀 입시전략연구소 수시 컨설팅 고객님들의 실제 후기입니다." /></p>
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
								안녕하세요. 저번에 000 소개 통해서 상담 받았던 학생 000입니다. 선생님 덕분에 수시 원서를 현명하게 작성할 수 있었고,<br>결국 <span>서울대학교 경제학부에 최초합격</span> 할 수 있었습니다! 정말 감사드리고, 새해 복 많이 받으세요!!
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								안녕하세요. 컨설팅 해주셨던 000엄마입니다. 선생님 덕분에 00이가 <strong>고대 독문과 합격</strong>했다는 좋은 소식을 드립니다^^ <br><span>상담 때 저희 아이 성적에 유리한 대학으로만 쏙쏙 골라주셔서 한결 수월하게  원서 쓸 수 있었던 것 같아요!</span><br>원서 넣는 마지막까지 챙겨주셔서 진심으로 감사드리고 아이가 너무 기뻐하네요ㅎㅎ 항상 행복하세요 선생님~
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
								안녕하세요 선생님! <span>홍익대 추추합으로 합격</span>했습니다. 여러가지로 막막해하던 때에 이런 결과를 받아서 저희 부부는 너무 감사해하고 있습니다.<br> 친절하게 긴 시간 상담해주셔서 정말 감사했습니다. <span>올 한해 선생님께서 상담해주신 덕분에 아이가 내년에 갈 곳이 생겼습니다.</span><br> 정말 다행이고 진심으로 감사드려요. 늘 건강하시고 하시는 모든 일 번창하시기를 기원합니다. -000 올림
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
								쌤! 잘 지내시죠??? 저 오늘 <span>외대 3차 추합</span>됐습니다!! 와~~ 추합 화면 보자마자 소리질렀어요ㅋㅋ <br><span>전 제 성적으로 건동홍만 가도 다행이다 생각했는데 외대라니.. 진짜 쌤 만나서 수시 성공한 것 같아요ㅜㅜ!!</span> 너무 너무 감사드려요!! <br>ㅎㅎ 휴 이제 두 다리 뻗고 자도 되겠죠?? 쌤은 정말 수시의 신.. 편안한 밤 되세요~ㅎㅎ
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								선생님 안녕하세요. 00이 오늘 한양대를 끝으로 <span>지원 대학 3곳 모두 올킬입니다.</span> 선생넘 덕분에 입시 잘 마무리 할 수 있었던 것 같아 진심으로 감사드립니다. <br><span>차분하고 논리적으로 설명해주신 선생님 덕분에 저희도 믿고 원서 쓸 수 있었어요.</span>  주변 분들에게도 추천 많이 하겠습니다. 감사합니다.
							</p>
						</div>
						<div class="swiper-slide">
							<p>
								안녕하세요 선생님! 00엄마입니다. 00이 <span>중대 약대 합격했습니다.</span> 아이가 재수하면서 심적으로 많이 힘들어했는데 선생님 덕분에 원서 잘 쓰고 <br>원하는 대학 합격한 모습을 보니 감격스럽습니다. <span>상담 때 해주신 따뜻한 말씀 덕분에 아이가 희망도 얻고 자신감도 가질 수 있었어요.</span> <br>수시 기간 내내 큰 도움 주신 선생님께 감사한 맘 잊지 않겠습니다. 정말 감사합니다!
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
		<!-- //cont04 -->
		<!-- cont05 -->
		<div class="cont05">
			<p><img src="<%=Application("img_path_russel")%>/intro/2024/consulting/cont05_tit.png" alt="대입 합격의 길을 함께 찾아나가는 컨설팅 현장 갤러리 러셀 입시전략연구소의 뜨거운 컨설팅 현장을 소개합니다." /></p>
			<div class="gall-rolling swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting_susi/cont03_rolling01.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting_susi/cont03_rolling02.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting_susi/cont03_rolling03.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting_susi/cont03_rolling04.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting_susi/cont03_rolling05.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting_susi/cont03_rolling06.png" alt="" /></div>
					</div>
				</div>
			</div>
			<div class="gall-rolling02 swiper-container" dir="rtl">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting_susi/cont03_rolling06.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting_susi/cont03_rolling05.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting_susi/cont03_rolling04.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting_susi/cont03_rolling03.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting_susi/cont03_rolling02.png" alt="" /></div>
					</div>
					<div class="swiper-slide">
						<div><img src="<%=Application("img_path_russel")%>/intro/2023/consulting_susi/cont03_rolling01.png" alt="" /></div>
					</div>
				</div>
			</div>
		</div>
		<!-- //cont05 -->
	</div>
	<!-- //tab01 -->
	
	
	<!-- tab02 -->
	<div class="cont js-cont">
		<!-- cont06 -->
		<div class="cont06">
			<div class="inner">
				<p><img src="<%=Application("img_path_russel")%>/intro/2024/consulting/cont06_tit01.png" alt="나만의 맞춤 전략과 경쟁력을 확보할 수 있는 1:1 수시 지원 컨설팅, 수시 지원 컨설팅 안내" /></p>
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
										<li></li>
										<li>
											러셀 대치 <a href="https://russeldc.megastudy.net/russel/info/location.asp" target="_blank">오시는 길</a>
										</li>
										<li>
											러셀 목동 <a href="https://russelmd.megastudy.net/russel_mokdong/info/location.asp" target="_blank">오시는 길</a>
										</li>
										<li>
											러셀 분당 <a href="https://russelbd.megastudy.net/russel_bundang/info/location.asp" target="_blank">오시는 길</a>
										</li>
										<li>
											러셀 대구 <a href="https://russeldg.megastudy.net/russel_bundang/info/location.asp" target="_blank">오시는 길</a>
										</li>
									</ul>
								</td>
							</tr>
							<tr>
								<th>&middot; 컨설팅 일정</th>
								<td>
									<p>
										2023.12.23(토) ~ 2024.01.01(월)
										<ul class="remark-02 red_txt">
											<li>*상담은 아래 장소 및 일자에만 진행되며, 상담 시간은 유선 안내 시 조정합니다.</li>
										</ul>
									</p>
									<div>
										<p><strong class="fz20 txt_center">2023.12</strong></p>
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
											<tbody>
												<tr>
													<th>12/17(일)</th>
													<th>12/18(월)</th>
													<th>12/19(화)</th>
													<th>12/20(수)</th>
													<th>12/21(목)</th>
													<th>12/22(금)</th>
													<th>12/23(토)</th>
												</tr>
												<tr>
													<td colspan="6">미진행</td>
													<td class="bg-yellow">대치</td>
												</tr>
												<tr>
													<th>12/24(일)</th>
													<th>12/25(월)</th>
													<th>12/26(화)</th>
													<th>12/27(수)</th>
													<th>12/28(목)</th>
													<th>12/29(금)</th>
													<th>12/30(토)</th>
												</tr>
												<tr>
													<td class="bg-green">분당</td>
													<td class="bg-blue">대구</td>
													<td class="bg-blue">대구</td>
													<td class="bg-pink">목동</td>
													<td class="bg-yellow">대치</td>
													<td class="bg-pink">목동</td>
													<td class="bg-green">분당</td>
												</tr>
												<tr>
													<th>12/31(일)</th>
													<th>1/1(월)</th>
													<th colspan="5">1/2(화)</th>
												</tr>
												<tr>
													<td class="bg-yellow">대치</td>
													<td class="bg-yellow">대치</td>
													<td colspan="5">미진행</td>
												</tr>
											</tbody>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<th>&middot; 소요 시간</th>
								<td>
									<p>90분</p>
								</td>
							</tr>
							<tr class="scl-start">
								<th>&middot; 제출 서류</th>
								<td>
									<p>
										<ul class="remark-02">
											<li>필수 제출 서류: 2024학년도 대학수학능력시험(수능) 성적표</li>
											<li>선택 제출 서류: 학교생활기록부(학교생활기록부 반영 대학 지원 희망 등 필요시 제출)</li>
											<li class="red_txt">*제출 서류는 신청시 첨부 또는  <span>rsc@megastudy.net</span>으로 보내주시기 바랍니다.</li>
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
				<p class="mt150"><img src="<%=Application("img_path_russel")%>/intro/2024/consulting/cont06_tit02.png" alt="정시 컨설팅 예약접수 절차" /></p>
				<ul class="step-list">
					<li>
						<dl>
							<dt>STEP 1</dt>
							<dd>
								<p>
									온라인 페이지 <span>신청</span> 진행 <br>
									(2023.11/20(월) 10:00~)
								</p>
							</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>STEP 2</dt>
							<dd>
								<p>
									신청 내용 확인 후 <span>안내전화</span> <br>
									<span>(주말/공휴일 제외 1~3일 이내)</span>
								</p>
							</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>STEP 3</dt>
							<dd>
								<p>
									<span>결제</span> 진행 및 추가 서류 제출<br>
									<span>(안내전화 후 2일 이내 결제 必)</span><br>
									<span class="txt-navy">제출: rsc@megastudy.net</span>
								</p>
							</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>STEP 4</dt>
							<dd>
								<p>
									최종 확인 후 컨설팅 신청 <span>확정</span><br>
									<span class="bold2" style="color:#d77676">(안내문자 발송)</span>
								</p>
							</dd>
						</dl>
					</li>
				</ul>
				<ul class="remark-04">
					<li>
						<p class="red_txt scl-end">※ 컨설팅 신청 전 반드시 확인해 주세요!</p>
						<ul>
							<li>정시 지원 컨설팅은 선착순 신청으로 온라인 페이지에서만 신청 가능하며, 이외 유선 신청 등은 불가합니다. <br>(선착순 마감 시 대기 접수를 진행하며, 상황에 따라 예약 및 신청이 조기 종료될 수 있습니다.)</li>
							<li>상담은 학원 현장에서 대면으로 이루어지며, 비대면 상담은 진행하지 않습니다.</li>
							<li>고른기회(사회통합, 차상위, 한부모 등), 농어촌, 예체능, 특성화고교전형 등 특수전형과 전문대 상담은 진행하지 않습니다.</li>
							<li class="red_txt">결제 및 추가 서류 제출은 안내문자 발송 후 2일 이내 진행되어야 하며, 기간 내 미결제 및 미제출 시 신청이 취소될 수 있습니다. <br>
								제출 방법: 추가 제출 필요한 서류는 <span class="txt-navy">(rsc@megastudy.net)</span> 좌측 이메일 주소로 보내주시기 바랍니다.
							</li>
							<li class="red_txt">
								상담일로부터 2일(48시간) 미만 남은 경우 취소 요청 시, 취소 및 환불은 불가합니다.
  						 	</li>
							<li>신청내역 수정 및 추가 내용이 있는 경우, 수정 및 추가 내용을 <span class="txt-navy">rsc@megastudy.net</span> 으로 보내주시기 바랍니다.<br>
								(최소 상담 2일 전까지 보낼 시 반영 가능하며, 이후 상담 하루 전 혹은 당일은 반영이 불가할 수 있습니다.)
							</li>	
							<li>
								신청/대기 취소 요청 및 기타 컨설팅 관련 문의는 아래                                    
								<a href="javascript:void(0);" onclick="fn_qnaGo()" class="link-btn">온라인 문의</a>에서 학원 선택 > ‘입시전략연구소’ <br>
								선택 후 문의 또는 02-3498-4388(평일 10:00~18:00 운영, 주말 불가)로 문의주시기 바랍니다.
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<!-- //cont06 -->

		<div class="tst-pop-wrap">
			<div class="tst-pop">
				<p><img src="<%=Application("img_path_russel")%>/intro/2024/consulting/popup_tit.png" alt="" /></p>
				<ul>
					<% If applyStatus = 0 then %>
					<li><a href="javascript:void(0);" onclick="fn_eventGo()">온라인 접수 바로가기</a></li>
					<% else %>
					<li><a href="javascript:void(0);" onclick="fn_historyGo()">온라인 접수 내역 확인</a></li>
					<% end if %>
					<li><a href="javascript:void(0);" onclick="fn_qnaGo()">온라인 문의</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //tab02 -->
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
		<% If gLoginOk = false Then %>
			alert("로그인 후 이용가능합니다.");
			location.href="/russel/member/login.asp?rtnUrl=<%=Server.URLEncode(Request.Servervariables("PATH_INFO"))%>"
			return;
		<% else %>
			window.open('./popup.asp','online_qna','scrollbars=yes,width=1100,height=1500,top=0,left='+ popupX);
		<% End If %>
	}

	//온라인 접수 내역 확인
	function fn_historyGo(){
		<% If gLoginOk = false Then %>
			alert("로그인 후 이용가능합니다.");
			location.href="/russel/member/login.asp?rtnUrl=%2Fintro%2F2024%2Fconsulting%2Findex%2Easp%3F"
			return;
		<% Elseif applyStatus < 1 Then %>
			alert("온라인 접수를 신청해주세요.");
			return;
		<% Else %>
			// window.open('./popup.asp','online_qna','scrollbars=yes,width=1200,height=1500,top=0');
			alert("신청 내역 확인 후 별도 연락드릴 예정입니다.");
		<% End If %>
	}

</script>
</body>
</html>
