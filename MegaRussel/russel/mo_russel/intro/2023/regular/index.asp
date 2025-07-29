<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2024 러셀 정규반 N수" />
    <meta name="keywords" content="2024 러셀 정규반 N수, N수 정규반, 정규반 N수, 러셀 정규반, 정규반, N수, wjdrbqks" />
	<meta name="description" content="단과 수업과 의무자습을 한방에!" />
    <link rel="stylesheet" type="text/css" href="/css/2023/regular.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <% If campus_code = "CD0244" Then '분당 %>
    <strong class="tit">2024 정규반 [N수생]</strong>
    <% Else %>
    <strong class="tit">2024 N수 정규반</strong>
    <% End If %>
</h2>
<section class="sub-wrap">
	<!-- regular-wrap -->
    <div class="regular-wrap">
		<!-- #include virtual = "/intro/2023/regular/visual.asp" -->

		<!-- #include virtual = "/intro/2023/regular/contents.asp" -->
        
        <div class="cont cont09" id="detail-info">

            <div class="inner">
                <!-- 마감딱지 -->
                <% If campus_code = "CD0342" Then '대구 %>
                <div class="ico-end"><p>N수 HS,서의치<br>마감주의</p></div>
                <% ElseIf campus_code = "CD0001" OR campus_code = "CD0257" Then '대치/중계 %>
                <div class="ico-end" style="right:5%"><p><%=end_txt%></p></div>
                <% End If %>
        
                <% If campus_code = "CD0244" Then '분당 %>
                <p class="recruit-tit"><span><%=caumpus_name%>  2024 정규반 [N수생]</span><br>모집 안내</p>
                <% else %>
                <p class="recruit-tit">2024 <span><%=caumpus_name%> N수 정규반</span><br>모집 안내</p>
                <% End If %>
                <table class="tbl-type01 <%=caumpus_code%>">
                    <colgroup>
                        <col style="width: 30%;">
                        <col style="width: 70%;">
                    </colgroup>
                    <tbody>
                        <% If campus_code <> "CD0245" and campus_code <> "CD0244" and campus_code <> "CD0246" Then '목동/분당/센텀제외%>
                        <tr>
                            <th><%=open_date%></th>
                            <td><%=open_date_txt%></td>
                        </tr>
                        <% End if %>
                        <% If campus_code = "CD0246" Then '센텀 %>
                        <tr>
                            <th><%=a_method%></th>
                            <td><%=a_method_txt02%></td>
                        </tr>
                        <% ElseIf campus_code = "CD0245" Then '목동 %>
                        <tr>
                            <th>접수 기간</th>
                            <td>현재 모집 중 [마감 임박]</td>
                        </tr>
                        <% ElseIf campus_code = "CD0244" Then '분당 %>
                        <tr>
                            <th>접수 기간</th>
                            <td><strong>전석 마감, 대기자 접수 中</strong> <br><span>(*모집요강 지원자격 해당자 순 접수)</span></td>
                        </tr>
                        <tr>
                            <th>접수 방법</th>
                            <td><strong>온라인 대기 접수 후 성적표 제출</strong><br>
                                <span>*온라인 대기 접수를 완료하면 이후 대기 순서에 따라 입학 절차를 개별적으로 안내해드립니다.</span>
                            </td>
                        </tr>
                        <% Else %>
                        <tr>
                            <th><%=a_method%></th>
                            <td><%=a_method_txt02%></td>
                        </tr>
                        <% End If %>
                        <% If campus_code = "CD0250" Then '부천 %>
                        <tr>
                            <th>입학 문의</th>
                            <td>전화 상담<br>032.265.1010</td>
                        </tr>
                        <% ElseIf campus_code = "CD0245" Then '목동 %>
                        <tr>
                            <th><%=a_method%></th>
                            <td><%=a_method_txt02%></td>
                        </tr>
                        <% End If %>
                    </tbody>
                </table>
                <!--원서접수 바로가기 버튼-->
                <% If campus_code = "CD0001" Or campus_code = "CD0342" OR campus_code = "CD0341" OR campus_code = "CD0343" OR campus_code = "CD0340" OR campus_code = "CD0247" OR campus_code = "CD0250" OR campus_code = "CD0246" OR campus_code = "CD0344" Then '대치/대구/대전/원주/광주/강남/부천/센텀/코어전주 %>
                <div class="btn-danka" style="margin-top:-50px;">
                    <% if campus_code = "CD0001" then '대치 %>
                    <a <%if curYmdhmin >= 202301200900 then%> href="<%=applyUrl%>" onclick="alert('원서접수는 PC페이지에서 이용 가능합니다.')" <%else%> onclick="alert('원서접수는 1/20(금) 9시 이후 가능합니다.')" <%end if%>><strong>대기자 원서접수 바로가기</strong></a>
                    <% elseif campus_code = "CD0250" then '부천 %>
                    <a href="<%=applyUrl%>"><strong>온라인 상담 바로가기</strong></a>
                    <% else %>
                    <a href="<%=applyUrl%>" onclick="alert('원서접수는 PC페이지에서 이용 가능합니다.')"><strong>원서접수 바로가기</strong></a>
                    <% end if %>
                </div>
                <% elseif campus_code = "CD0346" then '청주 %>
                <div class="btn-danka" style="margin-top:-50px;display: inline;">
                    <a href="<%=applyUrl%>" onclick="alert('원서접수는 PC페이지에서 이용 가능합니다.')"><strong>원서접수 바로가기</strong></a><br>
                    <p class="sub-comment">*원서접수 확인 후 개별 안내 예정</p>
                </div>
                <% elseif campus_code = "CD0244" then '분당 %>
                <div class="btn-danka" style="margin-top:-50px;">
                    <a href="<%=applyUrl%>" onclick="alert('원서접수는 PC페이지에서 이용 가능합니다.')"><strong>대기 접수 바로가기</strong></a><br>
                </div>
                <% End If %>
                <!--//원서접수 바로가기 버튼-->
            </div>
        </div>
        
        <!--모집요강 및 장학혜택 - 학원별 파일로 연결 -->
        <% If campus_code = "CD0247" Then '강남 %>
        <!-- #include virtual = "/intro/2023/regular/cont_gn.asp" -->
        <% ElseIf campus_code = "CD0001" Then '대치 %>
        <!-- #include virtual = "/intro/2023/regular/cont_dc.asp" -->
        <% ElseIf campus_code = "CD0245" Then '목동 %>
        <!-- #include virtual = "/intro/2023/regular/cont_md.asp" -->
        <% ElseIf campus_code = "CD0250" Then '부천 %>
        <!-- #include virtual = "/intro/2023/regular/cont_bc.asp" -->
        <% ElseIf campus_code = "CD0244" Then '분당 %>
        <!-- #include virtual = "/intro/2023/regular/cont_bd.asp" -->
        <% ElseIf campus_code = "CD0246" Then '센텀 %>
        <!-- #include virtual = "/intro/2023/regular/cont_ct.asp" -->
        <% ElseIf campus_code = "CD0249" Then '영통 %>
        <!-- #include virtual = "/intro/2023/regular/cont_yt.asp" -->
        <% ElseIf campus_code = "CD0257" Then '중계 %>
        <!-- #include virtual = "/intro/2023/regular/cont_jg.asp" -->
        <% ElseIf campus_code = "CD0248" Then '평촌 %>
        <!-- #include virtual = "/intro/2023/regular/cont_pc.asp" -->
        <% ElseIf campus_code = "CD0342" Then '대구 %>
        <!-- #include virtual = "/intro/2023/regular/cont_dg.asp" -->
        <% ElseIf campus_code = "CD0340" Then '코어광주 %>
        <!-- #include virtual = "/intro/2023/regular/cont_gj.asp" -->
        <% ElseIf campus_code = "CD0341" Then '코어대전 %>
        <!-- #include virtual = "/intro/2023/regular/cont_dj.asp" -->
        <% ElseIf campus_code = "CD0344" Then '코어전주 %>
        <!-- #include virtual = "/intro/2023/regular/cont_jj.asp" -->
        <% ElseIf campus_code = "CD0343" Then '코어원주 %>
        <!-- #include virtual = "/intro/2023/regular/cont_wj.asp" -->
        <% ElseIf campus_code = "CD0345" Then '코어창원 %>
        <!-- #include virtual = "/intro/2023/regular/cont_cw.asp" -->
        <% ElseIf campus_code = "CD0346" Then '코어청주 %>
        <!-- #include virtual = "/intro/2023/regular/cont_cj.asp" -->
        <% End If %>
        <!--//모집요강 및 장학혜택-->
        
        <% If campus_code = "INTRO" Then '인트로 %>
        <p class="recruit-tit intro">2024 <span>러셀 N수 정규반<br>학원별</span> 모집 안내</p>
        
        <!--학원별 모집안내-->
        <!-- #include virtual = "/inc/campus_list_link.asp" -->
        <!--//학원별 모집안내-->
        <% End If %>
  
        <% If campus_code = "INTRO" Then '인트로 %>
        <p><a href="https://<%=caumpus_code%>.megastudy.net/intro/2023/regular/index.asp" target="_blank" class="bt-pc">PC페이지로 이동</a></p>
        <% Else %>
		<p><a href="tel:<%=tel%>" class="bt-tel"><span>문의전화 <%=tel%></span></a></p>
        <p><a href="https://<%=caumpus_code%>.megastudy.net/intro/2023/regular/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
        <% End If %>


    </div>
	<!-- //regular-wrap -->

</section>
<!-- #include virtual = "/inc/footer.asp" -->
<script type="text/javascript" src="/intro/2023/regular/regular.js"></script>
<script src="/js/chart.min.js"></script>
</body>
</html>