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
    <title>Enter administrator number</title>
    <style>
      body {
        background-color: #f6f6f6;
      }
      .admin-wrap {
        margin: 150px 22px 0;
        display: flex;
        justify-content: space-around;
      }
      label {
        color: #0b1b2f;
        font-size: 16px;
      }
      #adminPassword {
        background-color: transparent;
        border: none;
        border-bottom: 1px solid black;
        padding-left: 5px;
        height: 20px;
        margin-left: 5px;
      }
      #adminPassword:focus {
        outline: none;
      }
      #admin-btn {
        border: 1px solid black;
        background-color: transparent;
        color: #0b1b2f;
        border-radius: 5px;
        font-size: 13px;
        padding: 3px 8px;
        cursor: pointer;
      }
      #admin-btn:hover {
        transition: 0.1s;
        background-color: var(--main-blue);
        color: var(--light-grey);
      }
    </style>
  </head>
  <body>
    <div class="admin-wrap">
      <label for="adminPassword">Enter the admin code : </label>
      <input id="hiddenAdmin" type="hidden" />
      <input id="adminPassword" type="password" />
      <button id="admin-btn" type="button">cinfirm</button>
    </div>
  </body>
  <script
    src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
    crossorigin="anonymous"
  ></script>
  <script>
    $("#admin-btn").on("click", function () {
      var inputVal = $("#adminPassword").val();
      var hiddenVal = $("#hiddenAdmin").val(inputVal);
      hiddenVal = hiddenVal.val();
      if (hiddenVal == "") {
        alert("Please enter the admin code");
        return false;
      }
      $.ajax({
        url: "http://localhost:8080/api/v1/admin/check/" + hiddenVal,
        type: "GET",
        dataType: "json",
        success: function (response) {
          if (!response) {
            alert("Please check the admin code");
            return false;
          }
          if (response) {
            alert("confirmed");
            opener.location.href = "../joinAdmin.html";
            self.close();
          }
        },
      });
    });
    $("#adminPassword").keyup(function (key) {
      if (key.keyCode == 13) {
        var inputVal = $("#adminPassword").val();
        var hiddenVal = $("#hiddenAdmin").val(inputVal);
        hiddenVal = hiddenVal.val();
        if (hiddenVal == "") {
          alert("Please enter the admin code");
          return false;
        }
        $.ajax({
          url: "http://localhost:8080/api/v1/admin/check/" + hiddenVal,
          type: "GET",
          dataType: "json",
          success: function (response) {
            if (!response) {
              alert("Please check the admin code");
              return false;
            }
            if (response) {
              alert("확인완료");
              opener.location.href = "../joinAdmin.html";
              self.close();
            }
          },
        });
      }
    });
  </script>
</html>
