<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!--  include virtual="/russel/library/include/mypage/my_campus_ams_common.asp"-->
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
      
      <!-- info-russel -->
      <div class="info-russel hs">
        <p><img src="<%=Application("img_path_russel")%>/intro/info/info_campus_bg.jpg" alt="" /></p>
        <div class="txt-box">
          <p><img src="<%=Application("img_path_russel")%>/intro/info/info_txt01.png" alt="" /></p>
          <p><img src="<%=Application("img_path_russel")%>/intro/info/info_campus_txt01.png" alt="" /></p>
        </div>
        <div class="info-txt" style="padding:70px 70px 215px;">
          <p class="txt bold mb20">최상위권 전문관 러셀 기숙학원은<br>
            ‘학생 중심’으로 운영됩니다.
           </p>

          <P class="txt mb20">
            이것은 수능을 준비하는 우리 학생들에게<br>
            단단한 버팀목이 되고자 하는 교직원의 마음과 같습니다.<br>
          </P>

          <p class="txt">
            이에 최상위권 전문관 러셀 기숙학원은<br>
            학원의 모든 수업·관리·운영·결정에서 <br>
            “학생 중심” 사고 방식으로 <br>
            학생과 적극적으로 소통하는 <br>
            선생님, 직원, 원장이 되겠습니다.
            
          </p>
          <div class="name" style="right:45px;">
            <div class="name-list">
              <p style="padding: 0 !important;margin-bottom:26px;"><strong>최상위권 전문관 러셀 기숙학원</strong></p>
              <dl>
                <dt>[학생&middot;담임 소통] </dt>
                <dd>원장 최명호 올림</dd>
              </dl>
              <dl class="mb0">
                <dt>[콘텐츠&middot;강사 소통]</dt>
                <dd>원장 송윤호 올림</dd>
              </dl>
              <a href="javascript:void(0)" class="mt15" onclick="window.open('./intro_pop.asp','','width=550,height=430,scrollbars=yes,top=100,left=300')">약력보기  ></a>
            </div>
            <p style="padding: 0 68px 70px 0;"></p>
            <p><img src="<%=Application("img_path_russel")%>/intro/info/img_hs.png" alt="" /></p>
            
          </div>

        </div>
      </div>
      <!-- //info-russel -->

    </div>
    <!-- //content-wrap -->

  </div>
  <!-- yg-main-wrap -->

	<!--  공통 푸터 //-->
	<!--#include virtual="/russel/library/include/common/russel_yj/footer.asp" -->
  <!--  // 공통 푸터-->
  
</body>
</html>
