<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../dashboard/assets/img/logo-fav.png">
    <title>Note Web</title>
    <link rel="stylesheet" type="text/css" href="../dashboard/assets/lib/perfect-scrollbar/css/perfect-scrollbar.css">
    <link rel="stylesheet" type="text/css"
          href="../dashboard/assets/lib/material-design-icons/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" type="text/css"
          href="../dashboard/assets/lib/datatables/datatables.net-bs4/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css"
          href="../dashboard/assets/lib/datatables/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css">
    <link rel="stylesheet" href="../dashboard/assets/css/app.css" type="text/css">
</head>
<body>
<div class="be-wrapper">
    <nav class="navbar navbar-expand fixed-top be-top-header">
        <div class="container-fluid">
            <div class="be-navbar-header"><a class="navbar-brand" href="index.jsp"></a>
            </div>
            <div class="page-title"><span></span></div>
            <div class="be-right-navbar">
                <ul class="nav navbar-nav float-right be-user-nav">
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
                                                     role="button" aria-expanded="false"><img
                            src="../dashboard/assets/img/avatar.png" alt="Avatar"><span class="user-name">Nguyễn Đình Phương</span></a>
                        <div class="dropdown-menu" role="menu">
                            <div class="user-info">
                                <div class="user-name">Nguyễn Đình Phương</div>
                                <div class="user-position online">Available</div>
                            </div>
                            <a class="dropdown-item" href="pages-profile.html"><span class="icon mdi mdi-face"></span>Account</a><a
                                class="dropdown-item" href="#"><span class="icon mdi mdi-settings"></span>Settings</a><a
                                class="dropdown-item" href="pages-login.html"><span class="icon mdi mdi-power"></span>Logout</a>
                        </div>
                    </li>
                </ul>
                <ul class="nav navbar-nav float-right be-icons-nav">
                    <li class="nav-item dropdown"><a class="nav-link be-toggle-right-sidebar" href="#" role="button"
                                                     aria-expanded="false"><span
                            class="icon mdi mdi-settings"></span></a></li>
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
                                                     role="button" aria-expanded="false"><span
                            class="icon mdi mdi-notifications"></span><span class="indicator"></span></a>
                        <ul class="dropdown-menu be-notifications">
                            <li>
                                <div class="title">Notifications<span class="badge badge-pill">3</span></div>
                                <div class="list">
                                    <div class="be-scroller-notifications">
                                        <div class="content">
                                            <ul>
                                                <li class="notification notification-unread"><a href="#">
                                                    <div class="image"><img src="../dashboard/assets/img/avatar2.png"
                                                                            alt="Avatar"></div>
                                                    <div class="notification-info">
                                                        <div class="text"><span class="user-name">Jessica Caruso</span>
                                                            accepted your invitation to join the team.
                                                        </div>
                                                        <span class="date">2 min ago</span>
                                                    </div>
                                                </a></li>
                                                <li class="notification"><a href="#">
                                                    <div class="image"><img src="../dashboard/assets/img/avatar3.png"
                                                                            alt="Avatar"></div>
                                                    <div class="notification-info">
                                                        <div class="text"><span class="user-name">Joel King</span> is
                                                            now following you
                                                        </div>
                                                        <span class="date">2 days ago</span>
                                                    </div>
                                                </a></li>
                                                <li class="notification"><a href="#">
                                                    <div class="image"><img src="../dashboard/assets/img/avatar4.png"
                                                                            alt="Avatar"></div>
                                                    <div class="notification-info">
                                                        <div class="text"><span class="user-name">John Doe</span> is
                                                            watching your main repository
                                                        </div>
                                                        <span class="date">2 days ago</span>
                                                    </div>
                                                </a></li>
                                                <li class="notification"><a href="#">
                                                    <div class="image"><img src="../dashboard/assets/img/avatar5.png"
                                                                            alt="Avatar"></div>
                                                    <div class="notification-info"><span class="text"><span
                                                            class="user-name">Emily Carter</span> is now following you</span><span
                                                            class="date">5 days ago</span></div>
                                                </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="footer"><a href="#">View all notifications</a></div>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
                                                     role="button" aria-expanded="false"><span
                            class="icon mdi mdi-apps"></span></a>
                        <ul class="dropdown-menu be-connections">
                            <li>
                                <div class="list">
                                    <div class="content">
                                        <div class="row">
                                            <div class="col"><a class="connection-item" href="#"><img
                                                    src="../dashboard/assets/img/github.png"
                                                    alt="Github"><span>GitHub</span></a></div>
                                            <div class="col"><a class="connection-item" href="#"><img
                                                    src="../dashboard/assets/img/bitbucket.png" alt="Bitbucket"><span>Bitbucket</span></a>
                                            </div>
                                            <div class="col"><a class="connection-item" href="#"><img
                                                    src="../dashboard/assets/img/slack.png"
                                                    alt="Slack"><span>Slack</span></a></div>
                                        </div>
                                        <div class="row">
                                            <div class="col"><a class="connection-item" href="#"><img
                                                    src="../dashboard/assets/img/dribbble.png" alt="Dribbble"><span>Dribbble</span></a>
                                            </div>
                                            <div class="col"><a class="connection-item" href="#"><img
                                                    src="../dashboard/assets/img/mail_chimp.png" alt="Mail Chimp"><span>Mail Chimp</span></a>
                                            </div>
                                            <div class="col"><a class="connection-item" href="#"><img
                                                    src="../dashboard/assets/img/dropbox.png" alt="Dropbox"><span>Dropbox</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="footer"><a href="#">More</a></div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="be-left-sidebar">
        <div class="left-sidebar-wrapper"><a class="left-sidebar-toggle" href="#"></a>
            <div class="left-sidebar-spacer">
                <div class="left-sidebar-scroll">
                    <div class="left-sidebar-content">
                        <ul class="sidebar-elements">
                            <li class="divider">Menu</li>
                            <li><a href="index.jsp"><i class="icon mdi mdi-home"></i><span>Dashboard</span></a>
                            </li>
                            <li class="parent"><a href="#"><i
                                    class="icon mdi mdi-border-all"></i><span>Tables</span></a>
                                <ul class="sub-menu">
                                    <li><a href="tables-general.html">General</a>
                                    </li>
                                    <li class="active"><a href="tables-datatables.html">Data Tables</a>
                                    </li>
                                    <li><a href="tables-filters.html"><span
                                            class="badge badge-primary float-right">New</span>Table Filters</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="be-content">
        <div class="page-head">
            <h2 class="page-head-title">All Note</h2>
            <nav aria-label="breadcrumb" role="navigation">
            </nav>
        </div>
        <div class="main-content container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card card-table">
                        <div class="card-header">Immediate responsive table
                            <div class="tools dropdown"><span class="icon mdi mdi-download"></span><a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown"><span class="icon mdi mdi-more-vert"></span></a>
                                <div class="dropdown-menu" role="menu"><a class="dropdown-item" href="#">Action</a><a class="dropdown-item" href="#">Another action</a><a class="dropdown-item" href="#">Something else here</a>
                                    <div class="dropdown-divider"></div><a class="dropdown-item" href="#">Separated link</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <table class="table table-striped table-hover table-fw-widget" id="table5">
                                <thead>
                                <tr>
                                    <th>Rendering engine</th>
                                    <th>Browser</th>
                                    <th>Platform(s)</th>
                                    <th>Engine version</th>
                                    <th>CSS grade</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="odd gradeX">
                                    <td>Trident</td>
                                    <td>
                                        Internet
                                        Explorer 4.0
                                    </td>
                                    <td>Win 95+</td>
                                    <td class="center"> 4</td>
                                    <td class="center"></td>
                                </tr>
                                <tr class="even gradeC">
                                    <td>Trident</td>
                                    <td>
                                        Internet
                                        Explorer 5.0
                                    </td>
                                    <td>Win 95+</td>
                                    <td class="center">5</td>
                                    <td class="center">C</td>
                                </tr>
                                <tr class="odd gradeA">
                                    <td>Trident</td>
                                    <td>
                                        Internet
                                        Explorer 5.5
                                    </td>
                                    <td>Win 95+</td>
                                    <td class="center">5.5</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="even gradeA">
                                    <td>Trident</td>
                                    <td>
                                        Internet
                                        Explorer 6
                                    </td>
                                    <td>Win 98+</td>
                                    <td class="center">6</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="odd gradeA">
                                    <td>Trident</td>
                                    <td>Internet Explorer 7</td>
                                    <td>Win XP SP2+</td>
                                    <td class="center">7</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="even gradeA">
                                    <td>Trident</td>
                                    <td>AOL browser (AOL desktop)</td>
                                    <td>Win XP</td>
                                    <td class="center">6</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Firefox 1.0</td>
                                    <td>Win 98+ / OSX.2+</td>
                                    <td class="center">1.7</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Firefox 1.5</td>
                                    <td>Win 98+ / OSX.2+</td>
                                    <td class="center">1.8</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Firefox 2.0</td>
                                    <td>Win 98+ / OSX.2+</td>
                                    <td class="center">1.8</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Firefox 3.0</td>
                                    <td>Win 2k+ / OSX.3+</td>
                                    <td class="center">1.9</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Camino 1.0</td>
                                    <td>OSX.2+</td>
                                    <td class="center">1.8</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Camino 1.5</td>
                                    <td>OSX.3+</td>
                                    <td class="center">1.8</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Netscape 7.2</td>
                                    <td>Win 95+ / Mac OS 8.6-9.2</td>
                                    <td class="center">1.7</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Netscape Browser 8</td>
                                    <td>Win 98SE+</td>
                                    <td class="center">1.7</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Netscape Navigator 9</td>
                                    <td>Win 98+ / OSX.2+</td>
                                    <td class="center">1.8</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Mozilla 1.0</td>
                                    <td>Win 95+ / OSX.1+</td>
                                    <td class="center">1</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Mozilla 1.1</td>
                                    <td>Win 95+ / OSX.1+</td>
                                    <td class="center">1.1</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Mozilla 1.2</td>
                                    <td>Win 95+ / OSX.1+</td>
                                    <td class="center">1.2</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Mozilla 1.3</td>
                                    <td>Win 95+ / OSX.1+</td>
                                    <td class="center">1.3</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Mozilla 1.4</td>
                                    <td>Win 95+ / OSX.1+</td>
                                    <td class="center">1.4</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Mozilla 1.5</td>
                                    <td>Win 95+ / OSX.1+</td>
                                    <td class="center">1.5</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Mozilla 1.6</td>
                                    <td>Win 95+ / OSX.1+</td>
                                    <td class="center">1.6</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Mozilla 1.7</td>
                                    <td>Win 98+ / OSX.1+</td>
                                    <td class="center">1.7</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Mozilla 1.8</td>
                                    <td>Win 98+ / OSX.1+</td>
                                    <td class="center">1.8</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Seamonkey 1.1</td>
                                    <td>Win 98+ / OSX.2+</td>
                                    <td class="center">1.8</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Epiphany 2.20</td>
                                    <td>Gnome</td>
                                    <td class="center">1.8</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Webkit</td>
                                    <td>Safari 1.2</td>
                                    <td>OSX.3</td>
                                    <td class="center">125.5</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Webkit</td>
                                    <td>Safari 1.3</td>
                                    <td>OSX.3</td>
                                    <td class="center">312.8</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Webkit</td>
                                    <td>Safari 2.0</td>
                                    <td>OSX.4+</td>
                                    <td class="center">419.3</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Webkit</td>
                                    <td>Safari 3.0</td>
                                    <td>OSX.4+</td>
                                    <td class="center">522.1</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Webkit</td>
                                    <td>OmniWeb 5.5</td>
                                    <td>OSX.4+</td>
                                    <td class="center">420</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Webkit</td>
                                    <td>iPod Touch / iPhone</td>
                                    <td>iPod</td>
                                    <td class="center">420.1</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Webkit</td>
                                    <td>S60</td>
                                    <td>S60</td>
                                    <td class="center">413</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Presto</td>
                                    <td>Opera 7.0</td>
                                    <td>Win 95+ / OSX.1+</td>
                                    <td class="center">-</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Presto</td>
                                    <td>Opera 7.5</td>
                                    <td>Win 95+ / OSX.2+</td>
                                    <td class="center">-</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Presto</td>
                                    <td>Opera 8.0</td>
                                    <td>Win 95+ / OSX.2+</td>
                                    <td class="center">-</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Presto</td>
                                    <td>Opera 8.5</td>
                                    <td>Win 95+ / OSX.2+</td>
                                    <td class="center">-</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Presto</td>
                                    <td>Opera 9.0</td>
                                    <td>Win 95+ / OSX.3+</td>
                                    <td class="center">-</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Presto</td>
                                    <td>Opera 9.2</td>
                                    <td>Win 88+ / OSX.3+</td>
                                    <td class="center">-</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Presto</td>
                                    <td>Opera 9.5</td>
                                    <td>Win 88+ / OSX.3+</td>
                                    <td class="center">-</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Presto</td>
                                    <td>Opera for Wii</td>
                                    <td>Wii</td>
                                    <td class="center">-</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Presto</td>
                                    <td>Nokia N800</td>
                                    <td>N800</td>
                                    <td class="center">-</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Presto</td>
                                    <td>Nintendo DS browser</td>
                                    <td>Nintendo DS</td>
                                    <td class="center">8.5</td>
                                    <td class="center">C/A<sup>1</sup></td>
                                </tr>
                                <tr class="gradeC">
                                    <td>KHTML</td>
                                    <td>Konqureror 3.1</td>
                                    <td>KDE 3.1</td>
                                    <td class="center">3.1</td>
                                    <td class="center">C</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>KHTML</td>
                                    <td>Konqureror 3.3</td>
                                    <td>KDE 3.3</td>
                                    <td class="center">3.3</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>KHTML</td>
                                    <td>Konqureror 3.5</td>
                                    <td>KDE 3.5</td>
                                    <td class="center">3.5</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>Tasman</td>
                                    <td>Internet Explorer 4.5</td>
                                    <td>Mac OS 8-9</td>
                                    <td class="center">-</td>
                                    <td class="center">X</td>
                                </tr>
                                <tr class="gradeC">
                                    <td>Tasman</td>
                                    <td>Internet Explorer 5.1</td>
                                    <td>Mac OS 7.6-9</td>
                                    <td class="center">1</td>
                                    <td class="center">C</td>
                                </tr>
                                <tr class="gradeC">
                                    <td>Tasman</td>
                                    <td>Internet Explorer 5.2</td>
                                    <td>Mac OS 8-X</td>
                                    <td class="center">1</td>
                                    <td class="center">C</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Misc</td>
                                    <td>NetFront 3.1</td>
                                    <td>Embedded devices</td>
                                    <td class="center">-</td>
                                    <td class="center">C</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Misc</td>
                                    <td>NetFront 3.4</td>
                                    <td>Embedded devices</td>
                                    <td class="center">-</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>Misc</td>
                                    <td>Dillo 0.8</td>
                                    <td>Embedded devices</td>
                                    <td class="center">-</td>
                                    <td class="center">X</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>Misc</td>
                                    <td>Links</td>
                                    <td>Text only</td>
                                    <td class="center">-</td>
                                    <td class="center">X</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>Misc</td>
                                    <td>Lynx</td>
                                    <td>Text only</td>
                                    <td class="center">-</td>
                                    <td class="center">X</td>
                                </tr>
                                <tr class="gradeC">
                                    <td>Misc</td>
                                    <td>IE Mobile</td>
                                    <td>Windows Mobile 6</td>
                                    <td class="center">-</td>
                                    <td class="center">C</td>
                                </tr>
                                <tr class="gradeC">
                                    <td>Misc</td>
                                    <td>PSP browser</td>
                                    <td>PSP</td>
                                    <td class="center">-</td>
                                    <td class="center">C</td>
                                </tr>
                                <tr class="gradeU">
                                    <td>Other browsers</td>
                                    <td>All others</td>
                                    <td>-</td>
                                    <td class="center">-</td>
                                    <td class="center">U</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="card card-table">
                        <div style="border: solid 1px blue; text-align: center; size: 25px; height: 25px">
                            <a style="text-align: center; font-size: 20px" href="/notes?action=create">Add New
                                Note</a>
                        </div>
                        <div class="card-body">
                            <table class="table table-striped table-hover table-fw-widget" id="table6">
                                <thead>
                                <tr>
                                    <th>Note name</th>
                                    <th>Start Time</th>
                                    <th>End Time</th>
                                    <th>Description</th>
                                    <th>Type</th>
                                    <th>Priority</th>
                                    <th colspan="2">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="odd gradeX" style="display: none">
                                    <td></td>
                                    <td>
                                    </td>
                                    <td></td>
                                    <td class="center"></td>
                                    <td class="center"></td>
                                </tr>
                                <c:forEach var="note" items="${listNote}">
                                    <tr class="odd gradeX">
                                        <td style="display: none"><c:out value="${note.id}"/></td>
                                        <td><c:out value="${note.noteName}"/></td>
                                        <td><c:out value="${note.startTime}"/></td>
                                        <td><c:out value="${note.endTime}"/></td>
                                        <td><c:out value="${note.description}"/></td>
                                        <td><c:out value="${note.typeId}"/></td>
                                        <td class="center">
                                            <c:out value="${note.priorityId}"/>
                                        </td>

                                        <td class="center">

                                            <a href="/notes?action=edit&id=${note.id}">Edit</a>
                                            <a href="/notes?action=delete&id=${note.id}">Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                <tr class="odd gradeX" style="display: none">
                                    <td></td>
                                    <td>
                                    </td>
                                    <td></td>
                                    <td class="center"></td>
                                    <td class="center"></td>
                                </tr>
                                <tr class="odd gradeX">
                                    <td>Trident</td>
                                    <td>
                                        Internet
                                        Explorer 4.0
                                    </td>
                                    <td>Win 95+</td>
                                    <td class="center"> 4</td>
                                    <td class="center"></td>
                                </tr>
                                <tr class="even gradeC">
                                    <td>Trident</td>
                                    <td>
                                        Internet
                                        Explorer 5.0
                                    </td>
                                    <td>Win 95+</td>
                                    <td class="center">5</td>
                                    <td class="center">C</td>
                                </tr>
                                <tr class="odd gradeA">
                                    <td>Trident</td>
                                    <td>
                                        Internet
                                        Explorer 5.5
                                    </td>
                                    <td>Win 95+</td>
                                    <td class="center">5.5</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="even gradeA">
                                    <td>Trident</td>
                                    <td>
                                        Internet
                                        Explorer 6
                                    </td>
                                    <td>Win 98+</td>
                                    <td class="center">6</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="odd gradeA">
                                    <td>Trident</td>
                                    <td>Internet Explorer 7</td>
                                    <td>Win XP SP2+</td>
                                    <td class="center">7</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="even gradeA">
                                    <td>Trident</td>
                                    <td>AOL browser (AOL desktop)</td>
                                    <td>Win XP</td>
                                    <td class="center">6</td>
                                    <td class="center">A</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <nav class="be-right-sidebar">
        <div class="sb-content">
            <div class="tab-navigation">
                <ul class="nav nav-tabs nav-justified" role="tablist">
                    <li class="nav-item" role="presentation"><a class="nav-link active" href="#tab1"
                                                                aria-controls="tab1" role="tab"
                                                                data-toggle="tab">Chat</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="#tab2" aria-controls="tab2"
                                                                role="tab" data-toggle="tab">Todo</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="#tab3" aria-controls="tab3"
                                                                role="tab" data-toggle="tab">Settings</a></li>
                </ul>
            </div>
            <div class="tab-panel">
                <div class="tab-content">
                    <div class="tab-pane tab-chat active" id="tab1" role="tabpanel">
                        <div class="chat-contacts">
                            <div class="chat-sections">
                                <div class="be-scroller-chat">
                                    <div class="content">
                                        <h2>Recent</h2>
                                        <div class="contact-list contact-list-recent">
                                            <div class="user"><a href="#"><img src="../dashboard/assets/img/avatar1.png"
                                                                               alt="Avatar">
                                                <div class="user-data"><span class="status away"></span><span
                                                        class="name">Claire Sassu</span><span class="message">Can you share the...</span>
                                                </div>
                                            </a></div>
                                            <div class="user"><a href="#"><img src="../dashboard/assets/img/avatar2.png"
                                                                               alt="Avatar">
                                                <div class="user-data"><span class="status"></span><span class="name">Maggie jackson</span><span
                                                        class="message">I confirmed the info.</span></div>
                                            </a></div>
                                            <div class="user"><a href="#"><img src="../dashboard/assets/img/avatar3.png"
                                                                               alt="Avatar">
                                                <div class="user-data"><span class="status offline"></span><span
                                                        class="name">Joel King		</span><span class="message">Ready for the meeti...</span>
                                                </div>
                                            </a></div>
                                        </div>
                                        <h2>Contacts</h2>
                                        <div class="contact-list">
                                            <div class="user"><a href="#"><img src="../dashboard/assets/img/avatar4.png"
                                                                               alt="Avatar">
                                                <div class="user-data2"><span class="status"></span><span class="name">Mike Bolthort</span>
                                                </div>
                                            </a></div>
                                            <div class="user"><a href="#"><img src="../dashboard/assets/img/avatar5.png"
                                                                               alt="Avatar">
                                                <div class="user-data2"><span class="status"></span><span class="name">Maggie jackson</span>
                                                </div>
                                            </a></div>
                                            <div class="user"><a href="#"><img src="../dashboard/assets/img/avatar6.png"
                                                                               alt="Avatar">
                                                <div class="user-data2"><span class="status offline"></span><span
                                                        class="name">Jhon Voltemar</span></div>
                                            </a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="bottom-input">
                                <input type="text" placeholder="Search..." name="q"><span class="mdi mdi-search"></span>
                            </div>
                        </div>
                        <div class="chat-window">
                            <div class="title">
                                <div class="user"><img src="../dashboard/assets/img/avatar2.png" alt="Avatar">
                                    <h2>Maggie jackson</h2><span>Active 1h ago</span>
                                </div>
                                <span class="icon return mdi mdi-chevron-left"></span>
                            </div>
                            <div class="chat-messages">
                                <div class="be-scroller-messages">
                                    <div class="content">
                                        <ul>
                                            <li class="friend">
                                                <div class="msg">Hello</div>
                                            </li>
                                            <li class="self">
                                                <div class="msg">Hi, how are you?</div>
                                            </li>
                                            <li class="friend">
                                                <div class="msg">Good, I'll need support with my pc</div>
                                            </li>
                                            <li class="self">
                                                <div class="msg">Sure, just tell me what is going on with your
                                                    computer?
                                                </div>
                                            </li>
                                            <li class="friend">
                                                <div class="msg">I don't know it just turns off suddenly</div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="chat-input">
                                <div class="input-wrapper"><span class="photo mdi mdi-camera"></span>
                                    <input type="text" placeholder="Message..." name="q" autocomplete="off"><span
                                            class="send-msg mdi mdi-mail-send"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane tab-todo" id="tab2" role="tabpanel">
                        <div class="todo-container">
                            <div class="todo-wrapper">
                                <div class="be-scroller-todo">
                                    <div class="todo-content"><span class="category-title">Today</span>
                                        <ul class="todo-list">
                                            <li>
                                                <div class="custom-checkbox custom-control custom-control-sm"><span
                                                        class="delete mdi mdi-delete"></span>
                                                    <input class="custom-control-input" type="checkbox" checked=""
                                                           id="tck1">
                                                    <label class="custom-control-label" for="tck1">Initialize the
                                                        project</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="custom-checkbox custom-control custom-control-sm"><span
                                                        class="delete mdi mdi-delete"></span>
                                                    <input class="custom-control-input" type="checkbox" id="tck2">
                                                    <label class="custom-control-label" for="tck2">Create the main
                                                        structure </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="custom-checkbox custom-control custom-control-sm"><span
                                                        class="delete mdi mdi-delete"></span>
                                                    <input class="custom-control-input" type="checkbox" id="tck3">
                                                    <label class="custom-control-label" for="tck3">Updates changes to
                                                        GitHub </label>
                                                </div>
                                            </li>
                                        </ul>
                                        <span class="category-title">Tomorrow</span>
                                        <ul class="todo-list">
                                            <li>
                                                <div class="custom-checkbox custom-control custom-control-sm"><span
                                                        class="delete mdi mdi-delete"></span>
                                                    <input class="custom-control-input" type="checkbox" id="tck4">
                                                    <label class="custom-control-label" for="tck4">Initialize the
                                                        project </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="custom-checkbox custom-control custom-control-sm"><span
                                                        class="delete mdi mdi-delete"></span>
                                                    <input class="custom-control-input" type="checkbox" id="tck5">
                                                    <label class="custom-control-label" for="tck5">Create the main
                                                        structure </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="custom-checkbox custom-control custom-control-sm"><span
                                                        class="delete mdi mdi-delete"></span>
                                                    <input class="custom-control-input" type="checkbox" id="tck6">
                                                    <label class="custom-control-label" for="tck6">Updates changes to
                                                        GitHub </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="custom-checkbox custom-control custom-control-sm"><span
                                                        class="delete mdi mdi-delete"></span>
                                                    <input class="custom-control-input" type="checkbox" id="tck7">
                                                    <label class="custom-control-label" for="tck7"
                                                           title="This task is too long to be displayed in a normal space!">This
                                                        task is too long to be displayed in a normal space! </label>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="bottom-input">
                                <input type="text" placeholder="Create new task..." name="q"><span
                                    class="mdi mdi-plus"></span>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane tab-settings" id="tab3" role="tabpanel">
                        <div class="settings-wrapper">
                            <div class="be-scroller-settings"><span class="category-title">General</span>
                                <ul class="settings-list">
                                    <li>
                                        <div class="switch-button switch-button-sm">
                                            <input type="checkbox" checked="" name="st1" id="st1"><span>
                            <label for="st1"></label></span>
                                        </div>
                                        <span class="name">Available</span>
                                    </li>
                                    <li>
                                        <div class="switch-button switch-button-sm">
                                            <input type="checkbox" checked="" name="st2" id="st2"><span>
                            <label for="st2"></label></span>
                                        </div>
                                        <span class="name">Enable notifications</span>
                                    </li>
                                    <li>
                                        <div class="switch-button switch-button-sm">
                                            <input type="checkbox" checked="" name="st3" id="st3"><span>
                            <label for="st3"></label></span>
                                        </div>
                                        <span class="name">Login with Facebook</span>
                                    </li>
                                </ul>
                                <span class="category-title">Notifications</span>
                                <ul class="settings-list">
                                    <li>
                                        <div class="switch-button switch-button-sm">
                                            <input type="checkbox" name="st4" id="st4"><span>
                            <label for="st4"></label></span>
                                        </div>
                                        <span class="name">Email notifications</span>
                                    </li>
                                    <li>
                                        <div class="switch-button switch-button-sm">
                                            <input type="checkbox" checked="" name="st5" id="st5"><span>
                            <label for="st5"></label></span>
                                        </div>
                                        <span class="name">Project updates</span>
                                    </li>
                                    <li>
                                        <div class="switch-button switch-button-sm">
                                            <input type="checkbox" checked="" name="st6" id="st6"><span>
                            <label for="st6"></label></span>
                                        </div>
                                        <span class="name">New comments</span>
                                    </li>
                                    <li>
                                        <div class="switch-button switch-button-sm">
                                            <input type="checkbox" name="st7" id="st7"><span>
                            <label for="st7"></label></span>
                                        </div>
                                        <span class="name">Chat messages</span>
                                    </li>
                                </ul>
                                <span class="category-title">Workflow</span>
                                <ul class="settings-list">
                                    <li>
                                        <div class="switch-button switch-button-sm">
                                            <input type="checkbox" name="st8" id="st8"><span>
                            <label for="st8"></label></span>
                                        </div>
                                        <span class="name">Deploy on commit</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</div>
