<!-- 통합프로모션 페이지, 정시전략설명회 사용 -->
<link rel="stylesheet" type="text/css" href="/common/css/2024/ia_map.css" />
<div class="ia-map-wrap">
    <!-- 통합프로모션 title -->
    <div class="tit-area">
        <h3>목표, 그 이상의 성공을 위해<br>
        전국 어디에서나 여러분과 함께 합니다.</h3>
        <p>이미 수많은 합격자 수로 증명된 입시 명문<br>
        러셀X메가스터디학원만이 가능한 학습 시스템을 경험하세요.</p>
    </div>
    <!-- // 통합프로모션 title -->
    <!-- 공통 title -->
    <div class="tit-area02">
        <div><img src="<%=Application("img_path_russel")%>/event/2024/promotion/map_tit.png" alt="" /></div>
    </div>
    <!-- //공통 title -->
    <div class="ia-map">
        <nav>
            <a href="javascript:void(0)">러셀</a>
            <a href="javascript:void(0)">메가스터디학원</a>
            <a href="javascript:void(0)">러셀 기숙</a>
        </nav>
        <div class="s-tit">
            <p>전국 지점 안내</p>
            <ul>
                <li class="f-blue">러셀</li>
                <li class="f-purple">메가스터디학원</li>
                <li class="f-red">러셀 기숙</li>
            </ul>
        </div>
        <div class="map-area">
            <div class="bg"><img src="<%=Application("img_path_russel")%>/event/2024/promotion/map_bg.jpg" alt="" /></div>
            <ul class="a-russel active">
                <li class="r-gn"><span>러셀 강남</span></li>
                <li class="r-dc"><span>러셀 대치</span></li>
                <li class="r-md"><span>러셀 목동</span></li>
                <li class="r-bc"><span>러셀 부천</span></li>
                <li class="r-bd"><span>러셀 분당</span></li>
                <li class="r-ct"><span>러셀 센텀</span></li>
                <li class="r-yt"><span>러셀 영통</span></li>
                <li class="r-jg"><span>러셀 중계</span></li>
                <li class="r-pc"><span>러셀 평촌</span></li>
                <li class="r-dg"><span>러셀 대구</span></li>
                <li class="r-us"><span>러셀 울산</span></li>
                <li class="r-gj"><span>러셀CORE 광주</span></li>
                <li class="r-dj"><span>러셀 대전</span></li>
                <li class="r-wj"><span>러셀CORE<br>원주</span></li>
                <li class="r-jj"><span>러셀CORE 전주</span></li>
                <li class="r-cw"><span>러셀CORE<br>창원</span></li>
                <li class="r-cj"><span>러셀CORE 청주</span></li>
            </ul>
            <ul class="a-mega active">
                <li class="m-scho"><span>서초재종</span></li>
                <li class="m-gb"><span>강북재종</span></li>
                <li class="m-nrj"><span>노량진재종</span></li>
                <li class="m-sinc"><span>신촌재종</span></li>
                <li class="m-sp"><span>송파재종</span></li>
                <li class="m-bc"><span>부천재종</span></li>
                <li class="m-bd"><span>분당재종</span></li>
                <li class="m-is"><span>일산재종</span></li>
                <li class="m-pc"><span>평촌재종</span></li>
                <li class="m-sb"><span>성북재학</span></li>
            </ul>
            <ul class="a-gisuk active">
                <li class="g-hs"><span>러셀 기숙<br>최상위권 전문관</span></li>
                <li class="g-sm"><span>러셀 기숙<br>남학생 전문관</span></li>
                <li class="g-w"><span>러셀 기숙<br>여학생 전문관</span></li>
                <li class="g-mw"><span>러셀 기숙<br>여학생 수학<br>전문관</span></li>
                <li class="g-sc"><span>러셀 기숙<br>자연계 전문관</span></li>
            </ul>
        </div>
    </div>
</div>
<script>
$(document).ready(function() {
    $('.ia-map nav a').on('click', function() {
        // 모든 <a> 요소에서 active 클래스 제거
        $('.ia-map nav a').removeClass('active');
        
        // 클릭된 <a> 요소에 active 클래스 추가
        $(this).addClass('active');
        
        // 클릭된 <a> 요소의 인덱스를 가져옴
        let index = $(this).index();
        
        // 모든 ul에서 active 클래스 제거
        $('.map-area ul').removeClass('active');
        
        // 해당 인덱스의 ul에 active 클래스 추가
        $('.map-area ul').eq(index).addClass('active');
    });

    //지원전략 설명회 페이지일 경우 문구 변경
    var currentUrl = window.location.href;
    if (currentUrl.includes('/event/2025/jungsi_open/')) {
        $('.ia-map .s-tit p').text('학원 안내');
    }

});
</script>

