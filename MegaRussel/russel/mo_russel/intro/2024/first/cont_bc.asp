<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <p class="recruit-tit">러셀 부천 재수생 우선선발반<br><strong>입학 절차 안내</strong></p>
    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 3364
        Else '실서버
            AGM_CD = 1389
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
        <!-- //모집요강 자동화 시스템 영역 -->

    </div>
    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 부천 재수생 우선선발반<br><strong>모집요강 및 지원혜택</strong></p>
    <a href="/russel_bc/2023/focus/index.asp"><img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2024/first/banner_special02.png" alt="N수 국수영 집중반"></a>
    <p class="mb50 mt20"><img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2024/first/banner_special.jpg" alt="HS반1 특별 혜택"></p>
    <div class="tbl-box">
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 3367
        Else '실서버
            AGM_CD = 1392
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
        <!-- tab-wrap  -->
        <!-- <div class="tab-cont-wrap"> -->
            <!-- bt-tab -->
            <!-- <div class="bt-tab">
                <a href="javascript:void(0)" class="on"><strong>12월</strong></a>
                <a href="javascript::void(0)"><strong>1~2월</strong></a>
            </div> -->
            <!-- //bt-tab -->
            <!-- 12월 -->
            <!-- <div class="contents-box on">
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 3366
                Else '실서버
                    AGM_CD = 1391
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
            </div> -->
            <!-- //12월 -->
            
            <!-- 1월 -->
            <!-- <div class="contents-box">
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 3367
                Else '실서버
                    AGM_CD = 1392
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
            </div> -->
            <!-- //1월 -->
        <!-- </div> -->
        <!-- //tab-wrap  -->
    </div>



    <!-- //모집요강 및 장학혜택 -->

</div>


<script>
    $(function(){
        tabMenu('.bt-tab','.contents-box');

        // // 1월 탭 막기
        // $('.bt-tab a').eq(2).off('click').on('click',function(e){
        //     e.preventDefault()
        //     // location.href='https://russelbc.megastudy.net/russel/info/notice/notice_view.asp?Code=26359&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1'
        // });
    })
</script>







<!-- <div class="tbl-box sns">
    <p class="tit">2025 재수생 우선선발반 <br> 모집요강 및 지원혜택은 <strong>추후 공개 예정</strong>입니다.</p>
    <div>
        <div class="txt">
            <p>학원 문자 알리미에 정보를 등록해주시면<br>
                누구보다 빠르게 러셀 부천 <strong>2024 재수생 우선선발반 소식</strong>을
                받으실 수 있습니다.
            </p>
            <a class="btn-black sns" href="javascript:fncAlarmPop();">학원 문자 알리미 신청하기</a>
        </div>
    </div>
</div> -->
