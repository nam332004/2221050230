<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    echo "hello world <br>"; //in ra ngoài màn hình

    echo "hi";

    //biến 
    //$ + tên biến = giá trị của biến
    $ten = "nam";
    $tuoi = 21;

    echo $ten . " " .  $tuoi . "<br>";

    //hằng 

    define("soPi", "3.14");
    echo soPi . "<br>";

    //phân biệt '' ""
    echo '$ten . <br>';
    echo "$ten . <br>";

    //chuỗi
    #1 kiểm tra độ dài của chuỗi
    echo strlen($ten) . "<br>";
    #2 đếm số từ
    echo str_word_count($ten) . "<br>";
    #3 tìm kiếm kí tự trong chuỗi
    echo strpos($ten, "n") . "<br>";
    #4 thay thế kí tự trong chuỗi
    echo str_replace("am","an",$ten) . "<br>";

    //toán tử 
    $soThuNhat = 10;
    $soThuHai = 5;
    #cộng - * /
    # += -= *= /= %=
    # so sánh == != > < >= <= ===
    echo $soThuNhat + $soThuHai;

    //câu điều kiện
    //if("điều kiện"){
        //logic
    //}
    //elseif("điều kiện"){
       //logic
    
    //}
    //else{
    //    logic
    //}

    $tong = $soThuNhat + $soThuHai;
    if($tong < 15){
        echo "nhỏ hơn 15";
    }
    elseif($tong = 15){
        echo "bằng 15";

    }
    else{
        echo "lớn hơn 15";
    }

    //switch case
    $color = "red";
    switch($color){
        case " red":
            echo "is read";
        break;
        case "blue":
            echo "is blue";
            break;
        default:
             echo "no color";
             break;    


    }


    // //for
    // for ($i=0; $i <100; $i++){
    //     echo $i . "<br>";
    // }

    //mảng 
    $mang =["Anh","nhật anh ","nam"];
    //đếm phần tử 
    echo count($mang);
    echo $mang[1];
    print_r($mang);
    $mang[1]="tâm";
    print_r($mang);
    #xóa
    unset( $mang[1] );
    print_r($mang);

    ?>
</body>
</html>