<script src="../dashboard/assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
<script src="../dashboard/assets/lib/perfect-scrollbar/js/perfect-scrollbar.min.js" type="text/javascript"></script>
<script src="../dashboard/assets/lib/bootstrap/dist/js/bootstrap.bundle.min.js" type="text/javascript"></script>
<script src="../dashboard/assets/js/app.js" type="text/javascript"></script>
<script src="../dashboard/assets/lib/datatables/datatables.net/js/jquery.dataTables.js" type="text/javascript"></script>
<script src="../dashboard/assets/lib/datatables/datatables.net-bs4/js/dataTables.bootstrap4.js"
        type="text/javascript"></script>
<script src="../dashboard/assets/lib/datatables/datatables.net-buttons/js/dataTables.buttons.min.js"
        type="text/javascript"></script>
<script src="../dashboard/assets/lib/datatables/datatables.net-buttons/js/buttons.flash.min.js"
        type="text/javascript"></script>
<script src="../dashboard/assets/lib/datatables/jszip/jszip.min.js" type="text/javascript"></script>
<script src="../dashboard/assets/lib/datatables/pdfmake/pdfmake.min.js" type="text/javascript"></script>
<script src="../dashboard/assets/lib/datatables/pdfmake/vfs_fonts.js" type="text/javascript"></script>
<script src="../dashboard/assets/lib/datatables/datatables.net-buttons/js/buttons.colVis.min.js"
        type="text/javascript"></script>
