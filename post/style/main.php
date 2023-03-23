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
<?PHP
    $query3 =  "SELECT * FROM cqn_baiviet, cqn_category  WHERE cqn_baiviet.category_id = cqn_category.category_id AND cqn_baiviet.category_id = '$id_cm' ORDER BY post_id DESC LIMIT 3";
    $result3 = mysqli_query($conn, $query3);
    echo'<title>Danh mục diễn đàn</title>
    <div class="container">
        <h2><a href="'.$home.'/chuyen-muc/'.$cm["slug_cm"].'">'.$cm["tenchuyenmuc"].'</a></h2>
        <div class="row">';
        if($result3 -> num_rows == 0){
            echo'<h4><small>Chuyên mục trống ...</small></h4>';
        }
        else{
            while ($bv_cm = mysqli_fetch_array($result3)) {
                echo'<div class="col-sm-4">
                    <div class="card shadow" style="width:100%">
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
        }
    echo'</div>';
?>