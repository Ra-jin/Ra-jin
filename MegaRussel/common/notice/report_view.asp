<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/common/menubbs/menubbs.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="" />
<!-- #Include Virtual = "/library/include/reload/favicon.asp" -->

<title><%=gMGC_Campus_Title%></title>
<!-- #Include Virtual = "/library/include/reload/css_common.asp" -->
	<!-- #include virtual="/public/jquery.asp" -->
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
				<em class="current">언론보도</em>
			</div>
		</div>
		<!-- // lineMapArea -->


		<div class="contentWrap">

			<!--  레프트 메뉴(인트로[모집안내/공지사항]만)//-->
			<div class="sideArea">
				<!--#include virtual="/library/include/common/left_campus_common_sub01.asp" -->
			</div>
			<!-- //레프트 메뉴 -->


			<div class="contentArea">
				<div class="titleDiv">
					<h3>언론보도</h3>
					<p class="txt">메가스터디학원의 다양하고 새로운 소식을 전해 드립니다.</p>
				</div>
				<!-- // titleDiv -->

				<div class="content">
			
					<% Call MenuBBSDrawPage_View(gMenuBBSGubunCode, VARS("code"), "/common/notice/report.asp", "/common/notice/report_view.asp", "", VARS)  %>
						<br/><br/>
					<% Call MenuBBSDrawPage_List(gMenuBBSNaviCode, gMenuBBSGubunCode, True, VARS("curPage"), 20, 10, False, "/common/notice/report.asp", "/common/notice/report_view.asp", "", VARS) %>

					<!-- 게시판 상세  -->
					<!--
					<div class="board_view_type_01">
						<table summary="제목, 첨부파일, 등록일, 조회수">
							<caption class="blind">상세</caption>
							<colgroup>
								<col width="110px" />
								<col width="360px" />
								<col width="70px" />
								<col width="100px" />
								<col width="70px" />
								<col width="78px" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">제목</th>
									<td class="subjectLine" colspan="5"><strong>2015 썸머스쿨 마감임박 강좌 안내</strong></td>
								</tr>
								<tr>
									<th scope="row">첨부파일</th>
									<td class="file"><a href="#"><span class="ir_ico bbsFile">다운로드</span>파일이름.zip</a></td>
									<th scope="row">등록일</th>
									<td class="date">2015-07-27</td>
									<th scope="row">조회수</th>
									<td class="hit">100</td>
								</tr>
								<tr>
									<td class="content_view" colspan="6">
										<div class="viewArea">내용이 들어갑니다.</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="btnDiv taC mt25">
						<a href="#">목록으로</a>
					</div>
					
					<div class="board_bottom_list mt40">
						<table summary="이전글, 다음글">
							<caption class="blind">하단 목록</caption>
							<colgroup>
								<col width="110px" />
								<col width="568px" />
								<col width="110px" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><span class="next">다음글</span></th>
									<td class="subjectLine ellipsis"><a href="#"><strong>다음글 제목이 나옵니다.</strong></a></td>
									<td class="date"><span>2015-07-27</span></td>
								</tr>
								<tr>
									<th scope="row"><span class="prev">이전글</span></th>
									<td class="subjectLine ellipsis"><a href="#"><strong>이전글 제목이 나옵니다.</strong></a></td>
									<td class="date"><span>2015-07-27</span></td>
								</tr>
							</tbody>
						</table>
					</div>
					-->

				</div><!-- // content -->

			</div>
			<!-- // contentArea :: 본문내용 -->
		</div>
		<!-- // contentWrap :: 컨텐츠전체 -->



	</div>
	<!-- // container -->


	<!--  최하단메뉴//-->
	<!--#include virtual="/library/include/common/bottom.asp" -->
	<!--  //최하단메뉴-->

