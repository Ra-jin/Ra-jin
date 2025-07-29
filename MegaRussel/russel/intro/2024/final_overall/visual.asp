

<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tit01 = "모집 대상"
txt01 = "N수"
tit02 = "개강일"
txt02 = "9월 순차 개강"
tit03 = "접수 방법"
txt03 = "온라인 접수"
tit04 = "입학 문의"
txt04 = "온라인 상담"
visual_txt = "역대 가장 탁월한 입결*로 <br> 증명된 러셀에서 최상위권과 경쟁하세요!"

baja_txt01 = "강의실-바자관-급식을"

danka_txt02 = "평일 오전/오후 체계적인 과목 편성된 <br> 관리력이 강력한 선생님의 N수생 전용 단과"
danka_txt03 = "대학별 출제 경향이 반영된 <br> 모의논술 훈련 및 개별 첨삭 진행"

data_view_txt = ""

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
 
    Case "CD0249":  txtCampus = "러셀 영통"  '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"
                    visual_txt = "5년 연속 수원 지역 최상위권 입결 1위*, <br>러셀 영통에서 최상위권과 경쟁하세요!"
                    data_view_txt = "※ 수원 지역 학원_2020~2024학년도 의치한수약+서울대 최종 합격자 수 비교 기준 <br>(홈페이지 대입 실적 기준/2024.03.07 기준)"
                    txt02 = "10월 개강"
                    txt03 = "현장 접수 <br> <span class='fz14'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    icoEnd = "<strong>마감</strong>"

    Case "CD0257": txtCampus = "러셀 중계"  '중계
                    campusName = "russel_jg"
                    campusName02 = "t_jg"
                    visual_txt = "20-24 5년 최상위권 누적 입결 1위*,<br>러셀 중계에서 재원생들과 경쟁하세요!"
                    data_view_txt = "※ 강북 지역 학원_2020~2024학년도 의치한약수+서연고 누적 합격자 수 비교 기준 <br>(홈페이지 대입 실적 기준/2024.02.29 기준)"
                    txt02 = "9월 초 개강"
                    txt03 = "현장 접수 <br> <span class='fz14'>※ 모집요강 지원자격 해당자 순 접수</span>"

    Case "CD0342":  txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    visual_txt = "대구&middot;경북 지역 최상위권 입결 1위*로 증명된<br>러셀 대구에서 최상위권과 경쟁하세요!"
                    data_view_txt = "※ 대구·경북 지역 학원_2024학년도 의치한약수+서연고 최종 합격자 수 비교 기준 <br>(홈페이지 대입 실적 기준/2024.02.29 기준)"
                    txt02 = "10월 초 순차 개강"
                    txt03 = "온라인 접수 <a class='bt-apply' href=' https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=176'>원서접수 바로가기</a> <br> <span class='fz14'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    baja_txt01 = "강의실-바자관-자체 식당을 <br>"
                   

    Case "CD0349":  txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"
                    data_view_txt = "*2020-2024학년도 러셀에서 배출한 서울대 의예과, 메이저 의대, 전국 의예과, 의치한약수, 서울대/연세대/고려대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)"
                    txt02 = "10월 7일(월)"
                    txt03 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=176'>원서접수 바로가기</a> <br> <span class='fz14'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    baja_txt01 = "강의실-바자관-자체 식당을 <br>"
                  

    Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    visual_txt = "역대 빛나는 입결*로 증명된<br> 러셀CORE 광주에서 경쟁하는 것이 대입성공의 경쟁력입니다."
                    data_view_txt = "※ 2024학년도 광주 지역 재학생 수석 배출 : 24학년도 대학수학능력시험 응시한 광주 지역 재학생 표준점수 최고점 기준 <br>※ 메이저 의예과 9명 배출 : 메이저 의예 - 서울대/연세대/성균관대/가톨릭대/울산대 기준 <br>※ 러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2024.02.27 기준, 복수 대학 합격자 포함 / 단과 수강생 제외)"
                    txt01 = "N수&middot;고3"
                    txt02 = "10월 순차 개강"
                    txt03 = "현장 접수 <br> <span class='fz14'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    baja_txt01 = "강의실-바자관-자체 식당을 <br>"
                   


