<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Bài tập HTML + Bootstrap</title>
    
    <!-- Nhúng Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Bài 1 */
        .center-text {
            text-align: center;
        }
        .uppercase {
            text-transform: uppercase;
        }
        .text-red {
            color: red;
        }
        .bg-yellow {
            background-color: yellow;
        }

        /* Bài 2 */
        .table-custom th {
            background-color: #343a40;
            color: white;
        }
        .table-custom td {
            background-color: #f8f9fa;
        }

        /* Bài 3 và 4 */
        .form-box {
            max-width: 600px;
            margin: 40px auto;
            padding: 25px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #fdfdfd;
        }
    </style>
</head>
<body class="container py-5">

    <!-- Bài 1 -->
    <h2>Bài 1</h2>
    <h1 class="center-text uppercase text-red bg-yellow">Nguyễn Văn A</h1>

    <!-- Bài 2 -->
    <h2 class="mt-5">Bài 2</h2>
    <table class="table table-bordered table-custom text-center">
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
                <td>Huế</td>
            </tr>
        </tbody>
    </table>

    <!-- Bài 3 -->
    <h2 class="mt-5">Bài 3 - Form Đăng nhập</h2>
    <form class="form-box">
        <h3 class="text-center mb-4">Đăng nhập</h3>
        <div class="mb-3">
            <label for="username" class="form-label">Tên đăng nhập</label>
            <input type="text" id="username" class="form-control" placeholder="Tên đăng nhập">
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Mật khẩu</label>
            <input type="password" id="password" class="form-control" placeholder="Mật khẩu">
        </div>
        <button type="submit" class="btn btn-primary w-100">Đăng nhập</button>
    </form>

    <!-- Bài 4 -->
    <h2 class="mt-5">Bài 4 - Form Đăng ký</h2>
    <form class="form-box">
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email">
        </div>

        <div class="mb-3">
            <label for="pass" class="form-label">Password</label>
            <input type="password" class="form-control" id="pass">
        </div>

        <div class="mb-3">
            <label for="address" class="form-label">Address</label>
            <input type="text" class="form-control" id="address">
        </div>

        <div class="mb-3">
            <label for="address2" class="form-label">Address 2</label>
            <input type="text" class="form-control" id="address2">
        </div>

        <div class="mb-3">
            <label for="city" class="form-label">City</label>
            <input type="text" class="form-control" id="city">
        </div>

        <div class="mb-3">
            <label for="state" class="form-label">State</label>
            <input type="text" class="form-control" id="state">
        </div>

        <div class="mb-3">
            <label for="zip" class="form-label">Zip</label>
            <input type="text" class="form-control" id="zip">
        </div>

        <div class="form-check mb-3">
            <input class="form-check-input" type="checkbox" id="checkMeOut">
            <label class="form-check-label" for="checkMeOut">
                Check me out
            </label>
        </div>

        <button type="submit" class="btn btn-success">Sign in</button>
    </form>

</body>
</html>
