<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Survey</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

.row {
	display: flex;
	justify-content: space-between;
}

.container {
	width: 100%;
}

.survey-popup img {
	width: 10%;
	margin-left: 45%;
}

.survey-popup h1 {
	text-align: center;
	margin: 20px;
}

.survey-popup p {
	width: 84%;
	margin-left: 8%;
	text-align: center;
	border: 4px double black
}

.gender {
	width: 30%;
	margin: 20px;
}

.age {
	width: 95%;
	margin: 20px;
}

.question {
	margin: 20px;
}

.answer {
	width: 95%;
	margin: 10px;
}

#suggestions {
	width: 95%;
	height: 40px;
}

.survey-popup {
	top: 5%;
	left: 10%;
	width: 800px;
	height: 850px;
	position: fixed;
	z-index: 5;
	cursor: move;
	border: 2px solid black;
	border-radius: 5%;
}

.survey-popup button {
	position: absolute;
	right: 40%;
	bottom: 5%;
	width: 20%;
	cursor: pointer;
}

.survey-popup h2 {
	text-align: center;
}
</style>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
</head>
<body>
	<div class="container">
		<div class="survey-popup">
			<img src="/resources/static/images/T.A.S-survey-logo.png" alt="" />
			<h1>교통사고 통계서비스 만족도에 관한 조사</h1>
			<p>
				안녕하세요. 교통사고 통계서비스 제공 개발자 나정수, 정지유 입니다.<br /> 이번에 저희 개발팀에서 서비스 제공에
				대한 만족도 조사를 실시하고 있습니다.<br /> 서비스에 대한 여러분의 의견을 수렴하여 더 좋은 서비스에 대한 제안을
				하려고 합니다.<br /> 바쁘시더라도 잠시 시간을 내어 설문에 참여해주시면 갑사드리겠습니다.<br /> 본 설문조사는
				연구 목적으로만 사용되며 비밀이 보장됩니다.
			</p>
			<div class="personal-information-wraper">
				<div class="row gender">
					<h3>성별</h3>
					<h5>
						남 <input id="gender1" type="checkbox" />
					</h5>
					<h5>
						여 <input id="gender2" type="checkbox" />
					</h5>
				</div>
				<div class="row age">
					<h3>연령</h3>
					<h5>
						만20세 이하<br /> <input id="age1" type="checkbox" />
					</h5>
					<h5>
						만20세~만29세<br /> <input id="age2" type="checkbox" />
					</h5>
					<h5>
						만30세~만39세<br /> <input id="age3" type="checkbox" />
					</h5>
					<h5>
						만40세~만49세<br /> <input id="age4" type="checkbox" />
					</h5>
					<h5>
						만50세~만59세<br /> <input id="age5" type="checkbox" />
					</h5>
					<h5>
						만60세 이상<br /> <input id="age6" type="checkbox" />
					</h5>
				</div>
			</div>
			<div class="survey-wraper">
				<div class="question">
					<h3>1) 통계자료실의 자료는 만족스러우셨습니까?</h3>
					<div class="row stat answer">
						<h5>
							&#10003매우 불만족<input id="q1-1" type="checkbox" />
						</h5>
						<h5>
							&#10003불만족<input id="q1-2" type="checkbox" />
						</h5>
						<h5>
							&#10003보통<input id="q1-3" type="checkbox" />
						</h5>
						<h5>
							&#10003만족<input id="q1-4" type="checkbox" />
						</h5>
						<h5>
							&#10003매우 만족<input id="q1-5" type="checkbox" />
						</h5>
					</div>
				</div>
				<div class="question">
					<h3>1-1) 만족스러우셨다면 어떤 자료가 도움이 되셨습니까? (중복선택가능)</h3>
					<div class="row stat-1 answer">
						<h5>
							&#10003막대그래프<br /> <input id="q1-1-1" type="checkbox" />
						</h5>
						<h5>
							&#10003선형그래프<br /> <input id="q1-1-2" type="checkbox" />
						</h5>
						<h5>
							&#10003파이차트<br /> <input id="q1-1-3" type="checkbox" />
						</h5>
						<h5>
							&#10003사고건수확인<br /> <input id="q1-1-4" type="checkbox" />
						</h5>
						<h5>
							&#10003유형선택기능<br /> <input id="q1-1-5" type="checkbox" />
						</h5>
						<h5>
							&#10003년도별자료확인<br /> <input id="q1-1-6" type="checkbox" />
						</h5>
						<h5>
							&#10003기타<br /> <input id="q1-1-7" type="text"
								placeholder="기타 도움이 된 사항을 입력" />
						</h5>
					</div>
				</div>
				<div class="question">
					<h3>2) 고객센터의 문의기능 및 답변은 만족스러우셨습니까?</h3>
					<div class="row QnA answer">
						<h5>
							&#10003매우 불만족 <input id="q2-1" type="checkbox" />
						</h5>
						<h5>
							&#10003불만족 <input id="q2-2" type="checkbox" />
						</h5>
						<h5>
							&#10003보통 <input id="q2-3" type="checkbox" />
						</h5>
						<h5>
							&#10003만족 <input id="q2-4" type="checkbox" />
						</h5>
						<h5>
							&#10003매우 만족 <input id="q2-5" type="checkbox" />
						</h5>
					</div>
				</div>
				<div class="question">
					<h3>3) 추가 문의사항이나 건의사항이 있다면 작성해주십시오.</h3>
					<input id="suggestions" type="text" placeholder="" />
				</div>
			</div>
			<button id="submit" type="button">제출하기</button>
			<h2>감사합니다.</h2>
		</div>
	</div>
