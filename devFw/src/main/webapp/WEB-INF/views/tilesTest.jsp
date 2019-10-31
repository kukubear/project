<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.0/handlebars.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Gothic+A1|Gugi|Nanum+Gothic|Nanum+Myeongjo|Noto+Sans+KR|Noto+Serif+KR|Sunflower:300&display=swap&subset=korean"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
	<link href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'
			rel='stylesheet' />
<style>

<style>
@font-face {
	font-family: 'Noto Sans KR', sans-serif;
	font-style: normal;
	font-weight: 100;
	src: local('Roboto Thin'), local('Roboto-Thin'),
		url(https://fonts.gstatic.com/s/roboto/v20/KFOkCnqEu92Fr1MmgVxIIzc.ttf)
		format('truetype');
}

@font-face {
	font-family: 'Noto Sans KR', sans-serif;
	font-style: normal;
	font-weight: 300;
	src: local('Roboto Light'), local('Roboto-Light'),
		url(https://fonts.gstatic.com/s/roboto/v20/KFOlCnqEu92Fr1MmSU5fBBc9.ttf)
		format('truetype');
}

@font-face {
	font-family: 'Noto Sans KR', sans-serif;
	font-style: normal;
	font-weight: 400;
	src: local('Roboto'), local('Roboto-Regular'),
		url(https://fonts.gstatic.com/s/roboto/v20/KFOmCnqEu92Fr1Mu4mxP.ttf)
		format('truetype');
}

@font-face {
	font-family: 'Noto Sans KR', sans-serif;
	font-style: normal;
	font-weight: 700;
	src: local('Roboto Bold'), local('Roboto-Bold'),
		url(https://fonts.gstatic.com/s/roboto/v20/KFOlCnqEu92Fr1MmWUlfBBc9.ttf)
		format('truetype');
}

a {
	color: inherit;
}
p {
    font-size: 20px;
    margin: 0 0 10px;
}

a.active, a:active, a:focus, a:hover {
	color: inherit;
	text-decoration: none;
}

.red {
	color: #ca9964;
}

.orange {
	color: #e06014;
}

.blue {
	color: #5aaed6;
}

.beige {
	color: #d6ccad;
}

body {
	font-family: 'Noto Sans KR', sans-serif;
	background: #fff;
}

.mg {
	margin: 7rem 0 4rem 0;
}

.big {
	color: #333;
	font-size: 30px;
	font-weight: 700;
	margin: 10px;
}

.head {
	color: #ca9964;
	font-size: 4.8rem;
	font-weight: 200;
	margin: 1rem;
}

*, *:before, *:after {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.site-outer {
	overflow: hidden;
}

.site-outer .navbar {
	background-color: #fff;
	-webkit-transition: all 250ms ease-in-out;
	-moz-transition: all 250ms ease-in-out;
	transition: all 250ms ease-in-out;
}

.site-outer .navbar.slide-right {
	-webkit-transform: translate3d(250px, 0, 0);
	-moz-transform: translate3d(250px, 0, 0);
	transform: translate3d(250px, 0, 0);
}

.site-outer .site-inner {
	position: relative;
	margin: 0;
	padding: 0;
	-webkit-transition: all 250ms ease-in-out;
	-moz-transition: all 250ms ease-in-out;
	transition: all 250ms ease-in-out;
	-webkit-transform: translate3d(0, 0, 0);
	-moz-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}

.site-outer .site-inner.slide-right {
	-webkit-transform: translate3d(250px, 0, 0);
	-moz-transform: translate3d(250px, 0, 0);
	transform: translate3d(250px, 0, 0);
}

.container-menu {
	margin: 0 auto;
}

.container-menu:before, .container-menu:after {
	content: "";
	display: block;
	zoom: 1;
}

.container-menu:after {
	clear: both;
}

.container-menu .menu {
	float: left;
	padding: 3rem 1.5rem;
	cursor: pointer;
	position: relative;
	display: inline-block;
	width: 8rem;
}

.container-menu .menu div {
	width: 5rem;
	height: 0.4rem;
	background-color: #333;
	margin-bottom: 0.4rem;
	-webkit-transition: all 500ms ease;
	-moz-transition: all 500ms ease;
	transition: all 500ms ease;
	position: absolute;
}

.container-menu .menu div:nth-child(1) {
	left: 1.5rem;
	top: 2rem;
}

.container-menu .menu div:nth-child(2) {
	left: 1.5rem;
	top: 2.8rem;
}

.container-menu .menu div:nth-child(2):after {
	content: "";
	position: absolute;
	left: 0;
	top: 0;
	width: 5rem;
	height: 0.4rem;
	background-color: #333;
	-webkit-transition: all 350ms ease;
	-moz-transition: all 350ms ease;
	transition: all 350ms ease;
}

.container-menu .menu div:nth-child(3) {
	right: 1.5rem;
	top: 3.6rem;
}

.container-menu .menu.active div:nth-child(1), .container-menu .menu.active div:nth-child(3)
	{
	width: 0;
}

.container-menu .menu.active div:nth-child(2) {
	-webkit-transform: rotate(-45deg);
	-moz-transform: rotate(-45deg);
	transform: rotate(-45deg);
}

.container-menu .menu.active div:nth-child(2):after {
	-webkit-transform: rotate(90deg);
	-moz-transform: rotate(90deg);
	transform: rotate(90deg);
}

.container-menu .logotype {
	cursor: pointer;
	float: left;
}

.container-menu .logotype div {
	margin: 9px;
}

.container-menu .checkout {
	float: right;
	padding: 0.8rem 1.2rem 0;
}

.container-menu .checkout h3 {
	font-size: 1.8rem;
	font-weight: 300;
	text-transform: uppercase;
}

.navigation {
	background-color: #fff;
	overflow: auto;
	margin: 0;
	padding: 0;
	position: fixed;
	top: 0;
	left: 0;
	width: 250px;
	height: 100%;
	-webkit-transition: all 250ms ease-in-out;
	-moz-transition: all 250ms ease-in-out;
	transition: all 250ms ease-in-out;
	-webkit-transform: translate3d(-250px, 0, 0);
	-moz-transform: translate3d(-250px, 0, 0);
	transform: translate3d(-250px, 0, 0);
}

.navigation:before, .navigation:after {
	content: "";
	display: block;
	zoom: 1;
}

.navigation:after {
	clear: both;
}

.navigation.slide-right {
	-webkit-transform: translate3d(0, 0, 0);
	-moz-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}

.navigation-login {
	padding: 2rem;
	line-height: 2;
	border: none;
	width: 100%;
	border-radius: 0;
	font-size: 1.8rem;
	background-color: #ca9964;
	font-weight: 100;
	color: #fff;
	text-transform: uppercase;
}

.navigation-search {
	padding: 2rem 2rem 0;
}

.navigation-content {
	padding: 0 2rem;
}

.navigation-content h3 {
	color: #ca9964;
	text-transform: uppercase;
	letter-spacing: 0.15rem;
	padding: 0;
	font-weight: 300;
}

.navigation-content .navigation-menu {
	list-style: none;
	padding: 0;
}

.navigation-content .navigation-menu li {
	display: block;
	padding: 0.8rem 0;
	margin: 1rem 0;
}

.navigation-content .navigation-menu li a {
	color: #333;
	text-transform: uppercase;
	font-size: 1.3rem;
}

.navigation-content .navigation-menu li a.active, .navigation-content .navigation-menu li a:active,
	.navigation-content .navigation-menu li a:hover, .navigation-content .navigation-menu li a:focus
	{
	color: #ca9964;
	text-decoration: none;
}

.to-checkout {
	position: fixed;
	top: 0;
	right: 0;
	width: 450px;
	height: 100%;
	background-color: #ca9964;
	z-index: 10001;
	-webkit-transform: translate3d(450px, 0, 0);
	-moz-transform: translate3d(450px, 0, 0);
	transform: translate3d(450px, 0, 0);
}

.to-checkout-inner {
	padding: 2.5rem;
	color: #fff;
}

.to-checkout-list {
	padding: 0;
	margin: 0;
	display: block;
	list-style: none;
}

.to-checkout-list li a {
	color: #5aaed6;
}

#search {
	height: 35px;
	width: 100%;
	position: relative;
}

@media ( max-width : 767px) {
	#search {
		width: auto;
	}
}

#search input {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	width: 35px;
	height: 35px;
	border: 1px solid #333;
	border-radius: 100%;
	background: transparent;
	color: #ca9964;
	font-size: 16px;
	font-weight: 400;
	outline: none;
	-webkit-transition: width 100ms ease-in-out;
	-moz-transition: width 100ms ease-in-out;
	transition: width 100ms ease-in-out;
}

#search input::-webkit-input-placeholder {
	color: transparent;
}

#search input:-moz-placeholder {
	color: transparent;
}

