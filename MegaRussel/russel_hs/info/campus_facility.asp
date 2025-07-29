
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
  <!-- Sub Page head -->
  <!-- #include virtual="/russel/library/include/common/russel_yj/head.asp" -->
  <!-- Sub Page head -->
</head>
<body>
  <!-- Skip Navi -->
  <!--#include virtual="/russel/library/include/common/russel_yj/skip_navi.asp" -->
  <!-- Skip Navi -->

  <!-- 공통 최상단 // -->
	<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
  <!-- // 공통 최상단 -->

  <!-- yg-main-wrap -->
  <div id="yj-sub-wrap">
    <!-- lnb -->   
	  <!--#include virtual="/russel/library/include/common/russel_yj/sub_menu.asp" -->
    <!-- //lnb -->

   <!-- content-wrap -->
   <div class="content-wrap">
      <!-- sub-tit -->
      <!--#include virtual="/russel/library/include/common/russel_yj/sub_title.asp" -->
      <!-- //sub-tit -->      
      <p class="top-txt">최상위권 전문관 러셀 기숙학원은 서울에서 약 1시간 거리인 경기도 용인(원삼면)에 위치하고 있으며, <br>
        2023년 신축 설계하여 만든 1천명 수용 가능한 최신 프리미엄 기숙학원입니다. <br>
        학생들이 수험기간 동안 오직 공부에만 전념할 수 있도록<br>
        누구도 신경 쓰지 않는 세심한 부분까지 정성스레 준비하였습니다.<br>
        공간에 대한 생각, 언제나 학생에서 시작합니다.
      </p>
      <!-- campus-facility -->
      <div class="campus-facility">
        <div class="btn-wrap clearfix js-tab">
          <a href="#" class="on js-bt-none">교육환경</a>
          <a href="#" class="js-bt-none">생활환경</a>
        </div>
        <!-- gallery -->
        <!-- 교육 환경 -->
        <div class="gallery sm swiper-container js-gallery1 js-tab-cont on">
          <div class="swiper-wrapper sm">
            <div class="swiper-slide">
              <p class="s-tit"><strong>조감도</strong></p>
              <p class="s-txt">학생들의 목소리에 귀 기울여 학생 중심으로 설계된 최상위권 전문관 러셀 기숙학원</p>
              <img src="<%=img_path_russelhs%>/info/campus/edu_pic1.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>개인 사물함</strong></p>
              <p class="s-txt">학생들의 입장에서 생각하고 학생들의 목소리에 귀 기울여 학생 중심으로 설계된 최상위권 전문관 러셀 기숙학원</p>
              <img src="<%=img_path_russelhs%>/info/campus/edu_pic2.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>강의실</strong></p>
              <p class="s-txt">공간이 실력이 되도록 섬세하게 설계한 강의실</p>
              <img src="<%=img_path_russelsm%>/info/campus/edu_pic3.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>스터디룸</strong></p>
              <p class="s-txt">질의응답 및 그룹스터디 진행
              </p>
              <img src="<%=img_path_russelhs%>/info/campus/edu_pic4.jpg" alt="" />
            </div>
            <!-- <div class="swiper-slide">
              <p class="s-tit"><strong>대치동 현장강의 강의 시스템</strong></p>
              <p class="s-txt">메가스터디 온오프 전문 강사진<br>
                대치동 현강 그대로! 대치동 현강 콘텐츠 그대로
              </p>
              <img src="<%=img_path_russelhs%>/info/campus/edu_pic5.jpg" alt="" />
            </div> -->
            <div class="swiper-slide">
              <p class="s-tit"><strong>칠판</strong></p>
              <p class="s-txt">강의실 좌우 끝에서도 잘 보이도록 곡면 와이드 칠판 설치</p>
              <img src="<%=img_path_russelsm%>/info/campus/edu_pic6.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>단상</strong></p>
              <p class="s-txt">일반 단상보다 높은 30cm 단상으로 설계</p>
              <img src="<%=img_path_russelsm%>/info/campus/edu_pic7.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>바자관</strong></p>
              <p class="s-txt">일반 책상보다 약 4배가량 넓은 데스커 책상(iloom), <br>
                허리에 편한 의자 전문 브랜드 시디즈 의자, 자연 채광이 스며들도록 전면 통유리 설치, <br>
                답답하지 않은 탁 트인 책상&amp;충분한 통로 확보
              </p>
              <img src="<%=img_path_russelsm%>/info/campus/edu_pic8.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>바자관</strong></p>
              <p class="s-txt">공기에 생기(生氣)를 더할 때, 학습 효율은 높아지고<br>
                공부만 하기에도 벅찬 학생들이 언제나 편하고, 답답함이 없도록 학습환경 조성
              </p>
              <img src="<%=img_path_russelsm%>/info/campus/edu_pic9.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>바자관</strong></p>
              <p class="s-txt">일반 책상보다 약 4배가량 넓은 데스커 책상(iloom),<br>
                허리에 편한 의자 전문 브랜드 시디즈 의자, 자연 채광이 스며들도록 전면 통유리 설치,<br>
                답답하지 않은 탁 트인 책상&충분한 통로 확보
              </p>
              <img src="<%=img_path_russelsm%>/info/campus/edu_pic10.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>바자관-공기정화식물</strong></p>
              <p class="s-txt">초록의 싱그러움이 가득한 바른공부 자습전용관<br>
                공기정화식물은 음이온과 향, 산소 등을 방출해 공기를 정화하고 증산작용을 통해 실내 습도와 온도 조절에 탁월<br>
                학습공간의 공기 질을 개선하여 맑고 청정한 학습 환경 조성                
              </p>
              <img src="<%=img_path_russelsm%>/info/campus/edu_pic11.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>바자관-공기청정기</strong></p>
              <p class="s-txt">대형 공기청정기 설치로 학생들이 학습에 집중할 수 있도록 청정하고 깨끗한 학습 환경 조성</p>
              <img src="<%=img_path_russelsm%>/info/campus/edu_pic12.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>Resilient Room(회복탄력성의 방)</strong></p>
              <p class="s-txt">회복탄력성의 뜻은 실패나 부정적인 상황을 극복하고 원래의 안정된 심리적 상태를 되찾는 능력<br>
                수험에 지친 학생들이 Resilient Room에서 담임선생님과 상담 후 다시 열의를 불태우는 계기가 되는 공간
              </p>
              <img src="<%=img_path_russelsm%>/info/campus/edu_pic13.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>Resilient Room(회복탄력성의 방)</strong></p>
              <p class="s-txt">회복탄력성의 뜻은 실패나 부정적인 상황을 극복하고 원래의 안정된 심리적 상태를 되찾는 능력<br>
                수험에 지친 학생들이 Resilient Room에서 담임선생님과 상담 후 다시 열의를 불태우는 계기가 되는 공간
              </p>
              <img src="<%=img_path_russelsm%>/info/campus/edu_pic14.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>복도</strong></p>
              <p class="s-txt">통행하기에 답답하지 않은 넓은 복도</p>
              <img src="<%=img_path_russelsm%>/info/campus/edu_pic15.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>상황통제실</strong></p>
              <p class="s-txt">부모의 시각으로 바라보는 상황 통제실_차량 통제, 시설, 소방, 기타 방제, 안전사고 방지를 위한 실시간 모니터링</p>
              <img src="<%=img_path_russelsm%>/info/campus/edu_pic16.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>상황통제실</strong></p>
              <p class="s-txt">부모의 시각으로 바라보는 상황 통제실_차량 통제, 시설, 소방, 기타 방제, 안전사고 방지를 위한 실시간 모니터링</p>
              <img src="<%=img_path_russelsm%>/info/campus/edu_pic17.jpg" alt="" />
            </div>
          </div>
          <!-- thumb-wrap -->
          <div class="thumb-wrap">
            <div class="swiper-pagination-thumb js-thumb1"></div>
          </div>
          <!-- //thumb-wrap -->

          <!-- Add Arrows -->
          <div class="swiper-button-prev button"><img src="<%=img_path_yangji%>/btn/btn_slide_prev.png" alt="" /></div>
          <div class="swiper-button-next button"><img src="<%=img_path_yangji%>/btn/btn_slide_next.png" alt="" /></div>
          <!-- //Add Arrows -->
        </div>
        <!-- //교육 환경 -->

        <!-- 생활 환경 -->
        <div class="gallery sm swiper-container js-gallery2 js-tab-cont" style="margin-bottom: 40px;">
          <div class="swiper-wrapper sm">
            <!-- 이미지명 꼭 순서대로 -->
            <div class="swiper-slide">
              <p class="s-tit"><strong>전경</strong></p>
              <p class="s-txt">답답함을 덜어주는 넓고 쾌적한 생활공간
              </p>
              <img src="<%=img_path_russelhs%>/info/campus/life_pic1.jpg" alt="" />
            </div>
            <!-- <div class="swiper-slide">
              <p class="s-tit"><strong>운동장</strong></p>
              <p class="s-txt">축구장 : 가로(70m)*세로(80m) 넓은 운동장 <br>
                농구장 : 5:5로 편성하여 2팀 동시 이용 가능<br>
                트랙 : 트랙 라인을 따라 산책 가능
              </p>
              <img src="<%=img_path_russelsm%>/info/campus/life_pic2.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>농구장</strong></p>
              <p class="s-txt">단체 운동이 가능한 운동장과 농구장<br>
                5:5로 편성하여 두 팀 동시 이용 가능</p>
              <img src="<%=img_path_russelsm%>/info/campus/life_pic3.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>농구장</strong></p>
              <p class="s-txt">단체 운동이 가능한 운동장과 농구장<br />
                5:5로 편성하여 2팀 동시 이용 가능
              </p>
              <img src="<%=img_path_russelsm%>/info/campus/life_pic4.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>운동장 운동기구</strong></p>
              <p class="s-txt">야외에서 할 수 있는 유산소 운동 기구
              </p>
              <img src="<%=img_path_russelsm%>/info/campus/life_pic5.jpg" alt="" />
            </div> -->
            <!-- <div class="swiper-slide">
              <p class="s-tit"><strong>북카페</strong></p>
              <p class="s-txt">학생 중심으로 설계된 북카페
              </p>
              <img src="<%=img_path_russelsm%>/info/campus/life_pic6.jpg" alt="" />
            </div> -->
            <div class="swiper-slide">
              <p class="s-tit"><strong>식당</strong></p>
              <p class="s-txt">감성적이고 깔끔한 인테리어가 돋보이는 식당
              </p>
              <img src="<%=img_path_russelhs%>/info/campus/life_pic7.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>식당</strong></p>
              <p class="s-txt">1인 식사를 선호하는 학생들을 위한 1인용 테이블 설치
              </p>
              <img src="<%=img_path_russelsm%>/info/campus/life_pic8.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>기숙사</strong></p>
              <p class="s-txt">1인실, 2인실, 3인실 선택. 시몬스 1층침대 및 매트리스, 호텔식 기숙사
              </p>
              <img src="<%=img_path_russelhs%>/info/campus/life_pic9.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>기숙사</strong></p>
              <p class="s-txt">1인실, 2인실, 3인실 선택. 시몬스 1층침대 및 매트리스, 호텔식 기숙사
              </p>
              <img src="<%=img_path_russelhs%>/info/campus/life_pic14.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>기숙사</strong></p>
              <p class="s-txt">1인실, 2인실, 3인실 선택. 시몬스 1층침대 및 매트리스, 호텔식 기숙사
              </p>
              <img src="<%=img_path_russelhs%>/info/campus/life_pic15.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>화장실</strong></p>
              <p class="s-txt">숙소별 마련된 깔끔한 인테리어의 화장실
              </p>
              <img src="<%=img_path_russelhs%>/info/campus/life_pic10.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>대강당</strong></p>
              <p class="s-txt">실내 체육관으로 활용할 수 있는 넓은 대강당
              </p>
              <img src="<%=img_path_russelhs%>/info/campus/life_pic11.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>휴식공간</strong></p>
              <p class="s-txt">학생들의 심신을 안정시켜줄 편안하고 아늑한 휴식공간
              </p>
              <img src="<%=img_path_russelhs%>/info/campus/life_pic12.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>하늘정원</strong></p>
              <p class="s-txt">하늘정원에서의 힐링타임
              </p>
              <img src="<%=img_path_russelhs%>/info/campus/life_pic13.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>체력단련실</strong></p>
              <p class="s-txt">각종 최신 운동기구들로 가득 찬 체력단련실
              </p>
              <img src="<%=img_path_russelsm%>/info/campus/life_pic14.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>배드민턴장</strong></p>
              <p class="s-txt">스트레스를 날려줄 넓고 안전한 실내 배드민턴장 설치
              </p>
              <img src="<%=img_path_russelsm%>/info/campus/life_pic15.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>요가실</strong></p>
              <p class="s-txt">심신 수련 방법 중 하나 “요가” <br>
                요가는 자세를 교정하고 잘못된 호흡법을 교정하여 신체적 건강을 증진시킬 수 있도록<br>
                조절하고 명상 등으로 수련하여 심신의 긴장감을 해소                
              </p>
              <img src="<%=img_path_russelsm%>/info/campus/life_pic16.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>탁구대</strong></p>
              <p class="s-txt">체력을 증진시켜줄 넓고 안전한 실내 탁구대 설치
              </p>
              <img src="<%=img_path_russelsm%>/info/campus/life_pic18.jpg" alt="" />
            </div>
            <div class="swiper-slide">
              <p class="s-tit"><strong>화장실</strong></p>
              <p class="s-txt">25명의 학생들이 동시에 이용(양변기 기준)할 수 있는 넓고 쾌적한 화장실
              </p>
              <img src="<%=img_path_russelsm%>/info/campus/life_pic19.jpg" alt="" />
            </div>
          </div>
          <!-- thumb-wrap -->
          <div class="thumb-wrap">
            <div class="swiper-pagination-thumb js-thumb2"></div>
          </div>
          <!-- //thumb-wrap -->

          <!-- Add Arrows -->
          <div class="swiper-button-prev button"><img src="<%=img_path_yangji%>/btn/btn_slide_prev.png" alt="" /></div>
          <div class="swiper-button-next button"><img src="<%=img_path_yangji%>/btn/btn_slide_next.png" alt="" /></div>
          <!-- //Add Arrows -->
        </div>
        <!-- //생활 환경 -->

        <!-- //gallery -->
      </div>
      <!-- //campus-facility -->
    </div>
    <!-- //content-wrap -->
  </div>
  <!-- yg-main-wrap -->

	<!--  공통 푸터 //-->
	<!--#include virtual="/russel/library/include/common/russel_yj/footer.asp" -->
  <!--  // 공통 푸터-->
  
</body>
</html>
