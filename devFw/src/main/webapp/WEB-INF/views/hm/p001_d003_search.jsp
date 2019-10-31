<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
  font-family: sans-serif;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
}

.step-indicator {
  margin-top: 50px;
  display: flex;
  align-items: center;
  padding: 0 40px;
}

.step {
  display: flex;
  align-items: center;
  flex-direction: column;
  position: relative;
  z-index: 1;
}

.step-indicator .step-icon {
  height: 50px;
  width: 50px;
  border-radius: 50%;
  background: #c2c2c2;
  font-size: 10px;
  text-align: center;
  color: #ffffff;
  position: relative;
  line-height: 50px;
  font-size: 20px;
}

.step.active .step-icon {
  background: crimson;
}

.step p {
  text-align: center;
  position: absolute;
  bottom: -40px;
  color: #c2c2c2;
  font-size: 14px;
  font-weight: bold;
}

.step.active p {
  color: crimson;
}

.step.step2 p,
.step.step3 p {
  left: 50%;
  transform: translateX(-50%);
}

.indicator-line {
  width: 100%;
  height: 2px;
  background: #c2c2c2;
  flex: 1;
}

.indicator-line.active {
  background: crimson;
}

@media screen and (max-width: 500px) {
  .step p {
    font-size: 11px;
    bottom: -20px;
  }
}
</style>

<body>
	<h1>스토어 개설 현황</h1>

	<div class="container">
  <section class="step-indicator">
      <div class="step step1 active">
          <div class="step-icon">1</div>
        <p>신청서 작성</p>
      </div>
    <div class="indicator-line active"></div>
    <div class="step step2">
        <div class="step-icon">2</div>
      <p>검토중</p>
    </div>
    <div class="indicator-line"></div>
    <div class="step step3">
        <div class="step-icon">3</div>
      <p>스토어 개설</p>
    </div>
  </section>
	</div>
</body>
</html>