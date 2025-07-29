<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2023 썸머스쿨" />
    <meta name="keywords" content="2023 러셀 썸머스쿨, 썸머스쿨" />
	<meta name="description" content="짧은 여름 방학을 성공적으로 보내는 방법" />
    <link rel="stylesheet" type="text/css" href="./style.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2023 썸머스쿨</strong>
</h2>
<section class="sub-wrap">
	<!-- summer-wrap -->
    <div class="summer-wrap">
		<!-- #include virtual = "/intro/2023/summer/visual.asp" -->

        <!-- 공통 컨텐츠 -->
		<!-- include virtual = "/intro/2023/summer/contents.asp" -->

        <% If campus_code <> "INTRO" Then '인트로제외 %>
        <!-- recruit-wrap -->
        <div class="recruit-wrap bg-gray">
            <p class="recruit-tit" id="recruit-cont">
                2023년 <%=txt_campus%> 썸머스쿨<br><strong>모집 안내</strong>
            </p>
            <table class="tbl-type01">
                <colgroup>
                    <% If campus_code = "CD0245" Then '목동 %>
                    <col style="width: 25%;">
                    <% Else %>
                    <col style="width: 20%;">
                    <% End If %>
                    <col style="width: ;">
                </colgroup>
                <tbody>
                    <tr>
                        <th><%=tit_01%></th>
                        <td class="txt-left"><%=txt_01%></td>
                    </tr>

                    <% If campus_code = "CD0244" Then '분당 %>
                    <tr>
                        <th><%=tit_02%></th>
                        <td class="txt-left"><%=txt_04%></td>
                    </tr>
                    <% Else %>
                    <tr>
                        <th><%=tit_02%></th>
                        <td class="txt-left"><%=txt_02%></td>
                    </tr>
                    <% End If %>
                    <% If campus_code = "CD0245" OR campus_code = "CD0247" Then '목동,강남 %>
                    <tr style="display:none">
                        <th><%=tit_03%></th>
                        <td class="txt-left"><%=txt_03%></td>
                    </tr>
                    <% Else %>
                    <tr>
                        <th><%=tit_03%></th>
                        <td class="txt-left"><%=txt_03%></td>
                    </tr>
                    <% End If %>
                    <% If campus_code = "CD0249" Then '영통 %>
                    <tr>
                        <th>유의사항</th>
                        <td class="txt-left">
                            * 유의사항<br> 
                            ① 사전접수 마감으로 온라인 대기 접수를 해주시기 바랍니다.<br>
                            ② 대기 접수자는 사전접수자 등록 후 여석 발생 시 순차적으로 등록 안내 예정입니다.<br><br>

                            ※ 사전 접수 기간 안내(전체 마감)<br>
                            ▶ 4/18(화) 오후 2시 <br><br>

                            <ul class="list-bar">
                                <li>사전예약금 접수는 선착순으로 진행되었습니다.</li>
                                <li>사전예약금을 납부하신 분들에 한해 별도로 실등록 기간을 안내해 드릴 예정입니다.<br>
                                    ① 수강 희망하는 강좌를 선택<br>
                                    ② 안내해드린 등록 기간 내 방문하여 신청서 작성, 증빙서류 제출, 단과&바자관 비용 전액 결제<br>
                                    ③ 추후 OT 참석 및 온라인으로 급식 결제 (별도 안내 예정)
                                </li>
                            </ul>

                        </td>
                    </tr>
                    <% End If %>
                </tbody>
            </table>

            <!-- 원서접수 버튼 -->
            <% If campus_code = "CD0001" or campus_code = "CD0248" Then '대치/평촌 일 경우 %>
            <a onclick="alert('추후 오픈됩니다.')" class="btn-link mt20">원서접수 바로가기</a>

            <% ElseIf campus_code = "CD0245" OR campus_code = "CD0247" Then '목동,강남 %>
            <a style="display:none" <% if curYmdhmin < 202305010900 then %> href="javascript:;" onclick="alert('5/1(월) 오전 9시부터 접수 가능합니다.');" class="btn-link mt20" <%else%> href="<%=pc_url%>/russel/apply/yonhab/apply.asp?app_cd=154" class="btn-link btn-pc mt20" <%end if%>>대기자 접수 바로가기</a>            
                
            <% ElseIf campus_code = "CD0342" Then '대구 %>
            <a <% if curYmdhmin < 202305081400 then %> href="javascript:;" onclick="alert('추후 오픈됩니다.');" class="btn-link mt20" <%else%> href="<%=pc_url%>/russel/apply/yonhab/apply.asp?app_cd=154" class="btn-link btn-pc mt20" <%end if%>>원서접수 바로가기</a>
            <% ElseIf campus_code = "CD0257" Then '중계 %>
            <% ElseIf campus_code = "CD0246" Then '센텀 %>
            
            <% ElseIf campus_code = "CD0249" Then '영통 %>
            <a onclick="alert('온라인 대기 접수는 PC 페이지에서 가능합니다.'); location.href='<%=pc_url%>russel/info/waiting/list.asp?ClsCode=2';" class="btn-link mt20">온라인 대기 바로가기</a>

            <% ElseIf campus_code = "CD0345" or campus_code = "CD0344" or campus_code = "CD0346" Then '코어창원/전주/코어청주 %>
            <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='<%=pc_url%>russel/apply/yonhab/apply.asp?app_cd=154';" class="btn-link mt20">원서접수 바로가기</a>
            <% ElseIf campus_code = "CD0244" Then '분당 %>
            <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='<%=pc_url%>russel/apply/yonhab/apply.asp?app_cd=154';" class="btn-link mt20">온라인 대기 신청 바로가기</a>
            <% ElseIf campus_code = "CD0250" Then '부천 %>
            <a onclick="alert('온라인 원서접수 마감되었습니다. 현장 방문 또는 유선 접수해주세요.');"  class="btn-link mt20" href="javascript:void(0)">원서접수 바로가기</a>
            <% Else %>
            <a href="<%=pc_url%>russel/apply/yonhab/apply.asp?app_cd=154" class="btn-link btn-pc mt20">원서접수 바로가기</a>
            <% End If %>
            <!-- //원서접수 버튼 -->
            
            <!--마감딱지-->
            <% If campus_code = "CD0248" Then '평촌 %>
            <div class="ico-end" style="top: 25vw;right: 0;"><p>사전예약 마감<br>대기자 접수 중</p></div>
            <% ElseIf campus_code = "CD0245" Then '목동 %>
            <div class="ico-end" style="top: 25vw;right: 14.5vw;"><p style="font-size:1.0rem">전석 마감<br>(전형별 대기자 연락 중)</p></div>
            <% ElseIf campus_code = "CD0249" Then '영통 %>
            <div class="ico-end" style="top: 30vw;right: 0;"><p>대기자 접수 중<br>사전접수 마감</p></div>
            <% ElseIf campus_code = "CD0341" Then '코어대전 %>
            <div class="ico-end" style="top: 22vw;right: 1.5vw;"><p>전석 마감/<br>대기자 접수 중</p></div>
            <% ElseIf campus_code = "CD0344" Then '코어전주 %>
            <div class="ico-end" style="top: 25vw;right: 14.5vw"><p>전석 마감/<br>고3 대기자 접수 중</p></div>
            <% ElseIf campus_code = "CD0345" Then '코어창원 %>
            <div class="ico-end" style="top: 25vw;right: 14.5vw"><p>전학년 마감임박</p></div>
            <% ElseIf campus_code = "CD0342" Then '대구 %>
            <div class="ico-end" style="top: 25vw;right: 14.5vw"><p>고2, 고3 <br> 마감 </p></div>
            <% ElseIf campus_code = "CD0257" Then '중계 %>
            <div class="ico-end" style="top: 25vw;right: 14.5vw"><p>전석 마감<br>(대기자 접수 中)</p></div>
            <% ElseIf campus_code = "CD0246" Then '센텀 %>
            <div class="ico-end" style="top: 25vw;right: 14.5vw"><p>전 학년 마감</p></div>
            <% End If %>
            <!--//마감딱지-->


        </div>
        <!-- //recruit-wrap -->
        <% End If %>

        <% If campus_code = "INTRO" Or campusName = "else" Then '인트로 %>
        <div class="recruit-tit" id="recruit-cont">2023 <span>러셀 썸머스쿨</span> 모집 안내</div>
        <!--학원별 모집안내-->
        <!-- #include virtual = "/inc/campus_list_link.asp" -->
        <!--//학원별 모집안내-->
        <% Else %>
                <div id="cont">
                    <!--학원별 컨텐츠 -->
                    <%
                        dirFile = "/intro/2023/summer/"&campusName&".asp"
                        Server.Execute(dirFile)
                    %>
                    <!-- //학원별 컨텐츠 -->
                </div>
        <% End If %>

        <div class="fixed-bar"><a href="#">모집안내 바로가기</a></div>

        <% If campus_code = "INTRO" Then '인트로 %>
        <p><a href="<%=pc_url%>intro/2023/summer/index.asp" target="_blank" class="bt-pc">PC페이지로 이동</a></p>
        <% Else %>
        <p><a href="tel:<%=tel%>" class="bt-tel"><span>문의전화 <%=tel%></span></a></p>
        <p><a href="<%=pc_url%>intro/2023/summer/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
        <% End If %>

    </div>
	<!-- //summer-wrap -->

</section>
<!-- #include virtual = "/inc/footer.asp" -->
<script type="text/javascript" src="./ui.js"></script>
</body>
</html>