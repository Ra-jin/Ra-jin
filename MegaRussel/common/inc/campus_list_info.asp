<style>
    .campus-list-wrap .campus-list dt span.stit {display:none}
    .campus-list-wrap .campus-list dt br {display:none}

</style>

<div class="campus-list-wrap">
    <p><img src="<%=Application("img_path_russel")%>/common/inc/campus_tit.png" alt=""></p>
    <!-- campus-list -->
    <div class="campus-list">
        <dl>
            <dt><span class="stit">최상위권 수준별 맞춤 단과</span><br>러셀학원</dt>
            <dd>
                <p>러셀<strong>강남</strong></p>
                <span>02) 6954-1010</span>
            </dd>
            <dd>
                <p>러셀<strong>대치</strong></p>
                <span>02) 2138-1010</span>
            </dd>
            <dd>
                <p>러셀<strong>목동</strong></p>
                <span>02) 6932-1010</span>
            </dd>
            <dd>
                <p>러셀<strong>부천</strong></p>
                <span>032) 265-1010</span>
            </dd>
            <dd>
                <p>러셀<strong>분당</strong></p>
                <span>031) 629-1010</span>
            </dd>
            <dd>
                <p>러셀<strong>영통</strong></p>
                <span>031) 251-1010</span>
            </dd>
            <dd>
                <p>러셀<strong>중계</strong></p>
                <span>02) 6316-1010</span>
            </dd>
            <dd>
                <p>러셀<strong>평촌</strong></p>
                <span>031) 341-6500</span>
            </dd>
            <dd>
                <p>러셀<strong>대구</strong><span class="icon-new"><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" /></span></p>
                <span>053) 291-1010</span>
            </dd>
            <dd>
                <p>러셀<strong>센텀</strong></p>
                <span>051) 715-1010</span>
            </dd>
            <dd>
                <p>러셀<strong>기숙</strong></p>
                <span>031) 512-1010</span>
            </dd>
        </dl>
        <dl>
            <dt><span class="stit">서연고 &middot; 의치약 전문관</span><br>러셀<strong>CORE</strong></dt>
            <dd>
                <p>러셀CORE<strong>광주</strong></p>
                <span>062) 462-1010</span>
            </dd>
            <dd>
                <p>러셀CORE<strong>대전</strong></p>
                <span>042) 381-2020</span>
            </dd>
            <dd>
                <p>러셀CORE<strong>원주</strong><span class="icon-new"><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" /></span></p>
                <span>033) 901-2020</span>
            </dd>
            <dd>
                <p>러셀CORE<strong>전주</strong><span class="icon-new"><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" /></span></p>
                <span>063) 905-3030</span>
            </dd>
            <dd>
                <p>러셀CORE<strong>창원</strong><span class="icon-new"><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" /></span></p>
                <span>055) 605-1010</span>
            </dd>
            <dd>
                <p>러셀CORE<strong>청주</strong><span class="icon-new"><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" /></span></p>
                <span>043) 908-1010</span>
            </dd>
        </dl>
    </div>
    <!-- //campus-list -->
</div>
<script>
    
    // 모집요강별 링크
    $(function(){
        
        var path_name = $(location).attr('pathname');
        // 러셀 링크
            
        if(path_name.indexOf("/quel/") > -1){
            //퀄 모의고사
            /*$(".campus-list-wrap .campus-list dt").css('height', '70px')
            $(".campus-list-wrap .campus-list dt span.stit").css('display', 'inline-block')
            $(".campus-list-wrap .campus-list dt br").css('display', 'inline-block')*/

        }else if(path_name.indexOf("/premium/") > -1){
            //메대프 모의고사
            /*$(".campus-list-wrap .campus-list dt").css('height', '70px')
            $(".campus-list-wrap .campus-list dt span.stit").css('display', 'inline-block')
            $(".campus-list-wrap .campus-list dt br").css('display', 'inline-block')*/
        }
    });
</script>