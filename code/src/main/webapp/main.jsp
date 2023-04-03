<jsp:include page="common/taglib.jsp"></jsp:include>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=11">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Electroshop</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
</head>
<body>
<section id="header">
    <a  href="main.jsp"><img src="img/logo.png" class="logo" height="140" alt=""></a>
    <ul id="navbar">
        <li><a href="main.jsp">Home</a></li>
        <li><a class="active" href="shop.html">Shop</a></li>
        <li><a href="about.html">About Us</a></li>
        <li><a href="blog.html">Blog</a></li>
        <li><a href="contact.html">Contact Us</a></li>
        <input type="text" placeholder="Search..">
        <li><a href="myaccount.html"><i class="fas fa-user-alt"></i></a></li>
        <li><a href="cart.html"><i class="far fa-shopping-bag"></i></a></li>
    </ul>
    <%
        if (session.getAttribute("account") != null) {
    %>
    <div id="login">
        <p style="font-size: 16px"> ${sessionScope.account.user_name} </p>
        <h4><||></h4>
        <a href="logout">Log out</a>
    </div>
    <%
    } else { // Nếu biến name không có giá trị
    %>
    <div id="login">
        <a href="login">Login</a>
        <h4><||></h4>
        <a href="register">Register</a>
    </div>
    <%
        }
    %>


</section>
<section id="hero">
    <h4>Hot Offer</h4>
    <h1>Electronic Of the Season</h1>
    <h2>BUY NOW FOR UP TO 25% OFF !</h2>
    <a href="shop.html"><button>Start Buying</button></a>
</section>
<section id="summary" class="section-p1">
    <div class="sum-box">
        <img src="img/summary/stereo.jpg" alt="">
        <h6>Stereo</h6>
    </div>
    <div class="sum-box">
        <img src="img/summary/television.jpg" alt="">
        <h6>TV</h6>
    </div>
    <div class="sum-box">
        <img src="img/summary/speaker.jpg" alt="">
        <h6>Speaker</h6>
    </div>
    <div class="sum-box">
        <img src="img/summary/headphone.jpg" alt="">
        <h6>Headphone</h6>
    </div>
    <div class="sum-box">
        <img src="img/summary/smartphone.jpg" alt="">
        <h6>Smartphone</h6>
    </div>
</section>
<section id="product1" class="section-p1">
    <h2>Hot Products</h2>
    <div class="pro-container">
        <div class="pro">
            <img src="img/hotproducts/f1.png" alt="">
            <div class="des">
                <span>Bluetooth Speakers</span>
                <h5>Notebook Widescreen Y700-17 GF790</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>$159.00</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/hotproducts/f2.png" alt="">
            <div class="des">
                <span>Bluetooth Speakers</span>
                <h5>Tablet Thin EliteBook Revolve 810 G2</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>$1,347.00</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/hotproducts/f3.png" alt="">
            <div class="des">
                <span>Bluetooth Speakers</span>
                <h5>Smartphone 6S 32GB LTE</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>$1,347.00</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/hotproducts/f4.png" alt="">
            <div class="des">
                <span>Bluetooth Speakers</span>
                <h5>Wireless Audio System Multiroom 360</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>$799.00</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/hotproducts/f5.png" alt="">
            <div class="des">
                <span>Bluetooth Speakers</span>
                <h5>Notebook Widescreen Y700-17 GF790</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>$69.00</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/hotproducts/f6.png" alt="">
            <div class="des">
                <span>Bluetooth Speakers</span>
                <h5>Tablet Thin EliteBook Revolve 810 G2</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>$69.00</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/hotproducts/f2.png" alt="">
            <div class="des">
                <span>Bluetooth Speakers</span>
                <h5>Tablet Thin EliteBook Revolve 810 G2</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>$1,347.00</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/hotproducts/f2.png" alt="">
            <div class="des">
                <span>Bluetooth Speakers</span>
                <h5>Tablet Thin EliteBook Revolve 810 G2</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>$1,347.00</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
    </div>
