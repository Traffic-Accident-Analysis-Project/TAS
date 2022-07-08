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
    <title>T.A.S 로그인</title>
    <link rel="stylesheet" href="/resources/static/css/login.css" />
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
            <a href="/tas/main">home</a>
            <i
              class="fa-solid fa-house-chimney"
              style="color: #eaeaea; margin-left: 5px; margin-top: 3px"
            ></i>
            <select name="lang-selbox" id="">
              <option value="korea">한글</option>
              <option value="eng">English</option>
            </select>
          </div>
          <div class="row header-category">
            <div class="logo">
              <a href="/tas/main">
                <img src="/resources/static/images/T.A.S-logo.png" alt="" />
              </a>
            </div>
            <div class="row category">
              <div class="category-link dropdown">
                <div class="link-button">통계 자료실</div>
                <div class="dropdown-content">
                  <a href="/law">법규 위반</a>
                  <a href="/alcohol">음주 정도</a>
                  <a href="/road">도로 종류</a>
                  <a href="/accident">사고 유형</a>
                  <a href="/city">시도 별</a>
                </div>
              </div>
              <div class="category-link service-link">
                <a href="/tas/intro">서비스 소개</a>
              </div>
              <div class="category-link client-link">
                <a href="/service/center">고객 센터</a>
              </div>
              <div class="category-link login-link">
                <a href="/login">로그인</a>
              </div>
            </div>
          </div>
        </header>
      </div>
      <!-- header end -->
      <div class="bottom-background-color">
        <div class="main-login-section">
          <h2>로그인</h2>
          <!-- <hr style="margin-top : 5%"> -->
          <div class="total-wrap">
            <div class="row-column id-pw-ptag-wrap">
              <p>ID</p>
              <p>PW</p>
            </div>
            <div class="row-column id-pw-input-wrap">
              <input id="userId" type="text" />
              <input id="userPassword" type="password" />
            </div>
          </div>
          <div class="row login-btn-wrap">
            <button class="join-button" type="button">회원가입</button>
            <button class="login-button" type="button">Login</button>
          </div>
        </div>
        <footer>
          <div class="footer-img">
            <img src="/resources/static/images/T.A.S-logo.png" alt="" />
          </div>
          <div class="footer-info">
            <p>이용약관 | 개인정보처리방침 | 운영 관리 방침</p>
            <p>email : jyg12770@google.com | email : skwjdtn3171@naver.com</p>
            <p>(우)34838 대전 중구 중앙로 121번길 20 | 대표전화 : 042-222-2402</p>
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
  <script
    src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
    crossorigin="anonymous"
  ></script>
  <script src="/resources/static/js/index.js"></script>
  <script>
    // login - > join
    $(".join-button").on("click", function () {
      var result = confirm("회원가입하시겠습니까?");
      if (result) {
        location.href = "/tas/join/select";
      }
    });
    
    // 로그인
    $(".login-button").on("click", function () {
      var userIdVal = $("#userId").val();
      var userPasswordVal = $("#userPassword").val();


      if (userIdVal == "" || userPasswordVal == "") {
        alert("빈칸을 입력 해 주세요");
        $("#userId").focus();
        return false;
      }
      var jsonData = {
        userId: userIdVal,
        userPassword: userPasswordVal,
      };

      $.ajax({
        url: "/api/v1/login",
        type: "POST",
        contentType: "application/json", // 서버에 json타입으로 보낼 예정(요청)
        dataType: "json", // 서버에 결과를 json으로 응답 받겠다
        data: JSON.stringify(jsonData), // 이걸 안쓰면 jsonType이 아닌 문자로 인식
        success: function (response) {
          if (response) {
            location.href = "/tas/main"; //페이지 이동
          } else {
            alert("회원정보를 확인 해 주세요");
            return false;
          }
        },
      });
    });

    $("#userPassword").keyup(function (key) {
      if (key.keyCode == 13) {
        var userIdVal = $("#userId").val();
        var userPasswordVal = $("#userPassword").val();

        if (userIdVal == "" || userPasswordVal == "") {
          alert("빈칸을 입력 해 주세요");
          $("#userId").focus();
          return false;
        }
        var jsonData = {
          userId: userIdVal,
          userPassword: userPasswordVal,
        };
		
        $.ajax({
          url: "/api/v1/login",
          type: "POST",
          contentType: "application/json", // 서버에 json타입으로 보낼 예정(요청)
          dataType: "json", // 서버에 결과를 json으로 응답 받겠다
          data: JSON.stringify(jsonData), // 이걸 안쓰면 jsonType이 아닌 문자로 인식
          success: function (response) {
            if (response) {
            	if("<%out.print(request.getSession().getAttribute("autority"));%>".equals("admin")){
            		location.href = "/manager/main"; // admin이면 manager page로 이동
            	}
              	location.href = "/tas/main"; //페이지 이동
            } else {
              	alert("회원정보를 확인 해 주세요");
              	return false;
            }
          },
        });
      }
    });
  </script>
</html>