#search input::-moz-placeholder {
	color: transparent;
}

#search input:-ms-input-placeholder {
	color: transparent;
}

#search .search {
	background-color: transparent;
	position: absolute;
	top: 0;
	left: 0;
	height: 35px;
	width: 35px;
	padding: 0;
	border-radius: 100%;
	outline: none;
	border: 0;
	color: #333;
	cursor: pointer;
	-webkit-transition: all 300ms ease-in-out;
	-moz-transition: all 300ms ease-in-out;
	transition: all 300ms ease-in-out;
}

#search .search:before, #search .search:after {
	content: "";
	position: absolute;
	width: 1rem;
	height: 0.1rem;
	background-color: #333;
	-webkit-transform: rotate(45deg);
	-moz-transform: rotate(45deg);
	transform: rotate(45deg);
	top: 3.3rem;
	left: 3rem;
	-webkit-transition: all 300ms ease-in-out;
	-moz-transition: all 300ms ease-in-out;
	transition: all 300ms ease-in-out;
}

#search .close {
	-webkit-transition: all 400ms ease-in-out;
	-moz-transition: all 400ms ease-in-out;
	transition: all 400ms ease-in-out;
	right: 0;
	left: inherit;
}

#search .close:before {
	content: "";
	position: absolute;
	top: 1.7rem;
	left: 1.5rem;
	width: 27px;
	height: 4px;
	margin-top: -1px;
	margin-left: -13px;
	background-color: #ca9964;
	-webkit-transform: rotate(45deg);
	-moz-transform: rotate(45deg);
	transform: rotate(45deg);
	-webkit-transition: all 200ms ease-in-out;
	-moz-transition: all 200ms ease-in-out;
	transition: all 200ms ease-in-out;
}

#search .close:after {
	content: "";
	position: absolute;
	top: 1.7rem;
	left: 1.5rem;
	width: 27px;
	height: 4px;
	margin-top: -1px;
	margin-left: -13px;
	background-color: #ca9964;
	-webkit-transform: rotate(-45deg);
	-moz-transform: rotate(-45deg);
	transform: rotate(-45deg);
	-webkit-transition: all 200ms ease-in-out;
	-moz-transition: all 200ms ease-in-out;
	transition: all 200ms ease-in-out;
}

#search .square {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	padding: 0 4rem 0 1rem;
	width: 100%;
	height: 35px;
	border: 1px solid #333;
	border-radius: 0;
	color: #333;
	background-color: transparent;
	-webkit-transition: all 300ms ease-in-out;
	-moz-transition: all 300ms ease-in-out;
	transition: all 300ms ease-in-out;
}

#search .square::-webkit-input-placeholder {
	color: #ca9964;
}

#search .square:-moz-placeholder {
	color: #ca9964;
}

#search .square::-moz-placeholder {
	color: #ca9964;
}

#search .square:-ms-input-placeholder {
	color: #ca9964;
}

#search .square.active #search .square:hover, #search .square:focus,
	#search .square:active {
	border-color: #ca9964;
}

.sm-box {
	padding: 1.5rem;
	height: 18rem;
	color: #fff;
	background-color: #fff;
	background-size: contain;
	background-repeat: no-repeat;
	background-position: center center;
	width: 100%;
	position: relative;
	overflow: hidden;
	display: table;
	box-shadow: 0 0 5px 2px rgba(0, 0, 0, 0.35);
}

.sm-box-overlay {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	width: 100%;
	height: 100%;
	background-color: none;
	z-index: 998;
	-webkit-transition: all 250ms cubic-bezier(0.17, 0.67, 0.83, 0.67);
	-moz-transition: all 250ms cubic-bezier(0.17, 0.67, 0.83, 0.67);
	transition: all 250ms cubic-bezier(0.17, 0.67, 0.83, 0.67);
}

.sm-box-basket {
	display: table-cell;
	position: relative;
	margin: 0 auto;
	vertical-align: middle;
	line-height: 135px;
	z-index: 999;
	-webkit-transition: all 250ms ease-in-out;
	-moz-transition: all 250ms ease-in-out;
	transition: all 250ms ease-in-out;
	-webkit-transform: translate3d(0, -100%, 0);
	-moz-transform: translate3d(0, -100%, 0);
	transform: translate3d(0, -100%, 0);
}

.sm-box-content {
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
	height: 4rem;
	width: 100%;
	color: #ca9964;
	z-index: 999;
	padding: 1rem 2rem;
	background-color: #fff;
	line-height: 1.5;
	-webkit-transition: all 250ms cubic-bezier(0.17, 0.67, 0.83, 0.67);
	-moz-transition: all 250ms cubic-bezier(0.17, 0.67, 0.83, 0.67);
	transition: all 250ms cubic-bezier(0.17, 0.67, 0.83, 0.67);
	-webkit-transform: translate3d(0, 100%, 0);
	-moz-transform: translate3d(0, 100%, 0);
	transform: translate3d(0, 100%, 0);
}

.sm-box.active, .sm-box:hover {
	box-shadow: 0 0 6px 4px rgba(0, 0, 0, 0.35);
}

