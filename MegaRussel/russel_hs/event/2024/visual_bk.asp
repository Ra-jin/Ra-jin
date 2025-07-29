<!-- <style>
    .visual-wrap {position:relative;width: 100%; height:100%;}
.visual-wrap .visual{position:relative;min-width:1200px;height:970px;overflow:hidden;background:#010206}
.visual-wrap .scene01{background:#010206 url("https://devrusseldata.megastudy.net/campus/image/russel_hs/event/2024/scene01_bg.jpg") no-repeat center top; width: 100%; height: 970px; position: absolute; top:0; left: 0; overflow: hidden; animation: fadeout 0.5s 4.5s forwards ease-in; z-index: 3;}
.visual-wrap .scene01 p.v-tit01{position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);animation:fadeInBlur 5s 1s cubic-bezier(0.25, 0.1, 0.25, 1) forwards, fadeout 1.5s 3s forwards ease-in; filter: blur(30px); opacity: 0; z-index: 3;}

.visual-wrap .scene02{background:#010206 url("https://devrusseldata.megastudy.net/campus/image/russel_hs/event/2024/scene02_bg.jpg") no-repeat center top; width: 100%; height: 970px; position: absolute; top:0; left: 0; z-index: 2; overflow: hidden; animation: fadeout 0.5s 9.7s forwards ease-in; }
.visual-wrap .scene02::before{content: '';background:#010206 url("https://devrusseldata.megastudy.net/campus/image/russel_hs/event/2024/scene02_bg_before.jpg") no-repeat center top; width: 100%; height: 970px; position: absolute; top:0; left: 0; z-index: 2; overflow: hidden; animation: fadein 0s 5.8s forwards ease; opacity: 0;}
.visual-wrap .scene02::after{content: '';background:#010206 url("https://devrusseldata.megastudy.net/campus/image/russel_hs/event/2024/scene02_bg_after.jpg") no-repeat center top; width: 100%; height: 970px; position: absolute; top:0; left: 0; z-index: 2; overflow: hidden; animation: fadein 0.5s 5.9s forwards ease-in-out; opacity: 0;}
.visual-wrap .scene02 .obj-hammer{position: absolute; top:-200px; left:-200px; z-index: 3;animation: hammer 2s 5.6s ease forwards; opacity: 0;}
.visual-wrap .scene02 .obj-light{position: absolute; top:100px; left: 100px; z-index: 5;}
.visual-wrap .scene02 .v-tit02{animation: scaleInOut ease-in 0.2s 5.9s both; position: absolute; top: 340px; left: 50%; margin-left: -392px; z-index: 5;}

.visual-wrap .scene03{position:absolute;top:0;background: #000000; animation: fadeout 1s 11.7s forwards ease-in; width: 100%; height: 100%;}
.visual-wrap .scene03 p.v-tit03{position: absolute; top:264px; left: 50%; transform: translateX(-50%); z-index: 3;  animation: fadein 1s 10.6s forwards ease-in-out; opacity: 0;}
.visual-wrap .scene03 .obj-chain01{position: absolute; top:0; left: 50%; margin-left: -960px; z-index: 2; width: 0; overflow: hidden; animation: chain01 1s 10.2s forwards;}
.visual-wrap .scene03 .obj-chain01 img{width: 1920px; height: auto;}

.visual-wrap .scene04{background: #000000; animation: fadeout 1s 15s forwards ease-in; width: 100%; height: 100%;}
.visual-wrap .scene04 p.v-tit04{position: absolute; top:358px; left: 50%; transform: translateX(-50%); z-index: 2; animation: fadein 1s 13.6s forwards ease-in-out; opacity: 0; }
.visual-wrap .scene04 .obj-chain02{position: absolute; top:16px; left: 50%; margin-left: -960px; z-index: 1; width: 0; overflow: hidden; animation: chain01 2s 12.7s forwards;}
.visual-wrap .scene04 .obj-chain02 img{width: 1887px; height: auto;}

.visual-wrap .scene05{width: 100%; height: 970px; position: absolute; top:0; left: 0; z-index: 2; overflow: hidden; animation: fadeout 0.7s 18s forwards ease-in;  }
.visual-wrap .scene05::before {content:"";display:block;position:absolute;top:0;left:0;width:100%;height:100%;background:url("https://devrusseldata.megastudy.net/campus/image/russel_hs/event/2024/scene05_bg.png") #000 center top no-repeat;animation:fadeIn ease-out  2s 15.4s forwards; z-index: 2; background-size: cover; opacity: 0;}
.visual-wrap .scene05::after{content:"";display:block;position:absolute;top:0;left:0;width:100%;height:100%;background:url("https://devrusseldata.megastudy.net/campus/image/russel_hs/event/2024/scene05_bg02.png") #000 center top no-repeat;animation:fadeinout ease-out 3.7s 16.5s forwards; z-index: 2; background-size: cover; opacity: 0;}
.visual-wrap .scene05 p.v-tit05{position: absolute; top:0; left: 50%; margin-left: -593px; z-index: 3; animation: scaleInOut 0.4s 15.4s forwards ease-in-out; opacity: 0; }

.visual-wrap .scene06{width: 100%; height: 970px; position: absolute; top:0; left: 0; z-index: 1; overflow: hidden;}
.visual-wrap .scene06 p.v-tit06{position: absolute; top:188px; left: 50%; margin-left: -506px; z-index: 1; animation: fadein 4s 18.7s forwards linear; opacity: 0; }
.visual-wrap .scene06::before {content:"";display:block;position:absolute;top:0;left:0;width:100%;height:100%;background:url("https://devrusseldata.megastudy.net/campus/image/russel_hs/event/2024/scene06_bg.jpg") #000 center top no-repeat;animation:fadeIn linear 6s 18.7s forwards; z-index: 0; opacity: 0;}

@keyframes fadeInBlur {
   0% {filter: blur(30px); opacity: 0;}
   30% {filter: blur(0); opacity: 1;}
   100% {filter: blur(0); opacity: 1;}
}

@keyframes fadein {
    0% {opacity: 0;}
    100% {opacity: 1;}
}
@keyframes fadeout {
   0% {opacity: 1;}
   100% {opacity: 0;}
}
@keyframes fadeinout{
    0% {opacity: 0;}
    50% {opacity: 1;}
    100% {opacity: 0;}
}
@keyframes hammer {
    0% {
        opacity: 0;
        top: -200px;
        left: -200px;
        transform :rotate(-12deg);
    }

   10%, 100% {
        opacity: 1;
        top: 0;
        left: -65px;
        transform :rotate(0);
    }
}

@keyframes chain01 {
    0% {opacity: 0; width: 0;}
    100% {opacity: 1; width: 1920px;}
}
@keyframes chain01 {
    0% {opacity: 0; width: 0;}
    100% {opacity: 1; width: 1887px;}
}

@keyframes scaleInOut {
    0% {transform: scale(2);opacity: 0;}
    100% {transform: scale(1);opacity: 1;}
}

@keyframes fadeInBlur {
   0% {filter: blur(30px); opacity: 0;}
   30% {filter: blur(0); opacity: 1;}
   100% {filter: blur(0); opacity: 1;}
}
@keyframes fadeout {
   0% {opacity: 1;}
   100% {opacity: 0;}
}
</style> -->

<div class="visual-wrap">
    <div class="visual">
        <div class="scene06">
            <div class="inner02">
                <p class="v-tit06"><img src="<%=img_path_russelhs %>/event/2024/scene06_tit.png" alt="" /></p>
            </div>
        </div>
        <div class="scene05">
            <div class="inner02">
                <p class="v-tit05"><img src="<%=img_path_russelhs %>/event/2024/scene05_tit.png" alt="" /></p>
            </div>
        </div>
        <div class="scene04">
            <div class="inner02">
                <p class="v-tit04"><img src="<%=img_path_russelhs %>/event/2024/scene04_tit.png" alt="" /></p>
                <p class="obj-chain02"><img src="<%=img_path_russelhs %>/event/2024/obj_chain02.png" alt="" /></p>
            </div>
        </div>
        <div class="scene03">
            <div class="inner02">
                <p class="v-tit03"><img src="<%=img_path_russelhs %>/event/2024/scene03_tit.png" alt="" /></p>
                <p class="obj-chain01"><img src="<%=img_path_russelhs %>/event/2024/obj_chain01.png" alt="" /></p>
            </div>
        </div>
        <div class="scene02">
            <div class="inner02">
                <p class="obj-hammer"><img src="<%=img_path_russelhs %>/event/2024/obj_hammer.png" alt="" /></p>
                <p class="v-tit02"><img src="<%=img_path_russelhs %>/event/2024/scene02_tit.png" alt="러셀의 검증된 실력이" /></p>
            </div>
        </div>
        <div class="scene01">
            <div class="innner02">
                <p class="v-tit01"><img src="<%=img_path_russelhs %>/event/2024/scene01_tit.png" alt="위대함은 장인의 손 끝에서 완성된다." /></p>
            </div>
        </div>
    </div>

    <!-- quick -->
    <div class="f-quick">
        <a href="https://russelhs.megastudy.net/russel_yj/2025/first/index.asp" class="mb10"><img src="<%=img_path_russelhs %>/event/2024/quick_banner.png" alt="2026 재수생 우선선발반" /></a>
    </div>
</div>