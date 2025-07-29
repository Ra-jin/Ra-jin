<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!-- #include virtual="/russel/library/include/mypage/my_campus_ams_common.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
    <link href="/common/css/2024/danka.css" rel="stylesheet" type="text/css">
    <script LANGUAGE="JavaScript" src="/russel/Public/Basic.js"></script>
    <style>
        .chuseok .campus-list-danka {background:#F7F7F7;}
        .chuseok .campus-list-danka .campus-list dl dt, .chuseok .campus-list-danka .campus-list dl dd a {color: #454CF4}
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
                    <!-- 수능 실전 모의체험 배너 -->
                    <!--include virtual="/danka/2023/banner_csat.asp" -->
                    <!-- //수능 실전 모의체험 배너 -->
                    <!-- danka -->
                    <div class="danka chuseok">
                        <!-- visual -->
                        <div class="visual">
                            <!-- 상단입결 -->
                            <!--include virtual="/danka/2023/danka_top.asp" -->
                            <!-- //상단입결 -->

                            <div>
                                <p class="grade">고3&middot;N수</p>                           
                                <p class="tit"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/09/chuseok_tit.png"/></p>
                                <p class="stxt">
                                    추석 연휴는 실력 상승을 위한 최적의 기회,<br>
                                    <strong>러셀이 준비한 핵심 압축 강의로 빠르게 실력을 완성</strong>하세요!
                                </p>
                                <div class="v-info">
                                    <dl>
                                        <dt>개설 과목</dt>
                                        <dd class="pr40">국어, 수학, 영어, 탐구, 논술</dd>
                                    </dl>
                                    <dl>
                                        <dt>수업기간</dt>
                                        <dd>9월 14일(토) ~ 9월 18일(수)</dd>
                                    </dl>
                                    <p>※ 학원별 개설 과목과 수업 기간은 상이할 수 있습니다.</p>
                                </div>
                            </div>
                            <p class="bg"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2024/09/chuseok_visual.jpg"/></p>
                        </div>
                        <!-- //visual -->

                        <div style="position:relative;">
                            <img src="<%=Application("img_path_russel")%>/intro/danka/2024/09/chuseok_cont01.jpg" alt="" />
                            <!-- <a href="javascript:alert('추후 오픈 예정입니다.')" style="position:absolute;left:497px;bottom:367px;width:142px;height:34px;" alt="논술 파이널 특강"></a> -->
                            <a href="/intro/danka/2024/09/non.asp" style="position:absolute;left:497px;bottom:367px;width:142px;height:34px;" alt="논술 파이널 특강"></a>
                            <a href="/intro/2024/final/index.asp" style="position:absolute;left:40px;bottom:132px;width:697px;height:102px;" alt="2025 파이널 정규반"></a>
                        </div>

                        <p><img src="<%=Application("img_path_russel")%>/intro/danka/2024/09/chuseok_time_tit.jpg" alt="학원별 정규,특강 단과 시간표 안내" /></p>
                        <!-- campus-list-danka -->
                        <div class="campus-list-danka">
                            <!-- campus-list -->
                            <div class="campus-list">
                                <dl>
                                    <dt><span class="stit02">최상위권 수준별 맞춤 단과</span><br>러셀학원</dt>
                                    <dd>
                                        <p>러셀 <strong>강남</strong></p>
                                        02) 6954-1010
                                        <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1715" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대치</strong></p>
                                        02) 2138-1010
                                        <a href="https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1716" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>목동</strong></p>
                                        02) 6932-1010
                                        <a href="https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1717" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>부천</strong></p>
                                        032) 265-1010
                                        <a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1718" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>분당</strong></p>
                                        031) 629-1010
                                        <a href="https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1719" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>영통</strong></p>
                                        031) 251-1010
                                        <a href="https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1720" target="_blank">시간표 바로가기</a>
                                    </dd>                                    
                                    <dd>
                                        <p>러셀 <strong>중계</strong></p>
                                        02) 6316-1010
                                        <a href="https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1721" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>평촌</strong></p>
                                        031) 341-6500
                                        <p class="bt" style="width:auto;">
                                            <a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1722" target="_blank">고3/N수</a>
                                            <a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1783" target="_blank">고1/고2</a>
                                        </p>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대구</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        053) 291-1010
                                        <a href="https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1723" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>센텀</strong></p>
                                        051) 715-1010
                                        <a href="https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1724" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>울산</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        052) 913-1010
                                        <a href="https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1725" target="_blank">시간표 바로가기</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt><span class="stit02">서연고 &middot; 의치약 전문관</span><br>러셀CORE</dt>
                                    <dd>
                                        <p>러셀CORE <strong>광주</strong></p>
                                        062) 462-1010
                                        <a href="https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1726" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>대전</strong></p>
                                        042) 381-2020
                                        <a href="https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1727" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>원주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        033) 901-2020
                                        <a href="https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1728" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>전주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        063) 905-3030
                                        <a href="https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1729" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd class="bbn">
                                        <p>러셀CORE <strong>창원</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        055) 605-1010
                                        <a href="https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1730" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>청주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        043) 908-1010
                                        <a href="https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1731" target="_blank">시간표 바로가기</a>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //campus-list -->
                        </div>
                        <!-- //campus-list-danka -->

                    </div>
                    <!-- //danka -->
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