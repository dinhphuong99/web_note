<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
  <title> Note Web</title>
  <!-- App css -->
  <link rel="shortcut icon" type="image/png" href="./resources/images/editnote_pencil_edi_6175.png"/>
  <link href="./resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" id="bootstrap-stylesheet">
  <link href="./resources/css/icons.min.css" rel="stylesheet" type="text/css">
  <link href="./resources/css/app.min.css" rel="stylesheet" type="text/css" id="app-stylesheet">
  <script type="text/javascript" src = "./resources/js/jquery-1.11.3.min.js"></script>
  <script type="text/javascript" src = "./resources/js/jquery.validate.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'/>
  <style>
    body {
      /*background-image: url("https://i2.wp.com/data.kenhsinhvien.net/files/2012/10/24/KenhSinhVien-tuyetroi15.gif");*/
      background-color: honeydew;
    }
    label.error {
      color: red;
    }
  </style>
  <script type="text/javascript"
          src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
  <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
          integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
          crossorigin="anonymous"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>
<body>
<!-- Begin page -->
<div id="wrapper">


  <!-- Topbar Start -->
  <div class="navbar-custom">
    <ul class="list-unstyled topnav-menu float-left mb-0">
    </ul>

    <ul class="list-unstyled topnav-menu topnav-menu-right m-0">
      <li>
        <button class="button-menu-mobile">
          <i class="mdi mdi-menu"></i>
        </button>
      </li>

      <li class="d-none d-sm-block" style="text-align: right">
        <form style="margin-left: 850px;" class="app-search  ">
          <div class="app-search-box">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Search...">
              <div class="input-group-append">
                <button class="btn" type="submit">
                  <i class="fas fa-search"></i>
                </button>
              </div>
            </div>
          </div>
        </form>
      </li>
    </ul>
  </div>
  <!-- end Topbar --> <!-- ========== Left Sidebar Start ========== -->
  <div class="left-side-menu">

    <!--- Sidemenu -->
    <div id="sidebar-menu">

      <ul class="metismenu" id="side-menu">

        <li>
          <a href="index.html">
            <i class="ti-list"></i>
            <span> All notes </span>
          </a>
        </li>

        <li>
          <a href="javascript: void(0);">
            <i class="ti-tumblr"></i>
            <span> Types of notes </span>
            <span class="menu-arrow"></span>
          </a>
          <ul class="nav-second-level" aria-expanded="false">
            <li><a href="components-range-slider.html">Range Slider</a></li>
            <li><a href="components-alerts.html">Alerts</a></li>
            <li><a href="components-icons.html">Icons</a></li>
            <li><a href="components-widgets.html">Widgets</a></li>
          </ul>
        </li>

        <li>
          <a href="javascript: void(0);">
            <i class="ti-flag"></i>
            <span>  Priority levels  </span>
            <span class="menu-arrow"></span>
          </a>
          <ul class="nav-second-level" aria-expanded="false">
            <li><a href="forms-general.html">General Elements</a></li>
          </ul>
        </li>
      </ul>

    </div>
    <!-- End Sidebar -->

    <div class="clearfix"></div>
  </div>

</div>
<!-- END wrapper -->

<!-- Right Sidebar -->
<div class="right-bar">
  <div class="rightbar-title">
    <a href="javascript:void(0);" class="right-bar-toggle float-right">
      <i class="mdi mdi-close"></i>
    </a>
    <h5 class="font-16 m-0 text-white">Theme Customizer</h5>
  </div>
  <div class="slimscroll-menu">

    <div class="p-4">
      <div class="alert alert-warning" role="alert">
        <strong>Customize </strong> the overall color scheme, layout, etc.
      </div>
      <div class="mb-2">
        <img src="./resources/images/layouts/light.png" class="img-fluid img-thumbnail" alt="">
      </div>
      <div class="custom-control custom-switch mb-3">
        <input type="checkbox" class="custom-control-input theme-choice" id="light-mode-switch" checked="">
        <label class="custom-control-label" for="light-mode-switch">Light Mode</label>
      </div>

      <div class="mb-2">
        <img src="./resources/images/layouts/dark.png" class="img-fluid img-thumbnail" alt="">
      </div>
      <div class="custom-control custom-switch mb-3">
        <input type="checkbox" class="custom-control-input theme-choice" id="dark-mode-switch" data-bsstyle="./resources/css/bootstrap-dark.min.css" data-appstyle="./resources/css/app-dark.min.css">
        <label class="custom-control-label" for="dark-mode-switch">Dark Mode</label>
      </div>

      <div class="mb-2">
        <img src="./resources/images/layouts/rtl.png" class="img-fluid img-thumbnail" alt="">
      </div>
      <div class="custom-control custom-switch mb-5">
        <input type="checkbox" class="custom-control-input theme-choice" id="rtl-mode-switch" data-appstyle="./resources/css/app-rtl.min.css">
        <label class="custom-control-label" for="rtl-mode-switch">RTL Mode</label>
      </div>

      <a href="https://1.envato.market/EK71X" class="btn btn-danger btn-block mt-3" target="_blank"><i class="mdi mdi-download mr-1"></i> Download Now</a>
    </div>
  </div> <!-- end slimscroll-menu-->
</div>
<!-- /Right-bar -->

<!-- Right bar overlay-->
<div class="rightbar-overlay"></div>

<!-- Vendor js -->
<script src="./resources/js/vendor.min.js"></script>

<script src="./resources/libs/morris-js/morris.min.js"></script>
<script src="./resources/libs/raphael/raphael.min.js"></script>

<script src="./resources/js/pages/morris.init.js"></script>

<script src="./resources/libs/flot-charts/jquery.flot.js"></script>
<script src="./resources/libs/flot-charts/jquery.flot.time.js"></script>
<script src="./resources/libs/flot-charts/jquery.flot.tooltip.min.js"></script>
<script src="./resources/libs/flot-charts/jquery.flot.resize.js"></script>
<script src="./resources/libs/flot-charts/jquery.flot.pie.js"></script>
<script src="./resources/libs/flot-charts/jquery.flot.selection.js"></script>
<script src="./resources/libs/flot-charts/jquery.flot.stack.js"></script>
<script src="./resources/libs/flot-charts/jquery.flot.orderBars.js"></script>
<script src="./resources/libs/flot-charts/jquery.flot.crosshair.js"></script>
<script src="./resources/libs/flot-charts/jquery.flot.axislabels.js"></script>

<!-- KNOB JS -->
<script src="./resources/libs/jquery-knob/jquery.knob.min.js"></script>

<script src="./resources/js/pages/flot.init.js"></script>

<!-- App js -->
<script src="./resources/js/app.min.js"></script>
</body>
</html>