.sm-box.active .sm-box-content, .sm-box:hover .sm-box-content {
	-webkit-transform: translate3d(0, 0, 0);
	-moz-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}

.sm-box.active .sm-box-content>i, .sm-box:hover .sm-box-content>i {
	-webkit-animation: rotate 500ms ease;
	-moz-animation: rotate 500ms ease;
	animation: rotate 500ms ease;
}

.sm-box.active .sm-box-basket, .sm-box:hover .sm-box-basket {
	-webkit-transform: translate3d(0, 0, 0);
	-moz-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}

.sm-box.active .sm-box-overlay, .sm-box:hover .sm-box-overlay {
	background-color: rgba(0, 0, 0, 0.6);
}

.product-box h2 {
	-webkit-transition: all 250ms ease;
	-moz-transition: all 250ms ease;
	transition: all 250ms ease;
}

.product-box:hover h2 {
	color: #ca9964;
}

.button {
	outline: none;
	border: 2px solid #fff;
	padding: 1.2rem 2rem;
	margin-bottom: 1rem;
	width: 100%;
	white-space: nowrap;
	font-size: 12px;
	text-transform: uppercase;
	font-weight: 400;
	vertical-align: middle;
	line-height: 18px;
	text-align: center;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	text-decoration: none;
	color: #ca9964;
	background-color: #fff;
	border-radius: 2rem;
	-webkit-transition: all 250ms ease;
	-moz-transition: all 250ms ease;
	transition: all 250ms ease;
	display: inline-block;
}

.button.active, .button:active, .button:focus, .button:hover {
	text-decoration: none;
	color: #fff;
	outline: none;
}

.button-red {
	background-color: #ca9964;
	color: #fff;
	border-color: #ca9964;
}

.button-red.active, .button-red:active, .button-red:focus, .button-red:hover
	{
	background-color: #d0a677;
	border-color: #d0a677;
}

.button-transparent {
	background-color: #fff;
	color: #ca9964;
	border-color: #ca9964;
}

.button-transparent.active, .button-transparent:active,
	.button-transparent:focus, .button-transparent:hover {
	background-color: #fff;
	color: #ca9964;
	border-color: #ca9964;
}

.modal-content {
	border-radius: 0px;
}

.modal-header {
	background-color: #ca9964;
	color: #fff;
}

.badge-red {
	background-color: #ca9964;
	color: #fff;
}

.badge-white {
	background-color: #fff;
	color: #ca9964;
}

.input-group-addon-holder {
	position: relative;
}

.input-group-addon-holder .number-icon {
	position: absolute;
	top: 16px;
	right: 15px;
}

.input-group-addon-holder .number-icon>i {
	display: none;
	color: #5aaed6;
	-webkit-transition: all 250ms ease;
	-moz-transition: all 250ms ease;
	transition: all 250ms ease;
}

.input-group-addon-holder .cvv-icon {
	position: absolute;
	top: 66px;
	right: 15px;
}

.input-group-addon-holder .cvv-icon>i {
	display: none;
	color: #5aaed6;
	-webkit-transition: all 250ms ease;
	-moz-transition: all 250ms ease;
	transition: all 250ms ease;
}

.input-group-addon {
	color: #333;
	border-color: #333;
	background-color: #fff;
	border-radius: 0;
}

.select-hidden {
	display: none;
	visibility: hidden;
	padding-right: 1rem;
}

.select {
	cursor: pointer;
	display: inline-block;
	position: relative;
	font-size: 16px;
	color: #333;
	width: 100%;
	height: 50px;
}

.form-control {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	width: 100%;
	height: 50px;
	border: 1px solid #333;
	border-radius: 0;
	background: transparent;
	color: #333;
	font-size: 16px;
	font-weight: 400;
	outline: none;
	-webkit-transition: all 300ms ease-in-out;
	-moz-transition: all 300ms ease-in-out;
	transition: all 300ms ease-in-out;
}

.form-control::-webkit-input-placeholder {
	color: #333;
}

.form-control:-moz-placeholder {
	color: #333;
}

.form-control::-moz-placeholder {
	color: #333;
}

.form-control:-ms-input-placeholder {
	color: #333;
}

.form-control-sibling {
	border-top: 1px solid transparent;
}

.form-control.active .form-control:hover, .form-control:focus,
	.form-control:active {
	border-color: #ca9964;
}

.select-styled {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	width: 100%;
	height: 50px;
	border: 1px solid #333;
	border-radius: 0;
	background: transparent;
	padding: 1.3rem;
	color: #333;
	font-size: 16px;
	font-weight: 400;
	outline: none;
	-webkit-transition: all 300ms ease-in-out;
	-moz-transition: all 300ms ease-in-out;
	transition: all 300ms ease-in-out;
}

.select-styled:hover, .select-styled.active {
	border-color: #ca9964;
}

.select-options {
	list-style: none;
	display: none;
	position: absolute;
	top: 100%;
	left: 0;
	right: 0;
	z-index: 9999;
	margin: 0;
	padding: 0;
	background-color: #fff;
	border-left: 1px solid #ca9964;
	border-right: 1px solid #ca9964;
	border-bottom: 1px solid #ca9964;
}

.select-options li {
	margin: 0;
	height: 50px;
	padding: 1.3rem;
	-webkit-transition: all 250ms ease;
	-moz-transition: all 250ms ease;
	transition: all 250ms ease;
}

.select-options li:first-child {
	display: none;
}

.select-options li:hover {
	background-color: #d7b28a;
	color: #fff;
}

.footer {
	background-color: #333;
	padding: 2rem 0;
}

.footer-inner h3 {
	color: #595959;
}

.footer-inner .footer-list {
	padding: 0;
	margin: 0;
	display: block;
}

.footer-inner .footer-list li {
	display: block;
	color: #fff;
	margin-bottom: 0.8rem;
}

.footer-inner .footer-list li a:hover {
	text-decoration: underline;
}

.footer-inner .footer-list-inline {
	display: block;
}

.footer-inner .footer-list-inline li {
	display: inline-block;
	margin-right: 1.8rem;
}

