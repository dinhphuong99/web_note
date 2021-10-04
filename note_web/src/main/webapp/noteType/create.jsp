<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new note type</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="table-title mb-4">
        <div class="row">
            <div class="row">
                <div class="col-sm-6">
                    <h3>
                        <a href="/noteTypes"> Black list Note Type</a>
                    </h3>
                </div>
            </div>
        </div>
    </div>
    <form id="frmCreateCustomer" method="post">
        <fieldset class="row g-3">
            <div class="col-md-6">
                <label class="form-label">Name</label>
                <input type="text" class="form-control" name="name">
            </div>
            <div class="col-md-12">
                <button type="submit" id="btnCreateNoteType" class="btn btn-outline-primary">
                    <i class="fa fa-plus" aria-hidden="true"></i>
                    Create
                </button>
            </div>
        </fieldset>
    </form>
    <div class="message">
        <c:if test='${requestScope["success"] != null}'>
            <div class="alert alert-success" role="alert" style="position: fixed; bottom: 0; right: 0; left: 0">
                    ${requestScope["success"]}
            </div>

        </c:if>
        <c:if test='${requestScope["error"] != null}'>
            <div class="alert alert-danger" role="alert" style="position: fixed; bottom: 0; right: 0; left: 0">
                <strong> ${requestScope["error"]}</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </c:if>
    </div>
</div>
</body>
</html>
