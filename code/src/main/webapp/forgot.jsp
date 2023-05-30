<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome Icons  -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
        integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
        crossorigin="anonymous" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
  <title>Forgot Password</title>
  <link rel="stylesheet" href="css/forgot.css">
</head>
<body>
  <form action="/reset-password" method="post" class="card">
    <p class="lock-icon " ><i class="fas fa-lock"></i></p>
    <h2>Forgot Password?</h2>
    <p>You can reset your Password here</p>
    <input type="text" class="passInput" required="@gmail.com" placeholder="Email address" name="email">
    <button type="submit">Reset Password</button>
  </form>
</body>
</html>
