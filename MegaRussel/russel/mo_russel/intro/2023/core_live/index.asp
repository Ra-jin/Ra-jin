<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->
<%
' if IsDevSvr() = false then '사용안하는 페이지로 메인 페이지로 이동
' 	response.redirect "https://mrussel.megastudy.net/intro/intro.asp"


' end if
%>


<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로                  
                qnaUrl = "https://russel.megastudy.net/russel/event/2025/live_danka/index.asp"              
 
    Case "CD0340": '코어광주
                qnaUrl = "https://coregj.megastudy.net/russel/event/2025/live_danka/index.asp"  

    Case "CD0341": '대전
                qnaUrl = "https://coredj.megastudy.net/russel/event/2025/live_danka/index.asp"  

    Case "CD0343": '코어원주
                qnaUrl = "https://corewj.megastudy.net/russel/event/2025/live_danka/index.asp"  

    Case "CD0344": '코어전주
                qnaUrl = "https://corejj.megastudy.net/russel/event/2025/live_danka/index.asp"  

    Case "CD0345": '코어창원
                qnaUrl = "https://corecw.megastudy.net/russel/event/2025/live_danka/index.asp"  

    Case "CD0346": '코어청주
                qnaUrl = "https://corecj.megastudy.net/russel/event/2025/live_danka/index.asp"  

End Select
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2025 러셀LIVE단과" />
    <meta name="keywords" content="러셀LIVE 러셀LIVE단과 러셀 LIVE 단과 러셀LIVE" />
	<meta name="description" content="러셀에서만 가능한 실시간 LIVE 시스템 러셀LIVE 단과" />
    <link rel="stylesheet" type="text/css" href="/css/campus_list.css" />
    <link rel="stylesheet" type="text/css" href="./style.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">러셀 LIVE 단과</strong>
