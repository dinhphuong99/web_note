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
        <table>
            <tr>
                <td>Name: </td>
                <td>
                    <input type="text" value="<c:out value="${note.noteName}"/>"/>
                </td>
            </tr>
            <tr>
                <td>Start Time: </td>
                <td><input type="text" value="<c:out value="${note.startTime}"/>"/></td>
            </tr>
            <tr>
                <td>End Time: </td>
                <td>
                    <input type="text" value="<c:out value="${customer.endTime}"/>"/>
                </td>
            </tr>
            <tr>
                <td>Type: </td>
                <td><input type="number" value="<c:out value="${customer.typeId}"/>"/></td>
            </tr>

            <tr>
                <td>Priority: </td>
                <td><input type="number" value="<c:out value="${customer.priorityId}"/>"/></td>
            </tr>

            <tr>
                <td><input type="submit" value="Delete note"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>