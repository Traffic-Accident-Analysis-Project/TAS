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
    <title>T.A.S 관리자페이지_고객센터</title>
    <link rel="stylesheet" href="/resources/static/css/manager.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>
  <body>
    <div class="row container">
      <div class="popup">
        <div class="top-btn-area">
          <button class="btn-close" type="button"></button>
        </div>
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
          <input id="main-text" type="text" value="본문" readonly />
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
          <input id="comment" type="text" value="" />
        </div>
        <div class="btn-area">
          <!-- 관리자 comment등록 게시물 삭제 -->
          <a href="#" class="btn-delete">삭제</a>
          <a href="#" class="btn-success">등록</a>
        </div>
      </div>
      <div class="header">
        <div class="side-nav">
          <ul class="nav-links">
            <li>
              <a href="/manager/main"
                ><i class="fa-solid fa-comment-dots"></i>고객센터</a
              >
            </li>
            <li>
              <a href="/manager/logs"
                ><i class="fa-solid fa-gear"></i>Logs</a
              >
            </li>
            <li>
              <a href="/tas/main">
                <i class="fa-solid fa-t"></i>
                T.A.S메인</a
              >
            </li>
            <li>
              <a class="logout" href="#"
                ><i class="fa-solid fa-arrow-right-from-bracket"></i>log-out</a
              >
            </li>
          </ul>
        </div>
      </div>
      <div class="manager-board-main">
        <h1>고객센터</h1>
        <table>
          <thead>
            <tr>
              <th>글 번호</th>
              <th>작성자</th>
              <th>제목</th>
              <th>작성 날짜</th>
              <th>조회 수</th>
            </tr>
          </thead>
          <tbody id="boardData">
            <!-- <tr>
              <td>1</td>
              <td>현상원</td>
              <td>점심시간이 너무 짧아요!</td>
              <td>2022-05-19</td>
              <td><span>8320</span></td>
            </tr>
            <tr>
              <td>2</td>
              <td>현상원</td>
              <td>학원에 커피기계가 없어요!</td>
              <td>2022-05-18</td>
              <td><span>1200</span></td>
            </tr>
            <tr>
              <td>3</td>
              <td>현상원</td>
              <td>너무 졸려요...</td>
              <td>2022-05-19</td>
              <td><span>5</span></td>
            </tr> -->
          </tbody>
        </table>
        <div class="pagination">
          <a href="#">Previous</a>
          <a href="#">1</a>
          <a href="#">2</a>
          <a href="#">3</a>
          <a href="#">4</a>
          <a href="#">5</a>
          <a href="#">Next</a>
        </div>
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
  <script src="/resources/static/js/manager.js"></script>
    	<link rel="stylesheet"
		href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
	<script type="text/javascript"
		src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script type="text/javascript">
	$(function() {
		$('.popup').draggable();
	});
	</script>
</html>
