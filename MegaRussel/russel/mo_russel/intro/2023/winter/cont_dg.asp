<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<div class="recruit-wrap pb0 pt0">
  <!-- 모집 요강 및 지원혜택 -->
  <p class="recruit-tit js-tit">러셀 대구 윈터스쿨<br><strong>모집요강 및 지원혜택</strong></p>

  <div class="tbl-box">
    <!-- tab-wrap  -->
    <div class="tab-cont-wrap">
        <!-- bt-tab -->
        <div class="bt-tab">
            <a href="javascript:void(0)" class="on"><strong>1월 윈터스쿨</strong></a>
            <a href="javascript::void(0)"><strong>2월 윈터스쿨 PLUS</strong></a>
        </div>
        <!-- //bt-tab -->

        <div class="contents-box on">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 2338
            Else '실서버
                AGM_CD = 1362
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

        

        <div class="contents-box">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 2338
            Else '실서버
                AGM_CD = 1362
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

    </div>
    <!-- //tab-wrap  -->
</div>
</div>



<script>
    $(function(){
        tabMenu('.bt-tab','.contents-box');
    })

    $('.bt-tab a').eq(0).click(function(){

        $('.recruit-tit.js-tit').html('러셀 대구 윈터스쿨<br><strong>모집요강 및 지원혜택</strong>')

    });

    $('.bt-tab a').eq(1).click(function(){

        $('.recruit-tit.js-tit').html('러셀 대구 윈터스쿨 PLUS<br><strong>모집요강 및 지원혜택</strong>')

    });

</script>