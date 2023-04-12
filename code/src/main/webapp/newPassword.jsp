
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="common/taglib.jsp"></jsp:include>



<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>New Password</title>
  <link rel="stylesheet" href="/code/src/main/webapp/css/newPassword.css">
</head>
<body>
  <div class="mainDiv">
    <div class="cardStyle">
      <form action="newPassword" method="post" name="signupForm" id="signupForm">

        <img src="/code/src/main/webapp/img/logo.png" id="signupLogo" >

        <h2 class="formTitle">
          Change Your Password
        </h2>

        <div class="inputDiv">
          <label class="inputLabel" for="password">New Password</label>
          <input type="password" id="password" name="password"  required>
        </div>

        <div class="inputDiv">
          <label class="inputLabel" for="re_password">Confirm Password</label>
          <input type="password" id="re_password" name="re_password" >
        </div>
        <div class="buttonWrapper">
          <button type="submit" id="submitButton" onclick="validateSignupForm()"
            class="submitButton pure-button pure-button-primary">
            <span>Confirm</span>
            <span id="loader"></span>
          </button>
        </div>

      </form>
    </div>
  </div>
    <script src="/code/src/main/webapp/js/newPassword.js"></script>
  </body>
</html>
