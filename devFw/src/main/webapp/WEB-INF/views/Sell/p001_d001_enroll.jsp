<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" import="devFw.project.Sell.P001.D001.*"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>에디터</title>
<link rel="stylesheet" type="text/css" href="${contextPath }/resources/css/enroll.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="${contextPath }/resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script src='//rawgit.com/tuupola/jquery_chained/master/jquery.chained.min.js'></script>
<script type="text/javascript">
	$(document).ready(function(){
		if($("#command").val() == 'modify'){
			var reused_yn = document.getElementById("reused_yn").value;
			var auction_yn = document.getElementById("auction_yn").value;
			var flea_yn = document.getElementById("flea_yn").value;
			
			var send_way = document.getElementById("selectSend_way").value;
			
			
			if(reused_yn == 'y'){
				$("#buyPrice").css("display", "block");
				$("#direct").attr("disabled", false);
				$("#way_caution").html("※중고와 경매에 대한 직거래입니다.※");
				$("#price").css("display", "block"); //상품 가격란 표시
				document.getElementsByName("reused_yn")[0].value = 'y';
			}
			if(auction_yn == 'y'){
				$("#auctionDaySelect").css("display", "block");
				$("#direct").attr("disabled", false);
				$("#way_caution").html("※중고와 경매에 대한 직거래입니다.※");
				$("#auction_price").css("display", "block"); //경매 시작가 표시
				document.getElementsByName("auction_yn")[0].value = 'y';
				document.getElementById("discount").readOnly = true;
			}
			if(flea_yn == 'y'){
				$("#price").css("display", "block"); //상품 가격란 표시
				document.getElementsByName("flea_yn")[0].value = 'y';
				if ($("#reused").is(":checked")) { //중고가 함께 체크되어 있을 때
					$("#direct").attr("disabled", false); //직거래 가능
				} else if ($("#auction").is(":checked")) { //경매가 함께 체크되어 있을 때
					$("#direct").attr("disabled", false); //직거래 가능
				} else { //플리마켓 혼자 체크된 경우
					$("#direct").attr("disabled", true);
				}
				$("#way_caution").css("display", "block"); //플리마켓은 직거래가 안된다는 경고 출력
			}
			
			if(send_way == 'direct' || send_way == 'direct delivery'){
				$("#directCheck").css("display", "block");
			}
		}
	});
	
	$(function() {
		//전역변수
		var obj = [];

		//스마트에디터 프레임생성
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : obj,
			elPlaceHolder : "editor",
			sSkinURI : "${contextPath }/resources/editor/SmartEditor2Skin.html",
			htParams : {
				// 툴바 사용 여부
				bUseToolbar : true,
				// 입력창 크기 조절바 사용 여부
				bUseVerticalResizer : true,
				// 모드 탭(Editor | HTML | TEXT) 사용 여부
				bUseModeChanger : true,
			}
		});
		
		
		//전송버튼
		$("#enroll").click(function() {
			var frm = document.productEnroll;
			var prod_group ="";
			var auction_date = "";
			var send_way = "";
			
/* 			var tag1 = document.getElementById("tag1").innerHTML;
			var tag2 = document.getElementById("tag2").innerHTML;
			var tag3 = document.getElementById("tag3").innerHTML;
			var tag4 = document.getElementById("tag4").innerHTML;
			var tag5 = document.getElementById("tag5").innerHTML; */
			//var images = "";
			var chkbox1 = $(".checkSelect1"); //판매 방법
			var chkbox2 = $(".checkSelect2"); //경매 일자
			var chkbox3 = $(".send_way"); //거래 방법
			var tagList = $(".realTag"); //해시태그
			//var imageList = $(".images");

			for(i=0;i<chkbox1.length;i++){ //판매 방법 넘겨주기 ex)중고 경매 플리, 중고 경매, 플리 ...
				if(chkbox1[i].checked == true){
					prod_group += chkbox1[i].value + " ";
				}
			}
			
			if(chkbox2.length != 0){ //경매 일자 넘겨주기
				for(i=0;i<chkbox2.length;i++){
					if(chkbox2[i].checked == true){
						auction_date = chkbox2[i].value;
					}
				}
			}
			
			if(chkbox3.length != 0){ //거래 방법 넘겨주기
				for(i=0;i<chkbox3.length;i++){
					if(chkbox3[i].checked == true){
						if(i==chkbox3.length-1){
							send_way += chkbox3[i].value;
						} else{
							send_way += chkbox3[i].value + " ";
						}

					}
				}
			}

			
 			if(tagList.length != 0){ //tag 넘겨주기 ,로 tag 구분
				for(i=0;i<tagList.length;i++){
					if(tagList[i] != "" || tagList[i] != null){
						var tagIndex = "tag" + (i+1);
						var tagContent = "";
			
						tagContent = document.getElementById(tagIndex).innerHTML;
						document.getElementsByName(tagIndex)[0].value = tagContent;

					}
				}
			}
			
/*  			if(imageList.length != 0){ //img 넘겨주기 ,로 img 구분
				for(i=0;i<imageList.length;i++){
					if(imageList[i] != "" || imageList[i] != null){
						images += imageList[i].attr('src');
						if(i==imageList.length-1){ //마지막 tag 처리
							images += imageList[i].attr('src');
						}else{ //마지막이 아닌 image는 뒤에콤마(,)를 붙여서 구분
							images += imageList[i].attr('src') + ",";
						}
					}
				}
			} */


			//id가 smarteditor인 textarea에 에디터에서 대입
			obj.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
			
			var content = document.getElementById("editor").value; //editor에 작성한 내용 value값 가져오기
			//content.getElementsByTagName('img');
  			var imageTags = content.split('<img src="http://localhost:8090');
 			var images = "";
			var cnt=0;
			
			for(var i in imageTags){ //editor에서 첨부한 사진 경로들 걸러내는 작업
				if(imageTags[i].substring(0,6) != "/devFw"){
					continue;
				} else{
					if(cnt == 0){ //처음 첨부한 사진만 걸러준다 (대표 사진 추출 목적)
						images += imageTags[i].substring(0,83);
						cnt++;
					} else{
						cnt++;
					}
				}
			}
			
			//유효성 검사
			var category = document.getElementsByName("prod_category_code")[0].value;
			var title = document.getElementsByName("prod_title")[0].value;
			var amount = document.getElementsByName("prod_amount")[0].value;
			var price = document.getElementsByName("prod_price")[0].value;
			var auction_price = document.getElementsByName("auction_price")[0].value;
			var direct_area = document.getElementsByName("direct_area")[0].value;
			var fleamarket = document.getElementsByName("fleamarket")[0].value;
			var fleaCheck = $("#flea_seller_group").val();
			
			
			if(category == null || category == ""){
	
				alert("카테고리를 선택해주세요.");
				document.getElementById("highCategory").focus();
				return false;
				
			}
			if(fleaCheck != null){
				if($("#flea").is(":checked")){
					if(fleamarket == null || fleamarket == ""){
						alert("게시할 플리마켓을 선택해주세요.");
						document.getElementById("fleamarket").focus();
						return false;
					}
				}
			}
			if(prod_group == null || prod_group == ""){
				alert("게시 선택을 선택해주세요.");
				document.getElementById("reused").focus();
				return false;
			}
			//경매를 선택 시 경매 일자, 경매 시작가 필수 선택 확인
			if(prod_group == "경매 " || prod_group == "중고 경매 " || prod_group == "경매 플리 " || prod_group == "중고 경매 플리 "){
				if(auction_date == null || auction_date == ""){
					alert("경매 일자를 선택해주세요.");
					document.getElementById("test").focus();
					return false;
				}
				if(auction_price == null || auction_price == ""){
					alert("경매 시작가를 입력해주세요.");
					productEnroll.auction_price.focus();
					return false;
				}
			}
			if(title == null || title == ""){
				alert("상품 제목을 입력해주세요.");
				productEnroll.prod_title.focus();
				return false;
			}
			if(amount == null || amount == ""){
				alert("상품 수량을 입력해주세요.");
				productEnroll.prod_amount.focus();
				return false;
			}
			//중고나 플리 선택 시 상품 가격 필수 입력 확인
			if(prod_group == "중고 " || prod_group == "중고 경매 " || prod_group == "중고 경매 플리 " || prod_group == "중고 플리 " || prod_group == "플리 " || prod_group == "경매 플리 "){
				if(price == null || price == ""){
					alert("상품 가격을 입력해주세요.");
					productEnroll.prod_price.focus();
					return false;
				}
			}
			if(send_way == null || send_way == ""){
				alert("거래 방법을 선택해주세요.");
				document.getElementById("direct").focus();
				return false;
			}
			//거래방법:직거래 선택 시 직거래 장소 필수
			if(send_way == "direct"){
				if(direct_area == null || direct_area == ""){
					alert("직거래 장소를 입력해주세요.");
					document.getElementById("direct_area").focus();
					return false;
				}
			}
			
			if(cnt < 3){ //사진을 3장 이상 첨부해야 상품 등록이 가능하다.
				alert("사진을 3장 이상 첨부해주세요.");
			}
			
			else{
				document.getElementsByName("images")[0].value = images;
				document.getElementsByName("prod_group")[0].value = prod_group;
				document.getElementsByName("auction_date")[0].value = auction_date;
				document.getElementsByName("send_way")[0].value = send_way;
				
	/* 			document.getElementsByName("tag1")[0].value = tag1; // 처리한 tag를 param으로 전달
				document.getElementsByName("tag2")[0].value = tag2;
				document.getElementsByName("tag3")[0].value = tag3;
				document.getElementsByName("tag4")[0].value = tag4;
				document.getElementsByName("tag5")[0].value = tag5; */
				
				frm.method="post";
				frm.action="./insertProduct.do";
				frm.submit();
			}
			
		});
	
		//수정버튼
		$("#modify").click(function() {
			var frm2 = document.productModify;
			var prod_group ="";
			var auction_date = "";
			var send_way = "";
			
			var chkbox1 = $(".checkSelect1"); //판매 방법
			var chkbox2 = $(".checkSelect2"); //경매 일자
			var chkbox3 = $(".send_way"); //거래 방법
			var tagList = $(".realTag"); //해시태그

			for(i=0;i<chkbox1.length;i++){ //판매 방법 넘겨주기 ex)중고 경매 플리, 중고 경매, 플리 ...
				if(chkbox1[i].checked == true){
					prod_group += chkbox1[i].value + " ";
				}
			}
			
			if(chkbox2.length != 0){ //경매 일자 넘겨주기
				for(i=0;i<chkbox2.length;i++){
					if(chkbox2[i].checked == true){
						auction_date = chkbox2[i].value;
					}
				}
			}
			
			if(chkbox3.length != 0){ //거래 방법 넘겨주기
				for(i=0;i<chkbox3.length;i++){
					if(chkbox3[i].checked == true){
						send_way = chkbox3[i].value;
					}
				}
			}
			
			if(tagList.length != 0){ //tag 넘겨주기 ,로 tag 구분
				for(i=0;i<tagList.length;i++){
					if(tagList[i] != "" || tagList[i] != null){
						var tagIndex = "tag" + (i+1);
						var tagContent = "";
			
						tagContent = document.getElementById(tagIndex).innerHTML;
						document.getElementsByName(tagIndex)[0].value = tagContent;

					}
				}
			}

			
			//id가 smarteditor인 textarea에 에디터에서 대입
			obj.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
			
			var content = document.getElementById("editor").value; //editor에 작성한 내용 value값 가져오기
			//content.getElementsByTagName('img');
  			var imageTags = content.split('<img src="http://localhost:8090');
 			var images = "";
			var cnt=0;
			
			for(var i in imageTags){ //editor에서 첨부한 사진 경로들 걸러내는 작업
				if(imageTags[i].substring(0,6) != "/devFw"){
					continue;
				} else{
					if(cnt == 0){ //처음 첨부한 사진만 걸러준다 (대표 사진 추출 목적)
						images += imageTags[i].substring(0,83);
						cnt++;
					} else{
						cnt++;
					}
				}
			}
			
			//유효성 검사
			var category = document.getElementsByName("prod_category_code")[0].value;
			var title = document.getElementsByName("prod_title")[0].value;
			var amount = document.getElementsByName("prod_amount")[0].value;
			var price = document.getElementsByName("prod_price")[0].value;
			var auction_price = document.getElementsByName("auction_price")[0].value;
			var direct_area = document.getElementsByName("direct_area")[0].value;
			
			
			if(category == null || category == ""){
	
				alert("카테고리를 선택해주세요.");
				document.getElementById("highCategory").focus();
				return false;
				
			}
			if(prod_group == null || prod_group == ""){
				alert("게시 선택을 선택해주세요.");
				document.getElementById("reused").focus();
				return false;
			}
			//경매를 선택 시 경매 일자, 경매 시작가 필수 선택 확인
			if(prod_group == "경매 " || prod_group == "중고 경매 " || prod_group == "경매 플리 " || prod_group == "중고 경매 플리 "){
				if(auction_date == null || auction_date == ""){
					alert("경매 일자를 선택해주세요.");
					document.getElementById("test").focus();
					return false;
				}
				if(auction_price == null || auction_price == ""){
					alert("경매 시작가를 입력해주세요.");
					productEnroll.auction_price.focus();
					return false;
				}
			}
			if(title == null || title == ""){
				alert("상품 제목을 입력해주세요.");
				productEnroll.prod_title.focus();
				return false;
			}
			if(amount == null || amount == ""){
				alert("상품 수량을 입력해주세요.");
				productEnroll.prod_amount.focus();
				return false;
			}
			//중고나 플리 선택 시 상품 가격 필수 입력 확인
			if(prod_group == "중고 " || prod_group == "중고 경매 " || prod_group == "중고 경매 플리 " || prod_group == "중고 플리 " || prod_group == "플리 " || prod_group == "경매 플리 "){
				if(price == null || price == ""){
					alert("상품 가격을 입력해주세요.");
					productEnroll.prod_price.focus();
					return false;
				}
			}
			if(send_way == null || send_way == ""){
				alert("거래 방법을 선택해주세요.");
				document.getElementById("direct").focus();
				return false;
			}
			//거래방법:직거래 선택 시 직거래 장소 필수
			if(send_way == "direct" || send_way == "direct delivery"){
				if(direct_area == null || direct_area == ""){
					alert("직거래 장소를 입력해주세요.");
					document.getElementById("direct_area").focus();
					return false;
				}
			}
			
			if(cnt < 3){ //사진을 3장 이상 첨부해야 상품 등록이 가능하다.
				alert("사진을 3장 이상 첨부해주세요.");
			}
			
			else{
				document.getElementsByName("images")[0].value = images;
				document.getElementsByName("prod_group")[0].value = prod_group;
				document.getElementsByName("auction_date")[0].value = auction_date;
				
				frm2.method="post";
				frm2.action="./updateProduct.do";
				frm2.submit();
			}
			
		});

		//중고 버튼
		$("#reused").change(function() {
			if ($("#reused").is(":checked")) { //중고 버튼 클릭
				if($("#flea").is(":checked")){ //플리마켓과 교차 선택 불가
					alert("플리마켓과 교차 선택이 불가능합니다.");
					$("#reused").removeAttr('checked');
				} else {
					$("#yesflea").css("display", "none"); //현장수령은 막음
					$("#buyPrice").css("display", "block");
					$("#direct").attr("disabled", false);
					$("#way_caution").html("※중고와 경매에 대한 직거래입니다.※");
					$("#price").css("display", "block"); //상품 가격란 표시
					document.getElementsByName("reused_yn")[0].value = 'y';
				}
			} else {
				if($("#auction").is(":checked")){
					$("#yesflea").css("display", "none");
				} else{
					$("#direct").removeAttr("checked");
					$("#delivery").removeAttr("checked");
					$("#yesflea").css("display", "");
				}
				$("#buyPrice").css("display", "none"); //구매 금액 입력할 수 있게 한다.
				$("#price").css("display", "none"); //상품 가격란 미표시
				
				document.getElementsByName("reused_yn")[0].value = 'n';
	
				$("#direct").attr("disabled", false);
			}
		});

		//경매 버튼
		$("#auction").change(function() {
			if ($("#auction").is(":checked")) { //경매 버튼 클릭
				if($("#flea").is(":checked")){ //플리마켓과 교차 선택 불가
					alert("플리마켓과 교차 선택이 불가능합니다.");
					$("#auction").removeAttr('checked');
				}else{
					$("#yesflea").css("display", "none"); //현장 수령 막기
					alert("경매 일자를 선택해주세요.");

					$("#auctionDaySelect").css("display", "block");
					$("#direct").attr("disabled", false);
					$("#way_caution").html("※중고와 경매에 대한 직거래입니다.※");
					$("#auction_price").css("display", "block"); //경매 시작가 표시
					document.getElementsByName("auction_yn")[0].value = 'y';
					document.getElementById("discount").readOnly = true;
				}
			} else {
				if($("#reused").is(":checked")){
					$("#yesflea").css("display", "none");
				} else{
					$("#direct").removeAttr("checked");
					$("#delivery").removeAttr("checked");
					$("#yesflea").css("display", "");
				}
				$("#auctionDaySelect").css("display", "none");
				document.getElementsByName("auction_yn")[0].value = 'n';
				document.getElementById("discount").readOnly = false;

				$("#direct").attr("disabled", false);
				
				$("#auction_price").css("display", "none"); //경매 시작가 미표시
			}
		});

		//플리마켓 버튼
		$("#flea").change(function() {
			if ($("#flea").is(":checked")) {
				if($("#reused").is(":checked")){ //중고, 경매와 교차 선택 불가
					alert("중고, 경매와 교차선택이 불가능합니다.");
					$("#flea").removeAttr('checked');
				} else if($("#auction").is(":checked")){ //중고, 경매와 교차 선택 불가
					alert("중고, 경매와 교차선택이 불가능합니다.");
					$("#flea").removeAttr('checked');
				} else{
					$("#noflea").css("display", "none");
					$("#price").css("display", "block"); //상품 가격란 표시
					$("#selectFlea").css("display", ""); //참여중인 플리마켓 중에 상품을 게시할 마켓 선택
					document.getElementsByName("flea_yn")[0].value = 'y';
					if ($("#reused").is(":checked")) { //중고가 함께 체크되어 있을 때
						$("#direct").attr("disabled", false); //직거래 가능
					} else if ($("#auction").is(":checked")) { //경매가 함께 체크되어 있을 때
						$("#direct").attr("disabled", false); //직거래 가능
					} else { //플리마켓 혼자 체크된 경우
						$("#direct").attr("disabled", true);
					}
					$("#way_caution").css("display", "block"); //플리마켓은 직거래가 안된다는 경고 출력
				}
			} else {
				$("#receipt").removeAttr("checked");
				$("#noflea").css("display", "");
				$("#direct").attr("disabled", false);
				$("#way_caution").css("display", "none");
				document.getElementsByName("flea_yn")[0].value = 'n';
		
				$("#price").css("display", "none"); //상품 가격란 미표시
				$("#selectFlea").css("display", "none");
				
			}
		});
		
		//직거래 선택 시 직거래 장소 표시
		$("#direct").change(function(){
			if($("#direct").is(":checked")){
				$("#directCheck").css("display", "block");
			} else{
				$("#directCheck").css("display", "none");
			}
		});
		
		
