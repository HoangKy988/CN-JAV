<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Form Đăng Nhập</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

  <div class="container mt-5" style="max-width: 400px;">
    <h2 class="text-center mb-4">Đăng Nhập</h2>
    <form>
      <div class="mb-3">
        <label for="inputEmail" class="form-label">Email</label>
        <input type="email" class="form-control" id="inputEmail" placeholder="Nhập email">
      </div>

      <div class="mb-3">
        <label for="inputPassword" class="form-label">Mật khẩu</label>
        <input type="password" class="form-control" id="inputPassword" placeholder="Nhập mật khẩu">
      </div>

      <div class="mb-3 form-check">
        <input type="checkbox" class="form-check-input" id="rememberMe">
        <label class="form-check-label" for="rememberMe">Ghi nhớ đăng nhập</label>
      </div>

      <button type="submit" class="btn btn-primary w-100">Đăng nhập</button>
    </form>
  </div>

</body>
</html>
