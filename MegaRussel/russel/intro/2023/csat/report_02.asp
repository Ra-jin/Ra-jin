<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<%
    rtnUrl = Request.Servervariables("PATH_INFO")

	' surveyFlag = true
	' If curYmdhmin >= 202011160000 Then
    '     surveyFlag = false
    ' End If

    ' flag = 1

	' If curYmdhmin < 202111180800 Then
	' 	flag = 2
	' elseif curYmdhmin >= 202111180800 Then '응시하기 버튼 클릭시 응시 페이지 이동
	' 	flag = 3
	' End if

	apply = true
	IF curYmdhmin >= 202311151400 Then '신청/수정 마감
		apply = false
	End If

	strSql = ""
	strSql = strSql &" SELECT EM_NUM "
	strSql = strSql &" FROM MS_EVTRUSSEL_MAS WITH(NOLOCK) "
	strSql = strSql &" WHERE EM_TITLE LIKE '%2024 수능 실전%' AND EM_DEL_FLG ='N' "

	Set objRs = russelobjdb.sqlQuery(strSql, 3)
	If Not (objRs.EoF And objRs.BoF) Then
		EM_NUM = objRs(0)
	End If
	objRs.close
	Set objRs = Nothing

	if EM_NUM = "" OR IsNull(EM_NUM) Then
		Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
		Response.End
	End If 


	'기본 카운트 설정 수
	strSql = ""
	strSql = strSql & " SELECT SUM(CONVERT(int,ED_COUNT)) AS CNT "
	strSql = strSql & " FROM MS_EVTRUSSEL_DTL WITH(NOLOCK) "
	strSql = strSql & " WHERE ED_EM_NUM = " & EM_NUM

	Set objRs = russelobjdb.sqlQuery(strSql, 1)
	If Not (objRs.EoF And objRs.BoF) Then
		addCnt = objRs("CNT")
	end if
	objRs.close
	Set objRs = Nothing

	'실제 접수자
	strSql = ""
	strSql = strSql & " SELECT COUNT(*) AS REALCNT "
	strSql = strSql & " FROM MS_EVTRUSSEL_DTL WITH(NOLOCK) "
	strSql = strSql & " WHERE ED_EM_NUM = '"&EM_NUM&"' AND ED_MEM_TYPE = '1' "

	Set objRs = russelobjdb.sqlQuery(strSql, 1)
	If Not (objRs.EoF And objRs.BoF) Then
		realCnt = objRs("REALCNT")
	end if
	objRs.close
	Set objRs = Nothing

	function format(ByVal szString, ByVal Expression)
        If len(szString) < len(Expression) Then
            format = left(Expression, len(Expression)-len(szString)) & szString
        Else
            format = szString
        End If
    End function

    If isnull(cnt) Then
        cnt = realCnt
    End If

	cnt = addCnt + realCnt

	applyCnt  = format(cnt, "0000")

	If gLoginOk = True Then
        strSql = ""
        strSql = strSql &" SELECT count(*) as cnt "
        strSql = strSql &" FROM MS_EVTRUSSEL_DTL WITH(NOLOCK) "
        strSql = strSql &" WHERE ED_EM_NUM = '"&EM_NUM&"' "
	    strSql = strSql &"      AND ED_MEM_ID = '"&gLoginMemId&"'"
		strSql = strSql &"      AND ED_MEM_TYPE = '1'"

		Set objRs = russelobjdb.sqlQuery(strSql, 3)
        If Not (objRs.EoF And objRs.BoF) Then
            applyStatus = objRs(0)
        End If
        objRs.close
        Set objRs = Nothing

    Else
        applyStatus = 0
    End If

%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="" />
    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
    <meta name="keywords" content="" />
	<meta name="description" content="" />
	<link rel="stylesheet" type="text/css" href="/intro/2023/csat/style.css" />
	<link rel="stylesheet" type="text/css" href="/common/css/table.css" />
