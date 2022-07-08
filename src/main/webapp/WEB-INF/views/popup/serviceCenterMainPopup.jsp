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
    <title>고객센터 글 확인</title>
    <style>
      .row {
        display: flex;
      }
      .row-col {
        display: flex;
        flex-direction: column;
      }
      .label-wrap {
        margin-left: 50px;
        margin-top: 100px;
        width: 25%;
      }
      .input-wrap {
        margin-top: 97px;
        width: 100%;
      }
      label {
        height: 30px;
        margin-top: 16px;
      }
      input {
        height: 31px;
        font-size: 17px;
        margin-top: 13px;
        margin-left: 15px;
      }
      #main-text {
        border: 1px solid #f6f6f6;
        width: 80%;
        height: auto;
      }
      #comment {
        border: 1px solid #f6f6f6;
        width: 80%;
        height: 50px;
      }
      .btn-area {
        margin-top: 50px;
        margin-left: 400px;
        margin-bottom: 50px;
      }
      .btn-area a:hover {
        transition: 0.1s;
        background-color: #0b1b2f;
        color: #f6f6f6;
      }
      .btn-area a {
        text-decoration: none;
        margin: 0 5px;
        border: 1px solid #0b1b2f;
        background-color: transparent;
        color: #0b1b2f;
        font-weight: 900;
        border-radius: 5px;
        border: 1px solid #f6f6f6;
        font-size: 13px;
        padding: 5px;
      }
      #cnt {
        margin-top: 20px;
      }
      .main-text-wrap {
        margin-left: 50px;
      }
      .comment-wrap {
        margin-left: 50px;
      }
      .main-popup {
        border: 1px solid black;
        width: 600px;
        height: auto;
        background-color: #f6f6f6;
      }
      .main-popup input {
        background-color: transparent;
        border: none;
      }
    </style>
  </head>
  <body>
    <div class="main-popup">
      <div class="row">
        <div class="row-col label-wrap">
          <label for="number">글 번호</label>
          <hr
            style="
              margin: 0;
              width: 480px;
              background-color: #6f6669;
              opacity: 0.4;
            "
          />
          <label for="writer">작성자</label>
          <hr
            style="
              margin: 0;
              width: 480px;
              background-color: #6f6669;
              opacity: 0.4;
            "
          />
          <label for="categry">카테고리</label>
          <hr
            style="
              margin: 0;
              width: 480px;
              background-color: #6f6669;
              opacity: 0.4;
            "
          />
          <label for="create-at">작성날짜</label>
          <hr
            style="
              margin: 0;
              width: 480px;
              background-color: #6f6669;
              opacity: 0.4;
            "
          />
          <label for="cnt">조회수</label>
          <hr
            style="
              margin: 0;
              width: 480px;
              background-color: #6f6669;
              opacity: 0.4;
            "
          />
        </div>
        <div class="row-col input-wrap">
          <input id="number" type="text" value="01" readonly />
          <input id="writer" type="text" value="작성자" readonly />
          <input id="categry" type="text" value="카테고리" readonly />
          <input id="create-at" type="text" value="작성날짜" readonly />
          <input id="cnt" type="text" value="3" readonly />
        </div>
      </div>
      <div class="row-col main-text-wrap">
        <label for="main-text">본문</label>
        <input id="main-text" type="text" value="본문" />
        <hr
          style="
            margin-left: -1px;
            margin-top: 20px;
            width: 480px;
            background-color: #6f6669;
            opacity: 0.4;
          "
        />
      </div>
      <div class="row-col comment-wrap">
        <label for="comment">댓글</label>
        <input id="comment" type="text" value="댓글 없음" readonly />
      </div>
      <div class="btn-area">
        <a href="#" class="btn-delete">삭제</a>
        <!-- 비밀글일 경우 수정버튼 공개글일경우 수정버튼 숨기기 -->
        <a href="#" class="btn-update">수정</a>
      </div>
    </div>
  </body>
  <script
    src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
    crossorigin="anonymous"
  ></script>
  <script>
    $(".btn-delete").on('click',function(){
      var popup = window.open(
        "deletePwConfirmPopup.html",
        "admin-check",
        "width=350px, height=200px, left=100, top=50"
      );
    })
    $(".btn-update").on('click',function(){
      var popup = window.open(
        "updatePwConfirmPopup.html",
        "admin-check",
        "width=350px, height=200px, left=100, top=50"
      );
    })
  </script>
</html>