/* 		//금액에 3자리 수마다 , 표시

		$("#prod_price").on("focus", function(){
			var val = $("#prod_price").val();
			if(!isEmpty(val)){
				val = val.replace(/[^0-9]/g, ''); //숫자가 아니면 공백 처리
				val = val.replace(/,/g, ''); //, 값 공백처리
				$("#prod_price").val(val);
			}
		});
		
		$("#prod_price").on('blur', function(){
			var val = $("#prod_price").val();
			if(!isEmpty(val) && isNumeric(val)){
				val = currencyFormatter(val);
				$("#prod_price").val(val);
			}
		});
 */

	});

	//checkbox 하나만 체크되도록 검사
	function oneCheckbox(a) { 
		var obj = document.getElementsByName("auction_date");
		for (var i = 0; i < obj.length; i++) {
			if (obj[i] != a) {
				obj[i].checked = false;
			}
		}
	}
/* 
	function isEmpty(value){
		if(value == null){
			return true;
		} else{
			return false;
		}
	}
	
	function isNumeric(value){
		var regExp = /^[0-9]+$/g;
		return regExp.test(value);
	}
	
	function currencyFormatter(amount){
		return amount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	} */
	
	//태그
	$(document).ready(function() {

		var tag = {};
		var counter = Number(document.getElementById("tagCount").value);

		// 태그를 추가한다.
		function addTag(value) {
			
			tag[counter] = value; // 태그를 Object 안에 추가
			counter++; // counter 증가 삭제를 위한 del-btn 의 고유 id 가 된다.
			
		}

		// 최종적으로 서버에 넘길때 tag 안에 있는 값을 array type 으로 만들어서 넘긴다.
		function marginTag() {
			return Object.values(tag).filter(function(word) {
				return word !== "";
			});
		}

		// 서버에 넘기기
		$("#tag-form").on("submit", function(e) {
			var value = marginTag(); // return array
			$("#rdTag").val(value);

			$(this).submit();
		});

		$("#tag").on("keypress",function(e) {
			var self = $(this);

			// input 에 focus 되있을 때 엔터 및 스페이스바 입력시 구동
			if (e.key === "Enter" || e.keyCode == 32) {
			
				if(counter>=5){ //tag 5개가 넘어가면 알림창
					alert("tag는 5개까지 추가 가능합니다!!");
				}else{ //5개 이하일 때
					var tagValue = self.val(); // 값 가져오기
	
					// 값이 없으면 동작 ㄴㄴ
					if (tagValue !== "") {
	
						// 같은 태그가 있는지 검사한다. 있다면 해당값이 array 로 return 된다.
						var result = Object.values(tag).filter(function(word) {
											return word === tagValue;
										})
	
						// 태그 중복 검사
						if (result.length == 0) {
	
							$("#tag-list").append("<li class='tag-item'>"
													+ "<span class='realTag' id='tag" + (counter+1) + "'>" + tagValue + "</span>"
													+ "<span class='del-btn' idx='"+counter+"'> X </span></li>");
							addTag(tagValue);
							self.val("");
							
						} else {
							alert("태그값이 중복됩니다.");
						}
					}
				}
				e.preventDefault(); // SpaceBar 시 빈공간이 생기지 않도록 방지
			}
		});
		
		$("#enrollTag").click(function(){
			var self = $("#tag");

				if(counter>=5){ //tag 5개가 넘어가면 알림창
					alert("tag는 5개까지 추가 가능합니다!!");
				}else{ //5개 이하일 때
					var tagValue = self.val(); // 값 가져오기
	
					// 값이 없으면 동작 ㄴㄴ
					if (tagValue !== "") {
	
						// 같은 태그가 있는지 검사한다. 있다면 해당값이 array 로 return 된다.
						var result = Object.values(tag).filter(function(word) {
											return word === tagValue;
										})
	
						// 태그 중복 검사
						if (result.length == 0) {
	
							$("#tag-list").append("<li class='tag-item'>"
													+ "<span class='realTag' id='tag" + (counter+1) + "'>" + tagValue + "</span>"
													+ "<span class='del-btn' style='cursor:pointer' idx='"+counter+"'> X </span></li>");
							addTag(tagValue);
							self.val("");
							
						} else {
							alert("태그값이 중복됩니다.");
						}
					}
				
				e.preventDefault(); // SpaceBar 시 빈공간이 생기지 않도록 방지
				}
		});
		
		

		// 태그 삭제 버튼 
		// 삭제 버튼은 비동기적 생성이므로 document 최초 생성시가 아닌 검색을 통해 이벤트를 구현시킨다.
		$(document).on("click", ".del-btn", function(e) {
			var index = $(this).attr("idx");
			tag[index] = "";
			$(this).parent().remove();
			counter--;
		});
	});

