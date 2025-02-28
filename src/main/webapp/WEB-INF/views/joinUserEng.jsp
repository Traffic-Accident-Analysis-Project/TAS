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
    <title>T.A.S Sign UP</title>
    <link rel="stylesheet" href="/resources/static/css/join.css" />
  </head>
  <body>
    <div class="container">
      <div class="join-section">
        <h1>Sign UP</h1>
        <label for="userId">ID</label>
        <div class="user-id-section">
          <input id="userId" type="text" />
          <button id="check-id-btn" type="button" onclick="idCheck()">
            ID double check
          </button>
        </div>
        <label for="userName">Name</label>
        <input id="userName" type="text" />
        <label for="password">Password</label>
        <input
          id="password"
          type="password"
          placeholder="Combination of 8 to 16 alphanumeric characters"
        />
        <label for="rePassword">reconfirm password</label>
        <input id="rePassword" type="password" />
        <label for="email-wrap">e-mail Address</label>
        <div class="email-wrap">
          <input id="email-id" type="text" placeholder="  e-mail" />
          <input type="hidden" id="emailAddrHidden" />
          <select
            name="email-addr"
            id="email-addr"
            onchange="emailAddrVal(this.value)"
          >
            <option value="">e-mail Address</option>
            <option value="email-user-write">Direct input</option>
            <option value="@gmail">@gmail.com</option>
            <option value="@google">@google.com</option>
            <option value="@naver">@naver.com</option>
            <option value="@hanmail">@hanmail.net</option>
            <option value="@daum">@daum.net</option>
            <option value="@hotmail">@hotmail.com</option>
          </select>
        </div>
        <input
          id="email-user-write-box"
          type="text"
          style="display: none"
          placeholder="ex) @email.com"
        />
        <label for="gender">Gender</label>
        <input type="hidden" id="genderHidden" />
        <select name="gender" id="gender" onchange="genderVal(this.value)">
          <option value="">Please select gender</option>
          <option value="w">Female</option>
          <option value="m">Male</option>
        </select>
        <label for="userAddr">Address</label>
        <div class="user-addr">
          <input id="userAddr" type="text" onclick="getPostCode()" />
          <button type="button" onclick="getPostCode()">Street name address</button>
        </div>
        <input id="user-detailAddr" type="text" placeholder="  Detailed Address" />
        <div class="btn-wrap">
          <button class="join-button" type="button" onclick="join()">
            sign up
          </button>
          <button class="cancel-button" type="button">cancel</button>
        </div>
      </div>
    </div>
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
    <!-- 다음 도로명주소 script -->
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
      var emailAddrVal = function (value) {
        $("#emailAddrHidden").val(value);
        if ($("#emailAddrHidden").val() == "email-user-write") {
          $("#email-user-write-box").css("display", "block");
        }
        if ($("#emailAddrHidden").val() != "email-user-write") {
          $("#email-user-write-box").css("display", "none");
        }
      };
      var genderVal = function (value) {
        $("#genderHidden").val(value);
      };

      // 회원가입 취소 > 로그인페이지
      $(".cancel-button").on("click", function () {
        var result = confirm("Are you sure you want to cancel your Sign Up?");
        if (result) {
          location.href = "/login/eng";
        }
      });

      var checkOrNot = false;
      // id중복체크
      function idCheck() {
        var id = $("#userId").val();

        if (id == "") {
          alert("Please enter your ID");
          return false;
        }

        var regExp = /^(?=.*[a-zA-Z])[-a-zA-Z0-9_.]{6,20}$/;
        if (!regExp.test(id)) {
          alert("It is a combination of English letters, numbers, and special characters, 6 to 20 characters long.");
          return false;
        }

        $.ajax({
          url: "/api/v1/check/id/" + id,
          type: "GET",
          dataType: "json",
          success: function (response) {
            var len = response.length;
            if (len == 0) {
              alert("ID available");
              checkOrNot = true;
            }
            if (len > 0) {
              alert("ID is already registered");
            }
          },
        });
      }
      // 도로명주소
      function getPostCode() {
        // daum클래스는 위에 script cdn에서 불러옴
        new daum.Postcode({
          // oncomplete : 내가 주소를 입력했다면 실행 해
          oncomplete: function (data) {
            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ""; // 도로명 조합형 주소 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if (data.bname !== "" && /[동|로|가]$/g.test(data.bname)) {
              extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if (data.buildingName !== "" && data.apartment === "Y") {
              extraRoadAddr +=
                extraRoadAddr !== ""
                  ? ", " + data.buildingName
                  : data.buildingName;
            }
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if (extraRoadAddr !== "") {
              extraRoadAddr = " (" + extraRoadAddr + ")";
            }
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if (fullRoadAddr !== "") {
              fullRoadAddr += extraRoadAddr;
            }
            //$("#userAddr").val(fullRoadAddr); // 위에 inputId userAddr에 값을 넣기
            addr = $("#userAddr").val(data.zonecode + ", " + fullRoadAddr);
            addr = addr[0].value;
            //data.zoncode = 우편번호
            // 만약 우편번호까지 나오게 하고 싶으면 밑에 zonecode포함된걸 하기
          },
        }).open();
      }

      // 회원가입
      function join() {
        var id = $("#userId").val();
        var name = $("#userName").val();
        var password = $("#password").val();
        var rePassword = $("#rePassword").val();
        var emailId = $("#email-id").val();
        var emailAddr = $("#emailAddrHidden").val();
        var detailAddr = $("#user-detailAddr").val();
        var gender = $("#genderHidden").val();
        // 사용자가 직접메일주소를 입력했을 경우
        var directlyEmailAddr = $("#email-user-write-box").val();

        // 빈칸 체크
        if (
          id == "" ||
          password == "" ||
          rePassword == "" ||
          name == "" ||
          emailId == "" ||
          emailAddr == "" ||
          gender == "" ||
          addr == ""
        ) {
          alert("Please fill out all forms");
          return false;
        }

        // 비밀번호, 비밀번호 재확인이 동일한지 체크
        if (password !== rePassword) {
          alert("The password entered is different");
          $("#rePassword").focus();
          return false;
        }

        // API서버에 전송할 json생성 (email 선택시)
        if (emailAddr != "" && directlyEmailAddr == "") {
          var jsonData = {
            userId: id,
            userName: name,
            userPassword: password,
            userGender: gender,
            userEmailId: emailId,
            userEmailAddr: emailAddr,
            userAddr: addr,
            userDetailAddr: detailAddr,
            autority: "user",
          };
          /*var regExpName = /^[가-힣]{2,4}$/;
          if (!regExpName.test(name)) {
            alert("The name must be within 2 to 4 characters in Korean.");
            return false;
          }*/

          var regExpPw = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,16}$/;
          if (!regExpPw.test(password)) {
            alert("The password is a combination of 8 to 16 alphanumeric characters.");
            return false;
          }
          var result = confirm("Would you like to join?");
          if (result && checkOrNot) {
            $.ajax({
              url: "/api/v1/user",
              type: "POST",
              contentType: "application/json", // 서버에 json타입으로 보낼 예정(요청)
              dataType: "json", // 서버에 결과를 json으로 응답 받겠다
              data: JSON.stringify(jsonData), // 이걸 안쓰면 jsonType이 아닌 문자로 인식
              success: function (response) {
                if (response > 0) {
                  alert("Sign up is complete.");
                  location.replace("/login/eng");
                }
              },
            });
          }
          if (!result) {
            alert("Sign up has been canceled");
            emailAddr = "";
            return false;
          }
          if (!checkOrNot) {
            alert("Please double check ID");
            return false;
          }
        }
        // API서버에 전송할 json생성 (email직접입력시)
        if (emailAddr == "email-user-write" && directlyEmailAddr != "") {
          var jsonData = {
            userId: id,
            userName: name,
            userPassword: password,
            userGender: gender,
            userEmailId: emailId,
            userEmailAddr: directlyEmailAddr,
            userAddr: addr,
            userDetailAddr: detailAddr,
            autority: "user",
          };

          /*var regExpName = /^[가-힣]{2,4}$/;
          if (!regExpName.test(name)) {
            alert("이름은 한글로 2~4글자 이내입니다");
            return false;
          }*/

          var regExpPw = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,16}$/;
          if (!regExpPw.test(password)) {
            alert("The password is a combination of 8 to 16 alphanumeric characters.");
            return false;
          }

          var regExp = /^@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
          if (!regExp.test(directlyEmailAddr)) {
            alert("Email address is in the form of @emailaddr.net");
            return false;
          }

          var result = confirm("Would you like to register?");
          if (result && checkOrNot) {
            $.ajax({
              url: "/api/v1/user",
              type: "POST",
              contentType: "application/json", // 서버에 json타입으로 보낼 예정(요청)
              dataType: "json", // 서버에 결과를 json으로 응답 받겠다
              data: JSON.stringify(jsonData), // 이걸 안쓰면 jsonType이 아닌 문자로 인식
              success: function (response) {
                if (response > 0) {
                  alert("Sign up is complete.");
                  location.replace("/login/eng");
                }
              },
            });
          }
          if (!result) {
            alert("Sign up has been canceled");
            directlyEmailAddr = "";
            return false;
          }
          if (!checkOrNot) {
            alert("Please double check ID");
            return false;
          }
        }
      }
    </script>
  </body>
</html>
