<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "java.util.*, project.FleaMarket.*"
    isELIgnored="false"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>    
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  /> 
<%
 request.setCharacterEncoding("utf-8");
 List list = (List)request.getAttribute("searchList");
 String flea_id = request.getParameter("flea_name");
 String intro_content = request.getParameter("intro_content");
 System.out.println("플리마켓 아이디="+flea_id);
 System.out.println("플리마켓 소개글=" + intro_content);
%>
<!DOCTYPE html>
<html>
<style>
ul {
 list-style-type: none;
 margin: 0;
 padding-left: 0;
}
.ui_title__txt{
  color: #333;
  font-size: 20px;
  font-weight: 700;
  margin-bottom: 24px;
  padding-bottom: 4px;
  border-bottom: 1px solid #d9d9d9;
}
.wrap{
  width: 30%;
  position: absolute;
  top: 50%;
  left: 40%;
  transform: translate(-50%, -50%);
}
 .left-images, .left-categories-list {
   float: left;
}
.categories-list li {
    display: block;
    line-height: normal;
    margin: 0;
    padding: 5px 0;
}
.categories-list li :hover{
  background:inherit !important;
}
.left-images > p {
    background: none repeat scroll 0 0 #ff7f50;
    display: block;
    font-size: 18px;
    line-height: normal;
    margin: 0;
    padding: 5px 14px;
}
.categories-list span {
    font-size: 18px;
    padding-bottom: 5px;
    text-transform: uppercase;
}
.mm-view-more{
 background: none repeat scroll 0 0 #ff7f50;
    color: #fff;
    display: inline !important;
    line-height: normal;
    padding: 5px 8px !important;
 margin-top:10px;
}
.profile-picture {
 border-radius: 100%;
 overflow: hidden;
 -webkit-box-sizing: content-box;
   -moz-box-sizing: content-box;
   box-sizing: content-box; 
   display: block;
    margin: 0px auto;
   
}
.big-profile-picture {
 width: 120px;
 height: 120px;
}
.add-button .icon {
 float: right;
 line-height: 18px;
 width: 23px;     
 border: 2px solid;
 border-radius: 100%;
 font-size: 18px;
 text-align: center;
 margin: 10px;     
}
.add-button .icon:hover {
 color: #e64c65;
 border-color: #e64c65;
}
<%--
.user-name {
 margin-left: 50px;
}
--%>
.profile-description .user_name{
 text-align: center;
}
.ui_card, .ui_card--flex-orientation, .ui_card--side, .ui_card--white {
    overflow: hidden;
    position: relative;
    display: inline-block;
    background: #f8f9fb;
    border-radius: 4px;
    border: 1px solid #d9d9d9;
    font-size: 12px;
    box-shadow: 0 1px 3px 0 hsla(0,0%,86.3%,.3);
}
element.style {
       background-image: url(https://image.idus.com/image/files/7c7e4972cbdc49b0a43cdb03973786e4_512.png);
}
.ui_card__img {
    position: relative;
    display: block;
    width: 100%;
    height: auto;
    background-size: cover;
    background-repeat: no-repeat;
    background-position: 50%;
    transition: transform .5s ease-in-out;
}
.ui_card__img:after {
    content: "";
    display: block;
    padding-bottom: 100%;
}
.nav-links {
    border: 2px solid #555;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
    padding: 16px;
}
.nav-links a {
    display: inline-block;
    width: 100%;
    font-size: 12px;
    color: #666;
    margin-top: 4px;
    vertical-align: middle;
}
.border-row:before {
    content: '';
    display: block;
    width: 100%;
    height: 16px;
    border-top: 1px solid #d9d9d9;
    margin-top: 16px;
}
dt { 
 float:left;
 width:50%;
} 
  
dd { 
 float:left; 
 width:50%; 
}
layout-split:after {
    content: '';
    display: block;
    clear: both;
}
<!-- 구매후기 왼쪽-->
.layout-split.half>*:first-child {
    margin-left: 0;
}
.layout-split.half>* {
    width: 48%;
    margin-left: 1%;
}
.ui_card--side .ui_card__title {
    display: block;
    display: -webkit-box;
    height: 21px;
    font-size: 14px;
    line-height: 1.5;
    -webkit-line-clamp: 1;
    -webkit-box-orient: vertical;
    overflow: hidden;
    text-overflow: ellipsis;
    margin: 15px 0;
    font-weight: 700;
}
.ui_card--side .ui_card__inner {
    display: table;
}
.ui_card__inner {
    width: 100%;
    display: block;
    position: relative;
}
.ui_card--flex-orientation>*, .ui_card--side>*, .ui_card--white>*, .ui_card>* {
    text-align: left;
    box-sizing: border-box;
}
.cardlist_section .split-cardlist .ui_card--side {
    width: 100%;
}
.ui_card, .ui_card--flex-orientation, .ui_card--side, .ui_card--white {
    overflow: hidden;
    position: relative;
    display: inline-block;
    background: #f8f9fb;
    border-radius: 4px;
    border: 1px solid #d9d9d9;
    font-size: 12px;
    box-shadow: 0 1px 3px 0 hsla(0,0%,86.3%,.3);
}
.ui_card--flex-orientation>*, .ui_card--side>*, .ui_card--white>*, .ui_card>* {
    text-align: left;
    box-sizing: border-box;
}
.ui_card, .ui_card--flex-orientation, .ui_card--side, .ui_card--white {
    overflow: hidden;
    position: relative;
    display: inline-block;
    background: #f8f9fb;
    border-radius: 4px;
    border: 1px solid #d9d9d9;
    font-size: 12px;
    box-shadow: 0 1px 3px 0 hsla(0,0%,86.3%,.3);
}
.ui_card__img {
    position: relative;
    display: block;
    width: 100%;
    height: auto;
    background-size: cover;
    background-repeat: no-repeat;
    background-position: 50%;
    transition: transform .5s ease-in-out;
}
<!-- 스토리 오른쪽 -->
.layout-split>* {
    float: left;
    margin-left: 24px;
    width: 336px;
}
.artist-area {
    padding: 32px 16px 16px;
    border: 1px solid #d9d9d9;
    border-top: 0 none;
    padding-bottom: 18px;
    text-align: center;
}
.user-name {
    margin-top: 16px;
    margin-bottom: 8px;
    display: block;
    width: 100%;
    text-align: center;
    font-size: 16px;
    line-height: 1.5; 
    color: #333;
    word-break: break-word;
}
 
</style>
<head>
<meta charset="UTF-8">
<title>금도끼은도끼| 플리마켓</title>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Shop Homepage - Start Bootstrap Template</title>
   <!-- Bootstrap core CSS -->
  <link href="${contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> 
  <!-- Custom styles for this template -->
  <link href="${contextPath}/resources/css/shop-homepage.css" rel="stylesheet">
</head>
<body>
<!-- 
<table border='1' width='800' align='center'>
   <tr align='center' bgcolor='#FFFF66'> 
     <td>플리마켓 코드</td>
     <td>멤버아이디</td>
     <td>플리마켓이름</td>
     <td >소개글</td>
     <td>좋아요 수</td>
     <td>프로필 사진</td>
     <td>메인 사진</td>
     <td>플리 그룹</td>
</tr>
  <c:forEach var="flea" items="${searchList}" > 
  <c:url var="url"  value="searchMod.do"  >
    <c:param  name="p_mod_id" value="${member.id}" />
  </c:url>     
     <tr align=center>
       <td>${flea.flea_code}</td>
       <td>${flea.memberid}</td>
       <td>${flea.flea_name}</td>
       <td>${flea.intro_cotent}</td>
       <td>${flea.flea_like_count}</td>
       <td>${flea.profile_photo}</td>
       <td>${flea.main_photo}</td>
       <td>${flea.flea_group}</td>
     </tr>
  </c:forEach>
</table>
 -->
  <!-- Navigation 
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">금도끼 은도끼</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
     
    <div class="wrap">
     <div class="search">
        <input type="text" class="searchTerm" placeholder="What are you looking for?">
        <button type="submit" img src="${contextPath}/resources/magnifying-glass.png">
          <i class="fas fa-search"></i>
       </button>
     </div>
  </div>
  
  
     
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="login.jsp">로그인
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">회원가입</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">고객센터</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
        </ul>
      </div>
     
    </div>
  </nav>
  -->
   
  <!--  
  <nav class="dropdownmenu">
  <ul>
    <li><a href="http://www.jochaho.com/wordpress/">Home</a></li>
    <li><a href="http://www.jochaho.com/wordpress/about-pritesh-badge/">About Me</a></li>
    <li><a href="#">Articles on HTML5 & CSS3</a>
      <ul id="submenu">
        <li><a href="http://www.jochaho.com/wordpress/difference-between-svg-vs-canvas/">Difference between SVG vs. Canvas</a></li>
        <li><a href="http://www.jochaho.com/wordpress/new-features-in-html5/">New features in HTML5</a></li>
        <li><a href="http://www.jochaho.com/wordpress/creating-links-to-sections-within-a-webpage/">Creating links to sections within a webpage</a></li>
      </ul>
    </li>
    <li><a href="http://www.jochaho.com/wordpress/category/news/">News</a></li>
    <li><a href="http://www.jochaho.com/wordpress/about-pritesh-badge/">Contact Us</a></li>
  </ul>
  <br><br>
</nav>
--> 
  <!-- Page Content -->

    <div class="row">
      <aside class="artist-area">
  <!-- 
        <h1 class="my-4">Shop Name</h1>
        <div class="list-group">
          <a href="#" class="list-group-item">Category 1</a>
          <a href="#" class="list-group-item">Category 2</a>
          <a href="#" class="list-group-item">Category 3</a>
        </div>
        -->
        
        <div class="user-info card-style-profile "> <!-- PROFILE (MIDDLE-CONTAINER) -->
        
             
                  <c:forEach var="flea" items="${searchList}" > 
               <c:out value="${flea.profile_photo}"/>
             <div class="profile-picture big-profile-picture clear">
              
                 <img width="120px" height="120px" alt="Anne Hathaway picture" src= "${contextPath}/resources/img/profile_ex.jpg" >
             <!-- 
              <img width="120px" height="120px" alt="Anne Hathaway picture" src= "<c:url value="/img/${file.profile_photo }" />" >
             -->
             </div>
             </c:forEach>
             
              <div class="user-name"><font size="3">
              <c:forEach var="flea" items="${searchList}" > 
               <c:out value="${flea.flea_name}"/>
              </c:forEach>
              </font></div>
              <div class="profile-description"><font size="2">
            <c:forEach var="flea" items="${searchList}" > 
               <c:out value="${flea.intro_cotent}"/>
              </c:forEach>
             
             </font>
              </div> 
         </div>
         
         
         <fieldset class="ui-field border-row">
        <button type="button" class="btn btn-s btn-white toggle-heart detail-like pseudo-ico-love" data-name="starred-toolbar" data-starred-type="artist" data-init="" data-starred="" data-target-id="b20eee2f-b3eb-4fee-bc81-735f1e2318d6">
            <i class="ico-img">
                <span class="sp-icon icon-heart"></span>
                <span class="sp-icon icon-heart active"></span>
            </i>
            <em class="txt"><i class="ui_icon--heart"></i>스토어 찜하기</em>
        </button>
   <br>
        <a href="/w/message/b20eee2f-b3eb-4fee-bc81-735f1e2318d6" class="btn btn-s btn-white pseudo-ico-message">
        <i class="ico-img"><span class="sp-icon icon-line-message"></span></i>
        메시지</a>
        <br>
        <button type="button" class="btn btn-m btn-white pseudo-ico-share" data-ui="url-copy" data-ui-option="short" data-icon-event="hover" data-clipboard-text="https://www.idus.com/w/artist/b20eee2f-b3eb-4fee-bc81-735f1e2318d6" data-clipboard-message="작가님 URL이 복사되었습니다.">
        <i class="ico-img"><span class="sp-icon icon-shareproduct"></span></i>
        공유하기<br></button>
    </fieldset>
  <div class="border-row">
         <nav class="nav-links">
         <!--  
                         <a class="active" href="/w/artist/b20eee2f-b3eb-4fee-bc81-735f1e2318d6">
                 <i class="ui_icon--home"></i>
                 <span>홈</span>
             </a>
             -->
             <span>홈<br></span>
             <span>스토리<br></span>
             <span>판매 작품<br></span>
             <span>구매 후기<br></span>
         </nav>
     </div>
  <div class="list-def border-row">
        <strong class="caption">활동정보</strong>
        <dl class="list">
            <dt><font size="2">
                좋아하는 사람</font>
            </dt>
            <dd>
            
            
                <a href="/w/artist/b20eee2f-b3eb-4fee-bc81-735f1e2318d6/favorite/list" data-modal-trigger="user-list" data-modal="open" data-type="favorite" data-title="좋아하는 사람"><span id="like-count">
                  <c:forEach var="flea" items="${searchList}" > 
               <c:out value="${flea.flea_like_count}"/>
               </c:forEach>
                 </span><em>명</em>
                </a>
            </dd>
            <dt><font size="2">
                판매중인 작품</font></dt>
            <dd>
                <a href="/w/artist/b20eee2f-b3eb-4fee-bc81-735f1e2318d6/product">11<em>개</em></a>
            </dd>
            <dt><font size="2">
                구매후기</font></dt>
            <dd>
                <a href="/w/artist/b20eee2f-b3eb-4fee-bc81-735f1e2318d6/review">124<em>개</em></a>
            </dd>
        </dl>
    </div>
      </aside>
      <!-- /.col-lg-3 -->
     <div class="col-lg-9">
        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img class="d-block img-fluid" src="${contextPath}/resources/img/mystore_main.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Second slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Third slide">
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
        
        <br>
  <div class="ui_title__txt"><font size="2">판매중인 상품</font></div>
         
        <div class="row">
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
            
            
            
            
              <a href="#"><img class="card-img-top" src="${contextPath}/resources/img/product_ex.PNG" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#"><font size="3">[할로윈]1일배송,마카롱,뚱카롱,선물</font></a>
                </h4>
                <h5></h5>
                <p class="card-text"><font size="2">[할로윈]신데렐라롱9구 마카롱선물세트~!!<br>호박마차가 ??신데렐라를 좋은곳으로 데려다줬듯이 <br>신데렐라롱에서의 디저트는 좋은마음,좋은재료로 여러분을 ??행복한 디저트세상으로 안내해드리겠습니다.<br></font></p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Item Two</a>
                </h4>
                <h5>$24.99</h5>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Item Three</a>
                </h4>
                <h5>$24.99</h5>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>
          
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Item Four</a>
                </h4>
                <h5>$24.99</h5>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Item Five</a>
                </h4>
                <h5>$24.99</h5>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Item Six</a>
                </h4>
                <h5>$24.99</h5>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>
        </div>
        <!-- /.row -->
        
        
        
        
        <br>
 <div class="layout-split half">
  <section class="cardlist_section">
   <div class="ui_title--sub">
             <h3 class="ui_title__txt"><font size="2">구매후기</font></h3>
         </div>
         <ul class="split-cardlist">
         
         
            <li class="ui_grid__item">
            <div class="ui_card--side">
                <div class="ui_card__inner">
                    <div class="ui_card__imgcover">
                        <a href="${contextPath}/FleaMarket/P002/D002/searchList.do" class="ui_card__img" aria-label="?? 할인 ?? ??수제마카롱 30여종??" target="_blank" style="background-image: url(https://image.idus.com/image/files/7c7e4972cbdc49b0a43cdb03973786e4_512.png)">
                        </a>
                    </div>
                    <div class="ui_card__txtarea">
                        <div class="ui_card__info">
                            <a href="${contextPath}/FleaMarket/P002/D002/searchList.do" arial-label="?? 할인 ?? ??수제마카롱 30여종??" target="_blank" class="ui_card__title">?? 할인 ?? ??수제마카롱 30여종??</a>
                            <span class="ui_card__para">
                                포장이 너무 잘되어서 오고 너무 맛있어용??                            </span>
                        </div>
                        <div class="ui_card__rating">
                            <div class="ui_card__vcenter">
                                <div class="ui_rating" data-ui="rating" data-value="5">
                                    <i class="ui_icon--star-fill" data-state="active"></i>
                                    <i class="ui_icon--star-fill" data-state="active"></i>
                                    <i class="ui_icon--star-fill" data-state="active"></i>
                                    <i class="ui_icon--star-fill" data-state="active"></i>
                                    <i class="ui_icon--star-fill" data-state="active"></i>
                                    <span>&nbsp;| 김연주</span>
                                </div>
                            </div>
                            <input name="paging_param" type="hidden" value="1571719189000">
                        </div>
                    </div>
                </div>
            </div>
        </li>
       <li class="ui_grid__item">
            <div class="ui_card--side">
                <div class="ui_card__inner">
                    <div class="ui_card__imgcover">
                        <a href="${contextPath}/FleaMarket/P002/D002/searchList.do" class="ui_card__img" aria-label="?? 할인 ?? ??수제마카롱 30여종??" target="_blank" style="background-image: url(https://image.idus.com/image/files/7c7e4972cbdc49b0a43cdb03973786e4_512.png)">
                        </a>
                    </div>
                    <div class="ui_card__txtarea">
                        <div class="ui_card__info">
                            <a href="${contextPath}/FleaMarket/P002/D002/searchList.do" arial-label="?? 할인 ?? ??수제마카롱 30여종??" target="_blank" class="ui_card__title">?? 할인 ?? ??수제마카롱 30여종??</a>
                            <span class="ui_card__para">
                                너무 이쁜데 맛까지 짱입니다
꼬끄가 너무 촉촉하고 맛있어요
필링도 정말 잘 어울려요
냉동실에 넣었다가 바로 꺼내먹어도 맛있습니다                            </span>
                        </div>
                        <div class="ui_card__rating">
                            <div class="ui_card__vcenter">
                                <div class="ui_rating" data-ui="rating" data-value="5">
                                    <i class="ui_icon--star-fill" data-state="active"></i>
                                    <i class="ui_icon--star-fill" data-state="active"></i>
                                    <i class="ui_icon--star-fill" data-state="active"></i>
                                    <i class="ui_icon--star-fill" data-state="active"></i>
                                    <i class="ui_icon--star-fill" data-state="active"></i>
                                    <span>&nbsp;| 최주연 (Ellen)</span>
                                </div>
                            </div>
                            <input name="paging_param" type="hidden" value="1571350654000">
                        </div>
                    </div>
                </div>
            </div>
        </li>
        
           <li class="ui_grid__item">
            <div class="ui_card--side">
                <div class="ui_card__inner">
                    <div class="ui_card__imgcover">
                        <a href="${contextPath}/FleaMarket/P002/D002/searchList.do" class="ui_card__img" aria-label="?? 할인 ?? ??수제마카롱 30여종??" target="_blank" style="background-image: url(https://image.idus.com/image/files/7c7e4972cbdc49b0a43cdb03973786e4_512.png)">
                        </a>
                    </div>
                    <div class="ui_card__txtarea">
                        <div class="ui_card__info">
                            <a href="${contextPath}/FleaMarket/P002/D002/searchList.do" arial-label="?? 할인 ?? ??수제마카롱 30여종??" target="_blank" class="ui_card__title">?? 할인 ?? ??수제마카롱 30여종??</a>
                            <span class="ui_card__para">
                                잘받았습니다. 배송 빨랐어요~ 블루베리랑 요거트 맛보았는디 블루베리는 필링도 쨈도 맛있었어요. 그런데 요거트는 필링에 설탕 씹히는 식감이 많이 나고 요거트맛도 별로 안나서 별로였습니다ㅠㅠ 다음에 재구매의사는 있는데 요거트 한번더 먹어보야겠네요~                            </span>
                        </div>
                        <div class="ui_card__rating">
                            <div class="ui_card__vcenter">
                                <div class="ui_rating" data-ui="rating" data-value="4.5">
                                    <i class="ui_icon--star-fill" data-state="active"></i>
                                    <i class="ui_icon--star-fill" data-state="active"></i>
                                    <i class="ui_icon--star-fill" data-state="active"></i>
                                    <i class="ui_icon--star-fill" data-state="active"></i>
                                    <i class="ui_icon--star-half-fill" data-state="active"></i>
                                    <span>&nbsp;| 이진아</span>
                                </div>
                            </div>
                            <input name="paging_param" type="hidden" value="1571314103000">
                        </div>
                    </div>
                </div>
            </div>
        </li>
        </ul>
       
     </section>
     
     <section class="cardlist_section">
   <div class="ui_title--sub">
             <h3 class="ui_title__txt"><font size="2">스토리</font></h3>
         </div>
                <ul class="split-cardlist lines5">
                                                <li class="ui_card--side">
                            <div class="ui_card__inner">
                                                                <div class="ui_card__imgcover">
                                    <a href="/w/story/a2318646-a0ca-4322-ac8b-da222ec885f6" class="ui_card__img" style="background-image: url(https://image.idus.com/image/files/4b1b9b058f5046d99b0ade714ecdc0c4_720.jpg)"></a>
                                </div>
                                                                <div class="ui_card__txtarea ">
                                    <div class="ui_card__info">
                                        <a href="${contextPath}/FleaMarket/P002/D003/searchList.do" class="ui_card__title">2019년 10월 17일</a>
                                        <span class="ui_card__para">안녕하세요. ??마카롱에 빠진날??입니다. <br>
           <br>
           마카롱, 수제청으로 디저트를 만들기 시작한지 어느덧 <br>
           10여년이 되었네요.^^<br>
           </span>
                                    </div>
                                </div>
                            </div>
                        </li>
                                            </ul>
     </section>
</div>

      </div>
      <!-- /.col-lg-9 -->
    </div>
    <!-- /.row -->

  <!-- /.container -->
  <!-- Footer 
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
  </footer>
-->
  <!-- Bootstrap core JavaScript -->
  <script src="${contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 
</body>

</html> 