<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Visit Counter</title></head>
<body>
    <h2>Số lượt truy cập: 
        <c:out value="${applicationScope.visitCount}" />
    </h2>

    <c:if test="${applicationScope.visitCount > 10}">
        <p><strong>Trang web này đang được quan tâm!</strong></p>
    </c:if>
</body>
</html>