End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="inner">

            <div class="v-tit01">
                <% If sCampusCode = "CD0257" Then '중계 %>     
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final_overall/v_tit01.png" alt="목표 성적과 대학 합격을 위한 마지막 기회" /></p>
                <% Else %>
                <p><img src="<%=Application("img_path_russel")%>/intro/2024/final/v_tit01.png" alt="대학 합격을 위한 마지막 기회" /></p>
                <% End If %> 
            </div>  
            <div class="v-tit02">
                <% If sCampusCode = "CD0257" Then '중계 %>    
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final_overall/v_tit02_01.png" alt="최상위권 이과전문관N" /></p>
                <% Else %>
                <p><img src="<%=Application("img_path_russel")%>/intro/2024/final_overall/v_tit02_01.png" alt="최상위권 이과전문관N" /></p>
                <% End If %> 
                <p class="mt40"><img src="<%=Application("img_path_russel")%>/intro/2024/final_overall/v_tit02.png" alt="2025" /></p>
            </div>          
            <div class="v-tit03">
                <span><img src="<%=Application("img_path_russel")%>/intro/2024/final_overall/v_tit03_01.png" alt="파" /></span>
                <span><img src="<%=Application("img_path_russel")%>/intro/2024/final_overall/v_tit03_02.png" alt="이" /></span>
                <span><img src="<%=Application("img_path_russel")%>/intro/2024/final_overall/v_tit03_03.png" alt="널" /></span>               
            </div>  
            <div class="v-tit04">
                <span><img src="<%=Application("img_path_russel")%>/intro/2024/final_overall/v_tit04.png" alt="정규반" /></span>
            </div>   
            <div class="v-tit05">
                <p><%=visual_txt%></p>
            </div>   
            <div class="graphWrap">
                <div class="graph graph01" >
                  <img class="p-01" src="<%=Application("img_path_russel")%>/intro/2024/final_overall/v_graph01.png" alt="" />
                </div>
                <div class="graph graph02" >
                  <img class="p-02" src="<%=Application("img_path_russel")%>/intro/2024/final_overall/v_graph02.png" alt="" />
                </div>
                <div class="graph graph03" >
                  <img class="p-03" src="<%=Application("img_path_russel")%>/intro/2024/final_overall/v_graph03.png" alt="" />
                </div>
                <div class="graph graph04" >
                  <img class="p-04" src="<%=Application("img_path_russel")%>/intro/2024/final_overall/v_graph04.png" alt="" />
                </div>
                <div class="obj01">
                    <img class="" src="<%=Application("img_path_russel")%>/intro/2024/final_overall/obj01.png" alt="" />
                </div>
            </div>
            <div class="info-stxt">
                <span><i><img src="<%=Application("img_path_russel")%>/intro/2024/final/ico_info.png" alt="i"></i> 데이터 산출 기준 </span>
                <div class="data-view"><%=data_view_txt%></div>
            </div>
            <div class="v-info">
                <dl>
                    <dt><%=tit01%></dt>
                    <dd><%=txt01%></dd>
                </dl>
                <dl>
                    <dt><%=tit02%></dt>
                    <dd><%=txt02%></dd>
                </dl>
                <% If sCampusCode <> "intro" Then '인트로 제외 %>             
                <dl>
                    <dt><%=tit03%></dt>
                    <dd><%=txt03%></dd>
                </dl>              
                <% End If %>  
                <% If  sCampusCode = "CD0250"  Then '부천 %>      
                <dl>
                    <dt><%=tit04%></dt>
                    <dd><%=txt04%></dd>
                </dl>
                <% End If %> 
                <!-- <div>
                    <dl>
                        <dt><%=tit01%></dt>
                        <dd><%=txt01%></dd>
                    </dl>  
                    <% If sCampusCode = "CD0247" or sCampusCode = "CD0250" or sCampusCode = "CD0249" Then '강남/부천/영통 %>                  
                    <dl class="mt20">
                        <dt><%=tit03%></dt>
                        <dd><%=txt03%></dd>
                    </dl>    
                    <% End If %>                
                </div>
                <div>
                    <dl>
                        <dt><%=tit02%></dt>
                        <dd><%=txt02%></dd>
                    </dl>    
                    <% If sCampusCode = "CD0250" Then '부천 %>                  
                    <dl class="mt20">
                        <dt><%=tit04%></dt>
                        <dd><%=txt04%></dd>                      
                    </dl>   
                    <% End If %>                   
                </div> -->
            </div>     
        </div>  
        <% If sCampusCode = "CD0257" Then '중계 %>     
        <div class="bg"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final_overall/visual_bg.jpg" alt="" /></div>  
        <% Else %>
        <div class="bg"><img src="<%=Application("img_path_russel")%>/intro/2024/final_overall/visual_bg.jpg" alt="" /></div>  
        <% End If %>     
        
        <% If  sCampusCode = "CD0249"  Then '영통 %>
        <!--마감딱지-->
        <div class="ico-end" style="top:600px;right:calc(50% - 200px);z-index: 5;"><div><%=icoEnd%></div></div>
        <!--//마감딱지-->
        <% End If %>
	</div>

	
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap <%=campusName%>">
    <div class="fix-menu">
        <div class="menu">
            <a class="on" href="javascript:void(0);">파이널 종합반 모집 안내</a>
            <a href="javascript:void(0);">파이널 종합반 프로그램 </a>
        </div>
    </div>
</nav>
<!-- //fix-menu -->