</script>

</head>
<body>
	<c:set var="command" value="${command }"/>
	<c:set var="flea_seller_group" value="${flea_seller_group }" />
	<input type="hidden" id="flea_seller_group" value="${flea_seller_group }"/>
	<input type="hidden" id="command" value="${command }">
	
	<c:if test="${command != 'modify' }">
	<form class="form" name="productEnroll" id="enrollProduct" method="post" action="./enrollSuccess.do">
		<div class="containBox">
			<h1>상품 등록</h1>
			<span>(*: 필수항목)</span><span style="color:red">※중고,경매:온라인거래/플리마켓:오프라인거래(교차선택 불가)※</span>
			<div class="subtitle" id="category">
				<a>카테고리 * &nbsp&nbsp&nbsp&nbsp</a> 
				<select id="highCategory" name="highCategory">
					<option value="" selected="selected">--대분류--</option>
					<c:forEach var="high_category" items="${high_category }">
						<option value="${high_category.category_code}">${high_category.category_name}</option>
					</c:forEach>
				</select> 
				<select id="middleCategory" name="prod_category_code">
					<option value="">--중분류--</option>
					<c:forEach var="middle_category" items="${middle_category }">
						<option class="${middle_category.high_category }" value="${middle_category.category_code}">${middle_category.category_name}</option>
					</c:forEach>
				</select>

				<script>
					$("#middleCategory").chained("#highCategory");
				</script>

			</div>
			<input type="hidden" name="memberId" value="${member.getMemberid() }" />
			<div class="subtitle" id="group">
				<a>게시 선택 * &nbsp&nbsp</a> 
				<input type="checkbox" name="prod_group" value="중고" class="checkSelect1" id="reused" /><label for="reused">중고</label> 
				<input type="checkbox" name="prod_group" value="경매" class="checkSelect1" id="auction" /><label for="auction">경매&nbsp&nbsp&nbsp</label>
				<c:if test="${flea_seller_group == 'n' }"> <!-- 플리마켓 셀러 아닌 경우 플리마켓 체크 못 하게 -->
					<input type="checkbox" name="prod_group" value="플리" class="checkSelect1" id="flea" disabled="disabled" /><label for="flea">플리마켓</label>
					<span style="color:blue"> ▶ 플리마켓 참여 후 이용 가능</span> 
					<input type="hidden" name="fleamarket" id="fleamarket" value=""/>
				</c:if> 
				<c:if test="${flea_seller_group == 'y' }"> 
					<input type="checkbox" name="prod_group" value="플리" class="checkSelect1" id="flea" /><label for="flea">플리마켓</label>
					<span id="selectFlea" style="display:none;">
					<select id="fleamarket" name="fleamarket">
						<option value="" selected="selected">--플리마켓 선택--</option>
						<c:forEach var="partFlea" items="${partFlea }">
					  		<option value="${partFlea.flea_code }" id="${partFlea.flea_code }">${partFlea.flea_name }</option>
					  	</c:forEach>
					</select>
					</span>
				</c:if> 
				<input type="hidden" name="reused_yn" value="n"/>
				<input type="hidden" name="auction_yn" value="n"/>
				<input type="hidden" name="flea_yn" value="n"/>
				<br>

				<div id="auctionDaySelect" style="display: none">
					<a>경매 일자 * &nbsp&nbsp</a> 
						<input type="checkbox" name="auction_date" value="10" class="checkSelect2" onclick="oneCheckbox(this)" id="test"/><label for="test">5분(test)</label> 
						<input type="checkbox" name="auction_date" value="3" class="checkSelect2" onclick="oneCheckbox(this)" id="three"/><label for="three">3일</label> 
						<input type="checkbox" name="auction_date" value="5" class="checkSelect2" onclick="oneCheckbox(this)" id="five"/><label for="five">5일</label> 
						<input type="checkbox" name="auction_date" value="7" class="checkSelect2" onclick="oneCheckbox(this)" id="seven"/><label for="seven">7일</label> 
						<br>
					<div style="color: red; font-size: 12px;">
					※경매 포함 중복 체크 시 경매에 선택 일자동안 게시된 후 판매되지 않은 상품만 중고로 넘어갑니다.※</div>
				</div>
			</div>

			<div class="subtitle">
				<a>상품 제목 * &nbsp&nbsp&nbsp&nbsp</a> 
				<input type="text" id="prod_title" name="prod_title" />
			</div>

			<div class="subtitle">
				<a>상품 수량 * &nbsp&nbsp&nbsp&nbsp</a> 
				<input type="number" id="prod_amount" name="prod_amount" min="1" />
			</div>

			<div class="subtitle" id="buyPrice" style="display: none">
				<a>구입 가격&nbsp&nbsp&nbsp</a> 
				￦&nbsp<input type="number" id="buy_price" placeholder="중고일 경우만 작성" name="buy_price" min="0"/>
			</div>

			<div class="subtitle" id="price" style="display:none">
				<a>상품 가격 *&nbsp</a> 
				￦&nbsp<input type="number" id="prod_price" name="prod_price" min="0"/>
				<br>
			</div>
			
			<div class="subtitle" id="auction_price" style="display: none">
					<a>경매 시작가 *</a> 
					￦&nbsp<input type="number" id="auction_price" name="auction_price" min="0"/>
					<div style="color: red; font-size: 12px;">
					※판매는 경매에서 경매 시작가부터 시작하고, 중고에서는 상품 가격으로 보여집니다.※</div>
			</div>
			

			<div class="subtitle">
				<a>할인 율 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a> 
				<input type="number" id="discount" placeholder="희망 가격에서의 할인율" name="sale_percent" min="0"/>
			</div>

			<div class="subtitle">
				<a>거래 방법 * &nbsp&nbsp&nbsp&nbsp</a> 
				<span id="noflea">
					<input type="checkbox" class="send_way" name="send_way" value="direct" id="direct" /><label for="direct">직거래</label> 
					<input type="checkbox" class="send_way" name="send_way" value="delivery" id="delivery"/><label for="delivery">택배 거래</label> 
				</span>
				<span id="yesflea" style="display:contents;">
					<input type="checkbox" class="send_way" name="send_way" value="receipt" id="receipt" /><label for="receipt">현장 수령</label><br>
				</span>
			</div>

			<div class="subtitle" id="directCheck" style="display: none" >
				<a>직거래 장소 * &nbsp&nbsp</a> 
				<input type="text" id="direct_area" placeholder="자세할수록 좋습니다." name="direct_area" />
			</div>

			<br>

			<div class="subtitle">
				<a>상품 상세 * (사진 3장 이상 첨부 필수)</a>
				<br>
				<textarea name="editor" id="editor"	style="width: 99%; height: 400px;"></textarea>
				<input type="hidden" value="" name="images"/>
			</div>

			<br>
			
			<div class="subtitle">
				<div class="tag">
					
					
					<input type="hidden" value="" name="tag" id="rdTag" />
						<a>해시 태그&nbsp&nbsp&nbsp&nbsp</a>
						<input type="text" id="tag" size="7" placeholder="최대 5개 입력 가능" name="tag"/>	
						<input type="button" id="enrollTag" value="태그 등록"/>
						<ul id="tag-list">
						</ul>
						<input type="hidden" name="tag1" value=""/>
						<input type="hidden" name="tag2" value=""/>
						<input type="hidden" name="tag3" value=""/>
						<input type="hidden" name="tag4" value=""/>
						<input type="hidden" name="tag5" value=""/>
						<input type="hidden" id="tagCount" value="0"/>
				</div>
			</div>
		</div>
		<br>
			<div style="text-align:center;">
				<input type="button" id="enroll" value="상품등록"/>
			</div>
	<br>
	<br>

	</form>
	</c:if>
	 