@
-webkit-keyframes rotate {from { -webkit-transform:rotate(0deg);
	-moz-transform: rotate(0deg);
	transform: rotate(0deg);
}

to {
	-webkit-transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	transform: rotate(360deg);
}

}
@
-moz-keyframes rotate {from { -webkit-transform:rotate(0deg);
	-moz-transform: rotate(0deg);
	transform: rotate(0deg);
}

to {
	-webkit-transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	transform: rotate(360deg);
}

}
@
keyframes rotate {from { -webkit-transform:rotate(0deg);
	-moz-transform: rotate(0deg);
	transform: rotate(0deg);
}

to {
	-webkit-transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	transform: rotate(360deg);
}

}
@import url(https://fonts.googleapis.com/css?family=Oswald);

body {
	background-color: #f9f9f9;
	font-size: 16px color:#444;
}

.post-body h2 {
	color: #f54325;
	font-family: 'Oswald';
	font-weight: 400;
	text-align: center;
}

.post-body {
	max-width: 680px;
	margin: 20px auto;
	border: 10px solid #f0f0f0;
	padding: 15px 20px;
	background-color: #fff;
	color: #444;
	font-family: 'Arial';
	font-size: 13px;
}

.admenus * {
	margin: 0;
	padding: 0;
}

ul.admenus {
	list-style: none;
	line-height: 1;
	overflow: visible !important;
}

ul.admenus:after {
	margin: 0;
	padding: 0;
	content: ' ';
	display: block;
	height: 0px;
	clear: both;
}

ul.admenus li {
	float: left;
	display: inline;
	position: relative;
	font-size: 14px;
	font-weight: 400;
	text-transform: uppercase;
}

ul.admenus li a {
	display: block;
	line-height: 50px;
	padding: 0 20px;
	text-decoration: none;
	color: #2c2c2c;
	font-family: 'Oswald';
	font-size: 13px;
	font-weight: 400;
	transition: all 0.3s ease-in-out;
}

ul.admenus li a:hover, ul.admenus li a.hoverover {
	background: #f54325;
	color: #fff;
}

ul.admenus ul {
	position: absolute;
	display: none;
	top: 100%;
	border: 1px solid #ccc;
}

ul.admenus li:hover>ul {
	display: block;
}

ul.admenus ul li {
	z-index: 72;
	float: none;
	min-width: 160px;
	background: #f5f5f5;
	text-shadow: none;
}

ul.admenus ul li a {
	text-transform: none;
	font-weight: normal;
	color: #aaa;
	font-family: 'Arial';
}

ul.admenus ul li a:hover, ul.adajaxmenu ul li a.hover {
	background: #f54325;
}

ul.admenus ul ul {
	display: none;
	left: 100%;
	top: 0;
}

ul.adajaxmenu li div.submenu {
	position: absolute;
	width: 600px;
	z-index: 90;
	left: 0;
	top: 100%;
	overflow: hidden;
	min-height: 150px;
	background: #f0f0f0;
	-moz-transform: translate(0, 30px);
	-webkit-transform: translate(0, 30px);
	-o-transform: translate(0, 30px);
	transform: translate(0, 30px);
	transform-origin: 50% 0;
	visibility: hidden;
	opacity: 0;
	color: #929292;
	box-shadow: 0 10px 7px -7px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease-in-out;
}

ul.adajaxmenu li:hover div.submenu {
	visibility: visible;
	opacity: 1;
	-moz-transform: translate(0, 0);
	-webkit-transform: translate(0, 0);
	-o-transform: translate(0, 0);
	transform: translate(0, 0);
}

ul.adajaxmenu ul, ul.adajaxmenu ul li {
	display: block !important;
	border: 0 none !important;
	margin: 0 !important;
	padding: 0 !important;
}

ul.adajaxmenu ul li {
	background: none !important;
	float: none !important;
}

ul.adajaxmenu ul.verticlemenu {
	position: absolute;
	width: 33%;
	left: 0;
	top: 0;
	bottom: 0;
	background: #202020;
}

ul.adajaxmenu ul.postslist {
	position: relative;
	display: block;
	width: 65%;
	float: right;
	margin: 0 0 15px 0 !important;
	background: none;
}

ul.adajaxmenu ul.postslist li {
	display: block;
	overflow: hidden;
	position: relative;
	min-height: 60px;
	padding: 15px 8px 15px 110px !important
}

ul.adajaxmenu ul.postslist li .imgCont {
	position: absolute;
	left: 0;
	top: 15px;
	width: 100px;
	height: 70px;
	overflow: hidden;
	font-size: 0;
	line-height: 0;
	border: 1px solid #929292;
}

ul.adajaxmenu ul.postslist li .imgCont img {
	position: relative;
	top: -20px;
	padding: 0;
	width: 100px;
	height: 100px;
	display: block;
}

ul.adajaxmenu ul.postslist li a {
	display: block;
	line-height: 1.4;
	padding: 0 !important;
	color: #666;
	font-family: 'Arial';
	font-size: 12px;
	transition: all 0.3s ease-in-out;
}

ul.adajaxmenu ul.postslist li a:hover {
	color: #f54325;
	background: transparent;
}

ul.adajaxmenu .loader {
	background:
		url('https://4.bp.blogspot.com/-sRHd2OR7omQ/VFBOax0jdNI/AAAAAAAABgg/ei6bgO1agM0/s1600/adloading.gif')
		no-repeat scroll 0 0 transparent;
	width: 22px;
	height: 22px;
	position: absolute;
	top: 50%;
	margin-top: -11px;
	right: 5px;
}

ul.adajaxmenu .menuArrow {
	border-bottom: 4px solid transparent;
	border-top: 4px solid transparent;
	border-left: 4px solid #fff;
	display: block;
	height: 0;
	margin-top: -4px;
	position: absolute;
	right: 11px;
	top: 50%;
	width: 0;
}

#adajaxmenu {
	background: #fff;
	height: 50px;
	width: 100%;
	position: relative;
	border: 1px solid #e6e6e6;
	margin: 65px auto;
	padding: 0 20px;
}

li.search-form {
	float: right !important;
	margin: 0 20px 0 0;
}

li.search-form .searchbar {
	border: none;
	padding: 10px 5px;
	background: #f9f9f9;
	color: #fff;
	width: 350px;
}

li.search-form .searchbar:focus {
	border: none;
	outline: none;
	background: #fafafa;
	color: #666;
}

li.search-form .searchsubmit {
	background: lightgray;
	border: none;
	color: #fff;
	cursor: pointer;
	padding: 10px 5px;
	transition: all 0.3s ease-in-out;
}

li.search-form .searchsubmit:hover {
	opacity: 0.9;
}

