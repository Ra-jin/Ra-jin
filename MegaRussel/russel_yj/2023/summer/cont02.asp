
<div class="cont js-cont">
    <div class="cont03">
        <div class="inner">
            <p><img src="<%=img_path_russelw%>/2023/summer/cont03_tit.png" alt="여름방학 동안 달라진 나를 경험하고 싶다면, 전국 최상위권이 모이는 러셀 기숙 썸머스쿨을 놓치지 마세요." /></p>
            
            <div class="mt70"><img src="<%=img_path_russelw%>/2023/summer/cont03_img.jpg" alt="" /></div>
        </div>
    </div>
    <div class="cont04">
        <div class="inner">
            <% If sCampusCode = "CD0347" Then '서의치 %>
            <p><img src="<%=img_path_russelw%>/2023/summer/cont04_tit_sm.png" alt="성적향상을 넘어 최상위권으로!서연고·의치대 전문관 썸머스쿨 프로그램" /></p>
            <div class="mt70"><img src="<%=img_path_russelw%>/2023/summer/cont04_img_sm.jpg" alt="01.최소 의무수업 진행 및 최대 자습시간 확보 학기 중 대비 여름방학동안 압도적인 학습량 확보" /></div>
            <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
            <p><img src="<%=img_path_russelw%>/2023/summer/cont04_tit.png" alt="성적향상을 넘어 최상위권으로! 최상위권 여학생 전문관 썸머스쿨 프로그램" /></p>
            <div class="mt70"><img src="<%=img_path_russelw%>/2023/summer/cont04_img.jpg" alt="01.최소 의무수업 진행 및 최대 자습시간 확보 학기 중 대비 여름방학동안 압도적인 학습량 확보" /></div>
            <% End If%>
        </div>
    </div>
    <!--1:1관리 -->
    <div class="cont05">
        <div class="inner">
            <% If sCampusCode = "CD0347" Then '서의치 %>
            <div><img src="<%=img_path_russelw%>/2023/summer/cont05_img_sm.jpg" alt="여름방학 3주, 그리고 하루 24시간 동안 최상위권 역임 입시 담임선생님의 철저한 1:1관리" /></div>
            <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
            <div><img src="<%=img_path_russelw%>/2023/summer/cont05_img.jpg" alt="여름방학 3주, 그리고 하루 24시간 동안 최상위권 역임 입시 담임선생님의 철저한 1:1관리" /></div>
            <% End If%>
        </div>
    </div>
    <!--// 1:1관리 -->
    <!-- 바자관 슬라이드 -->
    <div class="cont06">
        <div class="inner">
            <p><img src="<%=img_path_russelw%>/2023/summer/cont06_tit.png" alt="" /></p>
            
            <div class="baja-slide swiper-container">
                <div class="swiper-wrapper">
                    <% If sCampusCode = "CD0347" Then '서의치 %>
                    <div class="swiper-slide">
                        <div><img src="<%=img_path_russelw%>/2023/summer/cont06_img01_sm.jpg" alt="바자관" /></div>
                    </div>
                    <div class="swiper-slide">
                        <div><img src="<%=img_path_russelw%>/2023/summer/cont06_img02_sm.jpg" alt="강의실" /></div>
                    </div>
                    <div class="swiper-slide">
                        <div><img src="<%=img_path_russelw%>/2023/summer/cont06_img03_sm.jpg" alt="숙소" /></div>
                    </div>
                    <div class="swiper-slide">
                        <div><img src="<%=img_path_russelw%>/2023/summer/cont06_img04_sm.jpg" alt="편의시설" /></div>
                    </div>
                    <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
                    <div class="swiper-slide">
                        <div><img src="<%=img_path_russelw%>/2023/summer/cont06_img01.jpg" alt="바자관" /></div>
                    </div>
                    <div class="swiper-slide">
                        <div><img src="<%=img_path_russelw%>/2023/summer/cont06_img02.jpg" alt="강의실" /></div>
                    </div>
                    <div class="swiper-slide">
                        <div><img src="<%=img_path_russelw%>/2023/summer/cont06_img03.jpg" alt="숙소" /></div>
                    </div>
                    <div class="swiper-slide">
                        <div><img src="<%=img_path_russelw%>/2023/summer/cont06_img04.jpg" alt="편의시설" /></div>
                    </div>
                    <% End If%>
                </div>
            </div>
            <% If sCampusCode = "CD0348" Then '여기숙 %>
            <p class="r-txt">※ 해당 사진은 자사 최상위권 남학생 전문관 러셀 기숙학원 시설 사진입니다.<br>
                최상위권 여학생 전문관 러셀 기숙학원은 2023년 5월 개원 예정입니다.<br>
                상기 이미지는 실제와 다를 수 있습니다.
            </p>
            <% End If%>
        </div>
    </div>
    <!--// 바자관 슬라이드 -->
    <div class="cont07">
        <div class="inner">
            <% If sCampusCode = "CD0347" Then '서의치 %>
            <div class="pb10"><img src="<%=img_path_russelw%>/2023/summer/cont07_img_sm.jpg" alt="" /></div>
            <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
            <div class="pb10"><img src="<%=img_path_russelw%>/2023/summer/cont07_img_w.jpg" alt="" /></div>
            <% End If%>
            <div class="btn-link-bk">
                <a href="/russel_yj/info/teacher.asp">강사진 확인하기</a>
            </div>
        </div>
    </div>
    <div class="cont08">
        <div class="inner">
            <% If sCampusCode = "CD0347" Then '서의치 %>
            <div><img src="<%=img_path_russelw%>/2023/summer/cont08_img_sm.jpg" alt="" /></div>
            <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
            <div><img src="<%=img_path_russelw%>/2023/summer/cont08_img.jpg" alt="" /></div>
            <% End If%>
        </div>
    </div>
</div>