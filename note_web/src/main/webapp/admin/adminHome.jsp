
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<%@include file="/webapp/layout/head.jsp"%>
<body>
<div class="be-wrapper be-fixed-sidebar">
    <%@include file="/webapp/layout/navbar.jsp"%>
    <%@include file="/webapp/layout/leftsidebar.jsp"%>
<%--    content--%>
    <%@include file="/webapp/layout/content.jsp"%>
<%--    end content--%>
    <%@include file="/webapp/layout/rightsidebar.jsp"%>
    <%@include file="/webapp/layout/script.jsp"%>
</div>
</body>
</html>