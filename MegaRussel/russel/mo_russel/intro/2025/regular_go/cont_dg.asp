<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->



<div class="recruit-wrap">
    <p><img src="<%=Application("img_path_russel")%>/m_russel/russel_dg/2025/regular_go/cont00.jpg" alt=""></p>
    <div class="inner">
        <!--연간 운영 계획-->
        <p class="recruit-tit pt0"><strong>연간 운영 계획</strong></p>
        <table class="tbl-plan-new typeB">
            <colgroup> 
                <col style="width:30%">
                <col style="width:23%">
                <col style="width:23%">
                <col style="width:23%">
            </colgroup>
            <tbody>
                <tr>
                    <th>모집 대상</th>
                    <td>고3</td>               
                    <td>고2</td>               
                    <td>고1</td>               
                </tr>
                <tr>
                    <th>1~2월</th>
                    <td colspan="3">윈터스쿨</td>
                </tr>
                <tr>
                    <th>3~6월</th>
                    <td colspan="3">재학생 정규반</td>
                </tr>
                <tr>
                    <th>7~8월</th>
                    <td colspan="3">썸머스쿨</td>
                </tr>
                <tr>
                    <th>9~11월</th>
                    <td>재학생 <br> 정규반</td>
                    <td>
                        재학생  <br>
                        정규반, <br>
                        고2  <br>
                        수능 시작반
                    </td>
                    <td>재학생 <br> 정규반</td>
                </tr>
                <tr>
                    <th>11~12월</th>
                    <td>-</td>
                    <td>
                        재학생 <br>
                        정규반, <br>
                        고2  <br>
                        수능 시작반
                    </td>
                    <td>재학생 <br> 정규반</td>
                </tr>
            </tbody>
        </table>
        <p class="color-gray-03 f11 text-align-right mt10">
            * 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며, <br> 변동 시 별도 안내드립니다.
        </p>


        <!-- 입학 절차 안내 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>입학상담/<br>
                원서접수</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>전형확인/<br>
                반 편성</span>
            </li>
        </ul>
        <ul class="setp-diagram">
            <li>
                <div><strong>3</strong></div>
                <span>강좌 선택 및<br>
                등록</span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>현장/<br>
                온라인 등록</span>
            </li>
            <li>
                <div><strong>5</strong></div>
                <span>입학 및 개강</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 입학상담/원서접수</p>
                <ul class="list-dot ml0">
                    <li>방문/전화/온라인 상담<br>
                       
                    </li>
                    <li>온라인 원서 접수</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 전형확인/반 편성</p>
                <ul class="list-dot m0 mt0">
                    <li> 성적표 제출
                    </li>
                    <li> 모집 기준 상 반 편성
                    </li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3)  강좌 선택 및 등록</p>
                <ul class="list-dot m0 mt0">
                    <li> 단과수업 등록
                    </li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4)  현장/온라인 등록</p>
                <ul class="list-dot m0 mt0">
                    <li>온라인 결제링크 발송</li>
                    <li> 미납 시 합격 취소
                    </li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">5)  입학 및 개강</p>
                <ul class="list-dot m0 mt0">
                    <li> 개강 전 OT 진행 예정
                    </li>
                </ul>
            </div>
        </div>

        <!-- 모집요강 및 지원혜택 -->
        <p class="recruit-tit"><strong>모집요강 및 장학혜택</strong></p>
        <div class="tab-cont-wrap">
            <div class="tab-wrap tab-wrap01">
                <a href="javascript:void(0)" class="on"><strong>고1
                </strong></a>
                <a href="javascript::void(0)"><strong>고2
                </strong></a>
                <a href="javascript::void(0)"><strong>고3
                </strong></a>
            </div>
        </div>
    
            <div class="tab-cont on mt30">
                <!-- 모집요강 자동화 시스템 영역 (고3) -->

                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 6796
                Else '실서버
                    AGM_CD = 1878
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
            <div class="tab-cont mt30" style="display: none;">
              
                <!-- 모집요강 자동화 시스템 영역 (고2) -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 6797
                Else '실서버
                    AGM_CD = 1879
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
    
            <div class="tab-cont mt30" style="display: none;">
               
                <!-- 모집요강 자동화 시스템 영역 (고1) -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 6798
                Else '실서버
                    AGM_CD = 1880
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
</div>
<script>
    $(function(){
        tabMenu('.tbl-box .tab-wrap','.tbl-box .tab-cont');
    })
</script>
