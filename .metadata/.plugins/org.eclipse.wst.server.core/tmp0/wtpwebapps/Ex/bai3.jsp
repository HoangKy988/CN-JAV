<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Đăng nhập</title>
  <!-- Nhúng Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f0f2f5;
    }

    .login-form {
      max-width: 400px;
      margin: 80px auto;
      padding: 30px;
      background-color: #ffffff;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .login-form h2 {
      margin-bottom: 20px;
      text-align: center;
      color: #0d6efd;
    }
  </style>
</head>
<body>

  <div class="login-form">
    <h2>Đăng nhập</h2>
    <form action="XuLyDangNhap.jsp" method="post">
      <div class="mb-3">
        <label for="username" class="form-label">Tên đăng nhập</label>
        <input type="text" class="form-control" id="username" name="username" required>
      </div>

      <div class="mb-3">
        <label for="password" class="form-label">Mật khẩu</label>
        <input type="password" class="form-control" id="password" name="password" required>
      </div>

      <button type="submit" class="btn btn-primary w-100">Đăng nhập</button>
    </form>
  </div>

</body>
</html>
