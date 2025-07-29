<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner02">
            
            <!-- 입학절차안내 -->
            <p class="mb90"><img src="<%=Application("img_path_russel")%>/russel_yt/2023/summer/cont00_tit02.png" alt="입학 등록 절차"></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span> 온라인 사전접수(마감)<br><a href="https://russelyt.megastudy.net/russel/info/waiting/list.asp?ClsCode=2" class="bt-apply" style="font-weight: 300;">온라인 대기 바로가기</a></p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span> 시간표 공지 및<br>실등록 안내</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span> 현장 실등록 &amp;<br>성적표 제출
                        </p>
                    </div>
                </div>
                <div class="step-box">  
                    <p class="tit">1) 온라인 사전 접수(전체 마감)</p>
                    <div class="box">
                        ■ 사전 접수 기간 안내(마감)<br>
                        -  4/18(화) 오후 2시<br>
                            ※ 선착순 온라인 접수, 사전등록금 290,000원<br><br>

                        ■ 유의사항<br>

                        - 사전예약금 접수는 선착순으로 진행되었으며, 현재 마감되어  온라인으로 대기 신청해주시기 바랍니다.<br>
                        - 예약금을 납부한 사전접수자들에 한해 실등록 안내 예정입니다. <br>
                        - 대기자는 사전접수자 등록 완료 후 잔여석에 따라 순차적으로 안내 예정입니다.



                    </div>
                    <p class="tit">2) 시간표 공지 및 실등록 안내
                    </p>
                    <div class="box">
                        * 시간표는 추후공지 됩니다.<br>
                        * 썸머스쿨 기간은 7/15(토) ~ 8/20(일) 5주 과정이며, 3주 이상은 필수로 사용해야 합니다. <br>
                        * 학사일정에 따른 바자관 입학일 조정은 불가합니다.
                    </div>
                    <p class="tit">3) 현장 실등록 &amp; 성적표 제출</p>
                    <div class="box">
                        - 공지해드린 실등록 기간 내 학원으로 방문하여 유효한 성적표 제출 및 신청서를 작성합니다.<br>
                        - 신청서 제출 및 단과 및 바른공부 자습전용관 비용 전체 결제해 주시면 최종 등록이 완료됩니다.

                    </div>
                </div>
            </div>
            <!-- //입학절차안내 -->
            <p class="mb60 mt70"><img src="<%=Application("img_path_russel")%>/russel_yt/2023/summer/cont00_tit01.png" alt="모집요강 및 장학혜택"></p>

            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 1221
            Else '실서버
                AGM_CD = 1243
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
    <!-- //cont00 -->
</div>