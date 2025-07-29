<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<%
VARS("map_w") = CheckNumber_reset(VARS("map_w"), "566")
VARS("map_h") = CheckNumber_reset(VARS("map_h"), "456")
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="" />
<link rel="shortcut icon" type="image/x-icon" href="#" />
<title><%=gMGC_Campus_Title%></title>
<!-- #Include Virtual = "/library/include/reload/css_common.asp" -->
<!-- #Include Virtual = "/public/map/location/map_single.asp" -->
<style type="text/css">
	.table_type td {padding-left:10px !important;}
</style>
<script type="text/javascript">
<!--
	window.resizeTo(657,795);
//-->
</script>
</head>

<body>
<!-- 본문 내용 -->
<div id="popup" class="popWrap" style="width:640px;">
	<div class="popTitle">
		<h1>오시는 길</h1>
	</div>

	<div class="pop_body">
   	  <div class="fz24 font_purple">강남 구민회관 대강당</div>
      <div class="mb10">서울특별시 강남구 대치동 509-2<br>지하철 3호선 대치역 6번 출구</div>
		<div class="naver_map pop_img" id="map"></div>	

		<div id="btn_set" class="btnDiv taC mt25">
			<a href="#" onClick="self.print()" onFocus="this.blur()" class="btn_print2">인쇄하기</a>
		</div>

	</div>
	<a href="#" onClick="self.close()" onFocus="this.blur()" class="btn_popup btn_close"><span class="blind">창닫기</span></a>
</div>
<script type="text/javascript">
setNaverMap("map", "강남 구민회관 대강당", "37.4938425", "127.0641417", 11, undefined);
</script>
<!--// 본문 내용 -->
</body>
</html>
