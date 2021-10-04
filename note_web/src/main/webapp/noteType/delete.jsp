<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete customer</title>
</head>
<body>
<h1>Delete customer</h1>
<p>
    <a href="/notes">Back to customer list</a>
</p>
<form method="post" >
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Note type information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td>
                    <input type="text" value="<c:out value="${noteTypes.name}"/>"/>
                </td>
            </tr>

            <tr>
                <td><input type="submit" value="Delete"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>