<?php
if (isset($_POST["add"])) {
    $tenbaiviet = addslashes($_POST['tenbaiviet']);
    $slug = create_slug($tenbaiviet);
    $noidung = addslashes($_POST['noidung']);
    $tenchuyenmuc = addslashes($_POST['chuyenmuc']);
    $tag = "Null";
    $q_time = "SELECT CURDATE() as now";
    $time_now = mysqli_query($conn, $q_time) or die( mysqli_error($conn));
    $time = mysqli_fetch_array($time_now);
    $date_time = $time["now"];  
    $r_id_max_2 = mysqli_query($conn, "SELECT * FROM cqn_baiviet ORDER BY post_id DESC LIMIT 1");
    $id_max_2 = mysqli_fetch_array($r_id_max_2);
    $id_bv = $id_max_2["post_id"] +1;
    $duoi = ".png";
    $img_name = $id_bv.$duoi;
    if(isset($_FILES['images'])){
        $file = $_FILES['images'];
        $filename = $file['name'];    
        $target_path="../img/post/";  
        move_uploaded_file($file['tmp_name'], $target_path .$id_bv.$duoi);
    }
    $q_chuyenmuc = "SELECT * FROM cqn_category WHERE tenchuyenmuc = '$tenchuyenmuc'";
    $chuyenmuc = mysqli_query($conn, $q_chuyenmuc) or die( mysqli_error($conn));
    $cm = mysqli_fetch_array($chuyenmuc);
    $id_user = $_SESSION["id"];
    $id_chuyenmuc = $cm["category_id"];
    if(!$tenbaiviet || !$noidung){
        echo'<p class="error">Vui lòng điền đầy đủ thông tin!</p>';
    }
    else{
        $sql = "INSERT INTO `cqn_baiviet`(`tenbaiviet`, `slug_bv`, `noidung`, `tag`, `post_date`, `last_update_date`, `category_id`, `user_id`, `view`) 
            VALUES ('$tenbaiviet','$slug','$noidung','$tag','$date_time','$date_time','$id_chuyenmuc','$id_user','0')";
        if ($conn->query($sql) === TRUE) {
            echo'<p class="success">Thêm thành công!</p>';
                echo'<script>setTimeout(function(){
                    window.location="'.$home.'/dashboard/quan-ly-bai-viet"
                }, 2000);</script>';
        }
    }           
}
if (isset($_POST["edit"])) {
    $tenbaiviet = addslashes($_POST['tenbaiviet']);
    $slug = create_slug($tenbaiviet);
    $noidung = addslashes($_POST['noidung']);
    $tenchuyenmuc = addslashes($_POST['chuyenmuc']);
    $tag = "Null";
    $q_time = "SELECT CURDATE() as now";
    $time_now = mysqli_query($conn, $q_time) or die( mysqli_error($conn));
    $time = mysqli_fetch_array($time_now);
    $date_time = $time["now"];  
    $id_bv = $id;
    $duoi = ".png";
    $img_name = $id_bv.$duoi;
    if(isset($_FILES['images'])){
        $file = $_FILES['images'];
        $filename = $file['name'];    
        $target_path="../img/post/";
        move_uploaded_file($file['tmp_name'], $target_path .$id.$duoi);
    }
    $q_chuyenmuc = "SELECT * FROM cqn_category WHERE tenchuyenmuc = '$tenchuyenmuc'";
    $chuyenmuc = mysqli_query($conn, $q_chuyenmuc) or die( mysqli_error($conn));
    $cm = mysqli_fetch_array($chuyenmuc);

    $id_user = $_SESSION["id"];

    $id_chuyenmuc = $cm["category_id"];

    if(!$tenbaiviet || !$noidung){
        echo'<p class="error">Vui lòng điền đầy đủ thông tin!</p>';
    }
    else{
        $sql = "UPDATE `cqn_baiviet` SET 
            `tenbaiviet`='$tenbaiviet',
            `slug_bv`='$slug',
            `noidung`='$noidung',
            `last_update_date`='$date_time',
            `category_id`='$id_chuyenmuc'
            WHERE post_id = '$id'";
        if ($conn->query($sql) === TRUE) {
            echo'<p class="success">Chỉnh sửa thành công!</p>';
            echo'<script>setTimeout(function(){
                    window.location="'.$home.'/dashboard/quan-ly-bai-viet"
                }, 2000);</script>';
        }
    }           
}
if(isset($_POST["delete"])){
    $del_cmt = "DELETE FROM cqn_comment WHERE post_id='$id'";
    $conn->query($del_cmt); 
    $del_post = "DELETE FROM cqn_baiviet WHERE post_id='$id'";
    $conn->query($del_post);
    echo'<p class="success">Xóa thành công!</p>';
    echo'<script>setTimeout(function(){
                    window.location="'.$home.'/dashboard/quan-ly-bai-viet"
                }, 2000);</script>';
}
?>