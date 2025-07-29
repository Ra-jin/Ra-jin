<div class="cont js-cont-wrap <%=campusName%>">
    <div class="cont04">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer_overall/cont04_tit.jpg" alt="러셀 ㅇㅇ 썸머스쿨 종합반은 여름방학동안 최상위권 도약을 위한 프로그램이 있습니다."></p>
        <ul class="curri-wrap">
            <li>
                <p>
                    <strong>러셀 강남&middot;대치&middot;기숙</strong> 및 <br>
                    <strong>메가스터디 인강</strong> 출강
                </p>
            </li>
            <li>
                <p>
                    종합반 전 과목 <br>
                    <strong>현장강의 진행</strong>
                </p>
            </li>
            <li>
                <p>
                    과목별 성취도에 맞춘 <br>
                    <strong>수준별 맞춤 수업</strong>
                </p>
            </li>
            <li>
                <p>
                    <strong>1:1 맞춤 관리</strong> 및 <br>
                    <strong>질의응답 직접 진행</strong>
                </p>
            </li>
        </ul>

        <!--강사 슬라이드-->
        <% If campus_code = "CD0249" Then '영통 %>
        <div class="tbl-box p0">
            <div class="txt-coming">
                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/ico_comming.png" alt="" /></div>
                <p>
                    <%=txtCampus%> <br>
                    <strong>썸머스쿨 종합반 출강 강사진</strong>은<br>
                    추후 공개 예정입니다.
                </p>
            </div>
        </div>
        <% ElseIf campus_code = "CD0349" Then '울산 %>
        <link href="/css/t_list.css" rel="stylesheet" type="text/css">
        <div class="teacher-wrap">
            <div class="teacher-sub-list swiper-container russel_us">
                <ul class="swiper-wrapper">
                    <!-- 국어 -->
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="t-sub">국어</span>
                            <span class="t-info"><strong>박수빈</strong> 선생님</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/ko_psb.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>대구</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="t-sub">국어</span>
                            <span class="t-info"><strong>소유연</strong> 선생님</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/ko_syy.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>대구</span></p>
                        </div>
                    </li>        
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="t-sub">국어</span>
                            <span class="t-info"><strong>심찬우</strong> 선생님</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/ko_scw.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>대치</span></p>
                            <p><span>러셀<br>기숙</span></p>
                        </div>
                    </li>  
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="t-sub">국어</span>
                            <span class="t-info"><strong>유민</strong> 선생님</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/ko_ym.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>기숙</span></p>
                            <p><span>러셀<br>대구</span></p>
                        </div>
                    </li>               
                    <!-- //국어 -->
                    <!-- 수학 -->
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="t-sub">수학</span>
                            <span class="t-info"><strong>강훈</strong> 선생님</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_ksh.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>울산</span></p>
                        </div>
                    </li>    
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="t-sub">수학</span>
                            <span class="t-info"><strong>김유한</strong> 선생님</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_kyh.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>울산</span></p>
                        </div>
                    </li>    
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="t-sub">수학</span>
                            <span class="t-info"><strong>김재완</strong> 선생님</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_kjw.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>강남</span></p>
                            <p><span>러셀<br>대구</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="t-sub">수학</span>
                            <span class="t-info"><strong>손우혁</strong> 선생님</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_swh.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>강남</span></p>
                            <p><span>러셀<br>대치</span></p>
                            <p><span>러셀<br>기숙</span></p>
                        </div>
                    </li>   
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="t-sub">수학</span>
                            <span class="t-info"><strong>정창민</strong> 선생님</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_jcm.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>대구</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="t-sub">수학</span>
                            <span class="t-info"><strong>조태근</strong> 선생님</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_jtg.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>목동</span></p>
                        </div>
                    </li>
                    <!-- //수학 -->
                    <!-- 영어 -->
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="t-sub">영어</span>
                            <span class="t-info"><strong>문호상</strong> 선생님</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/eng_mhs.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>대구</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="t-sub">영어</span>
                            <span class="t-info"><strong>민준식</strong> 선생님</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/eng_mjs.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>강남</span></p>
                        </div>
                    </li>     
                    <!-- //영어 -->
                    <!-- 과탐 -->
                    <li class="swiper-slide">
                        <div class="info-box">
                            
                            <span class="t-sub">물리학Ⅰ</span>
                            <span class="t-info"><strong>강신영</strong> 선생님</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_ksy.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>기숙</span></p>
                            <p><span>러셀<br>대구</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            
                            <span class="t-sub">화학Ⅰ</span>
                            <span class="t-info"><strong>박건수</strong> 선생님</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_pgs.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>중계</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            
                            <span class="t-sub">생명과학Ⅰ</span>
                            <span class="t-info"><strong>이석준</strong> 선생님</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_lsj.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>대치</span></p>
                            <p><span>러셀<br>기숙</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            
                            <span class="t-sub">지구과학Ⅰ</span>
                            <span class="t-info"><strong>함지영</strong> 선생님</span>                    
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_hjy.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>강남</span></p>
                            <p><span>러셀<br>기숙</span></p>
                        </div>
                    </li>   
                    <!-- //과탐 -->
        
                    <!-- 논술 -->
                    <li class="swiper-slide">
                        <div class="info-box">
                            
                            <span class="t-sub">수리논술</span>
                            <span class="t-info"><strong>송명관</strong> 선생님</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/non_smg.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>강남</span></p>
                            <p><span>러셀<br>대치</span></p>
                        </div>
                    </li>
                    <!-- //논술 -->
                </ul>
            </div>
        </div>
        <% ElseIf campus_code = "CD0342" Then '대구 %>
        <link href="/css/t_list.css" rel="stylesheet" type="text/css">
        <div class="teacher-wrap">
            <div class="teacher-sub-list swiper-container">
                <ul class="swiper-wrapper">
                    <!-- 국어 -->
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">국어</span>
                            <span class="t-info"><strong>구성은</strong> 선생님</span>
                            <span class="t-explain">서강대학교 교육대학원<br>국어교육 석사</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/ko_kse.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>중계</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">국어</span>
                            <span class="t-info"><strong>김강민</strong> 선생님</span>
                            <span class="t-explain">한양대학교<br>국어교육학과 졸업</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/ko_kkm.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>대치</span></p>
                            <p><span>러셀<br>기숙</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">국어</span>
                            <span class="t-info"><strong>박석준</strong> 선생님</span>
                            <span class="t-explain">연세대학교 졸업</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/ko_psj02.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>대치</span></p>
                            <p><span>러셀<br>기숙</span></p>
                            <p class="i-blue"><span><strong>메가스터디</strong>인강</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">국어</span>
                            <span class="t-info"><strong>박수빈</strong> 선생님</span>
                            <span class="t-explain">중상위권 맞춤 수업</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/ko_psb.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>센텀</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">국어</span>
                            <span class="t-info"><strong>소유연</strong> 선생님</span>
                            <span class="t-explain">N수 전문 강사</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/ko_syy.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>울산</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">국어</span>
                            <span class="t-info"><strong>유민</strong> 선생님</span>
                            <span class="t-explain">연세대학교 교육대학원<br>국어교육 석사</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/ko_ym.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>기숙</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">국어</span>
                            <span class="t-info"><strong>최지인</strong> 선생님</span>
                            <span class="t-explain">고1&middot;고2 내신 전문 강사</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/ko_cji.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>울산</span></p>
                        </div>
                    </li>
                    <!-- //국어 -->
                    <!-- 수학 -->
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">수학</span>
                            <span class="t-info"><strong>강영만</strong> 선생님</span>
                            <span class="t-explain">고려대학교 사범대학 졸업</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_kym.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>강남</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">수학</span>
                            <span class="t-info"><strong>김유한</strong> 선생님</span>
                            <span class="t-explain">포항공대 졸업</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_kyh.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>영통</span></p>
                        </div>
                    </li>    
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">수학</span>
                            <span class="t-info"><strong>김재완</strong> 선생님</span>
                            <span class="t-explain">성균관대학교<br>수학과 졸업</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_kjw.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>강남</span></p>
                            <p><span>러셀<br>기숙</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">수학</span>
                            <span class="t-info"><strong>손우혁</strong> 선생님</span>
                            <span class="t-explain">서울대학교<br>수학과 졸업</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_swh.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>대치</span></p>
                            <p><span>러셀<br>기숙</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">수학</span>
                            <span class="t-info"><strong>송화성</strong> 선생님</span>
                            <span class="t-explain">고려대학교<br>수학교육과 졸업</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_shs.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>강남</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">수학</span>
                            <span class="t-info"><strong>장유리</strong> 선생님</span>
                            <span class="t-explain">성균관대학교 대학원<br>수학교육과 졸업</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_jyr.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>기숙</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">수학</span>
                            <span class="t-info"><strong>정창민</strong> 선생님</span>
                            <span class="t-explain">러셀 부천<br>수학과 최다수강생</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_jcm.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>부천</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">수학</span>
                            <span class="t-info"><strong>최지현</strong> 선생님</span>
                            <span class="t-explain">고1 내신 전문 강사</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_cjh03.png" alt="" /></p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">수학</span>
                            <span class="t-info"><strong>황수환</strong> 선생님</span>
                            <span class="t-explain">고려대학교 졸업</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_hsh.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>분당</span></p>
                        </div>
                    </li>
                    <!-- //수학 -->
                    <!-- 영어 -->
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">영어</span>
                            <span class="t-info"><strong>고수현</strong> 선생님</span>
                            <span class="t-explain">동국대학교<br>영어통번역학과 졸업</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/eng_ksh.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>대치</span></p>
                            <p><span>러셀<br>기숙</span></p>
                            <p class="i-blue"><span><strong>메가스터디</strong>인강</span></p>
                        </div>
                    </li>
                    <!-- <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">영어</span>
                            <span class="t-info"><strong>김지영</strong> 선생님</span>
                            <span class="t-explain">연세대학교 교육학과 졸업</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/eng_kjy.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>강남</span></p>
                            <p><span>러셀<br>대치</span></p>
                            <p><span>러셀<br>기숙</span></p>
                            <p class="i-blue"><span><strong>메가스터디</strong>인강</span></p>
                        </div>
                    </li> -->
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">영어</span>
                            <span class="t-info"><strong>문호상</strong> 선생님</span>
                            <span class="t-explain">중위권 맞춤 수업</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/eng_mhs.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>분당</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">영어</span>
                            <span class="t-info"><strong>이효진</strong> 선생님</span>
                            <span class="t-explain">고1&middot;고2 내신 전문 강사</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/eng_lhj.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>울산</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">영어</span>
                            <span class="t-info"><strong>장원</strong> 선생님</span>
                            <span class="t-explain">서강대학교 졸업</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/eng_jw.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>강남</span></p>
                            <p><span>러셀<br>기숙</span></p>
                        </div>
                    </li>
                    <!-- //영어 -->
        
                    <!-- 사탐 -->
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate live">대치동 LIVE 강의</span>
                            <span class="t-sub">한국지리/세계지리</span>
                            <span class="t-info"><strong>이기상</strong> 선생님</span>
                            <span class="t-explain">메가스터디 온라인 대표강사</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/soc_lks.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>대치</span></p>
                            <p><span>러셀<br>기숙</span></p>
                            <p class="i-blue"><span><strong>메가스터디</strong>인강</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate live">대치동 LIVE 강의</span>
                            <span class="t-sub">동아시아사/세계사/한국사</span>
                            <span class="t-info"><strong>이다지</strong> 선생님</span>
                            <span class="t-explain">메가스터디 온라인 대표강사</span>
                         </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/soc_ldj02.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>대치</span></p>
                            <p class="i-blue"><span><strong>메가스터디</strong>인강</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate live">대치동 LIVE 강의</span>
                            <span class="t-sub">생활과윤리/윤리와사상</span>
                            <span class="t-info"><strong>김종익</strong> 선생님</span>
                            <span class="t-explain">메가스터디 온라인 대표강사</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/soc_kji.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>강남</span></p>
                            <p><span>러셀<br>대치</span></p>
                            <p><span>러셀<br>기숙</span></p>
                            <p class="i-blue"><span><strong>메가스터디</strong>인강</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate live">대치동 LIVE 강의</span>
                            <span class="t-sub">정치와법</span>
                            <span class="t-info"><strong>김용택</strong> 선생님</span>
                            <span class="t-explain">메가스터디 온라인 대표강사</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/soc_kyt.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>강남</span></p>
                            <p><span>러셀<br>대치</span></p>
                            <p class="i-blue"><span><strong>메가스터디</strong>인강</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate live">대치동 LIVE 강의</span>
                            <span class="t-sub">사회문화</span>
                            <span class="t-info"><strong>최적</strong> 선생님</span>
                            <span class="t-explain">메가스터디 온라인 대표강사</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/soc_cj.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>대치</span></p>
                            <p class="i-blue"><span><strong>메가스터디</strong> 인강</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate live">대치동 LIVE 강의</span>
                            <span class="t-sub">경제</span>
                            <span class="t-info"><strong>우영호</strong> 선생님</span>
                            <span class="t-explain">메가스터디 온라인 대표강사</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/soc_wyh.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>대치</span></p>
                            <p class="i-blue"><span><strong>메가스터디</strong>인강</span></p>
                        </div>
                    </li>
                    <!-- //사탐 -->
                    <!-- 과탐 -->
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">물리학Ⅰ</span>
                            <span class="t-info"><strong>강신영</strong> 선생님</span>
                            <span class="t-explain">연세대학교 교육대학원<br> 과학교육 석사</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_ksy02.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀 <br>기숙</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">물리학Ⅰ</span>
                            <span class="t-info"><strong>신승환</strong> 선생님</span>
                            <span class="t-explain">메가스터디 온라인 대표강사</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_ssh.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>강남</span></p>
                            <p class="i-blue"><span><strong>메가스터디</strong> 인강</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">화학Ⅰ</span>
                            <span class="t-info"><strong>이동휘</strong> 선생님</span>
                            <span class="t-explain">서울대학교 교육대학원<br>화학교육 석사</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_ldh02.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>영통</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">통합과학/화학Ⅰ</span>
                            <span class="t-info"><strong>이지선</strong> 선생님</span>
                            <span class="t-explain">고1&middot;고2 내신 전문 강사</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_ljs.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>평촌</span></p>
                            <p><span>러셀<br>울산</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">화학Ⅰ</span>
                            <span class="t-info"><strong>정우정</strong> 선생님</span>
                            <span class="t-explain">러셀 화학 수강생 수 1위</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_jwj.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>강남</span></p>
                            <p><span>러셀<br>대치</span></p>
                            <p class="i-blue"><span><strong>메가스터디</strong> 인강</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">생명과학Ⅰ</span>
                            <span class="t-info"><strong>이석준</strong> 선생님</span>
                            <span class="t-explain">서울대학교<br>수의학과 졸업</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_lsj03.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>대치</span></p>
                            <p><span>러셀<br>기숙</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">생명과학Ⅰ</span>
                            <span class="t-info"><strong>황민준</strong> 선생님</span>
                            <span class="t-explain">서울대학교<br>생물교육과 졸업</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_hmj02.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>강남</span></p>
                            <p><span>러셀<br>기숙</span></p>
                            <p class="i-blue"><span>인강<strong>런칭예정*</strong></span></p>
                        </div>
                        <p class="t-coming"><strong>*2024년 12월 메가스터디 인강 런칭 예정</strong></p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">지구과학Ⅰ</span>
                            <span class="t-info"><strong>함석진</strong> 선생님</span>
                            <span class="t-explain">서울대 지구과학교육과 졸업</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_hsj03.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>기숙</span></p>
                            <p class="i-blue"><span><strong>메가스터디</strong> 인강</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">지구과학Ⅰ</span>
                            <span class="t-info"><strong>함지영</strong> 선생님</span>
                            <span class="t-explain">이화여자대학교<br>지구과학교육과 졸업</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_hjy.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>강남</span></p>
                            <p><span>러셀<br>기숙</span></p>
                        </div>
                    </li>
                    <!-- //과탐 -->
                    <!-- 논술 -->
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate">현장 강의</span>
                            <span class="t-sub">수리논술</span>
                            <span class="t-info"><strong>배기은</strong> 선생님</span>
                            <span class="t-explain">연세대학교 졸업</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/non_bke.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>강남</span></p>
                            <p><span>러셀<br>대치</span></p>
                            <p><span>러셀<br>기숙</span></p>
                            <p class="i-blue"><span><strong>메가스터디</strong> 인강</span></p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="info-box">
                            <span class="cate live">대치동 LIVE 강의</span>
                            <span class="t-sub">인문논술</span>
                            <span class="t-info"><strong>최인호</strong> 선생님</span>
                            <span class="t-explain">메가스터디 온라인 대표강사</span>
                        </div>
                        <p class="pic"><img src="<%=Application("img_path_russel")%>/teacher/slide/ko_cih.png" alt="" /></p>
                        <div class="ico-box">
                            <p><span>러셀<br>강남</span></p>
                            <p><span>러셀<br>대치</span></p>
                            <p class="i-blue"><span><strong>메가스터디</strong>인강</span></p>
                        </div>
                    </li>
                    <!-- //논술 -->
                </ul>
            </div>
        </div>
        <% ElseIf campus_code = "CD0340" Then '코어 광주 %>
        <div class="teacher-rolling-inner">
            <div class="teacher-rolling swiper-container">
                <div class="swiper-wrapper">
                    <!-- 국어 -->
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>국어</dt>
                            <dd><strong>강민철</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/ko_kmc.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>국어</dt>
                            <dd><strong>류현준</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/ko_rhj.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>국어</dt>
                            <dd><strong>신용선</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/ko_sys.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>국어</dt>
                            <dd><strong>심찬우</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/ko_scw.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>국어</dt>
                            <dd><strong>정미나</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/ko_jmn.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>국어</dt>
                            <dd><strong>최인호</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/non_cih.png" alt=""></span>
                    </div>
                    <!-- 수학 -->
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>수학</dt>
                            <dd><strong>김가람</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_kgr.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt class="flag">
                                수학 <span class="new">신규</span>
                            </dt>
                            <dd><strong>김기현</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_kkh.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>수학</dt>
                            <dd><strong>김성은</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_kse.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>수학</dt>
                            <dd><strong>김형민</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_khm.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>수학</dt>
                            <dd><strong>박주혁</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_pjh.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>수학</dt>
                            <dd><strong>손원재</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_swj.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>수학</dt>
                            <dd><strong>양승진</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_ysj.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>수학</dt>
                            <dd><strong>윤성욱</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_ysw.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>수학</dt>
                            <dd><strong>이용욱</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_lyw.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>수학</dt>
                            <dd><strong>장영진</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_jyj.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>수학</dt>
                            <dd><strong>조성훈</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/math_jsh.png" alt=""></span>
                    </div>
                    <!-- 영어 -->
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>영어</dt>
                            <dd><strong>김기철</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/eng_kkc.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>영어</dt>
                            <dd><strong>김선덕</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/eng_ksd.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>영어</dt>
                            <dd><strong>심규석</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/eng_sgs.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>영어</dt>
                            <dd><strong>이중희</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/eng_ljh.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>영어</dt>
                            <dd><strong>조정식</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/eng_jjs.png" alt=""></span>
                    </div>
                    <!-- 사회 -->
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>한국지리/세계지리</dt>
                            <dd><strong>이기상</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/soc_lks.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>동아시아사/세계사</dt>
                            <dd><strong>이다지</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/soc_ldj.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>생활과윤리/윤리와사상</dt>
                            <dd><strong>김종익</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/soc_kji.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>사회문화</dt>
                            <dd><strong>최적</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/soc_cj.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>정치와법</dt>
                            <dd><strong>김용택</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/soc_kyt.png" alt=""></span>
                    </div>
                    <!-- 과학 -->
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>물리학</dt>
                            <dd><strong>강민웅</strong> 선생님</dd>
                        </dl>
                        <span class="t-img b-blue"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_kmw.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>물리학</dt>
                            <dd><strong>강신영</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_ksy.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>물리학</dt>
                            <dd><strong>김성재</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_ksj.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>화학</dt>
                            <dd><strong>김재권</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_kjg.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>화학</dt>
                            <dd><strong>정우정</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_jwj.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>생명과학</dt>
                            <dd><strong>한종철</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_hjc.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>생명과학</dt>
                            <dd><strong>황민준</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_hmj.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>지구과학</dt>
                            <dd><strong>양이석</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_yes.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>지구과학</dt>
                            <dd><strong>엄영대</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/sci_uyd.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>인문논술</dt>
                            <dd><strong>최인호</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/non_cih.png" alt=""></span>
                    </div>
                    <div class="swiper-slide">
                        <dl class="t-name">
                            <dt>수리논술</dt>
                            <dd><strong>배기은</strong> 선생님</dd>
                        </dl>
                        <span class="t-img"><img src="<%=Application("img_path_russel")%>/teacher/slide/non_bke.png" alt=""></span>
                    </div>
                    <!-- 논술 -->
            
                </div>
            </div>
        </div>
        <p class="r-txt">* 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.</p>
        <% End If %>
        <!--//강사 슬라이드-->
    </div>
    <div class="cont05">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer_overall/cont05_tit.jpg" alt="최소한의 의무수업으로 충분한 자습시간이 확보되는 슬림한 종합반"></p>

        <% If campus_code = "CD0342" Then '대구 %>
        <div class="inner">
            <div class="time-s-box">
                <p class="time-tit">
                    <strong>주 10.5T, 꼭 필요한 핵심 수업 구성</strong><br>
                    <span>기존 종합반 의무수업 30~42T 대비 최대 75%<sup>1)</sup> 축소</span>
                </p>
                <div class="tbl-scroll-x mt20">
                    <table class="tbl-type01" style="width: 200%;">
                        <colgroup>
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:11%;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="10" style="border-bottom: 1px solid #d9d9d9;">학년별 수업 구성</th>
                            </tr>
                            <tr>
                                <th class="sticky" style="border-bottom: 1px solid #d9d9d9;position: sticky;left: 0 !important;top: 0;z-index: 1;">학년</th>
                                <th style="border-bottom: 1px solid #d9d9d9;">지원 <br> 자격</th>
                                <th style="border-bottom: 1px solid #d9d9d9;">최대<br>수강</th>
                                <th style="border-bottom: 1px solid #d9d9d9;" colspan="7">과목</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th style="border-bottom: 1px solid #d9d9d9;">고3<br> 자연</th>
                                <td>10.5T</td>
                                <td>17.5T</td>
                                <td>국어</td>
                                <td>수<br> Ⅰ,Ⅱ</td>
                                <td>미적</td>
                                <td>영어</td>
                                <td>물/화/생/지</td>
                                <td>수리 <br> 논술</td>
                                <td>국어 <br> 특강</td>
                            </tr>
                            <tr>
                                <th style="border-bottom: 1px solid #d9d9d9;">고3 <br>인문</th>
                                <td>7T</td>
                                <td>10.5T</td>
                                <td>국어</td>
                                <td>수<br> Ⅰ,Ⅱ</td>
                                <td>영어</td>
                                <td>국어 <br> 특강</td>
                                <td colspan="3">-</td>
                            </tr>
                            <tr>
                                <th style="border-bottom: 1px solid #d9d9d9;">고2</th>
                                <td>10.5T</td>
                                <td>17.5T</td>
                                <td>국어</td>
                                <td>수 <br>Ⅰ,Ⅱ <br> (7T)</td>
                                <td>영어</td>
                                <td>물/화/생/지</td>
                                <td colspan="3">-</td>
                            </tr>
                            <tr>
                                <th style="border-bottom: 1px solid #d9d9d9;">고1</th>
                                <td>10.5T</td>
                                <td>-</td>
                                <td>국어</td>
                                <td>수 <br>Ⅰ,Ⅱ <br>(상)&middot;(하) <br> (7T)</td>
                                <td>영어</td>
                                <td>통합 <br> 과학</td>
                                <td colspan="3">-</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <p class="r-txt mt10">
                    ※과목별 주간 기본 3.5T (3.5시간 수업)이며, 고1·2 수학은 7T로 수강 가능합니다. <br>
                    ※ 고3 인문은 확통 선택자 기준입니다. 
                </p>
            </div>
            <div class="time-s-box mt20 pl0 pr0">
                <p class="time-tit">
                    <strong>자기주도학습이 가능한 <br> 충분한 자습시간 (주 77.5T*)</strong><br>
                    <span>기존 종합반 자습시간 46~58T 대비 최대 68%<sup>2)</sup> 증가</span>
                </p>
                <div class="mt30"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer_overall/cont05_img.jpg" alt="" /></div>
                <p class="r-txt mt10" style="padding:0 20px;">
                    2) 기존 종합반 자습시간 46T 대비 러셀 종합반 자습시간 77.5T 비교 <br>
                    * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함 <br>
                    * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                </p>
            </div>
        </div>
        <% ElseIf campus_code = "CD0340" Then '코어 광주 %>
        <div class="inner">
            <div class="time-s-box">
                <p class="time-tit">
                    <strong>주 21T, 꼭 필요한 핵심 수업 구성</strong>
                    <span>기존 종합반 의무수업 30~42T 대비 최대 50%<sup>1)</sup> 축소</span>
                </p>
                <div class="tbl-wrap">
                    <p><span>|</span> 정규 수업 (현장강의)</p>
                    <table>
                        <colgroup>
                            <col style="width:20%">
                            <col style="width:20%">
                            <col style="width:20%">
                            <col style="width:20%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>과목</th>
                                <th>국어</th>
                                <th>수학</th>
                                <th>탐구(2)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>주간<br>
                                수업시간</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                                <td>7T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tbl-wrap">
                    <p><span>|</span> 정규 수업 (TEST)</p>
                    <table>
                        <colgroup>
                            <col style="width:33%">
                            <col style="width:33%">
                            <col style="width:33%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>과목</th>
                                <th>영단어 TEST</th>
                                <th>수/영/탐 TEST</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>주간<br>
                                수업시간</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tbl-wrap">
                    <p><span>|</span> 선택 수업</p>
                    <table>
                        <colgroup>
                            <col style="width:33%">
                            <col style="width:33%">
                            <col style="width:33%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>과목</th>
                                <th>수학</th>
                                <th>영어</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>주간<br>
                                수업시간</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="r-txt mt10">
                    1) 기존 종합반 의무수업 42T 대비 러셀 종합반 의무수업 21T 비교  시 수치 <br>
                    * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                </p>
            </div>
            <div class="time-s-box mt20 pl0 pr0">
                <p class="time-tit">
                    <strong>자기주도학습이 가능한 <br> 충분한 자습시간 (주 67T*)</strong><br>
                    <span>기존 재수종합반 자습시간 46~58T 대비 최대 40%<sup>2)</sup> 증가</span>
                </p>
                <div class="mt30"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer_overall/cont05_img.jpg" alt="" /></div>
                <p class="r-txt mt10" style="padding:0 20px;">
                    2) 기존 종합반 자습시간 46T 대비 러셀 종합반 자습시간 67T 비교 <br>
                    * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함 <br>
                    * 실제 학원 운영상황에 따라 변경될 수 있습니다.                    
                </p>
            </div>
        </div>
        <% Else %>
        <div class="inner">
            <div class="time-s-box">
                <p class="time-tit">
                    <strong>주 21T, 꼭 필요한 핵심 수업 구성</strong><br>
                    <span>기존 종합반 의무수업 30~42T 대비 최대 50%<sup>1)</sup> 축소</span>
                </p>
                <div class="tbl-wrap">
                    <p><span>|</span> 필수 수업
                    </p>
                    <table>
                        <colgroup>
                            <col style="width:20%">
                            <col style="width:20%">
                            <col style="width:20%">
                            <col style="width:20%">
                            <col style="width:20%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>과목</th>
                                <th>국어</th>
                                <th>수학</th>
                                <th>탐구(1)</th>
                                <th>탐구(2)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>주간<br>
                                수업시간</td>
                                <td>3.5T</td>
                                <td>7T</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tbl-wrap">
                    <p><span>|</span> 선택 수업 (택1)</p>
                    <table>
                        <colgroup>
                            <col style="width:25%">
                            <col style="width:25%">
                            <col style="width:25%">
                            <col style="width:25%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>과목</th>
                                <th>국어특강</th>
                                <th>영어</th>
                                <th>논술</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>주간<br>
                                수업시간</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="r-txt mt10">
                    1) 기존 종합반 의무수업 42T 대비 러셀 종합반 의무수업 21T 비교 시 수치 <br>
                    * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                </p>
            </div>
            <div class="time-s-box mt20 pl0 pr0">
                <p class="time-tit">
                    <strong>자기주도학습이 가능한 <br> 충분한 자습시간 (주 67T*)</strong><br>
                    <span>기존 종합반 자습시간 46~58T 대비 최대 40%<sup>2)</sup> 증가</span>
                </p>
                <div class="mt30"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer_overall/cont05_img.jpg" alt="" /></div>
                <p class="r-txt mt10" style="padding:0 20px;">
                    2) 기존 종합반 자습시간 46T 대비 러셀 종합반 자습시간 67T 비교 <br>
                    * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함 <br>
                    * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                </p>
            </div>
        </div>
        <% End If %>
    </div>
    <div class="cont06">
        <p>
            <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer_overall/cont06_tit.jpg" alt="여름방학, 최상위권 도약을 위한 러셀 썸머스쿨 프로그램">
            <% If campus_code = "CD0349" or campus_code = "CD0342" or campus_code = "CD0340"  Then '울산/대구/코어광주 %>
            <a class="ico-bus" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/ico_bus.png" alt="버스 딱지"></a>
            <% End If %>
        </p>
        <div class="inner">
            <!-- 바자관 탭슬라이드 -->
            <% If campus_code = "CD0349" or campus_code = "CD0342" or campus_code = "CD0340"  Then '울산/대구/코어광주 %>
            <div class="studyHall-slide-wrap core">
            <% Else %>
            <div class="studyHall-slide-wrap">
            <% End If %>
                <div class="studyHall-navi">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide type02">
                            집단적인<br>
                            면학분위기
                        </div>
                        <div class="swiper-slide type02">
                            학습 동선<br>
                            최소화
                        </div>
                        <div class="swiper-slide">
                            충분한<br>
                            자습시간 확보
                        </div>
                        <div class="swiper-slide">
                            개방형 구조
                        </div>
                        <% If campus_code = "CD0349" or campus_code = "CD0342" or campus_code = "CD0340"  Then '울산/대구/코어광주 %>
                        <div class="swiper-slide">
                            자체 식당 운영
                        </div>
                        <% End If %>
                    </div>
                </div>
                <div class="studyHall-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 집단적인 면학분위기 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer_overall/studyHallSlide_cont01.jpg" alt=""></p>
                        </div>
                        <!-- //집단적인 면학분위기 -->
                        <!-- 학습 동선 최소화 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer_overall/studyHallSlide_cont02.jpg" alt=""></p>
                        </div>
                        <!-- //학습 동선 최소화 -->
                        <!-- 충분한 자습시간 확보 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer_overall/studyHallSlide_cont03.jpg" alt=""></p>
                        </div>
                        <!-- //충분한 자습시간 확보 -->
                        <!-- 개방형 구조 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer_overall/studyHallSlide_cont04.jpg" alt=""></p>
                        </div>
                        <!-- //개방형 구조 -->
                        <% If campus_code = "CD0349" or campus_code = "CD0342" or campus_code = "CD0340"  Then '울산/대구/코어광주 %>
                        <!-- 자체 식당 운영 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/studyHallSlide_cont05.jpg" alt=""></p>
                        </div>
                        <!-- //자체 식당 운영 -->
                        <% End If %>
                    </div>
                    <div class="swiper-pagination studyHall"></div>
                </div>
            </div>
            <!-- //바자관 탭슬라이드 -->
        </div>
    </div>
    <div class="cont07">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer_overall/cont07_tit.jpg" alt="최상위권 역임 입시 담임선생님의 1:1 맞춤 관리"></p>
            <!-- 관리 탭슬라이드 -->
        <div class="manage-slide-wrap">
            <div class="manage-navi">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        입시관리
                    </div>
                    <div class="swiper-slide">
                        학습관리
                    </div>
                    <div class="swiper-slide">
                        생활관리
                    </div>
                    <div class="swiper-slide">
                        입시특강/ <br> 설명회
                    </div>
                </div>
            </div>
            <div class="manage-slide swiper-container">
                <div class="swiper-wrapper">
                    <!-- 입시관리 -->
                    <div class="swiper-slide">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer_overall/manageSlide_cont01.jpg" alt=""></p>
                    </div>
                    <!-- //입시관리 -->
                    <!-- 학습관리 -->
                    <div class="swiper-slide">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer_overall/manageSlide_cont02.jpg" alt=""></p>
                    </div>
                    <!-- //학습관리 -->
                    <!-- 생활관리 -->
                    <div class="swiper-slide">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer_overall/manageSlide_cont03.jpg" alt=""></p>
                    </div>
                    <!-- //생활관리 -->
                    <!-- 입시특강/설명회 -->
                    <div class="swiper-slide">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer_overall/manageSlide_cont04.jpg" alt=""></p>
                    </div>
                    <!-- //입시특강/설명회 -->
                </div>
                <div class="swiper-pagination manage"></div>
            </div>
        </div>
            <!-- //관리 탭슬라이드 -->
    </div>
    <div class="cont08">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer_overall/cont08_tit.jpg" alt="9월 평가원 모의고사, 수능에 최적화된 최상위권 맞춤 실전 학습 콘텐츠"></p>

        <!-- 학습 콘텐츠 슬라이드 -->
        <div class="program-slide swiper-container">
            <div class="swiper-wrapper">
                <% If campus_code = "CD0349" or campus_code = "CD0340" Then '울산/코어광주 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/programSlide_cont04.jpg" alt="코어 위클리 모의고사">
                </div>
                <% End If %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/programSlide_cont01.jpg" alt="QUEL 모의고사">
                </div>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/programSlide_cont02.jpg" alt="E-QUEL 모의고사">
                </div>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/programSlide_cont03.jpg" alt="메대프 모의고사">
                </div>
                <% If campus_code <> "CD0349" and campus_code <> "CD0340" Then '울산/코어광주 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/programSlide_cont04.jpg" alt="코어 위클리 모의고사">
                </div>
                <% End If %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/programSlide_cont05.jpg" alt="월간 학습지(월간 장영진)">
                </div>
            </div>
            <div class="swiper-pagination program"></div>
        </div>
        <!-- //학습 콘텐츠 슬라이드 -->

        <span class="r-txt">* 위 콘텐츠는 썸머스쿨 기간 외 수능일까지 <br> 진행되는 콘텐츠가 포함되어 있습니다.</span>

    </div>
    <div class="bottom-bar">
        <p>
            최상위권이 집결하는<br>
            <%=txtCampus%> 썸머스쿨 종합반에서<br>
            <strong>목표하는 2025학년도 메디컬&최상위권<br>
            대입성공을 이룰 수 있습니다.</strong>
        </p>
    </div>
</div>