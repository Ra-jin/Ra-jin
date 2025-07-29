<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!-- #include virtual="/russel/library/include/mypage/my_campus_ams_common.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
    <link href="/common/css/2025/danka.css" rel="stylesheet" type="text/css">
    <script LANGUAGE="JavaScript" src="/russel/Public/Basic.js"></script>
</head>

<style>
    .winter-special .campus-list-danka {background:#F6F6F6}
</style>
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
                    <div class="danka winter-special">

                        <!-- visual -->
                        <div class="visual">
                            <!-- 상단입결 -->
                            <!--include virtual="/danka/2023/danka_top.asp" -->
                            <!-- //상단입결 -->
                            <p class="grade-txt">고3,고2,고1</p>                            
                            <p class="month">1~2월</p>
                            <p class="tit"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/01/winter_tit.png"/></p>
                            <p class="stxt">최상위권 도약을 위한 겨울방학 실력 상승 전략<br>
                                8주 완성 특강으로 내신부터 수능까지 확실하게 대비하세요!</p>
                            <div class="v-info">
                                <dl>
                                    <dt>개강일</dt>
                                    <dd class="pr40">12월 5주 개강</dd>
                                </dl>
                                <dl>
                                    <dt>접수</dt>
                                    <dd>현장 또는 온라인 접수</dd>
                                </dl>
                            </div> 

                            <p class="v-bg"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/01/winter_visual.jpg"/></p>
                        </div>
                        <!-- //visual -->
                        
                        <!-- quick -->
                        <a class="quick" href="/intro/2024/winter/index.asp">
                            <img alt="2025 윈터스쿨" src="<%=Application("img_path_russel")%>/intro/danka/2025/01/winter_banner.jpg"/>
                            <p>12월<br>순차개강</p>
                        </a>
                        <!-- //quick -->
                        
                        <div class="w-cont01">
                            <p class="mb60"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/01/w_cont01_tit.png" alt="수능까지 흔들리지 않을 견고한 실력 완성 최상위권 선배들이 추천하는 러셀 윈터특강"></p>
                            <ul class="stu-review">
                                <li>
                                    <div class="stu-info">
                                        <p class="mb10"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/01/stu_bd01.jpg"/></p>
                                        <p>
                                            <strong>2024<br>
                                            서울대 사회학과 합격</strong><br>
                                            러셀 분당 엄지나
                                        </p>
                                    </div>
                                    <p class="txt">러셀에서는 필요한 과목이나 수준, 선호하는 수업 스타일, 스케줄에 맞춰 <strong>보장된 퀄리티의 단과 수업을 자유롭게 선택할 수 있습니다. </strong>
                                        윈터특강을 수강했는데 선생님께서 수업에 쉽게 참여하여 이해할 수 있게 해주시고 질문도 꼼꼼히 받아주셔서 개념은 물론 이를 적용한 문제풀이까지 완성할 수 있었습니다. 
                                        <strong>겨울방학에 개념을 완성한 덕분에 내신과 수능까지 수월하게 좋은 점수를 얻을 수 있었습니다.</strong></p>
                                </li>
                                <li>
                                    <div class="stu-info">
                                        <p class="mb10"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/01/stu_bd02.jpg"/></p>
                                        <p>
                                            <strong>2024<br>
                                            이화여대 약학부-약학 합격</strong><br>
                                            러셀 분당 전혜원
                                        </p>
                                    </div>
                                    <p class="txt">고3을 시작하는 <strong>겨울방학에 수능 선택과목을 기초부터 탄탄히 공부해 두어야 개학 이후 본격적인 수능 공부를 원활히 할 수 있습니다.</strong> 
                                        특히 수시를 준비한다면 학기 중에 내신과 생기부를 챙겨야 하므로 이 시기가 개념을 여유롭게 볼 수 있는 마지막 시간입니다. 
                                        윈터스쿨은 이렇게 <strong>많은 과목을 시간표에 따라 효율적으로 공부하고 자신에게 맞는 공부 패턴을 만드는 데 도움을 주었습니다.</strong></p>
                                </li>
                                <li>
                                    <div class="stu-info">
                                        <p class="mb10"><img alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/01/stu_dc.jpg"/></p>
                                        <p>
                                            <strong>2024<br>
                                            연세대 경영학과 합격</strong><br>
                                            러셀 대치 오우진
                                        </p>
                                    </div>
                                    <p class="txt"><strong>1타 선생님의 강의를 이동 시간 낭비 없이 같은 건물에서 들을 수 있다는 것이 좋았습니다. </strong>
                                        또한, 전날까지 온라인으로 좌석을 예약할 수 있어 본인이 원하는 자리에 앉아 수업을 들을 수 있다는 점도 장점이었습니다. 
                                        무엇보다 필수적으로 들어야 하는 수업 탓에 시간 낭비하는 일도 없이, <strong>스스로 수준에 맞게 원하는 단과 수업을 선택하여 들을 수 있다는 점이 정말 괜찮게 느껴졌습니다.</strong></p>
                                </li>
                            </ul>
                            <p class="r-txt">*2024 러셀 전체 학원 합격생의 후기 중 발췌</p>
                        </div>
                        <div class="w-cont02">
                            <p class="mb60"><img src="<%=Application("img_path_russel")%>/intro/danka/2025/01/w_cont02_tit.png" alt="겨울방학 8주 동안 실력이 상승하는 러셀 윈터특강 학습 프로그램"></p>
                            <ul class="w-list">
                                <li class="on">
                                    <img class="off" alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/01/w_list_01.jpg"/>
                                    <img class="on" alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/01/w_list_01_on.jpg"/>
                                </li>
                                <li>
                                    <img class="off" alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/01/w_list_02.jpg"/>
                                    <img class="on" alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/01/w_list_02_on.jpg"/>
                                </li>
                                <li>
                                    <img class="off" alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/01/w_list_03.jpg"/>
                                    <img class="on" alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/01/w_list_03_on.jpg"/>
                                </li>
                                <li>
                                    <img class="off" alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/01/w_list_04.jpg"/>
                                    <img class="on" alt="" src="<%=Application("img_path_russel")%>/intro/danka/2025/01/w_list_04_on.jpg"/>
                                </li>
                            </ul>
                            <p class="txt">윈터스쿨을 등록하지 않아도 윈터특강을 수강할 수 있습니다.<br>
                                윈터특강 종료 후, 정규 단과 및 내신 대비 강좌로 연계하여 수강할 수 있습니다.</p>
                        </div>

                        <!-- banner -->
                        <p class="winter_banner">더 확실하게 준비된 <strong>러셀 윈터특강</strong>으로<br>
                            내신부터 수능까지 <strong>최상위권으로 도약</strong>하세요!</p>
                        
                        <p><img src="<%=Application("img_path_russel")%>/intro/danka/2025/01/winter_time_tit.jpg" alt="러셀 윈터특강 학원별 시간표 안내" /></p>
                        <!-- campus-list-danka -->
                        <div class="campus-list-danka">
                            <!-- campus-list -->
                            <div class="campus-list">
                                <dl>
                                    <dt><span class="stit02">최상위권 수준별 맞춤 단과</span><br>러셀학원</dt>
                                    <dd>
                                        <p>러셀 <strong>강남</strong></p>
                                        02) 6954-1010
                                        <p class="bt" style="width:auto;">
                                            <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1785" target="_blank">고3/N수</a>
                                            <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1786" target="_blank">고2/고1</a>
                                        </p>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대치</strong></p>
                                        02) 2138-1010
                                        <a href="https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1787" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>목동</strong></p>
                                        02) 6932-1010
                                        <p class="bt" style="width:auto;">
                                            <a href="https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1788" target="_blank">고3</a>
                                            <a href="https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1789" target="_blank">고2/고1</a>
                                        </p>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>부천</strong></p>
                                        032) 265-1010
                                        <a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1823" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>분당</strong></p>
                                        031) 629-1010
                                        <p class="bt" style="width:auto;">
                                            <a href="https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1791" target="_blank">고3/N수</a>
                                            <a href="https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1792" target="_blank">고2</a>
                                        </p>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>영통</strong></p>
                                        031) 251-1010
                                        <a href="https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=350" target="_blank">시간표 바로가기</a>
                                    </dd>                                    
                                    <dd>
                                        <p>러셀 <strong>중계</strong></p>
                                        02) 6316-1010
                                        <a href="https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1802" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>평촌</strong></p>
                                        031) 341-6500
                                        <a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=351" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대구</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        053) 291-1010
                                        <a href="https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1803" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>대전</strong></p>
                                        042) 381-2020
                                        <a href="https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1797" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>센텀</strong></p>
                                        051) 715-1010
                                        <a href="https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1794" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀 <strong>울산</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        052) 913-1010
                                        <a href="https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1795" target="_blank">시간표 바로가기</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt><span class="stit02">서연고 &middot; 의치약 전문관</span><br>러셀CORE</dt>
                                    <dd>
                                        <p>러셀CORE <strong>광주</strong></p>
                                        062) 462-1010
                                        <a href="https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1796" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>원주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        033) 901-2020
                                        <a href="https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1798" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>전주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        063) 905-3030
                                        <a href="https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1799" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd class="bbn">
                                        <p>러셀CORE <strong>창원</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        055) 605-1010
                                        <a href="https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1800" target="_blank">시간표 바로가기</a>
                                    </dd>
                                    <dd>
                                        <p>러셀CORE <strong>청주</strong> <img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" class="va_m" /></p>
                                        043) 908-1010
                                        <a href="https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1801" target="_blank">시간표 바로가기</a>
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
    
    <script>
        $(function(){
            var idx = 1;
            setInterval(sysSlide, 2000);
            function sysSlide(){
                var sys_img = $('.w-list li')
                sys_img.removeClass('on')
                sys_img.eq(idx).addClass('on')

                idx++;
                
                if(idx >= sys_img.length){
                    idx = 0
                return idx;
                }
            };
        });
    </script>
</body>
</html>