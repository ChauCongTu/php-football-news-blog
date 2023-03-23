<?php
    //Truy vấn SQL
    //Phân trang
    $stt = 1;
    $results_per_page = 9;
    $query = "SELECT * FROM cqn_baiviet, cqn_category WHERE cqn_baiviet.category_id = cqn_category.category_id";
    $result = mysqli_query($conn, $query);
    $number_of_result = mysqli_num_rows($result);
    $number_of_page = ceil ($number_of_result / $results_per_page);
    if (!isset ($_GET['page']) ) {
        $page = 1;
        $active_page = 1;
    } else {
        $page = $_GET['page'];
        $active_page = $_GET['page'];
    }
    $page_first_result = ($page-1) * $results_per_page;
    $query =  "SELECT * FROM cqn_baiviet, cqn_category WHERE cqn_baiviet.category_id = cqn_category.category_id LIMIT " . $page_first_result . ',' . $results_per_page;
    $result = mysqli_query($conn, $query);
    $pre = $page -1;
    $next = $page +1;

    $query_cm = "SELECT * FROM cqn_category";
    $res_cm = $conn->query($query_cm);
    //Get giá trị select và id
    if(isset($_GET["select"])){
        $select = $_GET["select"];
    }else{
        $select = '';
    }
    if(isset($_GET["id"])){
        $id = $_GET["id"];
    }else{
        $id = '';
    }
    switch ($select) {
        case 'add':
            echo'<div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h4 class="m-0 font-weight-bold text-primary">Tạo bài viết mới</h4>
                                </div>
                                <div class="card-body">
                                    <form action="" method="POST" enctype="multipart/form-data" class="contact container">
                                        <div class="form-group">
                                            <label for="usr">Tên bài viết:</label>
                                            <input type="text" class="form-control" name="tenbaiviet">
                                        </div>
                                        <div class="form-group">
                                            <label for="usr">Ảnh thumbnail:</label>
                                            <input type="file" class="form-control-file border" name="images">
                                        </div>
                                        <div class="form-group">
                                            <label for="comment">Nội dung bài đăng:</label>
                                            <small></small>
                                            <textarea name="noidung"></textarea>
                                        </div>
                                    <div class="form-group">
                                    <label for="sel1">Chuyên mục:</label>
                                    <select class="form-control" id="sel1" name="chuyenmuc">';
                                    if ($res_cm->num_rows > 0) {
                                        while($cm = $res_cm->fetch_assoc()) {    
                                            echo'<option>'.$cm["tenchuyenmuc"].'</option>';
                                        }
                                    }
                                    echo'</select>
                                </div>
                                <input type="submit" class="btn btn-primary" name ="add" value="Đăng bài">';
                                    require("backend/post.php");    
                                    echo'</form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>';
            break;
        case 'chinh-sua':
            if($id == ''.$id.''){
                $sql = $conn->query("SELECT * FROM cqn_baiviet WHERE post_id = '$id'");
                $res = mysqli_fetch_array($sql);
                echo'<div class="container-fluid">
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Quản lý Bài viết</h1>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Chỉnh sửa bài viết</h6>
                                </div>
                                <div class="card-body">
                                    <form action="" method="POST" enctype="multipart/form-data" class="contact container">
                                    <h3>Chỉnh sửa bài viết</h3>
                                    <div class="form-group">
                                    <label for="usr">Tên bài viết:</label>
                                    <input type="text" class="form-control" name="tenbaiviet" value="'.$res["tenbaiviet"].'">
                                    </div>
                                    <div class="form-group">
                                    <label for="usr">Ảnh thumbnail:</label><br>
                                    <small>Lưu ý: nếu không cần thay đổi ảnh thumb, có thể bỏ qua</small>
                                    <input type="file" class="form-control-file border" name="images">
                                    </div>
                                    <div class="form-group">
                                    <label for="comment">Nội dung bài đăng:</label>
                                    <small></small>
                                    <textarea name="noidung">'.$res["noidung"].'</textarea>
                                    </div>
                                    <div class="form-group">
                                    <label for="sel1">Chuyên mục:</label>
                                    <select class="form-control" id="sel1" name="chuyenmuc">';
                                    if ($res_cm->num_rows > 0) {
                                        while($cm = $res_cm->fetch_assoc()) {    
                                            echo'<option>'.$cm["tenchuyenmuc"].'</option>';
                                        }
                                    }
                                    echo'</select>
                                    </div>
                                    <input type="submit" class="btn btn-info btn-nhon" name ="edit" value="Chỉnh sửa"> ';
                                    require("backend/post.php");    
                                echo'</form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>';
            }
            break;
        case 'xoa':
            if($id == ''.$id.''){
                echo'<div class="container-fluid">
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Quản lý Bài Viết</h1>
                    </div>
                    <div class="row">
                        <div class="col-lg-8 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Xóa bài viết</h6>
                                </div>
                                <div class="card-body">
                                    <h2>Xác nhận xóa!</h2>
                                    <p>Lưu ý, nếu bạn xóa bài viết có các bình luận góp ý, tất cả bình luận cũng sẽ bị xóa!</p>
                                    <form action="" method="POST"><button type="submit" name="delete" class="btn btn-success">Xóa</button> | <a href="'.$home.'/dashboard/quan-ly-chuyen-muc" class="btn btn-danger">Hủy</a></form>';
                                    require("backend/post.php");
                                echo'</div>
                            </div>
                        </div>
                    </div>
                </div>';
            }
            break;
        default:
            echo'<div class="container-fluid">
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Quản lý Bài Viết</h1>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Quản lý bài viết</h6>
                                </div>
                                <div class="card-body">';
                                        while ($row = mysqli_fetch_array($result)) {
                                            echo '<li class="list-group-item"><a href="'.$home.'/chuyen-muc/'.$row["slug_cm"].'">['.$row["tenchuyenmuc"].']</a> <a href="'.$home.'/bai-viet/'.$row["slug_bv"].'.html">'.$row["tenbaiviet"].'</a><span style="float:right"> <a href="'.$home.'/dashboard/bai-viet/chinh-sua/'.$row["post_id"].'"><span class="badge badge-primary">Sửa</i></span></a>    <a href="'.$home.'/dashboard/bai-viet/xoa/'.$row["post_id"].'"><span class="badge badge-danger">Xóa</span></a></span></li>';
                                            $stt++;
                                        }
                                        echo'</ul>';
                                    if($number_of_page > 1){
                                        echo'<ul class="pagination">';
                                        if($page == 1){
                                            echo '<li class="page-item disabled"><a class="page-link" href="'.$home.'/dashboard/bai-vet/trang/'.$page.'"><i class="fas fa-angle-double-left"></i></a></li>';
                                        }
                                        else{
                                            echo '<li class="page-item"><a class="page-link" href="'.$home.'/dashboard/bai-viet/trang/'.$pre.'"><i class="fas fa-angle-double-left"></i></a></li>';
                                        }
                                        for($page = 1; $page <= $number_of_page; $page++) {
                                            if($page == $active_page){
                                                echo '<li class="page-item active"><a class="page-link" href="'.$home.'/dashboard/bai-viet/trang/'.$page.'">'.$page.'</a></li>';
                                            }
                                            else{
                                                echo '<li class="page-item"><a class="page-link" href="'.$home.'/dashboard/bai-viet/trang/'.$page.'">'.$page.'</a></li>';
                                            }
                                        }
                                        if (!isset ($_GET['page']) ) {
                                            $page = 1;
                                        } else {
                                            $page = $_GET['page'];
                                        }
                                        if($page == $number_of_page){
                                            echo '<li class="page-item disabled"><a class="page-link" href="'.$home.'/dashboard/bai-viet/trang/'.$page.'"><i class="fas fa-angle-double-right"></i></a></li>';
                                        }
                                        else{
                                            echo '<li class="page-item"><a class="page-link" href="'.$home.'/dashboard/bai-viet/trang/'.$next.'"><i class="fas fa-angle-double-right"></i></a></li>';
                                        }
                                    }                
                                echo'</div>
                            </div>
                        </div>
                    </div>
                </div>';
            break;
    }
?>
<script>
    CKEDITOR.replace( 'noidung' );
</script>