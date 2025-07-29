<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="2023 러셀 재학생 정규반" />
    <meta name="keywords" content="2023 러셀 재학생 정규반, 러셀 정규반, 재학생 정규반, 2023 러셀정규반, 러셀정규반, 고2 정규반, 고3 정규반" />
	<meta name="description" content="바른공부 자습전용관 2023 러셀 정규반" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2023 러셀 정규반">
	<meta property="og:description" content="2023 러셀 정규반, 러셀 정규반" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" type="text/css" href="/common/css/2022/regular_go.css" />
</head>
<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- regular-go -->
<div class="regular-go">
    <!-- 상단영역 -->
    <!-- #include virtual="/intro/2022/regular_go/top.asp" -->
    <!-- //상단영역 -->
    
    <!-- 바자관 슬라이드 -->
    <!-- #include virtual="/intro/2022/regular_go/slide.asp" -->
    <!-- //바자관 슬라이드 -->
    
    <!-- 러셀 정규반이 정답 -->
    <!-- #include virtual="/intro/2022/regular_go/tt.asp" -->
    <!-- 러셀 정규반이 정답 -->

    <!-- 메가스터디 온오프 NO.1 강사진 -->
    <div class="teacher-wrap">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/stit01_04.jpg" alt="" /></p>
        <!-- teacher-swiper -->
        <div class="teacher-swiper wiper-container">
            <div class="swiper-wrapper">
                <!-- 국어 -->
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>국어</dt>
                        <dd><strong>강민철</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_kmc.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>국어</dt>
                        <dd><strong>엄선경</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_usk.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>국어</dt>
                        <dd><strong>이원준</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_lwj.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>국어</dt>
                        <dd><strong>최인호</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_cih.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>국어</dt>
                        <dd><strong>신용선</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_sys.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>국어</dt>
                        <dd><strong>신동우</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_sdw.jpg" alt=""></span>
                </div>
                <!-- 수학 -->
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>수학</dt>
                        <dd><strong>양승진</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_ysj.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>수학</dt>
                        <dd><strong>김성은</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_kse.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>수학</dt>
                        <dd><strong>장영진</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_jyj.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>수학</dt>
                        <dd><strong>김기현</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_kkh.jpg" alt=""></span>
                </div>
                <!-- 영어 -->
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>영어</dt>
                        <dd><strong>조정식</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_jjs.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>영어</dt>
                        <dd><strong>김기철</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_kkc.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>영어</dt>
                        <dd><strong>김지영</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_kjy.jpg" alt=""></span>
                </div>
                <!-- 사회 -->
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>한국지리/세계지리</dt>
                        <dd><strong>이기상</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_lks.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>동아시아사/세계사</dt>
                        <dd><strong>이다지</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_ldj.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>생활과윤리</dt>
                        <dd><strong>김종익</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_kji.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>사회문화</dt>
                        <dd><strong>윤성훈</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_ysh.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>사회문화</dt>
                        <dd><strong>손고운</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_skw.jpg" alt=""></span>
                </div>
                <!-- 과학 -->
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>물리학</dt>
                        <dd><strong>배기범</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_bkb.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>물리학</dt>
                        <dd><strong>강민웅</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_kmw.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>물리학</dt>
                        <dd><strong>김성재</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_ksj.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>화학</dt>
                        <dd><strong>고석용</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_ksy.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>화학</dt>
                        <dd><strong>정우정</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_jwj.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>생명과학</dt>
                        <dd><strong>백호</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_bh.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>생명과학</dt>
                        <dd><strong>한종철</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_hjc.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>생명과학</dt>
                        <dd><strong>박지향</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_pjh.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>지구과학</dt>
                        <dd><strong>엄영대</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_uyd.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>지구과학</dt>
                        <dd><strong>박선</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_ps.jpg" alt=""></span>
                </div>
                <!-- 인문논술 -->
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>인문논술</dt>
                        <dd><strong>박기호</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_pkh.jpg" alt=""></span>
                </div>
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>인문논술</dt>
                        <dd><strong>최인호</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_cih.jpg" alt=""></span>
                </div>
                <!-- 수리논술 -->
                <div class="swiper-slide">
                    <dl class="t-name">
                        <dt>수리논술</dt>
                        <dd><strong>배기은</strong> 선생님</dd>
                    </dl>
                    <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/t_bke.jpg" alt=""></span>
                </div>
            </div> 
        </div>
        <!-- //teacher-swiper -->
        
        <!-- 단과 링크 -->
        <!-- #include virtual="/intro/2022/regular_go/danka.asp" -->
        <!-- //단과 링크 -->
    </div>
    <!-- //메가스터디 온오프 NO.1 강사진 -->
    
    <!-- 프리미엄 콘텐츠 -->
    <!-- #include virtual="/intro/2022/regular_go/contents.asp" -->
    <!-- //프리미엄 콘텐츠 -->

    <!-- cont-campus -->
    <div class="cont-campus">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/tit03.jpg" alt="2023 정규반 [재학생] 모집요강 및 장학혜택" /></p>
        <p class="txt-campus">학원별 모집요강, 장학혜택 및 상세 등록 방법은 각 학원으로 문의 바랍니다.</p>
        
        <div class="campus-list-wrap type-link">
            <div class="campus-list" id="campus-link">
                <dl>
                    <dt>러셀학원</dt>
                    <dd>
                        <p>러셀<strong>강남</strong></p>
                        02) 6954-1010 <a href="https://russelgn.megastudy.net/russel_gn/2022/regular_go/index.asp" target="_blank">바로가기</a>
                    </dd>
                    <dd>
                        <p>러셀<strong>대치</strong></p>
                        02) 2138-1010 <a href="https://russeldc.megastudy.net/russel/2022/regular_go/index.asp" target="_blank">바로가기</a>
                    </dd>
                    <dd>
                        <p>러셀<strong>목동</strong></p>
                        02) 6932-1010 <a href="https://russelmd.megastudy.net/russel_mokdong/2022/regular_go/index.asp" target="_blank">바로가기</a>
                    </dd>
                    <dd>
                        <p>러셀<strong>부천</strong></p>
                        032) 265-1010 <a href="https://russelbc.megastudy.net/russel_bc/2022/regular_go/index.asp" target="_blank">바로가기</a>
                    </dd>
                    <dd>
                        <p>러셀<strong>분당</strong></p>
                        031) 629-1010 <a href="https://russelbd.megastudy.net/russel_bundang/2022/regular_go/index.asp" target="_blank">바로가기</a>
                    </dd>
                    <dd>
                        <p>러셀<strong>센텀</strong></p>
                        051) 715-1010 <a href="https://russelct.megastudy.net/russel_ct/2022/regular_go/index.asp" target="_blank">바로가기</a>
                    </dd>
                    <dd>
                        <p>러셀<strong>영통</strong></p>
                        031) 251-1010 <a href="https://russelyt.megastudy.net/russel_yt/2022/regular_go/index.asp" target="_blank">바로가기</a>
                    </dd>
                    <dd>
                        <p>러셀<strong>중계</strong></p>
                        02) 6316-1010 <a href="https://russeljg.megastudy.net/russel_jg/2022/regular_go/index.asp" target="_blank">바로가기</a>
                    </dd>
                    <dd>
                        <p>러셀<strong>평촌</strong></p>
                        031) 341-6500 <a href="https://russelpc.megastudy.net/russel_pc/2022/regular_go/index.asp" target="_blank">바로가기</a>
                    </dd>
                </dl>
                <dl>
                    <dt>러셀<strong>CORE</strong></dt>
                    <dd class="bbn">
                        <p>러셀CORE<strong>광주</strong></p>
                        062) 462-1010 <a href="https://coregj.megastudy.net/core_gj/2022/regular_go/index.asp" target="_blank">바로가기</a>
                    </dd>
                    <dd>
                        <p>러셀CORE<strong>대전</strong></p>
                        042) 381-2020 <a href="https://coredj.megastudy.net/core_dj/2022/regular_go/index.asp" target="_blank">바로가기</a>
                    </dd>
                </dl>
            </div>
        </div>
    </div>
    <!-- //cont-campus -->
    
    <!-- #include virtual="/intro/2022/regular_go/bottom.asp" -->

</div>
<!-- regular-go -->

<!--  공통 하단 //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->

<script src="/common/js/2022/regular_go.js"></script>
</body>
</html>
