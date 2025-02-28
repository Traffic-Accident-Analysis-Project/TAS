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
    <title>Confirm Password</title>
  </head>
  <style>
    body {
      width: 300px;
      height: 150px;
      background-color: #f6f6f6;
    }
    input:focus {
      outline: none;
    }
    .text-wrap {
      padding-top: 20px;
      height: 50px;
      width: 100%;
      text-align: center;
    }
    .pw-confirm-wrap {
      margin: 2% auto;
      text-align: center;
      width: 100%;
      height: 60px;
    }
    .main-pw-confirm-update input {
      background-color: transparent;
      border: 1px solid black;
      padding-left: 2px;
      height: 20px;
      border-radius: 2px;
    }
    .main-pw-confirm-update button {
      cursor: pointer;
      background-color: transparent;
      border: 1px solid black;
      border-radius: 2px;
    }
    .main-pw-confirm-update button:hover {
      background-color: #0b1b2f;
      color: #f6f6f6;
    }
  </style>
  <body>
    <div class="main-pw-confirm-update">
      <div class="text-wrap">
        <h4>Please enter your password</h4>
      </div>
      <div class="pw-confirm-wrap">
        <input type="password" id="password" />
        <button type="button" id="btn-password">confirm</button>
      </div>
    </div>
  </body>
  <script
    src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
    crossorigin="anonymous"
  ></script>
  <script>
    $("#btn-password").on("click", function () {
      var jsonData = {
        userPassword: $("#password").val(),
      };
      $.ajax({
        url: "http://localhost:8080/api/v1/user/secession",
        type: "PATCH",
        contentType: "application/json", // 서버에 json타입으로 보낼 예정(요청)
        dataType: "json", // 서버에 결과를 json으로 응답 받겠다
        data: JSON.stringify(jsonData), // 이걸 안쓰면 jsonType이 아닌 문자로 인식
        success: function (response) {
          if (response > 0) {
            alert("Membership cancellation has been completed. thank you.");
            opener.location.href = "../login.html";
            self.close();
          }
        },
        error: function (request, status, error) {
          console.log("에러 내용은 : " + error);
        },
      });
    });
    $("#password").keyup(function (key) {
      if (key.keyCode == 13) {
        var jsonData = {
          userPassword: $("#password").val(),
        };
        $.ajax({
          url: "http://localhost:8080/api/v1/user/secession",
          type: "PATCH",
          contentType: "application/json", // 서버에 json타입으로 보낼 예정(요청)
          dataType: "json", // 서버에 결과를 json으로 응답 받겠다
          data: JSON.stringify(jsonData), // 이걸 안쓰면 jsonType이 아닌 문자로 인식
          success: function (response) {
            if (response > 0) {
              alert("Membership cancellation has been completed. thank you.");
              opener.location.href = "../login.html";
              self.close();
            }
          },
          error: function (request, status, error) {
            console.log("에러 내용은 : " + error);
          },
        });
      }
    });
  </script>
</html>
