<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete customer</title>
</head>
<body>
<h1>Delete customer</h1>
<p>
    <a href="/notes">Back to note list</a>
</p>
<form method="post" >
    <h3>Are you sure?</h3>
    <fieldset>
        <form class="form-group needs-validation" method="post">
            <div class="row" style="height: 50px">
                <span class="col-6">
                    <label >Note Name: </label>
                    <input  type="text" name="note_name" id = "note_name" size="25" class="form-control" value="<c:out value='${note.getNoteName()}'/>">
                </span>
                <span class="col-md-6">
                    <label>Start time:</label>
                    <input type="text" name="start_time" id="start_time" size="15" class="form-control" value="<c:out value='${note.getStartTime()}'/>">
                </span>
            </div>
            <div class="row" style="height: 50px">
                <span class="col-md-6">
                    <label>End time:</label>
                    <input type="text" name="end_time" id="end_time" size="15" class="form-control" value="<c:out value='${note.getEndTime()}'/>">
                </span>
                <span class="col-md-6" style="margin-left: 55px">
                    <label>Description:</label>
                    <input type="text" name="description" id="description" size="45" class="form-control" value="<c:out value='${note.getDescription()}'/>">
                </span>
            </div >
            <div class="row" style="height: 50px">
                <span class="col-md-6">
                    <label>Type:</label>
                    <c:forEach items="${noteTypesList}" var="item">
                        <c:if test="${item.id == note.getTypeId()}">
                            <span value="${item.id}">
                                    ${item.name}</span>
                        </c:if>
                    </c:forEach>
                </span>
                <span class="col-md-6" style="margin-left: 55px">
                    <label>Priority:</label>
                    <c:forEach items="${priorityList}" var="item1">
                        <c:if test="${item1.id == note.getPriorityId()}">
                            <span value="${item1.id}">
                                    ${item1.priorityName}</span>
                        </c:if>
                    </c:forEach>
                </span>
            </div>
            <br>
            <div class="form-group">
                <input type="submit" name="action" class="btn btn-warning" value="Delete"></input>
            </div>
        </form>
    </fieldset>

</form>
</body>
</html>