</section>
<section id="banner" class="section-m1">
    <h4>1 Year Warranty For New Items This Year</h4>
    <h2>Chance to recive <span>50% OFF Coupon</span> when buying this month </h2>
    <button class="normal">FIND HERE!</button>

</section>
<section id="product1" class="section-p1">
    <h2>New Products This Month</h2>
    <div class="pro-container">
        <div class="pro">
            <img src="img/hotproducts/f1.png" alt="">
            <div class="des">
                <span>Bluetooth Speakers</span>
                <h5>Notebook Widescreen Y700-17 GF790</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>$159.00</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/hotproducts/f2.png" alt="">
            <div class="des">
                <span>Bluetooth Speakers</span>
                <h5>Tablet Thin EliteBook Revolve 810 G2</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>$1,347.00</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/hotproducts/f3.png" alt="">
            <div class="des">
                <span>Bluetooth Speakers</span>
                <h5>Smartphone 6S 32GB LTE</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>$1,347.00</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/hotproducts/f4.png" alt="">
            <div class="des">
                <span>Bluetooth Speakers</span>
                <h5>Wireless Audio System Multiroom 360</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>$799.00</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/hotproducts/f5.png" alt="">
            <div class="des">
                <span>Bluetooth Speakers</span>
                <h5>Notebook Widescreen Y700-17 GF790</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>$69.00</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/hotproducts/f6.png" alt="">
            <div class="des">
                <span>Bluetooth Speakers</span>
                <h5>Tablet Thin EliteBook Revolve 810 G2</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>$69.00</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/hotproducts/f2.png" alt="">
            <div class="des">
                <span>Bluetooth Speakers</span>
                <h5>Tablet Thin EliteBook Revolve 810 G2</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>$1,347.00</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/hotproducts/f2.png" alt="">
            <div class="des">
                <span>Bluetooth Speakers</span>
                <h5>Tablet Thin EliteBook Revolve 810 G2</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>$1,347.00</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
    </div>
</section>
<section id="sm-banner">
    <a href="#"><img src="img/banner/Banner2.PNG" height="200" style="width:100%" class="pic" alt=""></a>
    <a href="#"><img src="img/banner/banner3.PNG" height="200" style="width:100%" class="pic1" alt=""></a>
    <a href="#"><img src="img/banner/banner4.PNG" height="200" style="width:100%" class="pic2" alt=""></a>
</section>
<section id="newletter" class="section-p1 section-m1">
    <div class="newtext">
        <h4>Sign Up For Newletter</h4>
        <p>Get E-mail updates about our latest shop and <span>Special Offers.</span></p>
    </div>
    <div class="form">
        <input type="text" placeholder="Your email">
        <button class="normal">Sign Up</button>
    </div>
</section>
<footer class="section-p1">
    <div class="col">
        <img class="logo" src="img/logo.png" height="200" alt="">
        <h4>Contact</h4>
        <p><strong>Address: </strong> 87/9 Tan Xuan,Xuan Dinh, Ha Noi.</p>
        <p><strong>Phone: </strong> 09899982351.</p>
        <p><strong>Hour </strong> 8:00-19:00,Mon - Sat.</p>
        <div class="follow">
            <h4> Follow us</h4>
            <div class="icon">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-youtube"></i></a>
            </div>
        </div>
    </div>
    <div class="col">
        <h4>About</h4>
        <a href="contact.html">Contact us</a>
        <a href="#">Terms & Conditions</a>
        <a href="#">Privacy Policy</a>

    </div>
    <div class="col">
        <h4>My Account</h4>
        <a href="#">Sign In</a>
        <a href="cart.html">View Cart</a>
        <a href="#">Help</a>
    </div>
    <div class="copyright">
        <p>© Electro - All Rights Reserved</p>
    </div>
</footer>


<script src="script.js"></script>
</body>
</html>