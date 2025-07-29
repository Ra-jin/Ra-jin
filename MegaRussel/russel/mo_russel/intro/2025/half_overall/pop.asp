<!-- 공통 레이어팝업 -->
<div class="layer-w-pop js-w-pop">
    <div class="layer-box">
        <a href="javascript:;" class="bt-close js-bt-close"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close.png" alt="닫기"></a>
        <div class="inner">
            <% If campus_code = "CD0249" Then '영통 %>
            <div class="daily_type01">
                <p class="title">종합반 학습 시간표</p>
                <div class="tbl-scroll-x">
                    <table class="tbl-type03 tbl-center" style="width:250%">
                        <colgroup>
                            <col style="width:64px" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                        </colgroup>
                        <thead>
                            <tr>
                                <th>요일</th>
                                <th>월</th>
                                <th>화</th>
                                <th>수</th>
                                <th>목</th>
                                <th>금</th>
                                <th>토</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th rowspan="3" class="bg-sky">
                                    오전<br>
                                    (8:40~<br>
                                    12:10)
                                </th>
                                <td></td>
                                <td class="sub-pk">국어<br>
                                    강민기T<br>
                                    [주1회]
                                </td>
                                <td class="sub-bl">수학<span class="fz12">(수I/수II)</span><br>
                                    김유한T<br>
                                    [주1회]
                                </td>
                                <td class="sub-pk">국어<br>
                                    강민기T<br>
                                    [주1회]
                                </td>
                                <td class="sub-gr">영어<br>
                                    김민경T<br>
                                    [주1회]
                                </td>
                                <td class="sub-dg" style="position:relative;">생활과윤리<br>
                                    차현호T<br>
                                    [주1회]
                                    <label for="">50%<br>지원</label>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td class="sub-gr">영어<br>
                                    김민경T<br>
                                    [주1회]
                                </td>
                                <td class="sub-bl">수학<span class="fz12">(수I/수II)</span><br>
                                    김형민T<br>
                                    [주1회]
                                </td>
                                <td class="sub-gr">영어<br>
                                    김민경T<br>
                                    [주1회]
                                </td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td class="sub-bl">수학<span class="fz12">(수I/수II)</span><br>
                                    최봉서T<br>
                                    [주1회]
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th rowspan="3" class="bg-sky">
                                    오후<br>
                                    (13:30<br>
                                    ~<br>
                                    17:00)
                                </th>
                                <td class="sub-pp">지구과학I<br>
                                    양이석T<br>
                                    [주1회]
                                </td>
                                <td class="sub-pp">물리학I<br>
                                    박민규T<br>
                                    [주1회]
                                </td>
                                <td class="sub-bl">수학<span class="fz12">(수I/수II)</span><br>
                                    김유한T<br>
                                    [주1회]
                                </td>
                                <td class="sub-pp">생명과학I<br>
                                    박소영T<br>
                                    [주1회]
                                </td>
                                <td class="sub-bl">수학<span class="fz12">(미적분)</span><br>
                                    김유한T<br>
                                    [주1회]
                                </td>
                                <td class="sub-pk" style="position:relative;">국어<br>
                                    신용선T<br>
                                    [주1회]
                                    <label for="">50%<br>지원</label>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td class="sub-bl">수학<span class="fz12">(미적분)</span><br>
                                    최봉서T<br>
                                    [주1회]
                                </td>
                                <td></td>
                                <td class="sub-bl">수학<span class="fz12">(확통)</span><br>
                                    김형민T<br>
                                    [주1회]
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td class="sub-pp">화학I<br>
                                    박건수T<br>
                                    [주1회]
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th rowspan="2" class="bg-sky">
                                    저녁<br>
                                    (18:30<br>
                                    ~<br>
                                    22:00)
                                </th>
                                <td class="sub-dg" style="position:relative;">수학<span class="fz12">(수I/수II)</span><br>
                                    김가람T<br>
                                    [주1회]
                                    <label for="">50%<br>지원</label>
                                </td>
                                <td class="sub-dg" style="position:relative;">정치와법<br>
                                    박지은T<br>
                                    [주1회]
                                    <label for="">50%<br>지원</label>
                                </td>
                                <td class="sub-dg" style="position:relative;">수학<span class="fz12">(수I/수II)</span><br>
                                    장영진T<br>
                                    [주1회]
                                    <label for="">50%<br>지원</label>
                                </td>
                                <td class="sub-dg" style="position:relative;">사회문화<br>
                                    정정T<br>
                                    [주1회]
                                    <label for="">50%<br>지원</label>
                                </td>
                                <td class="sub-dg" style="position:relative;">수리논술<br>
                                    유홍조T<br>
                                    [주1회]
                                    <label for="">50%<br>지원</label>
                                </td>
                                <td class="sub-dg" style="position:relative;">사회문화<br>
                                    손고운T<br>
                                    [주1회]
                                    <label for="">50%<br>지원</label>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td class="sub-dg" style="position:relative;">윤리와사상<br>
                                    차현호T<br>
                                    [주1회]
                                    <label for="">50%<br>지원</label>
                                </td>
                                <td class="sub-dg" style="position:relative;">인문논술<br>
                                    장진석T<br>
                                    [주1회]
                                    <label for="">50%<br>지원</label>
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="r-txt">※ 학원 운영 상황에 따라 수업은 변경될 수 있습니다.</p>
            </div>
            <% End if %>
        </div>
    </div>
</div>