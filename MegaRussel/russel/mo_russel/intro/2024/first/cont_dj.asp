<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<style>
    .zoom-pop {position:fixed;top:0;left:0;width:100%;height:100%;background-color:rgb(0, 0, 0, .5);z-index:20;display:none;}
    .zoom-pop.on {display:block;}
    .zoom-pop div {position:absolute;top:50%;left:50%;transform:translate(-50%, -50%)}
    .zoom-pop .bt-close-tt {position:absolute;top:12px;right:12px;}
    .zoom-pop .bt-close-tt  img{width:16px;height:auto;}
</style>
<div class="recruit-wrap">
    <p class="recruit-tit">러셀CORE 대전 재수생 우선선발반<br><strong>입학 절차 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>원서접수</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>성적표 제출</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>강의 선택 <br> 및 결제</span>
        </li>
        <li>
            <div><strong>4</strong></div>
            <span>최종 등록<br>  확인</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit">1) 온라인 원서접수 후 사전예약금 납부<a href="javascript:void(0)" onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163';" class="bt-gray-s ml10">원서접수 바로가기</a></p>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 입학기준 확인 후 성적표 제출</p>
            <ul class="list-bullet m0 f14">
                <li>
                    성적표 제출 방식 : 별도 안내 예정
                </li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 1월 단과 강의 선택 및 결제</p>
            <ul class="list-bullet m0 f14">
                <li>단과 강의 11월 21일 이후 결제 가능</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">4) 우선선발반 최종 등록 확인</p>
        </div>
    </div>
    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀CORE 대전 재수생 우선선발반<br><strong>모집요강 및 지원혜택</strong></p>
    
    <div class="zoom-pop">
        <div style="width: 90%; overflow: hidden; padding: 4%; background: #fff;">
            <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
            <h3 class="s-tit text-align-center">N수 정규반 <strong>의무수강 안내</strong> </h3>
            <table class="tbl-type01 tbl-center" style="border-top: 0;">
                <colgroup>
                    <col style="width:12%;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                </colgroup>
                <thead>
                    <tr>
                        <th>반명</th>
                        <th>우선선발반 <br>수강강좌<br>[1~2월] </th>
                        <th>N수 정규반<br>수강강좌<br>[3월 이후]</th>
                        <th>바자관 이용료 <br>[1개월]</th>                                
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="bg-sky">HS</th>
                        <td>0강좌</td>
                        <td style="background-color: #FDEFEA ;">0강좌</td>
                        <td>300,000원</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">서의치</th>
                        <td>1강좌</td>
                        <td style="background-color: #FDEFEA ;">1강좌</td>
                        <td>620,000원</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">연고대</th>
                        <td>1강좌</td>
                        <td style="background-color: #FDEFEA ;">2강좌</td>
                        <td>620,000원</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">블루</th>
                        <td>1강좌</td>
                        <td style="background-color: #FDEFEA ;">3강좌</td>
                        <td>620,000원</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">그린</th>
                        <td>2강좌</td>
                        <td style="background-color: #FDEFEA ;">3강좌</td>
                        <td>620,000원</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="tbl-box" style="position: relative;">
        <a class='bt-gray-s' href='javascript:layerPop()' style="position: absolute; top:74%; right: 6vw; z-index: 2;">자세히 보기</a>
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 3380
        Else '실서버
            AGM_CD = 1405
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
    <!-- //모집요강 및 장학혜택 -->

</div>
<script>
    // 개방형 구조 팝업
	function layerPop() {
		$(".zoom-pop").addClass("on")
	}
	$(document).mouseup(function (e){
		var LayerPopup = $(".zoom-pop");
		if(LayerPopup.has(e.target).length === 0){
			LayerPopup.removeClass("on");
		}
	});

    $('.bt-close-tt').on('click',function(){
		$('.zoom-pop').removeClass('on')		
	})

</script>
