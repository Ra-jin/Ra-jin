<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->
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
<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual = "/inc/head.asp" -->
	<link rel="stylesheet" type="text/css" href="./style.css" media="all" />
</head>
<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">정시 지원 컨설팅</strong>
</h2>
<section class="sub-wrap consulting-wrap">
    <div class="visual">
        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/visual.jpg" alt="" /></p>
        <div class="info-box">
            <div class="info-txt">
                <dl>
                    <dt>예약 접수</dt>
                    <dd> 11.28(월) 10시 이후부터 <span class="txt-gold">선착순 온라인 접수</span></dd>
                </dl>
                <dl>
                    <dt>컨설팅 일정</dt>
                    <dd>2022.12.23(금) ~ 12.29(목)</dd>
                </dl>
            </div>
            <div class="info-btn">
				<!-- D: 미로그인시 -->
				<a href="javascript:void(0);" class="btn-m-gray" onclick="fn_qnaGo()">온라인 문의</a>

                <% If applyStatus = 0 then %>
				<a href="javascript:void(0);" class="btn-m-gold" onclick="fn_eventGo()">온라인 접수 바로가기</a> 
				<% else %>
                <a href="javascript:void(0);" class="btn-m-gold" onclick="fn_eventGo()">온라인 접수 내역 확인</a> 
                <% end if %>

                <!-- D: 11/28(월) 미로그인시 -->
				<!-- <a href="javascript:void(0);" class="btn-m-gold" onclick="alert('로그인 후 이용 가능합니다.')">온라인 접수 바로가기</a> -->
				<!-- D: 11/28(월) 로그인시 미접수자의 경우 노출-->
				<!-- <a href="./popup.asp" class="btn-m-gold">온라인 접수 바로가기</a> -->
				<!-- D: 11/28(월) 로그인시 온라인접수 '접수완료','대기완료'자의 경우 노출 -->
				<!-- <a href="javascript:void(0);" class="btn-m-gold">온라인 접수 내역 확인</a> -->
            </div>
        </div>
    </div>
    <div class="cont01">
        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/cont01_tit.jpg" alt="왜 러셀 입시전략연구소를 선택해야 할까요?" /></p>
        <div class="inner">
            <div class="c-box01">
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/cont01_stit.png" alt="복잡한 입시 미로를 함께 헤쳐나갈 단 하나의 컨설팅, 러셀 입시전략연구소의 대입 전문가들과 함께 복잡한 입시 미로 속에서 최적의 길을 찾아가시기 바랍니다." /></p>
                <div class="roll-swiper swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/cont01_img1.jpg" alt="" /></div>
                            <p>대입 전문 컨설턴트의 경험과 노하우</p>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/cont01_img2.jpg" alt="" /></div>
                            <p>1:1 개별 맞춤형 정시지원 포트폴리오 제공</p>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/cont01_img3.jpg" alt="" /></div>
                            <p>러셀만의 데이터와 실제 합격사례</p>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/cont01_img4.jpg" alt="" /></div>
                            <p>Final Call을 통한 최종 피드백</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="c-box02">
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/cont01_stit02.png" alt="입시의 과거와 현재를 토대로 미래를 꿰뚫는 대입 전문 컨설턴트" /></p>
                <ul>
                    <li>
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/t-img01.png" alt="이상연 소장" />
                            <a href="javascript:void(0)">프로필 보기 &gt;</a>
                        </div>
                        <div class="dim"></div>
                        <div class="layer-popup">
                            <div class="layer-con">
                                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/pop01_img01.png" alt="러셀 입시전략연구소 대표 컨설턴트 이상연 소장" /></p>
                                <ul class="card-box">
                                    <li>
                                        (現) 러셀 입시전략연구소 소장<br>
                                        (前) 러셀 강남학원 부원장<br>
                                        (前) 러셀 강남학원 인문/자연 최상위권반<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4년 연속 담임<br>
                                        (前) 신촌메가스터디 자연계열 최상위권반<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5년 연속 담임
                                    </li>
                                </ul>
                            </div>
                            <button>
                                <span class="blind">X버튼</span>
                            </button>
                        </div>
                    </li>
                    <li>
                        <div class="img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/t-img02.png" alt="김광석 부소장" />
                            <a href="javascript:void(0)">프로필 보기 &gt;</a>
                        </div>
                        <div class="dim"></div>
                        <div class="layer-popup">
                            <div class="layer-con">
                                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/pop02_img01.png" alt="러셀 입시전략연구소 대표 컨설턴트 김광석 부소장" /></p>
                                <ul class="card-box">
                                    <li>
                                        (現) 러셀 입시전략연구소 부소장<br>
                                        (前) 메가스터디 대입컨설팅센터<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;대표 컨설턴트<br>
                                        (前) 강북메가스터디 입시전략연구소<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;수석연구원
                                    </li>
                                </ul>
                            </div>
                            <button>
                                <span class="blind">X버튼</span>
                            </button>
                        </div>
                    </li>
                </ul>
                <div class="consult-swiper swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/c-psj.png" alt="수석 컨설턴트 박성재" /></div>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/c-gsh.png" alt="수석 컨설턴트 고성호" /></div>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/c-ajs.png" alt="수석 컨설턴트 안중수" /></div>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/c-csh.png" alt="수석 컨설턴트 추선호" /></div>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/c-gjy.jpg" alt="수석 컨설턴트 구자영" /></div>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/c-khs.jpg" alt="수석 컨설턴트 김형석" /></div>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/c-pgh.jpg" alt="수석 컨설턴트 박규한" /></div>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/c-lsw.jpg" alt="수석 컨설턴트 이상원" /></div>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/c-cjk.jpg" alt="수석 컨설턴트 최정길" /></div>
                        </div>
                        <div class="swiper-slide">
                            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/c-gjj.jpg" alt="수석 컨설턴트 구자진" /></div>
                        </div>
                    </div>
                </div>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/cont01_stit03.png" alt="다년간의 경험에 기반한 세밀한 분석, 현 대입의 흐름을 읽는 정확한 예측을 토대로 최선의 정시 지원 전락을 제시해 드립니다." /></p>
            </div>
            <div class="c-box03">
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/cont01_stit04.png" alt="2023 러셀 입시전략연구소 컨설팅 진행 순서" /></p>
                <ul>
                    <li>
                        <dl>
                            <dt>1단계</dt>
                            <dd>수능 성적표 분석</dd>
                        </dl>
                        <p>수능 성적표 및 학생생활기록부(선택사항)분석을 통한<br><span class="txt-gold">나의 객관적 위치 파악</span></p>
                    </li>
                    <li>
                        <dl>
                            <dt>2단계</dt>
                            <dd>지원가능 대학 &middot; 학과 검토</dd>
                        </dl>
                        <p>나의 유불리 파악+대학별 반영비율 및 환산점수 분석+<br>당해년도 입시변수 예측 <span class="txt-gold"> &gt; 지원 유리 대학 검토/선정</span></p>
                    </li>
                    <li>
                        <dl>
                            <dt>3단계</dt>
                            <dd>지원 성향을 고려한 전략 수립</dd>
                        </dl>
                        <p>진로 및 적성에 맞는 학과 추천 + 상향/소신/적정/안정 등<br><span class="txt-gold">지원 성향에 따른 맞춤 전략 수립</span></p>
                    </li>
                    <li>
                        <dl>
                            <dt>4단계</dt>
                            <dd>Cross Checking을 통한 최적의 전략 제시</dd>
                        </dl>
                        <p>러셀 대표 컨설턴트들의 Cross Checking을 통한<br><span class="txt-gold">전략구성안 최종 수립</span></p>
                    </li>
                    <li>
                        <dl>
                            <dt>5단계</dt>
                            <dd>전략 구성안 포트폴리오 제공</dd>
                        </dl>
                        <p>러셀만의 특별한 입시 노하우와 DB &gt; <span class="txt-gold">여러 변수와<br>추가합격까지 고려한 전략적 정시 포트폴리오 제공</span></p>
                    </li>
                    <li>
                        <dl>
                            <dt>6단계</dt>
                            <dd>Final Call 진행</dd>
                        </dl>
                        <p>최종 지원 전 Final Call 진행을 통해<br><span class="txt-gold">실시간 변수에 대응/ 세밀한 피드백 제시</span></p>
                    </li>
                </ul>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/cont01_stit05.png" alt="전문 컨설턴트와의 1:1 컨설팅을 통해 최상의 정시 지원 전략을 도출합니다." /></p>
            </div>
        </div>
    </div>
    <div class="cont02">
        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/cont02_tit.jpg" alt="정시 지원 컨설팅 안내" /></p>
        <div class="inner">
            <table class="tbl-type01">
                <colgroup>
                    <col style="width:30%">
                    <col style="width:auto">
                </colgroup>
                <tbody>
                    <tr>
                        <th>컨설팅 장소</th>
                        <td>
                            <ul class="c-list">
                                <li>
                                    러셀 대치 <a href="https://mrusseldc.megastudy.net/russel/info/location.asp" target="_blank">오시는 길 &gt</a>
                                </li>
                                <li>
                                    러셀 목동 <a href="https://mrusselmd.megastudy.net/russel_mokdong/info/location.asp" target="_blank">오시는 길 &gt</a>
                                </li>
                                <li>
                                    러셀 분당 <a href="https://mrusselbd.megastudy.net/russel_bundang/info/location.asp" target="_blank">오시는 길 &gt</a>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>컨설팅 일정</th>
                        <td>12/23(금) ~ 12/29(목) 7일간 진행<br>
                            (운영시간: 10시~18시까지)<br>
                            <span class="txt-red f12">
                                *상담은 스케줄에 따라 진행되며,<br>
                                스케줄은 유선 안내 시 조정합니다.
                            </span><br>
                            <br>
                            <strong>
                                러셀 분당: 12/23(금), 12/24(토)<br>
                                러셀 목동: 12/25(일), 12/26(월)<br>
                                러셀 대치: 12/27(화), 12/28(수),<br>
                                12/29(목)
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <th>제출 서류</th>
                        <td>
                            필수 제출 서류: 수능 성적표 l<br>
                            선택 제출 서류: 내신 성적표<br>
                            <span class="txt-red f12">*신청 팝업에서 이미지 또는 PDF파일 첨부</span>
                        </td>
                    </tr>
                    <tr>
                        <th>비용 안내</th>
                        <td><strong>450,000원</strong></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/consulting/cont02_tit02.jpg" alt="정시 컨설팅 예약접수 절차" /></p>
        <div class="inner">
            <ul class="r-step">
                <li>
                    <div>STEP<br>1</div>
                    <p>
                        온라인 페이지 정시 <strong>컨설팅 예약접수</strong><br>
                        <span class="f12">(2022년 11월 28일(월) 부터~)</span><br>
                        <span class="txt-red f12">*접수 시 수능성적표 첨부必</span>
                    </p>
                </li>
                <li>
                    <div>STEP<br>2</div>
                    <p>
                        예약접수 내용 확인 <strong>안내 전화</strong>
                    </p>
                </li>
                <li>
                    <div>STEP<br>3</div>
                    <p>
                        성적 자료 접수 및 <strong>결제 진행 </strong>
                        <span class="txt-red f12"><br>(2일 이내 결제必)</span>
                    </p>
                </li>
                <li>
                    <div>STEP<br>4</div>
                    <p>
                        <strong>컨설팅 신청 완료</strong>(안내문자 발송)
                    </p>
                </li>
            </ul>
        </div>
        <p class="txt-red c-tit">※ 컨설팅 신청 전 확인해주세요!</p>
        <ul class="list-dot">
            <li>정시 지원 컨설팅은 선착순 예약접수로 진행됩니다.<br>(선착순 마감 시 대기 접수를 진행하며, 상황에 따라 예약 및 신청이 조기 종료될 수 있습니다.)</li>
            <li>온라인 페이지에서는 예약접수만 진행 가능합니다.</li>
            <li>컨설팅 결제완료 및 수험생의 성적 자료 확인 후 컨설팅 신청이 완료됩니다.</li>
            <li>고른기회, 다자녀전형, 예체능전형 등 특수전형은 상담을 진행하지 않습니다.</li>
            <li>상담은 학원 현장에서 대면으로 이루어지며, 비대면 상담은 진행하지 않습니다.</li>
            <li class="txt-red">컨설팅 예약접수 안내전화 후 2일 이내에 결제가 이루어지지 않는 경우, 접수 내역이 자동으로 취소됩니다.</li>
            <li class="txt-red">(결제) 환불은 신청한 상담일 기준 최소 2일 전에 요청하셔야 불이익이 없습니다.</li>
            <li class="txt-red">온라인 접수 수정&amp;취소는 12/16(금)까지 가능합니다.</li>
            <li>
                예약/결제/취소 문의는 페이지 상단에서 
                <a href="javascript:void(0);" onclick="fn_qnaGo()" class="link-btn">온라인 문의 &gt;</a>
                학원 선택 > ‘입시전략연구소’ 선택 후 문의 또는 02-3498-4332(평일 10:00 ~ 18:00 상담 운영)로 문의주시기 바랍니다.
            </li>
        </ul>
    </div>
