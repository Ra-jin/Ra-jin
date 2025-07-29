<div class="teacher-rolling-inner">
    <div class="swiper mySwiper teacher-rolling">
        <div class="swiper-wrapper">
            <!-- 국어 -->
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>국어</dt>
                    <dd><strong>강민철</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/ko_kmc.png" alt=""></span>
            </div>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>국어</dt>
                    <dd><strong>엄선경</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/ko_usk.png" alt=""></span>
            </div>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>국어</dt>
                    <dd><strong>이원준</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/ko_lwj.png" alt=""></span>
            </div>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>국어</dt>
                    <dd><strong>최인호</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/ko_cih.png" alt=""></span>
            </div>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>국어</dt>
                    <dd><strong>신용선</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/ko_sys.png" alt=""></span>
            </div>
            <!-- 수학 -->
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>수학</dt>
                    <dd><strong>양승진</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/mt_ysj.png" alt=""></span>
            </div>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>수학</dt>
                    <dd><strong>김성은</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/mt_kse.png" alt=""></span>
            </div>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>수학</dt>
                    <dd><strong>장영진</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/mt_jyj.png" alt=""></span>
            </div>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>수학</dt>
                    <dd><strong>김기현</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/mt_kkh.png" alt=""></span>
            </div>
            <!-- 영어 -->
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>영어</dt>
                    <dd><strong>조정식</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/en_jjs.png" alt=""></span>
            </div>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>영어</dt>
                    <dd><strong>김기철</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/en_kkc.png" alt=""></span>
            </div>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>영어</dt>
                    <dd><strong>김지영</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/en_kjy.png" alt=""></span>
            </div>
            <!-- 사회 -->
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>한국지리/<br>세계지리</dt>
                    <dd><strong>이기상</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/so_lks.png" alt=""></span>
            </div>
            <% If campus_code <> "CD0001" Then '대치 제외 %>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>동아시아사/<br>세계사</dt>
                    <dd><strong>이다지</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/so_ldj.png" alt=""></span>
            </div>
            <% End If %>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>생활과 윤리</dt>
                    <dd><strong>김종익</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/so_kji.png" alt=""></span>
            </div>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>사회문화</dt>
                    <dd><strong>윤성훈</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/so_ysh.png" alt=""></span>
            </div>
            <% If campus_code <> "CD0244" Then '분당 제외 %>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>사회문화</dt>
                    <dd><strong>손고운</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/so_sgw.png" alt=""></span>
            </div>
            <% End If %>
            <!-- 과학 -->
            <% If campus_code <> "CD0001" Then '대치 제외 %>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>물리학</dt>
                    <dd><strong>배기범</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/si_bkb.png" alt=""></span>
            </div>
            <% End If %>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>물리학</dt>
                    <dd><strong>강민웅</strong> 선생님</dd>
                </dl>
                <span class="t-img b-blue"><img src="<%=Application("img_path_russel")%>/intro/2023/first/si_kmw.png" alt=""></span>
            </div>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>물리학</dt>
                    <dd><strong>김성재</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/si_ksj.png" alt=""></span>
            </div>
            <% If campus_code <> "CD0001" Then '대치 제외 %>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>화학</dt>
                    <dd><strong>고석용</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/si_ksy.png" alt=""></span>
            </div>
            <% End If %>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>화학</dt>
                    <dd><strong>정우정</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/si_jwj.png" alt=""></span>
            </div>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>생명과학</dt>
                    <dd><strong>한종철</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/si_hjc.png" alt=""></span>
            </div>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>생명과학</dt>
                    <dd><strong>박지향</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/si_pjh.png" alt=""></span>
            </div>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>지구과학</dt>
                    <dd><strong>엄영대</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/si_uyd.png" alt=""></span>
            </div>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>지구과학</dt>
                    <dd><strong>박선</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/si_ps.png" alt=""></span>
            </div>
            <!-- 논술 -->
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>인문논술</dt>
                    <dd><strong>박기호</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/es_pkh.png" alt=""></span>
            </div>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>인문논술</dt>
                    <dd><strong>최인호</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/es_cih.png" alt=""></span>
            </div>
            <div class="swiper-slide">
                <dl class="t-name">
                    <dt>수리논술</dt>
                    <dd><strong>배기은</strong> 선생님</dd>
                </dl>
                <span class="t-img"><img src="<%=Application("img_path_russel")%>/intro/2023/first/es_bke.png" alt=""></span>
            </div>
        </div>      
    </div>
</div>