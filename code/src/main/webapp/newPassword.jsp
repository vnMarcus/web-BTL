<%--
  Created by IntelliJ IDEA.
  User: vinhp
  Date: 3/25/2023
  Time: 9:54 PM
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
<form action="newPassword" method="post">
    <div >
        <input type="password"  name= "password" autocomplete="current-password"  class="auth-form__input" placeholder="Password" required="required">
    </div>
    <div >
        <input type="password"  name= "re_password"  autocomplete="current-password"  class="auth-form__input" placeholder="Re_password" required="required">
    </div>
    <button type="submit"> Confirm</button>
</form>

</body>
</html>