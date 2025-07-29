
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
  <link rel="stylesheet" type="text/css" href="/russel_yj/css/table.css" />
  <link rel="stylesheet" type="text/css" href="/russel_yj/css/scholarship.css" />
</head>
<body>
  <!-- Skip Navi -->
  <!--#include virtual="/russel/library/include/common/russel_yj/skip_navi.asp" -->
  <!-- Skip Navi -->

  <!-- 공통 최상단 // -->
	<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
  <!-- // 공통 최상단 -->

  <!-- yj-main-wrap -->
  <div id="yj-sub-wrap">
    <!-- lnb -->   
	  <!--#include virtual="/russel/library/include/common/russel_yj/sub_menu.asp" -->
    <!-- //lnb -->

    <!-- content-wrap -->
    <div class="content-wrap">
      <!-- sub-tit -->
      <!--#include virtual="/russel/library/include/common/russel_yj/sub_title.asp" -->
      <!-- //sub-tit -->
      
      <div class="system-wrap">
        <div class="visual-wrap">
          <p><img src="<%=img_path_yangji%>/school/scholarship/visual_tit.png" alt=""></p>
          <p class="r-txt">* 썸머스쿨·윈터스쿨 과정 제외</p>
        </div>
        <div class="cont01 pb50">
          <div class="tbl-wrap">
            <table class="tbl-type01">
              <colgroup>
                <col style="width: 20%;">
                <col style="width: %;">
              </colgroup>
              <thead>
                <tr>
                  <th>장학 지원 내용</th>
                  <th>자격 요건</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th class="bg-skyblue f14">
                    100% 전액<br>
                    <span class="red_txt">
                      (수업료, 기숙사비,<br>식비, 단체복, <br>필수 콘텐츠비)</span>
                  </th>
                  <td class="bg-skyblue txt_left last f14">
                    &middot; 2025학년도 수능 <span class="red_txt">국수탐(2과목 평균)
                    </span> 합 4이내<br>
                    &middot; 교과 1.2이내 이면서 국수영탐(1) 상위 3개 합 6이내<br>
                    &middot; 의치한약수 재학 및 휴학생<br>
                    <p class="red_txt mt20">
                      &middot; 교재비만 본인부담<br>
                      &middot; 바른공부 자습전용관 비용은 별도로 받지 않습니다.
                    </p>
                  </td>
                </tr>
                <tr>
                  <th>수업료 100%+<br>기숙사비 50%</th>
                  <td class="txt_left last">
                    &middot; 2025학년도 수능 국수영 또는
                    국수탐(1) 합 4이내<br>
                    &middot; 교과 1.2이내
                  </td>
                </tr>
                <tr>
                  <th>수업료 100%</th>
                  <td class="txt_left last">
                    &middot; 2025학년도 수능 국수영 또는 국수탐(1) 합 5이내<br>
                    &middot; 2024학년도 수능 국수영 또는 국수탐(1) 합 4이내<br>
                    &middot; 2025학년도 9월 평가원 국수탐(탐구 2과목 평균) 합 4 이내<br>

                    &middot; 교과 1.3이내
                  </td>
                </tr>
                <tr>
                  <th>수업료 50%</th>
                  <td class="txt_left last">
                    &middot; <span class="red_txt ftw700">예년도 재원생, 재원생 형제/자매/남매</span><br>
                    &middot; 2025학년도 수능 국수탐(1) 합 6 이내 + 과탐Ⅱ 선택자<br>
                    &middot; 2025학년도 9월 평가원 국수영 또는 국수탐(탐구 1과목) 합 4 이내<br>

                    &middot; 교과 1.5이내
                  </td>
                </tr>
                <tr>
                  <th>수업료 30%</th>
                  <td class="txt_left last">&middot; 2025학년도 수능 <span class="red_txt ftw700">국수영 또는 국수탐(1) 합 6</span> 이내</td>
                </tr>
                <tr>
                  <th>수업료 20%</th>
                  <td class="txt_left last">&middot; 2025학년도 수능 국어 또는 수학 1등급 <br>
                    &middot; 2025학년도 9월 평가원 국수영 또는 국수탐(탐구 1과목) 합 5 이내


                  </td>
                </tr>
                <tr>
                  <th class="bg-skyblue f14">충족 요건</th>
                  <td class="bg-skyblue last txt_left f14">내신 장학 대상자 : 2025학년도 수능 국수영탐(1과목) 중 상위 3개 영역 합 8등급 이내</td>
                </tr>
              </tbody>
            </table>
          </div>
          <ul class="list-05">
            <li>** 장학 대상자는 입학 후 모의고사에서 동일한 성적을 유지해야 합니다. (2회 미 달성 시, 장학혜택 제외)
             
            </li>
            <li>** 장학 중복 시 상위 장학으로 적용됩니다.</li>
            <li>** 본 장학은 N수정규반 / 반수반 과정에 적용됩니다.</li>
            <li>** 기숙사비 장학혜택은 3인실 기준이며, 2인실 혹은 1인실 선택 시 15만원(2인실), 45만원(1인실)의 별도 비용이 발생합니다.
            </li>
          </ul>
          <p class="txt-center mt40 pb40"><img src="<%=img_path_yangji%>/school/scholarship/cont02_tit.png" alt=""></p>
          <div class="tbl-wrap">
            <table class="tbl-type01">
              <colgroup>
                <col style="width: 20%;">
                <col style="width: auto;">
                <col style="width: auto;">
              </colgroup>
              <thead>
                <tr>
                  <th>구분</th>
                  <th>자격요건</th>
                  <th>장학지원</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th rowspan="5">
                    2026학년도 <br>
                    6월 평가원
                  </th>
                  <td>국수탐(1) 백분위 합 : 295-300</td>                  
                  <td class="last bg-skyblue f14">100% 전액지원 <br><span class="sb-txt">(수업료,기숙사비,식비,<br>필수 콘텐츠비)</span></td>
                </tr>
                <tr>
                  <td>국수탐(1) 백분위 합 : 293-294</td>
                  <td class="last bg-skyblue f14">수업료100%+기숙사비50%지원</td>
                </tr>
                <tr>
                  <td>국수탐(1) 백분위 합 : 290-292</td>
                  <td class="last bg-skyblue f14">수업료 100% 지원</td>
                </tr>
                <tr>
                  <td>국수탐(1) 백분위 합 : 285-289</td>
                  <td class="last bg-skyblue f14">수업료 50% 지원</td>
                </tr>
                <tr>
                  <td>국수탐(1) 백분위 합 : 278-284</td>
                  <td class="last bg-skyblue f14">수업료 30% 지원</td>
                </tr>
                <tr>
                  <th rowspan="5">
                    필수 공통사항
                  </th>
                  <td>영어 2등급 미만 시, 등급당 백분위 3점씩 감점적용</td>                  
                  <td class="last bg-skyblue f14" rowspan="5">7월 1일 <br>6평 성적 발표 후<br>수능까지 3개월 수강료 적용<br>(8/15~11/13)</td>
                </tr>
                <tr>
                  <td>기숙사는 3인실 기준 적용 <br><span class="sb-txt">(2인실,1인실 선택 시 별도비용발생)</span></td>             
                </tr>
                <tr>
                  <td>교재비,피복비,콘텐츠 비용은 별도 <br><span class="sb-txt">(전액지원 장학은 전부무료, 교재비만 부담)</span></td>
                </tr>
                <tr>
                  <td>입학장학과 중복될 경우, 가장 유리한 장학규정으로<br> 1개만 적용</td>
                </tr>
                <tr>
                  <td>7월 5일까지 본원 입학자에 한해 적용함</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>

        <div class="cont03">
          <p><img src="<%=img_path_yangji%>/school/scholarship/btm_tit.jpg" alt=""></p>
          <div class="result-wrap">
            <ul>
              <li class="tit">전체 1등</li>
              <li class="txt">수업료 100% 지원</li>
            </ul>
            <ul>
              <li class="tit">전체 2등</li>
              <li class="txt">수업료 50% 지원</li>
            </ul>
            <ul>
              <li class="tit">전체 3등 / 각 반 1등</li>
              <li class="txt">수업료 20% 지원</li>
            </ul>
          </div>
          <ul class="list-02">
            <li>장학 종류별 대상 중복 시 상위 장학으로 적용됩니다.</li>
            <li>입학성적 장학 대상자는 모의고사에서 동일한 성적을 유지하셔야 합니다. (2회 미 달성 시 장학지원 혜택 제외)</li>
            <li>본 장학은 우선선발반/재수정규반/반수반 과정에 적용됩니다.</li>
          </ul>

        </div>


      </div>
      
  </div>
  <!-- //content-wrap -->
  </div>
  <!-- yj-main-wrap -->

	<!--  공통 푸터 //-->
	<!--#include virtual="/russel/library/include/common/russel_yj/footer.asp" -->
  <!--  // 공통 푸터-->
  
</body>
</html>
