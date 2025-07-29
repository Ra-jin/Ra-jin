<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!-- #include virtual="/russel/library/include/mypage/my_campus_ams_common.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
    <SCRIPT LANGUAGE="JavaScript" src="/russel/Public/Basic.js"></SCRIPT>
    <link href="/common/css/2024/danka.css" rel="stylesheet" type="text/css">
    
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
                    <div class="danka intro winter-special" style="width: 777px; position: relative;text-align:center;">
                        <!-- danka-img-wrap -->
                        <div class="danka-img-wrap">
                            <!-- 상단입결 -->
                            <!--include virtual="/danka/2023/danka_top.asp" -->
                            <!-- //상단입결 -->

                            <!-- v-wrap -->
                            <div class="v-wrap">
                                <p><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/01/winter_bg.jpg"></p>
                                <p class="quick">
                                    <a href="/intro/2023/winter/index.asp"><img alt="퀵배너" src="<%=Application("img_path_russel")%>/intro/danka/2024/01/winter_quick.png"></a>
                                    <span>12월 5주 개강</span>
                                </p>

                                <p class="v-tit01"><img alt="최상위권을 향한 겨울방학 집중 완성 솔루션" src="<%=Application("img_path_russel")%>/intro/danka/2024/01/winter_tit01.png"/></p>
                                <p class="visual-top-stxt"><strong>1~2</strong>월</p>
                                <p class="grade">고3&middot;고2&middot;고1</p>
                                <p class="v-tit02"><img alt="러셀" src="<%=Application("img_path_russel")%>/intro/danka/2024/01/winter_tit02.png"/></p>
                                <p class="v-tit03"><img alt="윈터특강" src="<%=Application("img_path_russel")%>/intro/danka/2024/01/winter_tit03.png"/></p>
                                <p class="v-lighting"><img alt="빛나는 효과" src="<%=Application("img_path_russel")%>/intro/danka/2024/01/winter_lighting.png"/></p>
                                <p class="visual-btm-stxt">겨울방학은 취약과목 실력 향상을 위한 최적의 기간<br><strong>윈터특강을 통한 집중학습으로 흔들림 없는 최상위권으로 도약</strong>하세요!</p>
                                <div class="vis-info">
                                    <div class="left-con">
                                        <p>개강일</p>
                                        <p><strong>12월 5주</strong> 순차 개강</p>
                                    </div>
                                    <div class="right-con">
                                        <p>접수</p>
                                        <p>현장 또는 온라인 접수</p>
                                    </div>
                                </div>
                            </div>
                            <!-- //v-wrap -->

                            <!--cont01-->
                            <p><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/01/winter_cont01.jpg"></p>
                            <p class="cont01-txt">
                                윈터스쿨을 등록하지 않아도 윈터특강을 수강할 수 있습니다. <br>
                                윈터특강 종료 후, 정규 단과 및 내신 대비 강좌로 연계하여 수강할 수 있습니다.
                            </p>
                            <!--//cont01-->
                            
                            <!--띠배너-->
                            <p><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/01/winter_banner.jpg"></p>
                            <!--//띠배너-->
                             
                            <!--학원별 시간표 안내-->
                            <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/01/winter_t_tit.jpg" alt="학원별 안내"></p>
                            <div class="campus-list-danka">
                                <!-- campus-list -->
                                <div class="campus-list">
                                    <dl>
                                        <dt><span class="stit02">최상위권 수준별 맞춤 단과</span><br>러셀학원</dt>
                                        <dd>
                                            <p>러셀 <strong>강남</strong></p>
                                            02) 6954-1010
                                            <p class="bt" style="width: auto; padding: 0 8px;">
                                                <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1454" target="_blank">고1&middot;고2</a>
                                                <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1453" target="_blank">고3&middot;N수</a>
                                            </p>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>대치</strong></p>
                                            02) 2138-1010
                                            <a href="https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1455" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>목동</strong></p>
                                            02) 6932-1010
                                            <p class="bt" style="width: auto; padding: 0 8px;">
                                                <a href="https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1457" target="_blank">고1&middot;고2</a>
                                                <a href="https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1456" target="_blank">고3</a>
                                            </p>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>부천</strong></p>
                                            032) 265-1010
                                            <a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=286" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>분당</strong></p>
                                            031) 629-1010
                                            <a href="https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1458" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>영통</strong></p>
                                            031) 251-1010
                                            <a href="https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=287" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>중계</strong></p>
                                            02) 6316-1010
                                            <a href="https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1459" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>평촌</strong></p>
                                            031) 341-6500
                                            <a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=288" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>대구</strong><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m ico-new" /></p>
                                            053) 291-1010
                                            <a href="https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1460" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>센텀</strong></p>
                                            051) 715-1010
                                            <p class="bt" style="width: auto; padding: 0 8px;">
                                                <a href="https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1516" target="_blank">고1&middot;고2</a>
                                                <a href="https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1461" target="_blank">고3</a>
                                            </p>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>울산</strong><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m ico-new" /></p>
                                            052) 913-1010
                                            <a href="https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1511" target="_blank">시간표 바로가기</a>
                                        </dd>
                                    </dl>
                                    <dl>
                                        <dt><span class="stit02">서연고 &middot; 의치약 전문관</span><br>러셀CORE</dt>
                                        <dd>
                                            <p>러셀CORE <strong>광주</strong></p>
                                            062) 462-1010
                                            <a href="https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1462" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀CORE <strong>대전</strong></p>
                                            042) 381-2020
                                            <a href="https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1463" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀CORE <strong>원주</strong><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m ico-new" /></p>
                                            033) 901-2020
                                            <a href="https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1464" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀CORE <strong>전주</strong><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m ico-new" /></p>
                                            063) 905-3030
                                            <a href="https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1465" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀CORE <strong>창원</strong><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m ico-new" /></p>
                                            055) 605-1010
                                            <a href="https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1466" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀CORE <strong>청주</strong><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m ico-new" /></p>
                                            043) 908-1010
                                            <a href="https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1467" target="_blank">시간표 바로가기</a>
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
</body>
</html>

