<?php
if(isset($_POST["add"])){
    $tendangnhap = addslashes($_POST["tendangnhap"]);
    $tenhienthi = addslashes($_POST["tenhienthi"]);
    $pwd = addslashes($_POST["matkhau"]);
    if(isset($_POST["email"])){
        $email = addslashes($_POST["email"]);
    }
    else{
        $email = "";
    }
    if(isset($_POST["facebook"])){
        $facebook = addslashes($_POST["facebook"]);
    }
    else{
        $facebook = "";
    }
    if(isset($_POST["sodienthoai"])){
        $sodienthoai = addslashes($_POST["sodienthoai"]);
    }
    else{
        $sodienthoai = "";
    }
    $pass_md5 = md5($pwd);
    if(!$tendangnhap || !$tenhienthi || !$pwd ){
        echo'<p class="error">Vui lòng điền đầy đủ thông tin!</p>';
    }
    else{
        $q_check ="SELECT * FROM cqn_user WHERE tendangnhap = '$tendangnhap'";
        $r_check = $conn -> query($q_check);
        if($r_check -> num_rows > 0){
            echo '<p class="error">Tên đăng nhập đã tồn tại!</p>';       
        }
        else{
            $sql = "INSERT INTO cqn_user (`tendangnhap`, `matkhau`, `tenhienthi`, `email`, `facebook`, `sodienthoai`) VALUES ('$tendangnhap', '$pass_md5', '$tenhienthi', '$email', '$facebook', '$sodienthoai')";
            if ($conn->query($sql) === TRUE) {
                echo'<p class="success">Tạo thành công!</p>';
                echo'<script>setTimeout(function(){
                    window.location="'.$home.'/dashboard/quan-ly-nguoi-dung"
                }, 2000);</script>';
            }
        }           
    }
}
if(isset($_POST["edit"])){
    $tendangnhap = addslashes($_POST["tendangnhap"]);
    $tenhienthi = addslashes($_POST["tenhienthi"]);
    if(isset($_POST["email"])){
        $email = addslashes($_POST["email"]);
    }
    else{
        $email = "";
    }
    if(isset($_POST["facebook"])){
        $facebook = addslashes($_POST["facebook"]);
    }
    else{
        $facebook = "";
    }
    if(isset($_POST["sodienthoai"])){
        $sodienthoai = addslashes($_POST["sodienthoai"]);
    }
    else{
        $sodienthoai = "";
    }
    $vaitro = addslashes($_POST["vaitro"]);
    $trangthai = addslashes($_POST["trangthai"]);
        $query = $conn -> query("UPDATE `cqn_user` SET 
                `tendangnhap`='$tendangnhap',
                `tenhienthi`='$tenhienthi',
                `email`='$email',
                `facebook`='$facebook',
                `sodienthoai`='$sodienthoai',
                `vaitro`='$vaitro',
                `trangthai`='$trangthai'
            WHERE user_id = '$id'");
        echo'<p class="success">Chỉnh sửa thành công!</p>';
        echo'<script>setTimeout(function(){
            window.location="'.$home.'/dashboard/quan-ly-nguoi-dung"
        }, 2000);</script>';
        if(!empty($_POST["matkhau"])){
            $matkhau = $_POST["matkhau"];
            $pass_md5 = md5($matkhau);
            $query = $conn -> query("UPDATE cqn_user SET matkhau = '$pass_md5' WHERE user_id = '$id'");
        }
}
?>