<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0342" Then '러셀대구 %>
<div class="danka-wrap dg">
    <div class="danka-con mt25">
        <p><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/dg_sec3_danka01.jpg" alt=""></p>
    </div>
    <div class="danka-con mt25">
        <p><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/dg_sec3_danka02.jpg" alt=""></p>
    </div>
    <div class="time-btn">
        <div class="time-btn-wrap">
            <a href="https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1263">1~2월 정규·특강 단과 시간표</a>
            <div class="arrow-wrap"></div>
        </div>
    </div>
</div>
<% Else %>
<div class="danka-wrap">
    <div class="danka-con">
        <% If campus_code = "INTRO" Then '인트로 %>
        <p class="tit"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/sec3_danka.png" alt=""></p>
        <% ElseIf campus_code = "CD0340" or campus_code = "CD0341" or campus_code = "CD0343" or campus_code = "CD0344" or campus_code = "CD0345" or campus_code = "CD0346" Then 'CORE광주/대전/원주/전주/창원/청주 %>
        <p class="tit"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/core_gj/2023/first/sec3_danka.png" alt=""></p>
        <% Else %>
        <p class="tit"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/sec3_danka.png" alt=""></p>
        <% End If %>
        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="time-btn">
            <div class="time-btn-wrap">
                <a href="https://mrussel.megastudy.net/intro/danka/2023/01/go3.asp">1~2월 정규·특강 단과 시간표</a>
                <div class="arrow-wrap"></div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0247" Then '강남 %>
        <div class="time-btn">
            <div class="time-btn-wrap">
                <a href="https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1224">1~2월 정규·특강 단과 시간표</a>
                <div class="arrow-wrap"></div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0257" Then '중계 %>
        <div class="time-btn">
            <div class="time-btn-wrap">
                <a href="https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1231">2월 정규·특강 단과 시간표</a>
                <div class="arrow-wrap"></div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0249" Then '영통 %>
        <div class="time-btn">
            <div class="time-btn-wrap">
                <a href="https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1230">1~2월 정규·특강 단과 시간표</a>
                <div class="arrow-wrap"></div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0245" Then '목동 %>
        <div class="time-btn">
            <div class="time-btn-wrap">
                <a href="https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1226">1~2월 정규·특강 단과 시간표</a>
                <div class="arrow-wrap"></div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0001" Then '대치 %>
        <div class="time-btn">
            <div class="time-btn-wrap">
                <a href="https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1225">1~2월 정규·특강 단과 시간표</a>
                <div class="arrow-wrap"></div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0246" Then '센텀 %>
        <div class="time-btn">
            <div class="time-btn-wrap">
                <a href="https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1229">1~2월 정규·특강 단과 시간표</a>
                <div class="arrow-wrap"></div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0250" Then '부천 %>
        <div class="time-btn mt10">
            <div class="time-btn-wrap">
                <a href="https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1227" class="f14">2월 정규·특강 단과 시간표</a>
                <div class="arrow-wrap"></div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0248" Then '평촌 %>
        <div class="time-btn">
            <div class="time-btn-wrap">
                <a href="https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1232">1~2월 정규·특강 단과 시간표</a>
                <div class="arrow-wrap"></div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0244" Then '분당 %>
        <div class="time-btn">
            <div class="time-btn-wrap">
                <a href="https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1228">1~2월 정규·특강 단과 시간표</a>
                <div class="arrow-wrap"></div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0340" Then '광주 %>
        <div class="time-btn">
            <div class="time-btn-wrap">
                <a href="https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1233">1~2월 정규·특강 단과 시간표</a>
                <div class="arrow-wrap"></div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0341" Then '대전 %>
        <div class="time-btn">
            <div class="time-btn-wrap">
                <a href="https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1234">1~2월 정규·특강 단과 시간표</a>
                <div class="arrow-wrap"></div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0343" Then '원주 %>
        <div class="time-btn">
            <div class="time-btn-wrap">
                <a href="https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1259">1~2월 정규·특강 단과 시간표</a>
                <div class="arrow-wrap"></div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0344" Then '전주 %>
        <div class="time-btn">
            <div class="time-btn-wrap">
                <a href="https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1260">1~2월 정규·특강 단과 시간표</a>
                <div class="arrow-wrap"></div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0345" Then '창원 %>
        <div class="time-btn">
            <div class="time-btn-wrap">
                <a href="https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1261">1~2월 정규·특강 단과 시간표</a>
                <div class="arrow-wrap"></div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0346" Then '청주 %>
        <div class="time-btn">
            <div class="time-btn-wrap">
                <a href="https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1262">1~2월 정규·특강 단과 시간표</a>
                <div class="arrow-wrap"></div>
            </div>
        </div>
        <% Else %>
        <div class="time-btn">
            <div class="time-btn-wrap">
                <a href="https://mrussel.megastudy.net/intro/danka/2023/01/go3.asp">1~2월 정규·특강 단과 시간표</a>
                <div class="arrow-wrap"></div>
            </div>
        </div>
        <% End If %>
    </div>
</div>
<% End If %>