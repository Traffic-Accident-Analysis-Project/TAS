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
        height: auto;
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
        width: auto;
        height: 920px;
        border: 2px solid black;
        border-radius: 5%;
        margin : 20px auto;
      }
      .survey-popup button {
        position: absolute;
        right: 40%;
        bottom: 5%;
        width: 20%;
        cursor: pointer;
      }
      .survey-popup h2{
        text-align: center;
      }
      .age-wrap {
        margin-top: 5px;
        display: flex;
      }
      .age-wrap input {
        margin-top: 5px;
        margin-left: 50px;
      }
      .stat-1-bottom {
        margin-top: 15px;
      }
      .stat-1-bottom input[type = checkbox]{
        margin-top: 5px;
        margin-left: 80px;
      }
      .stat-1-top {
        margin-top: 15px;
      }
      .stat-1-top input[type = checkbox]{
        margin-top: 5px;
        margin-left: 50px;
      }
    </style>
    <link
      rel="stylesheet"
      href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"
    />
    <script
      type="text/javascript"
      src="http://code.jquery.com/jquery-latest.min.js"
    ></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  </head>
  <body>
    <div class="container">
      <div class="survey-popup">
        <img src="../HTML&CSS/img/T.A.S-logo.png" alt="" />
        <h1>Survey on satisfaction with traffic<br /> accident statistics service</h1>
        <p>
            hello. This is Na Jeong-su and Jung Ji-yu,<br /> 
            developers of a traffic accident service provider.<br />
            This time, our development team is conducting a service provision satisfaction survey.<br />
            We collect your opinions about our service and make suggestions for better service.<br />
            Even if you are busy, please take a moment to participate in the survey.<br />
            This survey is used for research purposes only and is confidential.
        </p>
        <div class="personal-information-wraper">
          <div class="row gender">
            <h3>gender</h3>
            <h5>man <input id="gender1" type="checkbox" /></h5>
            <h5>women <input id="gender2" type="checkbox" /></h5>
          </div>
          <div class="age">
            <h3>age</h3>
            <div class="row age-wrap">
                <h5>under 20 years old |<br /><input id="age1" type="checkbox" /></h5>
                <h5>20 to 29 years old |<br /><input id="age2" type="checkbox" /></h5>
                <h5>30 to 39 years old |<br /><input id="age3" type="checkbox" /></h5>
                <h5>40 to 49 years old |<br /><input id="age4" type="checkbox" /></h5>
                <h5>50 to 69 years old |<br /><input id="age5" type="checkbox" /></h5>
                <h5>over 60 years old<br /><input id="age6" type="checkbox" /></h5>
            </div>
          </div>
        </div>
        <div class="survey-wraper">
          <div class="question">
            <h3>1) Were you satisfied with the statistical data room data?</h3>
            <div class="row stat answer">
              <h5>&#10003very unsatisfied<input id="q1-1" type="checkbox" /></h5>
              <h5>&#10003unsatisfied<input id="q1-2" type="checkbox" /></h5>
              <h5>&#10003usually<input id="q1-3" type="checkbox" /></h5>
              <h5>&#10003satisfied<input id="q1-4" type="checkbox" /></h5>
              <h5>&#10003very satisfied<input id="q1-5" type="checkbox" /></h5>
            </div>
          </div>
          <div class="question">
            <h3>
              1-1) If you were satisfied, what material was helpful?
              (Multiple selection possible)
            </h3>
            <div class="stat-1 answer">
                <div class="row stat-1-top">
                    <h5>&#10003bar graph<br /><input id="q1-1-1" type="checkbox" /></h5>
                    <h5>&#10003line graph<br /><input id="q1-1-2" type="checkbox" /></h5>
                    <h5>&#10003pie chart<br /><input id="q1-1-3" type="checkbox" /></h5>
                    <h5>&#10003Check the number of accidents<br /><input id="q1-1-4" type="checkbox" /></h5>
                </div>
                <div class="row stat-1-bottom">
                    <h5>&#10003Type selection function<br /><input id="q1-1-5" type="checkbox" /></h5>
                    <h5>&#10003Confirmation of data by year<br /><input id="q1-1-6" type="checkbox" /></h5>
                    <h5>
                      &#10003other<br /><input
                        id="q1-1-7"
                        type="text"
                        placeholder="Enter any other helpful information"
                      />
                    </h5>
                </div>
            </div>
          </div>
          <div class="question">
            <h3>2) Were you satisfied with the inquiry function and answer of the customer center?</h3>
            <div class="row QnA answer">
              <h5>&#10003very unsatisfied <input id="q2-1" type="checkbox" /></h5>
              <h5>&#10003unsatisfied <input id="q2-2" type="checkbox" /></h5>
              <h5>&#10003usually <input id="q2-3" type="checkbox" /></h5>
              <h5>&#10003satisfied <input id="q2-4" type="checkbox" /></h5>
              <h5>&#10003very satisfied <input id="q2-5" type="checkbox" /></h5>
            </div>
          </div>
          <div class="question">
            <h3>3) If you have any additional questions or suggestions, please write.</h3>
            <input id="suggestions" type="text" placeholder="" />
          </div>
        </div>
        <button id="submit" type="button">submit</button>
        <h2>thank you</h2>
      </div>
    </div>
  </body>
