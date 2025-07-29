<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            
            <!-- 입학절차 *** a-process 스텝이 4개 이상일 경우 'step-over'클래스 추가 / 가이드 참고해 주세요-->
            <h3 class="tit">러셀 중계 파이널 정규반 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>단과 수업 선택 및 결제</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>성적표 제출 및 최종 등록</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>입학</p>
                </li>
            </ul>
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>단과 수업 선택 및 결제</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>등록 방법 : 온라인 또는 학원 방문 접수</li>
                            <li>등록 비용 : 단과 수업에 따라 상이 </li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>성적표 제출 및 최종 등록</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>성적표 : 반마다 성적표 제출 기준이 상이하므로, ‘2026 파이널 정규반’ 모집 요강을 꼭 확인해 주시기 바랍니다.</li>
                            <li>성적표 제출 : <span class="underline">최종 등록 시, 학원 방문하여 <strong class="red_txt bold2">성적표 사본(출력물) 제출(필수)</strong></span></li>
                        </ul>
                        <ul class="list-02 m0">
                            <li>제출 불가한 성적표 : (예) 꼬리표, 수기(오피스) 편집, 인적사항 확인 불가한 성적표</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>입학</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>OT : 개별 안내 </li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100">러셀 중계 파이널 정규반 <strong>모집 요강 & 지원 혜택</strong></h3>
            <div class="tbl-box coming-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_tobe.png" alt="" /></p>
                    <p class="coming-txt">
                        <strong>파이널 정규반의 <br>
                        모집 요강 및 지원 혜택</strong>은 추후 공개 예정입니다.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script>