</section>

<!-- #include virtual = "/inc/footer.asp" -->

<script src="./ui.js"></script>
<script>
	
	// 팝업창
	var popupWidth = auto;
	var popupX = (window.screen.width / 2) - (popupWidth / 2);
	
	// 온라인 문의 팝업
	function fn_qnaGo() {
		
		<% If gLoginOk = false Then %>
			alert("로그인 후 이용가능합니다.");
			location.href="/member/login.asp?rtnUrl=%2Fboard%2Fconsult_write%2Easp?mode=consult_qna"
			return;
		<% else %>
			window.open('/board/consult_write.asp?mode=consult_qna')
		<% End If %>

	}
	
	// 온라인 접수 팝업
	function fn_eventGo() {

        <% IF curYmdhmin >= 202312300000 AND applyStatus = 0 Then '2023-11-04 강희경 파트장님 요청 : 202212300000 -> 202312300000   %>
			alert("마감 되었습니다.");
			return;
		<% End If %>
		
		<% If gLoginOk = false Then %>
			alert("로그인 후 이용가능합니다.");
			location.href="/member/login.asp?rtnUrl=%2Fintro%2F2023%2Fconsulting%2Findex%2Easp%3F"
			return;
		<% else %>
			window.open('./popup.asp','online_qna','scrollbars=yes,width=810,height=800,top=0,left='+ popupX);
		<% End If %>

	}


</script>
</body>
</html>