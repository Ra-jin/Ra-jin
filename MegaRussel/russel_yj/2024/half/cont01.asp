<div class="cont js-cont <%=campusName%>">
    <div class="cont01">
        <div class="inner">
            <h3 class="mb60" data-aos="fade-up"><img src="<%=imgUrl%>/cont01_tit.png" alt="결과로 증명된 러셀 기숙학원 누구나 시작할 수 있었다면, 우리는 결코 시작하지 않았을 것입니다." /></h3>
            <% If sCampusCode = "CD0347" OR sCampusCode = "CD0348" Then '서의치기숙/여기숙 %>
            <div class="result-box">
                <p class="mb45"><img src="<%=img_path_russelsm%>/2024/half/cont01_txt01.png" alt="2024학년도 의치한약수 SKY 316명 합격!" /></p>

                <ul class="num-list">
                    <li>
                        <p class="stu-tit">의치한약수 SKY</p>
                        <p class="stu-num"><strong>346</strong>명</p>
                    </li>
                </ul>
                <ul class="num-list type02">
                    <li>
                        <p class="stu-tit">의예과</p>
                        <p class="stu-num"><strong>89</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">치의예과</p>
                        <p class="stu-num"><strong>22</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">한의예과</p>
                        <p class="stu-num"><strong>26</strong>명</p>
                    </li>
                </ul>
                <ul class="num-list type02 mt15">
                    <li>
                        <p class="stu-tit">약학과</p>
                        <p class="stu-num"><strong>60</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">수의예과</p>
                        <p class="stu-num"><strong>19</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">SKY</p>
                        <p class="stu-num"><strong>130</strong>명</p>
                    </li>
                </ul>
                <p class="r-txt mt60">*러셀 기숙학원 재원생764명(남-의대관 344명, 여-의대관 147명, 서의치관 273명 기준)</p>
            </div>
            <% End If %>

            <% If sCampusCode <> "CD0348" Then '여기숙 제외 %>
            <div class="result-box">
                <p><img src="<%=imgUrl%>/cont01_txt02.png" alt="모두가 서연고,의치대 전문관을 찾는 이유" /></p>
                <div class="review-slide swiper-container">
                    <div class="swiper-wrapper">
                        <% If sCampusCode <> "CD0258" Then '남기숙 제외 %>
                        <div class="swiper-slide"><img src="<%=imgUrl%>/cont01_img01.jpg" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=imgUrl%>/cont01_img02.jpg" alt="" /></div>
                        <% End If %>
                        <div class="swiper-slide"><img src="<%=imgUrl%>/cont01_img03.jpg" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=imgUrl%>/cont01_img04.jpg" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=imgUrl%>/cont01_img05.jpg" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=imgUrl%>/cont01_img06.jpg" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=imgUrl%>/cont01_img07.jpg" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=imgUrl%>/cont01_img08.jpg" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=imgUrl%>/cont01_img09.jpg" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=imgUrl%>/cont01_img10.jpg" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=imgUrl%>/cont01_img11.jpg" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=imgUrl%>/cont01_img12.jpg" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=imgUrl%>/cont01_img13.jpg" alt="" /></div>
                    </div>

                    <div class="swiper-button-prev"><img src="<%=img_path_yangji%>/2024/half/ico_prev.png" alt="" /></div>
                    <div class="swiper-button-next"><img src="<%=img_path_yangji%>/2024/half/ico_next.png" alt="" /></div>
                </div>
            </div>
            <% End If %>
        </div>
    </div>

    <div class="cont02">
        <div class="inner">
            <h3 class="mb80" data-aos="fade-up"><img src="<%=imgUrl%>/cont02_tit.png" alt="" /></h3>
            <% If sCampusCode = "CD0347" Then '서의치기숙 %>
            <ul class="review-list">
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=imgUrl%>/stu_img01.png" alt="최문성 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47815572')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>서울대학교 사회학과 합격</strong></p>
                            <p class="name">서연고&middot;의치대 전문관<br>
                                러셀 기숙학원 최문성</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">최고의 학습환경에서 끊임없이 동기부여를 <br>
                            받을 수 있었습니다.</p>
                        <p class="txt-box">바자관은 최고의 학습 환경이었습니다. 넓은 책상과 바로 옆에 개인 책장이 <br>
                            구비되어 있어 필요한 교재와 자료들을 마음껏 이용할 수 있었고, <strong>통유리로 넓게 
                            트인 유리창으로 이루어진 공간</strong>에서 자습을 하니 주변의 열정에 타오른 <br>
                            학생들을 보며 <strong>저도 끊임없이 동기부여를 받을 수 있었습니다.</strong><br>
                            숙소가 최상의 환경으로 되어있어 매일매일 숙면을 취하고 그다음 날 좋은 <br>
                            컨디션에서 학습할 수 있었습니다. 특히 <strong>2인 1실에 방마다 화장실이 있어서</strong> <br>
                            생활하는 데에 불편함이 없었습니다. </p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_snu.jpg" alt="" /></p>
                </li>
                <li class="mt0" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=imgUrl%>/stu_img02.png" alt="윤민재 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47815595')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>상지대학교 한의예과 합격</strong></p>
                            <p class="name">서연고&middot;의치대 전문관<br>
                                러셀 기숙학원 윤민재</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">담임선생님과의 1:1 상담으로 흔들리지 않고<br>
                            집중력을 유지할 수 있었습니다.</p>
                        <p class="txt-box"><strong>담임선생님의 1:1 상담이 굉장히 도움이 되었습니다. </strong><br>
                            학원에서 학습적으로나 생활적으로나 힘든 일이 많았는데, 이를 담임선생님과 
                            상담을 하면서 풀어낼 수 있었습니다. <br>
                            또한 수시 전형 6개를 무엇을 넣을지 고민이 있었는데, 담임선생님과 상담을 <br>
                            통해 별 무리 없이 지원할 수 있었습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_sangji.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=imgUrl%>/stu_img03.png" alt="김민주 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47815677')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>조선대학교 의예과 합격</strong></p>
                            <p class="name">서연고&middot;의치대 전문관<br>
                                러셀 기숙학원 김민주</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">면학분위기가 좋아 공부에만 집중할 수 있었습니다.</p>
                        <p class="txt-box"><strong>수업시간이나 자습시간은 물론이고 쉬는 시간에도 면학분위기가 좋아 공부에만 
                            집중</strong>할 수 있었고, 하루에 듣는 수업 개수가 많지 않아 수업과 수업 사이에 <br>
                            이동하면서 낭비되는 시간이 최소화되어 좋았습니다. <br>
                            담임선생님께서 반 학생 하나하나 관심을 가지고 세심하게 관리해 주셨고, <br>
                            학습 중 어려움이 있거나 힘든 일이 있을 때 편하게 상담할 수 있도록 이끌어 <br>
                            주셔서 수험기간 중 누구보다도 담임선생님께 가장 많이 의지했던 것 같습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_joseon.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=imgUrl%>/stu_img04.png" alt="노윤호 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47815689')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>원광대학교 한의예과 합격</strong></p>
                            <p class="name">서연고&middot;의치대 전문관<br>
                                러셀 기숙학원 노윤호</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">기숙학원에서는 낭비되는 시간 없이 온전히 공부에만 시간을 활용할 수 있었습니다.</p>
                        <p class="txt-box"><strong>기숙사와 강의실, 식당이 가까워서 이동 시간을 아낄 수 있고, <br>
                            전자기기 차단으로 공부 이외에도 낭비되는 시간 없이 잠들 수 있어</strong> 기숙학원에 
                            있는 모든 시간들을 <strong>온전히 공부에 집중</strong>할 수 있도록 사용할 수 있었습니다. <br>
                            그리고 매주 진행되는 체육시간으로 한 번씩 뻐근한 몸을 풀어줄 수 있어 더욱 집중할 수 있었습니다.<br>
                            하반기에는 매주 시행하는 다양한 모의고사를 통해 꾸준히 실전감을 유지할 수 있었습니다. </p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_wonkwang.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=imgUrl%>/stu_img05.png" alt="김영준 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47815625')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>서울대학교 자유전공학부 합격</strong></p>
                            <p class="name">서연고&middot;의치대 전문관<br>
                                러셀 기숙학원 김영준</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">담임선생님의 관리로<br>
                            방향을 잘 잡고 공부할 수 있었습니다.</p>
                        <p class="txt-box"><strong>입시나 입시를 위한 공부에 대해 모르는 것이 많아서 초반에 담임선생님께 <br>
                            정말 많은 질문을 했는데, 상세하게 답해 주셔서</strong> 초기에 방향을 잘 잡을 수 <br>
                            있었던 것 같습니다. 반 분위기도 좋게 유지하려고 노력해 주셔서 스트레스 <br>
                            받을 일 없이 편하게 공부할 수 있었습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_snu.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=imgUrl%>/stu_img06.png" alt="최미성 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47815661')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>전북대학교 의예과 합격</strong></p>
                            <p class="name">서연고&middot;의치대 전문관<br>
                                러셀 기숙학원 최미성</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">매주 나눠주는 모의고사와 영어듣기가 <br>
                            도움이 되었습니다.</p>
                        <p class="txt-box"><strong>매주 나눠주는 퀄 모의고사가 꽤나 도움이 되었던 것 같습니다.</strong> <br>
                            일단 매주 준다는 것만으로 양적인 측면에서 도움이 되는 것은 분명합니다.<br>
                            또한 <strong>점심 직후 영어 듣기도 확실히 도움을 받았던 부분입니다.</strong> 영어 듣기는 <br>
                            특히 기숙학원이라는 환경에서 개인적으로 공부하기가 좀 까다로운데, <br>
                            학원에서 직접 틀어주니 꾸준히 대비할 수 있어서 좋았습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_chonbuk.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=imgUrl%>/stu_img07.png" alt="전수진 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47815740')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>서울대학교 약학계열 합격</strong></p>
                            <p class="name">서연고&middot;의치대 전문관<br>
                                러셀 기숙학원 전수진</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">통유리로 되어 있어<br>
                            탁 트인 공간에서 공부할 수 있어 좋았습니다.</p>
                        <p class="txt-box">먼저 바른공부 자습전용관에 처음 들어갔을 때 놀랐던 것은 반과 반 사이에도 <br>
                            벽이 아닌 통유리가 설치되어 있다는 점이었습니다. <br>
                            <strong>통유리 덕분에 갑갑한 느낌 없이 탁 트인 공간에서 공부할 수 있다는 것이 <br>
                            좋았습니다.</strong> 또 책상이 넓고 의자는 딱딱한 교실용 의자가 아니라 쿠션이 있는 
                            편한 의자여서 오랜 시간 앉아 공부하기에 좋았습니다. 매일 정해진 시간에 하는 
                            수능 체조도 찌뿌둥한 몸을 풀어주는 데 도움이 많이 되었습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_snu.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=imgUrl%>/stu_img08.png" alt="오성원 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47815727')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>우석대학교 한의예과  합격</strong></p>
                            <p class="name">서연고&middot;의치대 전문관<br>
                                러셀 기숙학원 오성원</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">공부에만 집중할 수 있는 환경이 큰 장점입니다.</p>
                        <p class="txt-box">바자관의 장점은 공부에 집중할 수 있는 환경이라는 점입니다. <br>
                            선생님과 학생들의 노력으로 <strong>바자관 내에서는 정숙이 이루어지고 공부에만 <br>
                            집중할 수 있는 환경이 주어집니다. </strong> <br>
                            또한 밝고 많은 조명으로 책에 그림자가 지지 않아서 방해를 받지 않을 수 <br>
                            있습니다. 그리고 인강을 들으려면 다른 곳으로 이동해야 하는 학원들과 달리 <br>
                            각 바자관마다 태블릿이 배치되어 있어 자리에서 인강을 들을 수 있어서 <br>
                            좋았습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_wooseok.jpg" alt="" /></p>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0258" Then '남기숙 %>
            <ul class="review-list">
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=img_path_yangji%>/2024/half/stu_img01.png" alt="심민준 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47959955')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>연세대학교 의예과 합격</strong></p>
                            <p class="name">최상위권 남학생 의대전문관 <br>
                                러셀 기숙학원 심민준</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">남학생들만 있다는 점이 공부하는 데 <br>
                            굉장한 장점이었습니다.</p>
                        <p class="txt-box">러셀 기숙은 남녀 분리된 학원이다 보니 <strong>이성에 관심을 끊고 살 수 있다는 점이 
                            공부하는 데에 굉장한 장점</strong>이었습니다. 또한 규칙적인 생활은 수능 당일에 <br>
                            9시간 정도 되는 시간을 온전히 집중할 수 있도록 도와주었으며 급식도 굉장히 
                            만족스러웠습니다. <strong>러셀의 퀄 모의고사는</strong> 문제의 퀄리티 자체도 준수하고, <br>
                            사설 모의고사의 경우 실제 평가원 난이도보다 어렵게 출제되는 경우가 있는데 
                            적당한 난이도로 출제되어 <strong>제 실력을 확인할 수 있는 좋은 모의고사</strong>였습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_yonsei.jpg" alt="" /></p>
                </li>
                <li class="mt0" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=img_path_yangji%>/2024/half/stu_img02.png" alt="윤장원 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47960783')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>한림대학교 의예과 합격</strong></p>
                            <p class="name">최상위권 남학생 의대전문관 <br>
                                러셀 기숙학원 윤장원</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">러셀 기숙학원은<br>
                            공부에만 집중할 수 있는 환경과 최적의 공간입니다.</p>
                        <p class="txt-box">러셀 기숙학원은 학생이 입시를 준비하는데 필요한 대부분의 것들이 준비되어 
                            있어 정말 <strong>공부에만 집중할 수 있는 환경에 최적화된 공간</strong>입니다. <br>
                            그 때문인지 공부량이 바깥에서 공부하는 것의 2배 정도로 늘어났던 것 <br>
                            같습니다. <br>
                            바른공부 자습전용관은 <strong>주변의 학생들이 모두 공부하고 있음이 생생하게 느껴지기에 스스로도 공부할 수밖에 없는 상황</strong>이라고 느끼게 됩니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_hallym.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=img_path_yangji%>/2024/half/stu_img03.png" alt="이상문 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47960803')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>전남대학교 의예과 합격</strong></p>
                            <p class="name">최상위권 남학생 의대전문관 <br>
                                러셀 기숙학원 이상문</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">정해진 시간표대로 꾸준히 공부하며<br>
                            자습시간을 최대한으로 확보할 수 있었습니다.</p>
                        <p class="txt-box"><strong>바자관의 자습 총 시간이 밖에서 공부할 때의 시간에 비해 많았고 <br>
                            정해진 시간표대로 꾸준히 공부할 수 있다는 점</strong>이 좋았습니다. 또한 바자관의 <br>
                            면학분위기 덕에 다른 생각을 하다가도 옆에서 공부하고 있는 친구들을 보며 <br>
                            다시 집중할 수 있었습니다. 또한 <strong>담임선생님께서 플래너 검사</strong>를 하실 때마다 <br>
                            현재 커리큘럼과 일주일 단위의 과목당 시간 배분 정도에 대해 세심히 조언해 <br>
                            주셔서 흔들릴 때마다 다시금 확신을 얻을 수 있었습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_chonnam.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=img_path_yangji%>/2024/half/stu_img04.png" alt="송화평 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47960798')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>서울대학교 물리학과 합격</strong></p>
                            <p class="name">최상위권 남학생 의대전문관 <br>
                                러셀 기숙학원 송화평</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">집단적인 면학분위기가 조성되어 있어<br>
                            공부에 전념할 수 있었습니다.</p>
                        <p class="txt-box">바른공부 자습전용관은 <strong>집단적인 면학분위기가 조성</strong>되어 있기 때문에 <br>
                            주변에서 공부하는 사람들을 보며 자극을 받아서 혼자 공부할 때보다 공부에 <br>
                            전념하기 좋습니다.<br> 
                            또 표준 시간표에 맞춰 공부하며 공부 리듬 형성과 다량의 자습시간 확보에 <br>
                            도움을 받았습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_snu.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=img_path_yangji%>/2024/half/stu_img05.png" alt="전재현 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47960435')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>조선대학교 의예과 합격</strong></p>
                            <p class="name">최상위권 남학생 의대전문관 <br>
                                러셀 기숙학원 전재현</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">우수한 선생님들의 수업으로<br>
                            성적을 올릴 수 있었습니다.</p>
                        <p class="txt-box">러셀 기숙학원은 <strong>우수한 강사님들이 수업을 진행해 성적 향상에 더 큰 도움</strong>이 <br>
                            되었습니다. <br>
                            바자관의 장점은 조용한 면학분위기입니다. 생활관리 선생님들께서 분위기를 
                            잘 관리해 주시며, 밖이 어떤 상황이든 간에 바자관 안은 밖과 단절되어 <br>
                            항상 조용한 분위기가 유지되는 것 같습니다. 덕분에 다른 일을 하다가 <br>
                            들어왔을 때에도 쉽게 공부에 다시 집중할 수 있었습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_joseon.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=img_path_yangji%>/2024/half/stu_img06.png" alt="고재균 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47959917')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>순천대학교 약학과 합격</strong></p>
                            <p class="name">최상위권 남학생 의대전문관 <br>
                                러셀 기숙학원 고재균</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">담임선생님의 상담과 조언으로<br>
                            의지를 다잡을 수 있었습니다.</p>
                        <p class="txt-box"><strong>담임선생님이 상담에 진심으로 임해주시며 공부와 생활에 도움이 되는 말이나 
                            의지를 다잡을 수 있는 말을 해주십니다.</strong> 저는 사실 기숙학원에 입소한 뒤 <br>
                            처음 한달이 지난 뒤 성적이 기대에 비해 너무 낮아 심리적 압박감이 심해 강반 
                            또는 퇴소를 고민했었습니다. <br>
                            그때 담임선생님께서 네가 원하는 것을 이루기 위해 버티라는 조언에 힘을 얻어 
                            1년간 성적을 끌어올리는데 집중하며 공부할 수 있었습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_suncheon.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=img_path_yangji%>/2024/half/stu_img07.png" alt="박준석 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47960944')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>전남대학교 수의예과 합격</strong></p>
                            <p class="name">최상위권 남학생 의대전문관 <br>
                                러셀 기숙학원 박준석</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">다양한 콘텐츠를 풀어보며<br>
                            수능까지 성적을 끌어올릴 수 있었습니다.</p>
                        <p class="txt-box"><strong>러셀 기숙학원의 장점은 풍부한 콘텐츠</strong>입니다. 장영진 모의고사, 퀄 모의고사, 
                            메대프 등의 콘텐츠와 선생님들의 개인 모의고사 등의 현강 자료까지 풀다 보면, 
                            수능 전까지 다 풀기 힘든 양의 풍부한 콘텐츠가 나옵니다. <br>
                            또한 러셀에서 실시한 <strong>장학제도 및 빌보드는</strong> 인간의 본능인 <strong>경쟁심리를 <br>
                                자극해 보다 효율적이고 열정적인 학습을 가능케</strong> 했습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_chonnam.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=img_path_yangji%>/2024/half/stu_img08.png" alt="이용민 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47960473')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>서울대학교 자유전공학부 합격</strong></p>
                            <p class="name">최상위권 남학생 의대전문관 <br>
                                러셀 기숙학원 이용민</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">일정한 생활패턴을 만들어 주어 흔들리지 않고<br>
                            수험생활을 이어나갈 수 있었습니다.</p>
                        <p class="txt-box"><strong>규칙적이고 큰 변동 없는 일정한 생활 패턴을 만들어주는 것이 <br>
                            저에게는 가장 큰 장점</strong>이었습니다. 정해진 식사시간, 자습시간, 쉬는 시간, <br>
                            일과 종료시간처럼 다른 길로 새지 않도록, 딴짓하지 않도록 좋은 습관을 만들어
                            주는 훌륭한 체계였습니다. 또한, 가끔은 딴 길로 새도 다시 돌아올 수 있도록 <br>
                            문제를 자각하게 만들어주는 벌점제도도 과하다는 느낌이 들지 않게 <br>
                            잘 짜여 있습니다. 마지막으로, 느슨해지지 않도록 매달 보는 메대프도 1년의 <br>
                            긴 수험생활을 지루하지 않게 만들어 주었습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_snu.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=img_path_yangji%>/2024/half/stu_img09.png" alt="김민형 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47960771')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>고려대학교 신소재공학부 합격</strong></p>
                            <p class="name">최상위권 남학생 의대전문관 <br>
                                러셀 기숙학원 김민형</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">승강반 제도가 <br>
                            공부하는데 동기부여가 되었습니다.</p>
                        <p class="txt-box">승강반 제도도 제가 공부하는 데 도움이 되었습니다. <strong>열심히 해 더 높은 반에서 
                            공부할 수 있다는 것은 제가 공부하는 데 동기부여</strong>를 해 주었습니다.<br>
                            저는 매달 보았던 메대프 모의고사가 가장 큰 도움이 되었습니다. 모의고사를 <br>
                            과목별로 따로 풀 때 느끼지 못했던 제 부족한 점을 풀 모의고사를 수능과 <br>
                            비슷한 환경에서 보면서 제가 부족한 점을 확인할 수 있었습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_korea.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=img_path_yangji%>/2024/half/stu_img10.png" alt="유동호 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47960447')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>고려대학교 데이터과학과 합격</strong></p>
                            <p class="name">최상위권 남학생 의대전문관 <br>
                                러셀 기숙학원 유동호</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">수준별 수업으로 약점을 빠르게 극복할 수 있었습니다.</p>
                        <p class="txt-box">러셀 기숙학원에서는 <strong>수준별 수업을 제공해 주었기 때문에 강점과 약점 과목이 
                            확실했던 저에게 가장 좋았던 시스템</strong>이었던 것 같습니다.<br>
                            바자관은 개방형 구조로 되어있어 집중력이 흐트러졌을 때 옆 친구를 통해서 <br>
                            동기부여를 받을 수 있고 선생님께서 분위기를 해치는 친구들을 빠르게 <br>
                            제지할 수 있었기 때문에 큰 스트레스 없이 공부에 임할 수 있었습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_korea.jpg" alt="" /></p>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
            <ul class="review-list">
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=imgUrl%>/stu_img01.png" alt="배주헌 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47929297')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>계명대학교 의예과 합격</strong></p>
                            <p class="name">최상위권 여학생 의대전문관 <br>
                                러셀 기숙학원 배주헌</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">체계적인 관리로 수능날까지 최대한의 공부시간을 <br>
                            확보할 수 있었습니다.</p>
                        <p class="txt-box"><strong>체계적인 생활관리를 위해서 기숙학원을 선택</strong>했습니다. <br>
                            기상시간, 식사시간, 취침시간을 엄격하게 관리해 주셨고 덕분에 최대한의 공부<br>
                            시간을 확보하며 수능날까지 건강한 생활을 할 수 있었습니다.<br>
                            <strong>담임선생님께서는 항상 학생들의 정신적 지주</strong>가 되어 주셨습니다. 성적에 대한 
                            고민이나 공부 방향, 불안감 같이 혼자 해결할 수 없는 문제가 생기면 <br>
                            담임선생님을 찾아갔습니다. 상담이 끝나면 해결책을 찾게 되어 다시 공부에 <br>
                            집중할 수 있었습니다. </p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_keimyung.jpg" alt="" /></p>
                </li>
                <li class="mt0" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=imgUrl%>/stu_img02.png" alt="박지우 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47929516')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>고려대학교 건축학과 합격</strong></p>
                            <p class="name">최상위권 여학생 의대전문관 <br>
                                러셀 기숙학원 박지우</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">기숙사 생활 덕분에 규칙적인 생활을 유지하며<br>
                            공부에만 집중할 수 있었습니다.</p>
                        <p class="txt-box">러셀 기숙학원은 조용하고 <strong>공부에만 집중할 수 있는 분위기</strong>입니다. 열심히 <br>
                            공부하는 주변 친구들을 보며 마음을 다잡을 수 있었습니다. <strong>정해진 시간표대로 
                            공부하는 기숙사 생활 덕분에 규칙적인 생활을 유지</strong>할 수 있었습니다. <br>
                            또한 바자관에서 공부할 때 유튜브 등 인터넷 사이트가 차단되어 공부에만 <br>
                            집중할 수 있었습니다.<br>
                            또한 담임선생님은 입시 상담 시 여러 대학과 전형에 대해 꼼꼼하게 설명해 주셔서 입시에 큰 도움이 되었습니다. </p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_korea.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=imgUrl%>/stu_img03.png" alt="박연빈 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47929355')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>숙명여자대학교 약학부 합격</strong></p>
                            <p class="name">최상위권 여학생 의대전문관 <br>
                                러셀 기숙학원 박연빈</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">여학생만 있는 학원이라<br>
                            더욱 편하게 공부할 수 있었습니다.</p>
                        <p class="txt-box">러셀 기숙학원은 <strong>여학생 전용 학원이라는 점이 좋았습니다.</strong> 이성에 대한 관심과 
                            그에 따른 소문 등 불필요한 일이 일어나는 일이 없었기에 더욱 편하게 공부에만 
                            집중할 수 있었습니다. <br>
                            <strong>수업을 듣는 강의실과 급식실, 바자관이 모두 한 건물에 있어서 시간 낭비를 <br>
                            최소화</strong>할 수 있었습니다. 깨어있는 시간을 모두 제 걸로 활용할 수 있었습니다. <br>
                            1분도 쉬지 않고 공부를 한다기 보다, 충분히 확보된 공부시간으로 <br>
                            점심, 저녁시간엔 산책하고 일기도 쓰며 스트레스를 풀 수 있었습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_sookmyng.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=imgUrl%>/stu_img04.png" alt="신현지 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47929597')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>전남대학교 <br>
                                    치의학학석사통합과정 합격</strong></p>
                            <p class="name">최상위권 여학생 의대전문관 <br>
                                러셀 기숙학원 신현지</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">인터넷 차단, 여학생만 있는 공간, 편한 숙소 등<br>
                            공부에만 집중할 수 있는 환경이 장점입니다.</p>
                        <p class="txt-box"><strong>일단 여학생만 있다는 점이 좋았고,</strong> 체력단련실이 있어서 꾸준히 운동할 수 있는 
                            환경을 제공해 주어서 좋았습니다. 무엇보다 <strong>인터넷에서 멀어질 수 있게 해 줘서 <br>
                            공부에만 집중할 수 있는 환경</strong>을 얻을 수 있다는 점이 가장 큰 장점인 것 <br>
                            같습니다. <br>
                            또한 4인 1실인데 화장실이 2개라서 단체 숙소 생활로 인한 불편함이 거의 없었다는 점도 장점으로 뽑을 수 있을 것 같습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_chonnam.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=imgUrl%>/stu_img05.png" alt="유승희 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47929670')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>조선대학교 치의예과 합격</strong></p>
                            <p class="name">최상위권 여학생 의대전문관 <br>
                                러셀 기숙학원 유승희</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">담임선생님과의 상담을 통해<br>
                            고민을 해결할 수 있었습니다.</p>
                        <p class="txt-box">기숙학원 생활 중에 <strong>학습적인 부분이나 생활적인 부분에서 고민이 생기면 <br>
                            담임선생님과의 상담을 통해 해결</strong>해 나갈 수 있어서 좋았습니다.<br>
                            또한 기숙학원에는 규칙적인 생활 스케줄과 강력한 학원 생활 규정을 통해 <br>
                            학업에만 집중할 수 있는 환경이 조성되어 있었습니다. 또한 청소나 빨래 등을 <br>
                            깔끔하게 해 주셔서 숙소 생활을 하는데 신경 쓸 것이 많이 없었다는 점이 <br>좋았습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_joseon.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=imgUrl%>/stu_img06.png" alt="양유정 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/47929842')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>연세대학교 경제학과 합격</strong></p>
                            <p class="name">최상위권 여학생 의대전문관 <br>
                                러셀 기숙학원 양유정</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">수업과 자습하는 공간이<br>
                            분리되어 있는 점이 좋았습니다.</p>
                        <p class="txt-box">러셀 기숙학원은 <strong>바자관과 강의실이 분리되어있다는 점이 좋았습니다.</strong><br>
                            같은 공간에만 오래 있다보면 집중력이 떨어지고 나른해지기 쉬운데 <strong>수업을 <br>
                            듣기 위해 이동하면서 몸과 마음을 재정비</strong>할 수 있었습니다.<br>
                            점심시간 직후 진행되는 영어듣기평가도 큰 도움이 되었습니다. 소홀히 하기 <br>
                            쉬운 영어듣기평가를 따로 시간을 내지 않고도 연습할 수 있어서 좋았습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_yonsei.jpg" alt="" /></p>
                </li>

                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=imgUrl%>/stu_img07.png" alt="김보경 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/49172204')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>서울대학교 재료공학부 합격</strong></p>
                            <p class="name">최상위권 여학생 의대전문관 <br>
                                러셀 기숙학원 김보경</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">낭비되는 시간 없이<br>
                            효율적으로 공부할 수 있었습니다.</p>
                        <p class="txt-box">매일 공부를 마무리할 시간에 진행되었던 일일 테스트가 큰 도움이 되었습니다. 
                            영단어 테스트는 다른 공부를 하느라 자칫 소홀히 여길 수 있는 영단어를 <br>
                            매일 외울 수 있도록 하는 동기가 되었고, 국어와 수학 테스트는 국어와 수학 <br>
                            문제를 매일 번갈아 풀며 그날 혹은 전날의 수업 내용을 문제 풀이에 
                            적용해보기 좋았습니다. 또한 식당과 강의실, 자습실이 모두 한 건물에 있고 이동이 편리해 낭비되는 
                            시간 없이 효율적으로 공부할 수 있어 좋았습니다. <br>
                            맛있는 급식 역시 러셀 생활을 즐겁게 보낼 수 있는 힘이 되었습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_snu.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=imgUrl%>/stu_img08.png" alt="이유림 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/48592114')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>연세대학교 행정학과 합격</strong></p>
                            <p class="name">최상위권 여학생 의대전문관 <br>
                                러셀 기숙학원 이유림</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">고퀄리티 콘텐츠로 부족한 부분을 <br>
                            꼼꼼하게 메꿀 수 있었습니다.</p>
                        <p class="txt-box">매달 치르는 메가X대성 더 프리미엄 모의고사를 비롯하여 <br>
                            파이널 QUEL 모의고사까지 계속해서 실전 모의고사로 시간 관리 및 <br>
                            부족한 부분 연습이 가능해서 좋았습니다. <br>
                            고퀄리티 문항으로 잘 하는 부분은 실수하지 않게, 약점인 부분은 꼼꼼한 해설로 
                            자신 있게 메꿀 수 있었습니다. 특히 QUEL 모의고사의 경우 모의고사에 더해 <br>
                            유사문항까지 제공이 되어 효과적인 복습이 가능했다는 점이 좋았습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_yonsei.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=imgUrl%>/stu_img09.png" alt="윤세정 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/48592043')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>고려대학교 자유전공학부 합격</strong></p>
                            <p class="name">최상위권 여학생 의대전문관 <br>
                                러셀 기숙학원 윤세정</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">검증된 실력의 선생님들 덕분에<br>
                            성적향상에 큰 도움이 되었습니다.</p>
                        <p class="txt-box">일단 검증된 선생님들께서 직접 현장에 나오셔서 수업을 해주신다는 점이 <br>
                            좋았고, 인강보다도 몰입도가 높은 건 당연하고 수업자료들도 매우 풍부했으며 
                            직접 질의응답을 현장에서 바로바로 받아주셔서 실력향상에 <br>
                            큰 도움이 되었습니다. 또한 필수로 들어야하는 수업 단위수가 적어서 <br>
                            충분한 자습과 병행할 수 있는 점이 가장 큰 장점으로 작용한 것 같습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_korea.jpg" alt="" /></p>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=imgUrl%>/stu_img10.png" alt="배수현 학생" />
                            <a href="javascript:CastPopup('https://tv.naver.com//v/48592076')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2024학년도<br>
                                <strong>고려대학교 신소재공학부 합격</strong></p>
                            <p class="name">최상위권 여학생 의대전문관 <br>
                                러셀 기숙학원 배수현</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">남녀가 분리된 공간이라 편한 모습으로<br>
                            공부에만 집중할 수 있었습니다.</p>
                        <p class="txt-box">러셀 기숙학원의 가장 큰 장점은 남녀 분리입니다. <br>
                            기숙학원의 경우 원내 문제에 분위기가 필연적으로 휩쓸리게 되는데, <br>
                            남녀 분리가 전제된 러셀 기숙학원은 이성문제에서 자유로웠습니다. 또한 보다 <br>
                            편한 복장과 편한 모습으로 공부에 집중할 수 있었습니다. 더불어 강제적으로 <br>
                            규칙적인 생활을 이어나가다보니 매순간 좋은 컨디션을 유지할 수 있었습니다.</p>
                    </div>
                    <p class="bg"><img src="<%=img_path_yangji%>/2024/half/bg_korea.jpg" alt="" /></p>
                </li>
            </ul>
            <% End If %>
        </div>
    </div>

    <div class="cont03">
        <div class="inner">
            <% If sCampusCode = "CD0347" Then '서의치기숙 %>
            <h3 class="mb80" data-aos="fade-up"><img src="<%=imgUrl%>/cont03_tit.png" alt="" /></h3>
            <div class="roll-slide swiper-container">
                <ul class="swiper-wrapper">
                    <li class="swiper-slide">
                        <p class="txt">고3년 동안<br>놀았다는 걸 <br>증명해 주는 곳</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">무엇이든 <br>해낼 수 있는 <br>나로 만들어준 곳</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">더 멋진 어른으로 <br>성장하기 위한 <br>“통과의례”</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">대입 성공을 위한 <br>“지름길”</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">힘들이지 않고 많은 것을 해낼 수 있게 움직여주는 무빙워크</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">더 나은 <br>미래로의 <br>카운트다운</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">성찰과 보완, <br>그로부터 <br>이루어지는 성장</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">날 수 있는 힘을<br> 심어준 <br>러셀 기숙</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">자신감을 찾은 과정, <br>과정이 중요하다는 <br>깨달음을 주는 러셀 기숙</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">믿음직한 <br>파트너이자 <br>인솔자</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">나의 단점이 <br>강점으로 <br>변하는 곳</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">인생 멘토를 <br>만난 곳<br>(담임선생님)</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">인생의 방향점을 <br>정할 수 있는 <br>소중한 시간</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">소중한 <br>나의 스무 살을 <br>채우는 소중한 날들</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">나를 <br>충분히 <br>더 알아가는 시간</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">자신의 선택에 <br>책임질 수 있는 <br>어른이 되는 첫걸음</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">훌륭하신 선생님들의 <br>지도와 가르침으로 <br>훌륭한 사람으로 <br>성장할 수 있는 시간</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">눈물을 머금고, <br>입술을 깨물면서도 <br>차마 따라가지 <br>않을 수 없던 길</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">자신의 한계를 <br>시험하는 곳</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">또 한 번의 <br>성장기</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">수업, 관리, 입시, <br>시설, 급식 맛집</p>
                    </li>
                    <li class="swiper-slide">
                        <p class="txt">안 하니까 안되지, <br>하면 된다는 걸 <br>알게 해준 곳</p>
                    </li>
                </ul>
            </div>
            <p class="r-txt">* 2023년 재원생 후기 중 발췌</p>
            <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
            <h3 class="mb80" data-aos="fade-up"><img src="<%=imgUrl%>/cont03_tit.png" alt="" /></h3>
            <ul class="result-wrap">
                <li class="mt0">
                    <dl class="stu-info">
                        <dt>
                            <p class="img"><img src="<%=imgUrl%>/stu_img_w.png" alt="" /></p>
                            <p>최상위권 여학생 의대전문관<br>
                                2023년 반수반 KA반 재원생</p>
                        </dt>
                        <dd>
                            <p>경희대(서울) 한의예과 합격</p>
                            <p>고려대(안암) 경영대학 합격</p>
                        </dd>
                    </dl>
                    <div class="box">
                        <p>247점</p>
                        <p>295점</p>
                        <p class="bubble"><strong>90.7</strong><i>%</i><br>상승</p>
                        <p><img src="<%=imgUrl%>/result_img.jpg" alt="" /></p>
                    </div>
                </li>
                <li class="mt0">
                    <dl class="stu-info">
                        <dt>
                            <p class="img"><img src="<%=imgUrl%>/stu_img_w.png" alt="" /></p>
                            <p>최상위권 여학생 의대전문관<br>
                                2023년 반수반 HS반 재원생</p>
                        </dt>
                        <dd>
                            <p>경희대(서울) 한의예과 합격</p>
                            <p>건국대(서울) 수의예과 합격</p>
                            <p>제주대 약학과 합격</p>
                        </dd>
                    </dl>
                    <div class="box">
                        <p>274점</p>
                        <p>295점</p>
                        <p class="bubble"><strong>80.1</strong><i>%</i><br>상승</p>
                        <p><img src="<%=imgUrl%>/result_img.jpg" alt="" /></p>
                    </div>
                </li>
                <li>
                    <dl class="stu-info">
                        <dt>
                            <p class="img"><img src="<%=imgUrl%>/stu_img_w.png" alt="" /></p>
                            <p>최상위권 여학생 의대전문관<br>
                                2023년 반수반 HS반 재원생</p>
                        </dt>
                        <dd>
                            <p>고려대(안암) 정치외교학과 합격</p>
                            <p>성균관대 공학계열 합격</p>
                        </dd>
                    </dl>
                    <div class="box">
                        <p>235점</p>
                        <p>283점</p>
                        <p class="bubble"><strong>74.0</strong><i>%</i><br>상승</p>
                        <p><img src="<%=imgUrl%>/result_img.jpg" alt="" /></p>
                    </div>
                </li>
                <li>
                    <dl class="stu-info">
                        <dt>
                            <p class="img"><img src="<%=imgUrl%>/stu_img_w.png" alt="" /></p>
                            <p>최상위권 여학생 의대전문관<br>
                                2023년 반수반 HS반 재원생</p>
                        </dt>
                        <dd>
                            <p>대구한의대 한의예과 합격</p>
                            <p>연세대(서울) 경영학과 합격</p>
                            <p>상지대 한의예과 합격</p>
                        </dd>
                    </dl>
                    <div class="box">
                        <p>270점</p>
                        <p>291점</p>
                        <p class="bubble"><strong>70.0</strong><i>%</i><br>상승</p>
                        <p><img src="<%=imgUrl%>/result_img.jpg" alt="" /></p>
                    </div>
                </li>
            </ul>
            <!-- 롤링 슬라이드 -->
            <div class="roll-slide swiper-container">
                <ul class="swiper-wrapper">
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yeongnam.png" alt="영남대 로고" /></p>
                            <p>영남대학교<br>의예과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 283점</p>
                                <p>2023학년도 241.5점</p>
                            </dt>
                            <dd>70.9%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_keimyung.png" alt="계명대 로고" /></p>
                            <p>계명대학교<br>의예과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 283점</p>
                                <p>2023학년도 241.5점</p>
                            </dt>
                            <dd>70.9%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_wonkwang.png" alt="원광대 로고" /></p>
                            <p>원광대학교<br>의예과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 261점</p>
                                <p>2023학년도 236점</p>
                            </dt>
                            <dd>38.8%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 SA반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img style="width:63px;height:auto" src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cku.jpg" alt="가톨릭관동대 로고" /></p>
                            <p>가톨릭관동대학교<br>의학과(의예과)</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 283점</p>
                                <p>2023학년도 241.5점</p>
                            </dt>
                            <dd>70.9%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_joseon.png" alt="조선대 로고" /></p>
                            <p>조선대학교<br>치의예과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 292점</p>
                                <p>2023학년도 281점</p>
                            </dt>
                            <dd>57.9%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_gangneungwonju.png" alt="국립강릉원주대 로고" /></p>
                            <p style="font-size:17px;letter-spacing:-1px;">국립강릉원주대학교(강릉)<br>치의예과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 292.5점</p>
                                <p>2023학년도 283점</p>
                            </dt>
                            <dd>55.9%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_dankookl.png" alt="단국대 로고" /></p>
                            <p>단국대학교(천안)<br>치의예과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 261점</p>
                                <p>2023학년도 236점</p>
                            </dt>
                            <dd>38.8%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 SA반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chonnam.png" alt="전남대 로고" /></p>
                            <p>전남대학교(광주)<br>치의학학석사통합과정</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 292.5점</p>
                                <p>2023학년도 283점</p>
                            </dt>
                            <dd>55.9%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_semyung.png" alt="세명대 로고" /></p>
                            <p>세명대학교<br>한의예과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 292점</p>
                                <p>2023학년도 281점</p>
                            </dt>
                            <dd>57.9%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyunghee.png" alt="경희대 로고" /></p>
                            <p>경희대학교(서울)<br>한의예과(인문)</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 295점</p>
                                <p>2023학년도 246.5점</p>
                            </dt>
                            <dd>90.7%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 KA반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_daeguhanuidae.png" alt="대구한의대 로고" /></p>
                            <p>대구한의대학교<br>한의예과(인문)</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 291점</p>
                                <p>2023학년도 270점</p>
                            </dt>
                            <dd>70.0%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sangji.png" alt="상지대 로고" /></p>
                            <p>상지대학교<br>한의예과(인문)</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 291점</p>
                                <p>2023학년도 270점</p>
                            </dt>
                            <dd>70.0%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyunghee.png" alt="경희대 로고" /></p>
                            <p>경희대학교(서울)<br>한의예과(자연)</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 295점</p>
                                <p>2023학년도 273.5점</p>
                            </dt>
                            <dd>81.1%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sangji.png" alt="상지대 로고" /></p>
                            <p>상지대학교<br>한의예과(자연)</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 292점</p>
                                <p>2023학년도 281점</p>
                            </dt>
                            <dd>57.9%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li><li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_wonkwang.png" alt="원광대 로고" /></p>
                            <p>원광대학교<br>한의예과(자연)</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 292.5점</p>
                                <p>2023학년도 283점</p>
                            </dt>
                            <dd>55.9%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_jeju.png" alt="제주대 로고" /></p>
                            <p>제주대학교<br>약학과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 295점</p>
                                <p>2023학년도 273.5점</p>
                            </dt>
                            <dd>81.1%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyungsung.png" alt="경성대 로고" /></p>
                            <p>경성대학교<br>약학과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 291.5점</p>
                                <p>2023학년도 270점</p>
                            </dt>
                            <dd>71.7%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sookmyng.png" alt="숙명여대 로고" /></p>
                            <p>숙명여자대학교<br>약학부</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 291.5점</p>
                                <p>2023학년도 270점</p>
                            </dt>
                            <dd>71.7%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yeongnam.png" alt="원광대 로고" /></p>
                            <p>원광대학교<br>약학과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 280점</p>
                                <p>2023학년도 233점</p>
                            </dt>
                            <dd>70.1%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 KA반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chungnam.png" alt="충남대 로고" /></p>
                            <p>충남대학교<br>약학과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 260점</p>
                                <p>2023학년도 198.5점</p>
                            </dt>
                            <dd>60.6%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_joseon.png" alt="조선대 로고" /></p>
                            <p>조선대학교<br>약학과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 261점</p>
                                <p>2023학년도 236점</p>
                            </dt>
                            <dd>38.8%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 SA반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_konkuk.png" alt="건국대 로고" /></p>
                            <p>건국대학교(서울)<br>수의예과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 295점</p>
                                <p>2023학년도 273.5점</p>
                            </dt>
                            <dd>81.1%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_unist.png" alt="UNIST 로고" /></p>
                            <p>UNIST<br>이공계열</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 292점</p>
                                <p>2023학년도 281점</p>
                            </dt>
                            <dd>57.9%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></p>
                            <p>연세대학교(서울)<br>행정학과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 283.5점</p>
                                <p>2023학년도 259점</p>
                            </dt>
                            <dd>59.8%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 SA반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></p>
                            <p>연세대학교(서울)<br>경영학과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 291점</p>
                                <p>2023학년도 270점</p>
                            </dt>
                            <dd>70.0%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></p>
                            <p>고려대학교(안암)<br>건축학과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 283점</p>
                                <p>2023학년도 234.5점</p>
                            </dt>
                            <dd>74.0%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></p>
                            <p>고려대학교(안암)<br>건축학과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 285점</p>
                                <p>2023학년도 266.5점</p>
                            </dt>
                            <dd>55.2%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></p>
                            <p>고려대학교(안암)<br>경영대학</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 295점</p>
                                <p>2023학년도 246.5점</p>
                            </dt>
                            <dd>90.7%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 KA반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></p>
                            <p>고려대학교(안암)<br>경영대학</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 287점</p>
                                <p>2023학년도 263점</p>
                            </dt>
                            <dd>64.9%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></p>
                            <p>고려대학교(안암)<br>경영대학</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 286점</p>
                                <p>2023학년도 268.5점</p>
                            </dt>
                            <dd>55.6%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 SA반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sogang.png" alt="서강대 로고" /></p>
                            <p>서강대학교<br>기계공학과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 283점</p>
                                <p>2023학년도 234.5점</p>
                            </dt>
                            <dd>74.0%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sogang.png" alt="서강대 로고" /></p>
                            <p>서강대학교<br>기계공학과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 285점</p>
                                <p>2023학년도 266.5점</p>
                            </dt>
                            <dd>55.2%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sungkyunkwan.png" alt="성균관대 로고" /></p>
                            <p>성균관대학교<br>공학계열</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 283점</p>
                                <p>2023학년도 263점</p>
                            </dt>
                            <dd>54.1%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sungkyunkwan.png" alt="성균관대 로고" /></p>
                            <p>성균관대학교<br>반도체융합공학과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 291.5점</p>
                                <p>2023학년도 270점</p>
                            </dt>
                            <dd>71.7%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                    <li class="swiper-slide">
                        <div class="info">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sungkyunkwan.png" alt="성균관대 로고" /></p>
                            <p>성균관대학교<br>소프트웨어학과</p>
                        </div>
                        <dl class="grade">
                            <dt>
                                <p>2024학년도 287점</p>
                                <p>2023학년도 263점</p>
                            </dt>
                            <dd>64.9%<br>상승</dd>
                        </dl>
                        <p class="stu-name">2023년 반수반 HS반 재원생</p>
                    </li>
                </ul>
            </div>
            <!-- //롤링 슬라이드 -->
            <p class="r-txt mt50">※ 최상위권 여학생 의대전문관 러셀 기숙학원 2024학년도 재원생 중 2023/2024 수능 성적(국수탐(2)) 확인이 가능한 재원생의 성적 비교</p>
            <% Else %>
            <div class="roll-slide type02 swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <p class="txt">반별로 나누어서 메대프 모의고사를 통해<br>
                            승강반 제도가 있는 점이 공부 동기를 자극해서 만족스러웠습니다.<br>
                            수업을 듣고 바로 바자관에 가서 공부할 수 있어서<br>
                            공부에만 집중하는 시스템이 만족스러웠습니다.</p>
                        <p class="tit">최상위권 남학생 의대전문관 러셀 기숙학원<br>
                            <strong>2024 반수반 재원생</strong></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="txt">일일/주간테스트를 통해 매일매일<br> 
                            반강제적으로라도 단어를 외우게 되어 좋았습니다.<br>
                            실력을 다지는 데에 도움이 되었고,<br>
                            꾸준히 공부할 수 있게 해주었습니다.</p>
                        <p class="tit">최상위권 남학생 의대전문관 러셀 기숙학원<br>
                            <strong>2024 반수반 재원생</strong></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="txt">바른공부 자습전용관 벽면이 통유리로 되어 있어 <br>
                            탁 트인 공간에 모두 열심히 하는 걸 보면서 자극이 되었습니다.<br>
                            조용하게 유지되어 좋고 공부를 열심히 하는 친구들과 함께하다 보니 <br>
                            시너지 효과가 있어 공부하기 좋았습니다.</p>
                        <p class="tit">최상위권 남학생 의대전문관 러셀 기숙학원<br>
                            <strong>2024 반수반 재원생</strong></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="txt">이성적인 문제를 신경 쓰지 않아서 좋고<br>
                            학원 규칙과 반 자체적인 규칙이 있어<br>
                            면학분위기가 잘 정리되어 좋았습니다.<br>
                            테스트는 강제적으로 공부를 하게 되어<br>
                            실력을 점검할 수 있어 좋았습니다.</p>
                        <p class="tit">최상위권 남학생 의대전문관 러셀 기숙학원<br>
                            <strong>2024 반수반 재원생</strong></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="txt">몰입도 높은 현장강의와 현장 콘텐츠와<br> 
                            각 과목별 상담을 통한 체계적 학습이 가능해서 만족스러웠다.<br>
                            특히 하나의 방법을 마스터하여 국어 성적을 많이 올릴 수 있었다.</p>
                        <p class="tit">최상위권 남학생 의대전문관 러셀 기숙학원<br>
                            <strong>2024 반수반 재원생</strong></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="txt">심리특강 선생님의 특강과 상담을 통한 멘탈 케어 프로그램이 마음에 들었다.<br>
                            담임선생님의 종례 및 상담을 통해 많은 어려운 순간을 극복할 수 있었고 <br>
                            체육시간 운동을 통한 건전한 스트레스 해소가 효율적인 학습에 도움이 되었다.<br>
                            질 높은 수업과 다양하고 풍부한 학습 자료가 많은 도움이 되었다. <br>
                            특히 트렌드 변화에 맞는 강의와 변형 문제를 제공하여 <br>
                            실전 적응력을 향상시킬 수 있었다. <br>
                            또한 다양한 EBS 변형 문제와 1:1 질의 응답으로 <br>
                            탐구 2과목 모두 만점을 얻을 수 있었다.</p>
                        <p class="tit">최상위권 남학생 의대전문관 러셀 기숙학원<br>
                            <strong>2024 반수반 재원생</strong></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="txt">수능날이 다가올수록 수능 일과와 같은 시간 훈련을 할 수 있었다. <br>
                            러셀 기숙의 가장 큰 장점은 담임선생님들의 면학분위기 관리라고 생각한다.<br>
                            또한 러셀 총평 노트를 통해 단점 파악 및 공부 계획 수립에 도움이 되었고, <br>
                            대치동에서나 만날 수 있는 우수한 현장 강사진의 단과 커리큘럼으로 <br>
                            수업 흐름이 끊기지 않아서 좋았다.</p>
                        <p class="tit">최상위권 남학생 의대전문관 러셀 기숙학원<br>
                            <strong>2024 반수반 재원생</strong></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="txt">하루 공부가 끝날 때 그 날 공부했던 것을 <br>
                            러셀 플래너에 정리하는 게 실력 향상에 도움이 되었고 <br>
                            체육시간 다양한 체육 활동이 학습에 효율을 더해 주었다.<br>
                            숙소 내에는 화장실이 2개 설치돼 있어서 <br>
                            화장실 생활을 편하게 할 수 있었다.<br>
                            또한 개방형 자습관 구조와 <br>
                            담임선생님의 입시/면학 관리가 매우 만족스러웠다.</p>
                        <p class="tit">최상위권 남학생 의대전문관 러셀 기숙학원<br>
                            <strong>2024 반수반 재원생</strong></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="txt">매주 체육시간 및 힐링타임이 컨디션 관리에 큰 도움이 되었고, <br>
                            담임선생님의 학습 상담 및 생활 상담이 수험생활의 힘이 되었다.<br>
                            과목별 강사 선생님과의 1:1 질답 및 상담도  좋았다.</p>
                        <p class="tit">최상위권 남학생 의대전문관 러셀 기숙학원<br>
                            <strong>2024 반수반 재원생</strong></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="txt">퀄모의고사와 장영진 모의고사를 통해 끝까지 감을 유지할 수 있었고 <br>
                            수능 당일 시간에 맞춰 학습하는 연습이 좋았다.<br>
                            온도, 습도, 냄새 등 사소한 부분조차도 모든 부분이 평균 이상이었다.<br>
                            규칙적이고 변동없는 생활 패턴 유지가 가장 큰 장점이었다.<br>
                            자습관과 강의실의 동선이 편해서 좋았고,<br>
                            국어/수학/영어 선생님들의 학습의 방향성 제시가 마음에 들었다.</p>
                        <p class="tit">최상위권 남학생 의대전문관 러셀 기숙학원<br>
                            <strong>2024 반수반 재원생</strong></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="txt">승강반 제도로 인해 공부에 동기부여가 많이 되었다.<br>
                            멘탈 유지와 학습 고민을 한방에 해결해 주는 담임선생님, <br>
                            적절하게 배정돼 있는 체육 시간과 힐링 타임 시간 덕에 
                            꾸준함을 유지할 수 있었다.<br>
                            탐구 과목의 충분한 현강 콘텐츠를 통한 
                            선생님의 스킬을 체화할 수 있었다.</p>
                        <p class="tit">최상위권 남학생 의대전문관 러셀 기숙학원<br>
                            <strong>2024 반수반 재원생</strong></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="txt">전국 최상위권 학생들이 만들어내는 집단적인 면학분위기가 만족스러웠다.<br>
                            타 사이트 접속이 차단된 와이파이 덕에 공부에만 집중할 수 있었고, <br>
                            담임선생님들의 면학분위기 관리와 종례 시간의 입시 정보 제공이 큰 도움이 되었다. <br>
                            실제 공부량이 밖에서 공부할 때보다 2배 이상 많았다.</p>
                        <p class="tit">최상위권 남학생 의대전문관 러셀 기숙학원<br>
                            <strong>2024 반수반 재원생</strong></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="txt">매월 시행되는 메대프 모의고사가 실전 훈련 연습에 도움이 되었다.<br>
                            또 모의고사 후 러셀 총평 노트 작성을 통해 <br>
                            현재의 취약점 분석과 앞으로의 공부 방향성을 세울 수 있었다.<br>
                            수강생이 적더라도 과탐2를 개설해 준 학원의 배려에 감사한다.</p>
                        <p class="tit">최상위권 남학생 의대전문관 러셀 기숙학원<br>
                            <strong>2024 반수반 재원생</strong></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="txt">다양한 파이널 실전 연습으로 취약했던 과탐에서 <br>
                            2과목 모두 수능에서 커리어 하이를 달성할 수 있었다.<br>
                            집단적인 면학분위기가 가져다주는 적절한 긴장감 유지가 좋았고 <br>
                            담임선생님의 플래너 점검을 통한 학습 커리큘럼 조언도 큰 도움이 됐다.<br>
                            식사도 맛있었고 혼밥 할 수 있게 세팅된 식당도 좋았다.<br>
                            힘들지 않은 날이 드물었지만 결국 끝은 온다.</p>
                        <p class="tit">최상위권 남학생 의대전문관 러셀 기숙학원<br>
                            <strong>2024 반수반 재원생</strong></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="txt">수능은 멘탈 50 + 운 25 + 실력 25의 시험이라고 생각해서 <br>
                            멘탈 관리에 가장 많은 신경을 썼다.<br>
                            수능 1주일 전부터 잠자기 전에 <br>
                            일부러 긴장하여 긴장의 역치를 높였던 게 도움이 됐다.<br>
                            칸막이가 없어 개방감 있는 바자관이 좋았고, <br>
                            통유리 설계로 자연 채광으로 건강하게 공부할 수 있었다.<br>
                            장영진 모의고사, 메대프 모의고사, 퀄 모의고사와 <br>
                            강사 선생님들의 현장 콘텐츠가 많아서 좋았다.<br>
                            매월 진행하는 모의고사 빌보드를 통한 <br>
                            경쟁 심리 자극 및 장학 시상도 맘에 들었다.</p>
                        <p class="tit">최상위권 남학생 의대전문관 러셀 기숙학원<br>
                            <strong>2024 반수반 재원생</strong></p>
                    </div>
                </div>

                <div class="swiper-button-prev"><img src="<%=img_path_yangji%>/2024/half/ico_prev.png" alt="" /></div>
                <div class="swiper-button-next"><img src="<%=img_path_yangji%>/2024/half/ico_next.png" alt="" /></div>
            </div>
            <p class="r-txt">* 2023년 재원생 후기 중 발췌</p>
            <% End If %>
            
        </div>
    </div>

    <div class="cont04">
        <div class="inner">
            <h3 class="mb80" data-aos="fade-up"><img src="<%=imgUrl%>/cont04_tit.png" alt="" /></h3>
            <p><img src="<%=imgUrl%>/cont04_img.jpg" alt="" /></p>
            <% If sCampusCode = "CD0348" Then '여기숙 %>
            <p class="r-txt mt20">1) 2023년 최상위권 여학생 의대전문관 러셀 기숙학원 재원생 대상 만족도 조사 결과 <br>
                2) 만족도 = 매우 만족, 만족, 보통 응답자 비율</p>
            <% Else %>
            <p class="r-txt mt15">* 2023년 재원생 후기 중 발췌</p>
            <% End If %>
        </div>
    </div>

    <div class="cont05">
        <div class="inner">
            <h3 class="mb60" data-aos="fade-up"><img src="<%=imgUrl%>/cont05_tit.png" alt="" /></h3>
            <p><img src="<%=imgUrl%>/cont05_img.jpg" alt="" /></p>
        </div>
    </div>
</div>