<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
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
        strSql = strSql & " SELECT ROW_NO = ROW_NUMBER() OVER(ORDER BY BU_NM), BC_TYPE, BC_NM FROM MR_BAT_UNIVERSITY_2024 WHERE BU_NM = '" & sUni_CD & "' AND BC_NM LIKE '%" & sMajor_NM & "%'"
    Else
        sMode  = "U" '최초 창이 띄워졌을 때는 sMode 값이 공백, 그래서 기본값으로 U 를 준다.
        sTitle = "대학교"

        strSql = ""
        strSql = strSql & " SELECT ROW_NO = ROW_NUMBER() OVER(ORDER BY BU_NM), BU_CD, BU_NM FROM MR_BAT_UNIVERSITY_2024 WHERE BU_NM LIKE '%" & sUni_NM & "%' GROUP BY BU_CD, BU_NM "
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
<style>
    
.uni-result {font-size:13px;color:#1a1a1a;margin:0 0 5px 0;padding:0 0 0 14px;}
.listBox {height:200px;overflow: auto;}
.listBox table{width:100%;border-collapse: collapse;}
.listBox table thead tr th {position: sticky;top:0;left:0;}
.listBox table thead tr th{background:#d4d4d4;border-left:1px solid #fff;height:35px;font-size:13px;color:#1a1a1a;padding:0;}
.listBox  table thead tr th:first-child{width:48px;border-left:none;}
.listBox  table tbody tr td{border:1px solid #e5e5e5;height:26px;line-height:26px;text-align:center;background:#fff;padding:0;font-size:13px;box-sizing:border-box;}
.listBox  table tbody tr td:first-child{width:48px;}
.listBox  table tbody tr:hover td{background:#f6f6f6;}
.listBox  table tbody tr td a{display:block;width:100%;height:100%;}
.listBox .thead{border-bottom:1px solid #e5e5e5;background:#fff;overflow:hidden;}
.popupUniversity iframe{width:100%;height:196px;}
</style>
</head>
<script language="JavaScript" type="text/JavaScript">
    function list_click(mode, code, name) {        
        // alert(mode) //U
        // alert(code) //56078
        // alert(name) //
        // alert(parent.sKind)
        if (parent.sKind == "M") {
            // 대학 + 학과 검색을 원함
            if (mode == "U") {
                // 현재의 검색 모드가 대학교 일 때
                // 부모창에 대학교 코드, 이름을 입력
                parent.school_search.V_UNI_CD.value = code;
                parent.school_search.V_UNI_NM.value = name;
                                
                // $('.searchBox', parent.document).placeholder();

                // 부모창에서 학과 입력 화면으로 전환
                parent.showMajor();
            } else if (mode == "M") {
                // 현재의 검색모드가 학과 일 때
                // 부모창에 학과 코드, 이름을 입력
                parent.school_search.V_MAJOR_CD.value = code;
                parent.school_search.V_MAJOR_NM.value = name + "(" + code + ")";

                // 완료 처리
                parent.finish();
            }
        } else if (parent.sKind == "U") {
            // 대학만 검색 원함
            if (mode == "U") {
                // 현재의 검색 모드가 대학교 일 때
                // 부모창에 대학교 코드, 이름을 입력
                parent.school_search.V_UNI_CD.value = code;
                parent.school_search.V_UNI_NM.value = name;

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
                        For n=0 To ubound(arrList,2)  
                            ROW_NO = arrList(0,n)
                            CODE = arrList(1,n)
                            NAME = arrList(2,n)%>
                                <tr>
                                    <td><%=ROW_NO%></td>
                                   <td>
                                        <% IF sTitle <> "대학교" THEN %>
                                            <a href="javascript:;" onClick="javascript:list_click('<%=sMode%>','<%=CODE%>', '<%=NAME%>');"><%=NAME%>&nbsp;(<%=CODE%>)</a>
                                        <% ELSE %>
                                            <a href="javascript:;" onClick="javascript:list_click('<%=sMode%>','<%=NAME%>', '<%=NAME%>');"><%=NAME%></a>
                                        <% END IF %>
                                    </td>
                                </tr>
                            <% Next
                    END IF %>
                </tbody>
            </table>
        </div>
</body>
</html>
