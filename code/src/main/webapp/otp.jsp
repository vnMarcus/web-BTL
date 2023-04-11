<%--
  Created by IntelliJ IDEA.
  User: vinhp
  Date: 3/25/2023
  Time: 9:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="common/taglib.jsp"></jsp:include>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Verify OTP</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
    crossorigin="anonymous" />
  <link rel="stylesheet" href="/code/src/main/webapp/css/otp.css">
</head>

<body>
  <form action="ValidateOtp" method="post" class="container">
    <h1>ENTER OTP</h1>
    <!-- <input type="text" name="otp" placeholder="Enter OTP"> -->
    <div class="userInput">
      <input type="text" id='first' name="first" maxlength="1" onkeyup="moveToNext(this,'second')">
      <input type="text" id="second" name="second" maxlength="1" onkeyup="moveToNext(this,'third')">
      <input type="text" id="third" name="third" maxlength="1" onkeyup="moveToNext(this,'fourth')">
      <input type="text" id="fourth" name="fourth" maxlength="1" onkeyup="moveToNext(this,'fifth')">
      <input type="text" id="fifth" name="fifth" maxlength="1" onkeyup="moveToNext(this, 'sixth')">
      <input type="text" id="sixth" name="sixth" maxlength="1">
    </div>
    <button>CHECK OTP</button>
  </form>
  <script src="/code/src/main/webapp/js/otp.js"></script>
</body>

</html>
