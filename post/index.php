<style>
    .bv{
        padding: 80px 0;
    }
    .cm{
        padding: 90px 0;
    }
</style>
<?php
    require('../include/header.php');
    //Lấy bài viết theo chuyên mục
    $sql = "SELECT  * FROM cqn_baiviet, cqn_user, cqn_category WHERE cqn_baiviet.user_id = cqn_user.user_id AND cqn_baiviet.category_id = cqn_category.category_id";
    //Lấy danh sách các chuyên mục
    $query_cm = "SELECT * FROM cqn_category";
    $res_cm = $conn->query($query_cm);
    //Lấy danh sách các bài viết
    $query_baiviet = "SELECT * FROM cqn_baiviet";
    $res_bv = $conn->query($sql);
    //Lấy tham số từ URL
    @$slug_cm = $_GET["chuyen-muc"];
    @$slug_bv = $_GET["bai-viet"];
    @$danhmuc = $_GET["n"];
    if($danhmuc == "danh-muc"){
        if ($res_cm->num_rows > 0) {
            while($cm = $res_cm->fetch_assoc()) {
                $id_cm = $cm["category_id"];
                echo'<div class="cm">';
                require("style/main.php");
                echo'</div>';
            }
        }
        require('../include/end.php');
        exit; 
    }
    if ($res_bv->num_rows > 0) {
        while($bv = $res_bv->fetch_assoc()) {
            if($bv["slug_bv"] == ''.$slug_bv.''){
                echo'<div class="bv">';
                require("style/baiviet.php");
                echo'</div>';
                require('../include/end.php');
                exit; 
            }
            if($bv["slug_cm"] == ''.$slug_cm.''){
                $id_baiviet = $bv["post_id"];
                $id_cm = $bv["category_id"];
                echo'<div class="cm">';
                require("style/chuyenmuc.php");
                echo'</div>';
                require('../include/end.php');
                exit; 
            }
        }
    }
    echo'<script>window.location="'.$home.'/bai-viet/404err";</script>';