</body>
</html>
<script>
	$(function() {
		$(".survey-popup").draggable();
	});
	var surveyGender = "";
	var surveyOld = "";
	var surveyQ1 = "";
	var surveyQ2 = "";
	var surveyQ3 = "";
	$('#gender1').mousedown(function() {
		$('#gender2').prop('checked', false);
		surveyGender = "남";
	})
	$('#gender2').mousedown(function() {
		$('#gender1').prop('checked', false);
		surveyGender = "여";
	})
	$('#age1').mousedown(function() {
		$('#age2').prop('checked', false);
		$('#age3').prop('checked', false);
		$('#age4').prop('checked', false);
		$('#age5').prop('checked', false);
		$('#age6').prop('checked', false);
		surveyOld = "만20세 이하";
	})
	$('#age2').mousedown(function() {
		$('#age1').prop('checked', false);
		$('#age3').prop('checked', false);
		$('#age4').prop('checked', false);
		$('#age5').prop('checked', false);
		$('#age6').prop('checked', false);
		surveyOld = "만20세~만29세";
	})
	$('#age3').mousedown(function() {
		$('#age1').prop('checked', false);
		$('#age2').prop('checked', false);
		$('#age4').prop('checked', false);
		$('#age5').prop('checked', false);
		$('#age6').prop('checked', false);
		surveyOld = "만30세~만39세";
	})
	$('#age4').mousedown(function() {
		$('#age1').prop('checked', false);
		$('#age2').prop('checked', false);
		$('#age3').prop('checked', false);
		$('#age5').prop('checked', false);
		$('#age6').prop('checked', false);
		surveyOld = "만40세~만49세";
	})
	$('#age5').mousedown(function() {
		$('#age1').prop('checked', false);
		$('#age2').prop('checked', false);
		$('#age3').prop('checked', false);
		$('#age4').prop('checked', false);
		$('#age6').prop('checked', false);
		surveyOld = "만50세~만59세";
	})
	$('#age6').mousedown(function() {
		$('#age1').prop('checked', false);
		$('#age2').prop('checked', false);
		$('#age3').prop('checked', false);
		$('#age4').prop('checked', false);
		$('#age5').prop('checked', false);
		surveyOld = "만60세 이상";
	})
	$('#q1-1').mousedown(function() {
		$('#q1-2').prop('checked', false);
		$('#q1-3').prop('checked', false);
		$('#q1-4').prop('checked', false);
		$('#q1-5').prop('checked', false);
		surveyQ1 = "매우 불만족";
	})
	$('#q1-2').mousedown(function() {
		$('#q1-1').prop('checked', false);
		$('#q1-3').prop('checked', false);
		$('#q1-4').prop('checked', false);
		$('#q1-5').prop('checked', false);
		surveyQ1 = "불만족";
	})
	$('#q1-3').mousedown(function() {
		$('#q1-1').prop('checked', false);
		$('#q1-2').prop('checked', false);
		$('#q1-4').prop('checked', false);
		$('#q1-5').prop('checked', false);
		surveyQ1 = "보통";
	})
	$('#q1-4').mousedown(function() {
		$('#q1-1').prop('checked', false);
		$('#q1-2').prop('checked', false);
		$('#q1-3').prop('checked', false);
		$('#q1-5').prop('checked', false);
		surveyQ1 = "만족";
	})
	$('#q1-5').mousedown(function() {
		$('#q1-1').prop('checked', false);
		$('#q1-2').prop('checked', false);
		$('#q1-3').prop('checked', false);
		$('#q1-4').prop('checked', false);
		surveyQ1 = "매우 만족";
	})
	$('#q2-1').mousedown(function() {
		$('#q2-2').prop('checked', false);
		$('#q2-3').prop('checked', false);
		$('#q2-4').prop('checked', false);
		$('#q2-5').prop('checked', false);
		surveyQ2 = "매우 불만족";
	})
	$('#q2-2').mousedown(function() {
		$('#q2-1').prop('checked', false);
		$('#q2-3').prop('checked', false);
		$('#q2-4').prop('checked', false);
		$('#q2-5').prop('checked', false);
		surveyQ2 = "불만족";
	})
	$('#q2-3').mousedown(function() {
		$('#q2-1').prop('checked', false);
		$('#q2-2').prop('checked', false);
		$('#q2-4').prop('checked', false);
		$('#q2-5').prop('checked', false);
		surveyQ2 = "보통";
	})
	$('#q2-4').mousedown(function() {
		$('#q2-1').prop('checked', false);
		$('#q2-2').prop('checked', false);
		$('#q2-3').prop('checked', false);
		$('#q2-5').prop('checked', false);
		surveyQ2 = "만족";
	})
	$('#q2-5').mousedown(function() {
		$('#q2-1').prop('checked', false);
		$('#q2-2').prop('checked', false);
		$('#q2-3').prop('checked', false);
		$('#q2-4').prop('checked', false);
		surveyQ2 = "매우 만족";
	})

	$('#submit').click(function() {
		if ($('.gender input:checkbox:checked').length == 0) {
			alert("성별을 선택해주세요.");
			return false;
		}
		if ($('.age input:checkbox:checked').length == 0) {
			alert("연령을 선택해주세요.")
			return false;
		}
		if ($('.stat input:checkbox:checked').length == 0) {
			alert("통계자료실 만족도를 선택해주세요.");
			return false;
		}
		if ($('.QnA input:checkbox:checked').length == 0) {
			alert("고객센터의 문의기능 만족도를 선택해주세요.");
			return false;
		}

		var surveyQ11 = "";
		if ($('#q1-1-1').is(":checked")) {
			surveyQ11 += "/막대그래프"
		}
		if ($('#q1-1-2').is(":checked")) {
			surveyQ11 += "/선형그래프"
		}
		if ($('#q1-1-3').is(":checked")) {
			surveyQ11 += "/파이차트"
		}
		if ($('#q1-1-4').is(":checked")) {
			surveyQ11 += "/사고건수확인"
		}
		if ($('#q1-1-5').is(":checked")) {
			surveyQ11 += "/유형선택기능"
		}
		if ($('#q1-1-6').is(":checked")) {
			surveyQ11 += "/년도별자료확인"
		}
		surveyQ11 += "/" + $('#q1-1-7').val();
		surveyQ3 = $('#suggestions').val();
		var jsonData = {
			"surveyGender" : surveyGender,
			"surveyOld" : surveyOld,
			"surveyQ1" : surveyQ1,
			"surveyQ11" : surveyQ11,
			"surveyQ2" : surveyQ2,
			"surveyQ3" : surveyQ3
		}
		$.ajax({
			url : "/api/v1/survey",
			type : "POST",
			contentType : "application/json", // 서버에 json type으로 보낼 예정(요청)
			dataType : "json", // 서버 결과를 json으로 응답 받겠다.
			data : JSON.stringify(jsonData),
			success : function(response) {
				if (response > 0) {
					alert("설문조사에 참여해주셔서 감사합니다.")
					window.close();
					self.close();
					window.opener = window.location.href;
					self.close();
					window.open('about:blank', '_self').close();
					// VScode에서는 그냥 닫혔으나 JSP에서는 닫히지 않아 이게 최선?
				}
			}
		})
	})
</script>
