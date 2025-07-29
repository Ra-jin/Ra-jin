<% 
'코어 전역 변수(대전 예외처리)
russelCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")
If GetCampusVarsSiteMGC("_CAMPUS_") = "core_dj" Then 'core_dj만 예외처리
  russelCore = 0
End If
%>
