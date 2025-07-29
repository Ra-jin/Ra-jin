<div class="cont">
    <div class="cont01 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/lock/cont01_tit.jpg" alt=""></p>
        <div class="inner">
            <div class="box">
                <dl class="qna_list">
                    <dt class="mt0">자물쇠반은 어떤 학생이 이용할 수 <br>
                        있나요?</dt>
                    
                    <% If campus_code = "CD0247" Then '강남 %>
                    <dd>
                        24년도 수능/6평/9평 국수영탐(1) 3개<br>
                        등급합 9 이내 / 교육청 전국모의고사 <br>
                        국수영탐(1) 3개 등급합 이내 해당<br>
                        학생 지원 가능합니다. 
                    </dd>
                    <% Else %>
                    <dd>N수 정규반 기준 <%=grade_txt01%> 해당 학생 <br>
                        지원 가능합니다.<br>
                        (2024년 수능/6평/9평 <strong>국수영탐(1) <br>
                            3개 등급합 <%=grade_num%></strong> 이내) <br>
                        <strong class="color-red">
                            ※ 타 학원 및 독학재수학원 재원 이력이<br> 있는 신규생에 한해 등록 가능 <br>
                            (* 타 학원 수강증 지참 必)
                        </strong>
                    </dd>
                    <% End If %>
                </dl>
                <dl class="qna_list">
                    <dt>자물쇠반과 정규반의 차이는 <br>
                        무엇인가요?</dt>
                    <dd>
                        자물쇠반은 단과 의무시수 없이 비용을 지불하고 <strong>바자관만 단독 이용</strong> 가능합니다. <br>
                    단, <strong>단과 강좌 수강이 제한되므로</strong> 강좌 수강을 희망할 시 동일한 성적 기준인 N수 정규반의  '블루반 전형' 으로 이동하셔야 합니다.
                    </dd>
                </dl>
                <dl class="qna_list">
                    <dt>자물쇠반 학생도 승강반 적용이 <br>
                        가능한가요?</dt>
                    <dd><strong>승강반 적용 가능</strong>합니다.<br>
                        단과 의무시수가 없는 <%=grade_txt02%> 이상으로 <br>
                        승반할 경우 정규반으로 이동 가능합니다.</dd>
                </dl>
            </div>
        </div>
    </div>

    <div class="cont02 js-cont">
        <%
            if campusName02 = "" then
                Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
                Response.End
            end if

            dirFile = "/intro/2025/lock/"&campusName02&".asp"
            Server.Execute(dirFile)
        %>
    </div>
</div>