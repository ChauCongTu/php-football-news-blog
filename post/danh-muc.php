<style>
    .category{
        padding: 100px 300px;
    }
    .cm{
        text-align: center;
        padding: 100px 300px;
    }
    .bv{
        text-align: center;
        padding: 100px 300px;
    }
</style>
<?php
    require('../include/header.php');
    //Lấy bài viết theo chuyên mục
    $sql = "SELECT  * FROM cqn_baiviet, cqn_user, cqn_category WHERE cqn_baiviet.user_id = cqn_user.user_id AND cqn_baiviet.category_id = cqn_category.category_id";
    $result = $conn->query($sql);
    //Lấy danh sách các chuyên mục
    $query = "SELECT * FROM cqn_category";
    $res = $conn->query($query);
    //Lấy danh sách các bài viết
    $query_baiviet = "SELECT * FROM cqn_baiviet";
    $res_bv = $conn->query($query_baiviet);
    //Lấy tham số từ URL
    $slug = $_GET["slug"];
    if ($res->num_rows > 0) {
        while($chuyenmuc = $res->fetch_assoc()) {
            switch($slug){
               case $chuyenmuc["slug_cm"]:
                    echo'<div class="cm">
                    <p><b>'.$chuyenmuc["tenchuyenmuc"].'</b></p><br>';
                    while($baiviet = $result->fetch_assoc()) {
                        echo'<p>'.$baiviet["tenbaiviet"].'</p></div>';   
                    } 
                break;
                default:
                    
                break;
            }
        }
    }
?>