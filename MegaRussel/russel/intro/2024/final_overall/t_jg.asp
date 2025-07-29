<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<div class="cont js-cont russel_jg">
    <div class="cont00">
        <div class="inner02">

            <div class="tab-cont-wrap">
                <div class="bt-tab">
                    <a href="javascript:void(0)" class="on br-0"><strong>최상위권 이과전문관N</strong></a>
                    <a href="javascript::void(0)" class="bl-0"><strong>서&middot;연&middot;고 문과전문관</strong></a>
                    <a href="javascript::void(0)" class="bl-0"><strong>논술 전문관</strong></a>
                </div>

                <div class="cont-wrap">
                    <!-- 최상위권 이과전문관N -->
                    <div class="cont-box on">
                        <div class="inner03">
                            <%
                            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                            If IsDevSvr() = true Then   '개발서버
                                AGM_CD = 5595
                            Else '실서버
                                AGM_CD = 1674
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
                        </div>
                    </div>
                    <!-- 서연고 문과전문관 -->
                    <div class="cont-box">
                        <div class="inner03">
                            <%
                            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                            If IsDevSvr() = true Then   '개발서버
                                AGM_CD = 5596
                            Else '실서버
                                AGM_CD = 1675
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
                        </div>
                    </div>
                    <!-- 논술 전문관 -->
                    <div class="cont-box">
                        <div class="inner03">
                            <%
                            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                            If IsDevSvr() = true Then   '개발서버
                                AGM_CD = 5597
                            Else '실서버
                                AGM_CD = 1676
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(function(){
        tabMenu('.bt-tab','.cont-wrap .cont-box');
    })
</script>