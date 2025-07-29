
<%
tit01 = "개강일"
txt01 = "8월 순차 개강"
tit02 = "접수방법"
txt02 = "현장 또는 온라인 접수"
txt03 = "현재 모집 중"
coment = "* 자세한 내용은 학원별 모집 요강 참조"

qTxt01 = "수능까지 체계적인<br>과목별/수준별 맞춤 단과"
qTxt02 = "정규&middot;특강 단과"
quickUrl = "/intro/danka/2023/07/go3.asp"
quickUrl2 = "javascript:alert('추후 오픈 예정입니다.');"
amUrl = "/intro/danka/2023/07/am.asp"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
					tit01 = "접수 현황"
					txt01 = "현재 모집 중"
					txt02 = "온라인 접수 <a href='https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=148' class='bt-apply'>원서접수 바로가기</a><br><span class='c-txt'>* 원서 접수 확인 후 개별 안내 예정</span>"
					txt03 = "현재 모집 중"
                    quickUrl = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1348"
					quickUrl2 = "javascript:alert('추후 오픈 예정입니다.');"
					applyUrl = ""
					amUrl = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1389"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
					txt01 = "상시 입학(매주 월/목)"
					txt02 = "온라인 접수"
                    txt03 = "현재 모집 중"
                    coment = ""
                    quickUrl = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1349"
					amUrl = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1390"
					end_txt = "전반 마감<br>대기자 접수 중"

    Case "CD0245": txtCampus = "러셀 목동"   '목동
                    campusName = "russel_mokdong"
					txt01 = "2/1(수)"
					tit02 = "접수 방법"
					txt02 = "현장 접수 (모집 예정)"
					quickUrl = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1350"
					amUrl = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1391"
					<!-- txt02 = "현장 접수 (온라인 접수 불가)" -->
					txt02 = "유선 문의 <br> <span class='c-txt width_385'>※ 여석 발생 시, 전형별 대기 접수 순서대로 문자 혹은 유선 안내 드리겠습니다.</span>"
					
    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
					txt01 = "매월 초 순차 개강"
					tit02 = "입학 문의"
					txt02 = "<a href='https://pf.kakao.com/_sFgGxj' class='underline02'>온라인 상담</a>"
					txt03 = "전화 상담 032.265.1010"
					coment = ""
					quickUrl = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1351"
					amUrl = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1402"

	Case "CD0244": txtCampus = "러셀 분당"   '분당
                    campusName = "russel_bundang"
					txt01 = "1차 : 2/20(월), 2차 : 2/27(월), 3차 : 3/2(목)"
					tit02 = "접수 기간"
					txt02 = "전석 마감, 대기자 접수 中 (*모집요강 지원자격 해당자 순 접수)"
					quickUrl = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1352"
					amUrl = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1393"
					end_txt = "전석 마감<br>(대기자 접수 中)"

	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
					txt01 = "2차 개강 : 2월 10일(금)<br>3차 개강 : 2월 27일(월)"
                    quickUrl = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1358"
					amUrl = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1398"
					txt02 = "현장 또는 온라인 접수 <a href='https://russelct.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=148' class='bt-apply'>원서접수 바로가기</a>"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
					txt01 = "매월 순차 개강"
					txt02 = "현장 접수<br><span class='fz12'>* 학원으로 잔여석을 확인해 주시기 바랍니다.</span>"
                    quickUrl = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1353"
					amUrl = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1394"

    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
					txt01 = "매월 초 개강"
                    quickUrl = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1354"
					amUrl = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1395"
					txt02 = "전석 마감 (대기자 접수 中)"
					end_txt = "전석 마감<br>(대기자 접수 中)"

	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"
					txt01 = "3월 순차개강"
					txt02 = "현장 접수"
					txt03 = "접수예정"
					coment = ""
                    quickUrl = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1355"
					amUrl = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1396"

	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"
					txt01 = "매월 초 순차 개강"
				   coment = "<a href='https://coregj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=148' class='bt-apply m0 mt10'>원서접수 바로가기</a>"
				   quickUrl = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1359"

	Case "CD0341": txtCampus = "러셀CORE 대전"   '코어대전
                    campusName = "core_dj"
					txt01 = "매월 초 개강"
					txt02 = "온라인 접수 <a href='https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=148' class='bt-apply'>원서접수 바로가기</a>"
					coment = "* 원서 접수 확인 후 개별 안내 예정"
                    quickUrl = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1360"

    Case "CD0342": txtCampus = "러셀 대구" '대구
                   campusName = "russel_dg"
				   txt01 = "10월 순차 개강"
				   txt02 = "온라인 접수"
				   txt03 = "현재 모집 중 <span class='fz11 gray'>*온라인 원서 접수 완료 시, 이후 입학절차에 대해 개별적으로 안내</span>"
				   coment = "<a href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=148' class='bt-apply m0 mt10'>온라인 접수</a>"
				   quickUrl = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1356"
				   amUrl = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1397"

    Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
				   txt01 = "매월 초 개강"
                   campusName = "core_wj"
				   quickUrl = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1361"
				   coment = "<a href='https://corewj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=148' class='bt-apply m0'>온라인 접수 바로가기</a>"

    Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                   campusName = "core_jj"
				   quickUrl = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1362"
				   txt01 = "상시 입학 (매주 월/금)"
				   txt02 = "현장 또는 온라인 접수 <a href='https://corejj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=148' class='bt-apply'>원서접수 바로가기</a>"

    Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                   campusName = "core_cw"
				   txt01 = "매월 초 개강"
				   coment = ""
				   quickUrl = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1363"

    Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                   campusName = "core_cj"
				   txt01 = "매월 초 개강"
				   txt02 = "현장 또는 온라인 접수 <a href='https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=148' class='bt-apply'>원서접수 바로가기</a>"
				   txt03 = ""
				   coment = "*원서접수 확인 후 개별 안내 예정"
				   quickUrl = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1364"

	'Case "CD0258": txtDate = "기숙"
	'Case "CD0331": r_title = "삽자루 수학학원"
