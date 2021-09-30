<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>List of notes</title>
    <script type="text/javascript"
            src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
    <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="shortcut icon" type="image/png" href="../resources/images/editnote_pencil_edi_6175.png"/>
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" id="bootstrap-stylesheet">
    <link href="../resources/css/icons.min.css" rel="stylesheet" type="text/css">
    <link href="../resources/css/app.min.css" rel="stylesheet" type="text/css" id="app-stylesheet">
    <script type="text/javascript" src = "../resources/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src = "../resources/js/jquery.validate.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'/>
    <script type="text/javascript" src = "../resources/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src = "../resources/js/jquery.validate.min.js"></script>
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
<div class="container">
    <div class="table-title">
        <div class="row">
            <div class="col-sm-5" style="color: red ">
                <h2><i class="fa fa-address-book" aria-hidden="true"></i>List of notes</h2>
            </div>
            <div class="col-sm-7">
                <a href="${pageContext.request.contextPath}/notes?action=create" class="btn btn-success"><i class="fa fa-plus-square-o" aria-hidden="true"></i> <span>Add New Note</span></a>
            </div>

            <div class="col-sm-9">
                <ul class="metismenu" id="side-menu">
                    <li>
                        <a href="javascript: void(0);">
                            <i class="ti-tumblr"></i>
                            <span> Sort </span>
                            <span class="menu-arrow"></span>
                        </a>
                        <ul class="nav-second-level" aria-expanded="false">
                            <li><a href="components-range-slider.html">Sort by name</a></li>
                            <li><a href="components-alerts.html">Sort by priority </a></li>
                        </ul>
                    </li>
                </ul>
            </div>

        </div>
    </div>
    <table class="table table-striped table-hover table-light">
        <thead>
        <tr>
            <th class="table-warning d-none">Id</th>
            <th class="table-warning">Note Name</th>
            <th class="table-warning">Start Time</th>
            <th class="table-warning">End Time</th>
            <th class="table-warning">Description</th>
            <th class="table-warning">Type Id</th>
            <th class="table-warning">Priority Id</th>
            <th colspan="5" class="table-warning" style="text-align: center">Action</th>
        </tr>
        </thead>

        <c:forEach var="listNote" items="${listNote}">
            <tr>
                <td class="d-none"><c:out value="${listNote.getId()}"/></td>
                <td><c:out value="${listNote.getNoteName()}"/></td>
                <td><c:out value="${listNote.getStartTime()}"/></td>
                <td><c:out value="${listNote.getEndTime()}"/></td>
                <td><c:out value="${listNote.getDescription()}"/></td>
                <td><c:out value="${listNote.getTypeId()}"/></td>
                <td><c:out value="${listNote.getPriorityId()}"/></td>
                <td><a class="btn btn-info" href="/notes?action=edit&id=${listNote.id}" title="Edit">
                    <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                </a></td>
                <td><a class="btn btn-danger" id="deleteAll" href="/notes?action=delete&id=${listNote.id}"
                       title="Delete">
                    <i class="fa fa-trash-o" aria-hidden="true"></i>
                </a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>