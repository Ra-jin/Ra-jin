	function initPage(menuNo) {
		goTab(menuNo, null, 1);
	}

	function fnPage(page, menuNo) {
		goTab(menuNo, null, page);
	}
	function goTab(menuNo, elem, page) {
		$("div.tabWrap a").each(function(index) {
			$(this).removeClass("tab_curr3");
		});

		if(elem == null) {	
			$("#span_grd_" + menuNo).addClass("tab_curr3");
		} else {
			$(elem).addClass("tab_curr3");
		}

		//alert(menuNo + ', ' + intAmsMemCd)
		// 상세조회
		$.post("/mypage/record_info/Ajax/ajax_spec_tab.asp", { MENU_NO : menuNo, MEM_CD : intAmsMemCd, page : page, PARENT_YN : cIsParents}, function (data) {
			if (data != "") {
				
				$("#DIV_TAB").html(data.toString());
			}
		})
		.fail(function () {
			alert("정보조회에 실패하였습니다.(ERROR:-1)");
		});
	}
	
	// 독서후기 레이어 노출
	var intPrevNum = 0;
	function fnBookLayerDisplay(num, style) {
		if (intPrevNum > 0)	{
			document.getElementById("BOOK_DIV_" + intPrevNum).style.display = "none";
		}
		document.getElementById("BOOK_DIV_" + num).style.display = style;
		intPrevNum = num;
	}

	// 팝업 오픈
	function fnPopupOpen(intMenuNo) {
		window.open('/mypage/record_info/popup_spec.asp?MENU_NO=' + intMenuNo + '&MEM_CD=' + intAmsMemCd, 'popLink', 'left=0, top=0, statusbar=no,scrollbars=yes,toolbar=no,resizable=no'); 
		return false;
	}

	// 저장 버튼 함수
	function goRegist() {
		var fo = document.foRegist;

        if (confirm('정보를 저장하시겠습니까?')) {

			//---------------------------------------------------------
			// 출결관리 
			//---------------------------------------------------------
			if (intMenuNo == 1)	{		
				if (fo.GRADE1_CNT.value == "" || fo.GRADE2_CNT.value == "" || fo.GRADE3_CNT.value == ""){
					alert("결석일수는 필수 입력 사항입니다.");
					fo.GRADE1_CNT.focus();
					return;
				}
			} 


			//---------------------------------------------------------
			// 봉사활동
			//---------------------------------------------------------
			else if (intMenuNo == 2) {				
				var fNum = Number(document.getElementsByName("SERVE_CNT")[0].value);

				for (i = 0; i <= fNum; i++) {
					if (document.getElementById("SERVE_AREA" + i).value != "" || document.getElementById("SERVE_CMT" + i).value.replace("최대 100자 이내 입력가능", "") != "" || document.getElementById("SERVE_TIME" + i).value != "") {
						if (document.getElementById("SERVE_AREA" + i).value == "" || document.getElementById("SERVE_CMT" + i).value.replace("최대 100자 이내 입력가능", "") == "" || document.getElementById("SERVE_TIME" + i).value == "") {
							alert("선택(입력)한 활동의 나머지 정보가 입력되지 않았습니다.");
							return;
						}
					}
				}
			}
			//---------------------------------------------------------
			// 임원활동 
			//---------------------------------------------------------
			else if (intMenuNo == 3) {				
				var fNum = Number(document.getElementsByName("SERVE_CNT")[0].value);

				for (i = 0; i <= fNum; i++) {
					if (document.getElementById("SERVE_GRADE" + i).value != "" || document.getElementById("SERVE_CMT_SEL" + i).value != "") {
						// 교회(기타)인 경우 수기입력 박스 노출
						if (document.getElementById("SERVE_CMT_SEL" + i).options[9].selected == true) {
							if (document.getElementById("SERVE_CMT" + i).value.replace("최대 100자 이내 입력가능", "") == "") {
								alert("활동 내역을 입력해 주세요.");
								document.getElementById("SERVE_CMT" + i).focus();
								return;
							}
						}

						if (document.getElementById("SERVE_GRADE" + i).value == "" || document.getElementById("SERVE_CMT_SEL" + i).value == "") {
							alert("선택(입력)한 활동의 나머지 정보가 입력되지 않았습니다.");
							return;
						}
					}
				}
			}
			//---------------------------------------------------------
			// 희망진로
			//---------------------------------------------------------
			else if (intMenuNo == 4) {		
				for (i = 1; i <= 3; i++) {
					if (document.getElementById("SERVE_ABILITY" + i).value != "" && document.getElementById("SERVE_ABILITY" + i).value != "최대 100자 이내 입력가능") {
						if (document.getElementById("SERVE_CAREER_CD" + i).value == "")	{
							alert("학생 희망 진로/직업을 입력해 주세요.");
							document.getElementById("SERVE_CAREER_CD" + i).focus();
							return;
						}					
					}

					if (document.getElementById("SERVE_CAREER_CD" + i).value != "")	{
						if (document.getElementById("SERVE_ABILITY" + i).value == "" || document.getElementById("SERVE_ABILITY" + i).value == "최대 100자 이내 입력가능") {
							alert("특기 또는 흥미분야를 입력해 주세요.");
							document.getElementById("SERVE_ABILITY" + i).focus();
							return;
						}					
					}
				}
			}
			//---------------------------------------------------------
			// 창의적 체험활동
			//---------------------------------------------------------
			else if (intMenuNo == 5) {
				var fNum = Number(document.getElementsByName("SERVE_CNT")[0].value);

				for (i = 0; i <= fNum; i++) {
					if (document.getElementById("SERVE_STEP1_" + i).value != "" || document.getElementById("SERVE_STEP2_" + i).value != "" || document.getElementById("SERVE_PERIOD" + i).value != "" || document.getElementById("SERVE_CMT" + i).value.replace("최대 100자 이내 입력가능", "") != "") {
						if (document.getElementById("SERVE_STEP1_" + i).value == "" || document.getElementById("SERVE_STEP2_" + i).value == "" || document.getElementById("SERVE_PERIOD" + i).value == "" || document.getElementById("SERVE_CMT" + i).value.replace("최대 100자 이내 입력가능", "") == "") {
							alert("선택(입력)한 활동의 나머지 정보가 입력되지 않았습니다.");
							return;
						}
					}
				}

			}
			//---------------------------------------------------------
			// 수상/자격증 
			//---------------------------------------------------------
			else if (intMenuNo == 6) {
				var fNum = Number(document.getElementsByName("SERVE_CNT")[0].value);

				for (i = 0; i <= fNum; i++) {
					if (document.getElementById("SERVE_STEP1_" + i).value != "" || document.getElementById("SERVE_STEP2_" + i).value != "" || document.getElementById("SERVE_STEP3_" + i).value != "" || document.getElementById("SERVE_SCALE" + i).value != "" || document.getElementById("SERVE_ACQ_YEAR" + i).value != "" || document.getElementById("SERVE_ACQ_MONTH" + i).value != "" || document.getElementById("SERVE_CMT" + i).value.replace("최대 100자 이내 입력가능", "") != "") {
						if (document.getElementById("SERVE_STEP1_" + i).value == "" || document.getElementById("SERVE_STEP2_" + i).value == "" || document.getElementById("SERVE_STEP3_" + i).value == "" || document.getElementById("SERVE_SCALE" + i).value == "" || document.getElementById("SERVE_ACQ_YEAR" + i).value == "" || document.getElementById("SERVE_ACQ_MONTH" + i).value == "" || document.getElementById("SERVE_CMT" + i).value.replace("최대 100자 이내 입력가능", "") == "") {
							alert("선택(입력)한 수상/자격 내역의 나머지 정보가 입력되지 않았습니다. ");
							return;
						}
					}
				}
			}
			//---------------------------------------------------------
			// 독서활동
			//---------------------------------------------------------
			else if (intMenuNo == 7) {
				var fNum = Number(document.getElementsByName("SERVE_CNT")[0].value);

				for (i = 0; i <= fNum; i++) {
					if (document.getElementById("SERVE_GRADE" + i).value != "" || document.getElementById("SERVE_TYPE" + i).value != "" || document.getElementById("SERVE_TITLE" + i).value.replace("최대 100자 이내 입력가능", "") != "" || document.getElementById("SERVE_CMT" + i).value.replace("최대 200자 이내 입력가능", "") != "") {
						if (document.getElementById("SERVE_GRADE" + i).value == "" || document.getElementById("SERVE_TYPE" + i).value == "" || document.getElementById("SERVE_TITLE" + i).value.replace("최대 100자 이내 입력가능", "") == "" || document.getElementById("SERVE_CMT" + i).value.replace("최대 200자 이내 입력가능", "") == "") {
							alert("선택(입력)한 활동의 나머지 정보가 입력되지 않았습니다.");
							return;
						}
					}
				}		
			}
			fo.action = "sub_spec_reg.asp";
			//fo.target = "runSource";
			fo.submit();
		}
	}

	// 결과값 수정
	function fnEndDisplay(menuNo) {
		// 출결인 경우 2번탭이 기본
		if (menuNo == 1){
			menuNo = 2;
		}

		// 상세조회
		$.post("/mypage/record_info/Ajax/ajax_spec_count.asp", { MEM_CD : intAmsMemCd}, function (data) {
			if (data != "") {
				arrData = data.split("||");
				for (i = 0; i <= arrData.length; i++) {
					jQuery("#SPAN_COUNT_" + i).text(arrData[i]);
					//alert(menuNo + "," + (i + 3))
				}
			}
		})
		.fail(function () {
			alert("정보조회에 실패하였습니다.(ERROR:-1)");
		});

		goTab(menuNo, null);
	}

	// 삭제 버튼 함수 
	function fnDelete(num) {
		//alert(intMenuNo + ', ' + intAmsMemCd + ', ' + idx)

		//---------------------------------------------------------
		// 봉사활동
		//---------------------------------------------------------
		if (intMenuNo == 2) {			
			document.getElementById("SERVE_AREA" + num).options[0].selected = true;
			document.getElementById("SERVE_CMT" + num).value = "최대 100자 이내 입력가능"; 
			document.getElementById("SERVE_TIME" + num).value = ""; 
			document.getElementById("SERVE_TR" + num).style.display = "none";
		}
		//---------------------------------------------------------
		// 임원활동
		//---------------------------------------------------------
		else if (intMenuNo == 3) {		
			document.getElementById("SERVE_GRADE" + num).options[0].selected = true;
			document.getElementById("SERVE_CMT_SEL" + num).options[0].selected = true;
			document.getElementById("SERVE_CMT" + num).value = "최대 100자 이내 입력가능"; 
			document.getElementById("SERVE_TR" + num).style.display = "none";
			fnCommentSet(num);
		}
		//---------------------------------------------------------
		// 희망진로
		//---------------------------------------------------------
		else if (intMenuNo == 4) {		
			document.getElementById("SERVE_CAREER_CD" + num).value = "";
			document.getElementById("SERVE_CAREER_NM" + num).value = "";
			document.getElementById("SERVE_ABILITY" + num).value = "최대 100자 이내 입력가능"; 
			document.getElementById("SERVE_TR" + num).style.display = "none";
		}
		//---------------------------------------------------------
		// 창의적 체험활동
		//---------------------------------------------------------
		else if (intMenuNo == 5) {
			document.getElementById("SERVE_STEP1_" + num).options[0].selected = true;
			document.getElementById("SERVE_STEP2_" + num).options[0].selected = true;
			document.getElementById("SERVE_PERIOD" + num).options[0].selected = true;
			document.getElementById("SERVE_CMT" + num).value = "최대 100자 이내 입력가능"; 
			document.getElementById("SERVE_TR" + num + "_1").style.display = "none";
			document.getElementById("SERVE_TR" + num + "_2").style.display = "none";
		}
		//---------------------------------------------------------
		// 수상/자격증
		//---------------------------------------------------------
		else if (intMenuNo == 6) {
			document.getElementById("SERVE_STEP1_" + num).options[0].selected = true;
			document.getElementById("SERVE_STEP2_" + num).options[0].selected = true;
			document.getElementById("SERVE_STEP3_" + num).options[0].selected = true;
			document.getElementById("SERVE_STEP4_" + num).options[0].selected = true;
			document.getElementById("SERVE_SCALE" + num).options[0].selected = true;
			document.getElementById("SERVE_ACQ_YEAR" + num).options[0].selected = true;
			document.getElementById("SERVE_ACQ_MONTH" + num).options[0].selected = true;
			document.getElementById("SERVE_ORG" + num).value = ""; 
			document.getElementById("SERVE_ORG" + num).value = "최대 100자 이내 입력가능"; 
			document.getElementById("SERVE_CMT" + num).value = ""; 
			document.getElementById("SERVE_CMT" + num).value = "최대 100자 이내 입력가능"; 
			document.getElementById("SERVE_TR" + num + "_1").style.display = "none";
			document.getElementById("SERVE_TR" + num + "_2").style.display = "none";
			document.getElementById("SERVE_TR" + num + "_3").style.display = "none";
		}
		//---------------------------------------------------------
		// 독서활동
		//---------------------------------------------------------
		else if (intMenuNo == 7) {
			document.getElementById("SERVE_GRADE" + num).options[0].selected = true;
			document.getElementById("SERVE_TYPE" + num).options[0].selected = true;
			document.getElementById("SERVE_TITLE" + num).value = ""; 
			document.getElementById("SERVE_CMT" + num).value = "최대 200자 이내 입력가능"; 
			document.getElementById("SERVE_TR" + num + "_1").style.display = "none";
			document.getElementById("SERVE_TR" + num + "_2").style.display = "none";
			document.getElementById("SERVE_TR" + num + "_3").style.display = "none";
		}

/*
        if (confirm('삭제 하시겠습니까?')) {
			location.href = "sub_spec_del.asp?MENU_NO=" + intMenuNo + "&MEM_CD=" + intAmsMemCd + "&SERVE_IDX=" + idx;
		}
*/
	}

	// 로우 삭제 함수 
	function fnDeleteRow(startIdx, endIdx) {
		if(document.getElementById){
			var Tbl = document.getElementById('SERVE_ADD');
		} else {
			//그외 브라우져일때..
			var Tbl = document.all['SERVE_ADD'];
		}
		for (i = endIdx; i >= startIdx ; i--) {
			Tbl.deleteRow(i);
		}
	}

	// 활동내역 선택 
	function fnCommentSet(num) {
		// 교회(기타)인 경우 수기입력 박스 노출
		if (document.getElementById("SERVE_CMT_SEL" + num).options[9].selected == true){
			document.getElementById("SERVE_DIV_" + num).style.display = "block";
		} else {
			document.getElementById("SERVE_DIV_" + num).style.display = "none";
		}
	}

	// 세부분야 선택 
	function fnSelDisplay(stepnum, num) {
		var intSeletedNum = new Array();
		var arrData;
		var strSelectText = "세부분야 선택";
		var intNextStep = stepnum + 1;

		for (i = 1; i <= stepnum ; i++) {
			for (j = 0; j < document.getElementById("SERVE_STEP" + i + "_" + num).length ; j++) {
				if (document.getElementById("SERVE_STEP" + i + "_" + num).options[j].selected == true) {
					intSeletedNum[i] = j;
				}
			}
		}
//alert(intMenuNo  + ", "+  stepnum+ ", "+ intSeletedNum[1] + ", "+ intSeletedNum[2] + ", "+ intSeletedNum[3])
		$.post("/mypage/record_info/Ajax/ajax_spec_menu.asp", { MENU_NO: intMenuNo, STEP_NUM: stepnum, SELECT_STEP1: intSeletedNum[1], SELECT_STEP2: intSeletedNum[2], SELECT_STEP3: intSeletedNum[3] }, function (data) {

			if (data != "") {
				//alert(data);
				arrData = data.split("||");
				// 점수선택값이 있는 경우

				if (stepnum == 3) {
					strSelectText = "점수 선택";

					if (((intSeletedNum[2] == 1) && (intSeletedNum[3] == 4 || intSeletedNum[3] == 5)) || ((intSeletedNum[2] == 4) && (intSeletedNum[3] == 5))) {
						document.getElementById("DIV_SCORE_" + num).style.display = "block";
					}else {
						document.getElementById("DIV_SCORE_" + num).style.display = "none";
					}
				}

				// select box 모두 삭제
				document.getElementById("SERVE_STEP" + intNextStep + "_" + num).options.length = 0; 

				// 기본값
				document.getElementById("SERVE_STEP" + intNextStep + "_" + num).options[0] = new Option(strSelectText, "");
				for (i = 1; i <= arrData.length; i++) {
					document.getElementById("SERVE_STEP" + intNextStep + "_" + num).options[i] = new Option(arrData[i - 1], i);
				}

			}else{
				document.getElementById("DIV_SCORE_" + num).style.display = "none";
			}
		})
		.fail(function () {
			alert("정보조회에 실패하였습니다.(ERROR:-1)");
		});
	}

	//---------------------------------------------------------
	// 희망진로
	//---------------------------------------------------------
	var grdNo = "1";
	function fnJobSearch(grd){
		grdNo = grd;
		$.post("/mypage/record_info/Ajax/ajax_career_layer.asp", { GRADE_NO: grdNo, SEARCH_TYPE: "1" }, function (data) {
			if (data != "") {
				//document.getElementById("CAREER_LAYER").innerHTML = data;
				$("#CAREER_LAYER").html(data.toString());
				document.getElementById("CAREER_LAYER").style.display = "block";
			}
		})
		.fail(function () {
			alert("정보조회에 실패하였습니다.(ERROR:-1)");
		});
	}

	// 검색 버튼 클릭
	function fnSearch(searchType){
		if(searchType=="1"){
			jQuery("#cate1").attr("disabled",false);
			jQuery("#cate2").attr("disabled",false);
			jQuery("#searchWord").attr("disabled",true);
		}else{
			jQuery("#cate1").attr("disabled",true);
			jQuery("#cate2").attr("disabled",true);
			jQuery("#searchWord").attr("disabled",false);
		}
	}

	function fnCate1(){
		var cate1Cd = jQuery("#cate1").val();

		if (cate1Cd == ""){
			alert("대분류 선택를 선택해 주세요.");
			return false;
		}else{
			$.post("/mypage/record_info/Ajax/ajax_career_list.asp", { SEARCH_TYPE: 1, STEP_NUM: 1, CATE1_CD: cate1Cd }, function (data) {
				//alert(data)
				if (data != "") {
					jQuery("select[id='cate2'] option").remove();
					jQuery("#cate2").append(data);
				}
			})
			.fail(function () {
				alert("정보조회에 실패하였습니다.(ERROR:-1)");
			});
		}
	}

	function fnCate2(){
		var cate1Cd=jQuery("#cate1").val();
		var cate2Cd=jQuery("#cate2").val();

		if (cate1Cd==""){
			alert("대분류 선택를 선택해 주세요.");
			return false;
		}

		if (cate2Cd==""){
			alert("중분류 선택를 선택해 주세요.");
			return false;
		}

		$.post("/mypage/record_info/Ajax/ajax_career_list.asp", { SEARCH_TYPE: 1, STEP_NUM: 2, CATE1_CD: cate1Cd, CATE2_CD: cate2Cd }, function (data) {
			//alert(data)
			if (data != "") {
				jQuery("#CareerSearchResultArea").html(data);
			}
		})
		.fail(function () {
			alert("정보조회에 실패하였습니다.(ERROR:-1)");
		});
	}

	function fnSearchJob(){
		var searchWord=jQuery("#searchWord").val().trim();

		if(searchWord == ""){
			alert('검색하실 단어를 입력하세요.');
			jQuery("#searchWord").focus();
			return false;
		}else{
			if(searchWord.length < 2){
				alert('검색단어를 2글자이상 입력해주세요.');
				jQuery("#searchWord").focus();
				return false;
			}
		}

		$.get("/mypage/record_info/Ajax/ajax_career_list.asp", { SEARCH_TYPE: 2, STEP_NUM: 2, SEARCH_WORD: escape(searchWord) }, function (data) {
		//$.post("/mypage/record_info/Ajax/ajax_career_list.asp", { SEARCH_TYPE: 2, STEP_NUM: 2, SEARCH_WORD: searchWord }, function (data) {
			//alert(data)
			if (data != "") {
				jQuery("#CareerSearchResultArea").html(data);
			}
		})
		.fail(function () {
			alert("정보조회에 실패하였습니다.(ERROR:-1)");
		});
	}

	function fnSetJob(jobCd, jobTxt){
		//alert(jobCd)
		jQuery("#SERVE_CAREER_CD" + grdNo).val(jobCd);
		jQuery("#SERVE_CAREER_NM" + grdNo).val(jobTxt);
		jQuery("#CAREER_LAYER").hide();
	}

	//글자수 제한
	function fnByteChk(target, len) {
		if (target.value.length > len) {
			alert(len + "자까지만 작성하실 수 있습니다.");
			var temp = target.value;
			target.value = temp.substring(0, len - 1);
			target.focus();
			return;
		}
	}

	function onclick(event)
	{
	jQuery('#CAREER_LAYER').hide();
	}


	// byte 길이 계산 함수 : String에 추가
	String.prototype.byteLength = function(){
		var s = arguments[0] == undefined ? this.toString() : arguments[0];
		for(var b=i=0;c=s.charCodeAt(i++);b+=c>>7?2:1);
		return b;
	}

	// byte 길이로 자르기 함수 : String에 추가
	String.prototype.byteCut = function(len) {
		var s = this.toString();
		for (var l=i=0; i<s.length; i++) {
			   l += (s.charCodeAt(i) > 128) ? 2 : 1;
			   if (l > len) return s.substring(0,i);
		}
		return s;
	}

	// 글자수 체크
	function chkCmtLen(objCmt, cmtLimitByte){
		var c = $(objCmt);
		var l = c.val().byteLength();

		if( l > cmtLimitByte ){
			alert(cmtLimitByte + " bytes 이상 등록 할 수 없습니다.");
			c.val(c.val().byteCut(cmtLimitByte));
		} else {
			c.siblings("span").children("strong").text(l);
		}
	}