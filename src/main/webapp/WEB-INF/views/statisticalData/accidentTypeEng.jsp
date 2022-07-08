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
    <title>T.A.S Accident Type</title>
    <link rel="stylesheet" href="/resources/static/css/engCss/styleEng.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>
  <body>
    <div class="container">
      <div class="top-background-color">
        <header>
          <div class="circle-01"></div>
          <div class="circle-02"></div>
          <div class="circle-03"></div>
          <div class="row top">
            <a href="/tas/main/eng">home</a>
            <i
              class="fa-solid fa-house-chimney"
              style="color: #eaeaea; margin-left: 5px; margin-top: 3px"
            ></i>
            <select name="lang-selbox" id="language-select">
              <option value="eng">English</option>
              <option value="korea">Korean</option>
            </select>
          </div>
          <div class="row header-category">
            <div class="logo">
              <a href="/tas/main/eng">
                <img src="/resources/static/images/T.A.S-logo.png" alt="" />
              </a>
            </div>
            <div class="row category">
              <div class="category-link dropdown">
                <div class="link-button">Statistics Reference</div>
                <div class="dropdown-content">
                  <a href="/law/eng">Violation of Law</a>
                  <a href="/alcohol/eng">Degree of Drinking</a>
                  <a href="/road/eng">Road Type</a>
                  <a href="/accident/eng">Accident Type</a>
                  <a href="/city/eng">By City</a>
                </div>
              </div>
              <div class="category-link service-link">
                <a href="/tas/intro/eng">Service Introduction</a>
              </div>
              <div class="category-link client-link">
                <a href="/service/center/eng">Service Center</a>
              </div>
              <div class="category-link login-link">
                <input id="loginSessionHidden" type="hidden" value="" /> 
				<a id="loginTag" href="/login/eng">Login</a> 
				<a id="infoTag" style="display: none" href="/tas/my/info/eng">MyPage</a>
              </div>
            </div>
          </div>
        </header>
      </div>
      <!-- header end -->
      <div class="bottom-background-color">
        <div class="statistical-page-main">
          <div class="statistical-page-main-title">
            <h1>Accident Type</h1>
          </div>
          <div class="by-category-main-section">
            <div class="statistical-page-left-section-graph">
              <!-- <img src="../img/임시이미지.png" alt="" /> -->
              <div class="canvas-wrapper">
                <canvas id="histogram-accident"></canvas>
                <canvas id="histogram-new-accident" style="display: none;"></canvas>
                <canvas id="lineChart-accident"></canvas>
                <canvas id="lineChart-new-accident" style="display: none;"></canvas>
              </div>
            </div>
            <div class="statistical-page-right-section">
              <div class="select-wrap">
                <div class="accident-type-sel accident-type-year">
                  <input type="hidden" id="accidentYearHidden" />
                  <select
                    name="accident-type-year"
                    id="accident-type-year"
                    onchange="accidentYear(this.value)"
                  >
                    <option value="">year</option>
                    <option value="2005">2005</option>
                    <option value="2006">2006</option>
                    <option value="2007">2007</option>
                    <option value="2008">2008</option>
                    <option value="2009">2009</option>
                    <option value="2010">2010</option>
                    <option value="2011">2011</option>
                    <option value="2012">2012</option>
                    <option value="2013">2013</option>
                    <option value="2014">2014</option>
                    <option value="2015">2015</option>
                    <option value="2016">2016</option>
                    <option value="2017">2017</option>
                    <option value="2018">2018</option>
                    <option value="2019">2019</option>
                    <option value="2020">2020</option>
                  </select>
                </div>
                <div class="accident-type-sel accident-type-month">
                  <input type="hidden" id="accidentMonthHidden" />
                  <select
                    name="accident-type-month"
                    id="accident-type-month"
                    onchange="accidentMonth(this.value)"
                  >
                    <option value="">month</option>
                    <option value="전체">all</option>
                    <option value="월별전체">all by month</option>
                    <option value="1월">Jen</option>
                    <option value="2월">Feb</option>
                    <option value="3월">Mar</option>
                    <option value="4월">Apr</option>
                    <option value="5월">May</option>
                    <option value="6월">Jun</option>
                    <option value="7월">Jul</option>
                    <option value="8월">Aug</option>
                    <option value="9월">Sep</option>
                    <option value="10월">Oct</option>
                    <option value="11월">Nov</option>
                    <option value="12월">Dec</option>
                  </select>
                </div>
                <div class="accident-type-sel accident-type-person-car">
                  <input type="hidden" id="accidentPersonCarHidden" />
                  <select
                    name="accident-type-person-car"
                    id="accident-type-person-car"
                    onchange="accidentPersonCar(this.value)"
                  >
                    <option value="">Choose Accident type</option>
                    <option value="차대사람">Car vs Person</option>
                    <option value="차대차">Car vs Car</option>
                    <option value="차량단독">Car only</option>
                    <option value="철길건널목">Train Rail Crossing</option>
                  </select>
                </div>
                <div class="accident-type-sel accident-type">
                  <input type="hidden" id="accidentTypeHidden" />
                  <select
                    name="accident-type"
                    id="accident-type"
                    onchange="accidentType(this.value)"
                  >
                  <option value="">Choose Accident type</option>
                    <!-- 차대사람 -->
                      <option class="allOption car-vs-person" value="횡단중">Crossing</option>
                      <option class="allOption car-vs-person" value="차도통행중">Crossing on the Road</option>
                      <option class="allOption car-vs-person" value="길가장자리구역통행중">
                        Passing through the Roadside Area</option>
                      <option class="allOption car-vs-person" value="보도통행중">on the Sidewalk</option>
                      <option class="allOption car-vs-person" value="기타불명">Other/Unknown</option>
                    </div>
                    <!-- 차대차 -->
                      <option class="allOption car-vs-car" value="충돌">Crash</option>
                      <option class="allOption car-vs-car" value="추돌">Bump</option>
                      <option class="allOption car-vs-car" value="진행중추돌">Bump in Progress</option>
                      <option class="allOption car-vs-car" value="주정차중추돌">Bump while Parked</option>
                      <option class="allOption car-vs-car" value="횡단중">Crossing</option>
                      <option class="allOption car-vs-car" value="기타불명">Other/Unknown</option>
                    <!-- 차량단독 -->
                      <option class="allOption only-car" value="전도전복">Fall/Overturn</option>
                      <option class="allOption only-car" value="충돌">Crash</option>
                      <option class="allOption only-car" value="추락">Bump</option>
                      <option class="allOption only-car" value="기타이탈">Other Departures</option>
                      <option class="allOption only-car" value="기타불명">Other/Unknown</option>
                    <!-- 철길건널목 -->
                      <option class="allOption railroad" value="경보기무시">Ignore the Alarm</option>
                      <option class="allOption railroad" value="직전진행">Go Ahead</option>
                      <option class="allOption railroad" value="차단기돌파">Break through the Breaker</option>
                      <option class="allOption railroad" value="철길건널목">Railroad Crossing</option>
                      <option class="allOption railroad" value="기타불명">Other/Unknown</option>
                  </select>
                </div>
                <button id="lookUpByLaw" type="button">Load</button>
              </div>
              <div class="accidents-dead-injury-card-wrap">
                <div class="accidents-card card-accidents hight">
                  <h2>Number of Accidents</h2>
                  <i class="fa-solid fa-car-burst fa-3x"></i>
                  <div id="accidentsAccidents" class="accidents-item">0</div>
                </div>
                <div class="accidents-card card-dead middle">
                  <h2>Number of Deaths</h2>
                  <i class="fa-solid fa-skull fa-3x"></i>
                  <div id="accidentsDead" class="accidents-item">0</div>
                </div>
                <div class="accidents-card card-injury rower">
                  <h2>Number of Injured</h2>
                  <i class="fa-solid fa-person-falling-burst fa-3x"></i>
                  <div id="accidentsInjury" class="accidents-item">0</div>
                </div>
              </div>
              <div class="excel-down-button">
                <a id="excelDownEng">Excel Downlod</a>
              </div>
            </div>
          </div>
        </div>
        <footer>
          <div class="footer-img">
            <img src="/resources/static/images/T.A.S-logo.png" alt="" />
          </div>
          <div class="footer-info">
              <p>Terms of Service | privacy policy | Operational management policy</p>
              <p>email : jyg12770@google.com | email : skwjdtn3171@naver.com</p>
              <p>
                (Zip code)34838 20, Jungang-ro 121beon-gil, Jung-gu, Daejeon, Republic of Korea 
              </p>
              <p>Main Phone : 042-222-2402</p>
            </div>
          <div class="footer-btn">
            <button
              type="button"
              style="cursor: pointer"
              onclick="window.scrollTo({top:0, left:0, behavior:'smooth'});"
            >
              top
            </button>
            <i class="fa-solid fa-angle-up"></i>
          </div>
        </footer>
      </div>
    </div>
  </body>
  <script
    type="module"
    src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
  ></script>
  <script
    nomodule
    src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
  ></script>
  <!-- JQuery -->
  <script
    src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
    crossorigin="anonymous"
  ></script>
  <!-- Chart.js -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="/resources/static/js/StatIndex.js"></script>
  <script>
    var accidentYear = function (value) {
      $("#accidentYearHidden").val(value);
    };
    var accidentMonth = function (value) {
      $("#accidentMonthHidden").val(value);
    };
    var accidentPersonCar = function (value) {
      $("#accidentPersonCarHidden").val(value);
    };
    var accidentType = function (value) {
      $("#accidentTypeHidden").val(value);
    };

    allOptionHide();

    // 사고유형(3번째) 선택 안했을시 사고유형(4번째) 숨기기
    function allOptionHide(){
      var PersonCarHidden = $("#accidentPersonCarHidden").val();
      if (PersonCarHidden == "") {
        $('.allOption').hide();
      }
    }

    // 사고유형(3번째)에 따라 option보이고 숨기기
    $("#accident-type-person-car").change(function () {
      var PersonCarHidden = $("#accidentPersonCarHidden").val();
      if (PersonCarHidden == "") {
        $('.allOption').hide();
      }
      if (PersonCarHidden == "차대사람") {
        $(".car-vs-person").show();
        $(".car-vs-car").hide();
        $(".only-car").hide();
        $(".railroad").hide();
      }
      if (PersonCarHidden == "차대차") {
        $(".car-vs-person").hide();
        $(".car-vs-car").show();
        $(".only-car").hide();
        $(".railroad").hide();
      }
      if (PersonCarHidden == "차량단독") {
        $(".car-vs-person").hide();
        $(".car-vs-car").hide();
        $(".only-car").show();
        $(".railroad").hide();
      }
      if (PersonCarHidden == "철길건널목") {
        $(".car-vs-person").hide();
        $(".car-vs-car").hide();
        $(".only-car").hide();
        $(".railroad").show();
      }
    });

    // 조회하기 버튼 눌렀을 때 함수
    $("#lookUpByLaw").on("click", function () {
      // 조회하기 버튼 초기화로 바꾸기
      if ($("#lookUpByLaw").text() == "Reset") {
        location.reload();
        return false;
      }
      $("#lookUpByLaw").text("Reset");
      // input[hidden]의 값을 변수에 담기
      var yearHidden = $("#accidentYearHidden").val();
      var monthHidden = $("#accidentMonthHidden").val();
      var PersonCarHidden = $("#accidentPersonCarHidden").val();
      var accidentTypeHidden = $("#accidentTypeHidden").val();

      if (
        yearHidden == "" ||
        monthHidden == "" ||
        PersonCarHidden == "" ||
        accidentTypeHidden == ""
      ) {
        alert("Please Check select box");
        return false;
      }

      // Chart.js 구현하기
      $("#histogram-accident").css("display", "none");
      $("#histogram-new-accident").css("display", "block");
      $("#lineChart-accident").css("display", "none");
      $("#lineChart-new-accident").css("display", "block");
      $.ajax({
        url:
          "/api/v1/accident/year/" +
          yearHidden +
          "/month/월별전체/type/" +
          PersonCarHidden +
          "/motion/" +
          accidentTypeHidden,
        type: "GET",
        dataType: "json",
        success: function (response){
          var dataAccidents = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
          var dataDeath = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
          var dataInjured = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
          for (var i = 0; i < response.length; i++) {
            // 여기에 if문으로 년도,월,유형 등 조정사항 입력
            // 월별 data 입력
            if (response[i].month == "jan") {
              dataAccidents[0] += response[i].사고건수;
              dataDeath[0] += response[i].사망자수;
              dataInjured[0] += response[i].부상자수;
            }
            if (response[i].month == "feb") {
              dataAccidents[1] += response[i].사고건수;
              dataDeath[1] += response[i].사망자수;
              dataInjured[1] += response[i].부상자수;
            }
            if (response[i].month == "mar") {
              dataAccidents[2] += response[i].사고건수;
              dataDeath[2] += response[i].사망자수;
              dataInjured[2] += response[i].부상자수;
            }
            if (response[i].month == "apr") {
              dataAccidents[3] += response[i].사고건수;
              dataDeath[3] += response[i].사망자수;
              dataInjured[3] += response[i].부상자수;
            }
            if (response[i].month == "may") {
              dataAccidents[4] += response[i].사고건수;
              dataDeath[4] += response[i].사망자수;
              dataInjured[4] += response[i].부상자수;
            }
            if (response[i].month == "jun") {
              dataAccidents[5] += response[i].사고건수;
              dataDeath[5] += response[i].사망자수;
              dataInjured[5] += response[i].부상자수;
            }
            if (response[i].month == "jul") {
              dataAccidents[6] += response[i].사고건수;
              dataDeath[6] += response[i].사망자수;
              dataInjured[6] += response[i].부상자수;
            }
            if (response[i].month == "aug") {
              dataAccidents[7] += response[i].사고건수;
              dataDeath[7] += response[i].사망자수;
              dataInjured[7] += response[i].부상자수;
            }
            if (response[i].month == "sep") {
              dataAccidents[8] += response[i].사고건수;
              dataDeath[8] += response[i].사망자수;
              dataInjured[8] += response[i].부상자수;
            }
            if (response[i].month == "oct") {
              dataAccidents[9] += response[i].사고건수;
              dataDeath[9] += response[i].사망자수;
              dataInjured[9] += response[i].부상자수;
            }
            if (response[i].month == "nov") {
              dataAccidents[10] += response[i].사고건수;
              dataDeath[10] += response[i].사망자수;
              dataInjured[10] += response[i].부상자수;
            }
            if (response[i].month == "dec") {
              dataAccidents[11] += response[i].사고건수;
              dataDeath[11] += response[i].사망자수;
              dataInjured[11] += response[i].부상자수;
            }
          }
          var myChart = new Chart(contextNewAccidentHitogram, {
            type: "bar", // 차트의 형태
            data: {
              // 차트에 들어갈 데이터
              labels: [
                //x 축
                "1",
                "2",
                "3",
                "4",
                "5",
                "6",
                "7",
                "8",
                "9",
                "10",
                "11",
                "12",
              ],
              datasets: [
                {
                  //데이터
                  label: "Number of Accidents", //차트 제목
                  fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                  data: dataAccidents,
                  backgroundColor: "rgba(255, 99, 132, 0.2)",
                  borderColor: "rgba(255, 99, 132, 1)",
                  borderWidth: 1, //경계선 굵기
                },
                {
                  label: "Number of Deaths",
                  fill: false,
                  data: dataDeath,
                  backgroundColor: "rgba(54, 162, 235, 0.2)",
                  borderColor: "rgba(54, 162, 235, 1)",
                  borderWidth: 1,
                },
                {
                  label: "Number of Injured",
                  fill: false,
                  data: dataInjured,
                  backgroundColor: "rgba(255, 206, 86, 0.2)",
                  borderColor: "rgba(255, 206, 86, 1)",
                  borderWidth: 1,
                },
              ],
            },
            options: {
              plugins: {
                title: {
                  display: true,
                  text: "Bar Chart",
                },
                subtitle: {
                  display: true,
                  text: "Histogram by Month",
                  color: "skyblue",
                },
              },
            },
          });
        }
      })
      $.ajax({
        url:
          "/api/v1/accident/type/" +
          PersonCarHidden +
          "/motion/" +
          accidentTypeHidden,
        type: "GET",
        dataType: "json",
        success: function (response){
          var dataAccidents = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
          var dataDeath = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
          var dataInjured = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
          for (var i = 0; i < response.length; i++) {
            if (response[i].month != "all") continue;
            if (response[i].시점 == 2005) {
              dataAccidents[0] += response[i].사고건수;
              dataDeath[0] += response[i].사망자수;
              dataInjured[0] += response[i].부상자수;
            }
            if (response[i].시점 == 2006) {
              dataAccidents[1] += response[i].사고건수;
              dataDeath[1] += response[i].사망자수;
              dataInjured[1] += response[i].부상자수;
            }
            if (response[i].시점 == 2007) {
              dataAccidents[2] += response[i].사고건수;
              dataDeath[2] += response[i].사망자수;
              dataInjured[2] += response[i].부상자수;
            }
            if (response[i].시점 == 2008) {
              dataAccidents[3] += response[i].사고건수;
              dataDeath[3] += response[i].사망자수;
              dataInjured[3] += response[i].부상자수;
            }
            if (response[i].시점 == 2009) {
              dataAccidents[4] += response[i].사고건수;
              dataDeath[4] += response[i].사망자수;
              dataInjured[4] += response[i].부상자수;
            }
            if (response[i].시점 == 2010) {
              dataAccidents[5] += response[i].사고건수;
              dataDeath[5] += response[i].사망자수;
              dataInjured[5] += response[i].부상자수;
            }
            if (response[i].시점 == 2011) {
              dataAccidents[6] += response[i].사고건수;
              dataDeath[6] += response[i].사망자수;
              dataInjured[6] += response[i].부상자수;
            }
            if (response[i].시점 == 2012) {
              dataAccidents[7] += response[i].사고건수;
              dataDeath[7] += response[i].사망자수;
              dataInjured[7] += response[i].부상자수;
            }
            if (response[i].시점 == 2013) {
              dataAccidents[8] += response[i].사고건수;
              dataDeath[8] += response[i].사망자수;
              dataInjured[8] += response[i].부상자수;
            }
            if (response[i].시점 == 2014) {
              dataAccidents[9] += response[i].사고건수;
              dataDeath[9] += response[i].사망자수;
              dataInjured[9] += response[i].부상자수;
            }
            if (response[i].시점 == 2015) {
              dataAccidents[10] += response[i].사고건수;
              dataDeath[10] += response[i].사망자수;
              dataInjured[10] += response[i].부상자수;
            }
            if (response[i].시점 == 2016) {
              dataAccidents[11] += response[i].사고건수;
              dataDeath[11] += response[i].사망자수;
              dataInjured[11] += response[i].부상자수;
            }
            if (response[i].시점 == 2017) {
              dataAccidents[12] += response[i].사고건수;
              dataDeath[12] += response[i].사망자수;
              dataInjured[12] += response[i].부상자수;
            }
            if (response[i].시점 == 2018) {
              dataAccidents[13] += response[i].사고건수;
              dataDeath[13] += response[i].사망자수;
              dataInjured[13] += response[i].부상자수;
            }
            if (response[i].시점 == 2019) {
              dataAccidents[14] += response[i].사고건수;
              dataDeath[14] += response[i].사망자수;
              dataInjured[14] += response[i].부상자수;
            }
            if (response[i].시점 == 2020) {
              dataAccidents[15] += response[i].사고건수;
              dataDeath[15] += response[i].사망자수;
              dataInjured[15] += response[i].부상자수;
            }
          }

          var myChart = new Chart(contextNewAccidentLineChart, {
            type: "line", // 차트의 형태
            data: {
              // 차트에 들어갈 데이터
              labels: [
                //x 축
                "2005",
                "2006",
                "2007",
                "2008",
                "2009",
                "2010",
                "2011",
                "2012",
                "2013",
                "2014",
                "2015",
                "2016",
                "2017",
                "2018",
                "2019",
                "2020",
              ],
              datasets: [
                {
                  //데이터
                  label: "Number of Accidents", //차트 제목
                  fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                  data: dataAccidents,
                  backgroundColor: "rgba(255, 99, 132, 0.2)",
                  borderColor: "rgba(255, 99, 132, 1)",
                  borderWidth: 1, //경계선 굵기
                },
                {
                  label: "Number of Deaths",
                  fill: false,
                  data: dataDeath,
                  backgroundColor: "rgba(54, 162, 235, 0.2)",
                  borderColor: "rgba(54, 162, 235, 1)",
                  borderWidth: 1,
                },
                {
                  label: "Number of Injured",
                  fill: false,
                  data: dataInjured,
                  backgroundColor: "rgba(255, 206, 86, 0.2)",
                  borderColor: "rgba(255, 206, 86, 1)",
                  borderWidth: 1,
                },
              ],
            },
            options: {
              responsive: true,
              plugins: {
                title: {
                  display: true,
                  text: "Line Chart",
                },
                subtitle: {
                  display: true,
                  text: "Chart by year",
                  color: "skyblue",
                },
              },
            },
          });
        }
      })


      // option으로 선택한 값에대한 data받아오는 ajax
      $.ajax({
        url:
          "/api/v1/accident/year/" +
          yearHidden +
          "/month/" +
          monthHidden +
          "/type/" +
          PersonCarHidden +
          "/motion/" +
          accidentTypeHidden,
        type: "GET",
        dataType: "json",
        success: function (response) {
          console.log(response);
          var len = response.length;
          var accident_cnt = 0;
          var dead_cnt = 0;
          var injury_cnt = 0;
          if(len==0){
              alert("검색결과가 없습니다.")
              return false;
            }
          for (var i = 0; i < len; i++) {
            accident_cnt += response[i].사고건수;

            dead_cnt += response[i].사망자수;

            injury_cnt += response[i].부상자수;

            $("#accidentsAccidents").text(accident_cnt);
            $("#accidentsDead").text(dead_cnt);
            $("#accidentsInjury").text(injury_cnt);
          }
        },
      });
    });
  </script>
  <!-- Script for Chart.js -->
  <script>
    // Histogram
    var contextAccidentHitogram = document
    .getElementById("histogram-accident")
    .getContext("2d");
    var contextNewAccidentHitogram = document
    .getElementById("histogram-new-accident")
    .getContext("2d");
    // histogram for Accident
