<div class="section sec4">
    <!--모집안내-->
    <% If campus_code = "CD0340" or campus_code = "CD0341" or campus_code = "CD0343" or campus_code = "CD0344" or campus_code = "CD0345" or campus_code = "CD0346" Then 'CORE광주/대전/원주/전주/창원/청주 %>
    <p class="recruit-tit core"><%=txt_campus%> 재수생 우선선발반<br><strong>모집안내</strong></p>
    <% Else %>
    <p class="recruit-tit"><%=txt_campus%> 재수생 우선선발반<br><strong>모집안내</strong></p>
    <% End If %>
    <div class="inner">
        <table class="tbl-type01">
            <colgroup>
                <col style="width:30%;" />
                <col style="width:70%;" />
            </colgroup>
            <tbody>
                <tr>
                    <th><%=open_tit%></th>
                    <td><%=open_cont%></td>
                </tr>
                <% If campus_code = "CD0245" Then '목동 %>
                <tr>
                    <th>접수기간</th>
                    <td>현재 모집 중 [마감 임박]</td>
                </tr>
                <% ElseIf campus_code = "CD0244" Then '분당 %>
                <tr>
                    <th>모집기간</th>
                    <td>11/23(수) ~ 1/31(화)<br>*모집요강 지원자격 해당자순 접수</td>
                </tr>
                <% End If %>

                <% If campus_code = "CD0244" Then '분당 %>
                <tr>
                    <th><%=method_tit%></th>
                    <td><%=method_cont%><a href="<%=pc_url%>/russel/apply/jaejung/apply.asp?app_cd=147" class="btn-apply">접수하기 ></a><br><span>*이후 입학 절차 개별 안내 예정</span></td>
                </tr>
                <% ElseIf campus_code = "CD0257" Then '중계 %>
                <tr>
                    <th><%=method_tit%></th>
                    <td><%=method_cont%></td>
                </tr>
                <% ElseIf campus_code = "CD0246" Then '센텀 %>
                <tr>
                    <th><%=method_tit%></th>
                    <td><%=method_cont%><br><a style="display: inline-block;margin-top: 5px;" href="<%=pc_url%>/russel/apply/jaejung/apply.asp?app_cd=147" class="btn-apply">온라인 접수 바로가기 ></a></td>
                </tr>
                <% Else %>
                <tr>
                    <th><%=method_tit%></th>
                    <td><%=method_cont%></td>
                </tr>
                <% End If %>
                <% If campus_code = "CD0250" Then '부천 %>
                <tr>
                    <th><%=inquiry_tit%></th>
                    <td><a href="https://mrusselbc.megastudy.net/board/consult_list.asp">온라인 상담 ></a><br><span>전화 상담 032.265.1010</span></td>
                </tr>
                <% End If %>
            </tbody>
        </table>
        <!--원서접수 바로가기 버튼-->
        <% If campus_code = "CD0247" Then '강남 %>
        <div class="btn-danka">
            <a href="https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=147" onclick="alert('원서접수는 PC페이지에서 이용 가능합니다.')"><strong>원서접수 바로가기</strong></a>
        </div>
        <% ElseIf campus_code = "CD0001" Then '대치 %>
        <div class="btn-danka">
            <a <%if curYmdhmin < 202212021100 then %> onclick="alert('12/2(금) 오전 11시부터 접수 가능합니다.')" <%else%> href="https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=147" onclick="alert('원서접수는 PC페이지에서 이용 가능합니다.')" <% end if %>><strong>원서접수 바로가기</strong></a>
        </div>
        <% ElseIf campus_code = "CD0341" Then '대전 %>
        <div class="btn-danka">
            <a href="https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=147" onclick="alert('원서접수는 PC페이지에서 이용 가능합니다.')"><strong>원서접수 바로가기</strong></a>
        </div>
        <% ElseIf campus_code = "CD0342" Then '대구 %>
        <div class="btn-danka">
            <a href="https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=147" onclick="alert('원서접수는 PC페이지에서 이용 가능합니다.')"><strong>원서접수 바로가기</strong></a>
        </div>
        <% ElseIf campus_code = "CD0340" Then '코어광주 %>
        <div class="btn-danka">
            <a href="https://coregj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=147" onclick="alert('원서접수는 PC페이지에서 이용 가능합니다.')"><strong>원서접수 바로가기</strong></a>
        </div>
        <% End If %>
        <!--//원서접수 바로가기 버튼-->
    </div>


    <!--모집요강 및 장학혜택 - 학원별 파일로 연결 -->
    <% If campus_code = "CD0247" Then '강남 %>
    <!-- #include virtual = "/intro/2023/first/cont_gn.asp" -->
    <% ElseIf campus_code = "CD0001" Then '대치 %>
    <!-- #include virtual = "/intro/2023/first/cont_dc.asp" -->
    <% ElseIf campus_code = "CD0245" Then '목동 %>
    <!-- #include virtual = "/intro/2023/first/cont_md.asp" -->
    <% ElseIf campus_code = "CD0250" Then '부천 %>
    <!-- #include virtual = "/intro/2023/first/cont_bc.asp" -->
    <% ElseIf campus_code = "CD0244" Then '분당 %>
    <!-- #include virtual = "/intro/2023/first/cont_bd.asp" -->
    <% ElseIf campus_code = "CD0246" Then '센텀 %>
    <!-- #include virtual = "/intro/2023/first/cont_ct.asp" -->
    <% ElseIf campus_code = "CD0249" Then '영통 %>
    <!-- #include virtual = "/intro/2023/first/cont_yt.asp" -->
    <% ElseIf campus_code = "CD0257" Then '중계 %>
    <!-- #include virtual = "/intro/2023/first/cont_jg.asp" -->
    <% ElseIf campus_code = "CD0248" Then '평촌 %>
    <!-- #include virtual = "/intro/2023/first/cont_pc.asp" -->
    <% ElseIf campus_code = "CD0342" Then '대구 %>
    <!-- #include virtual = "/intro/2023/first/cont_dg.asp" -->
    <% ElseIf campus_code = "CD0340" Then '광주 %>
    <!-- #include virtual = "/intro/2023/first/cont_gj.asp" -->
    <% ElseIf campus_code = "CD0341" Then '대전 %>
    <!-- #include virtual = "/intro/2023/first/cont_dj.asp" -->
    <% ElseIf campus_code = "CD0344" Then '전주 %>
    <!-- #include virtual = "/intro/2023/first/cont_jj.asp" -->
    <% ElseIf campus_code = "CD0343" Then '원주 %>
    <!-- #include virtual = "/intro/2023/first/cont_wj.asp" -->
    <% ElseIf campus_code = "CD0345" Then '창원 %>
    <!-- #include virtual = "/intro/2023/first/cont_cw.asp" -->
    <% ElseIf campus_code = "CD0346" Then '청주 %>
    <!-- #include virtual = "/intro/2023/first/cont_cj.asp" -->
    <% End If %>
    <!--//모집요강 및 장학혜택-->

    <!--//모집안내-->


    <% If campus_code = "INTRO" Then '인트로 %>
    <p class="recruit-tit intro">2024 재수생 우선선발반<br><strong>학원별 모집안내</strong></p>
    
    <!--학원별 모집안내-->
    <!-- #include virtual = "/inc/campus_list_link.asp" -->
    <!--//학원별 모집안내-->
    <% End If %>

    <!--PC페이지로 이동-->
    <p><a href="/intro/2023/first/index.asp" target="_blank" class="bt-pc">PC페이지로 이동</a></p>
</div>