</div>
<!-- // wrapper -->
<% If VARS("code") = "9672" Then '트래킹코드 추가를 위해 추가한 소스 %>
<script type="text/javascript">
var expireDate = "2016-12-31";  //태그만료일자
var RMtrkUrl = "http://tech.realmedia.co.kr/RMTECH/imp.ads/201609/mega_teacher_TRK@x01,ADV_mega_1609_teacher_TRK,x01_teacher_view.html";
var RMtrkUrlArray = RMtrkUrl.split("://"); var time_split = expireDate.split("-"); var today_time = new Date().getTime(); var year = time_split[0]; var month = time_split[1]-1; var day = time_split[2]; var expire_Time = new Date(year,month,day,23,59,59).getTime();
if(today_time <= expire_Time){      
           try {
                     var newScript = document.createElement('script');
                     var scriptElement = document.getElementsByTagName('script')[0];
                     newScript.type = 'text/javascript';
                     var rm_rn = new String(Math.random()); var rm_rns = rm_rn.substring(2, 12);
                     newScript.id = 'rmtrk_' + rm_rns;
                     newScript.src = "//"+RMtrkUrlArray[1]+"?"+(document.referrer.split("/"))[2];
                     scriptElement.parentNode.insertBefore(newScript, scriptElement); 
                     scriptElement = null; newScript = null;
           } catch (e) { }     
}
</script>

<script type='text/javascript'>
function RMtrkButton(rmTrkSrc,clickurl,target){var RMtrkBtnArray = rmTrkSrc.split("://");try {var RMbtnNewScript = document.createElement('script');var RMbtnScriptElement = document.getElementsByTagName('script')[0];RMbtnNewScript.type = 'text/javascript';var RMbtn_rn = new String(Math.random()); var RMbtn_rns = RMbtn_rn.substring(2, 12);RMbtnNewScript.id = 'rmtrkBtn_' + RMbtn_rns;RMbtnNewScript.src = "//"+RMtrkBtnArray[1]+"?"+(document.referrer.split("/"))[2];RMbtnScriptElement.parentNode.insertBefore(RMbtnNewScript, RMbtnScriptElement);RMbtnScriptElement = null; RMbtnNewScript = null;} catch (e) { }; if (typeof  clickurl =="undefined"){return false;}else{if(target == "self"){setTimeout(function(){goRMlink(clickurl);},300);}else{window.open(clickurl, "_blank");}}}
function goRMlink(url){document.location.href=url;}
</script>

<!-- 
<map id="Map" name="Map">
<area coords="395,1410,474,1433"  href="#" onclick="javascript:RMtrkButton('http://tech.realmedia.co.kr/RMTECH/imp.ads/201609/mega_teacher_TRK@x02,ADV_mega_1609_teacher_TRK,x02_teacher_view.html', 'http://corp.megastudy.net/recruit/re_teacher_w.asp', 'blank');" shape="rect" target="_blank" />
<area coords="140,1685,83"  href="#" onclick="javascript:RMtrkButton('http://tech.realmedia.co.kr/RMTECH/imp.ads/201609/mega_teacher_TRK@x03,ADV_mega_1609_teacher_TRK,x03_teacher_view.html', 'http://corp.megastudy.net/recruit/re_teacher_w.asp', 'blank');" shape="circle" target="_blank" />
<area alt="공지사항" coords="348,1685,83" href="http://corp.megastudy.net/recruit/popup_faq.asp&#13;&#10;" onclick="window.open(this.href, 'lectureMap', 'left=0, top=0, width=650, height=625, statusbar=no,scrollbars=no,toolbar=no,resizable=no'); return false;" onfocus="blur()" shape="circle" />
<area alt="공지사항" coords="552,1686,85" href="http://corp.megastudy.net/recruit/main_recruit_p.asp&#13;&#10;" onclick="window.open(this.href, 'lectureMap', 'left=0, top=0, width=588, height=569, statusbar=no,scrollbars=no,toolbar=no,resizable=no'); return false;" onfocus="blur()" shape="circle" />
</map>
-->
<% End If %>
</body>
</html>