$.ajax({
  url: "/api/v1/accident",
  type: "GET",
  dataType: "json",
  success: function (response) {
    // 월별로 배열에 data +.
    // 사고유형1,2
    var dataAccidents = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    var dataDeath = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    var dataInjured = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    for (var i = 0; i < response.length; i++) {
      // 여기에 if문으로 년도,월,유형 등 조정사항 입력
      // 월별 data 입력
      if (response[i].month == "jan") {
        dataAccidents[0] += response[i].사고건수;
        dataDeath[0] += response[i].사망자수;
        dataInjured[0] += response[i].부상자수;
      }
      if (response[i].month == "feb") {
        dataAccidents[1] += response[i].사고건수;
        dataDeath[1] += response[i].사망자수;
        dataInjured[1] += response[i].부상자수;
      }
      if (response[i].month == "mar") {
        dataAccidents[2] += response[i].사고건수;
        dataDeath[2] += response[i].사망자수;
        dataInjured[2] += response[i].부상자수;
      }
      if (response[i].month == "apr") {
        dataAccidents[3] += response[i].사고건수;
        dataDeath[3] += response[i].사망자수;
        dataInjured[3] += response[i].부상자수;
      }
      if (response[i].month == "may") {
        dataAccidents[4] += response[i].사고건수;
        dataDeath[4] += response[i].사망자수;
        dataInjured[4] += response[i].부상자수;
      }
      if (response[i].month == "jun") {
        dataAccidents[5] += response[i].사고건수;
        dataDeath[5] += response[i].사망자수;
        dataInjured[5] += response[i].부상자수;
      }
      if (response[i].month == "jul") {
        dataAccidents[6] += response[i].사고건수;
        dataDeath[6] += response[i].사망자수;
        dataInjured[6] += response[i].부상자수;
      }
      if (response[i].month == "aug") {
        dataAccidents[7] += response[i].사고건수;
        dataDeath[7] += response[i].사망자수;
        dataInjured[7] += response[i].부상자수;
      }
      if (response[i].month == "sep") {
        dataAccidents[8] += response[i].사고건수;
        dataDeath[8] += response[i].사망자수;
        dataInjured[8] += response[i].부상자수;
      }
      if (response[i].month == "oct") {
        dataAccidents[9] += response[i].사고건수;
        dataDeath[9] += response[i].사망자수;
        dataInjured[9] += response[i].부상자수;
      }
      if (response[i].month == "nov") {
        dataAccidents[10] += response[i].사고건수;
        dataDeath[10] += response[i].사망자수;
        dataInjured[10] += response[i].부상자수;
      }
      if (response[i].month == "dec") {
        dataAccidents[11] += response[i].사고건수;
        dataDeath[11] += response[i].사망자수;
        dataInjured[11] += response[i].부상자수;
      }
    }
    // chart 생성
    var myChart = new Chart(contextAccidentHitogram, {
      type: "bar", // 차트의 형태
      data: {
        // 차트에 들어갈 데이터
        labels: [
          //x 축
          "1",
          "2",
          "3",
          "4",
          "5",
          "6",
          "7",
          "8",
          "9",
          "10",
          "11",
          "12",
        ],
        datasets: [
          {
            //데이터
            label: "Number of Accidents", //차트 제목
            fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
            data: dataAccidents,
            backgroundColor: "rgba(255, 99, 132, 0.2)",
            borderColor: "rgba(255, 99, 132, 1)",
            borderWidth: 1, //경계선 굵기
          },
          {
            label: "Number of Deaths",
            fill: false,
            data: dataDeath,
            backgroundColor: "rgba(54, 162, 235, 0.2)",
            borderColor: "rgba(54, 162, 235, 1)",
            borderWidth: 1,
          },
          {
            label: "Number of Injured",
            fill: false,
            data: dataInjured,
            backgroundColor: "rgba(255, 206, 86, 0.2)",
            borderColor: "rgba(255, 206, 86, 1)",
            borderWidth: 1,
          },
        ],
      },
      options: {
        plugins: {
          title: {
            display: true,
            text: "Bar Chart",
          },
          subtitle: {
            display: true,
            text: "Histogram by Month",
            color: "skyblue",
          },
        },
      },
    });
  },
});
    // Line Chart
    var contextAccidentLineChart = document
    .getElementById("lineChart-accident")
    .getContext("2d");
    var contextNewAccidentLineChart = document
    .getElementById("lineChart-new-accident")
    .getContext("2d");
    // Line Chart for Accident