<script src="../dashboard/assets/lib/datatables/datatables.net-buttons/js/buttons.print.min.js"
        type="text/javascript"></script>
<script src="../dashboard/assets/lib/datatables/datatables.net-buttons/js/buttons.html5.min.js"
        type="text/javascript"></script>
<script src="../dashboard/assets/lib/datatables/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js"
        type="text/javascript"></script>
<script src="../dashboard/assets/lib/datatables/datatables.net-responsive/js/dataTables.responsive.min.js"
        type="text/javascript"></script>
<script src="../dashboard/assets/lib/datatables/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"
        type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        //-initialize the javascript
        App.init();
        App.dataTables();
    });
</script>
</body>
</html>

<%--<html>--%>
<%--<head>--%>
<%--    <title>Product Management Application</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div style="text-align: center;">--%>
<%--    <h1>Product Management</h1>--%>
<%--    <h2>--%>
<%--        <a href="/categorys?action=create">Add New Product</a>--%>
<%--    </h2>--%>
<%--</div>--%>
<%--<div align="center">--%>
<%--    <table border="1" cellpadding="5">--%>
<%--        <caption><h2>List of Product</h2></caption>--%>
<%--        <tr>--%>
<%--            <th>#</th>--%>
<%--            <th>Name</th>--%>
<%--            <th>Price</th>--%>
<%--            <th>Quantity</th>--%>
<%--            <th>Color</th>--%>
<%--            <th>Description</th>--%>
<%--            <th>Category</th>--%>
<%--            <th>Actions</th>--%>
<%--        </tr>--%>
<%--        <c:forEach var="product" items="${listProduct}">--%>
<%--            <tr>--%>
<%--                <td><c:out value="${product.id}"/></td>--%>
<%--                <td><c:out value="${product.fullname}"/></td>--%>
<%--                <td><c:out value="${product.price}"/></td>--%>
<%--                <td><c:out value="${product.quantity}"/></td>--%>
<%--                <td><c:out value="${product.color}"/></td>--%>
<%--                <td><c:out value="${product.description}"/></td>--%>
<%--                <td><c:out value="${product.cat_id}"/></td>--%>
<%--                <td>--%>
<%--                    <a href="/categorys?action=edit&id=${product.id}">Edit</a>--%>
<%--                    <a href="/categorys?action=delete&id=${product.id}">Delete</a>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--    </table>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>