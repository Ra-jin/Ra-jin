
<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0250" Then '러셀 부천 %>
<div class="bg-green03">
    <p class="tit"><img src="<%=Application("img_path_russel")%>/russel_bc/2022/regular_go/tit_info09.png" alt="" /></p>
    <div class="cont-wrap02"><img src="<%=Application("img_path_russel")%>/russel_bc/2022/regular_go/cont03_img.png" alt="" /></div>
    <div class="cont-wrap02"><img src="<%=Application("img_path_russel")%>/russel_bc/2022/regular_go/cont04_img.jpg" alt="" /></div>
</div>
<% Else %>
<div class="bg-green02">
    <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/stit01_05.jpg" alt="" /></p>
    <!-- contents-wrap -->
    <div class="contents-wrap">
        <div class="contents-box">
            <img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/img_content01.jpg" alt="" />
            <div>
                <p><strong>메가X대성 더 프리미엄<br>모의고사</strong></p>
                <ul>
                    <li>메가스터디, 대성학원<br>콜라보 모의고사</li>
                    <li>전국 최다 인원 응시하는<br>모의고사</li>
                </ul>
            </div>
        </div>
        <div class="contents-box">
            <img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/img_content02.jpg" alt="" />
            <div>
                <p><strong>QUEL 모의고사</strong><br>최상위권 맞춤 실전 수능</p>
                <ul>
                    <li>메가스터디 최초<br>통합 모의고사</li>
                    <li>만족도 92%에 빛나는<br>최적의 모의고사</li>
                </ul>
            </div>
        </div>
        <div class="contents-box">
            <img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/img_content03.jpg" alt="" />
            <div>
                <p><strong>월간 장영진</strong><br>고퀄리티 수학 학습지</p>
                <ul>
                    <li>실전력 향상 위한<br>고퀄 자작문항 수록</li>
                    <li>필수 개념 및 문항 분석<br>월간 발행</li>
                </ul>
            </div>
        </div>

        <% If sCampusCode <> "CD0001" And sCampusCode <> "CD0245" And sCampusCode <> "CD0244" And sCampusCode <> "CD0340" And sCampusCode <> "CD0341" And sCampusCode <> "CD0247" Then '대치/강남/목동/분당/코어광주/코어대전 제외 %>
        <div class="contents-box">
            <img src="<%=Application("img_path_russel")%>/intro/2022/regular_go/img_content04.jpg" alt="" />
            <div>
                <p><strong>PICKEL (피켈)</strong><br>학종설계·내신관리</p>
                <ul>
                    <li>최상위권 대학 진학을<br>목표로 하는 학종설계 및<br>내신관리 프로그램</li>
                    <li>고등학교 저학년부터<br>학생부 종합 전형, 내신을<br>체계적으로 대비</li>
                </ul>
            </div>
        </div>
        <% end if %>
    </div>
    
    <% If sCampusCode = "INTRO" Then '인트로 %>
    <p class="r-txt">* 상기 콘텐츠는 러셀학원에서 2021년 시행된 콘텐츠이며, 학원별 운영 콘텐츠는 상이할 수 있습니다.</p>
    <% else %>
    <p class="r-txt">*상기 콘텐츠는 2021년 <% If sCampusCode = "CD0340" Or sCampusCode = "CD0341" Then '코어광주/코어대전 %>러셀학원에서<% end if %> 시행된 콘텐츠입니다.</p>
    <% end if %>
    <!-- //contents-wrap -->
</div>
<% End If %>