<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!-- 공통 인클루드 페이지 종료 -->

<%
    pSetCD          = VARS("V_SET_CD")
    pProCD          = VARS("V_PRO_CD")
    pRefCashAmt     = VARS("V_REF_CASH_AMT")  ' 입금환불 신청금액
    pStafID         = "megastudy"
    pSaleCnt        = VARS("V_REFUND_CNT")
    pRefBankCD      = VARS("V_BANK_CD")
    pRefAccNm       = VARS("V_ACCT_NM")
    pRefAccNum      = VARS("V_ACCT_NO")
    sLineEnd   = "" & vbCrLf

    pRefCashAmt     = Replace( pRefCashAmt , "," , "" )
    IF pRefCashAmt = "" THEN
		pRefCashAmt = "0"
	END IF
    bCashReci = false
	IF CLng(pSetCashAmt) <> 0 OR CLng(pRefCashAmt) <> 0  THEN
		bCashReci = true
	ELSE
		bCashReci = false
	END IF

    bResult    = true
	sResultMsg = ""

    ' ############ 테스트 정보 ###########
    'pSetCD = "2670401"
    'pRefCashAmt = "10600"
    ' ############ 테스트 정보 ###########

    '현재 시간 취득
    strSql = "SELECT CONVERT( VARCHAR(23) , GETDATE() , 121),  dbo.UF_GET_Encode('" & pRefAccNum & "') as ACCT_NUM_ENC "
	set RS = amsobjdb.sqlQuery(strSql,3)
	pNowDT = RS(0)
	pRefAccNum = RS(1)
	RS.close
    Set RS = Nothing

    '▒▒▒▒▒▒▒ ※※※ 결제정보와 회원코드 학원코드 획득 ▒▒▒▒▒▒▒▒▒▒▒▒▒
	strSql = ""
	strSql = strSql & " SELECT SM_MEM_CD , SM_ACA_CD "
	strSql = strSql & " FROM AMS_SET_MAS with(nolock) "
	strSql = strSql & " WHERE SM_SET_CD = " & pSetCD & " "
    set RS = amsobjdb.sqlQuery(strSql,3)
	IF NOT RS.EOF THEN
		pMemCD = RS(0)
		pAcaCD = RS(1)
	ELSE
		bResult    = false
		sResultMsg = "결제정보를 찾을 수 없습니다."
	END IF
	RS.close
    Set RS = Nothing

	strSql = ""
	strSql = strSql & " IF EXISTS(SELECT 1 FROM AMS_REF_ACCT (NOLOCK) WHERE RA_MEM_CD = '" & pMemCD & "' AND RA_ACCT_NUM = '" & pRefAccNum & "') "
	strSql = strSql & " BEGIN "
	strSql = strSql & " 	UPDATE AMS_REF_ACCT "
	strSql = strSql & " 	SET RA_BANK_CD = '" & pRefBankCD & "', RA_RCV_NM = '" & pRefAccNm & "', RA_ACCT_NUM = '" & pRefAccNum & "', RA_USE_YN = 'Y', RA_REG_DT = '" & pNowDT & "' "
	strSql = strSql & " 	WHERE RA_MEM_CD = '" & pMemCD & "' AND RA_ACCT_NUM = '" & pRefAccNum & "' "
	strSql = strSql & " END "
	strSql = strSql & " ELSE "
	strSql = strSql & " BEGIN "
	strSql = strSql & " 	INSERT INTO AMS_REF_ACCT( "
	strSql = strSql & "				RA_MEM_CD , RA_ACCT_NUM , RA_BANK_CD ,  "
	strSql = strSql & "				RA_RCV_NM , RA_USE_YN , RA_REG_DT )  "
	strSql = strSql & " 	VALUES( " & pMemCD & " , '" & pRefAccNum & "' , " & pRefBankCD & " ,  "
	strSql = strSql & "				'" & pRefAccNm & "' , 'Y' , '" & pNowDT & "' ) "
	strSql = strSql & " END "
	amsobjdb.sqlExecute(strSql)

    strSql = ""
    strSql = strSql & " SELECT		SB_SB_CD, SB_REAL_AMT "
    strSql = strSql & " FROM		AMS_SALE_BOOK	A (NOLOCK) "
    strSql = strSql & " LEFT JOIN	AMS_MEAL_RESERVATION	B (NOLOCK) ON A.SB_SB_CD = B.MR_SB_CD "
    strSql = strSql & " WHERE		SB_SET_CD = '" & pSetCD & "' "
    strSql = strSql & " AND			SB_BOOK_CD = '" & pProCD & "' "
    strSql = strSql & " AND			SB_SALE_ST = 11 "
    strSql = strSql & " AND			SB_REF_DT IS NULL "
    strSql = strSql & " AND			MR_SB_CD IS NULL "
    strSql = strSql & " ORDER BY    SB_SB_CD DESC "
    set RS = amsobjdb.sqlQuery(strSql,3)

    IF NOT RS.EOF THEN
        arrSBCD = RS.getrows
		IF cint(pSaleCnt) > cint(RS.RecordCount) THEN
            bResult    = false
		    sResultMsg = "보유 수량보다 더 많은 환불은 불가 합니다."
        END IF
	ELSE
		bResult    = false
		sResultMsg = "환불 가능한 식권이 없습니다."
	END IF
	RS.close
    Set RS = Nothing
    ' 트랜잭션 시작 ( 환불작업 시작 )
	'▒▒▒▒▒▒▒ 2. AMS_REF_ACCT 환불계좌 및 계좌이체 환불이력 갱신 ▒▒▒▒▒▒▒▒▒▒▒▒▒


    	'▒▒▒▒▒▒▒ 2. AMS_PAYBACK_MAS 등록 ▒▒▒▒▒▒▒▒▒▒▒▒▒
	strSql = ""
	strSql = strSql & " Exec dbo.Msp_Set_Ref_Mas "
	strSql = strSql & "		" & pSetCD & " , "
	strSql = strSql & "		" & pMemCD & " , "
	strSql = strSql & "		" & pAcaCD & " , "
	strSql = strSql & "		" & pRefCashAmt & " , "
	strSql = strSql & "		11 , "
	strSql = strSql & "		'" & pStafID & "' , "
	strSql = strSql & "		'" & pRefReason & "' , "
	strSql = strSql & "     '" & pNowDT & "' , "
	strSql = strSql & "     0 , "
	strSql = strSql & "		'" & pCardRefInfo & "' , "
	strSql = strSql & "		" & pRefCashAmt & " , "
	strSql = strSql & "		'" & pRefAccNum & "'  "

	amsobjdb.begin()
    set RS = amsobjdb.sqlQuery(strSql,3)

	IF NOT RS.EOF THEN
		pPayBackCD = RS(0)
		IF ISNULL(pPayBackCD) THEN
			bResult = false
			sResultMsg = "환불 마스터 db 등록에 실패하였습니다."
		END IF
	ELSE
		bResult = false
		sResultMsg = "환불 마스터 db 등록에 실패하였습니다."
	END IF
    RS.close
    Set RS = Nothing

