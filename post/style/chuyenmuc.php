<?php 
$q_content = "SELECT noidung FROM cqn_baiviet WHERE post_id = '$id_baiviet'";
$res_content = mysqli_query($conn, $q_content) or die( mysqli_error($conn));
$content = mysqli_fetch_array($res_content);
// $sub_content = "SELECT SUBSTRING(''.$content.'', 1, 100)";
// $res_sub = mysqli_query($conn, $sub_content) or die( mysqli_error($conn));
// $sub = mysqli_fetch_array($res_sub);

$q_bv_cm = "SELECT * FROM cqn_baiviet WHERE category_id = '$id_cm'";
$res_bv_cm = $conn->query($q_bv_cm);
//Phân trang
$stt = 1;
$results_per_page = 9;
$query2 = "SELECT * FROM cqn_baiviet WHERE category_id = '$id_cm'";
$result2 = mysqli_query($conn, $query2);
$number_of_result = mysqli_num_rows($result2);
$number_of_page = ceil ($number_of_result / $results_per_page);
if (!isset ($_GET['page']) ) {
    $page = 1;
    $active_page = 1;
} else {
    $page = $_GET['page'];
    $active_page = $_GET['page'];
}
$page_first_result = ($page-1) * $results_per_page;
$query3 =  "SELECT * FROM cqn_baiviet, cqn_category  WHERE cqn_baiviet.category_id = cqn_category.category_id AND cqn_baiviet.category_id = '$id_cm' ORDER BY post_id DESC LIMIT " . $page_first_result . ',' . $results_per_page;
$result3 = mysqli_query($conn, $query3);
if ($page > $number_of_page){
    echo'<script>window.location="'.$home.'/chuyen-muc/'.$bv["slug_cm"].'/page/'.$number_of_page.'";</script>';
}
if ($page < 1){
    echo'<script>window.location="'.$home.'/chuyen-muc/'.$bv["slug_cm"].'/page/1";</script>';
}
$prev = $page -1;
$next = $page +1;
?>
<style>
    .josh{
        position: absolute;
        top: 85%;
    }
    .josh-page{
        position: relative;
        top: 100%
    }
    .img-bv{
        height: 200px;
        overflow: hidden;
    }
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<?PHP
echo'<title>'.$bv["tenchuyenmuc"].' | Danh mục diễn đàn</title>
<div class="container">
    <h3>'.$bv["tenchuyenmuc"].'</h3>
    <div class="row">';
    while ($bv_cm = mysqli_fetch_array($result3)) {
        echo'<div class="col-sm-4">
            <div class="card shadow mb-4" style="width:100%">
                <div class="img-bv">        
                    <img class="card-img-top" src="'.$home.'/img/post/'.$bv_cm["post_id"].'.png" alt="Card image" style="width:100%">
                </div>
                <div class="card-body" style="height:200px">
                <h4 class="card-title">'.$bv_cm["tenbaiviet"].'</h4>
                <a href="'.$home.'/bai-viet/'.$bv_cm["slug_bv"].'.html" class="btn btn-primary josh">Xem bài viết</a>
                </div>
            </div>
        </div>';
    }
    echo'</div>';
    
    echo'<ul class="pagination josh-page" style="float:right">';
        if($page == 1){
            echo '<li class="page-item disabled"><a class="page-link" href="'.$home.'/chuyen-muc/'.$bv["slug_cm"].'/page/'.$prev.'">Trước</a></li>';
        }
        else{
            echo '<li class="page-item"><a class="page-link" href="'.$home.'/chuyen-muc/'.$bv["slug_cm"].'/page/'.$prev.'">Trước</a></li>';
        }
        for($page = 1; $page <= $number_of_page; $page++) {
            if($page == $active_page){
                echo '<li class="page-item active"><a class="page-link" href="'.$home.'/chuyen-muc/'.$bv["slug_cm"].'/page/'.$page.'">'.$page.'</a></li>';
            }
            else{
                echo '<li class="page-item"><a class="page-link" href="'.$home.'/chuyen-muc/'.$bv["slug_cm"].'/page/'.$page.'">'.$page.'</a></li>';
            }
        }
        if (!isset ($_GET['page']) ) {
            $page = 1;
        } else {
            $page = $_GET['page'];
        }
        if($page == $number_of_page){
            echo '<li class="page-item disabled"><a class="page-link" href="'.$home.'/chuyen-muc/'.$bv["slug_cm"].'/page/'.$next.'">Sau</a></li>';
        }
        else{
            echo '<li class="page-item"><a class="page-link" href="'.$home.'/chuyen-muc/'.$bv["slug_cm"].'/page/'.$next.'">Sau</a></li>';
        }
    echo'</ul>';
echo'</div>';