<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <p class="recruit-tit">러셀 영통 파이널 종합반<br><strong>모집개요</strong></p>
    <div class="tbl-box">
        <table class="tbl-type01 text-align-left">
            <colgroup>
                <col style="width: 18%;">
                <col style="width: 18%;">
                <col style="width: %;">
            </colgroup>
            <tbody>
                <tr>
                    <th class="bg-sky">모집 대상</th>
                    <td colspan="2">2024 파이널 종합반 (인문/자연계열)</td>
                </tr>
                <tr>
                    <th class="bg-sky">개강일</th>
                    <td colspan="2">인문/자연 : 10/7(월) 개강
                    </td>
                </tr>
                <tr>
                    <th class="bg-sky" rowspan="2">수업과목</th>
                    <td>자연계열</td>
                    <td>국어, 수학, 영어, 과탐(물리Ⅰ, 화학Ⅰ, 생명과학Ⅰ, 지구과학Ⅰ)</td>
                </tr>
                <tr>
                    <td>인문계열</td>
                    <td>
                        국어, 수학, 영어, 사탐(사회문화, 생활과윤리) <br>
                        ※ 사회문화 OR 생활과윤리 선택자만 종합반 등록 가능
                    </td>
                </tr>
                <tr>
                    <th class="bg-sky">접수 방법</th>
                    <td colspan="2">현장접수</td>
                </tr>
                <tr>
                    <th class="bg-sky">수강료</th>
                    <td colspan="2">132만원 (4주 기준)</td>
                </tr>
                <tr>
                    <th class="bg-sky">제출 서류</th>
                    <td colspan="2">
                        * 2024학년도 수능성적 증명서, 6월, 9월 평가원 모의고사 성적표 중 택 1<br>
                        * 내신성적증명서(1학년 1학기부터 3학년 1학기(중간/기말 포함 학기말)까지 성적 반영) 1부<br>
                        ※ 수능 성적표(또는 평가원 모의고사 성적표)와 내신성적표 중 택 1 제출<br>
                        ※ 반에 따라 6월 평가원 성적표 적용이 안되는 반이 있으므로 입학기준 확인 필요
                    </td>
                </tr>
            </tbody>
        </table>
    
    </div>
    <p class="recruit-tit">러셀 영통 파이널 종합반<br><strong>입학 절차 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>입학상담/ <br> 원서 접수</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>전형확인/ <br> 반편성</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>현장 등록</span>
        </li>
    </ul>
    <ul class="setp-diagram">
        <li>
            <div><strong>4</strong></div>
            <span>강좌 선택 <br> 및 등록</span>
        </li>
        <li>
            <div><strong>5</strong></div>
            <span>입학 및 개강</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit"> 1) 입학상담/원서접수</p>
            <ul class="list-dot m0 f14">
                <li>방문/전화/온라인 1:1 게시판 상담</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 전형확인/ 반 편성</p>
            <ul class="list-dot m0 f14">
                <li>전형 자격요건 확인</li>
                <li>모집 기준 상 반 편성</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 현장 등록</p>
            <ul class="list-base m0 f14">
                <li>① 입학신청서 작성</li>
                <li>② 성적표 제출</li>
                <li>
                    ③ 현장 카드 결제 / 또는 가상 계좌 발송 <br>
                    *미납 시 등록 취소
                </li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">4) 강좌 선택 및 등록</p>
            <ul class="list-dot m0 f14">
                <li>과목별 수업 안내</li>
                <li>등록한 수업은 개강 전까지 변경 및 취소 가능</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">5) 입학 및 개강</p>
            <ul class="list-dot m0 f14">
                <li>개강 전 OT 별도 안내</li>
            </ul>
        </div>
    </div>
    <p class="recruit-tit">러셀 영통 파이널 종합반<br><strong>입학 기준 및 장학혜택</strong></p>
    <div class="tbl-box">
        <div class="tab-wrap">
            <a href="javascript:void(0)" class="on"><strong>자연 계열</strong></a>
            <a href="javascript::void(0)"><strong>인문 계열</strong></a>
        </div>
    
        <div class="tab-cont on mt30">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5580
            Else '실서버
                AGM_CD = 1659
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
    
        <div class="tab-cont mt30">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5581
            Else '실서버
                AGM_CD = 1660
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