<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<style>
    .winter-wrap .tbl-01 tbody del{padding: 0; margin: 0;}
    .tab-cont-wrap .bt-tab.type02 a.on{background: #1a4ded;}
</style>
<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner02">
            <!-- 연간 운영 계획 -->
            <p class="mb60"><img src="<%=Application("img_path_russel")%>/russel_gn/2023/winter/cont00_tit01.png" alt=""></p>
            
            <table class="tbl-plan">
                <colgroup>
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                </colgroup>
                <thead>
                    <tr>
                    <th>1월</th>
                    <th class="on">2월<span>현재 모집중</span></th>
                    <th class="on">3~6월<span>현재 모집중</span></th>
                    <th>7~8월</th>
                    <th>9~11월</th>
                    <th>11~12월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    <td>윈터스쿨</td>
                    <td>윈터스쿨 PLUS<br><a href="https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=167">온라인 원서접수</a></td>
                    <td>재학생<br>최상위권반<br><a href="https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168">온라인 원서접수</a></td>
                    <td>썸머스쿨</td>
                    <td style="letter-spacing: -1px;">[고3] 파이널 정규반<br>
                        [고2, 고1] 재학생 최상위권반</td>
                    <td>[중3]<br>
                        프리 윈터스쿨</td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt">※ 입학 시기에 따라 모집요강 및 지원혜택이 다릅니다. 입학 시기에 해당하는 모집요강을 확인해주시기 바랍니다.<br>
                ※ 원서접수는 최초 입학 시 한번만 하시면 됩니다. (예: 1월 재원생은 2월 원서접수 불필요 / 재등록 별도 안내)   
            </p>

            <!-- 입학 절차 -->
            <p class="mt100 mb60"><img src="<%=Application("img_path_russel")%>/russel_gn/2023/winter/cont00_tit02.png" alt="입학절차"></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span>원서접수</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>성적표 제출</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span>강의 선택 및 결제</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>4</span>최종 등록</p>
                    </div>
                </div>
                
                <div class="tab-cont-wrap">
                    <div class="bt-tab type02 ">
                        <a href="javascript:void(0)" class="on">2월 윈터스쿨 PLUS</a>
                        <a href="javascript:void(0)" >1월 윈터스쿨</a>     
                    </div>
                    <div class="cont-box on">
                        <div class="step-box">
                            <p class="tit">1) 윈터스쿨 PLUS 원서접수 <a href="https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=167" class="btn-gray-s">온라인 원서접수</a></p>
                            <div class="box">
                                <ul class="shape-list mt5">
                                    <li>원서접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차가 안내됩니다.
                                    </li>
                                </ul>
                            </div>
                            <p class="tit">2) 성적표 제출 <a href="https://pf.kakao.com/_hKnRb" class="btn-gray-s ml_10">성적표 제출하기</a></p>
                            <div class="box">
                                <ul class="shape-list">
                                    <li><strong class="blue_txt">제출 방법 : 성적표 제출하기 버튼 클릭 > 러셀강남학원 입학처 채널 추가 > 상담원 채팅 > 성적표 이미지 파일 전송</strong></li>
                                    <li>문서 번호가 작성된 증명서 제출은 필수이며, 위조한 증명서로 판명될 경우 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                                    <li>성적표 확인 후 반편성이 확정되며, <strong class="blue_txt">성적표 미 제출 시 그린반으로 배정됩니다.</strong></li>
                                </ul>
                            </div>
                            <p class="tit">3) 강의 선택 및 결제</p>
                            <div class="box">
                                <ul class="shape-list">
                                    <li>강의 시간표가 확정되면 필수 수강시수에 따른 강의 등록 안내 드립니다.</li>
                                </ul>
                            </div>
                            <p class="tit">4) 최종 등록</p>
                            <div class="box">
                                <ul class="shape-list">
                                    <li>강의 등록이 완료되면 온라인으로 자습관 등록이 가능합니다.</li>
                                    <li class="red_txt">개강 전 입학 취소 시 자습관 및 단과 결제 비용은 전액 환불됩니다.</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="cont-box">
                        <div class="step-box">
                            <p class="tit">1) 원서접수</p>
                            <div class="box">
                                <p class="step-tit">① 온라인 원서접수 ② 사전 예약금 납부 <a href="https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158" class="btn-gray-s">원서접수 바로가기</a></p>
                                <ul class="shape-list mt5">
                                    <li>원서접수 마지막 단계에서 사전 예약금 (62만원)까지 결제해 주셔야 원서접수가 완료됩니다.<br>
                                        <p class="red_txt">(결제창은 팝업으로 안내됩니다. 결제창이 보이지 않는 경우, 팝업 허용 후 다시 원서접수 버튼을 눌러 주시면 됩니다.)</span></li>
                                    <li>원서접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차가 안내됩니다.</li>
                                </ul>
                                <p class="mt10"><strong>◈고2, 고1 모집 마감되어 <b class="underline">대기접수만 가능</b>합니다. 대기자는 사전예약금이 없습니다.</strong> <a href="https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158" class="btn-gray-s">대기자 접수</a></p>
                            </div>
                            <p class="tit">2) 성적표 제출 (10월) <a href="https://pf.kakao.com/_hKnRb" class="btn-gray-s ml_10">성적표 제출하기</a></p>
                            <div class="box">
                                <ul class="shape-list">
                                    <li><strong class="blue_txt">제출 방법 : 성적표 제출하기 버튼 클릭 > 러셀강남학원 입학처 채널 추가 > 상담원 채팅 > 성적표 이미지 파일 전송</strong></li>
                                    <li>문서 번호가 작성된 증명서 제출은 필수이며, 위조한 증명서로 판명될 경우 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                                    <li>성적표 확인 후 반편성이 확정되며, <strong class="blue_txt">성적표 미 제출 시 그린반으로 배정됩니다.</strong></li>
                                </ul>
                            </div>
                            <p class="tit">3) 강의 선택 및 결제 (11월)</p>
                            <div class="box">
                                <ul class="shape-list">
                                    <li>윈터특강 시간표가 확정되면 필수 수강시수에 따른 강의 등록 안내 드립니다.</li>
                                </ul>
                            </div>
                            <p class="tit">4) 최종 등록 (11월)</p>
                            <div class="box">
                                <ul class="shape-list">
                                    <li>강의 등록이 완료되면 온라인으로 자습관 등록이 가능합니다.</li>
                                    <li>자습관 등록 후 사전 예약금은 전액 환불됩니다.</li>
                                    <li class="red_txt">개강 전 입학 취소 시 사전 예약금 및 단과 결제 비용은 전액 환불됩니다.</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </div>


            <!-- 모집요강 및 장학혜택 -->
            <p class="mt100 mb90"><img src="<%=Application("img_path_russel")%>/russel_gn/2023/winter/cont00_tit03.png" alt="모집요강 및 장학혜택"></p>
            <div class="tab-cont-wrap">
                <div class="tbl-box">
                    <div class="bt-tab type02">
                        <a href="javascript:void(0)" class="on">2월 윈터스쿨 PLUS</a>
                        <a href="javascript:void(0)" >1월 윈터스쿨</a>     
                    </div>                    
                    <div class="cont-box on">                  
                        <!-- 모집요강 자동화 시스템 영역 -->
                        <%
                        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                        If IsDevSvr() = true Then   '개발서버
                            AGM_CD = 3359
                        Else '실서버
                            AGM_CD = 1384
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
                    <div class="cont-box">
                        <!-- 모집요강 자동화 시스템 영역 -->
                        <%
                        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                        If IsDevSvr() = true Then   '개발서버
                            AGM_CD = 2307
                        Else '실서버
                            AGM_CD = 1331
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

    </div>
    <!-- //cont00 -->
</div>
<script>    
    tabMenu('.tbl-box .type02','.tbl-box .cont-box')
    tabMenu('.step-wrap .type02','.step-wrap .cont-box')        
</script>