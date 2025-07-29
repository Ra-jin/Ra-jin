
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

      <!-- btn-wrap -->
      <div class="btn-wrap js-tab tab-supply">
        <a href="#" class="js-bt-none on">우선선발반/정규반</a>
        <a href="#tab2" class="js-bt-none">윈터스쿨/썸머스쿨</a>
      </div>
      <!-- //btn-wrap -->

      <!-- 선행/정규반 -->
      <div class="tab-cont js-tab-cont on">
        <h4 class="s-tit">입학절차</h4>
        <table class="tbl-type01 tbl-type-plr5">
          <colgroup>
            <col style="width:20%;" />
            <col style="width:20%;" />
            <col style="width:20%;" />
            <col style="width:20%;" />
            <col style="width:20%;" />
          </colgroup>
          <thead>
            <tr>
              <th>1단계</th>
              <th>2단계</th>
              <th>3단계</th>
              <th>4단계</th>
              <th>5단계</th>
            </tr>
            <tr class="step">
              <th>입학상담 및<br>원서접수</th>
              <th>전형 확인 및<br>합격통보</th>
              <th>예약금 납부</th>
              <th>입학 안내전화 및<br>잔금납부</th>
              <th>입학</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td class="b-r">
                <ul class="dot-list">
                  <li>방문/전화/온라인 상담</li>
                  <li>홈페이지 회원가입 및<br>원서접수</li>
                </ul>
              </td>
              <td class="b-r">
                <ul class="dot-list">
                  <li>전형별 자격조건 확인</li>
                  <li>학원규칙 준수 여부<br>확인</li>
                </ul>
              </td>
              <td class="b-r">
                <ul class="dot-list">
                  <li>가상계좌 발송<br>(카카오톡, 문자)</li>
                  <li>예약금 미납 시 합격<br>취소</li>
                </ul>
              </td>
              <td class="b-r">
                <ul class="dot-list">
                  <li>입소 2주 전 입학<br>안내전화 진행</li>
                  <li>잔금 납부</li>
                </ul>
              </td>
              <td>
                <ul class="dot-list">
                  <li>제출서류 준비 및<br>입학준비물 점검</li>
                  <li>개강일, 입소시간 준수</li>
                </ul>
              </td>
            </tr>
          </tbody>
        </table>

        <h4 class="s-tit">제출서류 및 학원 지급품목</h4>
        <table class="tbl-type01">
          <colgroup>
            <col style="width:20%;" />
            <col style="width:20%;" />
            <col style="width:60%;" />
          </colgroup>
          <thead>
            <tr>
              <th>1단계</th>
              <th>2단계</th>
              <th>3단계</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th class="b-r">제출서류</th>
              <th>필수</th>
              <td>
                <ul class="dot-list f14">
                  <li>입학원서(학원 준비)</li>
                  <li>2025학년도 수능 성적증명서</li>
                  <li>2025학년도 6월, 9월 평가원 성적표</li>
                  <li>학교생활기록부II</li>
                  <li>결핵검진확인서(병원/보건소 발급)</li>
                  <li>공동인증서(구 공인인증서)(증명서 발급용-USB저장) or 체크/신용카드</li>
                </ul>
              </td>
            </tr>
            <tr>
              <th colspan="2">학원지급품목</th>
              <td>
                <ul class="dot-list f14">
                  <li>학원 단체복, 침구류(베개, 이불, 침대패드), 화장지<br>※ 개인 침구류는 사용할 수 없습니다.</li>
                  <li>정규 수업교재, 영단어장, 학습플래너, 수학30제 </li>
                </ul>
              </td>
            </tr>
          </tbody>
        </table>
        <h4 class="s-tit">입학 준비물</h4>
        <table class="tbl-type01">
          <colgroup>
            <col style="width:22%;" />
            <col style="width:*;" />
          </colgroup>
          <tbody>
            <tr>
              <th>학습도구</th>
              <td>
                <ul class="dot-list f14">
                  <li>국어, 영어 사전류(학습용 전자사전 가능), 개인 참고서(교과서, 문제집, 개념서 등)</li>
                  <li>필기도구(연필, 각종 펜), 노트, 연습장, 독서대</li>
                  <li>태블릿PC 인강 수강용 유무선 이어폰(3.5mm 헤드폰 단자), C-TYPE 충전기</li>
                </ul>
              </td>
            </tr>
            <tr>
              <th>세면도구</th>
              <td>
                <ul class="dot-list f14">
                  <li>비누, 칫솔, 치약, 샴푸, 면도기, 타월 5~6개, 개인 샤워용품, 목욕바구니 등</li>
                  </ul>
              </td>
            </tr>
            <tr>
              <th>생활용품</th>
              <td>
                <ul class="dot-list f14">
                  <li>물 컵 or 텀블러, 방석, 슬리퍼 2SET(강의실용, 숙소용 → ex. 삼선 슬리퍼)</li>
                  <li>생활기간 동안 사용할 충분한 수량의 마스크 (KF80, KF94 한달분)</li>
                  <li>안경, 상비약(감기약, 진통제, 두통약, 붙이는 파스) 및 현재 복용 중인 약</li>
                </ul>
              </td>
            </tr>
            <tr>
              <th>의류 및 운동화</th>
              <td>
                <ul class="dot-list f14">
                  <li>속옷 및 양말(6~7벌), 티셔츠, 두터운 겉옷, 여벌 트레이닝복, 운동화 등</li>
                  <li>세탁방법: 주 2회 무료로 세탁과 건조가 진행됩니다. (별도로 세탁을 위한 세제 등을 준비하지 않아도 됩니다.)</li>
                  <li>세탁과 건조 과정 중에서 수축 및 탈색 가능성이 있으므로 ‘로얄 클리닝 의류’, ‘특수 클리닝 의류’는 세탁이 불가합니다.</li>
                </ul>
              </td>
            </tr>
            <tr>
              <th>기타</th>
              <td>
                <ul class="dot-list f14">
                  <li>개인 복용 약, 스탑워치(초시계), 체크카드(매점 및 외진 시 이용)</li>
                  <li>교실 및 숙소 복도에 한약 등을 보관할 수 있는 냉장고가 설치되어 있습니다.</li>
                  <li>현금 입출금이 가능한 기업은행 ATM기가 설치되어 있습니다.</li>
                  <li>탁구, 배드민턴, 줄넘기 관련 운동 용품은 개별(선택)적으로 준비해 주시기 바랍니다.</li>
                </ul>
              </td>
            </tr>
            <tr>
              <th>금지물품</th>
              <td class="f14">
                <ul class="dot-list f14">
                  <li>휴대폰, PMP, 액세서리, 색조화장품, 왁스나 젤, 고가의 화장품 등</li>
                  <li>순수 학습용이 아닌 전자사전, MP3등(단, 학습용 전자사전은 가능)</li>
                  <li>귀걸이, 팔찌, 반지, 피어싱 등 악세사리</li>
                  <li>잡지, 만화, 소설 등 학습참고서 이외의 단행본</li>
                  <li>음식물(라면, 컵라면, 컵밥, 떡볶이, 껌 등), 전자레인지 관련 음식물(냉동만두, 냉동피자 등), 과자류 및 빵(파이)류</li>
                </ul>
                ※ 위 금지물품 적발 시에는 학원규칙에 의해 근신 또는 제적 조치 합니다.<br>
                &nbsp; &nbsp;→ 단, 개인사정으로 금지물품 소지 후 입소 시 담임선생님이 보관 후<br> &nbsp; &nbsp;&nbsp; &nbsp; 정기외출 시 불출합니다.<br>
                ※ 러셀 기숙은 금연 학원입니다.  흡연 적발 시 즉시 퇴원 조치 <br>
                ※ 전열기구 : 헤어 드라이기, 고데기, 전기장판 등 화재 위험성이 있는 일체의 전열기구
              </td>
            </tr>
            <tr>
              <th>두발규정</th>
              <td>
                <ul class="f14">
                  <li>※ 염색금지(염색하고 학원으로 올 경우, 외부에서 검은색으로 염색 하기 전까지 입학 불가능)</li>
                </ul>
              </td>
            </tr>
          </tbody>
        </table>
        <ul class="list-02 ml0">
          <li>학생들이 학원 입학 후 택배로 물건을 주문하는 일이 많습니다.<br>
            상기 입학준비물 외에도 개인 체크리스트를 준비하여 꼼꼼하게 준비하시기 바랍니다.</li>
          <li>필기구 및 생활용품은 매점에서 구입 가능합니다.</li>
          <li>금지 물품은 택배가 불가하며, 방문 전달도 불가합니다.</li>
          <li>휴대폰의 경우, 담임 선생님에게 제출한 후 외출 시 지급 받습니다.</li>
          <li>위 금지 물품 적발 시에는 학원 규칙에 의해 근신 또는 제적 처리 합니다.</li>
          <li>면학분위기와 쾌적한 환경조성을 위해 협조해 주시기 바랍니다.</li>
        </ul>
      </div>
      <!-- //선행/정규반 -->

      <!-- 윈터스쿨 -->
      <div class="tab-cont js-tab-cont">
        <h4 class="s-tit">입학절차</h4>
        <table class="tbl-type01 tbl-type-plr5">
          <colgroup>
            <col style="width:20%;" />
            <col style="width:20%;" />
            <col style="width:20%;" />
            <col style="width:20%;" />
            <col style="width:20%;" />
          </colgroup>
          <thead>
            <tr>
              <th>1단계</th>
              <th>2단계</th>
              <th>3단계</th>
              <th>4단계</th>
              <th>5단계</th>
            </tr>
            <tr class="step">
              <th>입학상담 및<br>원서접수</th>
              <th>전형 확인 및<br>합격통보</th>
              <th>예약금 납부</th>
              <th>입학 안내전화 및<br>잔금납부</th>
              <th>입학</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td class="b-r-n txt-left">
                <ul class="dot-list">
                  <li>방문/전화/온라인 상담</li>
                  <li>홈페이지 회원가입 및 원서접수</li>
                </ul>
              </td>
              <td class="b-r-n txt-left">
                <ul class="dot-list">
                  <li>전형에 따른 자격조건 <br>확인</li>
                  <li>학원규칙 준수 여부 <br>확인</li>
                </ul>
              </td>
              <td class="b-r-n txt-left">
                <ul class="dot-list">
                  <li>가상계좌 발송<br> (카카오톡, 문자)</li>
                  <li>예약금 미납 시 합격 <br>취소</li>
                </ul>
              </td>
              <td class="b-r-n txt-left">
                <ul class="dot-list">
                  <li>입학 1주일 전</li>
                  <li>입학 안내전화 진행</li>
                  <li>잔금 납부</li>
                </ul>
              </td>
              <td class="b-r-n txt-left">
                <ul class="dot-list">
                  <li>제출서류 준비 및<br>입학준비물 점검</li>
                  <li>개강일과 입소시간 <br>준수</li>
                </ul>
              </td>
            </tr>
          </tbody>
        </table>

        <h4 class="s-tit">입학준비물</h4>
        <table class="tbl-type01">
          <colgroup>
            <col style="width:22%;" />
            <col style="width:auto" />
          </colgroup>
          <tbody>
            <tr>
              <th>필수</th>
              <td>
                <p class="pl10">입학시 제출 서류</p>
                <ul class="dot-list f14">
                  <li>결핵 검진 확인서(병원 / 보건소 흉부 X선 검사 후 발급)</li>
                  <li>개인 침구류(베개, 이불, 매트리스 커버, 침대패드) 등<br>
                    ※ 침구류는 학원에서 지급 또는 대여 되지 않습니다</li>
                </ul>
              </td>
            </tr>
            <tr>
              <th>학습도구</th>
              <td>
                <ul class="dot-list f14">
                  <li>국어, 영어 사전류(학습용 전자사전 가능), 개인 참고서(교과서, 문제집 등)</li>
                  <li>필기도구(연필, 볼펜 등), 노트, 연습장</li>
                  <li>태블릿PC 인강 수강용 유무선 이어폰(3.5mm 헤드폰 단자)</li>
                </ul>
              </td>
            </tr>
            <tr>
              <th>세면도구</th>
              <td>
                <ul class="dot-list f14">
                  <li>비누, 칫솔, 치약, 샴푸, 개인 샤워 용품, 목욕 바구니, 세신용 타월, 여분의 수건 (샤워 후 물기 제거용) 등</li>
                  </ul>
              </td>
            </tr>
            <tr>
              <th>생활용품</th>
              <td>
                <ul class="dot-list f14">
                  <li>물 컵(텀블러), 방석, 화장지, 슬리퍼 2SET(교실용, 숙소 화장실용), 헬스장용 운동화</li>
                  <li>안경, 상비약(감기약, 진통제, 두통약, 붙이는 파스) 및 현재 복용 중인 약</li>
                  <li>마스크 1개월치 수량 준비(원내에서 착용 권장), 코로나19 검사용 자가 진단키트</li>
                </ul>
              </td>
            </tr>
            <tr>
              <th rowspan="2">의류</th>
              <td>
                <ul class="dot-list f14">
                  <li>속옷 및 양말(5~6벌), T-셔츠(여러벌), 두터운 겉옷, 여벌 츄리닝 등</li>
                </ul>
              </td>
            </tr>
            <tr>
              <td>
                <ul class="dot-list f14">
                  <li class="red_txt">세탁방법: 주 2회 무료로 세탁과 건조가 진행됩니다.<br>(별도로 세탁을 위한 세제 등을 준비하지 않아도 됩니다.)</li>
                  <li class="red_txt">세탁과 건조 과정 중에서 수축 및 탈색 가능성이 있으므로 ‘로얄 클리닝 의류’, ‘특수 클리닝 의류’는 세탁이 불가합니다.</li>
                </ul>
              </td>
            </tr>
            <tr>
              <th>기타</th>
              <td>
                <ul class="dot-list f14">
                  <li>개인 복용 약, 스탑워치(초시계), 체크카드(매점 및 외진 시 이용)</li>
                  <li>교실 및 숙소 복도에 한약 등을 보관할 수 있는 냉장고가 설치되어 있습니다.</li>
                  <li>현금 입출금이 가능한 기업은행 ATM기가 설치되어 있습니다.</li>
                  <li>탁구, 배드민턴, 줄넘기 관련 운동 용품은 개별(선택)적으로 준비해 주시기 바랍니다.</li>
                </ul>
              </td>
            </tr>
          </tbody>
        </table>
        <ul class="list-02 mt10 ml0">
          <li>학생들이 학원 입학 후 택배로 물건을 주문하는 일이 많습니다.<br>
            상기 입학준비물 외에도 개인 체크리스트를 준비하여 꼼꼼하게 준비하시기 바랍니다.</li>
          <li>필기구 및 생활용품은 매점에서 구입 가능합니다.</li>
        </ul>

        <h4 class="s-tit">금지물품</h4>
        <table class="tbl-type01">
          <colgroup>
            <col style="width:22%;" />
            <col style="width:auto" />
          </colgroup>
          <tbody>
            <tr>
              <th>전자기기 관련</th>
              <td>휴대폰, MP3, PMP, 개인 태블릿, 전자사전(사전기능만 있는 것은 가능)</td>
            </tr>
            <tr>
              <th>개인 물품 관련</th>
              <td>담배(전자담배 포함), 술, 잡지(소설, 만화 등), 가위, 칼 종류(커터칼 포함) 등</td>
            </tr>
            <tr>
              <th rowspan="2">미용 관련</th>
              <td>액세서리, 색조화장품, 왁스나 젤, 고가 화장품 및 의류 등</td>
            </tr>
            <tr>
              <td>헤어드라이기(숙소 비치), 고데기, 전기장판 등 cf) 몰입학습관 휴대용 가습기는 가능(용량 DC5V 5W 이하)</td>
            </tr>
            <tr>
              <th rowspan="2">음식물 관련</th>
              <td>음식물(라면, 컵라면, 컵밥, 떡볶이, 껌 등), 전자레인지 관련 음식물(냉동만두, 냉동피자 등) 등</td>
            </tr>
            <tr>
              <td>과자류 및 빵(파이)류</td>
            </tr>
          </tbody>
        </table>
        <ul class="list-02 mt10 ml0">
          <li>금지 물품은 택배가 불가하며, 방문 전달도 불가합니다.</li>
          <li>면학분위기와 쾌적한 환경조성을 위해 협조해 주시기 바랍니다.</li>
          <li>휴대폰의 경우, 담임 선생님에게 제출한 후 외출 시 지급 받습니다.</li>
          <li>위 금지 물품 적발 시에는 학원 규칙에 의해 근신 또는 제적 처리 합니다.</li>
          <li>우리 학원은 <span class="txt-blue">금연 학원</span>입니다. 흡연하는 학생은 입학을 불허합니다.</li>
        </ul>
      </div>

      <!-- //윈터스쿨 -->

    </div>
    <!-- //content-wrap -->

  </div>
  <!-- yg-main-wrap -->

	<!--  공통 푸터 //-->
	<!--#include virtual="/russel/library/include/common/russel_yj/footer.asp" -->
  <!--  // 공통 푸터-->
    <script>
        $(document).ready(function(){
            load_hash();
        });

        function load_hash(){
          var lo_h = window.location.hash;
          if(lo_h == "#tab2"){
              $(".js-tab a:nth-child(1)").removeClass("on");
              $(".js-tab a:nth-child(2)").addClass("on");
              $(".js-tab-cont").eq(0).removeClass("on");
              $(".js-tab-cont").eq(1).addClass("on");
          }
          if(lo_h == "#tab1"){
              $(".js-tab a:nth-child(2)").removeClass("on");
              $(".js-tab a:nth-child(1)").addClass("on");
              $(".js-tab-cont").eq(1).removeClass("on");
              $(".js-tab-cont").eq(0).addClass("on");
          }
        }
        
    </script>
</body>
</html>
