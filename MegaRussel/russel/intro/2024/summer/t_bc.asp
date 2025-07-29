<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00 russel_bc">
        <div class="inner">
            <!-- 입학 절차 안내 -->
            <h3 class="tit">러셀 부천 썸머스쿨 <strong>입학 절차 안내</strong></h3>
            <div class="tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:130px" />
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:18%" />
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th>구분</th>
                            <th>1. 온라인 원서접수<br></th>
                            <th class="pos-rel ptb30">2. 사전예약금 결제<br><span class="fz12 pos-abs pos-allgn" style="bottom:10px;">사전예약금을 결제해야 사전예약이 완료됩니다.</span> </th>
                            <th class="pos-rel ptb30">3. 성적표 제출<br><span class="fz12 pos-abs pos-allgn" style="bottom:10px;">사전예약자 대상으로 별도 안내 예정입니다.</span></th>
                            <th>4. 최종 등록<br></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-sky">신규생</th>
                            <td class="tal">
                                ※ 반드시 ‘학생’ 계정으로 진행해야 하며 학생 계정이 아닐 경우 사전예약이 취소됩니다.
                            </td>
                            <td class="tal">
                                <ul class="list-04">
                                    <li>원서접수 완료 시 결제페이지로 자동 연결됩니다.</li>
                                    <li>사전예약금은 추후 환불됩니다.</li>
                                </ul>
                            </td>
                            <td rowspan="2" class="tal">
                                <ul class="list-04">
                                    <li><strong class="red_txt">문서 번호가 작성된 성적증명서 제출은 필수</strong>입니다. (*온라인 모의고사 성적은 적용 불가)</li>
                                    <li>성적 증빙 자료를 제출하지 않을 경우, 그린반으로 배정됩니다. (*추후 반 변경 불가)</li>
                                </ul>                                
                            </td>
                            <td rowspan="2" class="tal">
                                <ul class="list-04">
                                    <li>모집요강 확인</li>
                                    <li>단과 필수 수강 시수 확인</li>
                                    <li>수업 선택 및 최종 등록</li>
                                </ul>    
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-sky">현재<br>재원생</th>
                            <td class="tal">현재 재원생은 온라인 원서접수 대상자가 아닙니다.</td>
                            <td class="tal">3층 입학처 문의</td>
                        </tr>                       
                    </tbody>
                </table>
                <ul class="list-02">
                    <li>사전예약금 결제로 연결되지 않고 원서접수가 완료되었을 경우, 팝업차단을 해제해 주세요. <br>
                        팝업차단 해제 후 [온라인 원서 접수] 버튼을 다시 클릭하면 사전예약금 결제로 연결됩니다. 
                    </li>
                </ul>
            </div>

            <h3 class="tit mt100">러셀 부천 썸머스쿨 <strong>모집요강 및 지원혜택</strong></h3>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4518
                Else '실서버
                    AGM_CD = 1607
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
</div>