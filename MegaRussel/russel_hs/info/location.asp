
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<html>
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
      
      <!-- location-wrap -->
      <div class="location-wrap">
        <p class="top-txt">최상위권 전문관 러셀 기숙학원에 오시는 방법과 교통편을 안내해드립니다.</p>
        <div class="map"><img src="<%=img_path_russelhs%>/info/location_img.jpg" alt="" /></div>
        <p>
          <a href="#" class="js-btn-none" onclick="window.open('popup_location.asp','printMap','width=640,height=600,scrollbars=yes')"><img src="<%=img_path_yangji%>/btn/btn_print.gif" alt="인쇄하기" /></a>
          <a href="https://naver.me/FDnwdMbF" target="_blank"><img src="<%=img_path_yangji%>/btn/btn_map.gif" alt="지도보기" /></a>
        </p>
        <h4 class="s-tit">주소&middot;문의</h4>
        <table class="tbl-type01">
          <colgroup>
            <col style="width:155px" />
            <col style="width:*" />
          </colgroup>
          <tbody>
            <tr>
              <th>주소</th>
              <td>도로명 주소 : 경기도 용인시 처인구 원삼면 모래실로 16<br>(구주소: 경기도 용인시 처인구 원삼면 사암리 8-1)</td>
            </tr>
            <tr>
              <th>문의</th>
              <td>전화 : 031) 326-5000</td>
            </tr>
          </tbody>
        </table>
        <h4 class="s-tit">교통</h4>
        <table class="tbl-type01">
          <colgroup>
            <col style="width:155px" />
            <col style="width:*" />
          </colgroup>
          <tbody>
            <tr>
              <th>버스</th>
              <td>
                <strong class="txt-blue f15">[버스/철도&middot;서울에서 오실 경우]</strong><br>
                1. 강남역에서 ‘용인터미널’행 5001번 버스이용 → 용인터미널 도착(약 1시간 10분 소요) <br>
                → 용인터미널에서 11번 버스 이용, ‘사암아카데미’에서 하차(약 40분소요) 이 후 <br>
                도보로 약 400m 이동 후 → 학원도착<br>
                2. 서울역에서 ‘용인터미널’행 5005번 버스이용 → 용인터미널 도착(약 1시간 20분 소요) <br>
                → 용인터미널에서 11번 버스 이용, ‘사암아카데미’에서 하차(약 40분소요) 이 후 <br>
                도보로 약 400m 이동 후 → 학원도착
                <br><br>
                <strong class="txt-orange f15">[수원에서 오실 경우]</strong><br>
                수원역 노보텔수원앞에서 10번 버스 이용 → 용인터미널 도착(약 1시간 10분 소요) → 용인터미널에서 11번 버스이용, ‘사암아카데미’에서 하차(약 40분 소요) 이 후 도보로 약 400m 이동 후 → 학원도착
                <br><br>
                <strong class="txt-green f15">[용인에서 오실 경우]</strong><br>
                용인터미널에서 11번 버스이용, ‘사암아카데미’에서 하차 (약 30분 소요) 이 후 <br>
                도보로 약 400m 이동 후 → 학원도착
              </td>
            </tr>
            <tr>
                <th>자가</th>
                <td>
                  <strong class="txt-blue f15">[양지IC에서 나온 경우(약 10분 소요 / 7.3km)]</strong><br>
                  17번국도(죽양대로) ‘죽산, 진천’방면으로 5.7km직진 → 원삼사거리에서 ‘사암리’방향으로 우회전 <br>
                  → 1.4km 직진 후 → ‘라미르커피’ 삼거리에서 ‘SK아카데미’방향으로 우회전 → 50m 진행 후 <br>
                  → ‘레이크랜드부동산’ 에서 ‘SK아카데미 방향’으로 우회전 → 약100m 전진 → 학원 도착
                  <br><br>
                  <strong class="txt-orange f15">[일죽IC에서 나온 경우(약 22분 소요 / 21km)]</strong><br>
                  ‘안성’방면으로 우회전 → 2.6km 직진하여 죽산교차로에서 ‘용인, 양지’방면 17번 국도로 우회전 <br>
                  → 18km직진 후 원삼사거리에서 ‘사암리’ 방향으로 좌회전 → 1.4km직진 후 → ‘라미르커피’ 삼거리에서 ‘SK아카데미’ 방향으로 우회전 → 50m 진행 후 → ‘레이크랜드 부동산’에서 ‘SK아카데미’ 방향으로 우회전 → 약100m 전진 → 학원 도착
                  <br><br>
                  <strong class="txt-green f15">[남이천 IC에서 나온 경우(약 30분 소요 / 22km)]</strong><br>
                  남이천사거리에서 ‘일죽,호법’ 방면으로 우회전 → 두미교차로에서 ‘안성＇방면으로 좌회전 <br>
                  → 6km 직진 → 은석사거리에서 ‘용인, 백암’ 방면으로 우회전 → 5km 직진하여 백봉교차로 ‘죽양대로” 방변으로 우회전 →8.5km 직진 →원삼사거리에서 ‘사암리’ 방향으로 좌회전 → 1.4km직진 후 → ‘라미르커피’ 삼거리에서 ‘SK아카데미’ 방향으로 우회전 → 50m 진행 후 → ‘레이크랜드 부동산’에서 ‘SK아카데미’ 방향으로 우회전 → 약100m 전진 → 학원 도착

                </td>
              </tr>
          </tbody>
        </table>
      </div>
      <!-- //location-wrap -->

    </div>
    <!-- //content-wrap -->

  </div>
  <!-- yg-main-wrap -->

	<!--  공통 푸터 //-->
	<!--#include virtual="/russel/library/include/common/russel_yj/footer.asp" -->
  <!--  // 공통 푸터-->
  
</body>
</html>
