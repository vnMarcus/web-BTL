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
    <title>Document</title>
</head>
<body>
<form action="ValidateOtp" method="post">
    <p>OTP</p>
    <input type="text" name="otp" placeholder="Enter OTP">
    <button>Check OTP</button>
</form>

</body>
</html>