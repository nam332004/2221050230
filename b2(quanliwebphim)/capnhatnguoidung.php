<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        form{
            width:80%;
        }
    </style>
</head>
<body>
    <?php
    include 'connect.php';
    $_GET['id'];
    $sql = "SELECT * FROM nguoi_dung WHERE id = ".$_GET['id'];
    $result = mysqli_query($conn, $sql);
    $nguoiDung = mysqli_fetch_assoc($result);
     ?>
    <form action="index.php?page_layout=capnhatnguoidung" method="post">
      <h1>cập nhật người dùng</h1>
      <div>
        <p>tên đăng nhập</p>
         <input type="text" name="username" placeholder="tên đăng nhập" value"<?php echo $nguoiDung['username'];?>">
        </div>
      <div>
        <p>mật khẩu</p>
         <input type="password" name="password" placeholder="mật khẩu" value"<?php echo $nguoiDung['password'];?>">
        </div>
      <div>
        <p>email</p>
         <input type="text" name="email" placeholder="email value"<?php echo $nguoiDung['email'];?>">

      </div>
      <div>
        <p>sdt</p>
         <input type="tel" name="sdt" placeholder="sdt" value"<?php echo $nguoiDung['sdt'];?>">

      </div> 
      <div>
        <p>ngày sinh</p>
         <input type="date" name="ngaysinh" placeholder="ngày sinh" value"<?php echo $nguoiDung['ngaysinh'];?>">

      </div>     
      <div>
        <p>vai trò</p>
        <select name="vai-tro">
            <option value="1">admin</option>
            <option value="2">đạo diễn</option>
        </select>
      </div>
        <div>
        <input type="submit" value="thêm 
        người dùng">
        </div>
         <?php
         if(!empty($_POST['username']) &&
            !empty($_POST['email']) &&
            !empty($_POST['sdt']) &&
            !empty($_POST['ngaysinh']) &&
            !empty($_POST['vai-tro']) ){
                
                         $tenDangNhap = $_POST['username'];
                         $matKhau = $_POST['password'];
                         $email = $_POST['email'];
                         $sdt = $_POST['sdt'];
                         $ngaySinh = $_POST['ngaysinh'];
                         $vaiTro = $_POST['vai-tro'];

                         include('connect.php');
                         $sql = "INSERT INTO nguoi_dung (ten_dang_nhap, mat_khau, email, sdt, ngay_sinh, vai_tro_id) VALUES ('$tenDangNhap', '$matKhau', '$email', '$sdt', '$ngaySinh', '$vaiTro')";
                         //thay câu lệnh trên bằng câu lệnh cập nhật
                         mysqli_query($conn, $sql);
                         header('location: index.php?page_layout=nguoidung');
                }
                
                else{
                    echo "<p class='warning'>vui lòng nhập đầy đủ thông tin</p>";
                }
        ?>


</body>
</html>