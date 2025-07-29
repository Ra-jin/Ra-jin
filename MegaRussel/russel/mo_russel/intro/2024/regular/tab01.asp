<!-- cont01 -->
<div class="cont01 <%=campusCom%> js-cont-wrap js-cont">
    <div class="inner">
        <% If campus_code = "CD0349" OR campus_code = "CD0346" Then '울산/코어청주 %>
        <h3 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_tit.jpg" alt="전국 최상위권이 러셀을 선택하는 이유! 매해 더 나은 입결과 후기가 입증하고 있습니다." /></h3>
        <% ElseIf campus_code = "INTRO" Then '인트로 %>
        <h3 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_tit_1.jpg" alt="전국 최상위권이 러셀을 선택하는 이유! 매해 더 나은 입결과 후기가 입증하고 있습니다." /></h3>
        <% Else %>
        <h3 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont01_tit.jpg" alt="전국 최상위권이 러셀을 선택하는 이유! 매해 더 나은 입결과 후기가 입증하고 있습니다." /></h3>
        <% End If %>

        <% If campus_code = "CD0247" Then '강남 %>
        <div class="result-box">
            <div class="info-stxt">
                <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_info.png" alt="i" /></span>
                <div class="data-view">
                    2018-2024학년도 러셀 강남학원 자습전용관 재원생 합격 결과 기준(단과 수강생 제외, 복수대학 합격자 포함) (2024-02-27 기준) 
                </div>
            </div>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont01_txt.png" alt="러셀 2023학년도 최상위권 입시 결과" /></p>
            <ul class="list-wrap">
                <li>
                    <div>
                        <p>5개년 연속<br>
                        <strong>서울대 의예과</strong> 합격</p>
                    </div>
                    <ul class="stu-list">
                        <li>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_stu_lys.jpg" alt="이윤서" /></div>
                            <p>2023학년도 <br> <strong>이윤서 학생</strong></p>
                        </li>
                        <li>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_stu_w.jpg" alt="김OO" /></div>
                            <p>2023학년도 <br><strong>김OO 학생</strong></p>
                        </li>
                        <li>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_stu_w.jpg" alt="서OO" /></div>
                            <p>2022학년도 <br><strong>서OO 학생</strong></p>
                        </li>
                        <li>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_stu_m.jpg" alt="김OO" /></div>
                            <p>2021학년도 <br><strong>김OO 학생</strong></p>
                        </li>
                        <li>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_stu_yjh.jpg" alt="양지헌" /></div>
                            <p>2020학년도 <br><strong>양지헌 학생</strong></p>
                        </li>
                        <li>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_stu_w.jpg" alt="이OO" /></div>
                            <p>2019학년도 <br><strong>이OO 학생</strong></p>
                        </li>
                    </ul>
                </li>
                <li>
                    <div>
                        <p>의약학계열 누적합격생<br>
                        <strong>619명</strong> 배출</p>
                    </div>
                    <ul class="stu-number type01">
                        <li>
                            <div><p>의예과 <br>    <strong>327명</strong></p></div>
                        </li>
                    </ul>
                    <ul class="stu-number type02">
                        <li>
                            <div><p>치의예과 <br><strong>79명</strong></p></div>
                        </li>
                        <li>
                            <div><p>한의예과 <br><strong>110명</strong></p></div>
                        </li>
                        <li>
                            <div><p>수의예과 <br><strong>31명</strong></p></div>
                        </li>
                        <li>
                            <div><p>약학과 <br><strong>72명</strong></p></div>
                        </li>
                    </ul>
                </li>
                <li>
                    <div>
                        <p>최상위권 대학<br>누적 합격 현황</p>
                    </div>
                    <ul class="stu-number">
                        <li style="margin-left: 10px;">
                            <div><p>의치한수약 <br><strong>619명</strong></p></div>
                            <p>의예과 327명, 치의예과 79명,<br>
                            한의예과 110명, 수의예과 31명, 약학과 72명</p>
                        </li>
                        <li>
                            <div><p>서연고 <br><strong>585명</strong></p></div>
                            <p>서울대 113명, 연세대 237명,고려대 235명
                            </p>
                        </li>
                        <li>
                            <div><p>서성한이중경외시<br>+ 카이스트, 포항공대<br><strong>1,215명</strong></p>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <% ElseIf campus_code = "CD0001" Then '대치 %>
        <div class="result-box">
            <div class="info-stxt">
                <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_info.png" alt="i" /></span>
                <div class="data-view">
                    ※ 데이터 산출 기준<br>
                    1) 2018학년도 수능 실성적 기준<br>
                    2) 2020학년도 수능 실성적 기준<br>
                    3) 2021학년도 수능 실성적 기준<br>
                        (*표준점수/백분위 합 기준)<br>
                    4) 2024학년도 러셀 대치 재원생의 합격자 기준<br>
                        (*복수대학 합격자 및 중복 합격자 포함)                        
                </div>
            </div>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont01_txt.png" alt="러셀 2023학년도 최상위권 입시 결과" /></p>
            <ul class="list-wrap">
                <li>
                    <div>
                        <p>2018/2020 <sup>1), 2)</sup><br>
                        <strong>수능 만점자 배출</strong></p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>2021<sup>3)</sup><br>
                        <strong>수능 전국 수석 배출</strong></p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>2024 대입 <sup>4)</sup><br>
                            메이저 의예과<br>
                        <strong>총 35명 합격</strong></p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>2024 대입 <sup>4)</sup><br>
                            전국 의예과<br>
                        <strong>총 119명 합격</strong></p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>2024 대입 <sup>4)</sup><br>
                            의/치/한/수/약<br>
                        <strong>총 199명 합격</strong></p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>2024 대입 <sup>4)</sup><br>
                            서/연/고<br>
                        <strong>총 230명 합격</strong></p>
                    </div>
                </li>
            </ul>
        </div>
        <% ElseIf campus_code = "CD0250" Then '부천 %>
        <div class="result-box">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont01_txt.png" alt="러셀 2023학년도 최상위권 입시 결과" /></p>
            <ul class="num-list gold">
                <li>
                    <p>
                        서울대 의예<br>
                        <strong>1</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        서울대<br>
                        <strong>9</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        의치한수약<br>
                        <strong>50</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <!-- <div class="sub-txt">*울산대 의예과 1명 포함</div> -->
            <ul class="num-list silver">
                <li>
                    <p>
                        연고대<br>
                        <strong>47</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        서성한이<br>
                        <strong>60</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        중경외시<br>
                        <strong>63</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list silver">
                <li>
                    <p>
                        KAIST,UNIST,GIST,DGIST, <br> KENTECH,POSTECH, <br>
                        경찰대,공군사관,해군사관<br>
                        <strong>11</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <div class="info-stxt">
                <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_info.png" alt="i" /></span>
                <div class="data-view">
                    *합격자 : 수시 최종발표 + 정시 일부발표 인원(2023년 바른공부 자습전용관 재원생 기준) <br>
                    *지역 입결 1위 인천/부천 재수종합학원 홈페이지 입결 <br>
                    2024.02.22(목) 기준                    
                </div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0244" Then '분당 %>
        <div class="result-box">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont01_stit.png" alt="러셀 분당 2023학년도 대입 합격 현황" /></p>
            <ul class="num-list gold">
                <li>
                    <p>
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
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont01_txt.png" alt="러셀 센텀 2023학년도 대입 합격 현황" /></p>
            <ul class="num-list gold">
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
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_ct/2024/regular/cont01_graph_img01.jpg" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_ct/2024/regular/cont01_graph_img02.jpg" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_ct/2024/regular/cont01_graph_img03.jpg" alt="" /></div>
                </div>
                <div class="swiper-pagination gp01"></div>
            </div>
        </div>

        <div class="result-box">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont01_txt02.png" alt="최상위권의 선택! 러셀 센텀 4개년 누적 입결 현황" /></p>
            <ul class="num-list gold">
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
            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont01_txt.jpg" alt="합격을 위한 최선의 선택! 러셀 영통 2020~2024학년도 대입 합격 현황" /></p>
            <ul class="num-list gold">
                <li>
                    <p>
                        의 &middot; 치 &middot; 한 &middot; 수 &middot; 약<br>
                        <strong>219</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        서울대<br>
                        <strong>63</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        SKY<br>
                        <strong>250</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold type02">
                <li>
                    <p>
                        서 &middot; 성 &middot; 한 &middot; 이<br>
                        <strong>210</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        중 &middot; 경 &middot; 외 &middot; 시<br>
                        <strong>212</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold type02">
                <li>
                    <p>
                        교대 &middot; 경대사관 <br> &middot; 특성화대<br>
                        <strong>81</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        주요 15개대<br>
                        <strong>795</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <p class="r-txt">※ 2020~2024학년도 러셀 영통 바른공부 자습전용관 재원생 기준<br>
            (2024.02.29 기준)

            </p>
        </div>
        <% ElseIf campus_code = "CD0257" Then '중계  %>
        <div class="result-box">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont01_txt.png" alt="러셀 중계 2023학년도 대입 합격 현황" /></p>
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
        <div class="h-box-result">
            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont01_txt.jpg" alt="결과로 증명하는 학생중심 러셀 중계"></p>
            <ul class="mt30 type13">
                <li>
                    <div>4년 연속 배출</div>
                    <div><strong>1</strong></div>
                    <p>서울대 의예과</p>
                </li>
                <li>
                    <div>메이저 의예 포함</div>
                    <div><strong>64</strong></div>
                    <p>전국 의약학계열</p>
                </li>
            </ul>
            <ul class="type13">
                <li>
                    <div>의예, 치의예 포함</div>
                    <div><strong>18</strong></div>
                    <p>서울대</p>
                </li>
                <li>
                    <div>고려대 의대 포함</div>
                    <div><strong>55</strong></div>
                    <p>연고대</p>
                </li>
            </ul>
            <ul class="type13">
                <li class="two">
                    <div><strong>74</strong></div>
                    <p>서/성/한/이</p>
                </li>
                <li class="p0">
                    <div>중앙의/약,<br>경희한 포함</div>
                    <div><strong>58</strong></div>
                    <p>중/경/외/시</p>
                </li>
            </ul>
            <ul class="type13">
                <li class="two">
                    <div><strong>61</strong></div>
                    <p>건/동/홍/숙</p>
                </li>
                <li class="two">
                    <div><strong>481</strong></div>
                    <p>주요대학 합계</p>
                </li>
            </ul>
            <p class="r-txt">
                *안양, 과천, 의왕, 군포 지역 기준<br>
                **2024.03.04기준<br>
                (중복 합격 건수 포함, 추가 합격자 발표 시까지 업데이트 예정)
            </p>
        </div>
        <% ElseIf campus_code = "CD0245" Then '목동 %>
        <div class="result-box">
            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont01_txt.png" alt="합격을 위한 최선의 선택! 러셀 영통 2020~2024학년도 대입 합격 현황" /></p>
            <ul class="num-list gold">
                <li>
                    <p>
                        의예과<br>
                        <strong>68</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        치한수<br>
                        <strong>42</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        약학과<br>
                        <strong>44</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        과학 <br> 기술원<br>
                        <strong>13</strong><span>명</span><br>
                        <span class="f11">*카이스트 6명 포함*</span>
                    </p>
                </li>
                <li>
                    <p>
                        서울대<br>
                        <strong>21</strong><span>명</span>

                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        연세대<br>
                        <strong>54</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        고려대<br>
                        <strong>64</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        교대 외 <br> 특수 대학<br>
                        <strong>43</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        최상위권 <br> 주요대학<br>
                        <strong>926</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <p class="r-txt">
                * 러셀 목동 2022-2024학년도 바른공부 자습전용관 재원생 기준 <br> (복수 대학 합격자 포함, 단과 수강생 미포함)

            </p>
        </div>
        <!-- <div class="result-box">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont01_txt.png" alt="대입성공을 위한 최선의 선택! 러셀 평촌 2023학년도 대입 합격 현황" /></p>
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
        </div> -->
        <% ElseIf campus_code = "CD0342" Then '대구 %>
        <div class="result-box">
            <p class="tit m-img60"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont01_txt.png" alt="대입성공을 위한 최선의 선택! 러셀 대구 2023학년도 대입 합격 현황" /></p>
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
                    <span class="txt">(서울대, 연세대, 성균관대, 가톨릭대, 울산대 기준)</span>
                </li>
                <li>
                    <p>
                        <strong>116</strong><br>
                        전국 의예
                    </p>
                </li>
            </ul>
            <ul class="num-list gold type02">
                <li>
                    <p>
                        <strong>116</strong><br>
                        치&middot;한&middot;수&middot;약학
                    </p>
                </li>
                <li>
                    <p>
                        <strong>73</strong><br>
                        서&middot;연&middot;고
                    </p>
                </li>
            </ul>
            <ul class="num-list gold type02">
                <li>
                    <p>
                        <strong>88</strong><br>
                        서성한이<br>
                        과학기술원
                    </p>
                </li>
                <li>
                    <p>
                        <strong>117</strong><br>
                        경북대
                    </p>
                    <span class="txt">(*의약학계열 44명)</span>
                </li>
            </ul>
            <p class="r-txt">*2023년 러셀 대구 바른공부 자습전용관 재원생 기준 <br>
                (복수 대학 합격자 및 수시 중복 합격자 포함, 단과 수강생 미포함)<br>
                *2024.3.15 기준이며, 지속적으로 업데이트 될 예정입니다
            </p>
        </div>
        <div class="review-v-list">
            <div class="p-info">
                <div>
                    <span><img src="<%=Application("img_path_russel")%>/m_russel/russel_dg/2024/regular/stu_jhh.png" alt="조현호" /></span>
                    <a href="javascript:CastPopup('https://tv.naver.com/v/45182079');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/ico_play.png" alt="" /></a>
                </div>
                <dl>
                    <dt><div>2024</div>
                    </dt>
                    <dd>러셀 대구 HS반 조현호
                        <br>
                        <span>재원기간 23년 8월~수능까지</span>
                    </dd>
                </dl>
            </div>
            <div class="p-review">
                <p class="tit">“1타 강사님의 즉각적인 피드백을 통해 <br>&nbsp;올바른 공부 방향을 잡을 수 있었습니다.”
                </p>
                <p class="txt">
                    담임선생님께서 최상위 면학분위기를 조성 해주셨습니다. 
                    적당한 긴장감을 유지해주고, 시기에 맞는 입시정보를 제공해주셔서 큰 도움이 되었습니다. 
                    또 개개인에 맞는 조언과 충고로 내 상태를 되돌아보고 개선하는데 큰 도움이 되었습니다.                    
                </p>
            </div>
            <div class="p-box">
                <div class="b-info">
                    <div>
                        <ul>
                            <li><strong>2024학년도</strong> 296점</li>
                            <li>2023학년도 280점</li>
                        </ul>
                        <p>백분위 80% 상승</p>
                    </div>
                </div>
            </div>
            <table class="tbl-type01 tb-info">
                <colgroup>
                    <col style="width:20%" />
                    <col style="width:20%" />
                    <col style="width:20%" />
                    <col style="width:20%" />
                    <col style="width:20%" />
                </colgroup>
                <thead>
                    <tr>
                        <th>구분</th>
                        <th>국어</th>
                        <th>수학</th>
                        <th>탐구</th>
                        <th>총합</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="key-color">2024 수능</td>
                        <td class="key-color">97</td>
                        <td class="key-color">100</td>
                        <td class="key-color">99</td>
                        <td class="key-color">296</td>
                    </tr>
                    <tr>
                        <td>2023 수능</td>
                        <td>96</td>
                        <td>100</td>
                        <td>84</td>
                        <td>280</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="s-slide swiper-container type04">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="review-v-list s-box">
                        <div class="p-box">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2024</div>
                                    </dt>
                                    <dd>러셀 대구 HS반 김예진<br>
                                        <strong>가천대/이화여대 약학과 합격</strong>
                                        <br>
                                        <span>재원기간 23년 2월~수능까지
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <div class="b-info">
                                <div>
                                    <ul>
                                        <li><strong>2024학년도</strong> 292.5점</li>
                                        <li>2023학년도 275.5점</li>
                                    </ul>
                                    <p>백분위 <strong> 69% 상승</strong></p>
                                </div>
                            </div>
                        </div>
                        <table class="tbl-type01 tb-info">
                            <colgroup>
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="key-color">2024 수능</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                </tr>
                                <tr>
                                    <td>2023 수능</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>3</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="review-v-list s-box">
                        <div class="p-box">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2024</div>
                                    </dt>
                                    <dd>러셀 대구 서의치반 조혜린<br>
                                        <strong>성균관대 약학과/ 계명대 의예과 합격</strong>
                                        <br>
                                        <span>재원기간 23년 1월~수능까지</span>
                                    </dd>
                                </dl>
                            </div>
                            <div class="b-info">
                                <div>
                                    <ul>
                                        <li><strong>2024학년도</strong>291.5점</li>
                                        <li>2023학년도 276점</li>
                                    </ul>
                                    <p>백분위 <strong> 65% 상승</strong></p>
                                </div>
                            </div>
                        </div>
                        <table class="tbl-type01 tb-info">
                            <colgroup>
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="key-color">2024 수능</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                </tr>
                                <tr>
                                    <td>2023 수능</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>2</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="review-v-list s-box">
                        <div class="p-box">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2024</div>
                                    </dt>
                                    <dd>러셀 대구 서의치반 이시훈 <br>
                                        <strong>연세대 언더우드학부 합격</strong>
                                        <br>
                                        <span>재원기간 22년 12월~수능까지</span>
                                    </dd>
                                </dl>
                            </div>
                            <div class="b-info">
                                <div>
                                    <ul>
                                        <li><strong>2024학년도</strong>284점</li>
                                        <li>2023학년도 210.5점</li>
                                    </ul>
                                    <p>백분위 <strong> 82% 상승</strong></p>
                                </div>
                            </div>
                        </div>
                        <table class="tbl-type01 tb-info">
                            <colgroup>
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="key-color">2024 수능</td>
                                    <td class="key-color">2</td>
                                    <td class="key-color">2</td>
                                    <td class="key-color">2</td>
                                    <td class="key-color">1</td>
                                </tr>
                                <tr>
                                    <td>2023 수능</td>
                                    <td>3</td>
                                    <td>2</td>
                                    <td>7</td>
                                    <td>5</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="review-v-list s-box">
                        <div class="p-box">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2024</div>
                                    </dt>
                                    <dd>러셀 대구 HS반 이인우<br>
                                        <strong>서울대 지리학과 합격</strong>
                                        <br>
                                        <span>재원기간 23년 8월~수능까지</span>
                                    </dd>
                                </dl>
                            </div>
                            <div class="b-info">
                                <div>
                                    <ul>
                                        <li><strong>2024학년도</strong>291.5점</li>
                                        <li>2023학년도 265점</li>
                                    </ul>
                                    <p>백분위 <strong> 76% 상승</strong></p>
                                </div>
                            </div>
                        </div>
                        <table class="tbl-type01 tb-info">
                            <colgroup>
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="key-color">2024 수능</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">2</td>
                                </tr>
                                <tr>
                                    <td>2023 수능</td>
                                    <td>3</td>
                                    <td>1</td>
                                    <td>4</td>
                                    <td>2</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="review-v-list s-box">
                        <div class="p-box">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2024</div>
                                    </dt>
                                    <dd>러셀 대구 HS반 정지원<br>
                                        <strong>경북대/영남대/계명대 의예과 합격</strong>
                                        <br>
                                        <span>재원기간 23년 9월~수능까지</span>
                                    </dd>
                                </dl>
                            </div>
                            <div class="b-info">
                                <div>
                                    <ul>
                                        <li><strong>2024학년도</strong>296점</li>
                                        <li>2023학년도 290.5점</li>
                                    </ul>
                                    <p>백분위 <strong> 58% 상승</strong></p>
                                </div>
                            </div>
                        </div>
                        <table class="tbl-type01 tb-info">
                            <colgroup>
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="key-color">2024 수능</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                </tr>
                                <tr>
                                    <td>2023 수능</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>2</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="review-v-list s-box">
                        <div class="p-box">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2024</div>
                                    </dt>
                                    <dd>러셀 대구 서의치반 권OO <br>
                                        <strong>동아대/원광대/<br>
                                            대구가톨릭대 의예과 합격</strong>
                                        <br>
                                        <span>재원기간 23년 6월~수능까지</span>
                                    </dd>
                                </dl>
                            </div>
                            <div class="b-info">
                                <div>
                                    <ul>
                                        <li><strong>2024학년도</strong>293점</li>
                                        <li>2023학년도 270.5점</li>
                                    </ul>
                                    <p>백분위 <strong> 76% 상승</strong></p>
                                </div>
                            </div>
                        </div>
                        <table class="tbl-type01 tb-info">
                            <colgroup>
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="key-color">2024 수능</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                </tr>
                                <tr>
                                    <td>2023 수능</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>3</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="review-v-list s-box">
                        <div class="p-box">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2024</div>
                                    </dt>
                                    <dd>러셀 대구 서의치반 박OO <br>
                                        <strong>경북대/순천향대 의예과 합격</strong>
                                        <br>
                                        <span>재원기간 23년 2월~수능까지</span>
                                    </dd>
                                </dl>
                            </div>
                            <div class="b-info">
                                <div>
                                    <ul>
                                        <li><strong>2024학년도</strong>277점</li>
                                        <li>2023학년도 216점</li>
                                    </ul>
                                    <p>백분위 <strong> 73% 상승</strong></p>
                                </div>
                            </div>
                        </div>
                        <table class="tbl-type01 tb-info">
                            <colgroup>
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="key-color">2024 수능</td>
                                    <td class="key-color">2</td>
                                    <td class="key-color">2</td>
                                    <td class="key-color">2</td>
                                    <td class="key-color">1</td>
                                </tr>
                                <tr>
                                    <td>2023 수능</td>
                                    <td>3</td>
                                    <td>2</td>
                                    <td>6</td>
                                    <td>4</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="review-v-list s-box">
                        <div class="p-box">
                            <div class="p-info">
                                <dl>
                                    <dt><div>2024</div>
                                    </dt>
                                    <dd>러셀 대구 연고대반 허OO <br>
                                        <strong>경북대 약학과 합격</strong>
                                        <br>
                                        <span>재원기간 23년 1월~수능까지</span>
                                    </dd>
                                </dl>
                            </div>
                            <div class="b-info">
                                <div>
                                    <ul>
                                        <li><strong>2024학년도</strong>289점</li>
                                        <li>2023학년도 233점</li>
                                    </ul>
                                    <p>백분위 <strong> 84% 상승</strong></p>
                                </div>
                            </div>
                        </div>
                        <table class="tbl-type01 tb-info">
                            <colgroup>
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="key-color">2024 수능</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">1</td>
                                    <td class="key-color">2</td>
                                    <td class="key-color">2</td>
                                </tr>
                                <tr>
                                    <td>2023 수능</td>
                                    <td>3</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>3</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="swiper-pagination p-type04"></div>
        </div>
        
        <% ElseIf campus_code = "CD0340" Then '코어광주 %>
        <div class="result-box">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont01_txt.png" alt="러셀 2023학년도 최상위권 입시 결과" /></p>
            <p class="result-txt">광주지역 재학생 <strong>수석 배출</strong></p>
            <ul class="num-list gold">
                <li>
                    <p>
                        서울대 의예<br>
                        <strong>2</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        메이저 의예<br>
                        <strong>9</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        전국 의예<br>
                        <strong>69</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        <i style="font-style: normal;" class="f10">메디컬(의/치/한/수/약) </i><br>
                        <strong>119</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        서연고<br>
                        <strong>28</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <div class="info-stxt">
                <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_info.png" alt="i" /></span>
                <div class="data-view">
                    *러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2024.02.27 기준) <br>
                    (복수 대학 합격자 포함 / 단과 수강생 제외)<br>
                    *24학년도 대학수학능력시험 응시한 광주 지역 재학생 표준점수 최고점 기준<br>
                    *메이저 의예  : 서울대/연세대/성균관대/가톨릭대/울산대 기준

                    
                </div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0344" Then '코어전주 %>
        <div class="result-box">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont01_txt.png" alt="결과로 증명하는 러셀 대전 러셀 대전 2023학년도 대입 합격 현황" /></p>
            <ul class="num-list gold">
                <li>
                    <p>
                        연세대 의예<br>
                        <strong>3</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        고려대 의예<br>
                        <strong>1</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        의예과<br>
                        <strong>46</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        치&middot;한&middot;수&middot;약<br>
                        <strong>37</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">

                <li>
                    <p>
                        SKY<br>
                        <strong>18</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        서성한이 <br> 과기원<br>
                        <strong>31</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <div class="info-stxt">
                <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/ico_info_gray.png" alt="i" /></span>
                <div class="data-view">
                    ※ 최종 업데이트 : 2024-02-26 기준 (지속적으로 업데이트할 예정입니다.) <br>
                    ※ 2024학년도 수시/정시 최종 합격 기준 / 러셀CORE 전주 바른공부 자습전용관 재원생 합격생 기준 <br>
                    (홈페이지 대입 실적 기준)                
                </div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0343" Then '코어원주 %>
        <div class="result-box">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont01_txt.png" alt="결과로 증명하는 러셀 대전 러셀 대전 2023학년도 대입 합격 현황" /></p>
            <ul class="num-list silver">
                <li>
                    <p>
                        2024학년도 <br>최종합격 <br>
                        서울대학교 <strong>3명</strong>
                    </p>
                </li>
                <li>
                    <p>
                        2024학년도<br> <strong>메이저 의예</strong> <br>
                        <strong><가톨릭대></strong> 합격생 배출                        
                    </p>
                </li>
            </ul>
            <ul class="num-list silver">
                <li>
                    <p>
                        2024학년도<br> 최종합격 <br>
                        의/치/한/약/수 <strong>46명</strong>                        
                    </p>
                </li>
                <li>
                    <p>
                        2024학년도 <br> 최종합격 <br>
                        SKY <strong>17명</strong>                        
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        의예과<br>
                        <strong>25</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        치의예<br>
                        <strong>4</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        한의예<br>
                        <strong>4</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        수의예<br>
                        <strong>10</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        약학과<br>
                        <strong>3</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        SKY<br>
                        <strong>17</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <div class="info-stxt">
                <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_info.png" alt="i" /></span>
                <div class="data-view">
                    ※ 2023년 러셀CORE 원주학원 바른공부 자습전용관 재원생 합격자 기준 <br>
                    ※ 메이저 의예 기준 : 서울대/연세대/성균관대/가톨릭대(성의)/울산대 기준 <br>
                    ※ 최종 업데이트 : 2024-02-28                    
                </div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0345" Then '코어창원 %>
        <div class="result-box">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont01_txt.png" alt="결과로 증명하는 러셀 대전 러셀 대전 2023학년도 대입 합격 현황" /></p>
            <ul class="num-list silver">
                <li>
                    <p>
                        개원 첫해 <br>
                        <strong>메이저 의대</strong> <br> 합격생 배출                        
                    </p>
                </li>
                <li>
                    <p>
                        개원 첫해  <br>
                        전국 의예과 합격생 <br> <strong>21명</strong> 배출                     
                    </p>
                </li>
            </ul>
            <ul class="num-list silver">
                <li>
                    <p>
                        2024학년도 최종합격 <br>
                        의/치/한/약/수 <br> <strong>42명</strong>                                              
                    </p>
                </li>
                <li>
                    <p>
                        2024학년도 최종합격 <br>
                        SKY <strong>10명</strong>                                           
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        울산대 의예<br>
                        <strong>1</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        서울대 치의예<br>
                        <strong>1</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        전국 의예<br>
                        <strong>21</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        메디컬<span class="f10">(의/치/한/약/수)</span><br>
                        <strong>42</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        SKY<br>
                        <strong>10</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        서성한이<br>
                        <strong>33</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <div class="info-stxt">
                <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_info.png" alt="i" /></span>
                <div class="data-view">
                    ※ 최종 업데이트 : 2024-03-07 <br>
                    ※ 2024학년도 러셀CORE 창원 바른공부 자습전용관 재원생 합격생 기준(복수 대학 합격자 포함, 단과 수강생 미포함) <br>
                    ※ 메이저 의대 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예 <br>                                      
                </div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0341" Then '코어대전 %>
        <div class="result-box">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont01_txt_1.png" alt="결과로 증명하는 러셀 대전 러셀 대전 2023학년도 대입 합격 현황" /></p>
            <ul class="num-list silver">
                <li>
                    <p>
                        2년 연속<br>
                        <strong>서울대학교 의예과</strong><br>
                        합격생 배출
                    </p>
                </li>
                <li>
                    <p>
                        2년 연속 대전 지역<br>
                        <strong>최상위권 입결 1위</strong><br>
                    </p>
                </li>
            </ul>
            <ul class="num-list silver">
                <li>
                    <p>
                        2024학년도 <br>
                        메이저의예 <strong>7명</strong>
                    </p>
                </li>
                <li>
                    <p>
                        2024학년도<br>
                        최종합격 <br>
                        의/치/한/약/수 <strong>74명</strong>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        의예과<br>
                        <strong>41</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        치의예<br>
                        <strong>4</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        약학과<br>
                        <strong>10</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        한의예<br>
                        <strong>13</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        수의예<br>
                        <strong>4</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        SKY<br>
                        <strong>23</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <div class="info-stxt">
                <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_info.png" alt="i" /></span>
                <div class="data-view">
                    ※ 최종 업데이트 : 2024-03-08 기준 / 매주 업데이트 예정 <br>
                    ※ 2024학년도 수시/정시 최종 합격 기준 / 러셀CORE 대전 바른공부 자습전용관 재원생 합격생 기준<br>
                    ※ 최상위권: 메디컬(의/치/한/약/수) + SKY<br>
                    ※ 대전 지역 단과학원_2023학년도, 2024학년도 의치한수약+서연고 최종 합격자 수 비교 기준<br>
                    (홈페이지 대입 실적 기준/2024-03-08 기준)
                </div>
            </div>
        </div>
        <% Else %>

        <% If campus_code = "CD0346" Then '코어청주 %>
        <div class="result-box mb30">
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont01_txt.png" alt="러셀 2023학년도 최상위권 입시 결과" /></p>
            <ul class="num-list gold">
                <li>
                    <p>
                        의예<br>
                        <strong>8</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        치의예<br>
                        <strong>1</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        한의예<br>
                        <strong>4</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <ul class="num-list gold">
                <li>
                    <p>
                        수의예<br>
                        <strong>1</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        약학<br>
                        <strong>3</strong><span>명</span>
                    </p>
                </li>
                <li>
                    <p>
                        SKY<br>
                        <strong>12</strong><span>명</span>
                    </p>
                </li>
            </ul>
            <div class="info-stxt">
                <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_info.png" alt="i" /></span>
                <div class="data-view">
                    &middot; 2023년 러셀CORE 청주 바른공부 자습전용관 재원 이력이 있는 학생 (복수 대학 합격자 포함, 단과 수강생 제외) <br>
                    &middot; 2024.02.29 기준, 지속적으로 업데이트 예정                    
                </div>
            </div>
        </div>
        <% End If %>
        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="prove-wrap type02">
            <div class="graph mt0">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/graph01.jpg" alt="" />
                <p class="arr-top"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/img_arrow.png" alt="" /></p>
                <span class="badge"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/top_label.png" alt="" /></span>
            </div>
            <div class="graph">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/graph02.jpg" alt="" />
                <p class="arr-top"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/img_arrow.png" alt="" /></p>
            </div>
            <div class="graph">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/graph03.jpg" alt="" />
                <p class="arr-top"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/img_arrow.png" alt="" /></p>
            </div>
            <div class="graph">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/graph04.jpg" alt="" />
                <p class="arr-top"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/img_arrow.png" alt="" /></p>
            </div>
            <div class="graph">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/graph05.jpg" alt="" />
                <p class="arr-top"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/img_arrow.png" alt="" /></p>
                <span class="badge"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/top_label.png" alt="" /></span>
            </div>
            <div class="graph">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/graph06.jpg" alt="" />
                <p class="arr-top"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/img_arrow.png" alt="" /></p>
            </div>
            
            <!-- 데이터 산출 기준-->
            <div class="l-pop">
                <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span>i</span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    <p>
                        1) 2020-2024학년도 러셀에서 배출한 서울대 의예과 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                          2024학년도 서울대 의예과 (러셀 대치 7명, 러셀 부천 1명, 러셀 분당 1명, 러셀 평촌 1명, 러셀 대구 4명, 러셀CORE 광주 2명, 러셀CORE 대전 3명 배출)<br>
                        2) 2020-2024학년도 러셀에서 배출한 메이저 의대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                           2024학년도 메이저 의대 (서울대 의예과19명, 연세대(서울) 의예과23명, 성균관대 의예과7명, 가톨릭대(성의) 의예과21명, 울산대 의예과6명, 고려대 의과대학 20명)<br>
                        3) 2020-2024학년도 러셀에서 배출한 전국 의예과 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                        4) 2020-2024학년도 러셀에서 배출한 서울대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                        5) 2020-2024학년도 러셀에서 배출한 서울대 합격자 수 2024학년도 최대 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                        6) 2020-2024학년도 러셀에서 배출한 서울대/연세대/고려대 합격자 수 2024학년도 최대 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준) <br>
                        * 전국 1위_수능 업계 오프라인 학원_2024학년도 대입 서울대학교 의예과 / 서울대 합격자 수 홈페이지 노출 기준 (2024.02.29 기준)<br>
                        ※ 본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 예정입니다.
                        
                    </p>
                </div>
            </div>
            <!-- //데이터 산출 기준 -->
        </div>
        <% End If %>
        <div class="prove-wrap">
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_txt01.jpg" alt="" /></div>
            <div class="graph">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_graph01_01.png" alt="" />
                <p class="arr-top"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/img_arrow.png" alt="" /></p>
            </div>
            <div class="graph">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_graph01_02.png" alt="" />
                <p class="arr-top"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/img_arrow.png" alt="" /></p>
            </div>
        </div>
        <!-- 데이터 산출 기준-->
        <div class="l-pop">
            <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span>i</span></a>
        </div>
        <div class="layer-wrap">
            <div class="bg-mask"></div>
            <div class="layer-in">
                <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                <ul class="list-bullet">
                    <li>2021년, 2022년, 2023년 러셀 전체 학원 바자관 <br>3월 N수 재원생의 반명 기준 수강료 완납&분납 <br>수강인원 비교</li>
                    <li>반별 입학 기준<br>
                        <p> - HS반 : 수능 국수영 또는 국수탐(1) 4등급 이내,<br> 서울대·의치대반 : 국수영 또는 국수탐(1) 5등급<br> 이내<br>
                            - 학원마다 반별 입학 기준은 상이하며, <br>각 학원 홈페이지에서 확인하실 수 있습니다.</p>
                    </li>
                </ul>
            </div>
        </div>
        <!-- //데이터 산출 기준 -->
        
            <% If campus_code <> "INTRO" Then '인트로 제외 %>
            <div class="prove-wrap">
                <% If campus_code = "CD0342" Then '대구 %>
                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_txt02.jpg" alt="" /></div>
                <% Else %>
                <% If campus_code = "CD0349" OR campus_code = "CD0346" Then '울산/코어청주 %>
                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_txt02_n.jpg" alt="" /></div>
                <ul class="mb15 award">
                    <li>
                        <div class="banner-balloon"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/banner_balloon.png" alt="" /></div>
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_graph02_intro.png" alt="" /></div>
                        <span class="award-arrow"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/ico_arrow02.png" alt="" /></span>
                    </li>
                </ul>
                <ul class="award-box">
                    <li>
                        2018~2021 <span>4년 연속 </span><sup>3)</sup>
                        <p><strong>수능 만점자& 전국 수석 배출</strong></p>
                    </li>
                    <li>
                        2024학년도 <span>메이저 의대 </span><sup>4)</sup>
                        <p><strong>96</strong>명</p>
                    </li>
                    <li>
                        2024학년도 <span>전국 의예과</span> <sup>5)</sup>
                        <p><strong>745</strong>명</p>
                    </li>
                </ul>
                <!-- 데이터 산출 기준-->
                <div class="l-pop">
                    <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span>i</span></a>
                </div>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        <p>
                            1) 2020-2024학년도 러셀에서 배출한 서울대 의예과 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준) <br>
                            2) 2024학년도 결과 (러셀 대치 7명,러셀 부천 1명,러셀 분당 1명,러셀 평촌 1명,러셀 대구 4명,러셀CORE 광주 2명,러셀CORE 대전 3명) <br>
                            3) 수능 만점자 및 전국 수석 (표준점수/백분위 합 기준) : 러셀 전체 학원 재원생의 2018~2021학년도 수능 실채점 기준) (러셀 강남 1명,러셀 대치 3명,러셀 분당 2명) <br>
                            4) 2024학년도 러셀 전체 학원에서 배출한 메이저 의대 합격자 수 (서울대의예과19명, 연세대(서울)의예과23명, 성균관대의예과7명, 가톨릭대(성의)의예과21명, 울산대의예과6명, 고려대의과대학 20명) (2024-02-29 기준)  <br>
                            5) 2024학년도 러셀 전체 학원에서 배출한 전국 의대 합격자 수 (2024-02-29 기준) <br>
                            * 전국 1위_수능 업계 오프라인 학원_2024학년도 대입 서울대학교 의예과 합격자 수 홈페이지 노출 기준 (2024.02.29 기준)<br>
                            ※ 단과 수강생은 제외하였으며 복수 대학 합격자를 포함합니다. <br>
                            ※ 본 결과는 최종 합격자를 기준으로 집계하였으며 지속적으로 업데이트될 예정입니다.                                          
                        </p>
                    </div>
                </div>
                <!-- //데이터 산출 기준 -->
                <% Else %>
                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_txt02_n.jpg" alt="" /></div>
                <ul class="mb15 award">
                    <li>
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_graph02.png" alt="" /></div>
                        <span class="award-arrow"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/ico_arrow02.png" alt="" /></span>
                    </li>
                </ul>
                <ul class="award-box">
                    <li>
                        2018~2021 <span>4년 연속 </span><sup>3)</sup>
                        <p><strong>수능 만점자& 전국 수석 배출</strong></p>
                    </li>
                    <li>
                        2023학년도 <span>메이저 의대 </span><sup>4)</sup>
                        <p><strong>68</strong>명</p>
                    </li>
                    <li>
                        2023학년도 <span>전국 의예과</span> <sup>4)</sup>
                        <p><strong>497</strong>명</p>
                    </li>
                </ul>
                <!-- 데이터 산출 기준-->
                <div class="l-pop">
                    <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span>i</span></a>
                </div>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        <p>1) 2020-2024학년도 러셀에서 배출한 서울대 의예과 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2023-12-26 기준)<br>
                            2) 2024학년도 수시 결과 (러셀 대구 4명, 러셀 대치 4명, 러셀 부천 1명, 러셀 분당 1명, 러셀 평촌 1명, 러셀CORE  광주 2명, 러셀 CORE 대전 3명 배출)<br>
                            3) 수능 만점자 및 전국 수석(표준점수/백분위 합 기준) : 러셀 전체 학원 재원생의 2018~2021학년도 수능 실채점 기준 (러셀 강남 1명, 러셀 대치 3명, 러셀 분당 2명)<br>
                            4) 2023학년도 러셀 전체 학원에서 배출한 메이저 의대, 전국 의예과 합격자 수 (단과 수강생 제외/복수대학 합격자 포함) (2023-02-28 기준)<br>
                            ※ 2024학년도 대입 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될  예정입니다.
                        </p>
                    </div>
                </div>
                <!-- //데이터 산출 기준 -->
                <% End If %>
                <% End If %>
                <div style="position:relative;">
                    <div class="graph-swiper g01 swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_graph02_01.png" alt="" /></div>
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_graph02_02.png" alt="" /></div>
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_graph02_03.png" alt="" /></div>
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_graph02_04.png" alt="" /></div>
                        </div>
                        <div class="swiper-pagination gp01"></div>
                    </div>
                    <!-- 데이터 산출 기준-->
                    <div class="l-pop">
                        <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span>i</span></a>
                    </div>
                    <div class="layer-wrap">
                        <div class="bg-mask"></div>
                        <div class="layer-in">
                            <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                            <ul class="list-star">
                                <li>2022년 러셀 전체 학원 바자관 N수 정규반 재원생 중 2022~2023학년도 수능 성적/등급(국수탐(2)) 확인이 가능한 재원생의 성적 비교</li>
                            </ul>
                        </div>
                    </div>
                    <!-- //데이터 산출 기준 -->
                </div>

                <% If campus_code = "CD0342" Then '대구 %>
                <div style="position:relative;">
                    <div class="graph-swiper g02 swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_graph03_01.png" alt="" /></div>
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_graph03_02.png" alt="" /></div>
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont01_graph03_03.png" alt="" /></div>
                        </div>
                        <div class="swiper-pagination gp02"></div>
                    </div>
                    <!-- 데이터 산출 기준-->
                    <div class="l-pop mb0">
                        <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span>i</span></a>
                    </div>
                    <div class="layer-wrap">
                        <div class="bg-mask"></div>
                        <div class="layer-in">
                            <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                            <ul class="list-star">
                                <li>2020-2023학년도 러셀에서 배출한 서울대 의예과 <br>합격자 수 2023학년도 최다 배출 <br> 
                                    (단과 수강생 제외/복수대학 합격자 포함) <br>(2023-02-28 기준)</li>
                                <li>2018-2023학년도 러셀에서 배출한 메이저 의대, <br> 
                                    전국 의예과 합격자 수 2023학년도 최다 배출<br>(단과 수강생 제외/복수대학 합격자 포함)<br>(2023-02-28 기준)</li>
                            </ul>
                        </div>
                    </div>
                    <!-- //데이터 산출 기준 -->
                </div>
                <% End If %>
            </div>
            <% End If %>
        <% End If %>
    </div>
