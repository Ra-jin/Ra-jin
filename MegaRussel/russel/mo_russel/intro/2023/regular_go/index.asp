<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->
<%
tit ="2024 재학생 정규반"
Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	' method.asp 인클루드 안한 페이지에서 오류날 수 있지만, 안쓰는 페이지가 없을거라 가정

    Case "CD0247": '강남
                tit ="2024 재학생 최상위권반"

    Case "CD0250": '부천
                tit ="2024 고3 정규반"

	Case "CD0244": '분당
                tit ="2024 정규반 재학생(고3)"

    Case "CD0248": '평촌
                tit ="2024 재학생 피켈 정규반"
End Select
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2024 러셀 정규반 재학생" />
    <meta name="keywords" content="2024 러셀 정규반 재학생, 재학생 정규반, 정규반 재학생, 러셀 정규반, 정규반, 재학생, wjdrbqks" />
	<meta name="description" content="단과 수업과 의무자습을 한방에!" />
    <link rel="stylesheet" type="text/css" href="./style.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit"><%=tit%></strong>
</h2>
<section class="sub-wrap">
	<!-- regularGo-wrap -->
    <div class="regularGo-wrap">
		<!-- #include virtual = "/intro/2023/regular_go/visual.asp" -->

        <!-- 공통 컨텐츠 -->
		<!-- #include virtual = "/intro/2023/regular_go/contents.asp" -->
        <!-- <div class="bottom">
            재학생에 최적화된
            <% If isCore = 1 Then ' 코어 %>러셀CORE<% Else %>러셀<% End If %> 재학생 정규반의 관리를 통해<br>
            <strong>여러분의 최상위권 대입 성공이 확실해 집니다.</strong>
        </div> -->


        <!-- recruit-wrap -->
        <div class="recruit-wrap">
            <!--마감딱지-->
            <% If campus_code = "CD0342" Then '대구 %>
            <div class="ico-end"><p>고3 마감<br>고2 마감</p></div>
            <% elseif campus_code = "CD0001" OR campus_code = "CD0257" OR campus_code = "CD0346" Then '대치/중계/청주 %>
            <div class="ico-end"><p><%=end_txt%></p></div>
            <% End If %>
            <!--//마감딱지-->
            
            <p class="recruit-tit" id="cont">
                <%=txt_campus%>
                <% If campus_code = "CD0247" Then '강남 %>
                재학생 최상위권반
                <% elseif campus_code = "CD0250" Then '부천 %>
                고3 정규반
                <% elseif campus_code = "CD0244" Then '분당 %>
                정규반 [재학생 (고3)]
                <% else %>
                재학생 정규반
                <% End If %><br>
                <strong>모집 안내</strong>
            </p>
            <table class="tbl-type01">
                <colgroup>
                    <col style="width: 20%;">
                    <col style="width: ;">
                </colgroup>
                <tbody>
                    <% if campus_code <> "CD0244" Then '분당 %>
                    <tr>
                        <th><%=tit_01%></th>
                        <td class="txt-left"><%=txt_01%></td>
                    </tr>
                    <% End If %>

                    <% If campus_code = "CD0247" Then '강남 %>
                    <tr>
                        <th><%=tit_02%></th>
                        <td class="txt-left"><%=txt_04%></td>
                    </tr>
                    <% ElseIf campus_code = "CD0246" Then '센텀 %>
                    <% Else %>
                    <tr>
                        <th><%=tit_02%></th>
                        <td class="txt-left"><%=txt_02%></td>
                    </tr>
                    <% End If %>
                    
                    <tr>
                        <th><%=tit_03%></th>
                        <td class="txt-left"><%=txt_03%></td>
                    </tr>
                    
                    <% If campus_code = "CD0250" Then '부천 %>
                    <tr>
                        <th>입학문의</th>
                        <td class="txt-left">
                            <a href="https://pf.kakao.com/_sFgGxj" class="bt-gray-s">온라인 상담</a><br>
                            전화상담 032.265.1010
                        </td>
                    </tr>
                    <% End If %>
                </tbody>
            </table>

            <!-- <p class="color-gray-03 f11 mt10" style="display: flex; align-items: center;">※ 고3 : 파이널 정규반 모집 중  <a href="https://mrusselgn.megastudy.net/intro/2023/final/index.asp" class="bt-gray-s txt-white ml10">모집 페이지 바로가기</a></p> -->

 
            <!-- 원서접수 버튼 -->
            <% If campus_code = "CD0247" Or campus_code = "CD0343" Or campus_code = "CD0341" Or campus_code = "CD0342" Or campus_code = "CD0346" Then '강남/원주/대전/대구/청주 %>
            <a onclick="alert('원서접수는 PC페이지에서 이용 가능합니다.')" href="<%=pc_url%>/russel/apply/yonhab/apply.asp?app_cd=152" class="btn-link mt20">원서접수 바로가기</a>
            <% ElseIf campus_code = "CD0346" Then '청주 %>
            <p class="sub-comment">* 원서접수 확인 후 개별 안내 예정</p>
            <% ElseIf campus_code = "CD0244" Then '분당 %>
            <a onclick="alert('원서접수는 PC페이지에서 이용 가능합니다.')" href="<%=pc_url%>/russel/apply/yonhab/apply.asp?app_cd=152" class="btn-link mt20">대기 접수 바로가기 </a>
            <% ElseIf campus_code = "CD0245" Then '목동 %>
            <a href="https://mrusselmd.megastudy.net/board/notice_view.asp?code=28842" class="btn-link mt20">대기자 접수 바로가기 </a>
            <% End If %>
            <!-- //원서접수 버튼 -->
        </div>
        <!-- //recruit-wrap -->



        <% If campus_code = "INTRO" Then '인트로 %>
        <p class="recruit-tit intro" id="cont">2024 러셀 재학생 정규반<br><strong>학원별 모집 안내</strong></p>
        <!--학원별 모집안내-->
        <!-- #include virtual = "/inc/campus_list_link.asp" -->
        <!--//학원별 모집안내-->
        <% Else %>
        <div id="cont">
            <!--학원별 컨텐츠 -->
            <%
                if campusName <> "" Then 
                    dirFile = "/intro/2023/regular_go/"&campusName&".asp"
                    Server.Execute(dirFile)
                Else 
                    Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
			        Response.End
                End If 
            %>
            <!-- //학원별 컨텐츠 -->
        </div>
        <% End If %>

        <%If IsDevSvr Then %>
        <div class="fixed-bar">
            <a href="#">모집안내 바로가기</a>
            <p class="ico-end-b">테스트테스트</p>
        </div>
        <% Else %>
        <div class="fixed-bar"><a href="#">모집안내 바로가기</a></div>
        <% End If %>

        <% If campus_code = "INTRO" Then '인트로 %>
        <p><a href="<%=pc_url%>/intro/2023/regular_go/index.asp" target="_blank" class="bt-pc">PC페이지로 이동</a></p>
        <% Else %>
        <p><a href="tel:<%=tel%>" class="bt-tel"><span>문의전화 <%=tel%></span></a></p>
        <p><a href="<%=pc_url%>/intro/2023/regular_go/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
        <% End If %>

    </div>
	<!-- //regularGo-wrap -->

</section>
<!-- #include virtual = "/inc/footer.asp" -->
<script type="text/javascript" src="./ui.js"></script>
</body>
</html>