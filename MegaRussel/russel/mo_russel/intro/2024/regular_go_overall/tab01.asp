<!-- cont01 -->
<div class="cont01 <%=campusCom%> js-cont-wrap js-cont">
    
    <% If campus_code = "INTRO" or campus_code = "CD0349" or campus_code = "CD0344" or campus_code = "CD0345" or campus_code = "CD0346" or campus_code = "CD0343" Then '인트로/울산/코어전주/코어창원/코어청주/코어원주 %>
    <h3><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont01_tit.jpg" alt=" 매해 더 나은 입결과 후기가 입증하고 있습니다." /></h3>
    <% Else %>
    <h3><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go_overall/cont01_tit.jpg" alt="매해 더 나은 입결과 후기가 입증하고 있습니다." /></h3>
    <% End If %>
    <div class="inner">
        <% If campus_code = "CD0247" Then '강남 %>
        <div class="result-box">
            <div class="info-stxt">
                <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_info.png" alt="" /></span>
                <div class="data-view">
                    러셀 강남학원 자습전용관 합격 결과 기준 <br>(18~23년, 단과수강생 제외,<br> 복수대학 합격자 포함)
                </div>
            </div>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont01_txt.jpg" alt="러셀 2023학년도 최상위권 입시 결과" /></p>
            <ul class="list-wrap">
                <li>
                    <div>
                        <p>최근 5개년 연속<br>
                        <strong>서울대 의예과</strong> 합격</p>
                    </div>
                    <ul class="stu-list">
                        <li>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont01_stu_lys.png" alt="이윤서" /></div>
                            <p>2023학년도 <br> <strong>이윤서 학생</strong></p>
                        </li>
                        <li>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont01_stu_w.png" alt="김OO" /></div>
                            <p>2023학년도 <br><strong>김OO 학생</strong></p>
                        </li>
                        <li>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont01_stu_w.png" alt="서OO" /></div>
                            <p>2022학년도 <br><strong>서OO 학생</strong></p>
                        </li>
                        <li>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont01_stu_m.png" alt="김OO" /></div>
                            <p>2021학년도 <br><strong>김OO 학생</strong></p>
                        </li>
                        <li>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont01_stu_yjh.png" alt="양지헌" /></div>
                            <p>2020학년도 <br><strong>양지헌 학생</strong></p>
                        </li>
                        <li>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont01_stu_w.png" alt="이OO" /></div>
                            <p>2019학년도 <br><strong>이OO 학생</strong></p>
                        </li>
                    </ul>
                </li>
                <li>
                    <div>
                        <p>의학계열 누적합격생<br>
                        <strong>548명</strong> 배출</p>
                    </div>
                    <ul class="stu-number type01">
                        <li>
                            <div><p>의예과 <br>    <strong>300명</strong></p></div>
                        </li>
                    </ul>
                    <ul class="stu-number type02">
                        <li>
                            <div><p>치의예과 <br><strong>67명</strong></p></div>
                        </li>
                        <li>
                            <div><p>한의예과 <br><strong>101명</strong></p></div>
                        </li>
                        <li>
                            <div><p>수의예과 <br><strong>28명</strong></p></div>
                        </li>
                        <li>
                            <div><p>약학과 <br><strong>52명</strong></p></div>
                        </li>
                    </ul>
                </li>
                <li>
                    <div>
                        <p>최상위권 대학<br>누적 합격 현황</p>
                    </div>
                    <ul class="stu-number">
                        <li>
                            <div><p>의치한수약 <br><strong>548명</strong></p></div>
                            <p>의예 300명, 치의예 67명,<br>
                            한의예 101명, 수의예 28명, 약학 52명</p>
                        </li>
                        <li>
                            <div><p>서연고 <br><strong>485명</strong></p></div>
                            <p>서울대 90명, 연세대 205명,고려대 190명
                            </p>
                        </li>
                        <li>
                            <div><p>서성한이중경외시<br>+ 카이스트<br><strong>1,024명</strong></p>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <% ElseIf campus_code = "CD0001" Then '대치 %>
        <div class="result-box">
            <div class="info-stxt">
                <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_info.png" alt="i" /></span>
                <div class="data-view">                   
                    1) 2018, 2020학년도 수능 실성적 기준 <br>
                    2) 2021학년도 수능 실성적 기준 <br>(*표준점수/백분위 합 기준) <br>
                    3) 2023학년도 러셀 대치 재원생의 합격자 기준 <br>(*복수 대학 합격자 및 중복 합격자 포함)                        
                </div>
            </div>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont01_txt.jpg" alt="러셀 2023학년도 최상위권 입시 결과" /></p>
            <ul class="list-wrap">
                <li>
                    <div>
                        <p>2018/2020<sup>1)</sup><br>
                        <strong>수능 만점자 배출</strong></p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>2021<sup>2)</sup><br>
                        <strong>수능 전국 수석 배출</strong></p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>2023 대입<sup>3)</sup><br>
                        <span>
                            서울대 의예과 4명 포함, <br> 
                            의/치/한/수/약 & 서/연/고
                        </span> <br>
                        <strong>274명 합격</strong></p>
                    </div>
                </li>
            </ul>
        </div>
        <% ElseIf campus_code = "CD0250" Then '부천 %>
        <div class="result-box bc">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont01_txt.jpg" alt="" /></p>
            
            <div class="stu-list">
                <div class="stu-box">
                    <div class="left">                       
                        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/review_stu_ksm.png" alt="강수민" />
                    </div>
                    <div class="right">
                        <div class="txt-wrap">
                            <div><span>2023</span>  <strong>수시 6관왕</strong></div>                          
                            <p>서울대, 연세대, 고려대, <br>서강대, 한양대 합격</p>
                            <p><strong>러셀 부천 HS반 강수민</strong></p>                        
                        </div>
                        
                        <div class="logo-wrap">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/logo_seoul.png" alt="" />
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/logo_ys.png" alt="" />
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/logo_gr.png" alt="" />
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/logo_sg.png" alt="" />
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/logo_hy.png" alt="" />
                        </div>
                    </div>
                </div>
                <p>* 서강대 2개 전형 합격</p>
            </div>
            <div class="stu-list">
                <div class="stu-box">
                    <div class="left">                       
                        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/review_stu_pse.png" alt="박성은" />
                    </div>
                    <div class="right">
                        <div class="txt-wrap">
                            <div><span>2023</span>  <strong>수시 3관왕</strong></div>                          
                            <p>연세대, 고려대 <br>
                                서강대 합격
                            </p>
                            <p><strong>러셀 부천 HS반 박성은</strong></p>                        
                        </div>
                        
                        <div class="logo-wrap">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/logo_ys.png" alt="" />
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/logo_gr.png" alt="" />
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/logo_sg.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="stu-list">
                <div class="stu-box">
                    <div class="left">                       
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/silhouette.png" alt="" />
                    </div>
                    <div class="right">
                        <div class="txt-wrap">
                            <div><span>2024</span></div>                          
                            <p style="font-size: 4vw; color: #15AC6A; font-weight: bold;">서울대 의예과 합격</p>
                            <p><strong>러셀 부천 HS반 유OO</strong></p>                        
                        </div>
                        
                        <div class="logo-wrap" style="height: 12vw;">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/logo_seoul.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>


  
        </div>
        <% ElseIf campus_code = "CD0244" Then '분당 %>
        <div class="result-box">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont01_txt.jpg" alt="러셀 중계 2023학년도 대입 합격 현황" /></p>
            <ul class="num-list gold">
                <li>
                    <p class="pb0">
                        의예과<br>
                        <strong>57</strong><span>명</span>
                    </p>
                    <div class="sub-txt">(서울대 의예과 1명 포함)</div>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        치의예과<br>
                        <strong>4</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        한의예과<br>
                        <strong>5</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        수의예과<br>
                        <strong>7</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        약학대<br>
                        <strong>14</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        서울대<br>
                        <strong>20</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        연&middot;고대<br>
                        <strong>84</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        서&middot;성&middot;한&middot;이<br>
                        <strong>105</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        중&middot;경&middot;외&middot;시<br>
                        <strong>118</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <p class="r-txt">
                ※ 러셀 분당 바른공부 자습전용관 재원생 기준<br>
                (복수 대학 합격자 및 수시/정시 중복 합격자 포함, 단과 수강생 미포함)
            </p>
        </div>
        <% ElseIf campus_code = "CD0246" Then '센텀 %>
        <div class="result-box">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont01_txt.jpg" alt="러셀 센텀 2023학년도 대입 합격 현황" /></p>
            <ul class="num-list gold m-mt5">
                <li>
                    <p>
                        의예과<br>
                        <strong>67</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        치/한/약/수<br>
                        <strong>39</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        서연고<br>
                        <strong>38</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        서성한이<br>
                        <strong>43</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        중경외시<br>
                        <strong>55</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        건동홍숙<br>
                        <strong>17</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        이공계특성화<br>
                        <strong>4</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        경찰대&middot;사관학교<br>
                        <strong>4</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        교원&middot;교육대<br>
                        <strong>6</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        부산대&middot;경북대<br>
                        <strong>75</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <p class="r-txt">※ 러셀 센텀학원 바른공부 자습전용관 재원생 23학년도 합격자 기준<br>
                (단과 수강생 제외, 복수대학 합격자 포함)</p>
        </div>

        <div class="graph-wrap">
            <div class="graph-swiper g01 swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont01_graph_img01.png" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont01_graph_img02.png" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont01_graph_img03.png" alt="" /></div>
                </div>
                <div class="gp01"></div>
            </div>
        </div>

        <div class="result-box">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont01_txt02.jpg" alt="최상위권의 선택! 러셀 센텀 4개년 누적 입결 현황" /></p>
            <ul class="num-list gold m-mt5">
                <li>
                    <p>
                        의예과<br>
                        <strong>176</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        치/한/약/수<br>
                        <strong>125</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        서연고<br>
                        <strong>127</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        서성한이<br>
                        <strong>165</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        중경외시<br>
                        <strong>168</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        건동홍숙<br>
                        <strong>75</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        이공계특성화<br>
                        <strong>20</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        경찰대&middot;사관학교<br>
                        <strong>13</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        교원&middot;교육대<br>
                        <strong>39</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        부산대&middot;경북대<br>
                        <strong>234</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <p class="r-txt">※ 러셀 센텀학원 바른공부 자습전용관 재원생 20-23학년도 합격자 기준<br>
                (단과 수강생 제외, 복수대학 합격자 포함)</p>
        </div>
        <% ElseIf campus_code = "CD0249" Then '영통 %>
        <div class="result-box">
            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont01_txt.jpg" alt="합격을 위한 최선의 선택! 러셀 영통 2020~2023학년도 대입 합격 현황" /></p>
            <ul class="num-list gold">
                <li>
                    <p>
                        의 &middot; 치 &middot; 한 &middot; 수 &middot; 약<br>
                        <strong>165</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        서울대<br>
                        <strong>52</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        SKY<br>
                        <strong>204</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold type02">
                <li>
                    <p>
                        서 &middot; 성 &middot; 한 &middot; 이<br>
                        <strong>155</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        중 &middot; 경 &middot; 외 &middot; 시<br>
                        <strong>163</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold type02">
                <li>
                    <p>
                        교대 &middot; 경대사관 <br> &middot; 특성화대<br>
                        <strong>60</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        주요 15개 대<br>
                        <strong>608</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <p class="r-txt">* 2020~2023 러셀 영통 바른공부 자습전용관 재원생 기준<br> (2023.03.24 기준)
            </p>
        </div>

        <% ElseIf campus_code = "CD0257" Then '중계  %>
        <div class="result-box">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go_overall/cont01_txt.jpg" alt="러셀 중계 2023학년도 대입 합격 현황" /></p>
            <ul class="num-list gold">
                <li>
                    <p>
                        서울대<br>
                        <strong>의예과</strong>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        서울대<br>
                        <strong>14</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        의치한수약<br>
                        <strong>40</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        서연고<br>
                        <strong>61</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        서성한이<br>
                        <strong>63</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        중경외시<br>
                        <strong>40</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <p class="r-txt">
                ※ 2023학년도 러셀 중계 바른공부자습전용관 재원생 기준<br>
                중복대학 합격자수 포함 (2023년 2월 16일 기준)
            </p>
        </div>
        <% ElseIf campus_code = "CD0248" Then '평촌  %>
        <div class="result-box">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont01_txt.jpg" alt="대입성공을 위한 최선의 선택! 러셀 평촌 2023학년도 대입 합격 현황" /></p>
            <ul class="num-list gold">
                <li>
                    <p>
                        서울대<br>
                        <strong>15</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        의약학계열<br>
                        <strong>59</strong><span>명</span>
                    </p>
                </li>
            </ul>

            <ul class="num-list silver type01">
                <li>
                    <p>
                        연세대<br>
                        <strong>25</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        고려대<br>
                        <strong>30</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list silver type02">
                <li>
                    <p>
                        서강대<br>
                        <strong>17</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        성균관대<br>
                        <strong>32</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        한양대<br>
                        <strong>18</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list silver type03">
                <li>
                    <p>
                        중앙대<br>
                        <strong>40</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        한국외대<br>
                        <strong>9</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        경희대<br>
                        <strong>26</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        특성화대<br>
                        <strong>11</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <p class="r-txt">* 2022년 러셀 평촌 바른공부 자습전용관 재원생 기준</p>
        </div>
        <% ElseIf campus_code = "CD0342" Then '대구  %>
        <div class="result-box">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont01_txt.jpg" alt="결과로 증명하는 러셀 대구  2023학년도 대입 합격 현황" /></p>
            <ul class="num-list gold">
                <li>
                    <p>
                        <strong>4</strong><br>
                        서울대 의예
                    </p>
                </li>
                <li>
                    <p>
                        <strong>3</strong><br>
                        연세대 의예
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        <strong>9</strong><br>
                        메이저 의예
                    </p>
                    <div class="sub-txt lh14">
                        (서울대, 연세대,<br> 성균관대,
                        가톨릭대,<br> 울산대 기준)
                    </div>
                </li>
                <li>
                    <p>
                        <strong>70</strong><br>
                        전국 의예
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        <strong>49</strong><br>
                        치&middot;한&middot;수&middot;약학
                    </p>
                </li>
                <li>
                    <p>
                        <strong>28</strong><br>
                        서&middot;연&middot;고
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        <strong>21</strong><br>
                        서성한이 <br>과학기술원
                    </p>
                </li>
                <li>
                    <p>
                        <strong>49</strong><br>
                        경북대
                    </p>
                    <div class="sub-txt">(*의약학계열 30명)

                    </div>
                </li>
            </ul>
            <div class="info-stxt">
                <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_info.png" alt="i" /></span>
                <div class="data-view">
                    *2023년 러셀 대구 바른공부 자습전용관 재원생 기준 <br>
                    (복수 대학 합격자 및 수시 중복 합격자 포함, 단과 수강생 미포함<br>
                    * 24.01.01 기준이며, 지속적으로 업데이트 될 예정입니다.                    
                </div>
            </div>
        </div>
        <div class="review-v-list">
            <div class="p-info">
                <div>
                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_jjh.png" alt="장재훈" /></span>
                    <a href="javascript:CastPopup('https://tv.naver.com/v/45182289');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play03.png" alt="" /></a>
                </div>
                <dl>
                    <dt><div>2024</div>
                    </dt>
                    <dd><strong>러셀 대구 2024 수능 고득점자</strong> <br> HS반 장재훈
                        <br>
                        <span>재원 기간 23년 1월~수능까지</span>
                    </dd>
                </dl>
            </div>
            <div class="p-box">
                <div class="b-info">
                    <div>
                        <ul>
                            <li><strong>2024학년도 297</strong> </li>
                            <li>6평/9평 290</li>
                        </ul>
                        <p>백분위 70% 상승</p>
                    </div>
                </div>
            </div>
            <table class="tbl-type01 tb-info">
                <colgroup>
                    <col style="width: 20%;">
                    <col style="width: %;">
                    <col style="width: %;">
                    <col style="width: %;">
                    <col style="width: %;">
                </colgroup>
                <thead>
                    <tr class="low">
                        <th>구분</th>
                        <th>국어</th>
                        <th>수학</th>
                        <th>탐구</th>
                        <th>총합</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><strong>2024 수능</strong></td>
                        <td><strong>100</strong></td>
                        <td><strong>99</strong></td>
                        <td><strong>98</strong></td>
                        <td><strong>297</strong></td>
                    </tr>
                    <tr>
                        <td>6평</td>
                        <td>99</td>
                        <td>96</td>
                        <td>95</td>
                        <td>290</td>
                    </tr>
                    <tr>
                        <td>9평</td>
                        <td>100</td>
                        <td>99</td>
                        <td>91</td>
                        <td>290</td>
                    </tr>
                </tbody>
            </table>
            <div class="p-review">
                <p class="tit">“고3이 학교에서 공부하는 집중력과 <br> 시간의 한계를 극복하다.”
                </p>
                <p class="txt">
                    담임선생님께서 최상위 면학분위기를 조성해주셨습니다. <br>
                    적당한 긴장감을 유지해주고, 시기에 맞는 입시정보를 제공해주셔서 큰 도움이 되었습니다.<br>
                    또 개개인에 맞는 조언과 충고로 내 상태를 되돌아보고 개선하는데 큰 도움이 되었습니다.        
                </p>
            </div>
        </div>
        <div class="review-v-list">
            <div class="p-info">
                <div>
                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_jjw.png" alt="장준우" /></span>
                    <a href="javascript:CastPopup('https://tv.naver.com/v/45181964');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play03.png" alt="" /></a>
                </div>
                <dl>
                    <dt><div>2024</div>
                    </dt>
                    <dd><strong>연세대 경영학과 </strong>합격 <br> HS반 장준우
                        <br>
                        <span>재원 기간 23년 2월~수능까지</span>
                    </dd>
                </dl>
            </div>
            <div class="p-box">
                <div class="b-info">
                    <div>
                        <ul>
                            <li><strong>2024학년도 288</strong> </li>
                            <li>9평 265</li>
                        </ul>
                        <p>백분위 65.7% 상승</p>
                    </div>
                </div>
            </div>
            <table class="tbl-type01 tb-info">
                <colgroup>
                    <col style="width: 20%;">
                    <col style="width: %;">
                    <col style="width: %;">
                    <col style="width: %;">
                    <col style="width: %;">
                </colgroup>
                <thead>
                    <tr class="low">
                        <th>구분</th>
                        <th>국어</th>
                        <th>수학</th>
                        <th>탐구</th>
                        <th>총합</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><strong>2024 수능</strong></td>
                        <td><strong>98</strong></td>
                        <td><strong>93</strong></td>
                        <td><strong>97</strong></td>
                        <td><strong>288</strong></td>
                    </tr>
                    <tr>
                        <td>9평</td>
                        <td>91</td>
                        <td>88</td>
                        <td>86</td>
                        <td>265</td>
                    </tr>
                </tbody>
            </table>
            <div class="p-review">
                <p class="tit">“쾌적한 환경과<br> 긍정적인 경쟁심을 갖게 해줍니다.”
                </p>
                <p class="txt">
                    독서실처럼 칸막이가 아닌 개방형 구조로 설계된 바른공부 자습전용관은 주위 열심히 공부하는 학생들의 모습이 보이는 점이 좋았습니다.
                    이는 긍정적인 경쟁심을 갖게 만들어주었습니다.    
                </p>
            </div>
        </div>
        <% ElseIf campus_code = "CD0245" Then '목동 %>
        <div class="result-box">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont01_txt.jpg" alt="대입성공을 위한 최선의 선택! 러셀 평촌 2023학년도 대입 합격 현황" /></p>
            <ul class="num-list gold">
                <li>
                    <p>
                        의예과<br>
                        <strong>53</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        치한수<br>
                        <strong>28</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        약학<br>
                        <strong>22</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        카이스트<br>
                        <strong>3</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold type02">
                <li>
                    <p>
                        서울대<br>
                        <strong>16</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        연세대<br>
                        <strong>32</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold type02">
                <li>
                    <p>
                        고려대<br>
                        <strong>36</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        주요대학<br>
                        <strong>588</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <p class="r-txt">* 2022 - 2023학년도 의치한수약+서연고 최종 합격자 수 기준<br>(홈페이지 대입 실적 기준)</p>
        </div>
        <% ElseIf campus_code = "CD0340" Then '코어광주 %>
        <div class="result-box">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont01_txt.jpg" alt="" /></p>
            <p class="result-txt02 mb15"><strong>러셀CORE 광주 2024학년도 대학수학능력시험<sup>1)</sup></strong></p>
            <ul class="list-wrap">
                <li>
                    <div>
                        <p><strong>광주지역<br>
                        재학생 수석 배출</strong></p>
                    </div>
                </li>
                <li>
                    <div>
                        <p><strong>서울대 의예과<br>2명 합격</strong></p>
                    </div>
                </li>
            </ul>
            <p class="result-txt02"><strong>러셀CORE 광주 2023학년도 합격생 현황<sup>2)</sup></strong></p>
            <p class="result-txt">의학계열 <strong>94명</strong>, SKY <strong>35명</strong> 합격</p>
            <ul class="num-list gold">
                <li>
                    <p>
                        의예과<br>
                        <strong>48</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        치의예<br>
                        <strong>6</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        약학과<br>
                        <strong>30</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        한의예<br>
                        <strong>4</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        수의예<br>
                        <strong>6</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        SKY<br>
                        <strong>35</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <div class="info-stxt">
                <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_info.png" alt="i" /></span>
                <div class="data-view">
                    1) 2024학년도 러셀CORE 광주 재원생의 수능 성적 및 대학 합격 결과  (2023-12-18 기준)<br>
                    2) 2023학년도 러셀CORE 광주 재원생의 합격 결과 기준 <br>
                     - 러셀CORE 광주 의치한수약 배출 94명(연의 2명, 고의 3명, 중복 합격자 포함) <br>
                     - 러셀CORE 광주 재원생 서울대&middot;연세대&middot;고려대 최종 합격자 35명 기준(의예과 5명, 중복 합격자 포함)   <br>
                     - 2023.02.28 기준                    
                </div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0341" Then '코어대전 %>
        <div class="result-box">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont01_txt.jpg" alt="결과로 증명하는 러셀 대전 러셀 대전 2023학년도 대입 합격 현황" /></p>
            <ul class="num-list silver">
                <li>
                    <p>
                        2023학년도<br>
                        <strong>서울대학교 의예과</strong><br>
                        합격생 배출
                    </p>
                </li>
                <li>
                    <p>
                        2023학년도<br>
                        <strong>연세대학교 의예과</strong><br>
                        합격생 배출
                    </p>
                </li>
            </ul>
            <ul class="num-list silver">
                <li>
                    <p>
                        2023학년도<br>
                        최종합격 <br>
                        의/치/한/약/수 <strong>74명</strong>
                    </p>
                </li>
                <li>
                    <p>
                        2023학년도<br>
                        최종합격 <br>
                        SKY <strong>44명</strong>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        의예과<br>
                        <strong>42</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        치의예<br>
                        <strong>6</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        약학과<br>
                        <strong>15</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        한의예<br>
                        <strong>6</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        수의예<br>
                        <strong>5</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        SKY<br>
                        <strong>44</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <div class="info-stxt">
                <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/ico_info.png" alt="i" /></span>
                <div class="data-view">
                    ※ 최종 업데이트 : 2023-02-23 기준ㅣ<br>2023학년도 대입에 합격한 러셀CORE 대전 재원생의 결과<br>(단과 수강생 제외/복수대학 합격자 포함)<br>
                    ※ 본 결과는 최종 합격자를 기준으로 집계하였음
                </div>
            </div>
        </div>
        <% Else %>
        <div class="prove-wrap">
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont01_txt01.jpg" alt="" /></div>
            <div class="graph">
                <div class="m-img60"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont01_graph01_tit01.png" alt="" /></div>
                <div class="m-img50 m-mt10 graph-bar">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont01_graph01_01.png" alt="" />
                </div>
                <p class="arr-top"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/img_arrow.png" alt="" /></p>
            </div>
            <div class="graph">
                <div class="m-img60"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont01_graph01_tit02.png" alt="" /></div>
                <div class="m-img50 m-mt10 graph-bar">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont01_graph01_02.png" alt="" />
                </div>
                <p class="arr-top"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/img_arrow.png" alt="" /></p>
            </div>
            <!-- 데이터 산출 기준-->
            <div class="l-pop m-mt5">
                <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span>i</span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    <div class="list-bullet">
                        1) 2022년, 2023년 러셀 전체 바자관 3월 재학생 재원생의 반명 기준 수강료 완납&분납 수강인원 비교 시 증가율 <br>
                            - 반별 입학 기준  :  HS반 - 전국 모의고사  전 과목 1등급(한국사, 제2외국어 제외),  서울대 &middot; 의치대반 - 국수영 또는 국수탐(1) 3등급 이내<br>
                            - 학원마다 반별 입학 기준은 상이하며,  상세 내용은 각 학원 홈페이지에서 확인하실 수 있습니다.<br>
                        2) 2021년, 2022년 러셀 전체 바자관 고3 재원생 중 수능 성적 확인이 가능한 인원의 국수탐(2) 등급 합 비교 시 인원 증가율 

                    </div>
                </div>
            </div>
            <!-- //데이터 산출 기준 -->
        </div>

        <div class="prove-wrap graph_item01">
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont01_txt02.png" alt="" /></div>
            <div class="m-mt10">
                <div style="position:relative;">
                    <div class="graph-bar">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont01_graph.png" alt="" />
                    </div>
                    <p class="arr-top"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/img_arrow03.png" alt="" /></p>
                </div>
                <div class="result-box type06 m-mt10">
                    <ul class="list-wrap">
                        <li>
                            <div>
                                <p>2018~2021 <b>4년 연속</b><sup>3)</sup><br>
                                <strong>수능 만점자& 전국 수석 배출</strong></p>
                            </div>
                        </li>
                        <li>
                            <div>
                                <p>2023학년도 <b>메이저 의대</b><sup>4)</sup><br>
                                <strong class="big-txt">68</strong>명</p>
                            </div>
                        </li>
                        <li>
                            <div>
                                <p>2023학년도 <b>전국 의예과</b><sup>4)</sup><br>
                                <strong class="big-txt">497</strong>명</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- 데이터 산출 기준-->
                <div class="l-pop m-mt5">
                    <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span>i</span></a>
                </div>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        <div class="list-bullet">
                            1) 2020-2024학년도 러셀에서 배출한 서울대 의예과 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2023-12-26 기준) <br>
                            2) 2024학년도 수시 결과 (러셀 대구 4명, 러셀 대치 4명, 러셀 부천 1명, 러셀 분당 1명, 러셀 평촌 1명, 러셀CORE  광주 2명, 러셀 CORE 대전 3명 배출) <br>
                            3) 수능 만점자 및 전국 수석(표준점수/백분위 합 기준) : 러셀 전체 학원 재원생의 2018~2021학년도 수능 실채점 기준 (러셀 강남 1명, 러셀 대치 3명, 러셀 분당 2명) <br>
                            4) 2023학년도 러셀 전체 학원에서 배출한 메이저 의대, 전국 의예과 합격자 수 (단과 수강생 제외/복수대학 합격자 포함) (2023-02-28 기준) <br>
                            ※ 2024학년도 대입 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될  예정입니다.                          
                        </div>
                    </div>
                </div>
                <!-- //데이터 산출 기준 -->
            </div>
        </div>
        <% End If %>
    </div>
