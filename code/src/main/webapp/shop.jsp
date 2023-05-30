<%@ page import="com.btl.code.model.Product" %>
<%@ page import="com.btl.code.dao.ProductDao" %>
<%@ page import="java.util.List" %>
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
  <%@ include file="header.jsp" %>
  <section id="page-header">
    <h2>Good Deal!</h2>
    <p>Best products you can find</p>
  </section>
  <%@ include file="category.jsp" %>
  <%
    List<Product> productList = (List<Product>) request.getAttribute("products");
    String title = request.getAttribute("title").toString();
  %>
  <%@ include file="productList.jsp" %>
  <%if(request.getAttribute("totalPage") != null){%>
  <div id="paging">
    <div class="pgn">
      <button type="button" class="prev"><i class="fal fa-arrow-left fa-sm"></i></button>
      <button type="button" class="next"><i class="fal fa-arrow-right fa-sm"></i></button>
      <div class="pages">
        <div class="page-container">
          <%for (int i = 1; i <= (int)request.getAttribute("totalPage"); i++) {
            if(Integer.parseInt(request.getParameter("page")) == i){%>
          <button type="button" class="btn-page active">
            <a href=<%= "/shop?page="+ i %>><%= i %></a>
          </button>
          <%} else {%>
          <button type="button" class="btn-page">
            <a href=<%= "/shop?page="+ i %>><%= i %></a>
          </button>
          <%}}%>
        </div>
      </div>
    </div>
  </div>
  <%}%>
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
  <%@ include file="footer.jsp" %>
  <script src="js/scripts.js"></script>
  <script src="js/paging.js"></script>
  <script src="js/slideshow.js"></script>
</body>
</html>