<!-- 수정 폼 -->
	<c:if test="${command == 'modify' }">
	<form class="form" name="productModify" id="productModify" method="post" action="./enrollSuccess.do">
	<c:set var="selectHigh" value="${selectHigh }"/>
	<c:set var="selectMiddle" value="${selectMiddle }"/>
	<c:forEach var="modifyProd" items="${modifyProd }">
		<div class="containBox">
			<h1>상품 수정</h1>
			<span>(*: 필수항목)</span>
			<input type="hidden" name="prod_number" value="${modifyProd.prod_number }">
			<div class="subtitle" id="category">
				<a>카테고리 * &nbsp&nbsp&nbsp&nbsp</a> 
				<select id="highCategory" name="highCategory">
					<option value="">--대분류--</option>
					<c:forEach var="high_category" items="${high_category }">
						<c:choose>
							<c:when test="${high_category.category_code == selectHigh }">
								<option value="${high_category.category_code}" selected="selected">${high_category.category_name}</option>
							</c:when>
							<c:otherwise>
								<option value="${high_category.category_code}">${high_category.category_name}</option>
							</c:otherwise>
						</c:choose>
						
					</c:forEach>
				</select>
				<select id="middleCategory" name="prod_category_code">
					<option value="">--중분류--</option>
					<c:forEach var="middle_category" items="${middle_category }">
						<c:choose>
							<c:when test="${middle_category.category_code == selectMiddle }">
								<option class="${middle_category.high_category }" value="${middle_category.category_code}" selected="selected">${middle_category.category_name}</option>
							</c:when>
							<c:otherwise>
								<option class="${middle_category.high_category }" value="${middle_category.category_code}">${middle_category.category_name}</option>
							</c:otherwise>
						</c:choose>
						
					</c:forEach>
				</select>

				<script>
					$("#middleCategory").chained("#highCategory");
				</script>

			</div>
			
			<div class="subtitle" id="group">
				<a>게시 선택 * &nbsp&nbsp</a> 
			
					<c:if test="${modifyProd.reused_yn == 'y' }">
						<input type="checkbox" name="prod_group" value="중고" class="checkSelect1" id="reused" checked="checked"/>
						<label for="reused">중고</label>
						<input type="hidden" name="reused_yn" id="reused_yn" value="${modifyProd.reused_yn }"/>
					</c:if>
					<c:if test="${modifyProd.reused_yn == 'n' }">
						<input type="checkbox" name="prod_group" value="중고" class="checkSelect1" id="reused" />
						<label for="reused">중고</label>
						<input type="hidden" name="reused_yn" id="reused_yn" value="${modifyProd.reused_yn }"/>
					</c:if>
					<c:if test="${modifyProd.auction_yn == 'y' }">
						<input type="checkbox" name="prod_group" value="경매" class="checkSelect1" id="auction" checked="checked"/>
						<label for="auction">경매&nbsp&nbsp&nbsp</label>
						<input type="hidden" name="auction_yn" id="auction_yn" value="${modifyProd.auction_yn }"/>
					</c:if>
					<c:if test="${modifyProd.auction_yn == 'n' or modifyProd.auction_yn == 'w' or modifyProd.auction_yn == 'f'}">
						<input type="checkbox" name="prod_group" value="경매" class="checkSelect1" id="auction" />
						<label for="auction">경매&nbsp&nbsp&nbsp</label>
						<input type="hidden" name="auction_yn" id="auction_yn" value="${modifyProd.auction_yn }"/>
					</c:if>
			
				
					<c:if test="${modifyProd.flea_yn == 'y' }">
						<input type="checkbox" name="prod_group" value="플리" class="checkSelect1" id="flea" checked="checked"/>
						<label for="flea">플리마켓</label>
						<input type="hidden" name="flea_yn" id="flea_yn" value="${modifyProd.flea_yn }"/>
						<span id="selectFlea" style="display:contents;">
						<select id="fleamarket" name="fleamarket">
							<option value="">--플리마켓 선택--</option>
							<c:forEach var="partFlea" items="${partFlea }">
								<c:if test="${modifyProd.fleamarket == partFlea.flea_name }">
									<option value="${partFlea.flea_code }" selected="selected">${partFlea.flea_name }</option>
								</c:if>
								<c:if test="${modifyProd.fleamarket != partFlea.flea_name }">
									<option value="${partFlea.flea_code }" id="${partFlea.flea_code }">${partFlea.flea_name }</option>
								</c:if>
						  		
						  	</c:forEach>
						</select>
						</span>

					</c:if>
					<c:if test="${modifyProd.flea_yn == 'n' }">
						<c:if test="${flea_seller_group == 'n' }"> <!-- 플리마켓 셀러 아닌 경우 플리마켓 체크 못 하게 -->
							<input type="checkbox" name="prod_group" value="플리" class="checkSelect1" id="flea" disabled="disabled"/>
							<label for="flea">플리마켓</label><span style="color:blue"> ▶ 플리마켓 참여 후 이용 가능</span>
							<input type="hidden" name="flea_yn" id="flea_yn" value="${modifyProd.flea_yn }"/>
							<input type="hidden" name="fleamarket" id="fleamarket" value=""/>
						</c:if> 
						<c:if test="${flea_seller_group == 'y' }"> 
							<input type="checkbox" name="prod_group" value="플리" class="checkSelect1" id="flea"/>
							<label for="flea">플리마켓</label>
							<input type="hidden" name="flea_yn" id="flea_yn" value="${modifyProd.flea_yn }"/>
							<span id="selectFlea" style="display:none;">
							<select id="fleamarket" name="fleamarket">
								<option value="" selected="selected">--플리마켓 선택--</option>
								<c:forEach var="partFlea" items="${partFlea }">
							  		<option value="${partFlea.flea_name }" id="${partFlea.flea_code }">${partFlea.flea_name }</option>
							  	</c:forEach>
							</select>
							</span>
						</c:if>
						
					</c:if>


				<br>

				<div id="auctionDaySelect" style="display: none">
					<a>경매 일자 * &nbsp&nbsp</a>
						<c:choose>
							<c:when test="${modifyProd.auction_yn == 'y' }"> <!-- 이미 경매가 진행 중인 상품은 경매일자 변경 불가능 -->
								<c:if test="${modifyProd.auction_date == 10 }">
									<input type="checkbox" name="auction_date" value="10" class="checkSelect2" onclick="oneCheckbox(this)" id="test" disabled="disabled" checked="checked"/>1분(test) 
									<input type="checkbox" name="auction_date" value="3" class="checkSelect2" onclick="oneCheckbox(this)" disabled="disabled"/>3일 
									<input type="checkbox" name="auction_date" value="5" class="checkSelect2" onclick="oneCheckbox(this)" disabled="disabled"/>5일 
									<input type="checkbox" name="auction_date" value="7" class="checkSelect2" onclick="oneCheckbox(this)" disabled="disabled"/>7일 
								</c:if>
								<c:if test="${modifyProd.auction_date == 3 }">
									<input type="checkbox" name="auction_date" value="10" class="checkSelect2" onclick="oneCheckbox(this)" id="test" disabled="disabled"/>1분(test) 
									<input type="checkbox" name="auction_date" value="3" class="checkSelect2" onclick="oneCheckbox(this)" disabled="disabled" checked="checked"/>3일 
									<input type="checkbox" name="auction_date" value="5" class="checkSelect2" onclick="oneCheckbox(this)" disabled="disabled"/>5일 
									<input type="checkbox" name="auction_date" value="7" class="checkSelect2" onclick="oneCheckbox(this)" disabled="disabled"/>7일 
								</c:if>
								<c:if test="${modifyProd.auction_date == 5 }">
									<input type="checkbox" name="auction_date" value="10" class="checkSelect2" onclick="oneCheckbox(this)" id="test" disabled="disabled"/>1분(test) 
									<input type="checkbox" name="auction_date" value="3" class="checkSelect2" onclick="oneCheckbox(this)" disabled="disabled"/>3일 
									<input type="checkbox" name="auction_date" value="5" class="checkSelect2" onclick="oneCheckbox(this)" disabled="disabled" checked="checked"/>5일 
									<input type="checkbox" name="auction_date" value="7" class="checkSelect2" onclick="oneCheckbox(this)" disabled="disabled"/>7일 
								</c:if>
								<c:if test="${modifyProd.auction_date == 7 }">
									<input type="checkbox" name="auction_date" value="10" class="checkSelect2" onclick="oneCheckbox(this)" id="test" disabled="disabled"/>1분(test) 
									<input type="checkbox" name="auction_date" value="3" class="checkSelect2" onclick="oneCheckbox(this)" disabled="disabled"/>3일 
									<input type="checkbox" name="auction_date" value="5" class="checkSelect2" onclick="oneCheckbox(this)" disabled="disabled"/>5일 
									<input type="checkbox" name="auction_date" value="7" class="checkSelect2" onclick="oneCheckbox(this)" disabled="disabled" checked="checked"/>7일 
								</c:if>
								
								<br>
								<div style="color: red; font-size: 12px;">
								※경매 진행 중에는 경매 일자를 변경할 수 없습니다.※</div>
							</c:when>
							<c:otherwise>
								<input type="checkbox" name="auction_date" value="10" class="checkSelect2" onclick="oneCheckbox(this)" id="test"/>1분(test) 
								<input type="checkbox" name="auction_date" value="3" class="checkSelect2" onclick="oneCheckbox(this)"/>3일 
								<input type="checkbox" name="auction_date" value="5" class="checkSelect2" onclick="oneCheckbox(this)"/>5일 
								<input type="checkbox" name="auction_date" value="7" class="checkSelect2" onclick="oneCheckbox(this)"/>7일 
								<br>
								<div style="color: red; font-size: 12px;">
								※경매 포함 중복 체크 시 경매에 선택 일자동안 게시된 후 판매되지 않은 상품만 중고로 넘어갑니다.※</div>
							</c:otherwise>
						</c:choose>
						
				</div>
			</div>

			<div class="subtitle">
				<a>상품 제목 * &nbsp&nbsp&nbsp&nbsp</a> 
				<input type="text" id="prod_title" name="prod_title" value="${modifyProd.prod_title }"/>
			</div>

			<div class="subtitle">
				<a>상품 수량 * &nbsp&nbsp&nbsp&nbsp</a> 
				<input type="number" id="prod_amount" name="prod_amount" min="1" value="${modifyProd.prod_amount }"/>
			</div>

			<div class="subtitle" id="buyPrice" style="display: none">
				<a>구입 가격&nbsp&nbsp&nbsp</a> 
				￦&nbsp<input type="number" id="buy_price" placeholder="중고일 경우만 작성" name="buy_price" min="0" value="${modifyProd.buy_price }"/>
			</div>

			<div class="subtitle" id="price" style="display:none">
				<a>상품 가격 *&nbsp</a> 
				￦&nbsp<input type="number" id="prod_price" name="prod_price" min="0" value="${modifyProd.prod_price }"/>
				<br>
			</div>
			
			<div class="subtitle" id="auction_price" style="display: none">
					<a>경매 시작가 *</a> 
					<c:if test="${modifyProd.auction_yn == 'y' }">
						￦&nbsp<input type="number" id="auction_price" name="auction_price" min="0" value="${modifyProd.auction_price }" readonly/>
						<div style="color: red; font-size: 12px;">
						※경매 진행 중 경매 시작가를 변경할 수 없습니다.※</div>
					</c:if>
					<c:if test="${modifyProd.auction_yn != 'y' }">
						￦&nbsp<input type="number" id="auction_price" name="auction_price" min="0" value="${modifyProd.auction_price }"/>
						<div style="color: red; font-size: 12px;">
						※판매는 경매에서 경매 시작가부터 시작하고, 중고에서는 상품 가격으로 보여집니다.※</div>
					</c:if>
			</div>
			

			<div class="subtitle">
				<a>할인 율 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a> 
				<input type="number" id="discount" placeholder="희망 가격에서의 할인율" name="sale_percent" min="0" value="${modifyProd.sale_percent }"/>
			</div>

			<div class="subtitle">
				<a>거래 방법 * &nbsp&nbsp&nbsp&nbsp</a>
				<input type="hidden" id="selectSend_way" value="${modifyProd.send_way }">
		
				<c:if test="${modifyProd.send_way == 'direct' }">
					<span id="noflea">
						<input type="checkbox" class="send_way" name="send_way" value="direct" id="direct" checked="checked"/><label for="direct">직거래</label> 
						<input type="checkbox" class="send_way" name="send_way" value="delivery" id="delivery" /><label for="delivery">택배 거래</label>
					</span>
					<span id="yesflea" style="display:none;"> 
						<input type="checkbox" class="send_way" name="send_way" value="receipt" id="receipt" /><label for="receipt">현장 거래</label> <br>
					</span>
				</c:if>
				<c:if test="${modifyProd.send_way == 'delivery' }">
					<span id="noflea">
						<input type="checkbox" class="send_way" name="send_way" value="direct" id="direct" /><label for="direct">직거래</label> 
						<input type="checkbox" class="send_way" name="send_way" value="delivery" id="delivery" checked="checked"/><label for="delivery">택배 거래</label>
					</span>
					<span id="yesflea" style="display:none;"> 
						<input type="checkbox" class="send_way" name="send_way" value="receipt" id="receipt" /><label for="receipt">현장 거래</label> <br>
					</span>
				</c:if>
				<c:if test="${modifyProd.send_way == 'direct delivery' }">
					<span id="noflea">
						<input type="checkbox" class="send_way" name="send_way" value="direct" id="direct" checked="checked" /><label for="direct">직거래</label> 
						<input type="checkbox" class="send_way" name="send_way" value="delivery" id="delivery" checked="checked"/><label for="delivery">택배 거래</label>
					</span>
					<span id="yesflea" style="display:none;"> 
						<input type="checkbox" class="send_way" name="send_way" value="receipt" id="receipt" /><label for="receipt">현장 거래</label> <br>
					</span>
				</c:if>
			
				
				<c:if test="${modifyProd.send_way == 'receipt' }">
					<span id="noflea" style="display:none;">
						<input type="checkbox" class="send_way" name="send_way" value="direct" id="direct" /><label for="direct">직거래</label> 
						<input type="checkbox" class="send_way" name="send_way" value="delivery" id="delivery" /><label for="delivery">택배 거래</label>
					</span>
					<span id="yesflea" style="display:contents;"> 
						<input type="checkbox" class="send_way" name="send_way" value="receipt" id="receipt"  checked="checked"/><label for="receipt">현장 거래</label> <br>
					</span>
				</c:if>
				
				
				<div id="way_caution" style="color: red; font-size: 12px; display: none;">
				※플리마켓 직거래는 맵 등록 후 오프라인 상품 수령만 가능합니다.※</div>
			</div>

			<div class="subtitle" id="directCheck" style="display: none" >
				<a>직거래 장소 * &nbsp&nbsp</a> 
				<input type="text" id="direct_area" placeholder="자세할수록 좋습니다." name="direct_area" value="${modifyProd.direct_area }"/>
			</div>

			<br>

			<div class="subtitle">
				<a>상품 상세 * (사진 3장 이상 첨부 필수)</a>
				<br>
				<textarea name="editor" id="editor"	style="width: 99%; height: 400px;">${modifyProd.editor }</textarea>
				<input type="hidden" value="" name="images"/>
			</div>

			<br>
			
			<div class="subtitle">
				<div class="tag">
					
					
					<input type="hidden" value="" name="tag" id="rdTag" />
						<a>해시 태그&nbsp&nbsp&nbsp&nbsp</a>
						<input type="text" id="tag" size="7" placeholder="최대 5개 입력 가능" name="tag"/>	
						<input type="button" id="enrollTag" value="태그 등록"/>
						<ul id="tag-list">
							<c:forEach var="tags" items="${tagList }">
							<c:if test="${tags.tag1 == null }">
								<input type="hidden" id="tagCount" value="0"/>
							</c:if>
							<c:if test="${tags.tag1 != null }">
								<c:if test="${tags.tag2 == null }">
									<input type="hidden" id="tagCount" value="1"/>
									<%-- <input type="hidden" name="tag1" value="${tags.tag1 }"/>
									<input type="hidden" name="tag2" value=""/>
									<input type="hidden" name="tag3" value=""/>
									<input type="hidden" name="tag4" value=""/>
									<input type="hidden" name="tag5" value=""/> --%>
								</c:if>
								<li class="tag-item">
									<span class="realTag" id="tag1">${tags.tag1 }</span>
									<span class="del-btn" style="cursor:pointer" idx="0"> X </span>
								</li>
							</c:if>
							<c:if test="${tags.tag2 != null }">
								<c:if test="${tags.tag3 == null }">
									<input type="hidden" id="tagCount" value="2"/>
								<%-- 	<input type="hidden" name="tag1" value="${tags.tag1 }"/>
									<input type="hidden" name="tag2" value="${tags.tag2 }"/>
									<input type="hidden" name="tag3" value=""/>
									<input type="hidden" name="tag4" value=""/>
									<input type="hidden" name="tag5" value=""/> --%>
								</c:if>
								<li class="tag-item">
									<span class="realTag" id="tag2">${tags.tag2 }</span>
									<span class="del-btn" style="cursor:pointer" idx="0"> X </span>
								</li>
							</c:if>
							<c:if test="${tags.tag3 != null }">
								<c:if test="${tags.tag4 == null }">
									<input type="hidden" id="tagCount" value="3"/>
									<%-- <input type="hidden" name="tag1" value="${tags.tag1 }"/>
									<input type="hidden" name="tag2" value="${tags.tag2 }"/>
									<input type="hidden" name="tag3" value="${tags.tag3 }"/>
									<input type="hidden" name="tag4" value=""/>
									<input type="hidden" name="tag5" value=""/> --%>
								</c:if>
								<li class="tag-item">
									<span class="realTag" id="tag3">${tags.tag3 }</span>
									<span class="del-btn" style="cursor:pointer" idx="0"> X </span>
								</li>
							</c:if>
							<c:if test="${tags.tag4 != null }">
								<c:if test="${tags.tag5 == null }">
									<input type="hidden" id="tagCount" value="4"/>
									<%-- <input type="hidden" name="tag1" value="${tags.tag1 }"/>
									<input type="hidden" name="tag2" value="${tags.tag2 }"/>
									<input type="hidden" name="tag3" value="${tags.tag3 }"/>
									<input type="hidden" name="tag4" value="${tags.tag4 }"/>
									<input type="hidden" name="tag5" value=""/> --%>
								</c:if>
								<li class="tag-item">
									<span class="realTag" id="tag4">${tags.tag4 }</span>
									<span class="del-btn" style="cursor:pointer" idx="0"> X </span>
								</li>
							</c:if>
							<c:if test="${tags.tag5 != null }">
								<input type="hidden" id="tagCount" value="5"/>
					<%-- 				<input type="hidden" name="tag1" value="${tags.tag1 }"/>
									<input type="hidden" name="tag2" value="${tags.tag2 }"/>
									<input type="hidden" name="tag3" value="${tags.tag3 }"/>
									<input type="hidden" name="tag4" value="${tags.tag4 }"/>
									<input type="hidden" name="tag5" value="${tags.tag5 }"/> --%>
								<li class="tag-item">
									<span class="realTag" id="tag5">${tags.tag5 }</span>
									<span class="del-btn" style="cursor:pointer" idx="0"> X </span>
								</li>
									
							</c:if>
							<input type="hidden" name="tag1" value=""/>
							<input type="hidden" name="tag2" value=""/>
							<input type="hidden" name="tag3" value=""/>
							<input type="hidden" name="tag4" value=""/>
							<input type="hidden" name="tag5" value=""/>
							</c:forEach>
						</ul>
				</div>
			</div>
		</div>
		<br>
			<div style="text-align:center;">
				<input type="button" id="modify" value="상품수정"/>
			</div>
	<br>
	<br>
	</c:forEach>
	</form>
	</c:if>
</body>
</html>
<!-- 직거래 장소: 직거래 선택 시 나오게 
	 필수 체크 사항 미 작성 시 유효성 검사 -->
	 
<!-- 태그 따로 테이블로 관리해야하는지.. 
	 1. 자신이 이용한 태그 목록 보이게
	 2. 사용자들이 사용했던 태그 목록 보이게 -->