<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
////
// FORM STEPS - REGISTRATION
////
.form-steps {
	display: block;
	width: 100%;
	position: relative;
	margin: 40px 0;

	&:after {
		content: "";
		display: table;
		clear: both;
	}

	&__item {
		padding: 0;
		position: relative;
		display: block;
		float: left;
		width: 25%;
		text-align: center;
	}

	&__item-content {
		display: inline-block;
	}
	// Step Icon
	&__item-icon {
		background: #eceff1;
		color: #8191ab;
		display: block;
		border-radius: 100%;
		text-align: center;
		width: 25px;
		height: 25px;
		line-height: 25px;
		margin: 0 auto 10px auto;
		position: relative;
		font-size: 13px;
		font-weight: 700;
		z-index: 2;
	}
	// Step text
	&__item-text {
		font-size: 13px;
		color: #8191ab;
		font-weight: 500;
	}

	&__item-line {
		display: inline-block;
		height: 3px;
		width: 100%;
		background: #cfd8dc;
		float: left;
		position: absolute;
		left: -50%;
		top: 12px;
		z-index: 1;
	}
	// Active Step
	&__item--active {
		.form-steps__item-icon {
			background: #00aeef;
			color: #ffffff;
		}

		.form-steps__item-text {
			color: #4f5e77;
		}

		.form-steps__item-line {
			background: #00aeef;
		}
	}
	// Active Step
	&__item--completed {
		.form-steps__item-text {
			color: #4f5e77;
		}

		.form-steps__item-icon {
			background: #00aeef;
			background-image: url(data:image/svg+xml;base64,PHN2ZyBkYXRhLW5hbWU9IkxheWVyIDEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgdmlld0JveD0iMCAwIDkuMTIgNyI+PHBhdGggZmlsbD0iI2ZmZiIgZD0iTTkuMTIgMS4wNkw4LjA2IDAgMy4xOCA0Ljg4IDEuMDYgMi43NiAwIDMuODIgMy4xOCA3bDUuOTQtNS45NHoiLz48L3N2Zz4=);
			color: transparent;
			background-size: 10px;
			background-repeat: no-repeat;
			background-position: center center;
			width: 25px;
			height: 25px;
			line-height: 25px;
		}

		.form-steps__item-line {
			background: #00aeef;
		}
	}
}

</style>
<body>
	
					<nav class="form-steps">
						<div class="form-steps__item form-steps__item--active">
							<div class="form-steps__item-content">
								<span class="form-steps__item-icon">1</span>
								<span class="form-steps__item-text">Customer</span>
							</div>

						</div>
						<div class="form-steps__item">
							<div class="form-steps__item-content">
								<span class="form-steps__item-icon">2</span>
								<span class="form-steps__item-line"></span>
								<span class="form-steps__item-text">Delivery</span>
							</div>
						</div>
						<div class="form-steps__item">
							<div class="form-steps__item-content">
								<span class="form-steps__item-icon">3</span>
								<span class="form-steps__item-line"></span>
								<span class="form-steps__item-text">Payment</span>
							</div>
						</div>
						<div class="form-steps__item">
							<div class="form-steps__item-content">
								<span class="form-steps__item-icon">4</span>
								<span class="form-steps__item-line"></span>
								<span class="form-steps__item-text">Review</span>
							</div>
						</div>
					</nav>



					<nav class="form-steps">
						<div class="form-steps__item form-steps__item--completed">
							<div class="form-steps__item-content">
								<span class="form-steps__item-icon">1</span>
								<span class="form-steps__item-text">Customer</span>
							</div>

						</div>
						<div class="form-steps__item form-steps__item--active">
							<div class="form-steps__item-content">
								<span class="form-steps__item-icon">2</span>
								<span class="form-steps__item-line"></span>
								<span class="form-steps__item-text">Delivery</span>
							</div>
						</div>
						<div class="form-steps__item">
							<div class="form-steps__item-content">
								<span class="form-steps__item-icon">3</span>
								<span class="form-steps__item-line"></span>
								<span class="form-steps__item-text">Payment</span>
							</div>
						</div>
						<div class="form-steps__item">
							<div class="form-steps__item-content">
								<span class="form-steps__item-icon">4</span>
								<span class="form-steps__item-line"></span>
								<span class="form-steps__item-text">Review</span>
							</div>
						</div>
					</nav>



					<nav class="form-steps">
						<div class="form-steps__item form-steps__item--completed">
							<div class="form-steps__item-content">
								<span class="form-steps__item-icon">1</span>
								<span class="form-steps__item-text">Customer</span>
							</div>

						</div>
						<div class="form-steps__item form-steps__item--completed">
							<div class="form-steps__item-content">
								<span class="form-steps__item-icon">2</span>
								<span class="form-steps__item-line"></span>
								<span class="form-steps__item-text">Delivery</span>
							</div>
						</div>
						<div class="form-steps__item form-steps__item--active">
							<div class="form-steps__item-content">
								<span class="form-steps__item-icon">3</span>
								<span class="form-steps__item-line"></span>
								<span class="form-steps__item-text">Payment</span>
							</div>
						</div>
						<div class="form-steps__item">
							<div class="form-steps__item-content">
								<span class="form-steps__item-icon">4</span>
								<span class="form-steps__item-line"></span>
								<span class="form-steps__item-text">Review</span>
							</div>
						</div>
					</nav>



					<nav class="form-steps">
						<div class="form-steps__item form-steps__item--completed">
							<div class="form-steps__item-content">
								<span class="form-steps__item-icon">1</span>
								<span class="form-steps__item-text">Customer</span>
							</div>

						</div>
						<div class="form-steps__item form-steps__item--completed">
							<div class="form-steps__item-content">
								<span class="form-steps__item-icon">2</span>
								<span class="form-steps__item-line"></span>
								<span class="form-steps__item-text">Delivery</span>
							</div>
						</div>
						<div class="form-steps__item form-steps__item--completed">
							<div class="form-steps__item-content">
								<span class="form-steps__item-icon">3</span>
								<span class="form-steps__item-line"></span>
								<span class="form-steps__item-text">Payment</span>
							</div>
						</div>
						<div class="form-steps__item form-steps__item--active">
							<div class="form-steps__item-content">
								<span class="form-steps__item-icon">4</span>
								<span class="form-steps__item-line"></span>
								<span class="form-steps__item-text">Review</span>
							</div>
						</div>
					</nav>
</body>
</html>