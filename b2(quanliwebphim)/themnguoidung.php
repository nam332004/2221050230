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
    <form action="index.php" method="post">
      <h1>thêm người dùng</h1>
      <div>
        <p>tên đăng nhập</p>
         <input type="text" name="username" placeholder="tên đăng nhập">
        </div>
      <div>
        <p>mật khẩu</p>
         <input type="password" name="password" placeholder="mật khẩu">
        </div>
      <div>
        <p>email</p>
         <input type="text" name="email" placeholder="email">

      </div>
      <div>
        <p>sdt</p>
         <input type="tel" name="sdt" placeholder="sdt">

      </div> 
      <div>
        <p>ngày sinh</p>
         <input type="date" name="ngaysinh" placeholder="ngày sinh">

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
                         
                         mysqli_query($conn, $sql);
                         header('location: index.php?page_layout=nguoidung');
                }
                
                else{
                    echo "<p class='warning'>vui lòng nhập đầy đủ thông tin</p>";
                }
        ?>


</body>
</html>