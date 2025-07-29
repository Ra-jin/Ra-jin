<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!-- #include virtual="/russel/library/include/mypage/my_campus_ams_common.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
    <link href="/common/css/2024/danka.css" rel="stylesheet" type="text/css">
    <SCRIPT LANGUAGE="JavaScript" src="/russel/Public/Basic.js"></SCRIPT>
    <style>
        .danka.am .cont01 .cont-box {padding-bottom:0;}
    </style>
</head>

<body>

    <div class="normal_wrap">
        <!-- 공통 최상단 // -->
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
                    <!-- 콘텐츠 시작 -->
                    <div class="danka intro am" style="width: 777px; position: relative;text-align:center;">
                        <!-- danka-img-wrap -->
                        <div class="danka-img-wrap">
                            <!-- v-wrap -->
                            <div class="v-wrap">
                                <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/02/v_bg02.jpg" alt=""/></p>

                                <div class="clock">
                                    <div class="inner">
                                        <p class="clock-img img-m"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/02/am_minute.png" alt=""></p>
                                        <p class="clock-img img-h"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/02/am_hour.png" alt=""></p>
                                    </div>
                                </div>

                                <p class="v-tit00"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/02/v-tit01.png" alt="N수에 최적화된 수업&관리" /></p>
                                <p class="v-tit01"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/02/v-tit02.png" alt="2월"/></p>
                                <p class="v-tit02"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/02/v-tit03.png" alt="AM단과"/></p>
                                <p class="v-tit03"><img src="<%=Application("img_path_russel")%>/intro/danka/2024/02/v-tit04.png" alt="하루를 빠르게 시작하면 결과가 달라집니다."/></p>
                                <div class="v-info">
                                    <dl>
                                        <dt>개강일</dt>
                                        <dd>2월 순차적 개강</dd>
                                    </dl>
                                    <dl>
                                        <dt>접수 방법</dt>
                                        <dd>현장 또는 온라인 접수<br>
                                            <span class="comment">*자세한 내용은 학원별 페이지 참조</span>
                                        </dd>
                                    </dl>
                                </div>
                                <p class="am-bottom-txt"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/02/txt_box.png" alt="AM단과란, 오직 N수생을 위한 집중 관리형 평일 오전/오후 단과입니다."/></p>
                            </div>
                            <!-- //v-wrap -->

                            <!-- contents -->
                            <div class="cont01">
                                <p><img alt="다시 한 번 도전하는 수험생활 왜 러셀 AM단과로 시작해야 할까요?" src="<%=Application("img_path_russel")%>/intro/danka/2024/02/cont01_tit.jpg"/></p>
                                <div class="tab-cont-wrap">
                                    <div class="bt-tab">
                                        <a href=""><img alt="N수생에 최적화된 러셀 AM단과" src="<%=Application("img_path_russel")%>/intro/danka/2024/02/cont01_tab01_on.jpg"/></a>
                                        <a href=""><img alt="검증된 강의력&강력한 관리력 N수 맞춤 강사진" src="<%=Application("img_path_russel")%>/intro/danka/2024/02/cont01_tab02_off.jpg"/></a>
                                        <a href=""><img alt="충분한 자습시간 확보 학습 동선 최소화" src="<%=Application("img_path_russel")%>/intro/danka/2024/02/cont01_tab03_off.jpg"/></a>
                                    </div>
                                    <div class="cont-box on"><img alt="러셀AM단과" src="<%=Application("img_path_russel")%>/intro/danka/2024/02/cont01_tab01_img.jpg"/></div>
                                    <div class="cont-box"><img alt="N수 맞춤 강사진" src="<%=Application("img_path_russel")%>/intro/danka/2024/02/cont01_tab02_img.jpg"/></div>
                                    <div class="cont-box">
                                        <img alt="학습 동선 최소화" src="<%=Application("img_path_russel")%>/intro/danka/2024/02/cont01_tab03_img.jpg" usemap="#amBanner" />
                                        <map name="amBanner">
                                            <area shape="rect" coords="420,497,557,562" href="/intro/2024/first/index.asp">
                                            <area shape="rect" coords="567,499,705,561" href="/intro/2024/regular/index.asp" >
                                       </map>
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="cont02">
                                
                                <div><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/02/cont02_img.jpg"/></div>
                            </div>
                            
                            <p><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/02/mozip_tit.jpg"/></p>
                            <!-- campus-list-danka -->
                            <div class="campus-list-danka">
                                <!-- campus-list -->
                                <div class="campus-list">
                                    <dl>
                                        <dt><span class="stit02">최상위권 수준별 맞춤 단과</span><br>러셀학원</dt>
                                        <dd>
                                            <p>러셀 <strong>강남</strong></p>
                                            02) 6954-1010
                                            <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1535" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>대치</strong></p>
                                            02) 2138-1010
                                            <a href="https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1536" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>목동</strong></p>
                                            02) 6932-1010
                                            <a href="https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1517" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>부천</strong></p>
                                            032) 265-1010
                                            <a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1538" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>분당</strong></p>
                                            031) 629-1010
                                            <a href="https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1539" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>영통</strong></p>
                                            031) 251-1010
                                            <a href="https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1540" target="_blank">시간표 바로가기</a>
                                        </dd>                                    
                                        <dd>
                                            <p>러셀 <strong>중계</strong></p>
                                            02) 6316-1010
                                            <a href="https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1541" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>평촌</strong></p>
                                            031) 341-6500
                                            <a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1542" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>대구</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                            053) 291-1010
                                            <a href="https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1543" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>센텀</strong></p>
                                            051) 715-1010
                                            <a href="https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1544" target="_blank">시간표 바로가기</a>
                                        </dd>
                                        <dd>
                                            <p>러셀 <strong>울산</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                            052) 913-1010
                                            <a href="https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1545" target="_blank">시간표 바로가기</a>
                                        </dd>
                                    </dl>
                                    <dl>
                                        <dt><span class="stit02">서연고 &middot; 의치약 전문관</span><br>러셀CORE</dt>
                                        <dd>
                                            <p>러셀CORE <strong>대전</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                            042) 381-2020
                                            <a href="https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1546" target="_blank" >시간표 바로가기</a>
                                        </dd>
                                    </dl>
                                </div>
                                <!-- //campus-list -->
                            </div>
                            <!-- //campus-list-danka -->
                            <!-- //contents -->
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
        //AM단과 탭메뉴
        tabMenu('.bt-tab','.cont-box')
        $(".bt-tab a").on('click', function(e) {
            
            $(this).children().attr('src', function(idx, j){ return j.replace("_off.jpg","_on.jpg"); }).parent().siblings().children().attr('src', function(idx, j){ return j.replace("_on.jpg","_off.jpg"); })
        })
    </script>
</body>
</html>