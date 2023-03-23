<style>
    .josh {
        position: absolute;
        top: 85%;
    }

    .josh-page {
        position: relative;
        top: 100%
    }

    .img-bv {
        height: 200px;
        overflow: hidden;
    }
</style>
<?PHP
$sql = "SELECT * FROM cqn_baiviet, cqn_user, cqn_category WHERE cqn_baiviet.user_id = cqn_user.user_id AND cqn_baiviet.category_id = cqn_category.category_id ORDER BY post_id DESC LIMIT 6";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    echo '<div class="row">';
    while ($row = $result->fetch_assoc()) {
        echo '<div class="col-sm-4">
                    <div class="card shadow mb-4" style="width:100%">
                        <div class="img-bv">        
                            <img class="card-img-top" src="' . $home . '/img/post/' . $row["post_id"] . '.png" alt="Card image" style="width:100%">
                        </div>
                        <div class="card-body" style="height:200px">
                        <h4 class="card-title">' . $row["tenbaiviet"] . '</h4>
                        <a href="' . $home . '/bai-viet/' . $row["slug_bv"] . '.html" class="btn btn-primary josh">Xem bài viết</a>
                        </div>
                    </div>
                </div>';
    }
} else {
    echo '<div class="baiviet"> <div class="tenbv">Chưa có bài viết nào... </div></div>';
}
?>