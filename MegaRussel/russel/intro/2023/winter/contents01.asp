<!-- 최상위권 집결, 러셀 -->
<div class="cont js-cont">
    <div class="cont01">
        <div class="inner">
            <% If sCampusCode  = "CD0250" OR sCampusCode ="CD0257" OR sCampusCode = "CD0340" Then '부천,중계,코어광주 %>
            <p class="tit p0"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont01_tit.png" alt="실력 향상을 넘어 최상위권으로! 러셀 윈터스쿨에서는 최상위권의 목표가 현실이 됩니다." /></p>
            <% Else %>
            <p class="tit p0"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont01_tit.png" alt="실력 향상을 넘어 최상위권으로! 러셀 윈터스쿨에서는 최상위권의 목표가 현실이 됩니다." /></p>
            <% End If %>

            <% If sCampusCode  = "CD0341" OR sCampusCode = "CD0340" Then '코어대전,코어광주 %>
            <div class="graph-list">
                <div class="graph01"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont01_img01.png" alt="" /></div>
                <div class="graph02"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont01_img02.png" alt="" /></div>
            </div>
            <% ElseIf sCampusCode  = "CD0250" OR sCampusCode ="CD0257" Then '부천,중계 %>
            <div class="graph-list">
                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont01_img01.png" alt="" />
            </div>
            <% Else %>
            <ul class="perfect-wrap">
                <li class="stu01">
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_01.png" alt="" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_review_01.png" alt="" /></span>
                </li>
                <li class="stu02">
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_02.png" alt="" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_review_02.png" alt="" /></span>
                </li>
                <li class="stu03">
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_03.png" alt="" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_review_03.png" alt="" /></span>
                </li>
                <li class="stu04">
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_04.png" alt="" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_review_04.png" alt="" /></span>
                </li>
                <li class="stu05">
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_05.png" alt="" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_review_05.png" alt="" /></span>
                </li>
                <li class="stu06">
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_06.png" alt="" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_review_06.png" alt="" /></span>
                </li>
            </ul>
            <% End If %>
        </div>

        <!--대학 슬라이드-->
        <% If sCampusCode = "CD0250" Then '부천 %>
        <div class="roll-swiper swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>제주대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_jeju.jpg" alt="제주대 로고" />
                    </div>
                    <div class="name-tag">러셀 부천 이민형</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>상지대학교<br>한의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_sangji.jpg" alt="상지대 로고" />
                    </div>
                    <div class="name-tag">러셀 부천 심재희</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>조선대학교<br>약학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_josun.jpg" alt="조선대 로고" />
                    </div>
                    <div class="name-tag">러셀 부천 김희진</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>덕성여자대학교<br>약학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_duksung.jpg" alt="덕성여대 로고" />
                    </div>
                    <div class="name-tag">러셀 부천 김희진</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>동덕여자대학교<br>약학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_dongduk.jpg" alt="동덕여대 로고" />
                    </div>
                    <div class="name-tag">러셀 부천 김희진</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>연세대학교<br><span class="fz16">언더우드학부-생명과학공학</span></strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="연세대 로고" />
                    </div>
                    <div class="name-tag">러셀 부천 이서현</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>보건환경융합과학부</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 부천 김태연</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>제주대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_jeju.jpg" alt="제주대 로고" />
                    </div>
                    <div class="name-tag">러셀 부천 이민형</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>상지대학교<br>한의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_sangji.jpg" alt="상지대 로고" />
                    </div>
                    <div class="name-tag">러셀 부천 심재희</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>조선대학교<br>약학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_josun.jpg" alt="조선대 로고" />
                    </div>
                    <div class="name-tag">러셀 부천 김희진</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>덕성여자대학교<br>약학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_duksung.jpg" alt="덕성여대 로고" />
                    </div>
                    <div class="name-tag">러셀 부천 김희진</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>동덕여자대학교<br>약학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_dongduk.jpg" alt="동덕여대 로고" />
                    </div>
                    <div class="name-tag">러셀 부천 김희진</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>연세대학교<br><span class="fz16">언더우드학부-생명과학공학</span></strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="연세대 로고" />
                    </div>
                    <div class="name-tag">러셀 부천 이서현</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>보건환경융합과학부</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 부천 김태연</div>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode  = "CD0244" Then '분당 %>
        <div class="roll-swiper swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 이OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>연세대학교(서울)<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="연세대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 백OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>연세대학교(서울)<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="연세대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 정OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>성균관대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_skk.png" alt="성균관대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 정OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>가톨릭대학교(성의)<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ktr.png" alt="가톨릭대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 유OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>가톨릭대학교(성의)<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ktr.png" alt="가톨릭대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 유OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>가톨릭대학교(성의)<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ktr.png" alt="가톨릭대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 이OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>가톨릭대학교(성의)<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ktr.png" alt="가톨릭대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 조OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>가톨릭대학교(성의)<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ktr.png" alt="가톨릭대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 이OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>울산대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ulsan02.jpg" alt="울산대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 박OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교(안암)<br>의과대학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 정OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교(안암)<br>의과대학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 이OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교(안암)<br>의과대학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 이OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교(안암)<br>의과대학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 이OO</div>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode  = "CD0249" Then '영통 %>
        <div class="roll-swiper swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 이정우</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>약학계열</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 김OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>성균관대학교<br>약학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_skk.png" alt="성균관대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 김OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>성균관대학교<br>약학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_skk.png" alt="성균관대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 오OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>이화여자대학교<br>약학부-약학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ewha03.jpg" alt="이화여대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 이OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>경희대학교<br>치의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kh.png" alt="경희대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 오OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>가톨릭관동대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cku.jpg" alt="가톨릭관동대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 민OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>경상국립대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_gyeongsang.jpg" alt="경상국립대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 민OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>대구가톨릭대학교<br>약학부</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_dcu.jpg" alt="대구가톨릭대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 김OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>덕성여자대학교<br>약학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_duksung.jpg" alt="덕성여대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 엄OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>영남대학교<br>약학부</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yn.png" alt="영남대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 이OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>충남대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cnu.jpg" alt="충남대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 민OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>재료공학부</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 김OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>경영대학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 김OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>기계공학부</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 문OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>자유전공학부</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 박OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>영어교육과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 이OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>화학교육과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 최OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>기계공학부</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 최OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>생명과학부</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 김OO</div>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode =  "CD0257" Then '중계 %>
        <div class="roll-swiper swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 중계 노현지</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>물리학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 중계 신현빈</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>생물교육학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 중계 김태홍</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>지리학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 중계 고지한</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>의과대학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 중계 김민재</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>연세대학교<br>경영학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="연세대 로고" />
                    </div>
                    <div class="name-tag">러셀 중계 박수진</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>중앙대학교<br>의학부</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cau.jpg" alt="중앙대 로고" />
                    </div>
                    <div class="name-tag">러셀 중계 임유찬</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>이화여자대학교<br>약학부</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ewha03.jpg" alt="이화여대 로고" />
                    </div>
                    <div class="name-tag">러셀 중계 이유진</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>건국대학교<br>수의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kk.png" alt="건국대 로고" />
                    </div>
                    <div class="name-tag">러셀 중계 문서영</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>충남대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cnu.jpg" alt="충남대 로고" />
                    </div>
                    <div class="name-tag">러셀 중계 박준우</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>원광대학교<br>한의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_wonkwang.png" alt="원광대 로고" />
                    </div>
                    <div class="name-tag">러셀 중계 민지우</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>세명대학교<br>한의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_semyung.jpg" alt="세명대 로고" />
                    </div>
                    <div class="name-tag">러셀 중계 박건우</div>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode  = "CD0248" Then '평촌 %>
        <div class="roll-swiper swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>사회복지학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 조안나</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>성균관대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_skk.png" alt="성균관대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 김영윤</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>영남대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yn.png" alt="영남대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 이진석</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>불어불문학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 김선영</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>연세대학교<br>간호학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="연세대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 이채연</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>건축학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 이지흔</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>연세대학교<br>경영학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="연세대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 노은혜</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>행정학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 이정원</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>사회복지학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 조안나</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>성균관대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_skk.png" alt="성균관대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 김영윤</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>영남대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yn.png" alt="영남대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 이진석</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>불어불문학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 김선영</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>연세대학교<br>간호학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="연세대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 이채연</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>건축학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 이지흔</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>연세대학교<br>경영학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="연세대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 노은혜</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>행정학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 이정원</div>
                </div><div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>사회복지학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 조안나</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>성균관대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_skk.png" alt="성균관대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 김영윤</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>영남대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yn.png" alt="영남대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 이진석</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>불어불문학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 김선영</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>연세대학교<br>간호학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="연세대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 이채연</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>건축학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 이지흔</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>연세대학교<br>경영학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="연세대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 노은혜</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>행정학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 이정원</div>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
        <div class="roll-swiper swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>연세대학교(서울)<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="연세대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 김유은</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>연세대학교(서울)<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="연세대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>의과대학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 김유은</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>의과대학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>의과대학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>경희대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kh.png" alt="경희대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>중앙대학교<br>의학부</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cau.jpg" alt="중앙대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>이화여자대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ewha03.jpg" alt="이화여대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>이화여자대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ewha03.jpg" alt="이화여대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 최정윤</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>인제대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_inje.png" alt="인제대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>순천향대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_soonchunhyang.png" alt="순천향대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>건국대학교(글로컬)<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kk.png" alt="건국대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>전남대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_chonnam.png" alt="전남대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 김유은</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>전남대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_chonnam.png" alt="전남대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>전남대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_chonnam.png" alt="전남대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>전남대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_chonnam.png" alt="전남대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>전남대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_chonnam.png" alt="전남대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 정유경</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>전남대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_chonnam.png" alt="전남대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>전남대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_chonnam.png" alt="전남대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 최정윤</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>전남대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_chonnam.png" alt="전남대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 OOO</div>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
        <div class="roll-swiper swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 대전 이상후</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>약학계열</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 대전 최OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>경제학부</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 대전 이OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>식물생산과학부</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 대전 서OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>자유전공학부</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 대전 김OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>연세대학교(서울)<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="연세대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 대전 조OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>건국대학교(글로컬)<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kk.png" alt="건국대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 대전 이OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>건양대학교(대전)<br>의학과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ky.jpg" alt="건양대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 대전 김OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>순천향대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_soonchunhyang.png" alt="순천대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 대전 이OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>순천향대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_soonchunhyang.png" alt="순천대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 대전 최OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>을지대학교(대전)<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_eulji.png" alt="을지대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 대전 박OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>을지대학교(대전)<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_eulji.png" alt="을지대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 대전 이OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>조선대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_josun.jpg" alt="조선대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 대전 이OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>충남대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cnu.jpg" alt="충남대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 대전 권OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>충남대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cnu.jpg" alt="충남대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 대전 오OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>충남대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cnu.jpg" alt="충남대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 대전 허OO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>충남대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cnu.jpg" alt="충남대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 대전 정OO</div>
                </div>
            </div>
        </div>
        <% Else %>
        <div class="roll-swiper swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 강남 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 대치 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 대치 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 대치 홍석우</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 이주연</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 영통 이정우</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀 중계 노현지</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>서울대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 대전 이상후</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>연세대학교(서울)<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="연세대 로고" />
                    </div>
                    <div class="name-tag">러셀 대치 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>연세대학교(서울)<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="연세대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 정준서</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>연세대학교(서울)<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="연세대 로고" />
                    </div>
                    <div class="name-tag">러셀 중계 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>연세대학교(서울)<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="연세대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 김유은</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>연세대학교(서울)<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="연세대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>연세대학교(서울)<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="연세대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 대전 조한혁</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag ktr">
                        <p class="tag">2023학년도<br><strong>가톨릭대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ktr.png" alt="가톨릭대 로고" />
                    </div>
                    <div class="name-tag">러셀 대치 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag ktr">
                        <p class="tag">2023학년도<br><strong>가톨릭대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ktr.png" alt="가톨릭대 로고" />
                    </div>
                    <div class="name-tag">러셀 대치 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag ktr">
                        <p class="tag">2023학년도<br><strong>가톨릭대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ktr.png" alt="가톨릭대 로고" />
                    </div>
                    <div class="name-tag">러셀 대치 남채현</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag ktr">
                        <p class="tag">2023학년도<br><strong>가톨릭대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ktr.png" alt="가톨릭대 로고" />
                    </div>
                    <div class="name-tag">러셀 대치 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag ktr">
                        <p class="tag">2023학년도<br><strong>가톨릭대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ktr.png" alt="가톨릭대 로고" />
                    </div>
                    <div class="name-tag">러셀 대치 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag ktr">
                        <p class="tag">2023학년도<br><strong>가톨릭대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ktr.png" alt="가톨릭대 로고" />
                    </div>
                    <div class="name-tag">러셀 대치 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag ktr">
                        <p class="tag">2023학년도<br><strong>가톨릭대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ktr.png" alt="가톨릭대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag ktr">
                        <p class="tag">2023학년도<br><strong>가톨릭대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ktr.png" alt="가톨릭대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 이현서</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag ktr">
                        <p class="tag">2023학년도<br><strong>가톨릭대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ktr.png" alt="가톨릭대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>성균관대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_skk.png" alt="성균관대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>성균관대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_skk.png" alt="성균관대 로고" />
                    </div>
                    <div class="name-tag">러셀 평촌 김영윤</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>성균관대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_skk.png" alt="성균관대 로고" />
                    </div>
                    <div class="name-tag">러셀 중계 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>의과대학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 대치 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>의과대학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 대치 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>의과대학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 대치 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>의과대학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 대치 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>의과대학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>의과대학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 분당 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>의과대학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 중계 김민재</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>의과대학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀 중계 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>의과대학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>의과대학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>고려대학교<br>의과대학</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대 로고" />
                    </div>
                    <div class="name-tag">러셀CORE 광주 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>울산대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ulsan02.jpg" alt="울산대 로고" />
                    </div>
                    <div class="name-tag">러셀 강남 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>울산대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ulsan02.jpg" alt="울산대 로고" />
                    </div>
                    <div class="name-tag">러셀 강남 OOO</div>
                </div>
                <div class="swiper-slide">
                    <div class="univ-tag">
                        <p class="tag">2023학년도<br><strong>울산대학교<br>의예과</strong></p>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ulsan02.jpg" alt="울산대 로고" />
                    </div>
                    <div class="name-tag">러셀 센텀 윤성혁</div>
                </div>
            </div>
        </div>
        <% End If %>

        <!-- 데이터 산출 기준 -->
        <div class="inner">
            <% If sCampusCode = "CD0341" Then '코어대전 %>
            <p class="stxt">* 2023학년도 대입에 합격한 러셀CORE 대전 재원생의 결과(단과 수강생 제외/복수대학 합격자 포함) (2023.02.23기준)</p>
            <% ElseIf sCampusCode = "CD0249" Then '영통 %>
            <div class="data">데이터 산출 기준</div>
            <div class="data-txt">
                수능 전과목 만점 및 전국 수석<br>
                - 러셀 전체 학원 바자관 재원생의 2018, 2019, 2020, 2021 수능 실채점 기준 (러셀 강남, 러셀 대치, 러셀 분당 배출)<br>
                - 수능 전국 수석은 표준점수/백분위 합 기준<br><br>

                2023학년도 대학 합격 결과<br>
                - 러셀 영통 학원 2023 바자관 재원생의 합격 결과 중 일부<br>
                - 단과 수강생 제외, 복수대학 합격자 포함
            </div>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <div class="data">※ 데이터 산출 기준</div>
            <div class="data-txt">
                * 2023학년도 러셀 부천 바른공부 자습전용관 고3 재원생의 합격 결과 중 인터뷰 촬영을 완료한 학생의 결과<br>
                (단과 수강생 제외, 복수 대학 합격자 포함) (2023.02.27 기준)
            </div>
            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <div class="data">데이터 산출 기준</div>
            <div class="data-txt">
                수능 전과목 만점 및 전국 수석<br>
                - 러셀 전체 학원 바자관 재원생의 2018, 2019, 2020, 2021 수능 실채점 기준 (러셀 강남, 러셀 대치, 러셀 분당 배출)<br>
                - 수능 전국 수석은 표준점수/백분위 합 기준<br><br>

                2023학년도 대학 합격 결과<br>
                - 러셀 분당 학원 2023 바자관 재원생의 메이저 의대 합격 결과<br>
                - 단과 수강생 제외, 복수대학 합격자 포함<br>
                - 메이저 의대 : 서울대, 연세대(서울), 가톨릭대(성의), 성균관대, 고려대(안암), 울산대
            </div>
            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
            <div class="data">※ 데이터 산출 기준</div>
            <div class="data-txt">
                1) 2023학년도 의치한수약/SKY 92명 합격<br>
                - 의치한수약 35명 + SKY 57명 총 92명<br>
                - 러셀 중계 학원 2023 바자관 재원생의 합격 결과 기준<br>
                - 단과 수강생 제외, 복수대학 합격자 포함<br><br>

                2) 2023학년도 주요대학 합격<br>
                -건국대, 경희대, 고려대, 교대(경인, 서울, 청주, 춘천), 가천대, 가톨릭관동대, 경기대, 경동대, 광운대, 국민대, 나사렛대, 단국대,<br>
                대구한의대, 대전대, 대진대, 덕성여대, 동국대, 동덕여대, 명지대, 부산가톨릭대, 부산외대, 삼육대, 상명대, 서울과학기술대,<br>
                서울여대, 성신여대, 세명대, 세종대, 순천향대, 숭실대, 신한대 연세대, 영남대, 원광대, 인제대, 인천대, 전남대 전북대, 조선대,<br>
                중앙대, 차의과학대, 청주대, 충남대, 한국외대, 한림대, 한성대, 한양대, 호서대, 서강대, 서울대, 성균관대, 숙명여대, 서울시립대,<br>
                아주대, 유니스트, 이화여대, 카이스트, 해군사관학교, 홍익대<br><br>

                3) 2023학년도 대학 합격 결과<br>
                - 러셀 중계 학원의 2023학년도 의치한수약/SKY 합격자 중 인터뷰 촬영을 완료한 학생
            </div>
            <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
            <div class="data">※ 데이터 산출 기준</div>
            <div class="data-txt">
                1) 2023학년도 러셀CORE 광주 재원생의 합격 결과 기준<br>
                2) 2023학년도 러셀CORE 광주 의치한수약 배출 94명 (연의 2명, 고의 3명, 중복 합격자 포함)<br>
                3) 2023학년도 러셀CORE 광주 재원생 서울대&middot;연세대&middot;고려대 최종 합격자 35명 기준 (의예과 5명, 중복 합격자 포함)
            </div>
            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
            <p class="data">※ 데이터 산출 기준</p>
            <div class="data-txt">
                수능 전과목 만점 및 전국 수석<br>
                - 러셀 전체 학원 바자관 재원생의 2018, 2019, 2020, 2021 수능 실채점 기준 (러셀 강남, 러셀 대치, 러셀 분당 배출)<br>
                - 수능 전국 수석은 표준점수/백분위 합 기준<br><br>

                2023학년도 대학 합격 결과<br>
                - 2023학년도 러셀 평촌 바른공부 자습전용관 고3 재원생의 합격 결과 중 인터뷰 촬영을 완료한 학생의 결과 (단과 수강생 제외)
            </div>
            <% Else %>
            <div class="data">※ 데이터 산출 기준</div>
            <div class="data-txt">
                수능 전과목 만점 및 전국 수석<br>
                - 러셀 전체 학원 바자관 재원생의 2018, 2019, 2020, 2021 수능 실채점 기준 (러셀 강남, 러셀 대치, 러셀 분당 배출)<br>
                - 수능 전국 수석은 표준점수/백분위 합 기준<br><br>

                2023학년도 대학 합격 결과<br>
                - 러셀 전체 학원 2023 바자관 재원생 중 고3 재원생의 합격 결과 중 일부 (러셀 강남, 러셀 대치, 러셀 목동, 러셀 부천, 러셀 분당,<br>
                러셀 영통, 러셀 중계, 러셀 평촌, 러셀 센텀, 러셀CORE 광주, 러셀CORE 대전, 러셀 기숙)<br>
                - 단과 수강생 제외, 복수대학 합격자 포함
            </div>
            <% End If %>
        </div>
        <!-- //데이터 산출 기준 -->
    </div>

    <!-- cont02 -->
    <div class="cont02">
        <div class="inner">
            <% If sCampusCode = "CD0340" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" Then '코어광주,코어전주,코어창원,코어청주 %>
            <p class="tit mb100"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont02_tit.png" alt="러셀 윈터스쿨에서 겨울방학을 알차게 보낸 선배들은 최상위권 대학 합격에 성공하였습니다."></p>
            <% ElseIf sCampusCode = "CD0247" Then '강남 %>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont02_tit.png" alt=""></p>
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont02_img01.png" alt=""></p>
            <p class="r-txt">1) 2023년 <%=txtCampus%> 윈터스쿨 재원생 대상 만족도 조사 결과<br>2) 만족도 = 매우 만족, 만족 응답자 비율</p>
            <p class="mb80"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont02_txt.png" alt="러셀 윈터스쿨에서 겨울방학을 알차게 보낸 선배들은 최상위권 대학 합격에 성공하였습니다. "></p>
            
            <% ElseIf sCampusCode = "CD0245" OR sCampusCode = "CD0246" OR sCampusCode = "CD0244" OR sCampusCode = "CD0343" Then '목동,센텀,분당,코어원주 %>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont02_tit.png" alt=""></p>
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont02_img01.png" alt=""></p>
            <p class="r-txt">1) 2023년 <%=txtCampus%> 윈터스쿨 재원생 대상 만족도 조사 결과<br>2) 만족도 = 매우 만족, 만족, 보통 응답자 비율</p>
            <p class="mb80"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont02_txt.png" alt="러셀 윈터스쿨에서 겨울방학을 알차게 보낸 선배들은 최상위권 대학 합격에 성공하였습니다. "></p>
            
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont02_tit.png" alt="러셀 윈터스쿨에서 겨울방학을 알차게 보낸 선배들은 최상위권 대학 합격에 성공하였습니다."></p>
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont02_img01.png" alt=""></p>
            <p class="r-txt">※ 2023년 러셀 부천 1월 자체 설문조사 결과</p>
            <p class="mb80"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont02_txt02.png" alt="러셀 윈터스쿨에서 겨울방학을 알차게 보낸 선배들은 최상위권 대학 합격에 성공하였습니다. "></p>
            
            <% ElseIf sCampusCode = "CD0244" or sCampusCode = "CD0257" Then '분당/중계 %>
            <p class="tit mb100"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont02_txt02.png" alt="러셀 윈터스쿨에서 겨울방학을 알차게 보낸 선배들은 최상위권 대학 합격에 성공하였습니다."></p>

            <% Else %>
            <p class="tit mb100"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/cont02_tit.png" alt="러셀 윈터스쿨에서 겨울방학을 알차게 보낸 선배들은 최상위권 대학 합격에 성공하였습니다."></p>
            <% End If %>

            <% If sCampusCode = "CD0250" Then '부천 %>
            <div class="js-menu-con">
                <div class="baja-slide-wrap">
                    <div class="baja-slide-navi bc">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide on">
                                <span>최상위권 집결,<br>우수한 면학분위기</span>
                            </div>
                            <div class="swiper-slide">
                                <span>겨울방학<br>학습 습관 형성</span>
                            </div>
                            <div class="swiper-slide">
                                <span>최상위권<br>수준별 맞춤 단과</span>
                            </div>
                            <div class="swiper-slide">
                                <span>담임선생님의<br>철저한 관리</span>
                            </div>
                            <div class="swiper-slide">
                                <span>학습 동선<br>최소화</span>
                            </div>
                        </div>
                    </div>
                    <!-- baja-slide -->
                    <div class="swiper-container baja-slide bc">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="stu">
                                    <div class="stu-box">
                                        <div class="stu-img"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/winter/stu_psu.jpg" alt="박성은 학생"></div>
                                        <div class="stu-info">
                                            <p class="name">2022 윈터스쿨 재원생<br><strong>러셀 부천 박성은</strong></p>
                                            <a href="javascript:CastPopup('https://tv.naver.com/v/33595158')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                        </div>
                                    </div>
                                    <div class="stu_txt">
                                        <p class="tit mb0">연세대학교 경영학과 합격</p>
                                        <p><span>최상위권 학생들과 함께 공부하며, 다들 집중하는 모습에 자극을 받아 더 열심히 할 수 있었습니다.</span><br>
                                            저는 <strong>바자관의 개방형 구조</strong>가 가장 좋았습니다. 집에서 혼자 공부할 때는 남들과 비교할 수 없어<br>
                                            제가 얼마나 집중하고 있는지 가늠하기가 어려웠고 해이해지기 쉬웠습니다.<br>
                                            하지만 <strong>바자관의 탁 트인 구조 덕분에 경쟁하는 기분</strong>을 느낄 수 있었고 더 열심히 공부할 수 있었습니다.</p>                                                 
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="stu">
                                    <div class="stu-box">
                                        <p class="stu-img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/stu_ksm.jpg" alt="강수민 학생"></p>
                                        <div class="stu-info">
                                            <p class="name">2022 윈터스쿨 재원생<br><strong>러셀 부천 강수민</strong></p>
                                            <a href="javascript:CastPopup('https://tv.naver.com/v/33594834')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                        </div>
                                    </div>
                                    <div class="stu_txt">
                                        <p class="tit mb0">서울대학교 자유전공학부 합격</p>
                                        <p>
                                            <span>겨울방학동안 규칙적인 공부 습관을 잡을 수 있었어요.</span><br>
                                            오롯이 공부에만 집중할 수 있게 해 준다는 점이 마음에 들어 러셀의 윈터스쿨을 선택하였습니다.<br>
                                            <strong>러셀에서는 규칙적인 표준 시간표가 존재한다는 것이 좋았습니다.</strong> 8시까지 등원과 규칙적인 쉬는 시간<br>
                                            간격 등이 공부 루틴을 잡는 데에 도움을 주었습니다. 공부는 꾸준함이 중요한 만큼, <strong>러셀 윈터스쿨에서<br>
                                            규칙적인 공부 습관을 잡을 수 있었습니다.</strong> 제 성적, 나아가 태도에도 변화가 있었습니다.<br>
                                            이전에는 받아볼 수 없던 높은 점수를 받았을 뿐만 아니라, 저도 할 수 있다는 자신감이 생겼습니다. 
                                        </p>    
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="stu">
                                    <div class="stu-box">
                                        <div class="stu-img"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/winter/stu_psu.jpg" alt="박성은 학생"></div>
                                        <div class="stu-info">
                                            <p class="name">2022 윈터스쿨 재원생<br><strong>러셀 부천 박성은</strong></p>
                                            <a href="javascript:CastPopup('https://tv.naver.com/v/33595158')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                        </div>
                                    </div>
                                    <div class="stu_txt">
                                        <p class="tit mb0">연세대학교 경영학과 합격</p>
                                        <p>
                                            <span>필요한 수업만 선택해서 들을 수 있어 시간을 효율적으로 활용할 수 있었어요.</span><br>
                                            <strong>윈터스쿨의 장점은 필요한 단과 수업을 골라 들을 수 있다는 점입니다.</strong> 다른 학원은 필요하지 않은<br>
                                            수업을 들어야 해서 시간 낭비라는 생각이 들었는데, <strong>러셀에서는 필요한 수업만 들어도 되고<br> 
                                            수업의 질도 좋아서 공부시간을 효율적으로 활용할 수 있었습니다.</strong> 윈터스쿨 이후 가장 큰 변화는<br>
                                            생활습관이 규칙적으로 변하였다는 점입니다. 일찍 일어나고 일찍 자는 습관이 들었고,<br>
                                            공부량이 폭발적으로 늘었습니다. 매일 10시간 이상 공부하며 다음 학기를 대비할 수 있었고,<br>
                                            모의고사 성적도 유지할 수 있었습니다.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="stu">
                                    <div class="stu-box">
                                        <div class="stu-img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/stu_lsh.jpg" alt="이서현 학생"></div>
                                        <div class="stu-info" style="width:230px">
                                            <p class="name">2022 윈터스쿨 재원생<br><strong>러셀 부천 이서현</strong></p>
                                            <a href="javascript:CastPopup('https://tv.naver.com/v/33595642')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                        </div>
                                    </div>
                                    <div class="stu_txt">
                                        <p class="tit mb0">연세대학교 언더우드학부 생명과학공학 합격</p>
                                        <p>
                                            <span>담임선생님이 저의 멘토 역할을 해주셨습니다.</span><br>
                                            학교를 제외하고 가장 많은 시간을 보낸 러셀 부천에서는 <strong>담임선생님이 저의 멘토 역할을 해주셨습니다.</strong><br>
                                            성적이 오르지 않고 제자리걸음을 할 때 자주 선생님과 상담을 하기도 했고, 수시와 정시의 갈림길에서<br>
                                            갈피를 못 잡을 때 방향을 제시해 주는 등 <strong>대입과 관련하여 다양한 조언을 해주셨습니다.</strong>
                                        </p>
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="stu">
                                    <div class="stu-box">
                                        <div class="stu-img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/stu_sjh.jpg" alt="심재희 학생"></div>
                                        <div class="stu-info">
                                            <p class="name">2022 윈터스쿨 재원생<br><strong>러셀 부천 심재희</strong></p>
                                            <a href="javascript:CastPopup('https://tv.naver.com/v/33595275')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                        </div>
                                    </div>
                                    <div class="stu_txt">
                                        <p class="tit mb0">상지대학교 한의예과 합격</p>
                                        <p>
                                            <span>단과 수업을 학원 내에서 듣기 때문에 이동 시간,<br>낭비하는 시간이 현저하게 줄어 공부시간을 극대화할 수 있습니다.</span><br>
                                            러셀 부천의 장점은 <strong>공부시간을 극대화</strong>할 수 있다는 점입니다. 점심, 저녁 급식을 제공하고<br>
                                            <strong>단과 수업을 학원 내에서 듣기 때문에 이동시간, 낭비하는 시간이 현저하게 줄어듭니다.</strong><br>
                                            또한 엄격한 출결관리 덕분에 힘들어도 늘어지지 않고 공부할 수 있습니다. 
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <% Else %>
            <!-- 바자관 슬라이드 -->
            <div class="js-menu-con">
                <div class="baja-slide-wrap">
                    <div class="baja-slide-navi type01">
                        <div class="swiper-wrapper">
                            <% If sCampusCode = "CD0257" Then '중계 %>
                            <div class="swiper-slide">
                                <span><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/baja_tab01_txt01.png" alt="최상위권 집결, 우수한 면학분위기" /></span>
                            </div>
                            <% Else %>
                            <div class="swiper-slide">
                                <span><img src="<%=Application("img_path_russel")%>/intro/2023/winter/baja_tab01_txt01.png" alt="최상위권 집결, 우수한 면학분위기" /></span>
                            </div>
                            <% End If %>
                            <div class="swiper-slide">
                                <span><img src="<%=Application("img_path_russel")%>/intro/2023/winter/baja_tab01_txt02.png" alt="겨울방학 학습 습관 형성" /></span>
                            </div>
                            <% If sCampusCode = "CD0257" Then '중계 %>
                            <div class="swiper-slide">
                                <span><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/baja_tab01_txt03.png" alt="최상위권 수준별 맞춤 단과" /></span>
                            </div>
                            <% Else %>
                            <div class="swiper-slide">
                                <span><img src="<%=Application("img_path_russel")%>/intro/2023/winter/baja_tab01_txt03.png" alt="최상위권 수준별 맞춤 단과" /></span>
                            </div>
                            <% End If %>
                        </div>
                    </div>

                    <!-- baja-slide -->
                    <div class="swiper-container baja-slide type01">
                        <div class="swiper-wrapper">
                            <!-- 최상위권 집결, 우수한 면학분위기 -->
                            <div class="swiper-slide">
                                <% If sCampusCode = "CD0244" Then '분당 %>
                                <ul>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/winter/stu_lhs02.jpg" alt="이현서 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>가천대학교<br>의예과 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 분당 이현서</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://www.youtube.com/embed/HEK-C9UN3o8')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>개방형 구조를 통해 다른 친구들을 보며<br>동기부여를 받았습니다.</span><br>
                                            바른공부 자습전용관에서 가장 좋았던 점은 면학분위기와<br>
                                            개방형 구조입니다. <strong>개방형 구조를 통해 다른 친구들이<br>
                                            공부하는 것을 보며 동기부여를 받을 수 있었고,<br>
                                            면학분위기도 잘 되어</strong> 있어 공부에 방해되는 친구 없이 모두가<br>
                                            공부에 집중하기 좋은 구조였습니다. 
                                        </p>
                                    </li>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/winter/stu_kcu.jpg" alt="김채은 학생"></div>
                                            <div class="stu-info mb20" style="width: 255px;">
                                                <dl>
                                                    <dt>고려대학교<br>자유전공학부(자연) 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 분당 김채은</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://www.youtube.com/embed/DNjiSCrM0jA')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>최상위권 학생들이 모여 공부하는<br>좋은 면학분위기가 조성되어 있습니다.</span><br>
                                            러셀 분당 학원에 재원하고 있는 <strong>학생들이 우수하여<br>
                                            좋은 면학분위기를 형성</strong>한다는 점이 좋았습니다.<br>
                                            바자관이 개방된 형태로 되어 있어 공부하다 힘들 때면<br>
                                            옆 사람을 보며 다시 정신차리고 공부하도록 도와주는<br>
                                            긍정적인 동기부여가 되었습니다. 
                                        </p>
                                    </li>
                                </ul>
                                <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                                <ul>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/russel_pc/2023/winter/stu_kyu.jpg" alt="김영윤 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>성균관대학교<br>의예과 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 평촌 김영윤</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://tv.naver.com/v/34255524')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>좋은 면학분위기에서 공부할 수 있어서 좋았습니다.</span><br>
                                            겨울방학을 알차게 보내기 위해 러셀 윈터스쿨을<br>
                                            선택하였습니다. 바른공부 자습전용관의 장점은<br>
                                            면학분위기와 같은 공부 환경입니다. <strong>최상위권 학생들이<br>
                                            모여 있어 좋은 면학분위기가 유지</strong>되어 <strong>공부에 집중하기에<br>
                                            최적화된 장소</strong>라고 느꼈습니다. 
                                        </p>
                                    </li>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_jan.jpg" alt="조안나 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>서울대학교<br>사회복지학과 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 평촌 조안나</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://tv.naver.com/v/34253498')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>개방형 구조로 되어 있어 동기부여를 받을 수 있었습니다.</span><br>
                                            바른공부 자습전용관의 개방형 구조가 좋았습니다.<br> 
                                            통유리로 되어 있어 더 넓어 보이고 탁 트여 있는 개방감이<br> 
                                            좋았습니다. 또한 <strong>다른 친구들의 모습을 보며 경쟁하는<br>
                                            기분이 들어 동기부여가 많이 되었습니다. </strong>
                                        </p>
                                    </li>
                                </ul>
                                <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                                <ul>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_lsh.jpg" alt="이상후 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>서울대학교<br>의예과 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀CORE 대전 이상후</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://tv.naver.com/v/34136621')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>공부에만 집중할 수 있는 면학분위기가 조성되어 있습니다.</span><br>
                                            러셀 윈터스쿨의 장점은 좋은 면학분위기 입니다.<br>
                                            <strong>바른공부 자습전용관에 있는 친구들 모두가 목표를 이루기 위해 공부에만 집중하는 학생들로 구성되어
                                            있어 공부에만 집중하는 면학분위기가 조성</strong>되어 있습니다. 
                                        </p>
                                    </li>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_jsu.jpg" alt="정성은 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>전남대학교<br>약학과 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀CORE 광주 정성은</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://tv.naver.com/v/34802749')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>바자관 학생들이 공부하는 모습에 자극을 받아<br>집중할 수 있었습니다.</span><br>
                                            러셀에서는 <strong>학생들이 바로 옆에서 같이 공부하기에<br> 
                                            방심하지 않고 공부할 수 있었습니다.</strong><br> 
                                            수업과 자습 시간에 옆에서 집중하고 있는 친구들을 보면서<br> 
                                            자극을 받아 더욱 더 집중할 수 있었습니다. 
                                        </p>
                                    </li>
                                </ul>
                                <% Else %>
                                <ul>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_lsh.jpg" alt="이상후 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>서울대학교<br>의예과 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀CORE 대전 이상후</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://tv.naver.com/v/34136621')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>최상위권이 모여 공부에만<br>집중하는 면학분위기가 조성되어 있습니다.</span><br>
                                            러셀 윈터스쿨의 장점은 좋은 면학분위기 입니다.<br>
                                            <strong>바자관에 있는 친구들 모두가 최상위권 학생들로 구성되어<br>
                                            있어 공부에만 집중하는 면학분위기가 조성</strong>되어 있습니다. 
                                        </p>
                                    </li>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_jsu.jpg" alt="정성은 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>전남대학교<br>약학과 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀CORE 광주 정성은</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://tv.naver.com/v/34802749')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>최상위권 학생들이 공부하는 모습에 자극을 받아<br>집중할 수 있었습니다.</span><br>
                                            러셀에서는 <strong>최상위권 학생들이 바로 옆에서 같이 공부하기에<br> 
                                            방심하지 않고 공부할 수 있었습니다.</strong><br> 
                                            수업과 자습 시간에 옆에서 집중하고 있는 친구들을 보면서<br> 
                                            자극을 받아 더욱 더 집중할 수 있었습니다. 
                                        </p>
                                    </li>
                                </ul>
                                <% End If %>
                            </div>

                            <!-- 겨울방학 학습 습관 형성 -->
                            <div class="swiper-slide">
                                <% If sCampusCode = "CD0244" Then '분당 %>
                                <ul>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/winter/stu_khh.jpg" alt="김현희 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>이화여자대학교<br>의예과 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 분당 김현희</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://www.youtube.com/embed/BXgN_ZVh-WA')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>표준 시간표를 통해 규칙적인 생활 습관을<br>형성할 수 있었어요.</span><br>
                                            분당 바자관의 큰 장점은 표준 시간표입니다.<br> 
                                            일찍 등원하고 정해진 시간대로 <strong>규칙적인 생활을 할 수 있어서<br> 
                                            겨울방학을 알차게 보낼 수 있었습니다.</strong> 
                                        </p>
                                    </li>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_ksm.jpg" alt="강수민 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>서울대학교<br>자유전공학부 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 부천 강수민</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://www.youtube.com/embed/tgO2B-EGRPM')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span class="pb40">겨울방학동안 규칙적인 공부 습관을 잡을 수 있었어요.</span><br>
                                            러셀 윈터스쿨에서는 <strong>규칙적인 표준 시간표가 존재</strong>한다는<br>
                                            것이 좋았습니다. 8시까지 등원과 규칙적인 쉬는 시간 간격 등이<br>
                                            공부 루틴을 잡는 데에 도움을 주었습니다. 공부는 꾸준함이<br>
                                            중요한 만큼, <strong>규칙적인 공부 습관을 만들 수 있었습니다.</strong>
                                        </p>
                                    </li>
                                </ul>
                                <% Else %>
                                <ul>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_nhj.jpg" alt="노현지 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>서울대학교<br>의예과 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 중계 노현지</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://tv.naver.com/v/34060532')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>윈터스쿨에서 규칙적으로 생활하며<br>공부 효율과 양을 극대화할 수 있었어요.</span><br>
                                            겨울방학은 온전히 공부에만 집중할 수 있는 마지막<br>
                                            기회이기 때문에 윈터스쿨을 통해 제대로 보내고자 했습니다.<br>
                                            윈터스쿨에서 <strong>규칙적인 생활을 하면서 공부의 효율과 양을<br>
                                            극대화하고, 계획적으로 공부하는 습관</strong>이 생겼습니다.
                                        </p>
                                    </li>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_ksm.jpg" alt="강수민 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>서울대학교<br>자유전공학부 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 부천 강수민</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://tv.naver.com/v/33594834')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span class="pb40">겨울방학동안 규칙적인 공부 습관을 잡을 수 있었어요.</span><br>
                                            러셀 윈터스쿨에서는 <strong>규칙적인 표준 시간표가 존재</strong>한다는<br>
                                            것이 좋았습니다. 8시까지 등원과 규칙적인 쉬는 시간 간격 등이<br>
                                            공부 루틴을 잡는 데에 도움을 주었습니다. 공부는 꾸준함이<br>
                                            중요한 만큼, <strong>규칙적인 공부 습관을 만들 수 있었습니다.</strong>
                                        </p>
                                    </li>
                                </ul>
                                <% End If %>
                            </div>

                            <!-- 최상위권 수준별 맞춤 단과 -->
                            <div class="swiper-slide">                                
                                <% If sCampusCode = "CD0244" Then '분당 %>
                                <ul>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_lhs.jpg" alt="이현서 학생"></div>
                                            <div class="stu-info" style="width:255px;">
                                                <dl>
                                                    <dt>가톨릭대학교(성의)<br>의예과 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 분당 이현서</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://www.youtube.com/embed/QUD1OGmHdfg')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>실력 좋으신 선생님들의 수업을 선택해서<br>들을 수 있었습니다.</span><br>
                                            윈터스쿨에서는 <strong>실력 좋으신 선생님들의 수업을 선택해서<br> 
                                            들을 수 있고</strong> 바자관에서 바로 자습을 할 수 있어 좋았습니다.<br>
                                            <strong>강의실도 굉장히 크고 쾌적하며, 티비 화면이 많이 설치</strong>되어서<br>
                                            어떤 자리에서든 수업을 집중해서 들을 수 있었습니다.
                                        </p>
                                    </li>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/winter/stu_sju.jpg" alt="소진우 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>성균관대학교<br>컴퓨터교육과 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 분당 소진우</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://www.youtube.com/embed/kbP3vT0FZzI')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>메가스터디 선생님들의 퀄리티 높은 수업을<br>
                                            현장에서 볼 수 있다는 점이 가장 좋았습니다.</span><br>
                                            러셀 단과의 가장 큰 장점은 <strong>메가스터디 선생님들의 퀄리티<br>
                                            높은 수업을 현장에서 실제로 볼 수 있다는 점</strong>입니다.<br> 
                                            많은 학생들과 함께 수업을 직접 듣게 되니 그 현장감과 분위기가<br>
                                            사뭇 달라 더욱 수업에 몰입해서 수강할 수 있었습니다.
                                        </p>
                                    </li>
                                </ul>
                                <% Else %>
                                <ul>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_lhs.jpg" alt="이현서 학생"></div>
                                            <div class="stu-info" style="width:255px;">
                                                <dl>
                                                    <dt>가톨릭대학교(성의)<br>의예과 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 분당 이현서</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://tv.naver.com/v/34798377')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>실력 좋으신 선생님들의 수업을 선택해서<br>들을 수 있었습니다.</span><br>
                                            윈터스쿨에서는 <strong>실력 좋으신 선생님들의 수업을 선택해서<br> 
                                            들을 수 있고</strong> 바자관에서 바로 자습을 할 수 있어 좋았습니다.<br>
                                            <strong>강의실도 굉장히 크고 쾌적하며, 티비 화면이 많이 설치</strong>되어서<br>
                                            어떤 자리에서든 수업을 집중해서 들을 수 있었습니다.
                                        </p>
                                    </li>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_psu.jpg" alt="박성은 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>연세대학교<br>경영학과 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 부천 박성은</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://tv.naver.com/v/33595158')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>필요한 수업만 선택해서 들을 수 있어<br>시간을 효율적으로 활용할 수 있었어요.</span><br>
                                            <strong>윈터스쿨의 장점은 필요한 단과 수업을 골라 들을 수 있다는<br> 
                                            점입니다.</strong> 다른 학원은 필요하지 않은 수업을 들어야 해서<br>
                                            시간 낭비라는 생각이 들었는데, <strong>러셀에서는 필요한 수업만 듣고<br>
                                            수업의 질도 좋아 시간을 효율적으로 활용</strong>할 수 있었습니다. 
                                        </p>
                                    </li>
                                </ul>
                                <% End If %>
                            </div>
                        </div>
                    </div>
                    <!-- //baja-slide -->
                </div>
            </div>
            
            <!-- 바자관 슬라이드2 -->
            <div class="js-menu-con mt100">
                <div class="baja-slide-wrap">
                    <div class="baja-slide-navi type02">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <span><img src="<%=Application("img_path_russel")%>/intro/2023/winter/baja_tab02_txt01.png" alt="담임선생님의 철저한 관리" /></span>
                            </div>
                            <div class="swiper-slide">
                                <span><img src="<%=Application("img_path_russel")%>/intro/2023/winter/baja_tab02_txt02.png" alt="공부에만 집중할 수 있는 환경" /></span>
                            </div>
                            <div class="swiper-slide">
                                <span><img src="<%=Application("img_path_russel")%>/intro/2023/winter/baja_tab02_txt03.png" alt="학습 동선 최소화" /></span>
                            </div>
                        </div>
                    </div>

                    <!-- baja-slide -->
                    <div class="swiper-container baja-slide type02">
                        <div class="swiper-wrapper">
                            <!-- 담임선생님의 철저한 관리 -->
                            <div class="swiper-slide">
                                <% If sCampusCode = "CD0244" Then '분당 %>
                                <ul>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/winter/stu_syb.jpg" alt="신예빈 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>서울대학교<br>의류학과 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 분당 신예빈</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://www.youtube.com/embed/i1kZvDtoNk8')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>담임선생님께서 저의 수험생활을<br>밀착 관리해 주셔서 좋았어요.</span><br>
                                            수시를 준비하는 시즌에는 <strong>철저한 수시 상담</strong>을 통해<br>
                                            입시 전략이 흔들리지 않도록 도와 주셨고, 모의고사를<br>
                                            준비해야 하는 과정에서는 <strong>성적 분석과 이를 통한 상담</strong>을 통해<br>
                                            앞으로의 방향을 제시해 주셔서 혼란을 줄이고 해야 하는 일에<br>
                                            완전히 몰입할 수 있었습니다.
                                        </p>
                                    </li>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/winter/stu_lsy.jpg" alt="이서연 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>계명대학교<br>의예과 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 분당 이서연</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://www.youtube.com/embed/SPTp7pDjXCE')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>수험생의 마음을 가장 잘 이해하는 담임선생님과<br>주기적으로 상담을 받을 수 있었습니다.</span><br>
                                            담임선생님께서 <strong>의대 입시 전략을 짤 때 저와 비슷한 성적의<br> 
                                            분당 지역 선배들의 입시 결과를 토대로 말씀해주셔서<br>
                                            더욱 신뢰</strong> 할 수 있었습니다. 수능과 수험생활에 대해 잘 알고<br>
                                            수험생의 마음을 이해해 주시고 <strong>고민이 있을 때마다<br>
                                            상담</strong>을 받을 수 있어서 좋았습니다.
                                        </p>
                                    </li>
                                </ul>
                                <% Else %>
                                <ul>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_ysh.jpg" alt="윤성혁 학생"></div>
                                            <div class="stu-info" style="width:230px">
                                                <dl>
                                                    <dt>울산대학교<br>의예과 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 센텀 윤성혁</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://tv.naver.com/v/33008617')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>담임선생님께서 엄격하게 관리해 주시는<br>면학분위기가 좋았어요.</span><br>
                                            윈터스쿨에서는 <strong>입시 담임선생님께서 엄격하게 관리해<br> 
                                            주시는 면학분위기</strong>가 좋았습니다. <strong>학습 중 어려움이나 고민이<br> 
                                            생기면 정말 친절하게 상담</strong>해 주셔서 힘든 수험기간 중 의지가<br>
                                            많이 되었습니다.  
                                        </p>
                                    </li>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_kjh.jpg" alt="강준혁 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>카이스트 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 목동 강준혁</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://tv.naver.com/v/33994635')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>담임선생님이 가까운 곳에 있어 편하게 상담을<br>받을 수 있었습니다.</span><br>
                                            바자관 바로 앞에 <strong>담임선생님이 있어 편하게 입시 상담</strong>을<br>
                                            받을 수 있었습니다. 학기 초부터 학생부종합전형에<br> 
                                            대해  조언해 주신 덕분에 제때 생활기록부를 채울 수 있었고,<br>
                                            <strong>시기마다 입시와 관련된 구체적인 정보를 알려주셔서<br>
                                            원서접수에 도움</strong>이 되었습니다.  
                                        </p>
                                    </li>
                                </ul>
                                <% End If %>
                            </div>

                            <!-- 공부에만 집중할 수 있는 환경 -->
                            <% If sCampusCode <> "CD0250" Then '부천 제외 %>
                            <div class="swiper-slide">
                                <% If sCampusCode = "CD0244" Then '분당 %>
                                <ul>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_yjw.jpg" alt="윤정원 학생"></div>
                                            <div class="stu-info pb20">
                                                <dl>
                                                    <dt>서울대학교<br>치의학학석사<br>통합과정 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 대치 윤정원</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://tv.naver.com/v/33616720')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>체계적인 시간표와 쾌적한 환경, 여러 시스템으로<br>방학 동안 공부에만 집중할 수 있었어요.</span><br>
                                            윈터스쿨은 <strong>체계적인 시간표로 운영</strong>되어 많은 시간을 공부에만<br>
                                            쓸 수 있었습니다. <strong>항상 적정 온도의 상쾌한 공기가 유지</strong>되어<br> 
                                            쾌적하게 공부할 수 있었습니다. <strong>플래너 작성, 단과, 담임선생님 등<br>
                                            러셀 시스템을 통해 부족한 부분을 극복</strong>할 수 있었습니다.
                                        </p>
                                    </li>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/winter/stu_hys.jpg" alt="한예슬 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>성균관대학교<br>공학계열 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 분당 한예슬</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://www.youtube.com/embed/nN0-d-Mp0Wg')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>체계적인 시간표와 쾌적한 환경으로<br>공부에만 집중할 수 있었어요.</span><br>
                                            자습관의 환경과 시설이 매우 좋았습니다. <strong>자습관이<br>
                                            전체적으로 깨끗했고 책상이 넓었으며 바로 옆에 책장이<br>
                                            있어서 공부에만 집중</strong>할 수 있는 분위기가 형성되었습니다.<br>
                                            또한 <strong>시간표가 정해져 있어서 규칙적인 생활</strong>을 할 수 있었고,<br>
                                            집중력을 향상시킬 수 있었습니다. 
                                        </p>
                                    </li>
                                </ul>
                                <% Else %>
                                <ul>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_yjw.jpg" alt="윤정원 학생"></div>
                                            <div class="stu-info pb20">
                                                <dl>
                                                    <dt>서울대학교<br>치의학학석사<br>통합과정 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 대치 윤정원</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://tv.naver.com/v/33616720')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>체계적인 시간표와 쾌적한 환경, 여러 시스템으로<br>방학 동안 공부에만 집중할 수 있었어요.</span><br>
                                            윈터스쿨은 <strong>체계적인 시간표로 운영</strong>되어 많은 시간을 공부에만<br>
                                            쓸 수 있었습니다. <strong>항상 적정 온도의 상쾌한 공기가 유지</strong>되어<br> 
                                            쾌적하게 공부할 수 있었습니다. <strong>플래너 작성, 단과, 담임선생님 등<br>
                                            러셀 시스템을 통해 부족한 부분을 극복</strong>할 수 있었습니다.
                                        </p>
                                    </li>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_jan.jpg" alt="조안나 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>서울대학교<br>사회복지학과 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 평촌 조안나</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://tv.naver.com/v/34253498')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span class="pb40">공부에만 몰입할 수 있는 환경이 좋았습니다.</span><br>
                                            러셀의 장점은 공부를 위한 공간이라는 점입니다.<br>
                                            <strong>다른 유혹거리로부터 학생들을 단절시켜 공부에만 몰입할 수<br>있는
                                            환경을 조성</strong>하기 때문입니다. 또한 <strong>바자관이 개방형 구조와<br>
                                            통유리 창</strong>으로 탁 트여 있는 환경이 좋았습니다.
                                        </p>
                                    </li>
                                </ul>
                                <% End If %>
                            </div>
                            <% End If %>

                            <!-- 학습 동선 최소화 -->
                            <div class="swiper-slide">
                                <% If sCampusCode = "CD0244" Then '분당 %>
                                <ul>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/winter/stu_jcy.jpg" alt="정찬영 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>서울대학교<br>경제학부 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 분당 정찬영</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://www.youtube.com/embed/hM7ArxDrITQ')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>단과 수업이 끝나자마자 바자관에서 공부할 수 있어서<br>
                                            이동시간을 크게 줄였습니다.</span><br>
                                            <strong>바자관과 단과 강의실이 가까이 있다는 점</strong>이 큰 장점이었습니다.<br> 
                                            수업이 끝나자마자 바자관에서 공부하는 것이 가능해서 시간을<br> 
                                            효율적으로 활용할 수 있었습니다. 또한 <strong>자리 예약시스템이<br>
                                            잘 되어 있어 수업을 들을 때 자리로 인해 혼란을 겪는 일이<br>
                                            없었습니다.</strong> 
                                        </p>
                                    </li>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/winter/stu_kth.jpg" alt="김태헌 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>고려대학교<br>경영학과 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 분당 김태헌</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://www.youtube.com/embed/oRmhCPpSZMY')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>단과와 자습이 한 건물에 있어 이동시간이 거의 들지 않아<br>
                                            효율적인 시간관리가 가능했습니다.</span><br>
                                            유명한 강사의 현장 강의를 들으려면 대치동을 가야하는 것이<br>
                                            보통인데 <strong>바자관 바로 앞에서 들을 수 있기에 이동시간이<br>
                                            거의 없었습니다.</strong> 이동할 때의 피로감이 없어서 그 시간에<br>
                                            더 공부를 하거나 휴식을 취하는 등 <strong>효율적인 시간 관리</strong>가<br>
                                            가능했습니다.
                                        </p>
                                    </li>
                                </ul>
                                <% Else %>
                                <ul>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_lju.jpg" alt="이정우 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>서울대학교<br>의예과 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 영통 이정우</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://tv.naver.com/v/33402064')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>한 건물 내에 자습관, 단과, 급식실이 있어<br>이동 시간을 아껴 공부에만 집중할 수 있었어요.</span><br>
                                            <strong>한 건물 내에 자습관과 단과, 급식실이 있어 이동 시간을<br> 
                                            아낄 수 있었고,</strong> 쾌적한 환경과 좋은 면학분위기에서 공부에만<br>
                                            집중할 수 있었습니다. 겨울방학 동안 철저하게 관리해 주신<br>
                                            덕분에 공부할 수 있는 의지와 끈기가 강해졌다고 생각합니다.
                                        </p>
                                    </li>
                                    <li>
                                        <div class="stu-box">
                                            <div class="stu-img"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/stu_phr.jpg" alt="표혜림 학생"></div>
                                            <div class="stu-info">
                                                <dl>
                                                    <dt>서울대학교<br>언론정보학과 합격</dt>
                                                    <dd>2022 윈터스쿨 재원생<br><strong>러셀 강남 표혜림</strong></dd>
                                                </dl>
                                                <a href="javascript:CastPopup('https://tv.naver.com/v/34801844')"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_play.png" alt=""></a>
                                            </div>
                                        </div>
                                        <p class="stu_txt">
                                            <span>한 건물에서 단과와 자습을 하여 이동 시간이 줄어<br>낭비하는 시간이 없었어요.</span><br>
                                            <strong>단과와 자습을 한 건물에서 해결할 수 있는 점</strong>이 가장 좋았습니다.<br> 
                                            <strong>이동 시간이 최소화되어 낭비되는 시간 없이 공부에 집중</strong>할 수<br>
                                            있었기 때문입니다. 또한, 급식도 바자관에서 바로 먹을 수 있어<br> 
                                            시간을 효율적으로 활용할 수 있었습니다.
                                        </p>
                                    </li>
                                </ul>
                                <% End If %>
                            </div>
                        </div>
                    </div>
                    <!-- //baja-slide -->
                </div>
            </div>
            <% If sCampusCode = "CD0244" Then '분당 %>
            <p class="r-txt mb0">* 2022 윈터스쿨 재원생의 후기 중 일부 내용을 발췌하였습니다. (러셀 분당, 러셀 대치, 러셀 부천)</p>
            <% Else %>
            <p class="r-txt mb0">* 러셀 전체 학원 2022 윈터스쿨 재원생의 후기 중 일부 내용을 발췌하였습니다.</p>
            <% End If %>
            <% End If %>
        </div>
    </div>
</div>
<!-- //최상위권 집결, 러셀 -->