'------------------- 계좌이체 정보까지는 바로 등록하고 아래 하단 SQL부터는 트랜잭션으로 한번에 처리
    '▒▒▒▒▒▒▒ 3. AMS_REFUND_MAS 갱신 ▒▒▒▒▒▒▒▒▒▒▒▒▒
	IF bResult THEN
		FOR i=0 TO pSaleCnt-1
            '▒▒▒▒▒▒▒ AMS_REFUND_MAS 및 환불이력 갱신 ▒▒▒▒▒▒▒▒▒▒▒▒▒
			IF bResult THEN
                ' INSERT SQL 생성 ,  환불코드 등록후 변수로 저장한다.
                'sInUpSql = sInUpSql & "-- 환불(AMS_REFUND_MAS) 등록 "  & sLineEnd

                IF pSaleColeCD = "" THEN pSaleColeCD = "NULL"
				IF pSaleLecCD = "" THEN pSaleLecCD = "NULL"

                sInUpSql = sInUpSql & " INSERT INTO AMS_REFUND_MAS ( "
                sInUpSql = sInUpSql & " RM_SB_CD , "
                sInUpSql = sInUpSql & " RM_BOOK_CD , RM_SET_CD , RM_MEM_CD , "
                sInUpSql = sInUpSql & " RM_REG_DT , RM_REF_AMT , RM_REF_ETC_AMT , RM_STAF_ID , RM_REF_TP , "
                sInUpSql = sInUpSql & " RM_COLE_CD , RM_ACA_CD , RM_LEC_CD , RM_BACK_CD , "
                sInUpSql = sInUpSql & " RM_REF_NT,RM_ETC_TXT, RM_ETC_TXT_DTL )"
                sInUpSql = sInUpSql & " SELECT " & arrSBCD(0,i) & " , "
                sInUpSql = sInUpSql & "        " & pProCD & " , " & pSetCD & " , " & pMemCD & " , "
                sInUpSql = sInUpSql & "        '" & pNowDT & "' , " & arrSBCD(1,i) & " , " & "0" & " , '" & pStafID & "' , " & "11" & " , "
                sInUpSql = sInUpSql & "        " & pSaleColeCD & " , " & pAcaCD & " , " & pSaleLecCD & " , " & pPayBackCD & " , "
                sInUpSql = sInUpSql & "        '" & pRefReason & "','"& pEtcTxtStr &"','"& pEtcTxtStr_etc &"' "

                sInUpSql = sInUpSql & " SET @NEW_REF_CD = 0 "
                sInUpSql = sInUpSql & " SET @NEW_REF_CD = @@IDENTITY "

                'sInUpSql = sInUpSql & sLineEnd & "-- 교재(전체):판매교재(AMS_BOOK_SALE) 취소 등록"  & sLineEnd
                sInUpSql = sInUpSql & " UPDATE AMS_SALE_BOOK SET "
                sInUpSql = sInUpSql & "     SB_SALE_ST = 13 , SB_REF_DT = '" & pNowDT & "' "
                sInUpSql = sInUpSql & " WHERE SB_SB_CD = " & arrSBCD(0,i) & ""
                sInUpSql = sInUpSql & "   AND SB_SET_CD = " & pSetCD & ""
                sInUpSql = sInUpSql & "   AND SB_MEM_CD = " & pMemCD & ""
                sInUpSql = sInUpSql & "   AND SB_SETBOOK_CD IS NULL  "
                sInUpSql = sInUpSql & sLineEnd

            END IF
        NEXT
    END IF

    '▒▒▒▒▒▒▒ 1. AMS_SET_HIS 갱신 ▒▒▒▒▒▒▒▒▒▒▒▒▒
    IF bResult THEN
        strSql = ""
		strSql = strSql & " SELECT ISNULL( SUM(SH_SET_AMT) , 0 ) , ISNULL( SUM(SH_RECI_AMT) , 0 ) , "
		strSql = strSql & "        ISNULL( SUM(SH_REF_AMT) , 0 ) , ISNULL( SUM(SH_EST_AMT) , 0 ) "
		strSql = strSql & " FROM AMS_SET_HIS with(nolock) "
		strSql = strSql & " WHERE SH_SET_CD = " & pSetCD & ""

		set RS = amsobjdb.sqlQuery(strSql,3)
		IF NOT RS.EOF THEN
			dbAlSetAmt  = RS(0)
			dbAlReciAmt = RS(1)
			dbAlRefAmt  = RS(2)
			dbAlEstAmt  = RS(3)
		END IF
		RS.close
        Set RS = Nothing

		' 미납금 계산 -> 미납금액 = SUM(결제금액) - ( SUM(수납금액) - SUM(환불금액) )
		nMinapAmt  = dbAlSetAmt -  ( dbAlReciAmt - dbAlRefAmt )

		IF pRefCashAmt <> "" THEN
			nRefAppAmt = CLng( pRefCashAmt )
		ELSE
			nRefAppAmt = 0
		END IF

		IF nRefAppAmt <= 0 THEN
			bResult    = false
			sResultMsg = "환불신청 금액이 없습니다."
		END IF

		nRefAmt    = nRefAppAmt - nMinapAmt
		nSetAmt    = convertSign(nRefAppAmt)

        IF bResult THEN
            '▒▒▒▒▒▒▒ AMS_SET_HIS 인서트 ▒▒▒▒▒▒▒▒▒▒▒▒▒
			'sInUpSql = sInUpSql & sLineEnd & "-- 결제이력(AMS_SET_HIS) 등록"  & sLineEnd
			sInUpSql = sInUpSql & " INSERT INTO AMS_SET_HIS ( SH_SET_CD , SH_MEM_CD , SH_SET_AMT , SH_REF_AMT ,  "
			sInUpSql = sInUpSql & "             SH_STAF_ID ,  SH_REG_DT , SH_HIS_NT ) "
			sInUpSql = sInUpSql & " SELECT " & pSetCD & " , " & pMemCD & " , " & nSetAmt & " , " & pRefCashAmt & " , "
			sInUpSql = sInUpSql & "        '" & pStafID & "' , '"&pNowDT&"'  , '환불신청' "
			sInUpSql = sInUpSql & sLineEnd
			sInUpSql = sInupSql & " EXEC dbo.Msp_Set_Sale_SetHis_Stat_SET " & pSetCD & " " & sLineEnd
        END IF
    END IF

    IF bResult THEN
		amsobjdb.trans("")

        ' 업데이트 정보 트랜잭션 처리
		sRealSql = ""
		sRealSql = sRealSql & " SET NOCOUNT ON; "                        & sLineEnd
		sRealSql = sRealSql & " SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED "
		sRealSql = sRealSql & " DECLARE @NEW_REF_CD INT "				 & sLineEnd
		sRealSql = sRealSql & " DECLARE @UP_RESULT INT "				 & sLineEnd
		sRealSql = sRealSql & " BEGIN TRANSACTION "                      & sLineEnd
		sRealSql = sRealSql & sInUpSql                                   & sLineEnd
		sRealSql = sRealSql & " SET @UP_RESULT = 0 "                     & sLineEnd
		sRealSql = sRealSql & " IF @@Error <> 0 "                        & sLineEnd
		sRealSql = sRealSql & "    BEGIN "                               & sLineEnd
		sRealSql = sRealSql & "        Rollback Transaction "            & sLineEnd
		sRealSql = sRealSql & "        SET @UP_RESULT = 0 "              & sLineEnd
		sRealSql = sRealSql & "    END "                                 & sLineEnd
		sRealSql = sRealSql & " ELSE "                                   & sLineEnd
		sRealSql = sRealSql & "    BEGIN "                               & sLineEnd
		sRealSql = sRealSql & "        COMMIT Transaction "              & sLineEnd
		sRealSql = sRealSql & "        EXEC DBO.Msp_Sms_Send_Info_Get "  & sLineEnd
		sRealSql = sRealSql & "        '" & pPageSign & "' ,   "         & sLineEnd
		sRealSql = sRealSql & "        4 ,                     "         & sLineEnd
		sRealSql = sRealSql & "        " & pAcaCD & " ,        "         & sLineEnd
		sRealSql = sRealSql & "        " & pMemCD & "          "         & sLineEnd
		sRealSql = sRealSql & "        SET @UP_RESULT  = 1 "             & sLineEnd
		sRealSql = sRealSql & "    END "                                 & sLineEnd
		sRealSql = sRealSql & " SET NOCOUNT OFF; "                       & sLineEnd
		sRealSql = sRealSql & " SELECT RESULT_TT = @UP_RESULT "          & sLineEnd

		set RS = amsobjdb.sqlQuery(sRealSql,3)

		IF NOT RS.EOF  THEN
			nTranRes = RS(0)
			IF nTranRes = 1 THEN
				sResultMsg = "환불신청되었습니다."
			ELSE
				bResult    = false
				sResultMsg = "트랜잭션 처리에 실패하였습니다."
			END IF
		ELSE
			bResult    = false
			sResultMsg = "트랜잭션 처리에 실패하였습니다."
		END IF
		RS.close
        Set RS = Nothing
	ELSE
		amsobjdb.rollback()
    END IF
    'Response.Write sRealSql

    'Response.Write pPayBackCD & "<br/>"
	call js_redirect("./refund_list.asp", sResultMsg)
%>