</div>
<!-- cont02 -->
<% If campus_code <> "CD0342" Then '대구제외 %>
<div class="cont02 js-cont <%=campusCom%>">
    <div class="inner">
        <div class="review-wrap">
            <% If campus_code = "CD0247" Then '강남 %>
            <div class="swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>서울대학교 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 강남 이윤서</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 298점</li>
                                    <li>2022학년도 270점</li>
                                </ul>
                                <p>93.3% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">학원에 공부를 잘하고,<br>
                                열심히 하는 친구들이 많아 면학분위기가<br>
                                잘 조성되어 있어 선택하게 되었습니다.</p>
                            <p><strong>러셀의 장점은 면학분위기입니다.</strong> 주변 학생들이 열심히 공부하니
                                자극도 받고, 생활패턴을 보고 배울 수 있어서 좋았습니다. 또한, <strong>수능
                                시간표에 맞춰서 생활할 수 있게 지도</strong>해주는 것이 가장 좋았습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>경희대학교 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 강남 정연욱</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 293.5점</li>
                                    <li>2022학년도 276점</li>
                                </ul>
                                <p>72.9% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">러셀에서 좋았던 점은 모의고사 이후 총평 적는 것입니다.</p>
                            <p>모의고사를 풀고 난 직후 다시 그때 상황을 복기해서 나의 약점이나 
                                부족했던 부분들을 찾아내는 게 <strong>학습 방향성</strong>을 정하는 데에 큰 도움이 되었습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>한양대학교(ERICA) 약학과 합격</strong></p>
                                </dt>
                                <dd>러셀 강남 김상훈</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 293점</li>
                                    <li>2022학년도 230점</li>
                                </ul>
                                <p>90% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">항시 바자관 내에 조교 선생님들이 관리 감독을 해 주시기에 
                                딴짓을 하는 학생들이 거의 없었습니다.</p>
                            <p>또한 넓은 책상과 책장 그리고 낡은 곳이 없는 깨끗한 인테리어가 좋았습니다. 
                                마지막으로 <strong>표준시간표</strong>가 있어 <strong>수능 리듬에 맞춰 공부</strong>할 수 있었던 것 또한 장점이라고 생각합니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>조선대학교 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 강남 김한수</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 294.5점</li>
                                    <li>2022학년도 269.5점</li>
                                </ul>
                                <p>82% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">러셀의 장점은 학생을 최우선으로 고려한다는 점입니다.</p>
                            <p><strong>시간표의 구성, 자습 자리의 배치, 면학분위기 조성</strong> 등 사소할 수 있는 부분까지도 
                                학생들을 고려해서 짜였다는 점이 다른 학원과 대비되는 가장 큰 장점인 것 같습니다.</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <% ElseIf campus_code = "CD0001" Then '대치 %>
            <div class="swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="p-info">
                            <div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/uni_logo/uni_ys02.jpg" alt="연세대학교" /></span>
                            </div>
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>연세대학교 생활디자인학과 합격</strong></p>
                                </dt>
                                <dd>러셀 대치 강세인</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">나에게 러셀은 길었던 수험 생활의 동반자이다.<br>
                                수능 전날까지 많은 도움을 받았기 때문이다.</p>
                            <p>러셀 대치는 듣고 싶은 선생님의 강의가 여러 타임에 
                                편성되어 있어 원하는 요일, 시간에 맞춰 수업 일정을 
                                짤 수 있었습니다. 또한 담임선생님의 철저한 관리를 
                                받으며 공부할 수 있는 점이 러셀 대치의 가장 큰 장점이었습니다. </p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/uni_logo/uni_korea02.jpg" alt="고려대학교" /></span>
                            </div>
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>고려대학교 전기전자공학부 합격</strong></p>
                                </dt>
                                <dd>러셀 대치 양선호</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">수업을 듣다가 자습하러 가는 이동시간이
                                매우 짧아서 더욱 좋았습니다.</p>
                            <p>개인적으로 공부란 혼자서 하는 것이 중요하다고 생각하는 편인데, 러셀 대치는 다른 곳보다 시간의 자율성이 높아 자습시간을 늘릴 수 있었습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/uni_logo/uni_kh.jpg" alt="경희대학교" /></span>
                            </div>
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>경희대학교 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 대치 서지원</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">원하는 수업만 선택하여 수강할 수 있기 때문에
                                단과와 자습일정을 개인이 설계하여 더욱 효율적이었습니다.</p>
                            <p>단과와 자습을 한 건물에서 병행할 수 있어 편리하고 시간절약이 많이 되었습니다. 또한 내가 원하지 않는 메뉴의 급식이 나오는 날엔 외식이 가능하여 만족스러웠고 고퀄리티의 모의고사를 매달 실시해 큰 도움이 되었습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/uni_logo/uni_ky.jpg" alt="건양대학교" /></span>
                            </div>
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>건양대학교 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 대치 변우성</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">러셀 대치의 장점은 항상 내 편이 되어주는
                                담임선생님과 쾌적한 환경입니다.</p>
                            <p>자체모의고사 이후 총평노트를 적었는데 담임선생님과 천천히 복습해보며 잘못된 풀이를 점검하는 시간을 가질 수 있어서 좋았습니다. 담임선생님들께서 항상 옆에서 관리해주셔서 너무 감사했습니다.</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <% ElseIf campus_code = "CD0245" Then '목동 %>
            <div class="swiper swiper-container review-slide">
                <div class="swiper-wrapper type04">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/stu01.png" alt="" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/48230976');"><img src="<%=Application("img_path_russel")%>/m_russel/russel_md/2024/regular/ico_play.png" alt="" /></a>
                                </div>
                                <dl>
                                    <dt>
                                        <p class="year">2024</p>
                                        <p><strong>연세대학교 중어중문학과 합격</strong></p>
                                    </dt>
                                    <dd>러셀 목동 이서진</dd>
                                </dl>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    러셀 목동 바른공부 자습전용관은 효율적인 시간 관리가 가능한 최적의 시스템입니다.
                                </p>
                                <p>
                                    바자관의 장점은 학습 시간을 개인의 필요에 맞게 확보할 수 있다는 것입니다. 부족한 과목 공부 시간을 많이 확보해야 했는데 스케줄을 자율적으로 짤 수 있어서 제 필요에 
                                    맞게 효율적으로 학습할 수 있었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide icoPosition">
                        <div class="detail">
                            <div class="p-info">
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/stu02.png" alt="" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/48230989');"><img src="<%=Application("img_path_russel")%>/m_russel/russel_md/2024/regular/ico_play.png" alt="" /></a>
                                </div>
                                <dl>
                                    <dt>
                                        <p class="year">2024</p>
                                        <p><strong>고려대학교 경영학과 합격</strong></p>
                                    </dt>
                                    <dd>러셀 목동 장준혁</dd>
                                </dl>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    매월 진행되는 모의고사를 통해 수험 기간 동안의 긴장감을 유지하고 감각을 익히는 데 도움이 되었습니다.
                                </p>
                                <p>
                                    러셀 시스템의 장점은 매월 보는 모의고사와 총평노트입니다. 매월 진행되는 모의고사는 많은 학생들이 응시할 뿐만 아니라 난이도와 문제 스타일 또한 평가원과 굉장히 유사하여 수능의 감각을 익히는 데 도움이 되었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="p-info">
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/stu03.png" alt="" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/49402904');"><img src="<%=Application("img_path_russel")%>/m_russel/russel_md/2024/regular/ico_play.png" alt="" /></a>
                                </div>
                                <dl>
                                    <dt>
                                        <p class="year">2024</p>
                                        <p><strong>연세대학교 기계공학과 합격</strong></p>
                                    </dt>
                                    <dd>러셀 목동 손정훈</dd>
                                </dl>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    담임선생님과 1:1 상담을 통해 슬럼프를 극복할 수 있었고, 불편한 점을 빠르게 해결할 수 있었습니다.
                                </p>
                                <p>
                                    공부하면서 힘들 때마다 담임선생님과 1:1 상담을 편하게 신청할 수 있어서 학습이나 여러 문제로 고민될 때 여러 조언을 들을 수 있었습니다. 선생님의 오랜 경험으로 해결 방안을 제안해 주셔서 빠르게 슬럼프에서 빠져나올 수 있었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide icoPosition">
                        <div class="detail">
                            <div class="p-info">
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/stu04.png" alt="" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/49404108');"><img src="<%=Application("img_path_russel")%>/m_russel/russel_md/2024/regular/ico_play.png" alt="" /></a>
                                </div>
                                <dl>
                                    <dt>
                                        <p class="year">2024</p>
                                        <p><strong>연세대학교 간호학과 합격 </strong></p>
                                    </dt>
                                    <dd>러셀 목동 김채현</dd>
                                </dl>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    러셀 목동 바른공부 자습전용관은 열심히 공부해야 할 원동력을 얻을 수 있는 환경입니다.
                                </p>
                                <p>
                                    개방형 구조로 되어있어 주변 친구들이 열심히 공부하는 모습을 보며 집중할 수 있었습니다. 또한 승강반 제도가 있어서 공부하는 보람도 있었고, 열심히 공부해야 할 원동력을 얻을 수 있었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <!-- <div class="swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="p-info">
                            <div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/uni_logo/uni_ys02.jpg" alt="연세대학교" /></span>
                            </div>
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>연세대학교 응용통계학과 합격</strong></p>
                                </dt>
                                <dd>러셀 목동 석지훈</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">러셀 목동 바른공부 자습전용관은
                                공부에만 집중할 수 있는 최적의 환경입니다.</p>
                            <p>러셀의 장점은 공부에만 집중할 수 있는 환경을 만들어 준다는 것입니다. 
                                최상위권 학생들과 같이 공부하면서, 저 스스로에게도 동기부여가 된 것 같습니다. 
                                바자관 분위기는 공부에만 집중할 수 있는 환경이어서 동기부여를 받고 
                                열심히 하고자 하는 마음이 들었던 거 같습니다.
                            </p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/uni_logo/uni_korea02.jpg" alt="고려대학교" /></span>
                            </div>
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>고려대학교 가정교육과 합격</strong></p>
                                </dt>
                                <dd>러셀 목동 김민서</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">러셀 목동의 장점은 공부에 필요한 모든 것들이
                                한곳에 갖춰져 있어요.</p>
                            <p>러셀의 장점은 공부에 필요한 모든 것들이 한 곳에 갖춰져 있는 것입니다. 
                                우수한 면학분위기 속에서 자습을 할 수 있는 자습관, 
                                수업을 들을 수 있는 강의실, 고민을 상담해 주실 담임선생님들, 
                                그 밖에도 프린터기 등 편리한 시설물 등 공부에만 집중할 수 있는 시스템이 마련되어 있기 때문입니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/uni_logo/uni_cn.jpg" alt="충남대학교" /></span>
                            </div>
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>충남대학교 약학과 합격</strong></p>
                                </dt>
                                <dd>러셀 목동 정재열</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">러셀에서 제공되는 다양한 콘텐츠가
                                시간 분배 능력 향상 및 학습 방향에 도움이 되었습니다.</p>
                            <p>러셀 학원의 메가 x 대성 더 프리미엄 모의고사와 퀄 모의고사의 훌륭한 퀄리티가 학습에 도움을 주었습니다. 
                                월간 장영진 콘텐츠를 통하여 스스로의 단점을 찾아 보완할 수 있었습니다. 
                                평가원 이후에는 실전 모의고사를 통하여 시간 분배 능력을 키우고, 학습 방향을 수정해 나갈 수 있었습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/uni_logo/uni_korea02.jpg" alt="고려대학교" /></span>
                            </div>
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>고려대학교 자유전공학부 합격</strong></p>
                                </dt>
                                <dd>러셀 목동 김현준</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">담임선생님께서 도움 되는 조언과 공부 관련 상담을 
                                해주셔서 수험생활을 문제없이 보낼 수 있었습니다.</p>
                            <p>담임선생님께서 상담을 하면서 공부 방향성과 제 공부 방법의 부족한 점을 알려주셔서 
                                그 부분을 채울 수 있었습니다. 또 제가 슬럼프가 찾아와 힘들 때 담임선생님과 상담을 
                                하면서 슬럼프를 극복해 낼 수 있었습니다. </p>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div> -->
            <% ElseIf campus_code = "CD0250" Then '부천 %>
            <div class="swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="p-info">
                            <div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2024/regular/cont02_stu_pjw.png" alt="박정우" /></span>
                                <a href="javascript:CastPopup('https://tv.naver.com/v/51835181');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/ico_play.png" alt="" /></a>
                            </div>
                            <dl>
                                <dt>
                                    <p class="year">2024</p>
                                    <p><strong>연세대(미래) 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 부천 박정우</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">러셀 부천학원 자습관의 장점은 좋은 면학분위기 입니다.</p>
                            <p>자습시간 중 늘어지거나 저도 모르는 사이에 휴식을 취하는 경우가 생기면, 조교나 선생님들께서 다시 자습에 돌입할 수 있도록 관리해주셨습니다.<br>
                                또한 자습관 내 의사소통 등 친목행위를 일절 금지하여 공부만 할 수 있는 좋은 분위기가 형성될 수 있었습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2024/regular/cont02_stu_jcy.png" alt="전찬영" /></span>
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48572948');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/ico_play.png" alt="" /></a>
                            </div>
                            <dl>
                                <dt>
                                    <p class="year">2024</p>
                                    <p><strong>고려대 철학과 합격</strong></p>
                                </dt>
                                <dd>러셀 부천 전찬영</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">자습관 담임선생님께서 항상 관심가지고 챙겨주셨기에 공부에만 집중할 수 있었습니다.</p>
                            <p>공부를 하다 보면 학습이나 생활면에 있어 여러 고민거리나 불안감이 생기기 마련입니다. 그럴 때마다 담임선생님께서 상담과 격려를 통해 고민거리와 불안감을 해결해 주셨기에 다시 공부에만 집중할 수 있었습니다.<br>
                                또한 수시, 수능 원서 접수나 자습관 재등록과 같이 공부 외적으로 신경 써야 할 부분에서도 항상 관심가지고 챙겨주셔서 공부에만 집중할 수 있었습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2024/regular/cont02_stu_lge.png" alt="이가은" /></span>
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48573125');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/ico_play.png" alt="" /></a>
                            </div>
                            <dl>
                                <dt>
                                    <p class="year">2024</p>
                                    <p><strong>강원대 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 부천 이가은</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">자습관의 가장 큰 장점은 개방적인 구조라고 생각합니다.</p>
                            <p>다른 학생들이 공부하는 모습을 볼 수 있어 집단적인 면학분위기를 형성할 수 있을 뿐만 아니라 어두운 분위기의 다른 독서실과 다르게 개방감을 주어 실내에 오랜 시간 머물러도 답답하지 않아 긴 시간 공부에 집중할 수 있도록 도와줍니다.</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <% ElseIf campus_code = "CD0244" Then '분당 %>
            <div class="swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>중앙대학교 의학부 합격</strong></p>
                                </dt>
                                <dd>러셀 분당 김OO</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 296점</li>
                                    <li>2022학년도 286점</li>
                                </ul>
                                <p>71.4% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">분당에서 가장 높은 성적대의 학생들이 모여 있는 곳이라 
                                선택하게 되었습니다.</p>
                            <p>탁 트인 책상 구조 덕분에 옆 자리 친구가 바로 보이는 점이 좋았습니다. 
                                같은 반 친구가 열심히 공부하는 모습이 보여, 집중력이 흐트러지거나 
                                졸릴 때 옆 자리 친구를 보며 자극을 받을 수 있었습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>한양대학교 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 분당 김OO</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 297점</li>
                                    <li>2022학년도 282.5점</li>
                                </ul>
                                <p>82.9% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">충분한 자습 시간을 확보할 수 있었고, 
                                바자관을 비롯한 학원 공간이 쾌적해서 집중이 잘 되었습니다.</p>
                            <p>조용한 분위기, 넓은 책상에서 편하게 공부할 수 있는 점이 좋았고 
                                시간표 자체가 한 번에 긴 시간 동안 공부하는 시간표여서 
                                집중력을 키우는데 도움이 되었습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>서울대학교 컴퓨터공학부 합격</strong></p>
                                </dt>
                                <dd>러셀 분당 김OO</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 295.5점</li>
                                    <li>2022학년도 283.5점</li>
                                </ul>
                                <p>72.7% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">자습 환경이 잘 이루어져있고 충분한 관리를 받으며,
                                입시 관련 도움도 받을 수 있어서 선택했습니다.</p>
                            <p>매달 시행되는 모의고사는 실전 감각을 유지하는 데에 도움이 되었습니다. 
                                또한, 수능 전에 진행된 셀프 모의고사반을 통해 전 과목 모의고사를 
                                실제와 비슷한 환경에서 연습할 수 있어서 좋았습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>고려대학교 자유전공학부(자연) 합격</strong></p>
                                </dt>
                                <dd>러셀 분당 류OO</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 288.5점</li>
                                    <li>2022학년도 264점</li>
                                </ul>
                                <p>68.1% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">바자관과 강의실이 같은 건물에 있다 보니
                                이동하는데 시간이 거의 들지 않았던 것이 좋았습니다.</p>
                            <p>주기적으로 시행되는 모의고사 덕분에 취약점을 파악할 수 있고 
                                수능 시험에 익숙해질 수 있어서 도움이 많이 되었습니다. 
                                또한, 플래너를 작성하고 주기적으로 검사 받으며 
                                자칫 흐트러질 수 있는 공부 계획을 다잡을 수 있었습니다.</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <% ElseIf campus_code = "CD0249" Then '영통 %>
            <div class="swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>서울대학교 생명과학부 합격   </strong></p>
                                </dt>
                                <dd>러셀 영통 김태현</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">바자관의 좋은 면학분위기와 자습시간을 많이 
                                확보할 수 있다는 장점 때문에 러셀을 선택하게 되었습니다.</p>
                            <p>수능이라는 같은 시험을 준비하고 있는 학생들이 바로 옆에서 
                                열심히 <strong>공부하고 있는 장면</strong>을 볼 수 있기 때문에 더 집중하려고 노력하게 되는 것 같습니다. 
                                또한 핸드폰을 수거하기 때문에 최대한 <strong>공부 외적인 것의 유혹을 떨쳐 내고 공부에만 집중</strong>할 수 있었습니다. </p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>이화여자대학교 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 영통 조윤주</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">자습시간을 효율적으로 관리해주기 때문에 
                                저에게 주어진 한정적인 시간을 공부에 충분히 투자할 수 있었습니다.</p>
                            <p>러셀의 장점은 <strong>철저한 관리와 공부하기 좋은 시설, 수능 시간표에 맞춰진 시간표</strong>입니다. 
                                학생들이 공부에 완전히 집중할 수 있도록 <strong>담임선생님들께서 철저하게 관리</strong>해주셔서 
                                불편함 없이 공부에만 집중할 수 있었습니다. </p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>이화여자대학교 약학과 합격</strong></p>
                                </dt>
                                <dd>러셀 영통 김채연</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">의지가 약한 편이라 학습관리를 철저히 해주는
                                러셀학원을 등록하였습니다.</p>
                            <p><strong>러셀의 장점은 학생들이 공부를 잘할 수 있도록 관리를 잘해준다는 것입니다.</strong>
                                우선, 늘어지지 않고 표준 시간표대로 규칙적으로 공부할 수 있었던 점이 좋았고, 
                                선생님들께서 바자관 안을 계속 점검하면서 공부에 방해되는 요소들은 해결해 주셔서 좋았습니다. </p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>세명대학교 한의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 영통 정인지</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">저같이 본인이 통제가 되지 않는 학생들을 위하여 
                                적절한 통제를 걸어 주시는 것이 정말 좋았습니다.</p>
                            <p>바자관의 장점은 선생님들과 조교님들의 면학분위기 조성이라고 생각합니다. 
                                <strong>졸 때마다 깨워 주시고 학습 지도</strong>도 해 주시고 아침에 졸린 아이들을 모아 두고 
                                스트레칭을 시키는 여러 이벤트나 생활관리 강화 기간의 도입으로 <strong>면학분위기가 조성되는 공간</strong>이라는 것이 
                                러셀에 계속 남게 만든 메리트라고 생각합니다. </p>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <% ElseIf campus_code = "CD0246" Then '센텀 %>
            <div class="swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>중앙대학교 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 센텀 박O인</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 297점</li>
                                    <li>2022학년도 274점</li>
                                </ul>
                                <p>23점 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">최상위권 친구들과 열심히 하려는 친구들이 많아<br>
                                면학분위기 만큼은 정말 만족했습니다.</p>
                            <p>게다가 자극을 받을 수 있는 개방형 구조도 정말 좋았습니다. 
                                집중이 잘 안되는 날에는 주변에서 열심히 집중하는 친구들을 보며 
                                스스로 다독이며 공부하기도 했습니다. 
                                그래서 나름 만족한 결과가 나온 것 같습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>영남대학교 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 센텀 김O연</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 295.5점</li>
                                    <li>2022학년도 236점</li>
                                </ul>
                                <p>59.5점 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">능동적으로 공부하기에는 러셀 센텀학원의<br>
                                바른공부 자습전용관이 제격입니다.</p>
                            <p>저는 자습을 선호하는 편인데, 선택적으로 수업을 들음으로써 
                                자습시간을 제대로 확보할 수 있어서 좋았습니다. 
                                그때그때 지금 필요한 학습을 충분한 시간에 
                                할 수 있다는 점이 러셀 센텀학원의 큰 장점입니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>조선대학교 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 센텀 김O희</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 293점</li>
                                    <li>2022학년도 271점</li>
                                </ul>
                                <p>22점 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">나에게 정말 필요한 수업만 들을 수 있다는 점이<br>
                                러셀 센텀학원을 선택한 이유입니다.</p>
                            <p>저는 국어를 정말 어려워했습니다. 그래서 국어 공부 비중을 높여야 했는데, 
                                러셀 센텀학원에서는 내가 가장 필요한 공부만 할 수 있어서 정말 좋았습니다. 
                                약점을 완벽하게 보완할 수 있던 재수 생활이었습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>동덕여자대학교 약학과 합격</strong></p>
                                </dt>
                                <dd>러셀 센텀 임O민</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 290.5점</li>
                                    <li>2022학년도 267점</li>
                                </ul>
                                <p>23.5점 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">시설은 물론 면학분위기 등 전반적으로 고려했을 때, 
                                이 곳이야 말로 가장 완벽한 선택이었습니다.</p>
                            <p>책상과 의자가 넓어 모의고사 시험지를 올려놔도 
                                자리가 부족하지 않아서 정말 좋았습니다.<br> 
                                조용한 분위기는 물론 다른 스트레스 안 받도록 
                                세심한 배려가 작은 거 하나하나에서 확실히 보여 만족했습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>숙명여자대학교 약학과 합격</strong></p>
                                </dt>
                                <dd>러셀 센텀 장O진</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 286.5점</li>
                                    <li>2022학년도 242점</li>
                                </ul>
                                <p>44.5점 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">러셀은 가장 높은 성적대의 학생들이 모여 있는 <br>
                                곳이라 선택하게 되었습니다.</p>
                            <p>평소 러셀 센텀학원에는 높은 성적대의 학생들이 많다는 걸 
                                알고 있었습니다. 그래서 공부할 때 실시간으로 자극을 받고자 선택했는데, 
                                탁 트인 책상 구조 덕분에 언제나 자극을 받아 
                                한시도 흐트러짐 없이 공부할 수 있었습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>서울대학교 인문학부 합격</strong></p>
                                </dt>
                                <dd>러셀 센텀 전O진</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 283.5점</li>
                                    <li>2022학년도 235점</li>
                                </ul>
                                <p>48.5점 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">의지가 약한  편이라 학습 관리를 철저히 해주는
                                러셀학원을 등록하였습니다.</p>
                            <p>러셀 센텀학원의 가장 큰 장점은 공부를 효율적으로 하게끔 
                                확실한 관리를 해주신 담임선생님인 것 같습니다. 
                                게다가 수시로 공부에 방해되는 요소들을 해결해주신 
                                담임선생님께 감사하고 전하고 싶습니다.</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <% ElseIf campus_code = "CD0257" Then '중계 %>
            <div class="swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="p-info">
                            <div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/uni_logo/uni_cn.jpg" alt="충남대학교" /></span>
                            </div>
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>충남대학교 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 중계 박준우</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">바자관 면학분위기도 좋고 담임선생님의 관리도
                                꾸준히 받을 수 있어서 선택하게 되었습니다.</p>
                            <p>개방형 구조로 되어 있어서 답답한 느낌 없이 공부할 수 있었고, 
                                졸릴때에도 다른 학생들이 열심히 공부하고 있는 모습을 보고 
                                정신차리고 다시 공부할 수 있었습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/uni_logo/uni_korea02.jpg" alt="고려대학교" /></span>
                            </div>
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>고려대학교 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 중계 김민재</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">바자관 학습 분위기가 매우 좋았고, 학원에서 자습 시간을
                                강제적으로 해야한다는 점이 마음에 들었습니다.</p>
                            <p>쾌적환 환경, 철저한 관리, 표준시간표 그리고 체계적인 출결관리가 
                                습관 유지와 면학분위기 조성에 큰 도움이 되었습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/uni_logo/uni_seoul02.jpg" alt="서울대학교" /></span>
                            </div>
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>서울대학교 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 중계 노현지</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">담임선생님의 관리를 받으면서 끈기있게 공부하고 싶어
                                러셀을 선택하게 되었습니다.</p>
                            <p>바자관 환경과 표준시간표가 가장 좋았습니다. 바자관 분위기가 편안하게 느껴졌고, 
                                의자도 매우 편해서 공부에 집중할 수 있었습니다. 그리고 수능 시간표에 맞춰서 
                                계획을 세우니 과목별로 균형을 맞춰서 규칙적으로 공부 할 수 있었습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/uni_logo/uni_ds.jpg" alt="덕성대학교" /></span>
                            </div>
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>덕성여자대학교 약학과 합격</strong></p>
                                </dt>
                                <dd>러셀 중계 민지우</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">정해진 의무 자습시간 외에도 아침 일찍 등원하거나
                                심야자습을 할 수 있어서 러셀학원을 선택하였습니다.</p>
                            <p>수능처럼 하루 종일 모의고사를 볼 수 있는 기회가 많지 않은데, 
                                러셀은 메대프 뿐만 아니라 퀄 모의고사를 1~2주에 
                                한번씩 그런 기회를 마련해 주어서 좋았습니다. </p>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <% ElseIf campus_code = "CD0248" Then '평촌 %>
            <div class="swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>고려대학교 국제학부 합격</strong></p>
                                </dt>
                                <dd>러셀 평촌 이윤지</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 275점</li>
                                    <li>2022학년도 259점</li>
                                </ul>
                                <p>39.0% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">비교적 일찍 시작함으로써 잊어버렸던 감을 되찾고, 
                                제 잘못된 학습 습관 등을 고쳐볼 수 있는 시간적 여유가 확보됐습니다.</p>
                            <p>정기적으로 메대프 모의고사를 치르면서 받았던 성적표가 주기적으로
                                제 학습 생활을 되돌아보고 피드백을 가질 수 있었던 계기가 됐습니다.<br>
                                특히 메대프 모의고사를 치른 후에 작성했던 총평은 이후 수능 직전까지 
                                두고두고 봤던 자료가 되어 큰 도움이 됐습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>건국대학교 수의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 평촌 강민석</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 289.5점</li>
                                    <li>2022학년도 276점</li>
                                </ul>
                                <p>56.3% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">열심히 공부하는 친구들이 많았던 덕에 피곤하거나
                                졸릴 때 주변을 한번 둘러보면 공부의지가<br>
                                생겼습니다.</p>
                            <p><strong>최상위권 학생들에게 단과수강과 자율학습시간을
                                자기주도적으로 분배할 수 있게 해준다는 점이
                                마음에 들어 러셀</strong>을 선택하게 되었습니다.<br>
                                또한 넓은 책상과 책장이 잘 갖춰져 있어서 불편함이
                                없었기 때문에 오로지 공부에만 집중할 수 있었습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>서울대학교 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 강남 이윤서</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 298점</li>
                                    <li>2022학년도 270점</li>
                                </ul>
                                <p>93.3% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">학원에 공부를 잘하고,<br>
                                열심히 하는 친구들이 많아 면학분위기가<br>
                                잘 조성되어 있어 선택하게 되었습니다.</p>
                            <p><strong>러셀의 장점은 면학분위기입니다.</strong> 주변 학생들이 열심히 공부하니
                                자극도 받고, 생활패턴을 보고 배울 수 있어서 좋았습니다. 또한, <strong>수능
                                시간표에 맞춰서 생활할 수 있게 지도</strong>해주는 것이 가장 좋았습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>고려대학교(안암) 전기전자공학부 합격</strong></p>
                                </dt>
                                <dd>러셀 대치 양선호</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 294.5점</li>
                                    <li>2022학년도 205점</li>
                                </ul>
                                <p>94.2% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">단과 강의실과 바른공부 자습전용관의<br>
                                거리가 가까웠고 개인의 자습시간이<br>
                                보장되는 곳이었기 때문입니다.</p>
                            <p><strong>러셀의 장점은 자습시간입니다.</strong> 개인적으로 공부란 
                                혼자서 하는 것이 중요하다고 생각하는 편인데, 
                                러셀은 다른 곳보다 <strong>시간의 자율성이 높아서 
                                자습시간을 늘릴 수 있었기 때문입니다.</strong></p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>서울대학교 인문계열 합격</strong></p>
                                </dt>
                                <dd>러셀 목동 최은영</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 291.5점</li>
                                    <li>2022학년도 227.5점</li>
                                </ul>
                                <p>88.3% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">원하는 만큼의 수업만 들을 수 있다는 점에서<br>
                                러셀을 선택하게 되었습니다.</p>
                            <p>저는 수업을 듣기보다 <strong>자습을 선호하는 편인데 
                                자습시간을 확보할 수 있어서 좋았습니다.</strong> 
                                하루를 능동적으로 구성할 수 있어서 
                                그때그때 제게 필요한 학습을 충분히 할 수 있었고 
                                <strong>수능까지 효율적으로 공부할 수 있었습니다.</strong></p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>연세대학교(서울) 건축공학과 합격</strong></p>
                                </dt>
                                <dd>러셀 부천 김도현</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 285점</li>
                                    <li>2022학년도 271.5점</li>
                                </ul>
                                <p>47.4% 상승</p> 
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">면학분위기와 장학혜택 등을 전반적으로<br>
                                고려했을 때, 어느 한 부분 부족한 것이 없어<br>
                                선택하게 되었습니다.</p>
                            <p>바자관은 개방형 구조로 되어 있어 딴짓을 덜하게 되어 
                                좋았습니다. <strong>책상과 의자가 넓고 좋아 모의고사를 
                                올려놓고도 자리가 부족하지 않은 점도 큰 장점입니다.</strong> 
                                시설만큼은 스트레스 하나도 안 받도록 세심하게 배려한 부분이 보였습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>중앙대학교 의학부 합격</strong></p>
                                </dt>
                                <dd>러셀 분당 김상범</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 296점</li>
                                    <li>2022학년도 286점</li>
                                </ul>
                                <p>71.4% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">러셀은 가장 높은 성적대의 학생들이<br>
                                모여 있는 곳이라 선택하게 되었습니다.</p>
                            <p><strong>탁 트인 책상 구조 덕분에 옆자리 친구가 바로 보이는 점이 
                                매우 좋았습니다.</strong> 같은 반 친구가 옆자리에 앉아 열심히 
                                공부하는 모습이 실시간으로 노출되어 집중력이 
                                흐트러지거나 졸릴 때 옆자리 친구를 보며 자극을 받을 수 있었습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>이화여자대학교 약학과 합격</strong></p>
                                </dt>
                                <dd>러셀 영통 김채연</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 292점</li>
                                    <li>2022학년도 281점</li>
                                </ul>
                                <p>57.9% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">의지가 약한 편이라 학습 관리를 철저히 해주는<br>
                                러셀학원을 등록하였습니다.</p>
                            <p><strong>러셀의 장점은 학생들이 공부를 잘할 수 있도록 관리를 
                                잘해준다는 것입니다.</strong> 우선, 늘어지지 않고 
                                표준 시간표대로 규칙적으로 공부할 수 있었던 점이 
                                좋았고, 선생님들께서 바자관 안을 계속 점검하면서 
                                공부에 방해되는 요소들을 해결해 주셔서 좋았습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info"> 
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>원광대학교 한의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 중계 민지우</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 291.5점</li>
                                    <li>2022학년도 280.5점</li>
                                </ul>
                                <p>56.4% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">러셀은 정해진 의무 자습시간 외에도 아침에<br>
                                일찍 등원하거나 심야자습을 할 수 있어서<br>
                                러셀학원을 선택했습니다.</p>
                            <p>수능처럼 하루 종일 모의고사를 볼 수 있는 기회가 
                                많지 않은데, <strong>러셀은 메대프 뿐만 아니라 
                                퀄 모의고사 등으로 1, 2주에 한 번씩 그런 기회를 
                                마련해 주어서 좋았습니다.</strong> 또 제가 속했던 HS반의 
                                장학 제도 조건 덕분에 수험생활이 지칠 때 다시금 의욕을 되찾았습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide gtop">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>연세대학교(서울) 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 센텀 김민재</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 299.5점</li>
                                    <li>2022학년도 282.5점</li>
                                </ul>
                                <p>97.1% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">고등학교 친구의 추천으로 알게 되었고,<br>
                                부산에서 대입 결과가 가장 좋은 학원이라 선택했습니다.</p>
                            <p><strong>바자관 바로 앞에 담임선생님께서 상주해 계시기 때문에</strong> 
                                마음이 좀 불편하거나 공부가 잘 안 될 때 <strong>담임선생님과 
                                상담하며 큰 도움을 받았습니다.</strong> 선생님의 조언뿐만 
                                아니라 전년도 합격 선배들의 이야기를 들으며 안정감을 얻을 수 있었습니다.</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
            <div class="swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2024</p>
                                    <p><strong>서울대 인문계열 합격</strong></p>
                                </dt>
                                <dd>러셀CORE 광주 김효원</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2024학년도</strong> 295점</li>
                                    <li>2023학년도 255.5점</li>
                                </ul>
                                <p>88.8% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">
                                바자관의 장점은  <br>
                                학습에 집중할 수 있는 면학분위기입니다.
                            </p>
                            <p>
                                바자관은 개방형 구조로 되어 있어  <br>
                                집중력이 떨어질 때 앞, 옆에서  <br>
                                치열하게 공부하고 있는 친구들을 보며  <br>
                                자극을 받을 수 있었습니다.                                     
                            </p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2024</p>
                                    <p><strong>조선대 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀CORE 광주 김나연</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2024학년도</strong> 291.5점</li>
                                    <li>2023학년도 257점</li>
                                </ul>
                                <p>80.2% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">
                                담임선생님은  <br>
                                마라톤에서의 페이스메이커 같은 분이십니다.                                    
                            </p>
                            <p>
                                담임선생님께서는 1:1로 상담해 주셔서  <br>
                                대화하면서 앞으로의 계획이나 부족한 부분에 대해  <br>
                                스스로 생각해 볼 수 있도록 도와주셨습니다.  <br>
                                마라톤에서의 페이스메이커 같은 분이십니다.                                    
                            </p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2024</p>
                                    <p><strong>동국대 한의예과 합격</strong></p>
                                </dt>
                                <dd>러셀CORE 광주 권태완</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2024학년도</strong> 289점</li>
                                    <li>2023학년도 270점</li>
                                </ul>
                                <p>63.3% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">
                                이동에 낭비하는 시간이 없도록 도움을 주었습니다.
                            </p>
                            <p>
                                바른공부 자습전용관과 가까운 거리에 강의실이  <br>
                                있다는 점은 확실한 장점으로 다가왔습니다.  <br>
                                검증된 강사진의 퀄리티 높은 콘텐츠는  <br>
                                실력 향상에 큰 도움을 주었습니다.                                    
                            </p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2024</p>
                                    <p><strong>한양대 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀CORE 광주 엄태옥</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2024학년도</strong> 297점</li>
                                    <li>2023학년도 292.5점</li>
                                </ul>
                                <p>60% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">
                                공부 외에 것들은 최대한 신경을 안 쓰게 <br>
                                관리를 해줘서 좋았습니다.                                    
                            </p>
                            <p>
                                바자관의 장점은 단과를 선택적으로 들을 수 있어서 시간을 효율적으로 쓸 수 있다는 것입니다. <br>
                                불필요한 수업을 들을 때와 달리 집중력 있게  <br>
                                수업을 들을 수 있었고 자습시간 확보에도 도움이 되었습니다.                                    
                            </p>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <% ElseIf campus_code = "CD0341" Then '코어대전 %>
            <div class="swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>충남대학교 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀CORE 대전 박보근</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">메이저 의대를 배출한 학원인 것에는<br>
                                마땅한 이유가 있을 것이라고 생각되어 러셀을 선택했습니다.</p>
                            <p><strong>대치동 현강 자료를 그대로 받아 볼 수 있다는 것이
                                큰 장점입니다.</strong> 지방 학생들의 경우 거리상의 이유로
                                대치동까지 가서 현장 수업에 참여하기 어려운 경우가 
                                많은데, 러셀코어 라이브 현장강의를 수강할 경우
                                대치동까지 가지 않더라도 현강 자료를 그대로 
                                받아 볼 수 있어서 좋았습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>연세대학교(미래) 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀CORE 대전 이승섭</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">외부유해요소를 차단하고 오직 대입성공을 위한 장점만을 
                                결합한 바자관 시스템 덕분에 효율적으로 공부할 수 있었습니다.</p>
                            <p>쾌적한 학습 환경 속에서 공부에만 집중할 수 있어서 좋았습니다. 
                                허리를 펴면 집중하여 공부하는 다른 친구들을 보며 동기부여 받을 수 있었고, 
                                집중하기 위해 고개를 숙이면 정확히 책상만 시야에 들어와 공부에만 집중할 수 있었습니다. </p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>을지대학교 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀CORE 대전 김우찬</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">담임선생님께서 각종 입시 상담은 
                                물론 조언과 격러를 많이 해주셔서 힘든 수험생활 동안 
                                지치지 않고 공부할 수 있었습니다.</p>
                            <p>러셀CORE 대전의 장점은 담임선생님의 꼼꼼한 관리와 체계적인 학원 시스템입니다. 
                                바른공부 자습전용관 앞 상담부스에서 담임선생님과 수시로 상담하며 멘탈 케어를 할 수 있었고, 
                                담임선생님의 철저한 관리로 수험생활 내내 규칙적인 학습패턴을 유지할 수 있었습니다.
                            </p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>충북대학교 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀CORE 대전 김경호</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">매달 실시하는 집체 모의고사를 통해 학습성취도를 꾸준히 
                                점검할 수 있어서 좋았습니다.</p>
                            <p>러셀에서 응시하는 다양한 집체 모의고사를 통해 전국 단위의 
                                수험생들 사이에서 내 위치를 파악 할 수 있어서 좋았고, 
                                해당 성적으로 지원 가능한 대학까지 담임선생님께서 
                                상담해 주셔서 동기부여 받고 더 열심히 공부하는 계기가 되었습니다.</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <% ElseIf campus_code = "CD0343" Then '코어원주 %>
            <div class="swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="p-info">
                            <div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/stu01.png" alt="" /></span>
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48184723');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/ico_play.png" alt="" /></a>
                            </div>
                            <dl>
                                <dt>
                                    <p class="year">2024</p>
                                    <p><strong>서울대학교 치의학과 합격</strong></p>
                                </dt>
                                <dd>러셀CORE 원주 윤은서</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">해이해지는 일 없이 꾸준한 공부를 할 수 있어서 좋았습니다.</p>
                            <p>바른공부 자습전용관의 장점은 절대적인 학습시간이 확보된다는 점입니다. 지켜야 하는 의무 자습 시간이 있기 때문에 핑계 대지 않고 매일매일 일정 시간 이상을 공부할 수 있었고, 쉬는 시간과 자습시간이 철저하게 분리되어 있기 때문에 해이해지는 일 없이 꾸준한 공부를 할 수 있었습니다. </p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/stu02.png" alt="" /></span>
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48184714');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/ico_play.png" alt="" /></a>
                            </div>
                            <dl>
                                <dt>
                                    <p class="year">2024</p>
                                    <p><strong>서울대학교 물리천문학부 합격</strong></p>
                                </dt>
                                <dd>러셀CORE 원주 이민성</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">실전과 유사한 환경과 다양한 모의고사를 통해 <br>
                                부족한 점을 발견하고 보완할 수 있었습니다.
                            </p>
                            <p>
                                러셀 실전 콘텐츠 (다양한 모의고사)가 큰 도움이 되었습니다. 모의고사를 통해 공부 방향을 정할 수 있었습니다. 특히 수능 실전 환경에 적응할 수 있었고, 부족한 점을 발견하고 보완하는데 모의고사가 큰 도움이 되었습니다.
                            </p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/stu03.png" alt="" /></span>
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48184717');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/ico_play.png" alt="" /></a>
                            </div>
                            <dl>
                                <dt>
                                    <p class="year">2024</p>
                                    <p><strong>연세대학교 건축공학과 합격</strong></p>
                                </dt>
                                <dd>러셀CORE 원주 심태엽</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">
                                집단적인 면학분위기 덕분에 다른 친구들을 보며 자극을 받고 <br> 긴장감을 유지하며 공부할 수 있었습니다.</p>
                            <p>
                                바른공부 자습전용관에서 학습하며 특히 좋았던 점은 성적이 비슷한 친구들과 함께 공부할 수 있다는 점이었습니다. 공부를 하다가 집중력이 흐트러졌을 때 공부에 열중하고 있는 주변 친구들을 보며 자극을 받아 다시 공부에 집중할 수 있었습니다.
                            </p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <div>
                                <span><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/stu04.png" alt="" /></span>
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48184708');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/ico_play.png" alt="" /></a>
                            </div>
                            <dl>
                                <dt>
                                    <p class="year">2024</p>
                                    <p><strong>연세대학교(미래) 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀CORE 원주 이지우</dd>
                            </dl>
                        </div>
                        <div class="p-review">
                            <p class="tit">
                                한 건물에 강의실-바자관-식당이 있어 이동에 낭비하는 <br>
                                시간 없이 효율적으로 시간 관리를 할 수 있었습니다.
                            </p>
                            <p>
                                강의와 식당, 바자관이 한 건물에 있는 것이 정말 좋았습니다. 전에 잠실로 학원을 다닐 땐 왕복에 4시간 가까이 걸리는 데다 체력적인 소모도 심했지만, 러셀에서는 국영수는 물론이고 사탐, 과탐 등의 선택과목도 강의를 해주기에 이동에 시간을 소모할 필요 없이 자습시간을 확보할 수 있고 동시에 좋은 강의를 들을 수 있다는 점이 큰 도움이 되었습니다.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <% ElseIf campus_code = "CD0345" Then '코어창원 %>
            <div class="swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="p-review">
                            <p class="tit">
                                전면 통유리로 되어 있는 바자관에서 <br>
                                집체 모의고사 응시를 통해 실전에 대비할 수 있었습니다
                            </p>
                            <div class="pass-wrap">
                                <div class="left-con">
                                    <p>러셀 CORE 창원 윤종빈</p>
                                    <div>
                                        <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/ico_pass.png" alt="합격 이미지" /></p>
                                        <p>
                                            2024학년도 <br>
                                            <strong>동아대학교 <br> 의예과 합격</strong>
                                        </p>
                                    </div>
                                </div>
                                <div class="right-con">
                                    <p>
                                        <strong>69.6%</strong><br>
                                        상승
                                    </p>
                                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/ico_arrow.png" alt="화살표" /></p>
                                </div>
                            </div>
                            <p class="txt">
                                실전과 같은 분위기에서 모의고사를 볼 수 있는 기회가 많지 않은데,
                                러셀은 위클리, 메대프, 퀄 모의고사 등으로 매주 수능과 같이 대비할 수
                                있었습니다. 또한 담임선생님과의 상담을 통해 부족한 부분을 보완할 수
                                있어 효과적인 성적 향상의 계기가 되었습니다.
                            </p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-review">
                            <p class="tit">
                                담임선생님의 면학분위기 관리와 1:1 맞춤 상담을
                                통해 <br>
                                체계적인 공부 습관을 기를 수 있었습니다
                            </p>
                            <div class="pass-wrap">
                                <div class="left-con">
                                    <p>러셀 CORE 창원 제현수</p>
                                    <div>
                                        <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/ico_pass.png" alt="합격 이미지" /></p>
                                        <p>
                                            2024학년도 <br>
                                            <strong>동아대학교 <br> 의예과 합격</strong>
                                        </p>
                                    </div>
                                </div>
                                <div class="right-con">
                                    <p>
                                        <strong>70.9%</strong><br>
                                        상승
                                    </p>
                                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/ico_arrow.png" alt="화살표" /></p>
                                </div>
                            </div>
                            <p class="txt">
                                학습계획을 짜는데 어려움이 있었는데, 담임선생님과의 상담을 통해 체계적인 공부 방향을 설정할 수 있었습니다. 학습적인 측면 및 멘탈적으로도 잘 잡아주시고,
                                입시에서도 생기부를 기반하여 최적의 입시 방향을 잡아주셔서 성공적인 결과를 거둘 수 있었습니다.
                            </p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-review">
                            <p class="tit">
                                대치동 현강 수업과 콘텐츠를 똑같이 받을 수 <br>
                                있다는 점이 마음에 들어 학원을 선택했습니다
                            </p>
                            <div class="pass-wrap">
                                <div class="left-con">
                                    <p>러셀 CORE 창원 백지훈</p>
                                    <div>
                                        <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/ico_pass.png" alt="합격 이미지" /></p>
                                        <p>
                                            2024학년도 <br>
                                            <strong>충남대학교 <br> 수의예과 합격</strong>
                                        </p>
                                    </div>
                                </div>
                                <div class="right-con">
                                    <p>
                                        <strong>79.9%</strong><br>
                                        상승
                                    </p>
                                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/ico_arrow.png" alt="화살표" /></p>
                                </div>
                            </div>
                            <p class="txt">
                                서울에 가지 않아도 대치동 현강 수업과 컨텐츠를 동일
                                하게 이용할 수 있다는 점이 마음에 들었습니다.
                                수업 외에도 한 건물에 자습관, 식당, 강의실을 같이 배치함으로써 이동 동선을 최소화하고 체력과 학습 분위기
                                유지 측면에서 큰 이점을 얻을 수 있었습니다.
                            </p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-review">
                            <p class="tit">
                                효율적으로 시간을 활용하고 싶어 이에 적합한
                                학원을 찾던 중, 러셀CORE 시스템이 저에게 맞는 것 같아 학원을 선택했습니다
                            </p>
                            <div class="pass-wrap">
                                <div class="left-con">
                                    <p>러셀 CORE 창원 윤득영</p>
                                    <div>
                                        <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/ico_pass.png" alt="합격 이미지" /></p>
                                        <p>
                                            2024학년도 <br>
                                            <strong>연세대학교 <br> 경제학부 합격</strong>
                                        </p>
                                    </div>
                                </div>
                                <div class="right-con">
                                    <p>
                                        <strong>58.5%</strong><br>
                                        상승
                                    </p>
                                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/ico_arrow.png" alt="화살표" /></p>
                                </div>
                            </div>
                            <p class="txt">
                                단과 수업과 자습관 이용을 한 번에 할 수 있다는 점이
                                좋았습니다. 관리형 독서실과 대치동 현장 단과의 장점을 지방에서 거의 그대로 구현한 것이 큰 장점인 것 같습니다. 주기적으로 치러지는 모의고사 역시 실력 향상에
                                큰 도움을 주었습니다.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <% ElseIf campus_code = "INTRO" Then '인트로 %>
            <div class="review-slide swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="profile">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/49909017')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/p_ket.jpg" alt=""></a>
                        </div>
                        <div class="detail">
                            <div class="top-con">
                                <div>
                                    <div class="year">2024학년도</div>
                                    <div class="uni-name">서울대학교 인문계열 합격</div>
                                </div>
                                <p>러셀 강남ㅣ김은태</p>
                            </div>
                            <div class="btm-con">
                                “저는 입학할 때에 서울대/의치대 반으로 입학했습니다. 처음에는 HS반으로 <strong>승반하고 장학혜택을 받기 위해서, 승반하고 나서는 강반 되지 않고 제 자리를 유지해 나가기 위해서</strong> 더욱 공부를 열심히 할 수 있었습니다.”
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="profile">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/52179794')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/p_pjm.jpg" alt=""></a>
                        </div>
                        <div class="detail">
                            <div class="top-con">
                                <div>
                                    <div class="year">2024학년도</div>
                                    <div class="uni-name">서울대학교 경영학과 합격</div>
                                </div>
                                <p>러셀 대치ㅣ박정민</p>
                            </div>
                            <div class="btm-con">
                                “두 번의 평가원 시험만으로는 수능을 대비하기가 조금 부족하다고 생각했는데, <strong>메대프 모의고사를 매달 치르면서 실전 감각을 키우고 실력 점검</strong>도 할 수 있었습니다.”
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="profile">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/52179428')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/p_lyj.jpg" alt=""></a>
                        </div>
                        <div class="detail">
                            <div class="top-con">
                                <div>
                                    <div class="year">2024학년도</div>
                                    <div class="uni-name">서울대학교 언론정보학과 합격</div>
                                </div>
                                <p>러셀 대치ㅣ이연주</p>
                            </div>
                            <div class="btm-con">
                                “바자관 담임선생님이 <strong>항상 저의 상태를 확인해 주시고, 저의 학습 상황을 봐주셔서 수험 기간 중 의지가 많이 됐고,</strong> 제가 고민인 부분들에 대해 말씀드리면 언제나 잘 들어주시고 그에 맞는 피드백을 주셔서 실질적인 도움도 많이 됐습니다.”
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="profile">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/49403069')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/p_isr.jpg" alt=""></a>
                        </div>
                        <div class="detail">
                            <div class="top-con">
                                <div>
                                    <div class="year">2024학년도</div>
                                    <div class="uni-name">이화여자대학교 의예과 합격</div>
                                </div>
                                <p>러셀 목동ㅣ임세린</p>
                            </div>
                            <div class="btm-con">
                                “<strong>원하는 단과 수업을 수강할 수 있고, 한 건물 내에 있어 이동시간이 많이 필요하지 않아 제가 원하는 만큼의 충분한 학습</strong>을 할 수 있었습니다. 표준 시간표 덕분에 수능이 가까워질 때, 수능 당일처럼 모의고사를 풀 수 있었던 것도 좋았습니다.”
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="profile">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/48573125')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/p_lge.jpg" alt=""></a>
                        </div>
                        <div class="detail">
                            <div class="top-con">
                                <div>
                                    <div class="year">2024학년도</div>
                                    <div class="uni-name">강원대학교 의예과 합격</div>
                                </div>
                                <p>러셀 부천ㅣ이가은</p>
                            </div>
                            <div class="btm-con">
                                “<strong>QUEL이나 메대프 모의고사를 주기적으로 실제 시간에 맞춰 푸는</strong> 연습을 했기 때문에 6모, 9모는 물론 수능까지 감을 잃지 않을 수 있었습니다. 또한 시험을 보고 난 후 <strong>담임선생님과의 빠른 피드백을 통해 문제들을 빠르게 보완</strong>할 수 있었습니다.”
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="profile">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/52010239')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/p_bhe.jpg" alt=""></a>
                        </div>
                        <div class="detail">
                            <div class="top-con">
                                <div>
                                    <div class="year">2024학년도</div>
                                    <div class="uni-name">서울대학교 자유전공학부 합격</div>
                                </div>
                                <p>러셀 분당ㅣ방하은</p>
                            </div>
                            <div class="btm-con">
                                “<strong>공부 외의 시설까지 쾌적하고 잘 갖춰져 있어 공부에 방해받지 않고 집중</strong>할 수 있었습니다. 식당이 있는 점도 규칙적인 공부 루틴을 세워 실행하는 데 있어서 큰 도움이 되었습니다.”
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="profile">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/50089672')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/p_bjm.jpg" alt=""></a>
                        </div>
                        <div class="detail">
                            <div class="top-con">
                                <div>
                                    <div class="year">2024학년도</div>
                                    <div class="uni-name">서울대학교 첨단융합학부 합격</div>
                                </div>
                                <p>러셀 영통ㅣ방준모</p>
                            </div>
                            <div class="btm-con">
                                “<strong>바른공부 자습전용관의 장점은 수능 몇 주 전부터 수능 시간표대로 타종이 울린다는 것입니다.</strong> 이를 통해 각 과목에 맞춰 과목별 공부뿐만 아니라 모의고사 <strong>실전시간 감각을 기르기에도 굉장히 효율적이라고 생각</strong>합니다.”
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="profile">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/49515163')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/p_kgr03.jpg" alt=""></a>
                        </div>
                        <div class="detail">
                            <div class="top-con">
                                <div>
                                    <div class="year">2024학년도</div>
                                    <div class="uni-name">서울대학교 약학과 합격</div>
                                </div>
                                <p>러셀 중계ㅣ김규리</p>
                            </div>
                            <div class="btm-con">
                                “<strong>제가 직접 스케줄을 짠 뒤에 그 스케줄을 잘 이행할 수 있도록 담임선생님들께서 매시간 출석 체크</strong>를 해 주십니다. 또한 바자관의 시간표는 수능과 유사하게 짜여 있어 <strong>수능 시간표에 제 바이오리듬을 맞출 수 있고, 하반기에 실전 모의고사를 푸는 연습을 하기에도 용이</strong>하였습니다.”
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="profile">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/51938468')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/p_whw.jpg" alt=""></a>
                        </div>
                        <div class="detail">
                            <div class="top-con">
                                <div>
                                    <div class="year">2024학년도</div>
                                    <div class="uni-name">서울대학교 인문계열 합격</div>
                                </div>
                                <p>러셀 평촌ㅣ왕휘웅</p>
                            </div>
                            <div class="btm-con">
                                “여러 시험들을 보면서 <strong>담임선생님이 저의 장단점을 면밀히 파악해 주신 후 학습계획을 수립하는 데에 근거를 가지고 조언</strong>을 주셔서 공부 방향을 잡는 것이 수월했고, <strong>공감을 바탕으로 멘탈 관리</strong>를 해 주셔서 무사히 시험장까지 최고의 멘탈 상태로 입실할 수 있었던 것 같습니다.”
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="profile">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/49741488')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/p_liw.jpg" alt=""></a>
                        </div>
                        <div class="detail">
                            <div class="top-con">
                                <div>
                                    <div class="year">2024학년도</div>
                                    <div class="uni-name">서울대학교 지리학과 합격</div>
                                </div>
                                <p>러셀 대구ㅣ이인우</p>
                            </div>
                            <div class="btm-con">
                                “<strong>바자관의 장점은 주변의 학생들이 모두 공부에 집중하고 있기 때문에 그 분위기에 따라 나 역시 공부에 집중</strong>을 하게 됩니다. 또한 공기청정기와 숯 가습기 등을 통해 쾌적한 환경을 조성해 주어 공부를 하면서 불편한 점이 없습니다.”
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="profile">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/51651760')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/p_ljm.jpg" alt=""></a>
                        </div>
                        <div class="detail">
                            <div class="top-con">
                                <div>
                                    <div class="year">2024학년도</div>
                                    <div class="uni-name">서울대학교 경제학부 합격</div>
                                </div>
                                <p>러셀 센텀ㅣ이준명</p>
                            </div>
                            <div class="btm-con">
                                “<strong>러셀 시스템의 장점은 한 건물에서 식사와 강의, 자습을 다 할 수 있다는 것</strong>입니다. 밥 먹는 시간을 아낄 수 있었고, 마지막 파이널에는 실전과 거의 동일한 분위기 속에서 모의고사를 칠 수 있어서 수능 당일 긴장을 덜 수 있었습니다.”
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="profile">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/50967610')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/p_khw.jpg" alt=""></a>
                        </div>
                        <div class="detail">
                            <div class="top-con">
                                <div>
                                    <div class="year">2024학년도</div>
                                    <div class="uni-name">서울대학교 인문계열 합격</div>
                                </div>
                                <p>러셀CORE 광주ㅣ김효원</p>
                            </div>
                            <div class="btm-con">
                                “<strong>담임선생님께서 학습에 대한 고민이나 어려움이 생길 때 상담을 통해 좋은 방향으로 이끌어 주셨습니다.</strong> 또한 학습에 대한 의지를 잃지 않도록 용기를 심어주고 북돋아 주셨으며 유대감이 쌓임으로써, 마음에 안정이 되었다고 생각합니다.”
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="profile">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/48592152')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/p_yhs.jpg" alt=""></a>
                        </div>
                        <div class="detail">
                            <div class="top-con">
                                <div>
                                    <div class="year">2024학년도</div>
                                    <div class="uni-name">가톨릭대학교 의예과 합격</div>
                                </div>
                                <p>러셀CORE 대전ㅣ윤훈석</p>
                            </div>
                            <div class="btm-con">
                                “다른 학원들과 달리 <strong>통유리 창 덕분에 본인의 호실 외에 다른 방도 볼 수 있어 답답하지 않습니다.</strong> 반면 공부할 때는 수납공간과 책상의 아크릴 격벽이 <strong>본인의 공간을 확실히 구분해 줘서 방해받지 않고 학습에 집중</strong>할 수 있었습니다.”
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="profile">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/48184708')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/p_ljw.jpg" alt=""></a>
                        </div>
                        <div class="detail">
                            <div class="top-con">
                                <div>
                                    <div class="year">2024학년도</div>
                                    <div class="uni-name">연세대학교 원주의과대학 합격</div>
                                </div>
                                <p>러셀CORE 원주ㅣ이지우</p>
                            </div>
                            <div class="btm-con">
                                “서울로 학원을 다닐 땐 왕복에 4시간 가까이 걸리는 데다 체력적인 소모도 심했지만, 러셀에서는 국영수는 물론이고 선택과목도 강의를 해 주기에 <strong>이동에 시간을 소모할 필요 없이 자습시간을 확보할 수 있고 동시에 좋은 강의를 들을 수 있다는 점이 큰 도움</strong>이 되었습니다.”
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="profile">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/48138912')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/p_sjw02.jpg" alt=""></a>
                        </div>
                        <div class="detail">
                            <div class="top-con">
                                <div>
                                    <div class="year">2024학년도</div>
                                    <div class="uni-name">고려대학교 의예과 합격</div>
                                </div>
                                <p>러셀CORE 전주ㅣ서진원</p>
                            </div>
                            <div class="btm-con">
                                “<strong>수능 시간표대로 공부하고, 목요일마다 위클리 모의고사를 실시하여 수능 리듬에 최적화되게끔 반복 연습했던 부분은 실제로 수능을 더욱더 익숙하게 느끼는 데 큰 도움</strong>을 주었습니다. 또한 개방적인 분위기도 수능 시험 도중 집중력을 잃고 부정적인 생각들이 밀려올 때마다 빠르게 다시 집중할 수 있었습니다.”
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="profile">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/52000696')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/p_csy.jpg" alt=""></a>
                        </div>
                        <div class="detail">
                            <div class="top-con">
                                <div>
                                    <div class="year">2024학년도</div>
                                    <div class="uni-name">인제대학교 약학과 합격</div>
                                </div>
                                <p>러셀CORE 창원ㅣ최서윤</p>
                            </div>
                            <div class="btm-con">
                                “<strong>담임선생님께서 주기적으로 상담을 진행</strong>해 주셨는데, 멘탈을 다잡는데 많은 도움이 됐던 것 같습니다. 혼자 공부할 때는 항상 불안함을 안고 가는 기분이었는데, <strong>선생님께서 해주신 조언과 격려 덕분에 공부에 더 집중</strong>할 수 있었습니다. 플래너 검사도 과목 비중이나 커리큘럼을 정하는 데 많은 도움이 됐습니다.”
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="profile">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/51834051')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/p_jhj.jpg" alt=""></a>
                        </div>
                        <div class="detail">
                            <div class="top-con">
                                <div>
                                    <div class="year">2024학년도</div>
                                    <div class="uni-name">덕성여자대학교 약학과 합격</div>
                                </div>
                                <p>러셀CORE 청주ㅣ조현지</p>
                            </div>
                            <div class="btm-con">
                                “인강보다는 현강으로 듣는 것이 더 집중이 잘되는 편인데, <strong>매번 서울까지 올라가지 않더라도 집 근처에서 바로 수업을 들을 수 있다는 것이 매우 좋았습니다.</strong> 강의실 내 화면이 크다 보니, 온라인 실시간이어도 현장에서 듣는 것 같기도 했습니다.”
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="profile">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/47959955')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/p_smj.jpg" alt=""></a>
                        </div>
                        <div class="detail">
                            <div class="top-con">
                                <div>
                                    <div class="year">2024학년도</div>
                                    <div class="uni-name">연세대학교 의예과 합격</div>
                                </div>
                                <p>
                                    최상위권 남학생 의대전문관 <br>
                                    러셀 기숙ㅣ심민준
                                </p>
                            </div>
                            <div class="btm-con">
                                “<strong>퀄 모의고사가 가장 마음에 들었습니다.</strong> 문제의 퀄리티 자체도 준수하고, 사설 모의고사의 경우 실제 평가원 난이도보다 어렵게 출제되는 경우가 있는데 <strong>퀄 모의고사는 적당한 난이도로 출제되어 제 실력을 확인할 수 있는 좋은 모의고사</strong>였습니다.”
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="profile">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/48592114')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/p_lyr.jpg" alt=""></a>
                        </div>
                        <div class="detail">
                            <div class="top-con">
                                <div>
                                    <div class="year">2024학년도</div>
                                    <div class="uni-name">연세대학교 행정학과 합격</div>
                                </div>
                                <p>
                                    최상위권 여학생 의대전문관 <br>
                                    러셀 기숙ㅣ이유림
                                </p>
                            </div>
                            <div class="btm-con">
                                “<strong>러셀 기숙학원은 여학생과 남학생이 분리되어 있어 더더욱 남의 시선에 구애받지 않고 공부에만 집중</strong>할 수 있어서 좋았던 것 같습니다. 기숙사 생활이 처음이었는데, <strong>넓은 숙소 공간과 청결한 시설 덕에 집과 다를 바 없어 최상의 컨디션을 유지</strong>할 수 있었습니다.”
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="profile">
                            <a href="javascript:CastPopup('https://tv.naver.com/v/47815572')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/p_cms.jpg" alt=""></a>
                        </div>
                        <div class="detail">
                            <div class="top-con">
                                <div>
                                    <div class="year">2024학년도</div>
                                    <div class="uni-name">서울대학교 사회학과 합격</div>
                                </div>
                                <p>
                                    서연고&middot;의치대 전문관 <br>
                                    러셀 기숙ㅣ최문성
                                </p>
                            </div>
                            <div class="btm-con">
                                “<strong>라이브 수업을 통해 대치동에서 진행되는 제가 듣고 싶은 선생님의 수업을 마음껏 들을 수 있어 수험생활의 큰 도움</strong>이 되었습니다. 대형 TV 덕분에 사각지대 없이 시청이 가능했고 현장감 있는 수업이 진행될 수 있었습니다. 또 <strong>현강에서 나누어주는 자료 역시 모두 수령이 가능하였기에 부족함 없는 학습</strong>을 진행할 수 있었습니다.”
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <% Else %>
            <div class="swiper swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>서울대학교 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 강남 이윤서</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 298점</li>
                                    <li>2022학년도 270점</li>
                                </ul>
                                <p>93.3% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">학원에 공부를 잘하고,<br>
                                열심히 하는 친구들이 많아 면학분위기가<br>
                                잘 조성되어 있어 선택하게 되었습니다.</p>
                            <p><strong>러셀의 장점은 면학분위기입니다.</strong> 주변 학생들이 열심히 공부하니
                                자극도 받고, 생활패턴을 보고 배울 수 있어서 좋았습니다. 또한, <strong>수능
                                시간표에 맞춰서 생활할 수 있게 지도</strong>해주는 것이 가장 좋았습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>고려대학교(안암) 전기전자공학부 합격</strong></p>
                                </dt>
                                <dd>러셀 대치 양선호</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 294.5점</li>
                                    <li>2022학년도 205점</li>
                                </ul>
                                <p>94.2% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">단과 강의실과 바른공부 자습전용관의<br>
                                거리가 가까웠고 개인의 자습시간이<br>
                                보장되는 곳이었기 때문입니다.</p>
                            <p><strong>러셀의 장점은 자습시간입니다.</strong> 개인적으로 공부란 
                                혼자서 하는 것이 중요하다고 생각하는 편인데, 
                                러셀은 다른 곳보다 <strong>시간의 자율성이 높아서 
                                자습시간을 늘릴 수 있었기 때문입니다.</strong></p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>서울대학교 인문계열 합격</strong></p>
                                </dt>
                                <dd>러셀 목동 최은영</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 291.5점</li>
                                    <li>2022학년도 227.5점</li>
                                </ul>
                                <p>88.3% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">원하는 만큼의 수업만 들을 수 있다는 점에서<br>
                                러셀을 선택하게 되었습니다.</p>
                            <p>저는 수업을 듣기보다 <strong>자습을 선호하는 편인데 
                                자습시간을 확보할 수 있어서 좋았습니다.</strong><br> 
                                하루를 능동적으로 구성할 수 있어서 
                                그때그때 제게 필요한 학습을 충분히 할 수 있었고 
                                <strong>수능까지 효율적으로 공부할 수 있었습니다.</strong></p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>연세대학교(서울) 건축공학과 합격</strong></p>
                                </dt>
                                <dd>러셀 부천 김도현</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 285점</li>
                                    <li>2022학년도 271.5점</li>
                                </ul>
                                <p>47.4% 상승</p> 
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">면학분위기와 장학혜택 등을 전반적으로 
                                고려했을 때, 어느 한 부분 부족한 것이 없어 
                                선택하게 되었습니다.</p>
                            <p>바자관은 개방형 구조로 되어 있어 딴짓을 덜하게 되어 
                                좋았습니다. <strong>책상과 의자가 넓고 좋아 모의고사를 
                                올려놓고도 자리가 부족하지 않은 점도 큰 장점입니다.</strong> 
                                시설만큼은 스트레스 하나도 안 받도록 세심하게 배려한 부분이 보였습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>중앙대학교 의학부 합격</strong></p>
                                </dt>
                                <dd>러셀 분당 김상범</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 296점</li>
                                    <li>2022학년도 286점</li>
                                </ul>
                                <p>71.4% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">러셀은 가장 높은 성적대의 학생들이 
                                모여 있는 곳이라 선택하게 되었습니다.</p>
                            <p><strong>탁 트인 책상 구조 덕분에 옆자리 친구가 바로 보이는 점이 
                                매우 좋았습니다.</strong> 같은 반 친구가 옆자리에 앉아 열심히 
                                공부하는 모습이 실시간으로 노출되어 집중력이 
                                흐트러지거나 졸릴 때 옆자리 친구를 보며 자극을 받을 수 있었습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>이화여자대학교 약학과 합격</strong></p>
                                </dt>
                                <dd>러셀 영통 김채연</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 292점</li>
                                    <li>2022학년도 281점</li>
                                </ul>
                                <p>57.9% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">의지가 약한 편이라 학습 관리를 철저히 해주는 
                                러셀학원을 등록하였습니다.</p>
                            <p><strong>러셀의 장점은 학생들이 공부를 잘할 수 있도록 관리를 
                                잘해준다는 것입니다.</strong> 우선, 늘어지지 않고 
                                표준 시간표대로 규칙적으로 공부할 수 있었던 점이 
                                좋았고, 선생님들께서 바자관 안을 계속 점검하면서 
                                공부에 방해되는 요소들을 해결해 주셔서 좋았습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info"> 
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>원광대학교 한의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 중계 민지우</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 291.5점</li>
                                    <li>2022학년도 280.5점</li>
                                </ul>
                                <p>56.4% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">러셀은 정해진 의무 자습시간 외에도 아침에 
                                일찍 등원하거나 심야자습을 할 수 있어서 
                                러셀학원을 선택했습니다.</p>
                            <p>수능처럼 하루 종일 모의고사를 볼 수 있는 기회가 
                                많지 않은데, <strong>러셀은 메대프 뿐만 아니라 
                                퀄 모의고사 등으로 1, 2주에 한 번씩 그런 기회를 
                                마련해 주어서 좋았습니다.</strong>  또 제가 속했던 HS반의 
                                장학 제도 조건 덕분에 수험생활이 지칠 때 다시금 의욕을 되찾았습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>건국대학교 수의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 평촌 강민석</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 289.5점</li>
                                    <li>2022학년도 276점</li>
                                </ul>
                                <p>56.3% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">최상위권 학생들에게 단과수강과 자습시간을 
                                자기주도적으로 분배할 수 있게 해준다는 점이 
                                마음에 들어 선택하게 되었습니다.</p>
                            <p><strong>담임선생님께서 바자관 바로 옆에 위치하고 계셔서 
                                편하게 궁금한 것이나 입시 상담을 받을 수 있었고</strong> 
                                무엇보다 편하게 대해 주셔서 좋았습니다. 
                                또한 <strong>HS 장학혜택 덕에 경제적 부담 없이</strong> 
                                수능을 한 번 더 볼 수 있었습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide gtop">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>연세대학교(서울) 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀 센텀 김민재</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 299.5점</li>
                                    <li>2022학년도 282.5점</li>
                                </ul>
                                <p>97.1% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">고등학교 친구의 추천으로 알게 되었고, 
                                부산에서 대입 결과가 가장 좋은 학원이라 선택했습니다.</p>
                            <p><strong>바자관 바로 앞에 담임선생님께서 상주해 계시기 때문에</strong> 
                                마음이 좀 불편하거나 공부가 잘 안 될 때 <strong>담임선생님과 
                                상담하며 큰 도움을 받았습니다.</strong> 
                                선생님의 조언뿐만 아니라 전년도 합격 선배들의 이야기를 들으며 안정감을 얻을 수 있었습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>서울대학교 자유전공학부 합격</strong></p>
                                </dt>
                                <dd>러셀CORE 광주 백장운</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 296점</li>
                                    <li>2022학년도 259.5점</li>
                                </ul>
                                <p>90.1% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">재수를 위해 타지로 나가는 것이 큰 부담이었는데 
                                러셀CORE가 생겨서 다행히 광주에서 재수생활을 할 수 있었습니다.</p>
                            <p><strong>모의고사 후 스스로 총평을 작성하도록 한 것이, 실수 노트 
                                정리 시에 아주 도움이 되었습니다.</strong> 
                                또한 급식이 맛있었고, 단과 수업이 아주 가까워 좋았습니다.
                                <strong>승강반 제도 또한 도움이 되었습니다.</strong> 
                                학습 중반, 동기부여를 살짝 잃으려고 할 때 승반을 향한 욕구가 그것을 대체했습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>충남대학교 의예과 합격</strong></p>
                                </dt>
                                <dd>러셀CORE 대전 박보근</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 293.5점</li>
                                    <li>2022학년도 275점</li>
                                </ul>
                                <p>74.0% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">메이저 의대를 배출한 학원인 것에는 
                                마땅한 이유가 있을 것이라고 생각되어 러셀을 선택했습니다.</p>
                            <p><strong>대치동 현강 자료를 그대로 받아 볼 수 있다는 것이 
                                큰 장점입니다.</strong> 지방 학생들의 경우 거리상의 이유로 
                                대치동까지 가서 현장 수업에 참여하기 어려운 경우가 
                                많은데, 러셀코어 라이브 현장강의를 수강할 경우 
                                대치동까지 가지 않더라도 현강 자료를 그대로 
                                받아 볼 수 있어서 좋았습니다.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="p-info">
                            <dl>
                                <dt>
                                    <p class="year">2023</p>
                                    <p><strong>울산대학교 의예과 합격</strong></p>
                                </dt>
                                <dd>최상위권 남학생 의대전문관 오세욱</dd>
                            </dl>
                            <div>
                                <ul>
                                    <li><strong>2023학년도</strong> 295.5점</li>
                                    <li>2022학년도 280점</li>
                                </ul>
                                <p>77.5% 상승</p>
                            </div>
                        </div>
                        <div class="p-review">
                            <p class="tit">원터스쿨 바자관의 분위기가 좋아서 공부에 
                                몰입할 수 있었고 강사진도 뛰어났기 때문에 
                                러셀학원을 선택했습니다.</p>
                            <p><strong>철저한 관리로 학업에 방해되는 요소들을 전부 제거하고 
                                학업에만 집중할 수 있도록 분위기가 조성</strong>되어
                                공부하는 데 많은 도움이 되었습니다. 러셀 기숙의 경우
                                숙소가 1층 침대로 되어있어 편안하고 화장실의
                                수용인원이 많아 <strong>생활면에서 불편함 없이 학업에만
                                열중할 수 있었습니다.</strong></p>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <% End If %>


            <% If campus_code = "CD0247" Then '강남 %>
            <p class="r-txt">※ 백분위 성적 기준 : 국어, 수학, 탐구평균 성적 합계</p>
            <% ElseIf campus_code = "CD0250" Then '부천 %>
            <a class="btn-link" href="/russel/event/2024/interview/index.asp">2024학년도 러셀 부천 대입 결과 및<br>
            최상위권 합격생 인터뷰 확인하기
            </a>
            <% End If %>
        </div>
    </div>
</div>
<% End If %>