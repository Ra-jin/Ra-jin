<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<%
' if IsDevSvr() = false then '사용안하는 페이지로 메인 페이지로 이동
' 	response.redirect "https://russel.megastudy.net/intro/gateway.asp"
' end if
%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="2023 러셀CORE단과" />
    <meta name="keywords" content="러셀CORE 러셀CORE단과 러셀 CORE 단과 코어LIVE" />
	<meta name="description" content="CORE에선만 가능한 실시간 LIVE 시스템 러셀CORE 단과" />
    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" href="/common/css/full_danka.css">
	<link rel="stylesheet" href="./style.css">
</head>

<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- live-wrap -->
<div class="live-wrap">
    <div class="visual-area">
        <div class="inner">
            <div class="visual-bg">
                <span class="bg-01 bounceAni01"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/visual_img01.jpg" alt="" /></span>
                <span class="bg-02 bounceAni02"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/visual_img01.jpg" alt="" /></span>
                <span class="bg-03 fadeIn delay02"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/visual_img02.png" alt="" /></span>
                <span class="bg-04"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/visual_live.png" alt="LIVE" /></span>
                <span class="bg-05"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/visual_core.png" alt="CORE" /></span>
            </div>
            <div class="visual-tit01 fadeIn delay"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/visual_tit01.png" alt="러셀이라 가능한 실시간 LIVE 시스템" /></div>
            <div class="visual-tit02 flipInx"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/visual_tit02.png" alt="대치동 LIVE 단과" /></div>
            <div class="visual-tit03 flip delay02"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/visual_img03.png" alt="" /></div>
            <div class="visual-tit04 fadeIn delay03">
                <img src="<%=Application("img_path_russel")%>/intro/2023/core_live/visual_img04.png" alt="" />
                <img src="<%=Application("img_path_russel")%>/intro/2023/core_live/visual_img05.png" alt="" />
                <img src="<%=Application("img_path_russel")%>/intro/2023/core_live/visual_img06.png" alt="" />
                <img src="<%=Application("img_path_russel")%>/intro/2023/core_live/visual_img07.png" alt="" />
            </div>
            <div class="visual-txt01 fadeIn delay03"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/visual_txt01.png" alt="대입 합격까지 부족한 학습 시간," /></div>
            <div class="visual-txt02 fadeIn delay04"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/visual_txt02.png" alt="대치동까지 이동하는 시간을 더하지 마세요." /></div>
        </div>
        <!-- quick 배너 -->

        <div class="quick-banner">
            <a href="/event/2024/live/index.asp"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/quick.png" alt="딱 1분, LIVE 단과 체험하기" /></a>
            <a href="/russel/event/2025/live_danka/index.asp"  class="mt15"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/quick_qna.png" alt="live단과 qna 답변보러가기" /></a>
        </div>
    </div>
    <div class="cont00 js-cont">
        <div class="inner">
            <div class="cartoon-wrap">
                <div class="cartoon-1"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cartoon01.png" alt="" /></div>
                <div class="cartoon-2"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cartoon02.png" alt="" /></div>
                <div class="cartoon-3"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cartoon03.png" alt="세리야 어디가?" /></div>
                <div class="cartoon-4"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cartoon04.png" alt="나 서울! 기차 타고 대치동 현강 들으러가 오늘 국어 선생님 수업이거든" /></div>
                <div class="cartoon-5"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cartoon05.png" alt="어! 나도 오늘 듣는데, 난 러셀에서 들어~" /></div>
                <div class="cartoon-6"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cartoon06.png" alt="러셀 LIVE 단과? 지방에서 대치동 현장 강의을 들을 수 있다고? !!" /></div>
                <div class="cartoon-7"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cartoon07.png" alt="러셀에서 LIVE 단과를 들으면 대치동 선생님의 현강 콘텐츠와 수업 관리를 동일하게 받을 수 있어!!" /></div>
                <div class="cartoon-8"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cartoon08.png" alt="어?!!! 정말?!! 그럼 대치동까지 갈 필요 없잖아! 나도 갈래! 러셀CORE!" /></div>
            </div>
        </div>
    </div>
    <div class="cont01 js-cont">
        <div class="inner">
            <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont01_tit.png" alt="러셀 학생들은 ‘학습시간을 확보’하기 위해 각 지역에서 대치동 수업을 LIVE로 수강하고 있습니다." /></div>
            <div style="margin-top: 76px;"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont01_img.jpg" alt="" /></div>
        </div>
    </div>
    <div class="cont02 js-cont">
        <div class="inner">
            <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont02_tit.png" alt="러셀 LIVE 단과 수강생들은 어떻게 학습시간을 확보할 수 있는 걸까요?" /></div>
            <div class="reason-wrap">
                <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont02_img01.jpg" alt="강사와 학생 실시간 상호작용" /></div>
                <div class="arrow-img"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont02_img02.png" alt="" /></div>
                <div class="reason-txt">
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont02_img03.png" alt="" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont02_img04.png" alt="" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont02_img05.png" alt="" /></div>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont02_img06.png" alt="" /></div>
                </div>
            </div>
        </div>
    </div>
    <div class="cont03 js-cont">
        <div class="inner">
            <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont03_tit.jpg" alt="그렇다면, 러셀 LIVE 단과 강의는 얼마나 다를까요?" /></div>
            <div class="mt160"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont03_img01.jpg" alt="" /></div>
            <div class="core-card"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont03_img02.png" alt="" /></div>
            <div class="ico-vs"><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont03_img03.png" alt="" /></div>
        </div>
    </div>
    <div class="cont04 js-cont">
        <!-- <% If sCampusCode <> "CD0340" and sCampusCode <> "CD0341" and sCampusCode <> "CD0343" and sCampusCode <> "CD0344" and sCampusCode <> "CD0345" and sCampusCode <> "CD0346" Then '코어광주/대전/원주/전주/창원/청주 제외 %>
        <% Else %>-->
        <!-- floating banner -->
        <!-- <div class="f-banner">
            <a href="/russel/curriculum/index.asp">
                <img src="<%=Application("img_path_russel")%>/intro/2023/core_live/f_banner.png" alt="출강 강사진 2024 커리큘럼 바로가기" />
            </a>
        </div>
        <% End if %> -->
        <div class="inner">
            <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont04_tit.png" alt="러셀에서는, 나에게 맞는 수업을 선택할 수 있습니다." /></div>
            <div class="c-box mt50">
                <div class="c-inner pl0">
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont04_img01_tit.jpg" alt="1. 체계적인 학습이 가능한 단계별 커리큘럼" /></div>
                    <ul>
                        <li><div><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont04_img01_1.jpg" alt="" /></div></li>
                        <li><div><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont04_img01_2.jpg" alt="" /></div></li>
                        <li><div><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont04_img01_3.jpg" alt="" /></div></li>
                        <li><div><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont04_img01_4.jpg" alt="" /></div></li>
                        <li><div><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont04_img01_5.jpg" alt="" /></div></li>
                    </ul>
                </div>
            </div>
            <div class="c-box">
                <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont04_img02_4.jpg" alt="2. 메가스터디 온·오프 강사진" /></div>
            </div>
            <div class="c-box">
                <div class="c-inner">
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont04_img03.jpg" alt="3. 대입 합격으로 이어지는 러셀 LIVE 단과 수강생 후기" /></div>
                    <div class="swiper-container stu-slide">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/core_live/stu01.jpg" alt="김유은학생" usemap="#stuVideo01" />
                                <map name="stuVideo01">
                                    <area shape="rect" coords="100,83,147,230" href="javascript:void(0)" onclick="CastPopup('https://www.youtube.com/embed/-79QlArjUBI')">
                               </map>
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/core_live/stu02.jpg" alt="김우찬학생" usemap="#stuVideo02" />
                                <map name="stuVideo02">
                                    <area shape="rect" coords="100,83,147,230" href="javascript:void(0)" onclick="CastPopup('https://www.youtube.com/embed/aJL5AUNg7O8')">
                               </map>
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/core_live/stu03.jpg" alt="김해솔학생" usemap="#stuVideo03" />
                                <map name="stuVideo03">
                                    <area shape="rect" coords="100,83,147,230" href="javascript:void(0)" onclick="CastPopup('https://www.youtube.com/embed/npGlDMUsk4k')">
                               </map>
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/core_live/stu04.jpg" alt="정유경학생" usemap="#stuVideo04" />
                                <map name="stuVideo04">
                                    <area shape="rect" coords="100,83,147,230" href="javascript:void(0)" onclick="CastPopup('https://www.youtube.com/embed/mibnve9HqYw')">
                               </map>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- <div class="data-wrap">
                <div class="data">데이터 산출 기준</div>
                <div class="data-txt">
                    ※ 광주 지역 학원_2023학년도 의치한수약+서연고 최종 합격자 수, CORE광주 2023학년도 재원생 합격자 기준<br>
                    (홈페이지 대입 실적 기준/2023.02.28 기준)<br>
                    ※ 대전 지역 학원_2023학년도 의치한수약+서연고 최종 합격자 수 비교 기준, CORE 대전 2023학년도 재원생 합격자 기준<br>
                    (홈페이지 대입 실적 기준/2023.02.28 기준)
                </div>
            </div> -->
        </div>
    </div>
    <div class="cont05 js-cont">
        <div class="inner">
            <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont05_tit.png" alt="LIVE 단과 운영 학원 안내" /></div>
            <div class="c-box">
                <p><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/cont05_stit.png" alt="서연고 의치약 전문관 러셀/러셀CORE" /></p>
                <ul class="mt50">
                    <li>
                        <dl>
                            <dt>러셀 <strong>대구</strong></dt>
                            <dd>
                                <strong>053) 291-1010</strong>
                                <a href="https://russeldg.megastudy.net/russel_dg/main.asp" target="_blank">바로가기</a>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>러셀 <strong>대전</strong></dt>
                            <dd>
                                <strong>042) 381-2020</strong>
                                <a href="https://coredj.megastudy.net/core_dj/main.asp" target="_blank">바로가기</a>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>러셀 <strong>울산</strong></dt>
                            <dd>
                                <strong>052) 913-1010</strong>
                                <a href="https://russelus.megastudy.net/russel_us/main.asp" target="_blank">바로가기</a>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>러셀CORE <strong>광주</strong></dt>
                            <dd>
                                <strong>062) 462-1010</strong>
                                <a href="https://coregj.megastudy.net/core_gj/main.asp" target="_blank">바로가기</a>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>러셀CORE <strong>원주</strong></dt>
                            <dd>
                                <strong>033) 901-2020</strong>
                                <a href="https://corewj.megastudy.net/core_wj/main.asp" target="_blank">바로가기</a>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>러셀CORE <strong>전주</strong></dt>
                            <dd>
                                <strong>063) 905-3030</strong>
                                <a href="https://corejj.megastudy.net/core_jj/main.asp" target="_blank">바로가기</a>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>러셀CORE <strong>창원</strong></dt>
                            <dd>
                                <strong>055) 605-1010</strong>
                                <a href="https://corecw.megastudy.net/core_cw/main.asp" target="_blank">바로가기</a>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>러셀CORE <strong>청주</strong></dt>
                            <dd>
                                <strong>043) 908-1010</strong>
                                <a href="https://corecj.megastudy.net/core_cj/main.asp" target="_blank">바로가기</a>
                            </dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="bottom-bar">
        <div><img src="<%=Application("img_path_russel")%>/intro/2023/core_live/bottom_txt.png" alt="러셀 LIVE 집단 학습 시스템이라면, 더 이상 학습시간이 부족하지 않습니다. 지금 러셀/러셀CORE에서 경험해보세요" /></div>
    </div>
</div>
<!-- live-wrap -->

<!--  공통 하단 //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->


<script src="./ui.js"></script>
<script>
    
	//영상캐스트 영상 팝업
	function CastPopup(url){
		var sUrl = url.toLowerCase();
		var wnd = window.open("", "talk", "width=554,height=316,scrollbars=0,resizable=no,location=no");
		
		// 네이버tv
		if (sUrl.indexOf('naver.com') > -1) {
			sUrl = sUrl.replace("/v/", "/embed/");
			wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+sUrl+"' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' allow='autoplay' allowfullscreen></iframe>");
		// 유튜브
		} else {
			wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"' frameborder='no' scrolling='no' allowfullscreen></iframe>");
		}
	}
    
</script>


</body>
</html>
