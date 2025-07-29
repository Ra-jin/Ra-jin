<!-- 모의고사 스케쥴 -->
<div class="mock-schedule mt40">	
    <div class="tbl-wrap">
        <table>
            <colgroup>
                <col style="width:155px" />
                <col style="width:8%" />
                <col style="width:8%" />
                <col style="width:8%" />
                <col style="width:8%" />
                <col style="width:8%" />
                <col style="width:8%" />
                <col style="width:8%" />
                <col style="width:8%" />
                <col style="width:8%" />
                <col style="width:8%" />
                <col style="width:8%" />
            </colgroup>
            <thead>
                <tr>
                    <th rowspan="2" class="bg-01">구분</th>
                    <th colspan="4" class="bg-01">9월</th>
                    <th colspan="4" class="bg-01">10월</th>
                    <th colspan="3" class="bg-01 br-0">11월</th>
                </tr>
                <tr class="low">
                    <th>1주차</th>
                    <th>2주차</th>
                    <th>3주차</th>
                    <th>4주차</th>
                    <th>1주차</th>
                    <th>2주차</th>
                    <th>3주차</th>
                    <th>4주차</th>
                    <th>1주차</th>
                    <th>2주차</th>
                    <th class="br-0">3주차</th>
                </tr>
            </thead>
            <tbody>        
                <% If sCampusCode = "CD0340"  Then '코어광주 %>    
                <tr>
                    <th>러셀CORE <br>
                        Weekly 모의고사
                    </th>
                    <td></td>
                    <td class="bg-05">20회차</td>
                    <td></td>
                    <td class="bg-05">21회차</td>
                    <td class="bg-05">22회차</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="bg-05">23회차</td>
                    <td></td>
                </tr>
                <% End If %>      
                <tr>
                    <th>QUEL모의고사</th>
                    <td></td>
                    <td></td>
                    <td class="bg-02">3회</td>
                    <td></td>
                    <td></td>
                    <td class="bg-02">4회</td>
                    <td class="bg-02">5회</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <th>E-QUEL 모의고사</th>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="bg-03">11월</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <th>메대프 모의고사</th>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="bg-04">9월</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="bg-04">10월</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <% If sCampusCode <> "CD0249" and sCampusCode <> "CD0340"  Then '영통/코어광주 제외 %>    
                <tr>
                    <th>러셀CORE <br>
                        Weekly 모의고사
                    </th>
                    <td></td>
                    <td class="bg-05">20회차</td>
                    <td></td>
                    <td class="bg-05">21회차</td>
                    <td class="bg-05">22회차</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="bg-05">23회차</td>
                    <td></td>
                </tr>
                <% End If %>
                <tr>
                    <th>월간 장영진<br>
                        모의고사
                    </th>
                    <td class="bg-06">9월호</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>               
            </tbody>
        </table>
    </div>
    <p>※ 위 실전 콘텐츠와 일정 및 시행 주차는 학원 운영 상황에 따라 변경 및 조정될 수 있습니다.</p>
</div>
<!-- //모의고사 스케쥴 -->