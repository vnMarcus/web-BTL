<jsp:include page="common/taglib.jsp"></jsp:include>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <!-- Reset CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
</head>
<body>
<div class="row wrapper no-gutters">

    <div class="col l-6">
        <div class="container">
            <form id="auth-form" class="form" action="login" method="post">
                <h3 class="auth-form__logo"><img src="img/logo.png" alt="cái logo smart store"></h3>
                <h3 class="auth-form__heading">Sign in</h3>


                <h1 style="color:red;"> ${requestScope.error}</h1>
                <div class="auth-form__form">
                    <div class="auth-form__group">
                        <input type="text" value="${username}" rules = "required" name="name" id = "name" class="auth-form__input" placeholder="Email or phone number" required="required">
                        <span class="form-message"></span>
                    </div>

                    <div class="auth-form__group">
                        <input type="password"  value="${password}" name= "password" rules = "required|min:6" autocomplete="current-password" autocomplete="current-password"  id="id_password" class="auth-form__input" placeholder="Password" required="required">
                        <i class="far fa-eye" id="togglePassword"></i>
                        <span class="form-message"></span>
                    </div>

                </div>

                <button class="auth-form__btn-login mt-32" type="submit"> Login</button>


                <div class="auth-form__aside mt-32">
                    <div class="auth-form__keep-login">
                        <input type="checkbox" name="remember" id="" value="1">
                        <span>Remember me</span>
                    </div>
                    <div class="auth-form__forgot">
                        <a href="forgot.jsp" class="">
                            Forgot password?
                        </a>
                    </div>
                </div>

                <div class="auth-form__other">
                    <span class="auth-form__line"></span>
                    <span>OR</span>
                    <div class="auth-form__line"></div>
                </div>

                <div class="auth-form__socials">
                    <i class="auth-form__socials-icon_gg fa-brands fa-google"></i>
                    Sign in with Google
                </div>

                <div class="auth-form__socials">
                    <i class="auth-form__socials-icon_fb fa-brands fa-square-facebook"></i>
                    Sign in with Facebook
                </div>

                <div class="auth-form__register">
                    Don't you have Account?
                    <a href="register">Create new account</a>
                </div>

            </form>
        </div>
    </div>

</div>

<script>
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
