<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!-- #include virtual="/russel/library/include/mypage/my_campus_ams_common.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
    <SCRIPT LANGUAGE="JavaScript" src="/russel/Public/Basic.js"></SCRIPT>
    <link href="/common/css/2025/danka.css?ver2" rel="stylesheet" type="text/css">
</head>

<body>

    <div class="normal_wrap">
        <!-- 공통 최상단 -->
        <!--#include virtual="/russel/library/include/common/russel/top.asp" -->
        <!-- // 공통 최상단 -->
    
        <div class="normal_contents_box">
            <div class="normal_sub_right">
                <!-- 공통 sub_menu 시작-->
                <!--#include virtual="/russel/library/include/common/russel/sub00_menu.asp" -->
                <!-- 공통 sub_menu 끝-->
    
                <!--sub 내용 -->
                <div class="normal_sub_con">
                    <!-- title -->
                    <div class="noraml_sub_header g_my_42_h">
                        <div class="normal_sub_depth">
                            <a class="depth_home"><img src="<%=Application("img_path")%>/library/russel/common/ic_home.gif" alt=""></a>
                            <a class="normal_sub_depth"><%=arr_kind_top(left_menu_code)%></a>
                            <% if depth1_title <> "" then %>
                                <%if depth2_title = "" then%><a class="normal_sub_depth_curr"><%else%><a class="normal_sub_depth"><%end if%><%=depth1_title%></a>
                            <% end if %>
                            <% if depth2_title <> "" then %>
                                <a class="normal_sub_depth_curr"><%=depth2_title%></a>
                            <% end if %>
                        </div>
                        <h2><%if depth2_title = "" then%><%=depth1_title%><%else%><%=depth2_title%><%end if%></h2>
                    </div>
                    <!-- //title -->

                    <!-- 수능 실전 모의체험 배너 -->
                    <!--include virtual="/danka/2023/banner_csat.asp" -->
                    <!-- //수능 실전 모의체험 배너 -->

                    <!-- 콘텐츠 시작 -->
                    <div class="danka intro non" style="width: 777px; position: relative;text-align:center;">
                        <!-- danka-img-wrap -->
                        <div class="danka-img-wrap">
                            <!-- 상단입결 -->
                            <!--include virtual="/danka/2022/danka_top.asp" -->
                            <!-- //상단입결 -->

                            <!-- v-wrap -->
                            <div class="v-wrap">
                                <p class="visual-top-txt">2026 대입, 한 방으로 판을 바꿔라!</p>
                                <p class="label">
                                    <span>고3&middot;N수</span>
                                </p>
                                <div class="visual-tit">
                                    <div><img alt="대학별 논술 파이널 특강" src="<%=Application("img_path_russel")%>/intro/danka/2025/07/non/non_vtit.png"></div>
                                </div>
                                <p class="visual-stxt">
                                    더 높은 대학으로 향하는 <br>
                                    러셀 논술 전문가의 단기 집중 맞춤 특강
                                </p>
                                <div class="visual-obj">                                  
                                    <div class="obj-target">
                                        <img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/07/non/v_obj_target.png">
                                    </div>    
                                    <div class="obj-bullet-bar">
                                        <img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/07/non/v_obj_bullet_bar.png">
                                    </div>
                                    <div class="obj-bullet">
                                        <img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/07/non/v_obj_bullet.png">
                                    </div>
                                    <div class="obj-shadow">
                                        <img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/07/non/v_obj_shadow.png">
                                    </div>
                                </div>
                                <div class="vis-info">
                                    <dl>
                                        <dt>개강</dt>
                                        <dd>
                                            &middot; 수능 이전 : 9월부터 순차 개강<br>
                                            &middot; 수능 이후 : 11/14(금)부터 순차 개강
                                            <span>* 자세한 일정은 학원별 페이지 참조</span>
                                        </dd>
                                    </dl>
                                    <dl>
                                        <dt>접수 기간</dt>
                                        <dd>학원별 시간표 참조</dd>
                                    </dl>
                                </div>
                            </div>
                            <!-- //v-wrap -->
                            <div class="cont01">
                                <p class="title">
                                    2026 대입 논술전형 선발 증가로<br> 
                                    <strong class="deep-gray">더 많아진 목표 대학 합격의 기회</strong>
                                </p>
                                <div class="inner">
                                    <div class="swiper-container non-slide">
                                        <div class="swiper-wrapper">
                                            <div class="swiper-slide">
                                                <img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/07/non/non_cont01_slide01.jpg">
                                            </div>
                                            <div class="swiper-slide">
                                                <img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/07/non/non_cont01_slide02.jpg">
                                            </div>
                                        </div>
                                        <div class="swiper-pagination"></div>
                                    </div>
                                    <div class="obj-pointer">
                                        <img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/07/non/non_cont01_obj_pointer.png">
                                    </div>
                                    <p class="s-txt tal">※ 대학별 수시 모집 요강 기준</p>
                                </div>
                            </div>
                            <div class="cont02">
                                <p class="title">
                                    논술전형 확대, 판을 바꿀 마지막 선택<br>
                                    <strong>러셀 대학별 논술 파이널 특강</strong>
                                </p>
                                <p><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/07/non/non_cont02.png"></p>
                                <p class="s-txt tar pr30">※ 운영 방식은 수업에 따라 상이할 수 있으며, 구체적인 내용은 강의계획서에 표기됩니다.</p>
                            </div>
                            <div class="cont03">
                                 <p class="title bold2">
                                    러셀 <strong>대학별 논술 파이널 특강</strong> 개설 학교
                                </p>
                                <div class="js-bt-tab">
                                    <span class="on">
                                        인문계열<br>
                                        <b>(어문, 사회, 상경계열 등 포함)</b>
                                    </span>
                                    <span>자연계열<br>
                                    <b>(공학, 의약학계열 등 포함)</b></span>
                                </div>
                                <div class="tab-cont-wrap">
                                    <div class="js-tab-cont on">
                                        <p class="t-s-tit"><span>수능 이전</span> 논술 특강 개설 학교</p>
                                        <table class="tbl-01">
                                            <colgroup>
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <td>가톨릭대</td>
                                                    <td>단국대</td>
                                                    <td>상명대<span>(서울)</span></td>
                                                    <td>서경대</td>
                                                </tr>
                                                <tr>
                                                    <td>성신여대</td>
                                                    <td>연세대</td>
                                                    <td>을지대</td>
                                                    <td>홍익대<span>(서울)</span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <p class="t-s-tit mt30"><span>수능 이후</span> 논술 특강 개설 학교</p>
                                        <table class="tbl-01">
                                            <colgroup>
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <td>가천대</td>
                                                    <td>강남대</td>
                                                    <td>건국대<span>(서울)</span></td>
                                                    <td>경기대</td>
                                                    <td>경북대</td>
                                                </tr>
                                                <tr>
                                                    <td>경희대</td>
                                                    <td>고려대<span>(서울/세종)</span></td>
                                                    <td>광운대</td>
                                                    <td>국민대</td>
                                                    <td>덕성여대</td>
                                                </tr>
                                                <tr>
                                                    <td>동국대<span>(서울)</span></td>
                                                    <td>동덕여대</td>
                                                    <td>서강대</td>
                                                    <td>서울여대</td>
                                                    <td>성균관대<span>(수리/언어)</span></td>
                                                </tr>
                                                <tr>
                                                    <td>세종대</td>
                                                    <td>숙명여대</td>
                                                    <td>수원대</td>
                                                    <td>숭실대</td>
                                                    <td>삼육대</td>
                                                </tr>
                                                <tr>
                                                    <td>아주대</td>
                                                    <td>연세대<span>(미래)</span></td>
                                                    <td>이화여대</td>
                                                    <td>인하대</td>
                                                    <td>중앙대</td>
                                                </tr>
                                                <tr>
                                                    <td>한국공학대</td>
                                                    <td>한국기술교육대</td>
                                                    <td>한국외대<br><span>(서울/글로벌)</span></td>
                                                    <td>한국항공대</td>
                                                    <td>한신대</td>
                                                </tr>
                                                <tr>
                                                    <td>한양대<span>(서울)</span></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                            </tbody>
                                        </table>                                    
                                    </div>
                                    <div class="js-tab-cont">
                                        <p class="t-s-tit"><span>수능 이전</span> 논술 특강 개설 학교</p>
                                        <table class="tbl-01">
                                            <colgroup>
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <td>가톨릭대</td>
                                                    <td>단국대</td>
                                                    <td>상명대</td>
                                                    <td>서경대</td>
                                                </tr>
                                                <tr>
                                                    <td>서울시립대</td>
                                                    <td>성신여대</td>
                                                    <td>연세대</td>
                                                    <td>을지대</td>
                                                </tr>
                                                <tr>
                                                    <td>홍익대<span>(서울)</span></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <p class="t-s-tit mt30"><span>수능 이후</span> 논술 특강 개설 학교</p>
                                        <table class="tbl-01">
                                            <colgroup>
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <td>가천대</td>
                                                    <td>가톨릭대</td>
                                                    <td>강남대</td>
                                                    <td>건국대<span>(서울)</span></td>
                                                    <td>경기대</td>
                                                </tr>
                                                <tr>
                                                    <td>경북대</td>
                                                    <td>경희대</td>
                                                    <td>고려대<span>(서울/세종)</span></td>
                                                    <td>광운대</td>
                                                    <td>국민대</td>
                                                </tr>
                                                <tr>
                                                    <td>단국대<span>(천안)</span></td>
                                                    <td>덕성여대</td>
                                                    <td>동국대<span>(서울)</span></td>
                                                    <td>동덕여대</td>
                                                    <td>서강대</td>
                                                </tr>
                                                <tr>
                                                    <td>서울과학기술대</td>
                                                    <td>서울여대</td>
                                                    <td>성균관대<span>(수리/언어)</span></td>
                                                    <td>세종대</td>
                                                    <td>숙명여대</td>
                                                </tr>
                                                <tr>
                                                    <td>수원대</td>
                                                    <td>숭실대</td>
                                                    <td>신한대</td>
                                                    <td>아주대</td>
                                                    <td>연세대<span>(미래)</span></td>
                                                </tr>
                                                <tr>
                                                    <td>이화여대</td>
                                                    <td>인하대</td>
                                                    <td>중앙대<span>(서울/다빈치)</span></td>
                                                    <td>한국기술교육대</td>
                                                    <td>한국외대<span>(서울)</span></td>
                                                </tr>
                                                <tr>
                                                    <td>한국항공대</td>
                                                    <td>한신대</td>
                                                    <td>한양대<span>(서울)</span></td>
                                                    <td>홍익대<span>(세종)</span></td>
                                                    <td></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <p class="s-txt">※ 학원마다 개설되는 학교가 상이하며, 자세한 내용은 학원별 페이지를 참고하시기 바랍니다.</p>
                                </div>
                                <div class="btn-wrap">
                                    <p class="btn-exam">대학별 논술 일정 확인하기</p>
                                </div>
                                <div class="layer-wrap">
                                    <div class="layer-inner">
                                        <div class="layer-tt">
                                            <p class="b-txt">■ 2026학년도 대학별 논술고사 시험 일정
                                            </p>
                                            <table class="tbl-01">
                                                <colgroup>
                                                    <col style="width: 10%;">
                                                    <col style="width: 13%;">
                                                    <col style="width:auto;">
                                                    <col style="width:auto;">
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th>구분</th>
                                                        <th>일자</th>
                                                        <th>
                                                            인문계열<br>
                                                            <span class="fz12">(어문, 사회, 상경계열 등 포함)</span>
                                                        </th>
                                                        <th>
                                                            자연계열<br>
                                                            <span class="fz12">(공학계열, 의약학계열 등 포함)</span>
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td rowspan="6">수능 이전</td>
                                                        <td>09/27(토)</td>
                                                        <td>연세대</td>
                                                        <td>서울시립대, 성신여대, 연세대</td>
                                                    </tr>
                                                    <tr>
                                                        <td>09/28(일)</td>
                                                        <td>가톨릭대, 서경대, 성신여대</td>
                                                        <td>가톨릭대, 서경대</td>
                                                    </tr>
                                                    <tr>
                                                        <td>10/18(토)</td>
                                                        <td>단국대(죽전), 을지대</td>
                                                        <td>을지대, 홍익대(서울)</td>
                                                    </tr>
                                                    <tr>
                                                        <td>10/19(일)</td>
                                                        <td>을지대, 홍익대(서울)</td>
                                                        <td>단국대(죽전), 을지대</td>
                                                    </tr>
                                                    <tr>
                                                        <td>10/31(금)</td>
                                                        <td>상명대(서울)</td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td>11/1(토)</td>
                                                        <td></td>
                                                        <td>상명대(서울)</td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" class="bg-yellow">11/13(목)</td>
                                                        <td colspan="2" class="bg-yellow">2026학년도 대학수학능력시험</td>
                                                    </tr>
                                                    <tr>
                                                        <td rowspan="11">수능 이후</td>
                                                        <td>11/15(토)</td>
                                                        <td>
                                                            건국대(서울), 경희대, 서울여대, 성균관대(언어), 숙명여대, 숭실대, 한국항공대
                                                        </td>
                                                        <td>
                                                            건국대(서울), 경희대, 고려대, 단국대(천안), 서강대,
                                                            서울여대, 성균관대(언어), 수원대, 숙명여대, 숭실대,
                                                            한국항공대
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>11/16(일)</td>
                                                        <td>경희대, 고려대, 동국대(서울), 서강대, 성균관대(수리), 수원대, 숙명여대</td>
                                                        <td>가톨릭대, 경희대, 단국대(천안), 동국대(서울), 성균관대(수리), 홍익대(세종)</td>
                                                    </tr>
                                                    <tr>
                                                        <td>11/17(월)</td>
                                                        <td>삼육대</td>
                                                        <td>삼육대, 서울과학기술대</td>
                                                    </tr>
                                                    <tr>
                                                        <td>11/19(수)</td>
                                                        <td>한국기술교육대</td>
                                                        <td>한국기술교육대</td>
                                                    </tr>
                                                    <tr>
                                                        <td>11/21(금)</td>
                                                        <td>경기대, 연세대(미래)</td>
                                                        <td>경기대, 연세대(미래)</td>
                                                    </tr>
                                                    <tr>
                                                        <td>11/22(토)</td>
                                                        <td>강남대, 경북대, 고려대(세종), 동덕여대, 부산대, 세종대, 이화여대, 한국외대(서울/글로벌), 한양대(서울)</td>
                                                        <td>강남대, 경북대, 고려대(세종), 광운대, 부산대, 세종대, 중앙대(서울/다빈치)</td>
                                                    </tr>
                                                    <tr>
                                                        <td>11/23(일)</td>
                                                        <td>광운대, 덕성여대, 중앙대, 한국공학대, 한국외대(서울/글로벌)</td>
                                                        <td>가천대, 덕성여대, 동덕여대, 세종대, 신한대, 이화여대, 한국외대(서울), 한양대(서울)</td>
                                                    </tr>
                                                    <tr>
                                                        <td>11/24(월)</td>
                                                        <td>가천대</td>
                                                        <td>가천대</td>
                                                    </tr>
                                                    <tr>
                                                        <td>11/25(화)</td>
                                                        <td></td>
                                                        <td>가천대</td>
                                                    </tr>
                                                    <tr>
                                                        <td>11/29(토)</td>
                                                        <td>국민대, 인하대</td>
                                                        <td>아주대</td>
                                                    </tr>
                                                    <tr>
                                                        <td>11/30(일)</td>
                                                        <td>아주대, 한신대</td>
                                                        <td>국민대, 아주대, 인하대, 한신대</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <p class="s-txt tar">※ 학교별 상황에 따라 변동될 수 있으니, 정확한 일정은 각 학교 홈페이지를 통해 확인하시기 바랍니다.</p>
                                            <p class="bt-close-tt">X</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!--학원별 시간표 안내-->
                            <p><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/07/non/non_recruit.jpg"></p>
                            <div class="campus-list-danka">
                                <!-- campus-list -->
                                <div class="campus-list">
                                    <dl>
                                        <dt><span class="stit02">최상위권 수준별 맞춤 단과</span><br>러셀학원</dt>
                                        <dd>
                                            <p>러셀 <strong>강남</strong></p>
                                            02) 6954-1010
                                            <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2104" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>대치</strong></p>
                                            02) 2138-1010
                                            <a href="https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2105" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>목동</strong></p>
                                            02) 6932-1010
                                            <a href="https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2106" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>부천</strong></p>
                                            032) 265-1010
                                            <a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2107" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>분당</strong></p>
                                            031) 629-1010
                                            <a href="https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2108" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>영통</strong></p>
                                            031) 251-1010
                                            <a href="https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2109" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>중계</strong></p>
                                            02) 6316-1010
                                            <a href="https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2110" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>평촌</strong></p>
                                            031) 341-6500
                                            <a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2111" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>대구</strong><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m ico-new" /></p>
                                            053) 291-1010
                                            <a href="https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2112" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>대전</strong><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m ico-new" /></p>
                                            042) 381-2020
                                            <a href="https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2113" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>센텀</strong></p>
                                            051) 715-1010
                                            <a href="https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2114" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>울산</strong><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m ico-new" /></p>
                                            052) 913-1010
                                            <a href="https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2115" target="_blank">시간표 바로가기</a>
                                        </dd>
                                    </dl>
                                    <dl>
                                        <dt><span class="stit02">서연고 &middot; 의치약 전문관</span><br>러셀CORE</dt>
                                        <dd>
                                            <p>러셀CORE <strong>광주</strong><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m ico-new" /></p>
                                            062) 462-1010
                                            <a href="https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2116" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀CORE <strong>원주</strong><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m ico-new" /></p>
                                            033) 901-2020
                                            <a href="https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2117" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀CORE <strong>전주</strong><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m ico-new" /></p>
                                            063) 905-3030
                                            <a href="https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2118" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀CORE <strong>창원</strong><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m ico-new" /></p>
                                            055) 605-1010
                                            <a href="https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2119" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀CORE <strong>청주</strong><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m ico-new" /></p>
                                            043) 908-1010
                                            <a href="https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2120" target="_blank">시간표 바로가기</a>
                                        </dd>
                                    </dl>
                                </div>
                                <!-- //campus-list -->
                            </div>
                            <!--//학원별 시간표 안내-->


                        </div>
                        <!-- //danka-img-wrap -->
                    </div>
                    <!-- 콘텐츠 끝 -->
                </div>
                <!-- //sub 내용 -->
            </div>
        </div>
    </div>

    <div class="normal_bottom_reout">
    <!--  공통 하단 //-->
    <!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
    <!--  // 공통 하단-->
    </div>
    <script>
        $(function(){
            nonSlide()
            popUp();
        });

        // 탭메뉴
        $('.js-bt-tab').each(function(){
            var $bt 	= $(this).children('span');
            var $cont	= $(this).parent().find('.js-tab-cont')

            $bt.first().addClass('on');
            $cont.first().addClass('on');

            $bt.on('click',function(e){
                e.preventDefault();
                var idx 	= $(this).index();
                $bt.eq(idx).addClass('on').siblings().removeClass('on');
                $cont.eq(idx).addClass('on').siblings().removeClass('on');
            })
        })

        
        // cont01 논술공지 슬라이드
        function nonSlide(){
            var sSlide = new Swiper('.non-slide',{
                loop:true,
                speed: 500,
                spaceBetween: 24,
                autoHeight: true,
                autoplay:{
                    delay: 3000,
                    disableOnInteraction: false,
		        },
                observer: true,
                observeParents: true,
                pagination: {
                    el: ".swiper-pagination",
                    clickable: true
                },
            });
        }


        //팝업처리
        function popUp(){
            $('.btn-exam').on('click',function(){
                $('.layer-tt').addClass('on')
                $('.layer-wrap').addClass('on')
            })
            $('.bt-close-tt').on('click',function(){
                $('.layer-tt').removeClass('on')
                $('.layer-wrap').removeClass('on')
            })
        }
    </script>
</body>
</html>

