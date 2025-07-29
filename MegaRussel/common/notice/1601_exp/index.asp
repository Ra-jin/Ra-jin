<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="" />
<!-- #Include Virtual = "/library/include/reload/favicon.asp" -->

<title><%=gMGC_Campus_Title%></title>
<!-- #Include Virtual = "/library/include/reload/css_common.asp" -->
<!-- #Include Virtual = "/library/include/reload/css_table.asp" -->
<style type="text/css"></style>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.min.js"></script>
<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
</head>

<body>
<div id="wrapper">

	<!--  최상단메뉴//-->
	<!--#include virtual="/library/include/common/top.asp" -->
	<!--  //최상단메뉴-->

	<div id="header">
		<!--  상단 대메뉴//-->
		<!--#include virtual="/library/include/common/top_campus_common.asp" -->
		<!-- // 상단 대메뉴-->
	</div>
	<!-- // header -->

	<div id="container">
		<div class="lineMapArea">
			<div class="lineMap">
				<span class="home">HOME</span>
				<em class="current">재수 성공 전략 설명회</em>
			</div>
		</div>
		<!-- // lineMapArea -->


	  <div class="contentWrap">

			<!--  레프트 메뉴(인트로[모집안내/공지사항]만)//-->
			<div class="sideArea">
				<!--#include virtual="/library/include/common/left_campus_common_sub01.asp" -->
			</div>
		<!-- //레프트 메뉴 -->
      
      <div class="contentArea"> <img src="<%=Application("img_path")%>/library/gangnam/nsu/event/1601_exp/gn_bs0121.jpg" alt="" border="0"usemap="#gn_exp2" />
        <map name="gn_exp2">
          <area shape="rect" coords="533,748,712,846" href="javascript:;" onclick="javascript:MM_openBrWindow('http://campus.megastudy.net/move_hidden.asp?ccode=CD0206&page=%2Fpopup%2Fpopup%5Fadmission%5Fexp%5F2017%2Easp%3Fcd%3D325','popup_gangnam','width=598,height=700,scrollbars=yes');" onfocus="this.blur();" alt="온라인 사전예약" title="온라인 사전예약"  >
       
          <area shape="rect" coords="306,750,440,785" href="javascript:;" onclick="MM_openBrWindow('/common/notice/1601_exp/popup_gn.asp','popup','width=620,height=630,scrollbars=yes')" onFocus="blur()"  alt="찾아오시는길" title="찾아오시는길" >
        </map>
      </div>
      <!-- // contentArea :: 본문내용 -->
      
      <div class="floatingBnr"> 
        <!--#include virtual="/library/include/common/floatingBnr.asp" --> 
      </div>
    </div>
    <!-- // contentWrap :: 컨텐츠전체 --> 
    
  </div>
  <!-- // container --> 
  
  <!--  최하단메뉴//--> 
  <!--#include virtual="/library/include/common/bottom.asp" --> 
  <!--  //최하단메뉴--> 
  
</div>
<script type='text/javascript'>
    function RMtrkButton(rmTrkSrc, clickurl, target) { var RMtrkBtnArray = rmTrkSrc.split("://"); try { var RMbtnNewScript = document.createElement('script'); var RMbtnScriptElement = document.getElementsByTagName('script')[0]; RMbtnNewScript.type = 'text/javascript'; var RMbtn_rn = new String(Math.random()); var RMbtn_rns = RMbtn_rn.substring(2, 12); RMbtnNewScript.id = 'rmtrkBtn_' + RMbtn_rns; RMbtnNewScript.src = "//" + RMtrkBtnArray[1] + "?" + (document.referrer.split("/"))[2]; RMbtnScriptElement.parentNode.insertBefore(RMbtnNewScript, RMbtnScriptElement); RMbtnScriptElement = null; RMbtnNewScript = null; } catch (e) { }; if (typeof clickurl == "undefined") { return false; } else { if (target == "self") { setTimeout(function () { goRMlink(clickurl); }, 300); } else { window.open(clickurl, "_blank"); } } }
    function goRMlink(url) { top.location.href = url; }

    function location_aca_trek(gb) {
        if (gb == "1") {
            RMtrkButton('http://tech.realmedia.co.kr/RMTECH/imp.ads/201512/mega_1512@x21,ADV_mega_1512_TRK,x21_mega_1512_TRK.html', '/apply/jaejung/apply_info.asp?app_cd=325&return=<%=getLink()%>', 'self');
        }
    }
</script> 
<!-- // wrapper -->
</body>
</html>