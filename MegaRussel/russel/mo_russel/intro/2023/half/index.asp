<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2024 러셀 반수반 재학생" />
    <meta name="keywords" content="2024 러셀 반수반 재학생, 재학생 반수반, 반수반 재학생, 러셀 반수반, 반수반, 재학생, wjdrbqks" />
	<meta name="description" content="단과 수업과 의무자습을 한방에!" />
    <link rel="stylesheet" type="text/css" href="./style.css?version 1.1" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <% If campus_code = "CD0244" Then '분당 %>
    <strong class="tit">2024 반수반 [대학생]</strong>
    <% Else %>
    <strong class="tit">2024 반수반</strong>
    <% End If %>
</h2>
<section class="sub-wrap">
	<!-- half-wrap -->
    <div class="half-wrap">
		<!-- #include virtual = "/intro/2023/half/visual.asp" -->

        <!-- 공통 컨텐츠 -->
		<!-- #include virtual = "/intro/2023/half/contents.asp" -->


        <% If campus_code <> "INTRO" Then '인트로제외 %>
        <!-- recruit-wrap -->
        <div class="recruit-wrap bg-gray">
            <!--마감딱지-->
            <% If campus_code = "CD0001" OR campus_code = "CD0257" Then '대치/중계 %>
            <div class="ico-end"><p><%=end_txt%></p></div>
            <% End If %>
            <!--//마감딱지-->
            <p class="recruit-tit" id="cont">
                <% If campus_code = "CD0244" Then '분당 %>
                <%=txt_campus%> 반수반 [대학생]<br><strong>모집 안내</strong>
                <% Else %>
                <%=txt_campus%> 반수반<br><strong>모집 안내</strong>
                <% End If %>
            </p>
            <table class="tbl-type01">
                <colgroup>
                    <col style="width: 20%;">
                    <col style="width: ;">
                </colgroup>
                <tbody>
                    <tr>
                        <th><%=tit_01%></th>
                        <td class="txt-left"><%=txt_01%></td>
                    </tr>

                    <tr>
                        <th><%=tit_02%></th>
                        <td class="txt-left"><%=txt_02%></td>
                    </tr>
                </tbody>
            </table>

            <!-- 원서접수 버튼 -->
            <% If campus_code = "CD0247" or campus_code = "CD0246" or campus_code = "CD0342" or campus_code = "CD0341" or campus_code = "CD0341" or campus_code = "CD0343" or campus_code = "CD0344" or campus_code = "CD0346" or campus_code = "CD0345" Then '강남/대치/센텀/대구/코어대전/코어원주/코어전주/코어청주/코어창원 %>
            <a onclick="alert('원서접수는 PC페이지에서 이용 가능합니다.')" href="<%=pc_url%>russel/apply/jaejung/apply.asp?app_cd=155" class="btn-link mt20">원서접수 바로가기</a>
            <% Elseif campus_code = "CD0001" Then '대치 %>
            <a onclick="alert('원서접수는 PC페이지에서 이용 가능합니다.')" href="<%=pc_url%>russel/apply/jaejung/apply.asp?app_cd=155" class="btn-link mt20">대기자 원서접수 바로가기</a>
            <% Elseif campus_code = "CD0244" Then '분당 %>
            <a onclick="alert('원서접수는 PC페이지에서 이용 가능합니다.')" href="<%=pc_url%>russel/apply/jaejung/apply.asp?app_cd=155" class="btn-link mt20">대기 접수 바로가기</a>
            <% End If %>
            
            <!-- //원서접수 버튼 -->
        </div>
        <!-- //recruit-wrap -->
        <% End If %>

        <% If campus_code = "INTRO" Then '인트로 %>
        <p class="img" id="cont"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/half/tit_recruit.jpg" alt=""></p>
        <!--학원별 모집안내-->
        <!-- #include virtual = "/inc/campus_list_link.asp" -->
        <!--//학원별 모집안내-->
        <% Else %>
        <div id="cont">
            <!--학원별 컨텐츠 -->
            <%
                dirFile = "/intro/2023/half/"&campusName&".asp"
                Server.Execute(dirFile)
            %>
            <!-- //학원별 컨텐츠 -->
        </div>
        <% End If %>

        <!-- <div class="fixed-bar"><a href="#">모집안내 바로가기</a></div> -->

        <% If campus_code = "INTRO" Then '인트로 %>
        <p><a href="<%=pc_url%>intro/2023/half/index.asp" target="_blank" class="bt-pc">PC페이지로 이동</a></p>
        <% Else %>
        <p><a href="tel:<%=tel%>" class="bt-tel"><span>문의전화 <%=tel%></span></a></p>
        <p><a href="<%=pc_url%>intro/2023/half/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
        <% End If %>


    </div>
	<!-- //half-wrap -->

</section>
<!-- #include virtual = "/inc/footer.asp" -->
<script type="text/javascript" src="./ui.js"></script>
</body>
</html>