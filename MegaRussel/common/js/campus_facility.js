// 코어 학원 시설
$(function(){
  $(".js-gallery").each(function(index){
    var $this = $(this);
    var slide = $this.addClass("gallery-" + Number(index+1));

    var gallery = new Swiper(slide, {
      effect: 'fade',
      spaceBetween: 10,
      slideToClickedSlide : true,
      loop:true,
      loopedSlides: 7,
      touchRatio: 0,
      watchSlidesProgress: true,
      slideToClickedSlide: true,
      autoplay: {
        delay: 5000,
        disableOnInteraction: false,
      },
      pagination: {
          el: '.js-thumb',
          clickable: true,
          renderBullet: function (index, className) {
            var gSlide = slide.find('.swiper-slide img').eq(index);
              return '<span class="' + className + '"><img src="'+ gSlide.attr('src') +'"></span>';
          }
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev'
      }
    });

  });
});

// 코어 학원 시설 텍스트 변경
$(function(){
  $('.gallery-swiper').each(function(){
    var gallerySlide02 = new Swiper('.gallery-swiper', {
      effect: 'fade',
      spaceBetween: 10,
      loop:true,
      loopedSlides: 7,
      watchSlidesProgress: true,
      slideToClickedSlide: true,
      autoplay: {
        delay: 5000,
        disableOnInteraction: false,
      },
      pagination: {
          el: ".thumb-list",
          clickable: true,
          renderBullet: function (index, className) {
              return '<span class="' + className + '"><img src="'+ $('.gallery-swiper .swiper-slide img').eq(index).attr('src') +'"></span>';
          }
      },
      navigation: {
        nextEl: '.gallery-button-next',
        prevEl: '.gallery-button-prev',
      },
      on: {
        activeIndexChange: function(){
          if(this.realIndex === 4 || this.realIndex === 5 || this.realIndex === 6){
            $("#chanTxt").html("<mark class='bold2'>수업 시 대치동 강의실에서 선생님은 IP 카메라</mark>를 통해 CORE 학생들의 수업 태도 및 참여 모습을<br><mark class='bold2'>실시간으로 확인</mark>하여 대치동과 지역 강의실 간 <strong>소통이 이루어집니다</strong>.");
          }else{
            $("#chanTxt").html("앉은 책상 높이와 간격 등 수업 도중 불편함을 느끼지 않게 <strong>학생 간의 책상 간격은 넓게 배치</strong>했으며,<br><mark class='bold2'>100인치 대형 TV</mark>로 수강하며 <mark class='bold2'>TV 각도, 선명도, 사운드까지 세심하게 조절</mark>하여 준비하였습니다.");
          }
        }
      }
    });
  });
});