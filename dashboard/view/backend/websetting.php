<?php
if(isset($_POST["baotri"])){
    $sql = $conn->query("UPDATE cqn_setting SET trangthai = 1 WHERE setting_id = 1");
    echo'<p class="alert alert-success pt-3">Đã bắt đầu bảo trì</p>';
    echo'<a href="'.$home.'/dashboard/cai-dat-web" class="float-right">Quay lại</a>';
}
if(isset($_POST["end-baotri"])){
    $sql = $conn->query("UPDATE cqn_setting SET trangthai = 0 WHERE setting_id = 1");
    echo'<p class="alert alert-success pt-3">Đã kết thúc bảo trì</p>';
    echo'<a href="'.$home.'/dashboard/cai-dat-web" class="float-right">Quay lại</a>';
}
if(isset($_POST["homepage"])){
    $logo = addslashes($_POST["logo"]);
    $tieude = addslashes($_POST["tieude"]);
    $gioithieu = addslashes($_POST["gioithieu"]);
    $duoi = ".png";
    if(isset($_FILES['background'])){
        $file = $_FILES['background'];
        $filename = $file['name'];    
        $target_path="../img/";
        move_uploaded_file($file['tmp_name'], $target_path."background".$duoi);
    }
    $conn->query("UPDATE cqn_home SET 
                logo = '$logo',
                tieude = '$tieude',
                gioithieu = '$gioithieu'
                 WHERE 1");
    echo'<p class="alert alert-success pt-3">Thay đổi thành công</p>';
    echo'<a href="'.$home.'/dashboard/cai-dat-web" class="float-right">Quay lại</a>';
}
?>