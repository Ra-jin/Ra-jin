<div class="cont js-cont">
    <div class="cont00 bg-lgray">
        <!-- inner02 -->
        <div class="inner02">
            <p class="mb90"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/first/cont00_tit01.png" alt=""></p>
            <a href="https://russelbc.megastudy.net/russel_bc/2023/focus/index.asp" class="c-banner"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/first/ksy_banner.png" alt=""></a>
            <div class="mt50 mb100"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/first/hs_banner.png" alt=""></div>
            <!-- tab-wrap  -->
            <div class="tab-cont-wrap">
                <!-- bt-tab -->
                <div class="bt-tab">
                    <a href="#"><strong>11월</strong></a>
                    <a href="#"><strong>12월</strong></a>
                    <a href="#" class="on" id="n_open"><strong>1월~2월</strong></a>
                </div>
                <!-- //bt-tab -->

                <!-- 11월 -->
                <div class="cont-box tbl-box on">
                    <!-- 모집요강 어드민 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 1052
                    Else '실서버
                        AGM_CD = 75
                    End If

                    strSql = " SELECT AGM_CONTENT FROM MR_ACA_GUIDE_MAS WITH(NOLOCK) WHERE AGM_IDX = " & AGM_CD
                    Set Rs = russelobjdb.sqlQuery(strSql,1)
                    If Not (Rs.eof Or Rs.bof) Then
                        dbContents = UnsafeQuery(Rs("AGM_CONTENT"))
                        dbContents = Replace(Replace(Trim(dbContents),"<IMG ", "<IMG name='img_desc' "),"<img ", "<img name='img_desc' ")
                        dbContents = Replace(Replace(dbContents,"ja_va_sc","javascript"),"a_lert","alert")
                    End If
                    Rs.close
                    Set Rs = Nothing
                    Response.Write dbContents
                    %>
                    <!-- //모집요강 어드민 -->
                </div>
                <!-- //11월 -->

                <!-- 12월 -->
                <div class="cont-box tbl-box">
                    <!-- 모집요강 어드민 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 1053
                    Else '실서버
                        AGM_CD = 76
                    End If

                    strSql = " SELECT AGM_CONTENT FROM MR_ACA_GUIDE_MAS WITH(NOLOCK) WHERE AGM_IDX = " & AGM_CD
                    Set Rs = russelobjdb.sqlQuery(strSql,1)
                    If Not (Rs.eof Or Rs.bof) Then
                        dbContents = UnsafeQuery(Rs("AGM_CONTENT"))
                        dbContents = Replace(Replace(Trim(dbContents),"<IMG ", "<IMG name='img_desc' "),"<img ", "<img name='img_desc' ")
                        dbContents = Replace(Replace(dbContents,"ja_va_sc","javascript"),"a_lert","alert")
                    End If
                    Rs.close
                    Set Rs = Nothing
                    Response.Write dbContents
                    %>
                    <!-- //모집요강 어드민 -->
                </div>
                <!-- //12월 -->

                <!-- 1월 -->
                <div class="cont-box tbl-box on">
                    <!-- 모집요강 어드민 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 1075
                    Else '실서버
                        AGM_CD = 99
                    End If

                    strSql = " SELECT AGM_CONTENT FROM MR_ACA_GUIDE_MAS WITH(NOLOCK) WHERE AGM_IDX = " & AGM_CD
                    Set Rs = russelobjdb.sqlQuery(strSql,1)
                    If Not (Rs.eof Or Rs.bof) Then
                        dbContents = UnsafeQuery(Rs("AGM_CONTENT"))
                        dbContents = Replace(Replace(Trim(dbContents),"<IMG ", "<IMG name='img_desc' "),"<img ", "<img name='img_desc' ")
                        dbContents = Replace(Replace(dbContents,"ja_va_sc","javascript"),"a_lert","alert")
                    End If
                    Rs.close
                    Set Rs = Nothing
                    Response.Write dbContents
                    %>
                    <!-- //모집요강 어드민 -->

                </div>
                <!-- //1월 -->

            </div>
            <!-- //tab-wrap  -->
        </div>
        <!-- //inner02 -->
    </div>
    <p class="event-bc">
        <img src="<%=Application("img_path_russel")%>/russel_bc/2023/first/event_bc.jpg" alt="" usemap="#event_bg" /></a>
        <map name="event_bg">
            <area shape="rect" coords="915,593,1113,632" href="javascript:void(0)" onclick="window.open('https://russel.megastudy.net/intro/2023/first/popup.asp','','width=800,height=700,scrollbars=yes')" alt="" />
        </map>

    </p>
</div>

<script>
    $(function(){
        tabMenu('.bt-tab','.cont-box');

        // 1월 탭 막기
        /*$('.bt-tab a').eq(2).off('click').on('click',function(e){
            e.preventDefault()
            location.href='https://russelbc.megastudy.net/russel/info/notice/notice_view.asp?Code=26359&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1'
        });*/
    })
</script>