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
    <title>T.A.S Writing</title>
    <link rel="stylesheet" href="/resources/static/css/engCss/serviceWriteEng.css" />
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
        <div class="service-write-section">
          <h1>Contact Service Center</h1>
          <hr style="border: 1px solid #eaeaea; width: 50%; margin-top: 5px" />
          <div class="same-padding service-category-select">
            <label for="service-category">Inquiry type</label>
            <select name="service-category" id="service-category">
              <option value="">Please select an inquiry type</option>
              <option value="">Data Error</option>
              <option value="">Contact us for more Information</option>
              <option value="">Other Inquiries</option>
            </select>
          </div>
          <hr style="border: 1px solid #eaeaea; width: 50%; margin-top: 5px" />
          <div class="same-padding writer-wrap">
            <label for="writer-wrap">Writer</label>
            <input type="text" id="writerValue" />
          </div>
          <hr style="border: 1px solid #eaeaea; width: 50%; margin: 5px" />
          <div class="same-padding e-mail-wrap">
            <label for="e-mail-wrap">e-mail</label>
            <input type="text" id="emailValue" />
          </div>
          <hr style="border: 1px solid #eaeaea; width: 50%; margin: 5px" />
          <div class="same-padding text-area-wrap">
            <label for="text-wrap">Main Text</label>
            <textarea
              name="text-wrap"
              id="textValue"
              cols="30"
              rows="10"
            ></textarea>
          </div>
          <hr style="border: 1px solid #eaeaea; width: 50%; margin: 5px" />
          <div class="same-padding password-checkbox-wrap">
            <label for="pw-or-not">Choose Secret post</label>
            <label
              ><input
                class="pw-or-not-y"
                type="radio"
                name="pw-or-not"
                value="y"
                checked
              />Secret post</label
            >
            <label
              ><input
                class="pw-or-not-n"
                type="radio"
                name="pw-or-not"
                value="n"
              />public post</label
            >
            <hr style="border: 1px solid #eaeaea; width: 50%; margin: 5px" />
            <div class="password-wrap">
              <div class="pw-input">
                <label for="pw">Password</label>
                <input class="service-write-pw" type="password" />
              </div>
              <div class="repw-input">
                <label for="re-pw">Confirm Password</label>
                <input class="service-write-re-pw" type="password" />
              </div>
            </div>
          </div>
          <hr style="border: 1px solid #eaeaea; width: 50%; margin: 5px" />
          <div class="write-button-wrap">
            <button class="service-write-registration" type="button">
              Save
            </button>
            <button class="service-write-cencel" type="button">Cancel</button>
          </div>
        </div>
        <footer>
          <div class="footer-img">
            <img src="/resources/static/images/T.A.S-logo.png" alt="" />
          </div>
          <div class="footer-info">
            <p>
              Terms of Service | privacy policy | Operational management policy
            </p>
            <p>email : jyg12770@google.com | email : skwjdtn3171@naver.com</p>
            <p>
              (Zip code)34838 20, Jungang-ro 121beon-gil, Jung-gu, Daejeon,
              Republic of Korea
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
  <script
    src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
    crossorigin="anonymous"
  ></script>
  <script src="/resources/static/js/index.js"></script>
  <script type="text/javascript">
		//로그인 여부(session) 확인
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
	// 고객센터문의 글쓰기 등록 눌렀을 때 -JS
	$(".service-write-registration").on("click", function () {
	  // 빈칸 확인
	  if (
	    $("#service-category option:selected").text() == "Please select an inquiry type"
	  ) {
	    alert("Please select an inquiry type");
	    return false;
	  }
	  if ($("#writerValue").val() == "") {
	    alert("Please enter the writer");
	    $("#writerValue").focus();
	    return false;
	  }
	  if ($("#emailValue").val() == "") {
	    alert("Please enter your e-mail"); // email 형식에 맞게 확인하는 로직구현 필요
	    $("#emailValue").focus();
	    return false;
	  }
	  if ($("#textValue").val() == "") {
	    alert("Please enter main text");
	    $("#textValue").focus();
	    return false;
	  }
	  if ($(".pw-or-not-y").is(":checked")) {
	    // password 확인
	    var password = $(".service-write-pw").val();
	    var rePassword = $(".service-write-re-pw").val();
	    if (password != rePassword) {
	      alert("Please confirm your password");
	      return false;
	    }
	  }
	  // json data 생성
	  var boardCategory = $("#service-category option:selected").text();
	  var boardWriter = $("#writerValue").val();
	  var boardEmail = $("#emailValue").val();
	  var boardContent = $("#textValue").val();
	  var boardPassword = $(".service-write-pw").val();
	  var isBoardSecurity = $(".pw-or-not-y").is(":checked");

	  var jsonData = {
	    boardCategory: boardCategory,
	    boardWriter: boardWriter,
	    boardEmail: boardEmail,
	    boardContent: boardContent,
	    boardPassword: boardPassword,
	    isBoardSecurity: isBoardSecurity,
	  };
	  //ajax
	  $.ajax({
	    url: "/api/v1/board",
	    type: "POST",
	    contentType: "application/json", // 서버에 json type으로 보낼 예정(요청)
	    dataType: "json", // 서버 결과를 json으로 응답 받겠다.
	    data: JSON.stringify(jsonData),
	    success: function (response) {
	      // 전송 한 data가 DB에 저장되었으면 alert
	      if (response > 0) {
	        alert("Save is complete.");
	        // 저장 후 고객센터 페이지로 이동
	        location.href = "/service/center/eng";
	      }
	    },
	  });
	});
  </script>
</html>
