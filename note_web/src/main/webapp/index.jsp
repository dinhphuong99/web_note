<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 9/29/2021
  Time: 2:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Web Note</title>
    <script type="text/javascript" src = "./resources/js/jquery.validate.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'/>
  </head>
  <body>
  <div style="text-align: center">
    <a href="${pageContext.request.contextPath}/notes" class="btn btn-success"><i class="fa fa-history" aria-hidden="true"></i> <span>Transfer money Information</span></a>
  </div>
  </body>
</html>