End Select
%>

    <div class="visual-area">

		<div class="swiper-container visual-slide">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/visual_bg01.jpg" alt="" /></div>
				</div>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/visual_bg02.jpg" alt="" /></div>
				</div>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/visual_bg03.jpg" alt="" /></div>
				</div>
			</div>
		</div>
		<div class="inner">
			<div class="visual-tit">
				<p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/v_tit01.png" alt="단과 수업과 의무자습을 한방에!" /></p>
				<p class="mt60"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/v_tit02.png" alt="바른공부 자습전용관" /></p>
				<% If sCampusCode = "CD0244" Then '분당 %>
				<p class="mt25 slide-in-elliptic-top-fwd delay"><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/v_title.png" alt="정규반" /></p>
				<% Else %>
				<p class="mt25 slide-in-elliptic-top-fwd delay"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/v_title.png" alt="정규반" /></p>
				<% end if %>
			</div>
			<div class="v-tit-wrap">
				<div class="visual-info">
					<% If sCampusCode <> "CD0245" and sCampusCode <> "CD0244" and sCampusCode <> "CD0246" Then '목동/분당/센텀제외%>
					<!-- 개강일 -->
					<dl>
						<dt><%=tit01%></dt>
						<dd><%=txt01%></dd>
					</dl>
					<% End if %>
					<!-- 접수방법 -->
					<% If sCampusCode = "CD0249" OR sCampusCode = "CD0257" OR sCampusCode = "CD0246" OR sCampusCode = "CD0247" Then '영통/중계/센텀/강남 %>
					<dl>
						<dt><%=tit02%></dt>
						<dd><%=txt02%></dd>
					</dl>
					<% ElseIf sCampusCode = "CD0341" OR sCampusCode = "CD0343" OR sCampusCode = "CD0346" Then '코어대전/코어원주/코어청주 %>
					<dl>
						<dt><%=tit02%></dt>
						<dd>
							<%=txt02%><br>
							<span class="c-txt"><%=coment%></span>
						</dd>
					</dl>
					<% ElseIf  sCampusCode = "CD0245" Then '목동 %>
					<dl>
						<dt>접수 현황 </dt>
						<dd>대기자 접수 중</dd>
					</dl>
					<dl>
						<dt><%=tit02%></dt>
						<dd><%=txt02%></dd>
					</dl>
					<% ElseIf sCampusCode = "CD0244" Then '분당 %>
					<dl>
						<dt><%=tit02%></dt>
						<dd><%=txt02%></dd>
					</dl>
					<dl>
						<dt>접수 방법</dt>
						<dd>
							온라인 대기 접수 후 성적표 제출 <a href='https://russelbd.megastudy.net//russel/apply/jaejung/apply.asp?app_cd=148' class='bt-apply'>대기 접수 바로가기</a><br>
							<span class="fz14">*온라인 대기 접수를 완료하면 이후 대기 순서에 따라 입학 절차를 <br> 개별적으로 안내해드립니다.</span>
						</dd>
					</dl>
					<% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
					<dl style="align-items:baseline">
						<dt><%=tit02%></dt>
						<dd>
							<%=txt02%><br>
							<span class="i-data">
								<span class="stxt">* 유의사항 <span><i>!</i></span></span>
								<span class="data-view">
									* 유의사항<br>
									① 학원으로 전화하여 잔여석을 확인해 주시기 바랍니다.<br>
									② 대기 접수자는 후 잔여석 발생 시 순차적으로 등록 안내 예정입니다.
								</span>
							</span>
						</dd>
					</dl>
					<% Else %>
						<% If sCampusCode = "CD0250" Then '부천 %>
						<dl>
							<dt>접수 방법</dt>
							<dd>현장접수ㅣ모집요강 지원자격 해당자 순 접수</dd>
						</dl>
						<% end if %>
					<dl>
						<dt><%=tit02%></dt>
						<dd>
							<%=txt02%><span class="a-txt"><%=txt03%></span>

							<% if sCampusCode = "CD0001" Then '대치 %>
							<a <%if curYmdhmin >= 202301200900 then%> href='https://russeldc.megastudy.net//russel/apply/jaejung/apply.asp?app_cd=148' <%else%> onclick="alert('원서접수는 1/20(금) 9시 이후 가능합니다.')" <%end if%> class='bt-apply'>원서접수 바로가기</a>
							<% end if %>

							<br>
							<span class="c-txt"><%=coment%></span>
						</dd>
					</dl>
					<% end if %>
				</div>

				<% If sCampusCode = "CD0340" OR sCampusCode = "CD0341" OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" Then '코어광주/코어대전/코어원주/코어전주/코어창원/코어청주 %>
				<!-- <p>수능에 최적화된 러셀CORE에서 최상위권과 경쟁하십시오.<br>러셀CORE에서 경쟁하는 것이 대입 성공의 경쟁력입니다.</p> -->
				<% ElseIf sCampusCode = "CD0244" Then '분당 %>
				<!-- <p>최상위권이 집결하는 러셀에서 최상위권과 경쟁하십시오.<br>러셀에서 경쟁하는 것이 대입 성공의 경쟁력입니다.</p> -->
				<% Else %>
				<!-- <p>수능에 최적화된 러셀에서 최상위권과 경쟁하십시오.<br>러셀에서 경쟁하는 것이 대입 성공의 경쟁력입니다.</p> -->
				<% end if %>
			</div>
			
			<% If sCampusCode = "CD0245" Then '목동 %>
			<!-- <div class="ico-end" style="top: 440px;left: 9%;margin-left: 375px;"><div><strong>마감 임박</strong></div></div> -->
			<div class="ico-end" style="top: 440px;left: 9%;margin-left: 375px;"><div><strong style="font-size: 25px; line-height: 1;">마감 <br> (대기자 접수 중)</strong></div></div>
			<% ElseIf sCampusCode = "CD0342" Then '대구 %>
			<div class="ico-end" style="top:450px;left:50%;transform: translateX(-60%);"><div>N수 HS,서의치<br>마감주의</div></div>
			<% ElseIf sCampusCode = "CD0244" Then '분당 %>
			<div class="ico-end" style="top: 510px;left: 9%;margin-left: 515px;"><div><%=end_txt%></div></div>
			<% ElseIf sCampusCode = "CD0001" OR sCampusCode = "CD0257"  Then '대치/중계 %>
			<div class="ico-end" style="top: 440px;left: 9%;margin-left: 375px;"><div><%=end_txt%></div></div>
			<% end if %>
		</div>

		<!--quick 플로팅배너-->
		<div class="quick" style="display: none;">


			<% If sCampusCode = "CD0244" Then '분당 %>
			<!-- <a href="https://russelbd.megastudy.net/russel/info/notice/notice_view.asp?Code=27300&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1" class="mb20" alt="">
				<span><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/quick_r.png" alt="N수,반수 성공전략 설명회"></span>
			</a> -->
			<% End If %>
			<p class="b-tit">2024 수능 대비 단과</p>

			<!-- 공통 -->
			<a href="<%=quickUrl%>" class="q-ban">
				<span><%=qTxt01%></span>
				<strong><%=qTxt02%></strong>
			</a>
			<!-- //공통 -->

			<% If sCampusCode = "INTRO" or sCampusCode = "CD0247" or sCampusCode = "CD0001" or sCampusCode = "CD0245" or sCampusCode = "CD0250" or sCampusCode = "CD0244" or sCampusCode = "CD0249" or sCampusCode = "CD0257" or sCampusCode = "CD0248" or sCampusCode = "CD0246" or sCampusCode = "CD0342" Then '인트로/강남/대치/목동/부천/분당/영통/중계/평촌/센텀/대구 일 경우 %>
			<a href="<%=amUrl%>"  class="q-ban">
				<span>N수생을 위한<br>평일 오전&middot;오후 단과</span>
				<strong>AM 단과</strong>
			</a>
				<% If sCampusCode = "CD0247" Then '강남 %>
				<a href="/russel/info/qna/faq.asp" class="mt20" target="_blank"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/faq_banner.png" alt="자주하는 질문" /></a>
				<% End If %>
			<% ElseIf sCampusCode = "CD0340" or sCampusCode = "CD0341" or sCampusCode = "CD0343" or sCampusCode = "CD0344" or sCampusCode = "CD0345" or sCampusCode = "CD0346" Then '코어광주/코어대전/코어원주/코어전주/코어창원/코어청주일 경우 %>
			<% Else %>
			<!-- 학원별 -->
			<a href="javascript:void(0);"onclick="alert('추후 오픈 예정입니다.')"  class="q-ban">
				<span>N수생을 위한<br>평일 오전&middot;오후 단과</span>
				<strong>AM 단과</strong>
			</a>
			<!-- //학원별 -->
			<% End If %>



			<% If sCampusCode = "CD0250" Then '부천 %>
			<a href="javascript:void(0);" onclick="fn_eventGo('/russel/entinfo/popup_notice_service_nonlogin.asp')" class="mt20">
				<span><img src="<%=Application("img_path_russel")%>/intro/2023/regular/sns-banner.png" alt="학원 문자 수신 알리미 신청" /></span>
			</a>
			<a href="https://pf.kakao.com/_sFgGxj" class="mt20">
				<span><img src="<%=Application("img_path_russel")%>/intro/2023/regular/kakao_banner.png" alt="학원 문자 수신 알리미 신청" /></span>
			</a>
			<% End If %>
		</div>
		<!--//quick 플로팅배너-->
	</div>

	<!-- fix-menu -->
	<nav class="fix-menu-wrap">
		<div class="fix-menu type01 js-fix-menu">
			<div class="menu">
                <% If sCampusCode = "INTRO" Then '인트로 %>
				<a class="on" href="javascript:void(0);">최상위권 집결, 러셀</a>
				<a href="javascript:void(0);">수능에 최적화된 시스템</a>
				<a href="javascript:void(0);">학원별 모집안내</a>
                <% Else %>
				<a class="on" href="javascript:void(0);"><%=txtCampus%> 모집요강 및 장학혜택</a>
				<% If sCampusCode = "CD0340" OR sCampusCode = "CD0341" OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" Then '코어광주/코어대전/코어원주/코어전주/코어창원/코어청주 %>
				<a href="javascript:void(0);">최상위권 집결, 러셀CORE</a>
                <% Else %>
				<a href="javascript:void(0);">최상위권 집결, 러셀</a>
                <% End If %>
				<a href="javascript:void(0);">수능에 최적화된 시스템</a>
                <% End If %>
			</div>
		</div>
	</nav>
	<!-- //fix-menu -->

	<script>

	//quick 팝업창
	var popH = screen.availHeight;
	var popupWidth = 794;
	var popupX = (window.screen.width / 2) - (popupWidth / 2);

	//학원 문자수신 알리미 신청 바로가기
	function fn_eventGo(url) {
		window.open(url,'popup_mock','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}

	</script>

	<!-- 조정식/양승진 설명회 팝업 -->
<!--#include virtual="/intro/pop/2022/pop_pre.asp" -->
	<!-- 조정식/양승진 설명회 팝업 -->