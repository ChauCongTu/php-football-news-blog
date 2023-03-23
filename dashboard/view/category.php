<?php
    //My SQL
    //Phân trang
    $stt = 1;
    $results_per_page = 9;
    $query = "select * from cqn_category";
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
    $query =  "SELECT * FROM cqn_category LIMIT " . $page_first_result . ',' . $results_per_page;
    $result = mysqli_query($conn, $query);
    $pre = $page -1;
    $next = $page +1;
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
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Thêm chuyên mục</h1>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Danh sách chuyên mục</h6>
                                </div>
                                <div class="card-body">';
                                    while ($row = mysqli_fetch_array($result)) {
                                        echo '<li class="list-group-item"> '.$stt.'. '.$row["tenchuyenmuc"].'</li>';
                                        $stt++;
                                    }
                                    echo'</ul>';
                                    if($number_of_page > 1){
                                        echo'<ul class="pagination">';
                                        if($page == 1){
                                            echo '<li class="page-item disabled"><a class="page-link" href="'.$home.'/dashboard/chuyen-muc/trang/'.$page.'"><i class="fas fa-angle-double-left"></i></a></li>';
                                        }
                                        else{
                                            echo '<li class="page-item"><a class="page-link" href="'.$home.'/dashboard/chuyen-muc/trang/'.$pre.'"><i class="fas fa-angle-double-left"></i></a></li>';
                                        }
                                        for($page = 1; $page <= $number_of_page; $page++) {
                                            if($page == $active_page){
                                                echo '<li class="page-item active"><a class="page-link" href="'.$home.'/dashboard/chuyen-muc/trang/'.$page.'">'.$page.'</a></li>';
                                            }
                                            else{
                                                echo '<li class="page-item"><a class="page-link" href="'.$home.'/dashboard/chuyen-muc/trang/'.$page.'">'.$page.'</a></li>';
                                            }
                                        }
                                        if (!isset ($_GET['page']) ) {
                                            $page = 1;
                                        } else {
                                            $page = $_GET['page'];
                                        }
                                        if($page == $number_of_page){
                                            echo '<li class="page-item disabled"><a class="page-link" href="'.$home.'/dashboard/chuyen-muc/trang/'.$page.'"><i class="fas fa-angle-double-right"></i></a></li>';
                                        }
                                        else{
                                            echo '<li class="page-item"><a class="page-link" href="'.$home.'/dashboard/chuyen-muc/trang/'.$next.'"><i class="fas fa-angle-double-right"></i></a></li>';
                                        }
                                    }
                                echo'</div>
                            </div>
                        </div>
                        <div class="col-lg-6 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Tạo chuyên mục mới</h6>
                                </div>
                                <div class="card-body">
                                    <form action="" method="POST">
                                        <div class="mb-3 mt-3">
                                            <label for="name" class="form-label">Nhập tên chuyên mục:</label>
                                            <input type="name" class="form-control" placeholder="" name="name">
                                        </div>
                                        <div class="form-check mb-3">
                                            <label class="form-check-label">
                                            <input class="form-check-input" type="checkbox" name="hide"> Chuyên mục ẩn
                                            </label>
                                        </div>
                                        <button type="submit" name="add" class="btn btn-primary">Tạo</button>';
                                    require("backend/category.php");    
                                    echo'</form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>';
            break;
        case 'chinh-sua':
            if($id == ''.$id.''){
                $sql = $conn->query("SELECT * FROM cqn_category WHERE category_id = '$id'");
                $res = mysqli_fetch_array($sql);
                echo'<div class="container-fluid">
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Quản lý Chuyên Mục</h1>
                    </div>
                    <div class="row">
                        <div class="col-lg-8 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Chỉnh sửa chuyên mục: '.$res["tenchuyenmuc"].'</h6>
                                </div>
                                <div class="card-body">
                                    <form action="" method="POST">
                                    <div class="mb-3 mt-3">
                                        <label for="name" class="form-label">Nhập tên mới:</label>
                                        <input type="name" class="form-control" placeholder="" name="name">
                                    </div>
                                    <div class="form-check mb-3">
                                        <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="hide"> Chuyên mục ẩn
                                        </label>
                                    </div>
                                    <button type="submit" name="edit" class="btn btn-primary">Chỉnh sửa</button>';
                                require("backend/category.php");    
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
                $sql = $conn->query("SELECT * FROM cqn_category WHERE category_id = '$id'");
                $res = mysqli_fetch_array($sql);
                echo'<div class="container-fluid">
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Quản lý Chuyên Mục</h1>
                    </div>
                    <div class="row">
                        <div class="col-lg-8 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Xóa chuyên mục: '.$res["tenchuyenmuc"].'</h6>
                                </div>
                                <div class="card-body">
                                    <h2>Xác nhận xóa!</h2>
                                    <p>Lưu ý, nếu bạn xóa chuyên mục có bài viết viết, tất cả bài viết cũng sẽ bị xóa!</p>
                                    <form action="" method="POST"><button type="submit" name="delete" class="btn btn-success">Xóa</button> | <a href="'.$home.'/dashboard/quan-ly-chuyen-muc" class="btn btn-danger">Hủy</a></form>';
                                    require("backend/category.php");
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
                        <h1 class="h3 mb-0 text-gray-800">Quản lý Chuyên Mục</h1>
                    </div>
                    <div class="row">
                        <div class="col-lg-8 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Quản lý chuyên mục</h6>
                                </div>
                                <div class="card-body">';
                                    while ($row = mysqli_fetch_array($result)) {
                                        echo '<li class="list-group-item"> '.$stt.'. '.$row["tenchuyenmuc"].'<span style="float:right"><a href="'.$home.'/dashboard/chuyen-muc/chinh-sua/'.$row["category_id"].'"><span class="badge badge-primary">Sửa</span></a> <a href="'.$home.'/dashboard/chuyen-muc/xoa/'.$row["category_id"].'"><span class="badge badge-danger">Xóa</span></a></span></li>';
                                        $stt++;
                                    }
                                        echo'</ul>';
                                    if($number_of_page > 1){
                                        echo'<ul class="pagination">';
                                        if($page == 1){
                                            echo '<li class="page-item disabled"><a class="page-link" href="'.$home.'/dashboard/chuyen-muc/trang/'.$page.'"><i class="fas fa-angle-double-left"></i></a></li>';
                                        }
                                        else{
                                            echo '<li class="page-item"><a class="page-link" href="'.$home.'/dashboard/chuyen-muc/trang/'.$pre.'"><i class="fas fa-angle-double-left"></i></a></li>';
                                        }
                                        for($page = 1; $page <= $number_of_page; $page++) {
                                            if($page == $active_page){
                                                echo '<li class="page-item active"><a class="page-link" href="'.$home.'/dashboard/chuyen-muc/trang/'.$page.'">'.$page.'</a></li>';
                                            }
                                            else{
                                                echo '<li class="page-item"><a class="page-link" href="'.$home.'/dashboard/chuyen-muc/trang/'.$page.'">'.$page.'</a></li>';
                                            }
                                        }
                                        if (!isset ($_GET['page']) ) {
                                            $page = 1;
                                        } else {
                                            $page = $_GET['page'];
                                        }
                                        if($page == $number_of_page){
                                            echo '<li class="page-item disabled"><a class="page-link" href="'.$home.'/dashboard/chuyen-muc/trang/'.$page.'"><i class="fas fa-angle-double-right"></i></a></li>';
                                        }
                                        else{
                                            echo '<li class="page-item"><a class="page-link" href="'.$home.'/dashboard/chuyen-muc/trang/'.$next.'"><i class="fas fa-angle-double-right"></i></a></li>';
                                        }
                                    }
                                    
                                echo'</div>
                            </div>
                        </div>
                    </div>
                </div>';
            break;
    }
//     <div class="col-lg-4 mb-4">
//     <div class="card shadow mb-4">
//         <div class="card-header py-3">
//             <h6 class="m-0 font-weight-bold text-primary"></h6>
//         </div>
//         <div class="card-body">
        
//         </div>
//     </div>
// </div>
?>