</div>
<!-- cont02 -->
<% If campus_code <> "CD0342" Then '대구 제외 %>
<div class="cont02 js-cont <%=campusCom%>">    

    <div class="review-wrap">
        <% If campus_code <> "INTRO" and campus_code <> "CD0349" and campus_code <> "CD0247" and campus_code <> "CD0344" and campus_code <> "CD0345" and campus_code <> "CD0346" and campus_code <> "CD0343" Then '인트로/울산/강남/코어전주/코어창원/코어청주/코어원주 제외 %>
        <h3 data-aos="flip-up">
            <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go_overall/cont02_txt01.jpg" alt="최상위권 대학 진학에 성공했습니다." />
        </h3>
        <% End If %>
        <% If campus_code = "CD0247" Then '강남 %>
        <div class="inner">
            <div class="sl-card card-swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p>충남대 의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 강남 신호영</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_shy.png" alt="신호영" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/35106640');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    개방형 구조로 되어 있어 더 집중할 수 있었습니다.
                                </p>
                                <p class="txt">
                                    <strong>바른공부 자습전용관은 넓고 탁 트인 개방형 구조</strong>여서 주변 학생들이 잘 보입니다. 그렇기에 <strong>혼자가 아니라 같이 공부한다는 생각이 들었고, </strong>혼자서 공부할 때보다 잡생각도 줄고 같이 공부에 매진할 수 있었습니다. 
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p>서울대 언론정보학과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 강남 표혜림</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_phr02.png" alt="표혜림" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34801844');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    바자관의 학습 환경은 최고입니다.
                                </p>
                                <p class="txt">
                                    조용한 분위기에서 체계적인 표준 시간표대로 공부하니, 공부시간이 많이 늘었습니다.
                                    또한, <strong>수능형 리듬에 맞추어서 규칙적인 생활</strong>을 하도록
                                    도와주어 <strong>수능날과 유사한 분위기에서 공부</strong>할 수 있습니다.
                                    
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p>서울대 경제학부 합격</p>
                                    </dt>
                                    <dd class="name">러셀 강남 이다현</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_ldh.png" alt="이다현" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/33690751');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    입시와 관련하여 많은 정보를 가지고 계신 담임선생님
                                </p>
                                <p class="txt">
                                   <strong>담임선생님과 일대일로 상담</strong>할 수 있어 좋았습니다.
                                    9평이 끝나고 수시 원서를 접수하기 전에
                                    담임선생님과 함께 모의고사 성적을 기반으로
                                    <strong>정시와 수시 지원 전략</strong>을 짜며 큰 도움을 받았습니다.                                    
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p>경상국립대 약학과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 강남 김태은</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_kte.png" alt="김태은" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/33690807');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    일요일마다 진행한 실전 모의고사가 많은 도움이 되었습니다.
                                </p>
                                <p class="txt">
                                    수능 한 달 전부터 학원에서 일요일마다 실전 모의고사 훈련장을 운영해 주었던 것이 좋았습니다. <strong>매주 모의고사 결과를 확인하고 반성</strong>한 뒤 다음 주의 <strong>계획을 수정</strong>해가면서 <strong>약점을 보완</strong>해 나갈 수 있었습니다.

                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn-wrap">
                    <div class="card-btn-prev">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_left.png" alt="" />
                    </div>
                    <div class="card-btn-next">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_right.png" alt="" />
                    </div>
                </div>
            </div>
        </div>   
        <% ElseIf campus_code = "CD0001" Then '대치 %>
        <div class="inner">
            <div class="sl-card card-swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>경희대 의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 대치 서지원</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_sjw.png" alt="서지원" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34828444');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    원하는 수업만 선택하여 수강할 수 있기 때문에, 단과와 자습 일정을 개인이 설계하여 더욱 효율적이었습니다.
                                </p>
                                <p class="txt">
                                    <strong>단과와 자습을 한 건물에서 병행</strong>할 수 있어 <strong>편리하고 시간 절약</strong>이 많이 되었습니다. 또한 내가 원하지 않는 메뉴의 급식이 나오는 날에는 외식이 가능하여 만족스러웠고 <strong>고퀄리티의 모의고사를 매달 집체로 응시</strong>할 수 있어 큰 도움이 되었습니다. 
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>건양대 의학과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 대치 변우성</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_bws.png" alt="변우성" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34828471');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    러셀 대치의 장점은 항상 내 편이 되어주는 담임선생님과 쾌적한 환경입니다.
                                </p>
                                <p class="txt">
                                   <strong>자체 모의고사 이후 총평노트</strong>를 적었는데 <strong>담임선생님과 천천히 복습해 보며 잘못된 풀이를 점검하는 시간</strong>을 가질 수 있어서 좋았습니다. 담임선생님들께서 항상 옆에서 관리해 주셔서 너무 감사했습니다.                                    
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>연세대 <br>생활디자인학과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 대치 강세인</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_ksi.png" alt="강세인" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34828407');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    나에게 러셀은 길었던 수험생활의 동반자이다. 수능 전날까지 많은 도움을 받았기 때문이다.
                                </p>
                                <p class="txt">
                                    러셀 대치는 <strong>듣고 싶은 선생님의 강의가 여러 타임에 편성</strong>되어 있어 <strong>원하는 요일, 시간에 맞춰 수업 일정을 짤 수 있었습니다.</strong>
                                    또한 <strong>담임선생님의 철저한 관리</strong>를 받으며 공부할 수 있는 점이
                                    러셀 대치의 가장 큰 장점이었습니다.                                                                     
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>고려대 <br>전기전자공학부 합격</p>
                                    </dt>
                                    <dd class="name">러셀 대치 양선호</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_ysh.png" alt="양선호" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34828423');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    수업을 듣다가 자습하러 가는 이동 시간이 매우 짧아서
                                    더욱 좋았습니다.                                    
                                </p>
                                <p class="txt">
                                    개인적으로 공부란 혼자서 하는 것이 중요하다고 생각하는 편인데, 러셀 대치는 다른 곳보다 <strong>시간의 자율성이 높아 자습시간을 늘릴 수 있었습니다.</strong>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn-wrap">
                    <div class="card-btn-prev">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_left.png" alt="" />
                    </div>
                    <div class="card-btn-next">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_right.png" alt="" />
                    </div>
                </div>
            </div>
        </div>  
        <% ElseIf campus_code = "CD0245" Then '목동 %>
        <div class="inner">
            <div class="sl-card card-swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>고려대 가정교육과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 목동 김민서</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_kms.png" alt="김민서" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/33994214');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    담임선생님의 통제로 생활 습관을 개선할 수 있었어요.
                                </p>
                                <p class="txt">
                                    외부의 적당한 통제가 있어야 공부를 열심히 하는 스타일인데, 러셀 학원에서는 주변의 친구들을 보며 자극도 받을 수 있었고, 생활 습관을 개선할 수도 있었기 때문에 러셀 학원을 선택하게 되었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>가천대 약학과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 목동 김민지</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_kmj.png" alt="김민지" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/33993811');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    수능과 내신관리를 병행하기 위해서는 빠르게 시작하세요.
                                </p>
                                <p class="txt">
                                    수시를 위해서는 3학년 1학기 내신과 생기부도 챙겨야 한다는 점을 고려해서 수능 공부를 일찍 시작했습니다. 개념을 미리 끝내 놓고, 학기 중에는 배운 내용을 유지만 하면 됐기 때문에 효율적인 공부를 할 수 있었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>카이스트 합격</p>
                                    </dt>
                                    <dd class="name">러셀 목동 강준혁</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_kjh.png" alt="강준혁" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/33994635');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    러셀의 장학제도와 담임선생님의 1:1 상담이 좋았습니다.
                                </p>
                                <p class="txt">
                                    1월부터 러셀 목동에 재원하며 수능 준비를 시작했습니다. 1월부터 HS반으로 수험생 기간 내내 단과 수강과 바자관을 부담 없이 편리하게 이용했습니다.  자습관 학습 분위기 관리도 잘 되며 담임선생님과 진행하는 입시상담 부분이 큰 도움이 되었습니다.                                 
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>중앙대 의학부 합격</p>
                                    </dt>
                                    <dd class="name">러셀 목동 이수현</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_lsh.png" alt="이수현" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34800672');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    철저한 관리와 실제 수능 시간표와 동일한 표준 시간표가 좋았습니다.
                                </p>
                                <p class="txt">
                                    러셀은 바른공부 자습전용관에서 등원 시 핸드폰 제출, 스마트 기기 관리, 표준 시간표를 통해 공부 환경이 조성되었습니다.  표준 시간표대로 공부하여 자습시간에 더욱 집중할 수 있었고, 모의고사를 치를 때에는 방해받지 않고 시험을 볼 수 있었습니다. 덕분에 시간 분배 및 실전 연습을 할 수 있어서 좋았습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn-wrap">
                    <div class="card-btn-prev">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_left.png" alt="" />
                    </div>
                    <div class="card-btn-next">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_right.png" alt="" />
                    </div>
                </div>
            </div>
        </div>  
        <% ElseIf campus_code = "CD0250" Then '부천 %>

        <div class="tobe">
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_tobe.png" alt="" /></div>
            <p>
                <strong>2024학년도<br> 러셀 부천 합격생의 후기는</strong> <br>
                추후 공개 됩니다.
            </p>
        </div>

        <% ElseIf campus_code = "CD0244" Then '분당 %>
        <div class="inner">
            <div class="sl-card card-swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>서울대 의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 분당 이OO</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_ljy.png" alt="이주연" /></span>
                                    <a href="javascript:CastPopup('https://www.youtube.com/embed/gVP68GeTDvE?si=NiSxQ39U3-HoFF4p');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    좋은 면학분위기, 바자관의 개방형 구조가 가장 좋았습니다. 
                                </p>
                                <p class="txt">
                                    담임선생님은 바자관 바로 앞에 계셔서 언제나 고민이 생기면
                                    편하게 문의드릴 수 있어 좋았습니다. 또한, 공부뿐만 아니라
                                    학생 개개인에게도 관심을 가져주어서 상담 시 자세하고 진심 어린
                                    조언을 주셔서 큰 도움이 되었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>연세대 의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 분당 정OO</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_jjs.png" alt="정준서" /></span>
                                    <a href="javascript:CastPopup('https://www.youtube.com/embed/oWMPaVfDbv4?si=RaOx-KyjL4pwwgjU');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    학생들을 지속적으로 관리해 주는 것이 좋았습니다.   
                                </p>
                                <p class="txt">
                                    상담도 자유롭게 원하는 시간대에 신청할 수 있었고, 선배와의 만남이 있어서 원하는 학교 및 과의 선배들로부터 여러 조언을 얻을 수 있었습니다.
                                    또한, 담임선생님은 제가 자신감을 가질 수 있도록 격려해주고 항상 학생을 존중해 주셔서 좋았습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>경희대 한의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 분당 신OO</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_she.png" alt="신현의" /></span>
                                    <a href="javascript:CastPopup('https://www.youtube.com/embed/S8Yksidr5Ws?si=IQR7Nk1gZjw_PJK4');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    유명한 선생님의 수업을 실제로 들을 수 있어서 좋았습니다.
                                </p>
                                <p class="txt">
                                    시간표를 학생이 원하는 대로 짤 수 있어 학생의 자율성 및 선택을 존중한다는 생각이 들었습니다.
                                    또한, 출강하시는 모든 선생님들이 뛰어난 분이셨다는 점도 마음에 들었습니다.                                
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>서울대 경제학부 합격</p>
                                    </dt>
                                    <dd class="name">러셀 분당 정OO</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_jcy.png" alt="정찬영" /></span>
                                    <a href="javascript:CastPopup('https://www.youtube.com/embed/hM7ArxDrITQ?si=9TSFjBomcxEhgn2L');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    학교 선배들과 친구들의 강력한 추천을 받았습니다.  
                                </p>
                                <p class="txt">
                                    바자관과 강의실이 붙어있다는 점이 큰 장점이었습니다. 시간을 효율적으로 활용할 수 있었고,
                                    자리 예약 시스템이 잘 잡혀 있어서 수업을 들을 때 혼란을 겪는 일이 없었습니다. 또한,  바자관 책상이 넓어서 공간이 부족하지 않아서 편하게 학습할 수 있었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn-wrap">
                    <div class="card-btn-prev">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_left.png" alt="" />
                    </div>
                    <div class="card-btn-next">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_right.png" alt="" />
                    </div>
                </div>
            </div>
        </div>  
        <% ElseIf campus_code = "CD0249" Then '영통 %>
        <div class="inner">
            <div class="sl-card card-swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>서울대 의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 영통 이정우</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_ljw.png" alt="이정우" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/33402064');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    바른공부 자습전용관의 장점은 공부시간 확보라고 생각합니다.
                                </p>
                                <p class="txt">
                                    방해 요소가 제거된 환경에서 <strong>꼼꼼한 스케줄 관리</strong>를 통해 효율적인 공부가 가능했기 때문입니다.
                                    그리고, <strong>심야자습제도를 통해 늦은 시간까지도 집중해서 공부</strong>할 수 있어서 좋았습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>서울대 재료공학부 합격</p>
                                    </dt>
                                    <dd class="name">러셀 영통 김경원</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_kgw.png" alt="김경원" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/33401359');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    바른공부 자습전용관의 장점은 시간 관리입니다.  
                                </p>
                                <p class="txt">
                                    의미 없이 보낼 수도 있는 <strong>아침 시간, 심야 시간을 철저한 관리 속에서 공부</strong>할 수 있고, <strong>급식, 강의실, 바자관이 한 건물에 있어</strong>
                                    이동시간을 획기적으로 줄일 수 있기 때문입니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>서울대 경영대학 합격</p>
                                    </dt>
                                    <dd class="name">러셀 영통 김수환</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_ksh.png" alt="김수환" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/33401796');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    담임선생님들께서 좋은 공부환경을 조성해 주십니다.
                                </p>
                                <p class="txt">
                                    <strong>겨울방학 동안 수능 공부에만 매진</strong>하여 기초를 다져 놓은 덕분에 모든 학생부 활동이 끝난 이후 다시 <strong>여유롭게 수능 공부</strong>를 할 수 있었습니다.
                                    그리고 담임선생님께서 <strong>수시 상담을 해 주시며 생기부</strong>에서 무엇이 부족한지 알려 주셨습니다.                               
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>서울대 기계공학부 합격</p>
                                    </dt>
                                    <dd class="name">러셀 영통 문인하</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_mih.png" alt="문인하" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/33401039');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    매 교시 출석체크로 철저하게 학생들의  스케줄을 관리합니다.  
                                </p>
                                <p class="txt">
                                    학생들의 <strong>공부 환경을 철저히 관리</strong>해 주신다는 점과 담임선생님께서 <strong>친절하고 전문적으로 상담</strong>해 주신 점이 좋았습니다.
                                    <strong>수시, 정시 등 정말 다방면</strong>으로 많은 조언을 해 주셨습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn-wrap">
                    <div class="card-btn-prev">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_left.png" alt="" />
                    </div>
                    <div class="card-btn-next">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_right.png" alt="" />
                    </div>
                </div>
            </div>
        </div>  

        <% ElseIf campus_code = "CD0246" Then '센텀 %>
        <div class="inner">
            <div class="sl-card card-swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>울산대 의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 센텀 윤성혁</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_ysh02.png" alt="윤성혁" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/33008617');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    최상위권 학생들과 경쟁하면서 나도 성장했다
                                </p>
                                <p class="txt">
                                    <strong>부산에서 최상위권 학생들이 모여있는 곳이라 러셀 센텀을 선택</strong>하였습니다.
                                    학생들의 공부하는 모습을 보면서 많은 자극을 받았고 열심히 할 수 있는 동기부여가 되었습니다. 그로 인하여 저 또한 성장을 할 수 있었습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>동아대 의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 센텀 장승현</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_jsh.png" alt="장승현" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/33008744');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    끊임없는 담임선생님과의 소통이 큰 힘
                                </p>
                                <p class="txt">
                                    <strong>담임선생님은 수험생활 동안 저의 멘토</strong>가 되어 주셨습니다.
                                    공부나 학교생활을 함에 있어 어렵거나 고민되는 부분에 대해 상담을 요청하면 잘 들어주시고 저에게 맞는 적절한 해결책도 제시해 주셔서
                                    수험생활을 하는 동안 든든한 힘이 되었던 것 같습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>부산대 의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 센텀 김가을</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_kge02.png" alt="김가을" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/33008775');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">    
                                <p class="tit">
                                    최고의 면학분위기&개방형 구조가 큰 장점
                                </p>
                                <p class="txt">
                                    바른공부 자습전용관의 장점은 <strong>좋은 면학분위기</strong>입니다.
                                    모두가 열심히 공부하는 면학분위기가 조성되어 러셀에서는 공부에만 집중할 수 있었습니다.                      
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>인제대 의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 센텀 이O원</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_woman.png" alt="실루엣" /></span>                                   
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    실전 연습을 통한 수능 완벽 대비
                                </p>
                                <p class="txt">
                                    퀄 모의고사와 더 프리미엄 모의고사를 통해 <strong>수능 실전 연습을 할 수 있어서 좋았으며</strong>
                                    수능 전 수능모의체험과 같은 시험장 분위기 조성을 통하여 대비를 잘할 수 있었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn-wrap">
                    <div class="card-btn-prev">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_left.png" alt="" />
                    </div>
                    <div class="card-btn-next">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_right.png" alt="" />
                    </div>
                </div>
            </div>
        </div>  
        <% ElseIf campus_code = "CD0257" Then '중계 %>
        <div class="inner">
            <div class="sl-card card-swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>서울대 의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 중계 노현지</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_nhj.png" alt="노현지" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34060532');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    
                                </p>
                                <p class="txt">
                                   <strong>쾌적한 환경과 표준 시간표가 가장 좋았습니다.</strong> 자리마다 식물이 있어서  분위기가 편안하게 느껴졌고, 의자도 매우 편해서 공부에 집중할 수 있었습니다.
                                    그리고 수능 시간표에 맞춰서 계획을 세우고 과목별로 균형을 맞춰서 규칙적으로 공부할 수 있는 것이 큰 도움이 되었습니다. 
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>서울대 생물교육과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 중계 김태홍</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_kth.png" alt="김태홍" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34060856');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    
                                </p>
                                <p class="txt">
                                   <strong>바른공부 자습전용관 앞에서 담임선생님과 편하게 상담</strong>할 수 있다는 점이 좋았습니다. 자습전용관에서 공부하다가 바로 담임선생님과 상담을 할 수 있어서 시간도 절약되었고, <strong>제 생기부와 입시 결과 등의 정보를 참고해서 질 높은 상담</strong>을 해주셔서 도움이 많이 되었습니다. 
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>고려대 의과대학 합격</p>
                                    </dt>
                                    <dd class="name">러셀 중계 김민재</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_kmj02.png" alt="김민재" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34060660');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">    
                                <p class="tit">
                                    
                                </p>
                                <p class="txt">
                                    <strong>
                                        바른공부 자습전용관의 쾌적한 환경, 담임선생님의 철저한 관리
                                        그리고 체계적인 출결 관리
                                    </strong>가 학생의 습관 유지와 면학분위기 조성에 큰 도움이 되었다고 생각합니다.                            
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>충남대 의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 중계 박준우</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_pjw.png" alt="박준우" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34061175');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    
                                </p>
                                <p class="txt">
                                    <strong>바른공부 자습전용관 개방형 구조</strong> 덕분에 잠깐 쉬고 있다는 유혹이 들 때에 <strong>다른 학생들이 열심히 공부하고 있는 모습을 볼 수 있어서 조금 더 힘을 내어 집중할 수 있었던 점</strong>이 가장 좋았습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn-wrap">
                    <div class="card-btn-prev">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_left.png" alt="" />
                    </div>
                    <div class="card-btn-next">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_right.png" alt="" />
                    </div>
                </div>
            </div>
        </div>  
        <% ElseIf campus_code = "CD0248" Then '평촌 %>
        <div class="inner">
            <div class="sl-card card-swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>영남대 의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 평촌 이진석</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_ljs.png" alt="이진석" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34250708');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    학생을 가장 우선적으로 생각하는 러셀
                                </p>
                                <p class="txt">
                                    <strong>훌륭한 선생님들의 커리큘럼과 1:1 질의응답 시스템</strong>이 좋았습니다. 바른공부 자습전용관의 <strong>철저한 출결 관리 시스템</strong>이 마음에 들었고,
                                    외부의 방해 요소를 차단해 주어 공부에만 몰입할 수 있었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>고려대(안암) 행정학과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 평촌 이정원</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_ljw02.png" alt="이정원" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34250844');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    지속적으로 관리를 받을 수 있다는 부분이 좋았습니다.
                                </p>
                                <p class="txt">
                                    <strong>러셀의 장점은 스스로 안주하지 않고 끊임없이 나아가게 한다는 것</strong>입니다.
                                    특히 수시 접수를 끝낸 고3들은 스스로 풀어지기 굉장히 쉬운데, 수시 접수 이후에도 러셀을 다니면서 풀어지지 않도록 다잡을 수 있었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>서울대 건축학과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 평촌 이지흔</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_ljh.png" alt="이지흔" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34254932');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    러셀 평촌에는 최상위권 학생들이 모여 있어, <br> 면학분위기가 우수했습니다.
                                </p>
                                <p class="txt">
                                    <strong>모두가 열심히 공부하는 면학분위기가 조성</strong>되어 있어, 공부가 안 될 때도 다시 공부에 집중할 수 있었습니다.
                                    방과 후나 주말에는 학원으로 등원하는 것이 귀찮고 힘들 때도 있었지만 <strong>담임선생님의 체계적인 출결 관리</strong> 덕분에 성실하게 등원할 수 있었습니다.                
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>연세대(서울) 간호학과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 평촌 이채연</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_lcy.png" alt="이채연" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34255455');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    개방형 구조로 되어 있어 긴장감을 가진 채로 공부할 수 있었습니다.
                                </p>
                                <p class="txt">
                                    러셀의 장점은 <strong>좋은 면학분위기</strong>입니다. 깔끔하게 정돈되어 있는 바른공부 자습전용관은 <strong>개방형 구조</strong>로 되어 있어 다른 친구들의 공부하는 모습을 보며
                                    <strong>적당한 긴장감을 가진 채로 공부하여 공부 효율을 높일 수 있었습니다.</strong>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn-wrap">
                    <div class="card-btn-prev">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_left.png" alt="" />
                    </div>
                    <div class="card-btn-next">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_right.png" alt="" />
                    </div>
                </div>
            </div>
        </div>  
        <% ElseIf campus_code = "CD0340" Then '코어광주 %>
        <div class="inner">
            <div class="sl-card card-swiper type02 swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023학년도</div>
                                        <p><strong>서울대 자유전공 </strong> 합격</p>
                                    </dt>
                                    <dd class="name">러셀CORE 광주 백장운</dd>
                                </dl>
                                <div class="graph"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont02_graph01.png" alt="" /></div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    공부 하기 싫을 때도 주변을 보면서<br>
                                    동기부여가 되어 좋았습니다.
                                </p>
                                <p class="txt">바른공부 자습전용관에서 공부를 하면
                                    주변에 앉은 학생들이 우수하여, <strong>공부를 하기 싫을 때도 주변을 보면서 동기부여</strong>가 되었고, 시간표가 수능 일정과 동일하게 구성되어
                                    자연스럽게 수능 패턴에 맞게 공부할 수 있었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023학년도</div>
                                        <p><strong>조선대 의예과 </strong> 합격</p>
                                    </dt>
                                    <dd class="name">러셀CORE 광주 송다현</dd>
                                </dl>
                                <div class="graph"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont02_graph02.png" alt="" /></div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    담임선생님과의 상담을 통해서<br>
                                    어떻게 공부방향을  잡아야 할지 결정할 수 있었습니다.                 
                                </p>
                                <p class="txt">
                                    담임선생님의 격려의 말씀이 항상 저에게 위로가 되었고, 언제나 찾아갈 수 있어 좋았습니다. 
                                    <strong>담임선생님과 상담을 통해서 저에게 맞는 공부방법을 찾을 수 있었고 수능 때 좋은 성적을 받을 수 있었습니다.
                                    </strong>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <div>2023학년도</div>
                                        <p><strong>전북대 의예과  </strong> 합격</p>
                                    </dt>
                                    <dd class="name">러셀CORE 광주 김준표</dd>
                                </dl>
                                <div class="graph"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont02_graph03.png" alt="" /></div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    실전과 유사한 환경에서 <br>
                                    연습을 할 수 있다는 점이 매우 마음에 들었습니다.
                                </p>
                                <p class="txt">
                                    제가 환경에 예민한 편임에도 넓은 책상, 숯, 공기청정기로 
                                    불편함을 느끼지 않았고, 언제든지 공부할 수 있는 바자관과 
                                    파이널 기간내 실전과 유사한 환경에서 <strong>실전 모의고사 연습을 할 수 있다는 점이 매우 마음에 들었습니다.</strong>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <div>2023학년도</div>
                                        <p><strong>전남대 약학부 </strong> 합격</p>
                                    </dt>
                                    <dd class="name">러셀CORE 광주 정성은</dd>
                                </dl>
                                <div class="graph"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/cont02_graph04.png" alt="" /></div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    최상위권 학생들이 공부하는 모습에 자극을 받아<br>
                                    집중할 수 있었습니다.
                                </p>
                                <p class="txt">
                                    러셀에서는 <strong>최상위권 학생들이 바로 옆에서 같이 공부하기에 방심하지 않고 공부할 수 있었습니다. </strong>수업과 자습시간에 옆에서 집중하고 있는 친구들을 보면서 자극을 받아 더욱 더 집중할 수 있었습니다. 
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn-wrap">
                    <div class="card-btn-prev">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_left.png" alt="" />
                    </div>
                    <div class="card-btn-next">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_right.png" alt="" />
                    </div>
                </div>
            </div>            
        </div>
        <% ElseIf campus_code = "CD0341" Then '코어대전 %>
        <div class="inner">
            <div class="sl-card card-swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>서울대 의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀CORE 대전 이상후</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_lsh02.png" alt="이상후" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34136621');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    러셀CORE 대전은 흠잡을 곳이 없는 대입 최적의 공간입니다.
                                </p>
                                <p class="txt">
                                    공부에만 집중 할 수 있는 <strong>좋은 면학분위기, 전문적인 관리와 학생 중심의 담임선생님, 자습시간을 최대화 할 수 있는 체계적인 시간표, 다양한 모의고사를 통한 실전 훈련</strong> 등 어느 한 쪽에 치우쳐져 있지 않은 완벽한 육각형이라는 인상을 받았습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>순천향대 의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀CORE 대전 이O안</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_lya.png" alt="이O안" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34136726');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    러셀CORE 대전에서 공부한 덕에 수능에서 만족스러운 성적을 거둘 수 있었습니다.

                                </p>
                                <p class="txt">
                                    담임선생님께서는 <strong>수험생활 전반적인 부분에서 많은 도움</strong>을 주셨습니다.  원서 접수 기간에는 제가 놓치고 있었던 <strong>입시 정보</strong>를 알려주시고, <strong>전략적으로 어느 대학에 지원을 해야 할지 전문적인 관리</strong>를 해주셔서 성공적으로 입시를 마무리할 수 있었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>서울대 자유전공학부 합격</p>
                                    </dt>
                                    <dd class="name">러셀CORE 대전 김해솔</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_khs.png" alt="김해솔" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34136900');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    러셀CORE 대전에서 공부하니 올바른 공부 습관이 잡혔고, 시간 관리를 효율적으로 할 수 있게 되었습니다.
                                </p>
                                <p class="txt">
                                    <strong>담임선생님께서 매주 플래너 검사</strong>를 해주셔서 잘못된 공부 습관이였던 한 과목에 치중하여 공부하는 것을 줄일 수 있었고, 풀이/채점/오답의 삼박자를 이루어 체계적으로 공부할 수 있었습니다.                         
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023</div>
                                        <p>연세대(서울) 의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀CORE 대전 조한혁</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_jhh02.png" alt="조한혁" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/35185389');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    다양한 집체 모의고사로 실전 감각을 기를 수 있었습니다.
                                </p>
                                <p class="txt">
                                    <strong>실제 수험장과 유사하게 구현하여 응시했던 다양한 집체 모의고사 </strong>
                                    덕분에 수능날 발생 할 수 있는 일을 시뮬레이션해 볼 수 있었고, 
                                    수능장에서 해야 할 루틴을 미리 테스트 해볼 수 있어서 좋았습니다.                                    
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn-wrap">
                    <div class="card-btn-prev">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_left.png" alt="" />
                    </div>
                    <div class="card-btn-next">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_right.png" alt="" />
                    </div>
                </div>
            </div>
        </div> 
        <% Else %>
        <h3 data-aos="flip-up">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont02_txt01.jpg" alt="" />
        </h3>
        <div>
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont02_sl_txt01.jpg" alt="" />
        </div>
        <div class="inner">
            <div class="sl-card card-swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023 수능 전 과목 1등급</div>
                                        <p>서울대 의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 대치 홍석우</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_hsw.png" alt="홍석우" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/33616782');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    최상위권이 모여 있어<br> 면학분위기가 좋았습니다.
                                </p>
                                <p class="txt">
                                    러셀 바른공부 자습전용관의 장점은 <strong>좋은 면학분위기</strong>입니다.
                                    <strong>최상위권 학생들이 모여 있는 만큼 열심히 하는 분위기</strong>가 잡혀 있어 주변을 보며 자극을 받을 수 있었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023 수능 전 과목 1등급</div>
                                        <p>서울대 의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 분당 이주연</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_ljy.png" alt="이주연" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34794025');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    담임선생님 덕분에<br> 좋은 면학분위기가 유지되었습니다.
                                </p>
                                <p class="txt">
                                    학습에 집중할 수 있는 환경을 만들기 위해 <strong>관리 감독을 해 주시는 담임선생님들 덕분에 좋은 면학분위기가 유지</strong>되었고, 공부를 하다 지칠 때 고개를 들고 다른 친구들의 공부하는 모습을 보며 마음을 다잡기도 했습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023 수능 전 과목 1등급</div>
                                        <p>중앙대 의학부 합격</p>
                                    </dt>
                                    <dd class="name">러셀 목동 이수현</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_lsh.png" alt="이수현" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34800672');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    수능 시간표에 맞춘 <br>
                                    표준 시간표가 도움이 되었습니다.
                                </p>
                                <p class="txt">
                                    <strong>체계적인 표준 시간표대로 공부하여 자습시간에 더욱 집중</strong>할 수 있었고 
                                    모의고사를 치를 때에는 방해받지 않고 시험을 치를 수 있었습니다. 
                                    또한 책상이 넓어 모의고사를 풀더라도 좁지 않고 쾌적하게
                                    풀 수 있었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023 수능 전 과목 1등급</div>
                                        <p>중앙대 의학부 합격</p>
                                    </dt>
                                    <dd class="name">러셀 중계 임유찬</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_iyc.png" alt="임유찬" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/35058233');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    다양한 모의고사로 <br>
                                    실전 경험을 쌓을 수 있었습니다.
                                </p>
                                <p class="txt">
                                    퀄 모의고사와 메대프 모의고사 등 <strong>다양한 모의고사</strong>를 응시할 수 있어 
                                    좋았습니다. <strong>실제 수능 시간표에 맞춰서 시험을 볼 수 있는 기회</strong>가 되어 
                                    수능 때 일어날 수 있는 돌발 상황을 대비하고, 실전 연습을 할 수 
                                    있었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023 수능 전 과목 1등급</div>
                                        <p>충남대 의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 강남 신호영</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_shy.png" alt="신호영" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/35106640');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    개방형 구조로 되어 있어 <br>
                                    더 집중할 수 있었습니다.
                                </p>
                                <p class="txt">
                                    <strong>바자관은 넓고 탁 트인 개방형 구조</strong>여서 주변 학생들이 잘 보입니다.
                                    그렇기에 <strong>혼자가 아니라 같이 공부한다는 생각이 들었고,</strong>  혼자서 공부 
                                    할 때보다 잡생각도 줄고 같이 공부에 매진할 수 있었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023 수능 전 과목 1등급</div>
                                        <p>이화여대 의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀CORE 광주 최정윤</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_cjy.png" alt="최정윤" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/35703169');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    규칙적인 생활이 필수인 <br>
                                    재학생에게 적합한 시스템!
                                </p>
                                <p class="txt">
                                    러셀에서 가장 좋았던 점은 <strong>좋은 면학분위기</strong>였습니다. 주변 친구들이 
                                    열심히 하다 보니 저도 좋은 자극을 받아 더 열심히 할 수 있었습니다.  
                                    그리고 <strong>시간표가 정해져 있다는 것</strong>도 규칙적인 생활이 필수인 
                                    <strong>고등학교 3학년에게 적합</strong>했던 것 같습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023 수능 전 과목 1등급</div>
                                        <p>제주대 의예과 합격</p>
                                    </dt>
                                    <dd class="name">러셀 부천 이민형</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_lmh.png" alt="이민형" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/35512053');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    필요한 수업만 들을 수 있어 <br>
                                    효율적인 학습이 가능했습니다.
                                </p>
                                <p class="txt">
                                    러셀에서는 본인이 <strong>필요로 하는 시간에 원하는 단과를 자유롭게 선택</strong>하여
                                    수강할 수 있다는 점이 좋았습니다. 바자관과 단과 강의실이 한 건물에
                                    위치한 덕분에 시간을 절약하며 효율적으로 공부할 수 있어서 좋았습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023 수능 전 과목 1등급</div>
                                        <p>서울대 <br>전기정보공학부 합격</p>
                                    </dt>
                                    <dd class="name">러셀 분당 강민혁</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_kmh.png" alt="강민혁" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/35557708');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    담임선생님의 꼼꼼한 관리로 <br>
                                    오롯이 공부에만 집중했어요.
                                </p>
                                <p class="txt">
                                    <strong>담임선생님과 매번 모의고사 후에 학습상담</strong>을 하였는데, 공부방향과 보완 
                                    점을 잘 잡아주신 점이 좋았습니다. 입결이나 과목별 반영비율, 전형 등 
                                    <strong>복잡한 입시 체제를 꼼꼼히 챙겨주셔서 오롯이 공부에만 집중</strong>할 수 있었습니다.
                                </p>
                            </div>
                        </div>
                    </div> 
                </div>
                <div class="btn-wrap">
                    <div class="card-btn-prev">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_left.png" alt="" />
                    </div>
                    <div class="card-btn-next">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_right.png" alt="" />
                    </div>
                </div>
            </div>
        </div>   
        <div>
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/cont02_sl_txt02.jpg" alt="" />
        </div>
        <div class="inner">
            <div class="sl-card card-swiper-02 swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023 수시 7관왕</div>
                                        <p>서울대 재료공학과 합격</p>
                                    </dt>
                                    <dd class="school">서울대 / 연세대(2) / 고려대(2) <br> / KAIST / 한양대</dd>
                                    <dd class="name">러셀 영통 김경원</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_kkw.png" alt="김경원" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/33401359');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play02.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    바른공부 자습전용관의 장점은 <br>
                                    시간관리입니다.
                                </p>
                                <p class="txt">
                                    의미 없이 보낼 수도 있는 <strong>아침 시간, 심야 시간을 철저한 관리 속에서 공부</strong>할 수 있고,
                                    <strong>급식, 강의실, 바자관이 한 건물에 있어</strong> 이동시간을 획기적으로 줄일 수 있기 때문입니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023 수시 6관왕</div>
                                        <p>서울대 <br>자유전공학부 합격</p>
                                    </dt>
                                    <dd class="school">서울대 / 연세대 / 고려대<br> / 서강대(2) / 한양대</dd>
                                    <dd class="name">러셀 부천 강수민</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_ksm.png" alt="강수민" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/33594834');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play02.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    온전히 공부에만 집중할 수 있는 <br>
                                    환경이 좋았습니다.
                                </p>
                                <p class="txt">
                                    <strong>휴대폰 제출과 자습시간 수면 금지</strong>와 같은 조항이 온전히 공부에만 집중할 수 있도록 해 준다고 생각합니다.
                                    <strong>학생들이 온전히 공부에 집중하며 유지되는 면학분위기 덕분에</strong> 점점 더 집중할 수 밖에 없는 분위기가 형성되는 선순환이 있는 것 같습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023 수시 5관왕</div>
                                        <p>서울대 건축학과 합격</p>
                                    </dt>
                                    <dd class="school">서울대 / 고려대 / 성균관대<br> / 한양대 / 홍익대</dd>
                                    <dd class="name">러셀 평촌 이지흔</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_ljh.png" alt="이지흔" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34254932');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play02.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    최상위권 학생들과 선의의 경쟁을 하며 <br>
                                    긴장감을 유지했어요.
                                </p>
                                <p class="txt">
                                    바른공부 자습전용관은 <strong>개방형 구조로 사방이 탁 트여있어 개방감이
                                    좋았습니다.</strong> 또한 <strong>최상위권이 모여 만든 면학분위기 속에서 선의의
                                    경쟁</strong>을 할 수 있었고, 느슨해질 수 있는 긴 수험생활에 긍정적인
                                    긴장감을 느낄 수 있었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023 수시 5관왕</div>
                                        <p>서울대 사회복지학과 합격</p>
                                    </dt>
                                    <dd class="school">서울대 / 연세대(2) / 고려대 <br>/ 성균관대</dd>
                                    <dd class="name">러셀 평촌 조안나</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_jan.png" alt="조안나" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34253498');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play02.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    담임선생님의 학습관리로 <br>
                                    효율적으로 공부할 수 있었습니다.
                                </p>
                                <p class="txt">
                                    <strong>담임선생님께서 플래너를 함께 체크해 주시고 피드백</strong> 해 주시는 것이 좋았습니다.
                                    학교 시험과 모의고사 <strong>성적을 보고 취약한 과목을 더 공부할 수 있도록 자세하게 피드백</strong> 해주셔서 효율적으로 공부할 수 있었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023 수시 5관왕</div>
                                        <p>덕성여대 약학과 합격</p>
                                    </dt>
                                    <dd class="school">덕성여대 약학과 / 동덕여대 약학과 / <br>
                                        조선대 약학과 / 서울교대 / 경인교대
                                    </dd>
                                    <dd class="name">러셀 부천 김희진</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_khj.png" alt="김희진" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/33595424');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play02.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    원하는 과목과 선생님을 <br>
                                    직접 선택할 수 있었어요.
                                </p>
                                <p class="txt">
                                    <strong>바자관과 단과 강의실이 한 건물에 있기 때문에 이동시간을 크게 줄여 시간을 효율적으로 관리</strong>할 수 있었습니다.
                                    또한 <strong>필요한 수업만 선택할 수 있어 취약한 과목 단과 수업만 들으며 집중적으로 보완</strong>할 수 있었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2023 수시 5관왕</div>
                                        <p>고려대<span>(안암)</span> <br>불어불문학과 합격</p>
                                    </dt>
                                    <dd class="school">고려대 / 서강대 / 성균관대 <br>/ 한양대 / 이화여대</dd>
                                    <dd class="name">러셀 평촌 김선영</dd>
                                </dl>
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/stu_ksy.png" alt="김선영" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/34255227');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/ico_play02.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    학습동선이 짧아 학습 흐름을 <br>
                                    유지할 수 있었습니다.
                                </p>
                                <p class="txt">
                                    <strong>단과와 자습을 한 건물에서 진행</strong>하는 시스템이 <strong>시간을 절약하고 흐름을 깨지 않아 좋았습니다.</strong>
                                    또한 <strong>심야 자습 제도</strong>를 통해서 늦게까지 자습을 하면서 조용한 환경에서 충분히 오랜 시간 공부를 할 수 있어 좋았습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn-wrap">
                    <div class="card-btn-prev">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_left.png" alt="" />
                    </div>
                    <div class="card-btn-next">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_btn_right.png" alt="" />
                    </div>
                </div>
            </div>
        </div>   
        <% End If %>
    </div>
</div>
<% End If %>
