<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/Public/class.Page.asp" -->
<%
    dim sMode, sUni_NM, sUni_CD, sMajor_NM
    dim sTitle

    sMode           = VARS("V_MODE") ' U : 대학교 검색, M : 학과 검색
    sUni_NM         = VARS("V_UNI_NM")
    sUni_CD         = VARS("V_UNI_CD")
    sMajor_NM       = VARS("V_MAJOR_NM")

    If sMode = "M" Then
        sTitle = "학과"

        strSql = ""
        strSql = strSql & " SELECT ROW_NO = ROW_NUMBER() OVER(ORDER BY BM_NM), BM_CD, BM_NM FROM MR_BAT_MAJOR WHERE BM_BU_CD = " & sUni_CD & " AND BM_NM LIKE '%" & sMajor_NM & "%'"
    Else
        sMode  = "U" '최초 창이 띄워졌을 때는 sMode 값이 공백, 그래서 기본값으로 U 를 준다.
        sTitle = "대학교"

        strSql = ""
        strSql = strSql & " SELECT ROW_NO = ROW_NUMBER() OVER(ORDER BY BU_NM), BU_CD, BU_NM FROM MR_BAT_UNIVERSITY WHERE BU_NM LIKE '%" & sUni_NM & "%' "
    End if

    Set objRs = russelobjdb.sqlQuery(strSql,3)
    arrList = Null
    If Not (objRs.EoF And objRs.BoF) Then
        arrList = objRs.getrows
    End If
    objRs.close
    Set objRs = Nothing

    iResultCnt = 0
    if isarray(arrList) then
        iResultCnt = (ubound(arrList,2) + 1)
    end if
    
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="" />
<link rel="shortcut icon" type="image/x-icon" href="#" />
<title><%=gMGC_Campus_KN %></title>
<link rel="stylesheet" type="text/css" href="/russel/library/css/common.css" />
<link rel="stylesheet" type="text/css" href="./style.css" />
</head>
<!-- #include virtual="/russel/public/jquery.asp" -->
<script type="text/javascript" src="ui.js"></script>
<script language="JavaScript" type="text/JavaScript">
    <!--
    function list_click(mode, code, name) {    
        if (parent.sKind == "M") {
            // 대학 + 학과 검색을 원함
            if (mode == "U") {
                // 현재의 검색 모드가 대학교 일 때
                // 부모창에 대학교 코드, 이름을 입력
                parent.form1.V_UNI_CD.value = code;
                parent.form1.V_UNI_NM.value = name;
                                
                $('.searchBox', parent.document).placeholder();

                // 부모창에서 학과 입력 화면으로 전환
                parent.showMajor();
            } else if (mode == "M") {
                // 현재의 검색모드가 학과 일 때
                // 부모창에 학과 코드, 이름을 입력
                parent.form1.V_MAJOR_CD.value = code;
                parent.form1.V_MAJOR_NM.value = name;

                // 완료 처리
                parent.finish();
            }
        } else if (parent.sKind == "U") {
            // 대학만 검색 원함
            if (mode == "U") {
                // 현재의 검색 모드가 대학교 일 때
                // 부모창에 대학교 코드, 이름을 입력
                parent.form1.V_UNI_CD.value = code;
                parent.form1.V_UNI_NM.value = name;

                // 완료 처리
                parent.finish();
            } else if (mode == "M") {
                // 현재의 검색모드가 학과 일 때
                // 대학만 검색을 원하는데, 학과 검색은 에러
                alert('데이터에 문제가 있습니다.');
                parent.window.close();
            }
        }
    }
    //-->
</script>
<body>
        <p class="uni-result">· <%=sTitle%> 명 검색 결과 (<%=iResultCnt%>건)</p>
        <div class="listBox">
            <table>
                <thead>
                    <tr>
                        <th>No.</th>
                        <th><%=sTitle%> 명<%if sTitle = "학과" then%>(전형)<%end if%></th>
                    </tr>
                </thead>
                <tbody>
                    <% If isarray(arrList) = False Then %>
                        <tr align="center">
                            <td colspan="2" align="center">검색결과가 없습니다.</td>
                        </tr>
                    <% ELSE 
                        For n=0 To ubound(arrList,3)  
                            ROW_NO = arrList(0,n)
                            CODE = arrList(1,n)
                            NAME = arrList(2,n)%>
                                <tr>
                                    <td><%=ROW_NO%></td>
                                    <td><a href="javascript:;" onClick="javascript:list_click('<%=sMode%>','<%=CODE%>', '<%=NAME%>');"><%=NAME%></a></td>
                                </tr>
                            <% Next
                    END IF %>
                </tbody>
            </table>
        </div>
</body>
</html>
