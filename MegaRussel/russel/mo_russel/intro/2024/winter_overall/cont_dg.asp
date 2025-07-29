<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="inner">
    <div class="ico-end" style="top:36vw;right: 2vw;">
        <p style="font-size: 1.2rem;">전반 마감</p>
    </div>
    <p class="recruit-tit">윈터스쿨 종합반<br><strong>모집 개요</strong></p>
    <div class="tbl-box type01">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 5604
        Else '실서버
            AGM_CD = 1683
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
    <!-- 대구 원서 접수 바로가기 8월 12일 10시 전 -->
    <% if curYmdhmin < 202408121000 then %>
    <a href="javascript:void(0)" onclick="alert('8/12(월) 오전10시 오픈 예정입니다.')" class="btn-link mt20">원서접수 바로가기</a>
    <% Else %>
        <!-- 대구 원서 접수 바로가기 8월 12일 10시 이후 -->
        <% If InStr(LCase(fncRequestVariables("HTTP_HOST")) ,"dev.megastudy.net") > 0 Then 'next server%>
        <!-- 개발서버 -->
            <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.')" href="https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=174" class="btn-link mt20">원서접수 바로가기</a>    
        <% Else %>
        <!-- 실서버 -->
            <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.')" href="https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=174" class="btn-link mt20">원서접수 바로가기</a>      
        <% End If %>
    <% End If %>


    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">윈터스쿨 종합반<br><strong>입학 절차 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>입학상담/<br>원서접수</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>전형확인/<br>반 편성</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>현장/온라인<br>등록</span>
        </li>
    </ul>
    <ul class="setp-diagram">
        <li>
            <div><strong>4</strong></div>
            <span>강좌 선택 <br>및 등록</span>
        </li>
        <li>
            <div><strong>5</strong></div>
            <span>입학 및 <br>개강</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display:inline-block;margin-right:5px;">1) 입학상담/원서접수
                <!-- 대구 원서 접수 바로가기 8월 12일 10시 전 -->
                <% if curYmdhmin < 202408121000 then %>
                <a class="bt-gray-s" href="javascript:alert(`8/12(월) 오전10시 오픈 예정입니다.`);" style="padding: 4px 25px 4px 10px;">원서접수 바로가기</a>
                <% else %>
                <!-- 대구 8월 12일 10시 후 반영 -->
                    <% If InStr(LCase(fncRequestVariables("HTTP_HOST")) ,"dev.megastudy.net") > 0 Then 'next server%>
                    <!-- 개발서버 -->
                    <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.')" href="https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=174" class="bt-gray-s" style="padding: 4px 25px 4px 10px;">원서접수 바로가기</a>
                    <% Else %>
                    <!-- 실서버 -->
                    <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.')" href="https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=174" class="bt-gray-s" style="padding: 4px 25px 4px 10px;">원서접수 바로가기</a>
                    <% End If %> 
                <% end if %>
            </p>
            <ul class="list-dot m0 mt0">
                <li>방문/전화/온라인 상담</li>
                <li>온라인 원서 접수</li>
                <li>사전예약금 납부</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 전형확인/반 편성</p>
            <ul class="list-dot m0">
                <li>전형 자격요건 확인</li>
                <li>모집 기준 상 반 편성</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 현장/온라인 등록</p>
            <ul class="list-dot m0">
                <li>가상 계좌 발송/카드 결제</li>
                <li>미납 시 등록 취소</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">4) 강좌 선택 및 등록</p>
            <ul class="list-dot m0">
                <li>과목별 선택 수업 선택</li>
                <li>선택한 수업은 개강 전까지 변경 및 취소 가능</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">5) 입학 및 개강</p>
            <ul class="list-dot m0">
                <li>2025년 1월 개강</li>
                <li>개강 전 OT 별도 안내</li>
            </ul>
        </div>
    </div>

    <!-- 모집요강 및 장학혜택 -->
    <p class="recruit-tit">윈터스쿨 종합반<br><strong>입학기준 및 장학혜택</strong></p>
    
    <div class="tbl-box type02">
        
        <div class="tab-wrap tab-wrap01">
            <a href="javascript:void(0)" class="on"><strong>고3(자연계열)</strong></a>
            <a href="javascript::void(0)"><strong>고3 (인문계열)</strong></a>
            <a href="javascript::void(0)"><strong>고1</strong></a>
        </div>
        <!-- 모집요강 자동화 시스템 영역 -->
        <div class="tab-cont-wrap tab-cont-wrap01">
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 5670
        Else '실서버
            AGM_CD = 1750
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
        <!-- //모집요강 자동화 시스템 영역 -->
    </div>
    
    <p class="recruit-tit">윈터스쿨 종합반<br><strong>수업 구성</strong></p>
    <div class="tbl-box type02">
        <div class="tab-wrap tab-wrap02">
            <a href="javascript:void(0)" class="on"><strong>고3</strong></a>
            <a href="javascript::void(0)"><strong>고1</strong></a>
        </div>
        <div class="tab-cont-wrap tab-cont-wrap02">
            <div class="tab-cont tab-cont02 on">
                <p class="bold text-align-left mb10 mt20">■ 필수 수업 (17.5T)</p>
                <div class="tbl-scroll-x">
                    <table class="tbl-type01" style="width: 150%;">
                        <colgroup>
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>과목</th>
                                <th>국어</th>
                                <th>수학</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-wh">주간<br>
                                수업시간</th>
                                <td>3.5T</td>
                                <td>7T</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
        
                <p class="bold text-align-left mb10 mt40">■ 선택 수업 (최대 0T~7T)</p>
                <div class="tbl-scroll-x">
                    <table class="tbl-type01" style="width: 150%;">
                        <colgroup>
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>과목</th>
                                <th>국어특강<br>(언어와매체)
                                </th>
                                <th>영어</th>
                                <th>수리논술</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-wh">주간<br>
                                수업시간</th>
                                <td>3.5T</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="tab-cont tab-cont02">
                <p class="bold text-align-left mb10 mt20">■ 필수 수업 (21T)</p>
                <div class="tbl-scroll-x">
                    <table class="tbl-type01" style="width: 150%;">
                        <colgroup>
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>과목</th>
                                <th>국어</th>
                                <th>수학</th>
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-wh">주간<br>
                                수업시간</th>
                                <td>3.5T</td>
                                <td>7T</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
</div>
<script>
    $(function(){
        tabMenu('.type02 .tab-wrap01','.tab-cont-wrap01 .tab-cont');
        tabMenu('.type02 .tab-wrap02','.tab-cont-wrap02 .tab-cont');
    })
</script>