</head>
<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- mock-wrap -->
<% If GetCampusVarsSiteMGC("_CAMPUS_KIND_") = "gisuk" Then '기숙 %>
<div class="mock-wrap" style="margin-top:-50px">
<% Else %>
<div class="mock-wrap">
<% End If %>
	<!-- visual -->
	<!--#include virtual="/intro/2023/csat/visual.asp" -->
	<!-- //visual -->
	
	<div class="bt-tab" id="report">
		<div class="inner">
			<span onclick="location.href='./experience.asp';">러셀 수능 실전 모의체험</span>
			<span onclick="location.href='./apply.asp';" class="on">성적 분석 리포트</span>
		</div>
	</div>
	
	<!-- tab 02 -->
	<div class="cont-box on">
		<div class="cont06">
			<div class="inner pb0">
				<p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/tab02_tit01.png" alt="성적 분석 리포트" /></p>
				<ul class="menu-list">
					<li><a href="apply.asp#report">성적 통지표</a></li>
					<li class="on"><a href="report_02.asp#report">등급컷</a></li>
					<li><a href="report_03.asp#report">성적 분석</a></li>
					<!-- <li><span href="javascript:void(0)" onclick="alert('11/22(수) 공개됩니다.');">성적 분석</span></li> -->
					<li><a href="http://www.megastudy.net/Entinfo/2024_jiwon/exam/exam_common_new/Explain/Explain_ex.asp?seq=319" target="_blank">해설강의</a></li>
					<li><a href="report_05.asp#report">후기 이벤트</a></li>
				</ul>
			</div>
			<div class="tab-wrap">
				<div class="tab-content on">
					<div class="cont-wrap">
						<p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/cont06_tab02_tit.png" alt="2024학년도 대학수학능력시험 과목별 등급컷" /></p>
						<div class="top-con">
							<p class="stit">등급컷 <strong>(*실채점 기준)</strong></p>
							<p class="date">* Updated. 2023.12.12(화)</p>
						</div>
						<div class="tbl-box">
							<table class="tbl-01">
								<colgroup>
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
								</colgroup>
								<thead>
									<tr class="low">
										<th class="b-l-n">구분</th>
										<th colspan="3">국어</th>
										<th colspan="4">수학</th>
									</tr>
									<tr class="low">
										<th rowspan="2" class="b-l-n">등급</th>
										<th rowspan="2">표준점수</th>
										<th colspan="2">등급컷 원점수 범위</th>
										<th rowspan="2">표준점수</th>
										<th colspan="3">등급컷 원점수 범위</th>
									</tr>
									<tr class="low">
										<th>화법과작문</th>
										<th>언어와매체</th>
										<th>확률과통계</th>
										<th>미적분</th>
										<th>기하</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th class="bg-gray">1등급</th>
										<td>133</td>
										<td>-</td>
										<td>-</td>
										<td>133</td>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<th class="bg-gray">2등급</th>
										<td>125</td>
										<td>-</td>
										<td>-</td>
										<td>126</td>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<th class="bg-gray">3등급</th>
										<td>116</td>
										<td>-</td>
										<td>-</td>
										<td>118</td>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<th class="bg-gray">4등급</th>
										<td>106</td>
										<td>-</td>
										<td>-</td>
										<td>107</td>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<th class="bg-gray">5등급</th>
										<td>95</td>
										<td>-</td>
										<td>-</td>
										<td>94</td>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<th class="bg-gray">6등급</th>
										<td>84</td>
										<td>-</td>
										<td>-</td>
										<td>80</td>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<th class="bg-gray">7등급</th>
										<td>73</td>
										<td>-</td>
										<td>-</td>
										<td>74</td>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<th class="bg-gray">8등급</th>
										<td>63</td>
										<td>-</td>
										<td>-</td>
										<td>70</td>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
								</tbody>
							</table>
							<table class="tbl-01 mt50">
								<colgroup>
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
								</colgroup>
								<thead>
									<tr class="low">
										<th>구분</th>
										<th colspan="2">생활과윤리</th>
										<th colspan="2">윤리와사상</th>
										<th colspan="2">한국지리</th>
										<th colspan="2">세계지리</th>
									</tr>
									<tr class="low">
										<th class="b-l-n">등급</th>
										<th>원점수</th>
										<th>표준점수</th>
										<th>원점수</th>
										<th>표준점수</th>
										<th>원점수</th>
										<th>표준점수</th>
										<th>원점수</th>
										<th>표준점수</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th class="bg-gray">만점</th>
										<td>50</td>
										<td>65</td>
										<td>50</td>
										<td>63</td>
										<td>50</td>
										<td>65</td>
										<td>50</td>
										<td>67</td>
									</tr>
									<tr>
										<th class="bg-gray">1등급</th>
										<td>50</td>
										<td>65</td>
										<td>50</td>
										<td>63</td>
										<td>50</td>
										<td>65</td>
										<td>48</td>
										<td>66</td>
									</tr>
									<tr>
										<th class="bg-gray">2등급</th>
										<td>47</td>
										<td>63</td>
										<td>-</td>
										<td>-</td>
										<td>46</td>
										<td>63</td>
										<td>45</td>
										<td>63</td>
									</tr>
									<tr>
										<th class="bg-gray">3등급</th>
										<td>43</td>
										<td>59</td>
										<td>45</td>
										<td>60</td>
										<td>43</td>
										<td>61</td>
										<td>41</td>
										<td>60</td>
									</tr>
									<tr>
										<th class="bg-gray">4등급</th>
										<td>37</td>
										<td>54</td>
										<td>38</td>
										<td>55</td>
										<td>33</td>
										<td>54</td>
										<td>33</td>
										<td>54</td>
									</tr>
									<tr>
										<th class="bg-gray">5등급</th>
										<td>29</td>
										<td>48</td>
										<td>25</td>
										<td>46</td>
										<td>20</td>
										<td>45</td>
										<td>23</td>
										<td>46</td>
									</tr>
									<tr>
										<th class="bg-gray">6등급</th>
										<td>22</td>
										<td>42</td>
										<td>18</td>
										<td>41</td>
										<td>13</td>
										<td>40</td>
										<td>15</td>
										<td>40</td>
									</tr>
									<tr>
										<th class="bg-gray">7등급</th>
										<td>15</td>
										<td>36</td>
										<td>12</td>
										<td>37</td>
										<td>10</td>
										<td>38</td>
										<td>12</td>
										<td>37</td>
									</tr>
									<tr>
										<th class="bg-gray">8등급</th>
										<td>10</td>
										<td>32</td>
										<td>7</td>
										<td>33</td>
										<td>7</td>
										<td>36</td>
										<td>8</td>
										<td>34</td>
									</tr>
								</tbody>
							</table>
							<table class="tbl-01 mt50">
								<colgroup>
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
								</colgroup>
								<thead>
									<tr class="low">
										<th>구분</th>
										<th colspan="2">동아시아사</th>
										<th colspan="2">세계사</th>
										<th colspan="2">경제</th>
										<th colspan="2">정치와법</th>
										<th colspan="2">사회문화</th>
									</tr>
									<tr class="low">
										<th class="b-l-n">등급</th>
										<th>원점수</th>
										<th>표준점수</th>
										<th>원점수</th>
										<th>표준점수</th>
										<th>원점수</th>
										<th>표준점수</th>
										<th>원점수</th>
										<th>표준점수</th>
										<th>원점수</th>
										<th>표준점수</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th class="bg-gray">만점</th>
										<td>50</td>
										<td>66</td>
										<td>50</td>
										<td>63</td>
										<td>50</td>
										<td>73</td>
										<td>50</td>
										<td>73</td>
										<td>50</td>
										<td>70</td>
									</tr>
									<tr>
										<th class="bg-gray">1등급</th>
										<td>47</td>
										<td>64</td>
										<td>50</td>
										<td>63</td>
										<td>44</td>
										<td>68</td>
										<td>44</td>
										<td>67</td>
										<td>45</td>
										<td>66</td>
									</tr>
									<tr>
										<th class="bg-gray">2등급</th>
										<td>46</td>
										<td>63</td>
										<td>48</td>
										<td>62</td>
										<td>39</td>
										<td>63</td>
										<td>40</td>
										<td>64</td>
										<td>41</td>
										<td>63</td>
									</tr>
									<tr>
										<th class="bg-gray">3등급</th>
										<td>42</td>
										<td>60</td>
										<td>45</td>
										<td>60</td>
										<td>34</td>
										<td>59</td>
										<td>34</td>
										<td>59</td>
										<td>36</td>
										<td>59</td>
									</tr>
									<tr>
										<th class="bg-gray">4등급</th>
										<td>35</td>
										<td>55</td>
										<td>38</td>
										<td>56</td>
										<td>26</td>
										<td>52</td>
										<td>27</td>
										<td>53</td>
										<td>30</td>
										<td>54</td>
									</tr>
									<tr>
										<th class="bg-gray">5등급</th>
										<td>22</td>
										<td>46</td>
										<td>21</td>
										<td>45</td>
										<td>20</td>
										<td>46</td>
										<td>19</td>
										<td>46</td>
										<td>22</td>
										<td>47</td>
									</tr>
									<tr>
										<th class="bg-gray">6등급</th>
										<td>14</td>
										<td>40</td>
										<td>13</td>
										<td>40</td>
										<td>14</td>
										<td>41</td>
										<td>13</td>
										<td>41</td>
										<td>15</td>
										<td>41</td>
									</tr>
									<tr>
										<th class="bg-gray">7등급</th>
										<td>9</td>
										<td>37</td>
										<td>9</td>
										<td>37</td>
										<td>10</td>
										<td>37</td>
										<td>10</td>
										<td>38</td>
										<td>10</td>
										<td>37</td>
									</tr>
									<tr>
										<th class="bg-gray">8등급</th>
										<td>6</td>
										<td>35</td>
										<td>6</td>
										<td>35</td>
										<td>8</td>
										<td>36</td>
										<td>7</td>
										<td>35</td>
										<td>6</td>
										<td>33</td>
									</tr>
								</tbody>
							</table>
							<table class="tbl-01 mt50">
								<colgroup>
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
								</colgroup>
								<thead>
									<tr class="low">
										<th>구분</th>
										<th colspan="2">물리학 Ⅰ</th>
										<th colspan="2">화학 Ⅰ</th>
										<th colspan="2">생명과학 Ⅰ</th>
										<th colspan="2">지구과학 Ⅰ</th>
									</tr>
									<tr class="low">
										<th class="b-l-n">등급</th>
										<th>원점수</th>
										<th>표준점수</th>
										<th>원점수</th>
										<th>표준점수</th>
										<th>원점수</th>
										<th>표준점수</th>
										<th>원점수</th>
										<th>표준점수</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th class="bg-gray">만점</th>
										<td>50</td>
										<td>69</td>
										<td>50</td>
										<td>69</td>
										<td>50</td>
										<td>69</td>
										<td>50</td>
										<td>68</td>
									</tr>
									<tr>
										<th class="bg-gray">1등급</th>
										<td>47</td>
										<td>67</td>
										<td>47</td>
										<td>67</td>
										<td>47</td>
										<td>66</td>
										<td>47</td>
										<td>65</td>
									</tr>
									<tr>
										<th class="bg-gray">2등급</th>
										<td>42</td>
										<td>63</td>
										<td>41</td>
										<td>62</td>
										<td>42</td>
										<td>62</td>
										<td>44</td>
										<td>63</td>
									</tr>
									<tr>
										<th class="bg-gray">3등급</th>
										<td>38</td>
										<td>60</td>
										<td>37</td>
										<td>58</td>
										<td>39</td>
										<td>59</td>
										<td>38</td>
										<td>58</td>
									</tr>
									<tr>
										<th class="bg-gray">4등급</th>
										<td>29</td>
										<td>53</td>
										<td>32</td>
										<td>54</td>
										<td>32</td>
										<td>53</td>
										<td>33</td>
										<td>54</td>
									</tr>
									<tr>
										<th class="bg-gray">5등급</th>
										<td>20</td>
										<td>46</td>
										<td>23</td>
										<td>47</td>
										<td>27</td>
										<td>48</td>
										<td>25</td>
										<td>47</td>
									</tr>
									<tr>
										<th class="bg-gray">6등급</th>
										<td>12</td>
										<td>40</td>
										<td>15</td>
										<td>40</td>
										<td>20</td>
										<td>42</td>
										<td>16</td>
										<td>40</td>
									</tr>
									<tr>
										<th class="bg-gray">7등급</th>
										<td>10</td>
										<td>38</td>
										<td>11</td>
										<td>37</td>
										<td>14</td>
										<td>36</td>
										<td>12</td>
										<td>36</td>
									</tr>
									<tr>
										<th class="bg-gray">8등급</th>
										<td>6</td>
										<td>35</td>
										<td>6</td>
										<td>33</td>
										<td>9</td>
										<td>32</td>
										<td>8</td>
										<td>33</td>
									</tr>
								</tbody>
							</table>
							<table class="tbl-01 mt50 mb70">
								<colgroup>
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
									<col style="width: %;">
								</colgroup>
								<thead>
									<tr class="low">
										<th>구분</th>
										<th colspan="2">물리학 Ⅱ</th>
										<th colspan="2">화학 Ⅱ</th>
										<th colspan="2">생명과학 Ⅱ</th>
										<th colspan="2">지구과학 Ⅱ</th>
									</tr>
									<tr class="low">
										<th class="b-l-n">등급</th>
										<th>원점수</th>
										<th>표준점수</th>
										<th>원점수</th>
										<th>표준점수</th>
										<th>원점수</th>
										<th>표준점수</th>
										<th>원점수</th>
										<th>표준점수</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th class="bg-gray">만점</th>
										<td>50</td>
										<td>74</td>
										<td>50</td>
										<td>80</td>
										<td>50</td>
										<td>73</td>
										<td>50</td>
										<td>72</td>
									</tr>
									<tr>
										<th class="bg-gray">1등급</th>
										<td>46</td>
										<td>71</td>
										<td>40</td>
										<td>70</td>
										<td>45</td>
										<td>69</td>
										<td>48</td>
										<td>70</td>
									</tr>
									<tr>
										<th class="bg-gray">2등급</th>
										<td>39</td>
										<td>65</td>
										<td>34</td>
										<td>64</td>
										<td>40</td>
										<td>65</td>
										<td>43</td>
										<td>66</td>
									</tr>
									<tr>
										<th class="bg-gray">3등급</th>
										<td>31</td>
										<td>58</td>
										<td>27</td>
										<td>58</td>
										<td>33</td>
										<td>59</td>
										<td>33</td>
										<td>58</td>
									</tr>
									<tr>
										<th class="bg-gray">4등급</th>
										<td>22</td>
										<td>50</td>
										<td>20</td>
										<td>51</td>
										<td>25</td>
										<td>52</td>
										<td>23</td>
										<td>50</td>
									</tr>
									<tr>
										<th class="bg-gray">5등급</th>
										<td>16</td>
										<td>45</td>
										<td>15</td>
										<td>46</td>
										<td>17</td>
										<td>45</td>
										<td>17</td>
										<td>45</td>
									</tr>
									<tr>
										<th class="bg-gray">6등급</th>
										<td>12</td>
										<td>42</td>
										<td>11</td>
										<td>42</td>
										<td>14</td>
										<td>42</td>
										<td>13</td>
										<td>42</td>
									</tr>
									<tr>
										<th class="bg-gray">7등급</th>
										<td>10</td>
										<td>40</td>
										<td>7</td>
										<td>38</td>
										<td>9</td>
										<td>38</td>
										<td>9</td>
										<td>39</td>
									</tr>
									<tr>
										<th class="bg-gray">8등급</th>
										<td>7</td>
										<td>37</td>
										<td>5</td>
										<td>36</td>
										<td>8</td>
										<td>37</td>
										<td>7</td>
										<td>37</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>
