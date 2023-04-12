<jsp:include page="common/taglib.jsp"></jsp:include>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký</title>
    <!-- Reset CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
    <link rel="stylesheet" href="css/register.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
</head>
<body>

<h1 style="color:red;"> ${requestScope.status}</h1>

<form class="container"  method="post" action="register" >
    <div class="logo">
        <img src="img/logo.png" alt="">
    </div>
    <div class="sign_up_1">
        <p id="sign">Sign Up</p>
    </div>

    <div class="box">
        <div class="box1">
            <div id="user_name">
                <input type="text" name="user_name" class="form_input" placeholder="User_name" required="required">
            </div>
            <div id="phone_number">
                <input type="text" name="phone_number" class="form_input" placeholder="Phone_number" required="required">
            </div>
            <div id="address">
                <input type="text" name="address" class="form_input" placeholder="Address" required="required">
            </div>
        </div>
        <div class="box2">
            <div id="fullname">
                <input type="text" name="full_name" class="form_input" placeholder="Fullname" required="required">
            </div>
            <div id="email">
                <input type="email" name="email" class="form_input" placeholder="Email" required="required">

            </div>
            <div id="password">
                <input type="password" rules = "required|min:6" name="password" autocomplete="current-password" required="" id="id_password" class="form_input" placeholder="Password">
                <i class="far fa-eye" id="togglePassword"></i>
            </div>
        </div>

    </div>
    <div class="sign_up_2">
        <button class="login ">
            Sign up
        </button>
    </div>
    <div class="last_box">
        Do you have account?
        <a href="login">Sign in</a>
    </div>

</form>
<script>
    //hide password with eye icon
    const togglePassword = document.querySelector('#togglePassword');
    const password = document.querySelector('#id_password');

    togglePassword.addEventListener('click', function (e) {
        const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
        password.setAttribute('type', type);
        this.classList.toggle('fa-eye-slash');
    });
</script>



</body>
</html>