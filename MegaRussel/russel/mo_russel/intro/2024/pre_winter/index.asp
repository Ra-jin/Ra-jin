<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2025 프리윈터스쿨" />
    <meta name="keywords" content="2025 러셀코어 프리윈터스쿨, 러셀코어 프리윈터스쿨, 2025 러셀코어프리윈터스쿨, 러셀코어프리윈터스쿨" />
	<meta name="description" content="프리윈터스쿨" />
    <link rel="stylesheet" type="text/css" href="./style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2025 프리윈터스쿨</strong>
</h2>
<section class="sub-wrap">
	<!-- pre-winter-wrap -->
    <div class="pre-winter-wrap">
        <!-- visual -->
		<!-- #include virtual = "/intro/2024/pre_winter/visual.asp" -->
        <!-- //visual -->

        <!-- 공통 컨텐츠 -->
        <div class="container <%=campusName%>">            
            <% If campus_code <> "INTRO" Then '인트로 제외 %>
            <!-- 학원별 모집안내 -->
            <div class="cont00 js-cont">
                <div class="inner">
                    <p class="recruit-tit">
                        <%=txtCampus%> 프리윈터스쿨<br><strong>모집안내</strong>
                    </p>
                    
                    <table class="tbl-type01">
                        <colgroup>
                            <col style="width: 18%">
                            <col style="width: auto">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th class="bg-sky"><%=tit_01%></th>
                                <td><%=txt_01%></td>
                            </tr>
                            <tr>
                                <th class="bg-sky"><%=tit_02%></th>
                                <td><%=txt_02%></td>
                            </tr>
                            <% If campus_code <> "CD0345" Then '코어창원 제외 %>
                            <tr>
                                <th class="bg-sky"><%=tit_03%></th>
                                <td><%=txt_03%></td>
                            </tr>
                            <% End If %>
                            <tr>
                                <th class="bg-sky"><%=tit_04%></th>
                                <td><%=txt_04%></td>
                            </tr>
                        </tbody>
                    </table> 
                    
                    <!--마감딱지-->
                    <!-- <div class="ico-end" style="top: 22vw;right: 1.5vw;"><p><%=endText%></p></div> -->
                    <!--//마감딱지-->

                    <% If campus_code <> "CD0345" Then '코어창원 제외 %>
                    <!-- 원서접수 버튼 -->
                    <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                    <!-- //원서접수 버튼 -->
                    <% End If %>
                </div>

            </div>
            <!-- // 학원별 모집안내 -->
            <% End If %>

            <!-- 모집일정 -->
            <div class="cont01">
                <% If campus_code = "INTRO" Then '인트로 %>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/scd_tit.jpg" alt="" /></p>
                <% Else %>
                <p class="recruit-tit pbp"><%=txtCampus%><br><strong>연간 재학생 모집 일정</strong></p>
                <% End If %>
                <div class="inner">
                    <ul class="scd-list">
                        <li class="scd-pre">                
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/scd_tit01.png" alt="프리윈터스쿨" /></p>			
                            <div class="day"><%=cont01_day01%></div>  
                            <div class="shine-effect"></div>
                        </li>
                        <li>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/scd_tit02.png" alt="윈터스쿨" /></p>
                            <div class="day"><%=cont01_day02%></div>  
                        </li>
                        <li>                
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/scd_tit03.png" alt="재학생 정규반" /></p>    
                            <div class="day"><%=cont01_day03%></div>            
                        </li>
                        <li>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/scd_tit04.png" alt="썸머스쿨" /></p>
                            <div class="day"><%=cont01_day04%></div>      			           
                        </li>
                        <li>               
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/scd_tit05.png" alt="파이널 정규반" /></p>	
                            <div class="day"><%=cont01_day05%></div>      			      		 
                        </li>
                        <li>
                            <strong>
                                2026학년도<br>
                                대학수학능력시험
                            </strong>
                        </li>
                    </ul>        
                    <% If campus_code = "INTRO" Then '인트로 %>
                    <p class="r-txt pt20">※ 모집 전형 및 일정은 학원별로 상이할 수 있습니다.
                    </p>
                    <% End If %>
                </div>
            </div>
            <!-- //모집일정 -->
             
            <!--학원별 컨텐츠 -->
            <% If campus_code <> "INTRO" Then '인트로 제외 %>
            <%
            dirFile = "/intro/2024/pre_winter/"&campusName02&".asp"
            Server.Execute(dirFile)
            %>
            <% End If %>
            <!-- //학원별 컨텐츠 -->            
            <!-- #include virtual = "/intro/2024/pre_winter/contents.asp" -->
		

            <!-- 인트로 모집안내 -->
            <% If campus_code = "INTRO" Then '인트로 %>
            <div class="recruit-wrap js-cont-wrap intro">
                <div class="recruit-tit">
                    2025 <strong>프리윈터스쿨</strong> <br> 모집안내
                </div>
                <p class="recruit-txt">상세 프로그램 및 일정은 <br>
                    학원별 홈페이지를 확인하여 주시기 바랍니다.
                </p>
                <!-- 학원별 모집안내 -->
                <!-- #include virtual = "/inc/campus_list_link.asp" -->
                <!-- //학원별 모집안내 -->
            </div>
            <% End If %>
            <!-- //인트로 모집안내 -->
        </div>
        <!-- //공통 컨텐츠 -->

        <p><a href="<%=pc_url%>intro/2024/pre_winter/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>

    </div>
	<!-- //pre-winter-wrap -->
</section>
<div class="mask-bg pre-winter" style="display: none;" onclick="closebg()"></div>
<!-- #include virtual = "/inc/footer.asp" -->


<script type="text/javascript" src="./ui.js"></script>
</body>
</html>