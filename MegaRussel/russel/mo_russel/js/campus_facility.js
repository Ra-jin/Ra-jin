// 코어 학원 시설
$(function(){
    
    // 메시지를 변수로 선언
    if ($('.campus-facility').hasClass('core_dj')) {

        var msgCore = "<strong>LIVE 수업 시 대치동 강의실에서 선생님은 IP 카메라를</strong> 통해 러셀 학생들의 수업 태도 및 참여 모습을 <strong>실시간으로 확인</strong>하여 대치동과 각 지역 강의실 간 <strong>소통이 이루어집니다.</strong>";
        var msgNotCore = "눈이 편한 LED 조명, 좌·우측 끝에서도 잘 보이는 “곡면 칠판”,<br>글자 하나하나 선명하게 보이는 고해상도 “빔 프로젝터”,사각지대 없이 어디서나 생생한 수업 전달이 가능한 대형 TV 등<br><strong>최신 강의 장비를 완비하여 최고의 현장 강의 학습 환경을 제공</strong>합니다.";
    
    } else {

        var msgCore = "<strong>수업 시 대치동 강의실에서 선생님은 IP 카메라</strong>를 통해 CORE 학생들의 수업 태도 및 참여 모습을 <strong>실시간으로 확인</strong>하여 대치동과 지역 강의실 간 <span class='color-gray-01'>소통이 이루어집니다.</span>";
        var msgNotCore = "앉은 책상 높이와 간격 등 수업 도중 불편함을 느끼지 않게 <span class='color-gray-01'>학생 간의 책상 간격은 넓게 배치</span>했으며, <strong>100인치 대형 TV</strong>로 수강하며 <strong>TV 각도, 선명도, 사운드까지 세심하게 조절</strong>하여 준비하였습니다.";
    }

    $('.gallery-wrap').each(function(index){
        var $this = $(this);
        var view = $this.addClass('view-' + Number(index+1));
        var mainSlide = view.find('.js-gallery');
        var subSlide = view.find('.gallery-sub');
        
        var galleryNav = new Swiper(subSlide, {
            spaceBetween: 5,
            slidesPerView: 4,
            centeredSlides: true,
            loop:true,
            loopedSlides: 4,
            touchRatio: 0,
            watchSlidesProgress: true,
            slideToClickedSlide: true,
        });
        
        var galleryView = new Swiper(mainSlide, {
            effect: 'fade',
            spaceBetween: 10,
            allowTouchMove: false,
            loop:true,
            loopedSlides: 4,
            autoplay: {
                delay: 5000,
                disableOnInteraction: false,
            },
            thumb: {
                swiper: galleryNav,
            },
            pagination: {
                el: '.swiper-pagination',
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            // 여기에서 `.js-gallery`가 `.an-gallery` 클래스를 가질 때만 이벤트 실행!
            on: mainSlide.hasClass('an-gallery') ? {
                slideChange: function(){
                    var isCoreDJ = $('.campus-facility').hasClass('core_dj');

                    if ((isCoreDJ && this.realIndex >= 7) || (!isCoreDJ && (this.realIndex === 4 || this.realIndex === 5 || this.realIndex === 6))) {
                        $("#chanTxt").html(msgCore);
                    } else {
                        $("#chanTxt").html(msgNotCore);
                    }
                }
            } : {} // `.an-gallery`가 없으면 이벤트 없음
        });
        galleryView.controller.control = galleryNav;
        galleryNav.controller.control = galleryView;
    });
});
