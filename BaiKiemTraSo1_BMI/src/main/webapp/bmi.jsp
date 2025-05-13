<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>Tính BMI</title>
</head>
<body>
    <h2>Tính chỉ số BMI</h2>
    <form action="BMIServlet" method="post">
        Chiều cao (m): <input type="text" name="chieuCao" /><br />
        Cân nặng (kg): <input type="text" name="canNang" /><br />
        <input type="submit" value="Tính BMI" />
    </form>

    <c:if test="${not empty bmi}">
        <h3>Kết quả BMI của bạn: <c:out value="${bmi}" /></h3>
        <c:choose>
            <c:when test="${bmi lt 18.5}">
                <p>Bạn thuộc dạng: Gầy</p>
            </c:when>
            <c:when test="${bmi le 24.9}">
                <p>Bạn thuộc dạng: Bình thường</p>
            </c:when>
            <c:otherwise>
                <p>Bạn thuộc dạng: Thừa cân</p>
            </c:otherwise>
        </c:choose>
    </c:if>
</body>
</html>