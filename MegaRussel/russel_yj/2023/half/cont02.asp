
<div class="js-cont">
    <div class="cont03">
        <div class="article01">
            <div class="inner">
                
                <% If sCampusCode = "CD0258" Then '남자기숙 %>
                <p><img src="<%=img_path_yangji%>/2023/half/cont03_tit_yj.png" alt="" /></p>
                <% ElseIf sCampusCode = "CD0348" Then '여자기숙 %>
                <p><img src="<%=img_path_yangji%>/2023/half/cont03_tit.png" alt="" /></p>
                <% End If %>

                <% If sCampusCode = "CD0347" Then '서의치기숙제외 %>
                <div><img src="<%=img_path_yangji%>/2023/half/cont03_01_sm.jpg" alt="" /></div>
                <% ElseIf sCampusCode = "CD0258" Then '남자기숙 %>
                <div class="mt70"><img src="<%=img_path_yangji%>/2023/half/cont03_01_yj.jpg" alt="" /></div>
                <% Else %>
                <div class="mt70"><img src="<%=img_path_yangji%>/2023/half/cont03_01.jpg" alt="" /></div>
                <% End If %>
            </div>
        </div>
        <div class="article02">
            <div class="inner">
                <div><img src="<%=img_path_yangji%>/2023/half/cont03_02.jpg" alt="" /></div>
            </div>
        </div>
        <div class="article03">
            <div class="inner">
                <div><img src="<%=img_path_yangji%>/2023/half/cont03_03.jpg" alt="" /></div>
            </div>
        </div>
        <div class="article04">
            <div class="inner">
                <% If sCampusCode = "CD0347" Then '서의치기숙 %>
                <div><img src="<%=img_path_yangji%>/2023/half/cont03_04_sm2.jpg" alt="" /></div>
                <% ElseIf sCampusCode = "CD0348" Then '여자기숙 %>
                <div><img src="<%=img_path_yangji%>/2023/half/cont03_04.jpg" alt="" /></div>
                <ul class="list-02 r-txt">
                    <li>해당 사진은 자사 최상위권 남학생 전문관 러셀 기숙학원 시설 사진입니다. </li>
                    <li>최상위권 여학생 전문관 러셀 기숙학원은 2023년 5월 개원 예정입니다.</li>
                    <li>상기 이미지는 실제와 다를 수 있습니다.</li>
                </ul>
                <% End If %>
            </div>
        </div>
    </div>
</div>