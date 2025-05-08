<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         errorPage="errorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Giải phương trình bậc 2</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        form { margin-bottom: 20px; }
        input[type="number"] { width: 80px; }
        .result { padding: 10px; background: #f0f0f0; border: 1px solid #ccc; }
    </style>
</head>
<body>
    <h1>Giải phương trình bậc 2: ax^2 + bx + c = 0</h1>

    <form method="post">
        <label>a = <input type="number" step="any" name="a" required /></label>
        &nbsp;
        <label>b = <input type="number" step="any" name="b" required /></label>
        &nbsp;
        <label>c = <input type="number" step="any" name="c" required /></label>
        &nbsp;
        <button type="submit">Giải</button>
    </form>

    <%
        String sa = request.getParameter("a");
        String sb = request.getParameter("b");
        String sc = request.getParameter("c");
        if (sa != null && sb != null && sc != null) {
            try {
                double a = Double.parseDouble(sa);
                double b = Double.parseDouble(sb);
                double c = Double.parseDouble(sc);

                out.println("<div class='result'>");
                if (a == 0) {
                    if (b == 0) {
                        if (c == 0) {
                            out.println("<p>Phương trình có vô số nghiệm.</p>");
                        } else {
                            out.println("<p>Phương trình vô nghiệm.</p>");
                        }
                    } else {
                        double x = -c / b;
                        out.println(String.format(
                            "<p>Phương trình bậc nhất có nghiệm: x = %.4f</p>", x));
                    }
                } else {
                    double delta = b * b - 4 * a * c;
                    if (delta > 0) {
                        double x1 = (-b + Math.sqrt(delta)) / (2 * a);
                        double x2 = (-b - Math.sqrt(delta)) / (2 * a);
                        out.println("<p>Phương trình có 2 nghiệm phân biệt:</p>");
                        out.println(String.format("<p>x₁ = %.4f</p>", x1));
                        out.println(String.format("<p>x₂ = %.4f</p>", x2));
                    } else if (delta == 0) {
                        double x = -b / (2 * a);
                        out.println(String.format("<p>Phương trình có nghiệm kép: x = %.4f</p>", x));
                    } else {
                        out.println("<p>Phương trình vô nghiệm thực.</p>");
                    }
                }
                out.println("</div>");
            } catch (NumberFormatException e) {
                out.println("<p style='color:red;'>Vui lòng nhập số hợp lệ.</p>");
            }
        }
    %>
</body>
</html>
