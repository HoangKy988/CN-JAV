
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Bảng Sinh Viên</title>
  <!-- Nhúng Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    /* Tuỳ chỉnh bảng */
    .custom-table {
      border: 2px solid #343a40; /* màu viền đậm */
      color: #1a237e;             /* màu chữ xanh đậm */
      background-color: #e3f2fd; /* màu nền xanh nhạt */
    }

    .custom-table th,
    .custom-table td {
      border: 1px solid #343a40; /* màu viền cho ô */
      padding: 10px;
      text-align: center;
    }

    .custom-table th {
      background-color: #bbdefb; /* màu nền header */
      color: #0d47a1;            /* màu chữ header */
    }
  </style>
</head>
<body>

  <div class="container mt-4">
    <h2 class="text-center mb-4">Danh sách sinh viên</h2>

    <table class="table custom-table">
      <thead>
        <tr>
          <th>STT</th>
          <th>Mã SV</th>
          <th>Họ và tên</th>
          <th>Quê quán</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>1</td>
          <td>SV001</td>
          <td>Nguyễn Văn A</td>
          <td>Hà Nội</td>
        </tr>
        <tr>
          <td>2</td>
          <td>SV002</td>
          <td>Trần Thị B</td>
          <td>Đà Nẵng</td>
        </tr>
        <tr>
          <td>3</td>
          <td>SV003</td>
          <td>Lê Văn C</td>
          <td>TP. Hồ Chí Minh</td>
        </tr>
      </tbody>
    </table>
  </div>

</body>
</html>