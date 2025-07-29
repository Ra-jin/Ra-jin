<div class="cont js-cont-wrap <%=campusName%>">
    <div class="cont01 js-cont">
        <% If campus_code = "CD0342" Then '´ë±¸ %>    
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer_overall/cont01.jpg" alt=""></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer_overall/cont01.jpg" alt=""></p>
        <% End If %>   
    </div>
    <div class="cont02 js-cont">       
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer_overall/cont02.jpg" alt=""></p>
    </div>
</div>