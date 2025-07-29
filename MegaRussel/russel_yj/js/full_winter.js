//윈터스쿨 2021
// FixMenu : 고정메뉴 있는 페이지에서 함수 불러오기

$(window).on('load',function(){
	visualJs();//상단 애니메이션 시작
});


function visualJs() {
    $(".full-winter .visual-wrap").delay(1000).addClass("on");
}

function fixMenu_w(){
    var $fixTop = $(".js-fix-menu-wrap").offset().top
    var $fix    = $(".js-fix-inner")
    var $cont   = $(".js-info-wrap")
    var $doc    = $('html, body')
    var $btn    = $(".js-fix-menu > .js-menu")

    $btn.on("click",function(e){
        e.preventDefault();
        var idx = $btn.index(this),
            section = $cont.eq(idx),
            offsetTop = section.offset().top;
            
        $doc.stop().animate({
            scrollTop :offsetTop -74
        }, 500);
    })

    $(window).scroll(function(){
        var scltop = $(window).scrollTop();

        if($fixTop > scltop){                        
            $fix.css("position","absolute");
            $fix.removeClass("on");
        }else if($fixTop <= scltop){
            $fix.css("position","fixed");
            $fix.addClass("on");
        }
        //버튼
        $btn.eq(0).addClass('on');
        $cont.each(function(i){
            var $target   = $cont.eq(i),
                targetTop = Math.floor($target.offset().top)
            if (targetTop <= scltop+75) {
                $btn.removeClass('on');
                $btn.eq(i).addClass('on');
            }
            if (!(200 <= scltop)) {
                $btn.removeClass('on');
            }
        })
    });
}

// $(window).scroll(function(){
//     var wTop = $(window).scrollTop();
//     var top01 = Math.floor($(".info-wrap").eq(0).offset().top);
//     var top02 = Math.floor($(".info-wrap").eq(1).offset().top);
//     var top03 = Math.floor($(".info-wrap").eq(2).offset().top);
//     var top04 = Math.floor($(".info-wrap").eq(3).offset().top);

//     if(wTop >= top01 && wTop < top02){
//         $(".info-wrap").removeClass("on");
//         $(".info-wrap").eq(0).addClass("on");
//     }else if(wTop >= top02 && wTop < top03){
//         $(".info-wrap").removeClass("on");
//     }else if(wTop >= top03 && wTop < top04){
//         $(".info-wrap").removeClass("on");
//         $(".info-wrap").eq(2).addClass("on");
//     }
// });