</h2>
<section class="sub-wrap">

	<!-- live-wrap -->
    <div class="live-wrap">
        <!-- visual -->
        <div class="visual-area">
            <div class="visual-bg">
                <span class="bg-01 bounceAni01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/visual_img01.jpg" alt=""></span>
                <span class="bg-02 bounceAni02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/visual_img01.jpg" alt=""></span>
                <span class="bg-03 fadeIn delay02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/visual_img02.png" alt=""></span>
                <span class="bg-04"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/visual_live.png" alt=""></span>
            </div>
            <div class="visual-tit01 fadeIn delay"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/visual_tit01.png" alt="러셀이라 가능한 실시간 LIVE 시스템" /></div>
            <div class="visual-tit02 flipInx"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/visual_tit02.png" alt="대치동 LIVE 단과, 대치동 현강 콘텐츠, 집단 학습 시스템" /></div>
            <div class="visual-tit03 flip delay02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/visual_img03.png" alt="" /></div>
            <div class="visual-tit04 fadeIn delay03">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/visual_img04.png" alt="" />
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/visual_img05.png" alt="" />
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/visual_img06.png" alt="" />
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/visual_img07.png" alt="" />
            </div>
            <div class="visual-txt01 fadeIn delay03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/visual_txt01.png" alt="대입 합격까지 부족한 학습 시간," /></div>
            <div class="visual-txt02 fadeIn delay04"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/visual_txt02.png" alt="대치동까지 이동하는 시간을 더하지 마세요." /></div>
        </div>
        <!-- //visual -->

        <div class="cont00 js-cont">
            <div class="cartoon-wrap">
                <div class="cartoon-1"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cartoon01.jpg" alt="" /></div>
                <div class="cartoon-2"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cartoon02.png" alt="세리야 어디가?" /></div>
                <div class="cartoon-3"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cartoon03.png" alt="나 서울! 기차 타고 대치동 현강 들으러가 오늘 국어 선생님 수업이거든" /></div>
                <div class="cartoon-4"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cartoon04.jpg" alt="" /></div>
                <div class="cartoon-5"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cartoon05.png" alt="어! 나도 오늘 듣는데, 난 러셀에서 들어~" /></div>
                <div class="cartoon-6"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cartoon06.png" alt="러셀 LIVE 단과? 지방에서 대치동 현강를 들을 수 있다고?" /></div>
                <div class="cartoon-7"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cartoon07.png" alt="러셀에서 LIVE 단과를 들으면 대치동 선생님의 현강 콘텐츠와 수업 관리를 동일하게 받을 수 있어!" /></div>
                <div class="cartoon-8"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cartoon08.png" alt="어?!!! 정말?!! 그럼 대치동까지 갈 필요 없잖아! 나도 갈래! 러셀!" /></div>
            </div>
        </div>
        <div class="cont01 js-cont">
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont01_tit.jpg" alt="" /></div>
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont01_img.jpg" alt="" /></div>
        </div>
        <div class="cont02 js-cont">
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont02_tit.jpg" alt="" /></div>
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont02_img01.jpg" alt="" /></div>
            <div class="arrow-wrap">
                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont02_img02.jpg" alt="" /></div>
                <div class="arrow-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont02_img03.png" alt="강사와 학생 실시간 상호작용" /></div>
            </div>
        </div>
        <div class="cont03 js-cont">
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont03_tit.jpg" alt="" /></div>
            <div class="cd-wrap">
                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont03_img01.jpg" alt="" /></div>
                <div class="core-card"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont03_img02.png" alt="" /></div>
                <div class="ico-vs"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont03_img03.png" alt="" /></div>
            </div>
        </div>
        <a href="/event/2024/live/index.asp" class="quick"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/quick.jpg" alt="딱 1분, LIVE 단과 체험하기" /></a>
        <a href="<%=qnaUrl%>" class="quick"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/quick_qna.jpg" alt="딱 1분, LIVE 단과 체험하기" /></a>
        <div class="cont04 js-cont">
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont04_tit.jpg" alt="" /></div>
            <div class="inner">
                <div class="c-box">
                    <div class="c-inner">
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont04_img01_tit.jpg" alt="" /></div>
                        <ul>
                            <li>
                                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont04_img01_1.jpg" alt="" /></div>
                            </li>
                            <li>
                                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont04_img01_2.jpg" alt="" /></div>
                            </li>
                            <li>
                                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont04_img01_3.jpg" alt="" /></div>
                            </li>
                            <li>
                                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont04_img01_4.jpg" alt="" /></div>
                            </li>
                            <li>
                                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont04_img01_5.jpg" alt="" /></div>
                            </li>
                        </ul>
                    </div>
                </div>
                <% If campus_code <> "CD0340" and campus_code <> "CD0341" and campus_code <> "CD0343" and campus_code <> "CD0344" and campus_code <> "CD0345" and campus_code <> "CD0346" Then '코어광주/대전/원주/전주/창원/청주 제외 %>
                <div class="c-box">
                    <div class="c-inner">
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont04_img02_tit.jpg" alt="" /></div>
                        <div style="margin-top:24px;"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont04_img02.jpg" alt="" /></div>
                    </div>
                </div>
                <% Else %>
                <div class="c-box">
                    <div class="c-inner pb20">
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont04_img02_tit.jpg" alt="" /></div>
                    </div>
                    <div style="padding-bottom:40px;">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont04_img02.jpg" alt="" />
                    </div>
                    <!-- <div class="c-inner pt20">
                        <div>
                            <a class="bt-gray-arr" href="<%=pc_url%>russel/curriculum/index.asp">출강 강사진 &amp; 2024 커리큘럼 바로 가기</a>
                        </div>
                    </div> -->
                </div>
                <% End If %>
                <div class="c-box">
                    <div class="c-inner">
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/cont04_img03_tit.jpg" alt="" /></div>
                        <div class="stu-review">
                            <div>
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/stu01.jpg" alt="김유은" usemap="#stuVideo01" />
                                <map name="stuVideo01">
                                    <area shape="rect" coords="148,117,217,188" href="javascript:void(0)" onclick="openVideo('-79QlArjUBI')">
                               </map>
                            </div>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/stu02.jpg" alt="김우찬" usemap="#stuVideo02" />
                                <map name="stuVideo02">
                                    <area shape="rect" coords="148,117,217,188" href="javascript:void(0)" onclick="openVideo('aJL5AUNg7O8')">
                               </map>
                            </div>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/stu03.jpg" alt="김해솔" usemap="#stuVideo03" />
                                <map name="stuVideo03">
                                    <area shape="rect" coords="148,117,217,188" href="javascript:void(0)" onclick="openVideo('npGlDMUsk4k')">
                               </map>
                            </div>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/stu04.jpg" alt="정유경" usemap="#stuVideo04" />
                                <map name="stuVideo04">
                                    <area shape="rect" coords="148,117,217,188" href="javascript:void(0)" onclick="openVideo('mibnve9HqYw')">
                               </map>
                            </div>
                            <!-- 동영상 레이어팝업 -->
                            <div class="v-layer-wrap">
                                <div class="dim"></div>
                                <div class="play-video">
                                    <iframe src='' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='100%' HEIGHT='100%' allow='autoplay' allowfullscreen></iframe>
                                    <a href="javascript:void(0)" class="btn-x"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close.png" alt="닫기"></a>
                                </div>
                            </div>
                            <!--// 동영상 레이어팝업 -->
                        </div>
                    </div>
                </div>
                <!-- 데이터 산출 기준-->
                <!-- <div class="l-pop">
                    <a href="javascript:void(0)" class="gr-data"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/ico-i.png" alt="i" /> 데이터 산출 기준</a>
                </div>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        *광주 지역 학원_2023학년도 의치한수약+서연고 최종 합격자 수, CORE광주 2023학년도 재원생 합격자 기준<br>
                        (홈페이지 대입 실적 기준/2023.02.28 기준)<br>
                        *대전 지역 학원_2023학년도 의치한수약+서연고 최종 합격자 수 비교 기준, CORE 대전 2023학년도 재원생 합격자 기준<br>
                        (홈페이지 대입 실적 기준/2023.02.28 기준)
                    </div>
                </div> -->
                <!-- //데이터 산출 기준 -->
            </div>
        </div>
        
        <div id="mozip">
            <p class="d-tit">
                <strong>LIVE 단과 운영 학원 안내</strong>
            </p>
            <p class="d-stit">서연고&middot;의치약 전문관 러셀/러셀CORE</p>
            <!--학원별 모집안내-->
            <!-- #include virtual = "/inc/campus_list_link.asp" -->
            <!--//학원별 모집안내-->
        </div>
        <div class="bottom-bar"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/core_live/bottom_txt.jpg" alt="러셀 LIVE 집단 학습 시스템이라면, 더 이상 학습시간이 부족하지 않습니다. 지금 러셀/러셀CORE에서 경험해보세요" /></div>
    </div>
    <p><a href="<%=pc_url%>intro/2023/core_live/index.asp" target="_blank" class="bt-pc">PC페이지로 이동</a></p>
	<!-- //gisuk-gate-wrap -->

</section>
<!-- #include virtual = "/inc/footer.asp" -->
<script src="./ui.js"></script>

<script>
    //데이터 산출 기준
    $(function(){
        $('.gr-data').on('click',function(){
            $(this).parent().next('.layer-wrap').addClass('on');
        });
        $('.js-close-mask a').on('click',function(){
            $('.layer-wrap').removeClass('on');
        });
    })

    // 동영상 레이어팝업
    function openVideo(url) {
        $('.v-layer-wrap').show()

        $('.play-video iframe').attr('src', 'https://www.youtube.com/embed/'+ url)

        $('.v-layer-wrap .btn-x').on('click', function() {
            $('.v-layer-wrap').hide()
            $('.play-video iframe').attr('src','')
        })
        
    }
</script>
</body>
</html>