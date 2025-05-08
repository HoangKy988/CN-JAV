<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Form Đăng Ký</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  <div class="container mt-5">
    <h2 class="mb-4">Form Đăng Ký</h2>
    <form>
      <div class="mb-3">
        <label for="inputEmail" class="form-label">Email</label>
        <input type="email" class="form-control" id="inputEmail" placeholder="you@example.com">
      </div>

      <div class="mb-3">
        <label for="inputPassword" class="form-label">Password</label>
        <input type="password" class="form-control" id="inputPassword" placeholder="Mật khẩu">
      </div>

      <div class="mb-3">
        <label for="inputAddress" class="form-label">Address</label>
        <input type="text" class="form-control" id="inputAddress" placeholder="036 Đường ...">
      </div>

      <div class="mb-3">
        <label for="inputAddress2" class="form-label">Address 2</label>
        <input type="text" class="form-control" id="inputAddress2" placeholder="Căn hộ, tầng, tòa nhà, v.v.">
      </div>

      <div class="row">
        <div class="col-md-6 mb-3">
          <label for="inputCity" class="form-label">City</label>
          <input type="text" class="form-control" id="inputCity">
        </div>

        <div class="col-md-4 mb-3">
          <label for="inputState" class="form-label">State</label>
          <select id="inputState" class="form-select">
            <option selected>Chọn...</option>
            <option>Hà Nội</option>
            <option>Đà Nẵng</option>
            <option>TP. HCM</option>
          </select>
        </div>

        <div class="col-md-2 mb-3">
          <label for="inputZip" class="form-label">Zip</label>
          <input type="text" class="form-control" id="inputZip">
        </div>
      </div>

      <div class="mb-3 form-check">
        <input type="checkbox" class="form-check-input" id="checkMeOut">
        <label class="form-check-label" for="checkMeOut">Check me out</label>
      </div>

      <button type="submit" class="btn btn-primary">Sign in</button>
    </form>
  </div>
</body>
</html>