<!-- //mock-wrap -->


<!--  공통 하단 //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->

<script>

$(document).ready(function(){
	//수능 모의체험 혜택 탭
	$(".tabs").click(function(){

		var click = $(this).attr("data-tab");

		$(".tabs").removeClass("on");

		$(".dis").removeClass("on");

		$(this).addClass("on");

		$("#"+click).addClass("on");

	});
});


function fn_eventGo(flg){

    var flg = flg;

	if(flg == "write"){
        <% If gLoginOk = false Then %>
            alert("로그인 후 신청 가능합니다.");
			location.href="/russel/member/login.asp?rtnUrl=%2Fintro%2F2023%2Fcsat%2Fapply%2Easp%3F"
			return;
		<% End If %>
    	if ('<%=applyStatus%>' == "0"){
            alert("반드시 응시하고자 하는 학생의 ID로 신청하시기 바랍니다.");
            window.open('/intro/2023/csat/pop_apply.asp','popup_mock','scrollbars=yes,width=720,height=900');
            return;
        } else {
            window.open('/intro/2023/csat/pop_view.asp','popup_mock','scrollbars=yes,width=720,height=900');
            return;
        }
    }
	else if(flg == "modify"){
		<% If gLoginOk = false Then %>
            alert("로그인 후 이용 가능합니다.");
			location.href="/russel/member/login.asp?rtnUrl=%2Fintro%2F2023%2Fcsat%2Fapply%2Easp%3F"
			return;
		<% End If %>

		if ('<%=applyStatus%>' == "0"){
			alert("수능 실전 모의체험 신청 확인은 사전 신청자만 이용가능합니다.");
			return;
        } else {
            window.open('/intro/2023/csat/pop_view.asp','popup_mock','scrollbars=yes,width=720,height=900');
            return;
        }
	}
	else if(flg == "end"){
        alert("마감되었습니다.");
    }

	window.open(flg ,'popup_mock','scrollbars=yes,width=720,height=900');
}

</script>
<script src="/intro/2023/csat/ui.js"></script>
</body>
</html>