$.ajax({
  url: "/api/v1/accident",
  type: "GET",
  dataType: "json",
  success: function (response) {
    // 월별로 배열에 data +.
    // 사고유형1,2
    var dataAccidents = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    var dataDeath = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    var dataInjured = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    console.log(response[0]);
    for (var i = 0; i < response.length; i++) {
      if (response[i].month != "all") continue;
      if (response[i].시점 == 2005) {
        dataAccidents[0] += response[i].사고건수;
        dataDeath[0] += response[i].사망자수;
        dataInjured[0] += response[i].부상자수;
      }
      if (response[i].시점 == 2006) {
        dataAccidents[1] += response[i].사고건수;
        dataDeath[1] += response[i].사망자수;
        dataInjured[1] += response[i].부상자수;
      }
      if (response[i].시점 == 2007) {
        dataAccidents[2] += response[i].사고건수;
        dataDeath[2] += response[i].사망자수;
        dataInjured[2] += response[i].부상자수;
      }
      if (response[i].시점 == 2008) {
        dataAccidents[3] += response[i].사고건수;
        dataDeath[3] += response[i].사망자수;
        dataInjured[3] += response[i].부상자수;
      }
      if (response[i].시점 == 2009) {
        dataAccidents[4] += response[i].사고건수;
        dataDeath[4] += response[i].사망자수;
        dataInjured[4] += response[i].부상자수;
      }
      if (response[i].시점 == 2010) {
        dataAccidents[5] += response[i].사고건수;
        dataDeath[5] += response[i].사망자수;
        dataInjured[5] += response[i].부상자수;
      }
      if (response[i].시점 == 2011) {
        dataAccidents[6] += response[i].사고건수;
        dataDeath[6] += response[i].사망자수;
        dataInjured[6] += response[i].부상자수;
      }
      if (response[i].시점 == 2012) {
        dataAccidents[7] += response[i].사고건수;
        dataDeath[7] += response[i].사망자수;
        dataInjured[7] += response[i].부상자수;
      }
      if (response[i].시점 == 2013) {
        dataAccidents[8] += response[i].사고건수;
        dataDeath[8] += response[i].사망자수;
        dataInjured[8] += response[i].부상자수;
      }
      if (response[i].시점 == 2014) {
        dataAccidents[9] += response[i].사고건수;
        dataDeath[9] += response[i].사망자수;
        dataInjured[9] += response[i].부상자수;
      }
      if (response[i].시점 == 2015) {
        dataAccidents[10] += response[i].사고건수;
        dataDeath[10] += response[i].사망자수;
        dataInjured[10] += response[i].부상자수;
      }
      if (response[i].시점 == 2016) {
        dataAccidents[11] += response[i].사고건수;
        dataDeath[11] += response[i].사망자수;
        dataInjured[11] += response[i].부상자수;
      }
      if (response[i].시점 == 2017) {
        dataAccidents[12] += response[i].사고건수;
        dataDeath[12] += response[i].사망자수;
        dataInjured[12] += response[i].부상자수;
      }
      if (response[i].시점 == 2018) {
        dataAccidents[13] += response[i].사고건수;
        dataDeath[13] += response[i].사망자수;
        dataInjured[13] += response[i].부상자수;
      }
      if (response[i].시점 == 2019) {
        dataAccidents[14] += response[i].사고건수;
        dataDeath[14] += response[i].사망자수;
        dataInjured[14] += response[i].부상자수;
      }
      if (response[i].시점 == 2020) {
        dataAccidents[15] += response[i].사고건수;
        dataDeath[15] += response[i].사망자수;
        dataInjured[15] += response[i].부상자수;
      }
    }
    console.log(dataDeath);

    var myChart = new Chart(contextAccidentLineChart, {
      type: "line", // 차트의 형태
      data: {
        // 차트에 들어갈 데이터
        labels: [
          //x 축
          "2005",
          "2006",
          "2007",
          "2008",
          "2009",
          "2010",
          "2011",
          "2012",
          "2013",
          "2014",
          "2015",
          "2016",
          "2017",
          "2018",
          "2019",
          "2020",
        ],
        datasets: [
          {
            //데이터
            label: "Number of Accidents", //차트 제목
            fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
            data: dataAccidents,
            backgroundColor: "rgba(255, 99, 132, 0.2)",
            borderColor: "rgba(255, 99, 132, 1)",
            borderWidth: 1, //경계선 굵기
          },
          {
            label: "Number of Deaths",
            fill: false,
            data: dataDeath,
            backgroundColor: "rgba(54, 162, 235, 0.2)",
            borderColor: "rgba(54, 162, 235, 1)",
            borderWidth: 1,
          },
          {
            label: "Number of Injured",
            fill: false,
            data: dataInjured,
            backgroundColor: "rgba(255, 206, 86, 0.2)",
            borderColor: "rgba(255, 206, 86, 1)",
            borderWidth: 1,
          },
        ],
      },
      options: {
        responsive: true,
        plugins: {
          title: {
            display: true,
            text: "Line Chart",
          },
          subtitle: {
            display: true,
            text: "Chart by year",
            color: "skyblue",
          },
        },
      }, 
    });
  },
})
	// 로그인 여부(session) 확인
	if("<%out.print(request.getSession().getAttribute("userId"));%>" !== "null"){
		$('#loginTag').css("display","none");
		$('#infoTag').css("display","block");
	}
	else{
		$('#loginTag').css("display","block");
		$('#infoTag').css("display","none");
	}
	// 언어 선택
	$("#language-select").on("change", function(){
	    if($('#language-select option:selected').text() == "Korean"){
	    	var result = confirm("Do you want to go to the Korean page?");
	    	if(result){
	    		location.href='/tas/main'
	    	}
	    	else{
	    		$('#language-select option:eq(0)').prop("selected", true);
	    	}
	    }
	    
	});
	// Excel 설문
	$("#excelDownEng").on("click", function () {
	  if("<%out.print(request.getSession().getAttribute("userId"));%>" == "null"){
		  alert("Login is required.")
		  location.href="/login/eng"
		  return false;
	  }
	  var popup = window.open(
	    "/survey/eng",
	    "survey",
	    "width=1000px, height=1200px, left=100, top=50"
	  );
	  location.href="/accident/type/excel"
	});
  </script>
</html>