</html>
<script>
  var surveyGender = "";
  var surveyOld = "";
  var surveyQ1 = "";
  var surveyQ2 = "";
  var surveyQ3 = "";
  $('#gender1').mousedown(function(){
    $('#gender2').prop('checked',false);
    surveyGender = "남";
  })
  $('#gender2').mousedown(function(){
    $('#gender1').prop('checked',false);
    surveyGender = "여";
  })
  $('#age1').mousedown(function(){
    $('#age2').prop('checked',false);
    $('#age3').prop('checked',false);
    $('#age4').prop('checked',false);
    $('#age5').prop('checked',false);
    $('#age6').prop('checked',false);
    surveyOld = "만20세 이하";
  })
  $('#age2').mousedown(function(){
    $('#age1').prop('checked',false);
    $('#age3').prop('checked',false);
    $('#age4').prop('checked',false);
    $('#age5').prop('checked',false);
    $('#age6').prop('checked',false);
    surveyOld = "만20세~만29세";
  })
  $('#age3').mousedown(function(){
    $('#age1').prop('checked',false);
    $('#age2').prop('checked',false);
    $('#age4').prop('checked',false);
    $('#age5').prop('checked',false);
    $('#age6').prop('checked',false);
    surveyOld = "만30세~만39세";
  })
  $('#age4').mousedown(function(){
    $('#age1').prop('checked',false);
    $('#age2').prop('checked',false);
    $('#age3').prop('checked',false);
    $('#age5').prop('checked',false);
    $('#age6').prop('checked',false);
    surveyOld = "만40세~만49세";
  })
  $('#age5').mousedown(function(){
    $('#age1').prop('checked',false);
    $('#age2').prop('checked',false);
    $('#age3').prop('checked',false);
    $('#age4').prop('checked',false);
    $('#age6').prop('checked',false);
    surveyOld = "만50세~만59세";
  })
  $('#age6').mousedown(function(){
    $('#age1').prop('checked',false);
    $('#age2').prop('checked',false);
    $('#age3').prop('checked',false);
    $('#age4').prop('checked',false);
    $('#age5').prop('checked',false);
    surveyOld = "만60세 이상";
  })
  $('#q1-1').mousedown(function(){
    $('#q1-2').prop('checked',false);
    $('#q1-3').prop('checked',false);
    $('#q1-4').prop('checked',false);
    $('#q1-5').prop('checked',false);
    surveyQ1 = "매우 불만족";
  })
  $('#q1-2').mousedown(function(){
    $('#q1-1').prop('checked',false);
    $('#q1-3').prop('checked',false);
    $('#q1-4').prop('checked',false);
    $('#q1-5').prop('checked',false);
    surveyQ1 = "불만족";
  })
  $('#q1-3').mousedown(function(){
    $('#q1-1').prop('checked',false);
    $('#q1-2').prop('checked',false);
    $('#q1-4').prop('checked',false);
    $('#q1-5').prop('checked',false);
    surveyQ1 = "보통";
  })
  $('#q1-4').mousedown(function(){
    $('#q1-1').prop('checked',false);
    $('#q1-2').prop('checked',false);
    $('#q1-3').prop('checked',false);
    $('#q1-5').prop('checked',false);
    surveyQ1 = "만족";
  })
  $('#q1-5').mousedown(function(){
    $('#q1-1').prop('checked',false);
    $('#q1-2').prop('checked',false);
    $('#q1-3').prop('checked',false);
    $('#q1-4').prop('checked',false);
    surveyQ1 = "매우 만족";
  })
  $('#q2-1').mousedown(function(){
    $('#q2-2').prop('checked',false);
    $('#q2-3').prop('checked',false);
    $('#q2-4').prop('checked',false);
    $('#q2-5').prop('checked',false);
    surveyQ2 = "매우 불만족";
  })
  $('#q2-2').mousedown(function(){
    $('#q2-1').prop('checked',false);
    $('#q2-3').prop('checked',false);
    $('#q2-4').prop('checked',false);
    $('#q2-5').prop('checked',false);
    surveyQ2 = "불만족";
  })
  $('#q2-3').mousedown(function(){
    $('#q2-1').prop('checked',false);
    $('#q2-2').prop('checked',false);
    $('#q2-4').prop('checked',false);
    $('#q2-5').prop('checked',false);
    surveyQ2 = "보통";
  })
  $('#q2-4').mousedown(function(){
    $('#q2-1').prop('checked',false);
    $('#q2-2').prop('checked',false);
    $('#q2-3').prop('checked',false);
    $('#q2-5').prop('checked',false);
    surveyQ2 = "만족";
  })
  $('#q2-5').mousedown(function(){
    $('#q2-1').prop('checked',false);
    $('#q2-2').prop('checked',false);
    $('#q2-3').prop('checked',false);
    $('#q2-4').prop('checked',false);
    surveyQ2 = "매우 만족";
  })
  
  $('#submit').click(function(){
    if($('.gender input:checkbox:checked').length==0){
      alert("Please select your gender.");
      return false;
    }
    if($('.age input:checkbox:checked').length==0){
      alert("Please select your age")
      return false;
    }
    if($('.stat input:checkbox:checked').length==0){
      alert("Please select the statistical data room satisfaction level.");
      return false;
    }
    if($('.QnA input:checkbox:checked').length==0){
      alert("Customer Center Inquiry Please select the function satisfaction.");
      return false;
    }

    var surveyQ11 = "";
    if($('#q1-1-1').is(":checked")){
      surveyQ11 += "/막대그래프"
    }
    if($('#q1-1-2').is(":checked")){
      surveyQ11 += "/선형그래프"
    }
    if($('#q1-1-3').is(":checked")){
      surveyQ11 += "/파이차트"
    }
    if($('#q1-1-4').is(":checked")){
      surveyQ11 += "/사고건수확인"
    }
    if($('#q1-1-5').is(":checked")){
      surveyQ11 += "/유형선택기능"
    }
    if($('#q1-1-6').is(":checked")){
      surveyQ11 += "/년도별자료확인"
    }
    surveyQ11 += "/"+$('#q1-1-7').val();
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
      url: "http://localhost:8080/api/v1/survey",
      type: "POST",
      contentType: "application/json", // 서버에 json type으로 보낼 예정(요청)
      dataType: "json", // 서버 결과를 json으로 응답 받겠다.
      data: JSON.stringify(jsonData),
      success: function (response){
        if(response>0){
          alert("Thank you for taking part in the survey.")
          window.close();
        }
      }
    })
  })
</script>