.search-alert {
	color: #f9f9f9;
	padding: 2px 15px 2px 40px;
	display: none;
	margin: 5px;
	background: #333
		url(https://4.bp.blogspot.com/-Pzf65SZdXYo/VFHy3_xVhmI/AAAAAAAABg4/W2QdE2000f4/s1600/Indicate.png)
		no-repeat;
	background-position: 10px;
	border-radius: 5px;
	text-transform: lowercase;
}
/* Lazy Load Styles */
.card-image {
	display: block;
	min-height: 20rem; /* layout hack */
	background: #fff center center no-repeat;
	background-size: cover;
	filter: blur(3px); /* blur the lowres image */
}

.card-image > img {
	display: block;
	width: 100%;
	opacity: 0; /* visually hide the img element */
}

.card-image.is-loaded {
	filter: none; /* remove the blur on fullres image */
	transition: filter 1s;
}




/* Layout Styles */


.card-list {
	display: block;
	margin: 1rem auto;
	padding: 0;
	font-size: 0;
	text-align: center;
	list-style: none;
}

.card {
	display: inline-block;
	width: 90%;
	max-width: 20rem;
	margin: 1rem;
	font-size: 1rem;
	text-decoration: none;
	overflow: hidden;
	box-shadow: 0 0 3rem -1rem rgba(0,0,0,0.5);
	transition: transform 0.1s ease-in-out, box-shadow 0.1s;
}

.card:hover {
	transform: translateY(-0.5rem) scale(1.0125);
	box-shadow: 0 0.5em 3rem -1rem rgba(0,0,0,0.5);
}

.card-description {
	display: block;
	padding: 1em 0.5em;
	color: #515151;
	text-decoration: none;
}

.card-description > h2 {
	margin: 0 0 0.5em;
}

.card-description > p {
	margin: 0;
}
/* Reset */
@import url(//codepen.io/chrisdothtml/pen/ojLzJK.css);
.animate, .btn, .btn-border-o:before, .btn-border-o:after, .btn-border:before, .btn-border:after, .btn-border-rev-o:before, .btn-border-rev-o:after, .btn-border-rev:before, .btn-border-rev:after, .btn-fill-vert-o:before, .btn-fill-vert-o:after, .btn-fill-vert:before, .btn-fill-vert:after, .btn-fill-horz-o:before, .btn-fill-horz-o:after, .btn-fill-horz:before, .btn-fill-horz:after {
  transition: all 0.3s;
}

/* Main Styles */
.main-container {
  width: 100%;
  max-width: 750px;
  margin: 0 auto;
  padding: 0 15px;
  
}

h1 {
  line-height: 1;
  padding: 25px 0;
  border-bottom: 1px solid #2c3e50;
  font-size: 35px;
  color: #2c3e50;
  text-align: center;
}

section h2 {
  margin-bottom: 15px;
  font-weight: normal;
  font-size: 17px;
  color: #D2D2D2;
  text-align: center;
}

.btn {
  display: inline-block;
  line-height: 35px;
  margin: 8px;
  padding: 0 15px;
  font-size: 15px;
  position: relative;
  opacity: .999;
  border-radius: 3px;
}

.btn-border-o {
  background-color: transparent;
  border: 1px solid #d0d0d0;
  color: #B8B8B8;
}
.btn-border-o:before, .btn-border-o:after {
  content: '';
  border-style: solid;
  position: absolute;
  z-index: 5;
  border-radius: 3px;
  box-sizing: content-box;
}
.btn-border-o:before {
  width: 0;
  height: 100%;
  border-width: 1px 0 1px 0;
  top: -1px;
  left: 0;
  transition-delay: 0.05s;
}
.btn-border-o:after {
  width: 100%;
  height: 0;
  border-width: 0 1px 0 1px;
  top: 0;
  left: -1px;
}
.btn-border-o:hover:before {
  width: 100%;
}
.btn-border-o:hover:after {
  height: 100%;
}
.btn-border-o.btn-green:before, .btn-border-o.btn-green:after {
  border-color: #2ecc71;
}
.btn-border-o.btn-green:hover {
  color: #2ecc71;
}
.btn-border-o.btn-blue:before, .btn-border-o.btn-blue:after {
  border-color: #3498db;
}
.btn-border-o.btn-blue:hover {
  color: #3498db;
}
.btn-border-o.btn-purple:before, .btn-border-o.btn-purple:after {
  border-color: #9b59b6;
}
.btn-border-o.btn-purple:hover {
  color: #9b59b6;
}
.btn-border-o.btn-navy:before, .btn-border-o.btn-navy:after {
  border-color: #34495e;
}
.btn-border-o.btn-navy:hover {
  color: #34495e;
}
.btn-border-o.btn-orange:before, .btn-border-o.btn-orange:after {
  border-color: #e67e22;
}
.btn-border-o.btn-orange:hover {
  color: #e67e22;
}
.btn-border-o.btn-red:before, .btn-border-o.btn-red:after {
  border-color: #e74c3c;
}
.btn-border-o.btn-red:hover {
  color: #e74c3c;
}

.btn-border {
  background-color: #e5e5e5;
  border: 1px solid #e5e5e5;
  color: #a6a6a6;
}
.btn-border:before, .btn-border:after {
  content: '';
  border-style: solid;
  position: absolute;
  z-index: 5;
  border-radius: 3px;
  box-sizing: content-box;
}
.btn-border:before {
  width: 0;
  height: 100%;
  border-width: 1px 0 1px 0;
  top: -1px;
  left: 0;
  transition-delay: 0.05s;
}
.btn-border:after {
  width: 100%;
  height: 0;
  border-width: 0 1px 0 1px;
  top: 0;
  left: -1px;
}
.btn-border:hover {
  background-color: transparent;
}
.btn-border:hover:before {
  width: 100%;
}
.btn-border:hover:after {
  height: 100%;
}
.btn-border.btn-green:before, .btn-border.btn-green:after {
  border-color: #2ecc71;
}
.btn-border.btn-green:hover {
  color: #2ecc71;
}
.btn-border.btn-blue:before, .btn-border.btn-blue:after {
  border-color: #3498db;
}
.btn-border.btn-blue:hover {
  color: #3498db;
}
.btn-border.btn-purple:before, .btn-border.btn-purple:after {
  border-color: #9b59b6;
}
.btn-border.btn-purple:hover {
  color: #9b59b6;
}
.btn-border.btn-navy:before, .btn-border.btn-navy:after {
  border-color: #34495e;
}
.btn-border.btn-navy:hover {
  color: #34495e;
}
.btn-border.btn-orange:before, .btn-border.btn-orange:after {
  border-color: #e67e22;
}
.btn-border.btn-orange:hover {
  color: #e67e22;
}
.btn-border.btn-red:before, .btn-border.btn-red:after {
  border-color: #e74c3c;
}
.btn-border.btn-red:hover {
  color: #e74c3c;
}

.btn-border-rev-o {
  background-color: transparent;
  border: 1px solid #d0d0d0;
  color: #B8B8B8;
}
.btn-border-rev-o:before, .btn-border-rev-o:after {
  content: '';
  border-style: solid;
  position: absolute;
  z-index: 5;
  border-radius: 3px;
  box-sizing: content-box;
}
.btn-border-rev-o:before {
  width: 0;
  height: 100%;
  border-width: 1px 0 1px 0;
  top: -1px;
  right: 0;
  transition-delay: 0.05s;
}
.btn-border-rev-o:after {
  width: 100%;
  height: 0;
  border-width: 0 1px 0 1px;
  bottom: 0;
  left: -1px;
}
.btn-border-rev-o:hover:before {
  width: 100%;
}
.btn-border-rev-o:hover:after {
  height: 100%;
}
.btn-border-rev-o.btn-green:before, .btn-border-rev-o.btn-green:after {
  border-color: #2ecc71;
}
.btn-border-rev-o.btn-green:hover {
  color: #2ecc71;
}
.btn-border-rev-o.btn-blue:before, .btn-border-rev-o.btn-blue:after {
  border-color: #3498db;
}
.btn-border-rev-o.btn-blue:hover {
  color: #3498db;
}
.btn-border-rev-o.btn-purple:before, .btn-border-rev-o.btn-purple:after {
  border-color: #9b59b6;
}
.btn-border-rev-o.btn-purple:hover {
  color: #9b59b6;
}
.btn-border-rev-o.btn-navy:before, .btn-border-rev-o.btn-navy:after {
  border-color: #34495e;
}
.btn-border-rev-o.btn-navy:hover {
  color: #34495e;
}
.btn-border-rev-o.btn-orange:before, .btn-border-rev-o.btn-orange:after {
  border-color: #e67e22;
}
.btn-border-rev-o.btn-orange:hover {
  color: #e67e22;
}
.btn-border-rev-o.btn-red:before, .btn-border-rev-o.btn-red:after {
  border-color: #e74c3c;
}
.btn-border-rev-o.btn-red:hover {
  color: #e74c3c;
}

.btn-border-rev {
  background-color: #e5e5e5;
  border: 1px solid #e5e5e5;
  color: #a6a6a6;
}
.btn-border-rev:before, .btn-border-rev:after {
  content: '';
  border-style: solid;
  position: absolute;
  z-index: 5;
  border-radius: 3px;
  box-sizing: content-box;
}
.btn-border-rev:before {
  width: 0;
  height: 100%;
  border-width: 1px 0 1px 0;
  top: -1px;
  right: 0;
}
.btn-border-rev:after {
  width: 100%;
  height: 0;
  border-width: 0 1px 0 1px;
  bottom: 0;
  left: -1px;
  transition-delay: 0.05s;
}
.btn-border-rev:hover {
  background-color: transparent;
}
.btn-border-rev:hover:before {
  width: 100%;
}
.btn-border-rev:hover:after {
  height: 100%;
}
.btn-border-rev.btn-green:before, .btn-border-rev.btn-green:after {
  border-color: #2ecc71;
}
.btn-border-rev.btn-green:hover {
  color: #2ecc71;
}
.btn-border-rev.btn-blue:before, .btn-border-rev.btn-blue:after {
  border-color: #3498db;
}
.btn-border-rev.btn-blue:hover {
  color: #3498db;
}
.btn-border-rev.btn-purple:before, .btn-border-rev.btn-purple:after {
  border-color: #9b59b6;
}
.btn-border-rev.btn-purple:hover {
  color: #9b59b6;
}
.btn-border-rev.btn-navy:before, .btn-border-rev.btn-navy:after {
  border-color: #34495e;
}
.btn-border-rev.btn-navy:hover {
  color: #34495e;
}
.btn-border-rev.btn-orange:before, .btn-border-rev.btn-orange:after {
  border-color: #e67e22;
}
.btn-border-rev.btn-orange:hover {
  color: #e67e22;
}
.btn-border-rev.btn-red:before, .btn-border-rev.btn-red:after {
  border-color: #e74c3c;
}
.btn-border-rev.btn-red:hover {
  color: #e74c3c;
}

.btn-fill-vert-o {
  background-color: transparent;
  border: 1px solid #d0d0d0;
  color: #B8B8B8;
  overflow: hidden;
}
.btn-fill-vert-o:before, .btn-fill-vert-o:after {
  content: '';
  width: 100%;
  height: 0;
  opacity: 0;
  position: absolute;
  left: 0;
  z-index: -1;
}
.btn-fill-vert-o:before {
  top: 50%;
}
.btn-fill-vert-o:after {
  bottom: 50%;
}
.btn-fill-vert-o:hover {
  color: #fff;
}
.btn-fill-vert-o:hover:before, .btn-fill-vert-o:hover:after {
  height: 50%;
  opacity: 1;
}
.btn-fill-vert-o.btn-green:before, .btn-fill-vert-o.btn-green:after {
  background-color: #2ecc71;
}
.btn-fill-vert-o.btn-green:hover {
  border-color: #2ecc71;
}
.btn-fill-vert-o.btn-blue:before, .btn-fill-vert-o.btn-blue:after {
  background-color: #3498db;
}
.btn-fill-vert-o.btn-blue:hover {
  border-color: #3498db;
}
.btn-fill-vert-o.btn-purple:before, .btn-fill-vert-o.btn-purple:after {
  background-color: #9b59b6;
}
.btn-fill-vert-o.btn-purple:hover {
  border-color: #9b59b6;
}
.btn-fill-vert-o.btn-navy:before, .btn-fill-vert-o.btn-navy:after {
  background-color: #34495e;
}
.btn-fill-vert-o.btn-navy:hover {
  border-color: #34495e;
}
.btn-fill-vert-o.btn-orange:before, .btn-fill-vert-o.btn-orange:after {
  background-color: #e67e22;
}
.btn-fill-vert-o.btn-orange:hover {
  border-color: #e67e22;
}
.btn-fill-vert-o.btn-red:before, .btn-fill-vert-o.btn-red:after {
  background-color: #e74c3c;
}
.btn-fill-vert-o.btn-red:hover {
  border-color: #e74c3c;
}

.btn-fill-vert {
  background-color: #e5e5e5;
  border: 1px solid #e5e5e5;
  color: #a6a6a6;
  overflow: hidden;
}
.btn-fill-vert:before, .btn-fill-vert:after {
  content: '';
  width: 100%;
  height: 0;
  opacity: 0;
  position: absolute;
  left: 0;
  z-index: -1;
}
.btn-fill-vert:before {
  top: 50%;
}
.btn-fill-vert:after {
  bottom: 50%;
}
.btn-fill-vert:hover {
  color: #fff;
}
.btn-fill-vert:hover:before, .btn-fill-vert:hover:after {
  height: 50%;
  opacity: 1;
}
.btn-fill-vert.btn-green:before, .btn-fill-vert.btn-green:after {
  background-color: #2ecc71;
}
.btn-fill-vert.btn-green:hover {
  border-color: #2ecc71;
}
.btn-fill-vert.btn-blue:before, .btn-fill-vert.btn-blue:after {
  background-color: #3498db;
}
.btn-fill-vert.btn-blue:hover {
  border-color: #3498db;
}
.btn-fill-vert.btn-purple:before, .btn-fill-vert.btn-purple:after {
  background-color: #9b59b6;
}
.btn-fill-vert.btn-purple:hover {
  border-color: #9b59b6;
}
.btn-fill-vert.btn-navy:before, .btn-fill-vert.btn-navy:after {
  background-color: #34495e;
}
.btn-fill-vert.btn-navy:hover {
  border-color: #34495e;
}
.btn-fill-vert.btn-orange:before, .btn-fill-vert.btn-orange:after {
  background-color: #e67e22;
}
.btn-fill-vert.btn-orange:hover {
  border-color: #e67e22;
}
.btn-fill-vert.btn-red:before, .btn-fill-vert.btn-red:after {
  background-color: #e74c3c;
}
.btn-fill-vert.btn-red:hover {
  border-color: #e74c3c;
}

.btn-fill-horz-o {
  background-color: transparent;
  border: 1px solid #d0d0d0;
  color: #B8B8B8;
  overflow: hidden;
}
.btn-fill-horz-o:before, .btn-fill-horz-o:after {
  content: '';
  width: 0;
  height: 100%;
  opacity: 0;
  position: absolute;
  top: 0;
  z-index: -1;
}
.btn-fill-horz-o:before {
  left: 50%;
}
.btn-fill-horz-o:after {
  right: 50%;
}
.btn-fill-horz-o:hover {
  color: #fff;
}
.btn-fill-horz-o:hover:before, .btn-fill-horz-o:hover:after {
  width: 50%;
  opacity: 1;
}
.btn-fill-horz-o.btn-green:before, .btn-fill-horz-o.btn-green:after {
  background-color: #2ecc71;
}
.btn-fill-horz-o.btn-green:hover {
  border-color: #2ecc71;
}
.btn-fill-horz-o.btn-blue:before, .btn-fill-horz-o.btn-blue:after {
  background-color: #3498db;
}
.btn-fill-horz-o.btn-blue:hover {
  border-color: #3498db;
}
.btn-fill-horz-o.btn-purple:before, .btn-fill-horz-o.btn-purple:after {
  background-color: #9b59b6;
}
.btn-fill-horz-o.btn-purple:hover {
  border-color: #9b59b6;
}
.btn-fill-horz-o.btn-navy:before, .btn-fill-horz-o.btn-navy:after {
  background-color: #34495e;
}
.btn-fill-horz-o.btn-navy:hover {
  border-color: #34495e;
}
.btn-fill-horz-o.btn-orange:before, .btn-fill-horz-o.btn-orange:after {
  background-color: #e67e22;
}
.btn-fill-horz-o.btn-orange:hover {
  border-color: #e67e22;
}
.btn-fill-horz-o.btn-red:before, .btn-fill-horz-o.btn-red:after {
  background-color: #e74c3c;
}
.btn-fill-horz-o.btn-red:hover {
  border-color: #e74c3c;
}

.btn-fill-horz {
  background-color: #e5e5e5;
  border: 1px solid #e5e5e5;
  color: #a6a6a6;
  overflow: hidden;
}
.btn-fill-horz:before, .btn-fill-horz:after {
  content: '';
  width: 0;
  height: 100%;
  opacity: 0;
  position: absolute;
  top: 0;
  z-index: -1;
}
.btn-fill-horz:before {
  left: 50%;
}
.btn-fill-horz:after {
  right: 50%;
}
.btn-fill-horz:hover {
  color: #fff;
}
.btn-fill-horz:hover:before, .btn-fill-horz:hover:after {
  width: 50%;
  opacity: 1;
}
.btn-fill-horz.btn-green:before, .btn-fill-horz.btn-green:after {
  background-color: #2ecc71;
}
.btn-fill-horz.btn-green:hover {
  border-color: #2ecc71;
}
.btn-fill-horz.btn-blue:before, .btn-fill-horz.btn-blue:after {
  background-color: #3498db;
}
.btn-fill-horz.btn-blue:hover {
  border-color: #3498db;
}
.btn-fill-horz.btn-purple:before, .btn-fill-horz.btn-purple:after {
  background-color: #9b59b6;
}
.btn-fill-horz.btn-purple:hover {
  border-color: #9b59b6;
}
.btn-fill-horz.btn-navy:before, .btn-fill-horz.btn-navy:after {
  background-color: #34495e;
}
.btn-fill-horz.btn-navy:hover {
  border-color: #34495e;
}
.btn-fill-horz.btn-orange:before, .btn-fill-horz.btn-orange:after {
  background-color: #e67e22;
}
.btn-fill-horz.btn-orange:hover {
  border-color: #e67e22;
}
.btn-fill-horz.btn-red:before, .btn-fill-horz.btn-red:after {
  background-color: #e74c3c;
}
.btn-fill-horz.btn-red:hover {
  border-color: #e74c3c;
}

</style>




</style>
</head>
<body>
	<div class="site-outer">
		<nav class="navbar navbar-fixed-top">
			<section class="container-fluid">
				<div class="row">
					<div class="container-menu">
						<nav class="menu" id="hb">
							<div></div>
							<div></div>
							<div></div>
						</nav>
						<div class="logotype">
							<div class="big"><img src=./img/로고.jpg width = 180px; height = 50px;/></div>
						</div>
						<div class="checkout">
							<h3>
								<a href="#">LOGIN</a>
								<td><a href="#">JOIN</a> <a href="#"><i
										class="fa fa-shopping-cart red"></i> 장바구니 <span
										class="badge badge-red">0</span></a>
							</h3>
						</div>
					</div>
				</div>
			</section>
		</nav>
	</div>
		<ul id="adajaxmenu" class="admenus">
			<li><a href='/'><i class='fa fa-home fa-lg'></i></a></li>
			<li><a href="#">Category 1</a>
			<ul>
				<li><a
					href="https://mastamvan.blogspot.co.id/search/label/Blogger">Blogger</a></li>
				<li><a href="https://mastamvan.blogspot.com/search/label/CSS">CSS</a></li>
				<li><a href="https://mastamvan.blogspot.com/search/label/HTML">HTML</a></li>
				<li><a
					href="https://mastamvan.blogspot.com/search/label/Tools">Tools</a></li>
				<li><a
					href="https://mastamvan.blogspot.com/search/label/Widget">Widget</a></li>
			</ul></li>
			<li><a href="#">Category 2</a>
				<ul>
					<li><a
						href="https://mastamvan.blogspot.com/search/label/Templates">Template</a></li>
					<li><a href="https://mastamvan.blogspot.com/search/label/Seo">Seo</a></li>
					<li><a
						href="https://mastamvan.blogspot.com/search/label/Tips Dan Trik">Tips
							Dan Trik</a></li>
					<li><a href="https://mastamvan.blogspot.com/search/label/Umum">Umum</a></li>
					<li><a
						href="https://mastamvan.blogspot.com/search/label/Widget">Personal</a></li>
				</ul></li>
			<li><a href="#">Category 3</a>
			<ul>
				<li><a
					href="https://mastamvan.blogspot.com/search/label/Blogger">Design</a></li>
				<li><a href="https://mastamvan.blogspot.com/search/label/CSS">Material</a></li>
				<li><a href="https://mastamvan.blogspot.com/search/label/HTML">Ebok
						Google</a></li>
				<li><a
					href="https://mastamvan.blogspot.com/search/label/Tools">Tools</a></li>
				<li><a
					href="https://mastamvan.blogspot.com/search/label/Widget">Widget</a></li>
			</ul></li>
			<li><a href="https://mastamvan.blogspot.com/p/blog-page.html">Sitemap</a></li>
			<li><a href="https://fb.com/tejasukmana99">Contact</a></li>
			<li class='search-form'>
				<form action='/search' class='searchblog' method='get'>
					<input class='searchbar' name='q' placeholder='검색어입력' size='30'
											type='text' />
					<input class='searchsubmit' type='submit' value='검색' />
				</form>
			    <p class='search-alert'>검색어를 입력하세요!
			</li>    
			</ul>
			

	<div class="footer">
		<footer class="footer-inner">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<h3 class="h3">회사소개</h3>
						<ul class="footer-list">
							<li><a href="#">Our story</a></li>
							<li><a href="#">Venue</a></li>
							<li><a href="#">Other</a></li>
						</ul>
					</div>
					<div class="col-md-3">
						<h3 class="h3">고객센터</h3>
						<ul class="footer-list">
							<li><a href="#">IKEA</a></li>
							<li><a href="#">MIO</a></li>
							<li><a href="#">BAUHAUS</a></li>
						</ul>
					</div>
					<div class="col-md-3">
						<h3 class="h3">메일문의</h3>
						<ul class="footer-list">
							<li><a href="#">Chat with us</a></li>
							<li><a href="#">+46(0)2453 352</a></li>
							<li><a href="#">E-mail us</a></li>
						</ul>
					</div>
					<div class="col-md-3">
						<h3 class="h3">Socials</h3>
						<ul class="footer-list footer-list-inline">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-instagram"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<!-- NAVIGATION -->
	<div class="navigation">
		<button class="navigation-login">
			<i class="fa fa-shopping-cart"></i> 장바구니 <span
						class="badge badge-white">0</span>
		</button>
		<div class="navigation-search">
			<div id="search">
				<input type="text" name="input" class="input" placeholder="Search" />
				<button type="reset" class="search" id="search-button"></button>
			</div>
		</div>
		<div class="navigation-content">
			<h3>Menu</h3>
			<ul class="navigation-menu">
				<li><a href="#" class="active">홈</a></li>
				<li><a href="#"><i class="red fa fa-circle"></i> 여기를
						</a></li>
				<li><a href="#"><i class="beige fa fa-circle"></i> 목록
						</a></li>
				<li><a href="#"><i class="orange fa fa-circle"></i>
						카테고리</a></li>
				<li><a href="#"><i class="blue fa fa-circle"></i> 로 </a></li>
			</ul>
			<h3>플리마켓</h3>
			<ul class="navigation-menu">
				<li><a href="#">About Us</a></li>
				<li><a href="#">Contact</a></li>
				<li><a href="#">Info</a></li>
				<li><a href="#">Collaboration</a></li>
				<li><a href="#">Customer Service</a></li>
			</ul>
		</div>
	</div>
	<!-- CHECKOUT -->
</body>
<script>
	(function() {
		var expand;
		expand = function() {
			var $input, $search;
			$search = $('.search');
			$input = $('.input');
			if ($search.hasClass('close')) {
				$search.removeClass('close');
				$input.removeClass('square');
			} else {
				$search.addClass('close');
				$input.addClass('square');
			}
			if ($search.hasClass('close')) {
				$input.focus();
			} else {
				$input.blur();
			}
		};

		$(function() {
			var $container, $menu, $menubtn, $navbar;
			$menubtn = $('#hb');
			$navbar = $('.navbar');
			$menu = $('.navigation');
			$container = $('.site-inner');
			$menubtn.on('click', function(e) {
				if ($menubtn.hasClass('active')) {
					$menubtn.removeClass('active');
					$menu.removeClass('slide-right');
					$container.removeClass('slide-right');
					$navbar.removeClass('slide-right');
				} else {
					$menubtn.addClass('active');
					$menu.addClass('slide-right');
					$container.addClass('slide-right');
					$navbar.addClass('slide-right');
				}
			});
		});
		$(function() {
			var $button, clickOrTouch;
			clickOrTouch = 'click touchstart';
			$button = $('#search-button');
			$button.on(clickOrTouch, expand);
		});
		$(function() {
			var $box;
			$box = $('.sm-box');
			$box.on('click', function(e) {
				e.preventDefault();
				var $this;
				$this = $(this);
				if ($this.hasClass('active')) {
					$this.removeClass('active');
				} else {
					$this.addClass('active');
				}
			});
		});
	}.call(this));

	$("select").each(function() {
		var $this = $(this), $options = $(this).children("option").length;

		$this.addClass("select-hidden");
		$this.wrap("<div class='select'></div>");
		$this.after("<div class='select-styled'></div>");

		var $styledSelect = $this.next("div.select-styled");
		$styledSelect.text($this.children("option").eq(0).text());

		var $list = $("<ul />", {
			"class" : "select-options"
		}).insertAfter($styledSelect);

		for (var i = 0; i < $options; i++) {
			$("<li />", {
				text : $this.children("option").eq(i).text(),
				rel : $this.children("option").eq(i).val()
			}).appendTo($list);
		}

		var $listItems = $list.children("li");

		$styledSelect.on("click", function(e) {
			e.stopPropagation();
			$("div.select-styled.active").each(function() {
				$(this).removeClass("active").next("ul.select-options").hide();
			});

			$(this).toggleClass("active").next("ul.select-options").toggle();
		});

		$listItems.on("click", function(e) {
			e.stopPropagation();
			$styledSelect.text($(this).text()).removeClass("active");
			$this.val($(this).attr("rel"));
			$list.hide();
		});

		$(document).on("click", function() {
			$styledSelect.removeClass("active");
			$list.hide();
		});

		$(".select-sibling").next(".select-styled").css({
			"border-top" : "0px"
		});
	});

	(function() {
		var $addItem = $("#add-item");
		var $badge = $(".badge");
		var $count = 1;

		$addItem.on("click", function(e) {
			e.preventDefault();
			$badge.html($count++);
		});
	}.call(this));
</script>
<script type='text/javascript'>
	//<![CDATA[
	if (typeof (jQuery) == 'undefined') {
		document
				.write("<scr" + "ipt type=\"text/javascript\" src=\"https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js\"></scr" + "ipt>");
	}
	//]]>
</script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$('#adajaxmenu').ajaxBloggerMenu({
			numPosts : 4, // Number of Posts to show
			defaultImg : 'https://url-to-image.com/default-image.jpeg' // Default thumbnail Image
		});
	});

	$(function() {
		$('.searchblog')
				.submit(
						function(e) {
							if ($('.search-form .searchbar').val().length == 0) {
								$('.search-form .search-alert')
										.fadeIn().css('display',
												'inline-block');
								e.preventDefault();
							}
						});
	});
</script>
<script>
//This is "probably" IE9 compatible but will need some fallbacks for IE8
//- (event listeners, forEach loop)

//wait for the entire page to finish loading
window.addEventListener('load', function() {
	
	// setTimeout to simulate the delay from a real page load
	setTimeout(lazyLoad, 1000);
	
});

</script>
</html>