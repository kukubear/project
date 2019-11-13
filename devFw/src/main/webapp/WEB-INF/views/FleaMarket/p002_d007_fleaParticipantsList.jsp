<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import= "java.util.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${contextPath}/resources/css/style.css"> 
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="${contextPath}/resources/ibsheet/ibsheetinfo.js"></script>
<script src="${contextPath}/resources/ibsheet/ibsheet.js"></script>
<script src="${contextPath}/resources/ibsheet/ibleaders.js"></script>

<script language="javascript">
	//시트 높이 계산용
	var pageheightoffset = 200;
	
	/*Sheet 기본 설정 */
	function LoadPage() {
		mySheet.RemoveAll();
		//아이비시트 초기화
		var initSheet = {};
		initSheet.Cfg = {SearchMode:smLazyLoad,ToolTip:1};
		initSheet.HeaderMode = {Sort:1,ColMove:1,ColResize:1,HeaderCheck:1};
		initSheet.Cols = [
			{Header:"상태",Type:"Status",SaveName:"STATUS",MinWidth:50, Align:"Center"},
			{Header:"삭제",Type:"DelCheck",SaveName:"DEL_CHK",MinWidth:50},
			{Header:"아이디",Type:"Text",SaveName:"memberid",MinWidth:80,Align:"Center"},			
			{Header:"플리마켓코드",Type:"Text",SaveName:"flea_code",MinWidth:150,KeyField:1 ,MultiLineText:1, Wrap:1},
			{Header:"참여자 YN",Type:"Combo",ComboText:"Y|N",SaveName:"together_yn",MinWidth:103,Align:"Center"},
			{Header:"신청 날짜",Type:"Date",SaveName:"together_request_date",MinWidth:100},
			{Header:"승인 날짜",Type:"Date",SaveName:"together_approve_date",MinWidth:100},
		];   
		IBS_InitSheet( mySheet , initSheet);
		
		//mySheet.SetEditableColorDiff(1); // 편집불가능할 셀 표시구분
        //mySheet.ShowSubSum([{StdCol:"Release",SumCols:"price",Sort:"asc"}]);
		doAction('search');
		
	}
	
	/*Sheet 각종 처리*/
	function doAction(sAction) {
		switch(sAction) {
			case "search": //조회
			 	<c:forEach var="flea" items="${searchList}" > 
			 		var param = ${flea.flea_code};
			 	</c:forEach>
			    //var param = FormQueryStringEnc(document.frm);
				mySheet.DoSearch("${contextPath}/fleaSearchList.do",param);
				//mySheet.DoSearch("transaction_data2.json");
				break;
			case "reload": //초기화
				mySheet.RemoveAll();
				break;
			case "save": // 저장
				//var tempStr = mySheet.GetSaveString();
				//alert("서버로 전달되는 문자열 확인 :"+tempStr);
				mySheet.DoSave("${contextPath}/fleaSaveData.do");
				break;			
		}
	}
	
	// 조회완료 후 처리할 작업
	function mySheet_OnSearchEnd() {
      
	}
	
	// 저장완료 후 처리할 작업
	// code: 0(저장성공), -1(저장실패)
	function mySheet_OnSaveEnd(code,msg){
		if(msg != ""){
			alert(msg);	
			//번호 다시 매기기
            //mySheet.ReNumberSeq();
		}	
	}	
	
</script>
</head>
<body onload="LoadPage()">
  <div class="page_title">
    <span><a class="closeDepth" href="#">closeDepth</a></span> 
    <span class="title"><b>플리마켓 참여자 승인 처리</b></span><br><br>
  </div>
<!--  
    <div class="exp_product">
      <form name='frm'>
       	 플리코드: <input type='text' id="flea_code" name="flea_code" /><br><br>
      </form>
    </div>
-->
    <div class="ib_function float_right">
	  <a href="javascript:doAction('reload')" class="f1_btn_gray lightgray">초기화</a>
	  <!--  <a href="javascript:doAction('search')" class="f1_btn_white gray">조회</a> -->
	  <a href="javascript:doAction('save')" class="f1_btn_white gray">저장</a>
	</div>
	<!--   <div class="clear hidden"></div> -->
	<div class="ib_product">
		<script>
			createIBSheet("mySheet", "1100px", "100%");
		</script>
	</div>
</body>
</html>



