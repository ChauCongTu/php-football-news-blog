<?php
    //Truy vấn SQL
    //Phân trang
    $stt = 1;
    $results_per_page = 10;
    $query = "SELECT * FROM cqn_user ";
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
    $query =  "SELECT * FROM cqn_user LIMIT " . $page_first_result . ',' . $results_per_page;
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
        //Thêm người dùng
        case 'add':
            echo'<div class="container-fluid">
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                <h1 class="h3 mb-0 text-gray-800">Quản lý người dùng</h1>
            </div>
            <div class="row">
                <div class="col-lg-12 mb-4">
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Chỉnh sửa thông tin người dùng</h6>
                        </div>';
                        if($user["vaitro"] != 2){
                            echo'<h3 class="card-body text-center">Bạn không có quyền tạo tài khoản!</h3>';
                        }
                        else{
                        echo'<div class="card-body">
                        <form action="" method="POST">    
                        <table class="table">
                            <tbody>
                                <tr class="table">
                                <td class="bg-primary text-white">Tên đăng nhập</td>
                                <td  class="bg-danger text-white">
                                    <input type="text" class="form-control" name="tendangnhap" value=""/>
                                </td>
                                </tr>
                                <tr class="table">
                                <td class="bg-primary text-white">Tên hiển thị</td>
                                <td  class="bg-danger text-white">
                                    <input type="text" class="form-control" name="tenhienthi" value=""/>
                                </td>
                                </tr>
                                <tr class="table">
                                <td class="bg-primary text-white">Mật khẩu</td>
                                <td  class="bg-danger text-white">
                                    <input type="text" class="form-control" name="matkhau" value=""/>
                                </td>
                                </tr>
                                <tr class="table">
                                <td class="bg-primary text-white">Email</td>
                                <td  class="bg-danger text-white">
                                    <input type="text" class="form-control" name="email" value=""/>
                                </td>
                                </tr>
                                <tr class="table">
                                <td class="bg-primary text-white">Facebook</td>
                                <td  class="bg-danger text-white">
                                    <input type="text" class="form-control" name="facebook" value=""/>
                                </td>
                                </tr>
                                <tr class="table">
                                <td class="bg-primary text-white">Số điện thoại</td>
                                <td  class="bg-danger text-white">
                                    <input type="text" class="form-control" name="sodienthoai" value=""/>
                                </td>
                                </tr>';
                                if($user["vaitro"] == 2){
                                    echo'<tr class="table">
                                    <td class="bg-primary text-white">Vai trò</td>
                                    <td class="bg-danger text-white"><select class="form-control" id="sel1" name="vaitro">';    
                                    echo'<option value="2">Owner</option>';
                                    echo'<option value="1">Blog Manager</option>';
                                    echo'<option value="0">Writter</option>';
                                    echo'</select></td>
                                    </tr>';
                                }
                            echo'
                            </tbody>
                            </table>';
                            require("backend/user.php");
                            echo'<button type="submit" name="add" class="btn btn-info">Tạo tài khoản</button>
                            <a href="'.$home.'/dashboard/quan-ly-nguoi-dung" class="btn btn-danger">Quay lại</a> 
                            </form>
                            </div>';
                        }
                        echo'</div>
                    </div>
                </div>
            </div>';
        break;
        //Chỉnh sửa thông tin người dùng
        case 'chinh-sua':
            if($id == ''.$id.''){
                $my_id = $_SESSION["id"];
                $sql = $conn->query("SELECT * FROM cqn_user WHERE user_id = '$id'");
                $user = mysqli_fetch_array($sql);
                $sql = $conn->query("SELECT * FROM cqn_user WHERE user_id = '$my_id'");
                $sefl = mysqli_fetch_array($sql);
                echo'<div class="container-fluid">
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Quản lý người dùng</h1>
                </div>
                <div class="row">
                    <div class="col-lg-12 mb-4">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Chỉnh sửa thông tin người dùng</h6>
                            </div>
                            <div class="card-body">
                            <form action="" method="POST">    
                            <table class="table">
                                <tbody>
                                    <tr class="table">
                                    <td class="bg-primary text-white">ID người dùng</td>
                                    <td class="bg-danger text-white">'.$user["user_id"].'</td>
                                    </tr>
                                    <tr class="table">
                                    <td class="bg-primary text-white">Tên đăng nhập</td>
                                    <td  class="bg-danger text-white">
                                        <input type="text" class="form-control" name="tendangnhap" value="'.$user["tendangnhap"].'"/>
                                    </td>
                                    </tr>
                                    <tr class="table">
                                    <td class="bg-primary text-white">Tên hiển thị</td>
                                    <td  class="bg-danger text-white">
                                        <input type="text" class="form-control" name="tenhienthi" value="'.$user["tenhienthi"].'"/>
                                    </td>
                                    </tr>
                                    <td class="bg-primary text-white">Mật khẩu <br><small>Lưu ý: Để trống nếu không muốn thay đổi</small></td>
                                    <td  class="bg-danger text-white">
                                        <input type="text" class="form-control" name="matkhau" value=""/>
                                    </td>
                                    </tr>
                                    <tr class="table">
                                    <td class="bg-primary text-white">Email</td>
                                    <td  class="bg-danger text-white">
                                        <input type="text" class="form-control" name="email" value="'.$user["email"].'"/>
                                    </td>
                                    </tr>
                                    <tr class="table">
                                    <td class="bg-primary text-white">Facebook</td>
                                    <td  class="bg-danger text-white">
                                        <input type="text" class="form-control" name="facebook" value="'.$user["facebook"].'"/>
                                    </td>
                                    </tr>
                                    <tr class="table">
                                    <td class="bg-primary text-white">Số điện thoại</td>
                                    <td  class="bg-danger text-white">
                                        <input type="text" class="form-control" name="sodienthoai" value="'.$user["sodienthoai"].'"/>
                                    </td>
                                    </tr>';
                                    if($sefl["vaitro"] == 2){
                                        echo'<tr class="table">
                                        <td class="bg-primary text-white">Vai trò</td>
                                        <td class="bg-danger text-white"><select class="form-control" id="sel1" name="vaitro">';    
                                        echo'<option value="2">Owner</option>';
                                        echo'<option value="1">Blog Manager</option>';
                                        echo'<option value="0">Writter</option>';
                                        echo'</select></td>
                                        </tr>
                                        <tr class="table">
                                        <td class="bg-primary text-white">Trạng thái</td>';
                                        echo'<td  class="bg-danger text-white">
                                        <select class="form-control" id="sel1" name="trangthai">';    
                                        echo'<option value="0">Cấp phép</option>';
                                        echo'<option value="1">Cấm</option>';
                                        echo'</select></td>';
                                    echo'</tr>';
                                    }
                                    require("backend/user.php");
                                echo'
                                </tbody>
                                </table>
                                <button type="submit" name="edit" class="btn btn-info">Thay đổi</button>
                                <a href="'.$home.'/dashboard/thong-tin-nguoi-dung/'.$id.'" class="btn btn-danger">Quay lại</a> 
                                </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>';
            }
            break;
        //Hiện thông tin người dùng
        case 'info':
            if ($id = ''.$id.'') {
                $sql = $conn->query("SELECT * FROM cqn_user WHERE user_id = '$id'");
                $user = mysqli_fetch_array($sql);
                echo'<div class="container-fluid">
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Quản lý người dùng</h1>
                </div>
                <div class="row">
                    <div class="col-lg-12 mb-4">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Thông tin ngưới dùng</h6>
                            </div>
                            <div class="card-body">
                                <table class="table">
                                <tbody>
                                    <tr class="table">
                                    <td class="bg-primary text-white">ID người dùng</td>
                                    <td class="bg-danger text-white">'.$user["user_id"].'</td>
                                    </tr>
                                    <tr class="table">
                                    <td class="bg-primary text-white">Tên đăng nhập</td>
                                    <td class="bg-danger text-white">'.$user["tendangnhap"].'</td>
                                    </tr>
                                    <tr class="table">
                                    <td class="bg-primary text-white">Tên hiển thị</td>
                                    <td class="bg-danger text-white">'.$user["tenhienthi"].'</td>
                                    </tr>
                                    <tr class="table">
                                    <td class="bg-primary text-white">Email</td>
                                    <td class="bg-danger text-white">'.$user["email"].'</td>
                                    </tr>
                                    <tr class="table">
                                    <td class="bg-primary text-white">Facebook</td>
                                    <td class="bg-danger text-white">'.$user["facebook"].'</td>
                                    </tr>
                                    <tr class="table">
                                    <td class="bg-primary text-white">Số điện thoại</td>
                                    <td class="bg-danger text-white">'.$user["sodienthoai"].'</td>
                                    </tr>
                                    <tr class="table">
                                    <td class="bg-primary text-white">Vai trò</td>
                                    <td class="bg-danger text-white">'.vaitro($user["vaitro"]).'</td>
                                    </tr>
                                    <tr class="table">
                                    <td class="bg-primary text-white">Trạng thái</td>';
                                    if($user["trangthai"] == 0){
                                        echo'<td class="bg-danger text-white">Được cấp phép</td>';
                                    }
                                    else{
                                        echo'<td class="bg-danger text-white">Bị cấm</td>';
                                    }
                                    echo'</tr>
                                </tbody>
                                </table>
                                <a href="'.$home.'/dashboard/nguoi-dung/chinh-sua/'.$user["user_id"].'" class="btn btn-info"><i class="fas fa-user-edit"></i> Chỉnh sửa thông tin</a>
                                - <a href="'.$home.'/dashboard/chatting/'.$user["user_id"].'" class="btn btn-success"><i class="fas fa-envelope"></i> Nhắn tin</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>';
            }
            break;
        default:
            echo'<div class="container-fluid">
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Quản lý người dùng</h1>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Quản lý người dùng</h6>
                                </div>
                                <div class="card-body">';
                                        while ($row = mysqli_fetch_array($result)) {
                                            echo '<li class="list-group-item"><i class="fas fa-user text-danger"></i> <a href="'.$home.'/dashboard/thong-tin-nguoi-dung/'.$row["user_id"].'" class="text-danger">'.$row["tenhienthi"].'</a><span style="float:right"> <a href="'.$home.'/dashboard/nguoi-dung/chinh-sua/'.$row["user_id"].'"><span class="badge badge-primary"><i class="fas fa-edit"></i> Chỉnh sửa</i></span></a></span></li>';
                                            $stt++;
                                        }
                                        echo'</ul>';
                                    if($number_of_page > 1){
                                        echo'<ul class="pagination">';
                                        if($page == 1){
                                            echo '<li class="page-item disabled"><a class="page-link" href="'.$home.'/dashboard/nguoi-dung/trang/'.$page.'"><i class="fas fa-angle-double-left"></i></a></li>';
                                        }
                                        else{
                                            echo '<li class="page-item"><a class="page-link" href="'.$home.'/dashboard/nguoi-dung/trang/'.$pre.'"><i class="fas fa-angle-double-left"></i></a></li>';
                                        }
                                        for($page = 1; $page <= $number_of_page; $page++) {
                                            if($page == $active_page){
                                                echo '<li class="page-item active"><a class="page-link" href="'.$home.'/dashboard/nguoi-dung/trang/'.$page.'">'.$page.'</a></li>';
                                            }
                                            else{
                                                echo '<li class="page-item"><a class="page-link" href="'.$home.'/dashboard/nguoi-dung/trang/'.$page.'">'.$page.'</a></li>';
                                            }
                                        }
                                        if (!isset ($_GET['page']) ) {
                                            $page = 1;
                                        } else {
                                            $page = $_GET['page'];
                                        }
                                        if($page == $number_of_page){
                                            echo '<li class="page-item disabled"><a class="page-link" href="'.$home.'/dashboard/nguoi-dung/trang/'.$page.'"><i class="fas fa-angle-double-right"></i></a></li>';
                                        }
                                        else{
                                            echo '<li class="page-item"><a class="page-link" href="'.$home.'/dashboard/nguoi-dung/trang/'.$next.'"><i class="fas fa-angle-double-right"></i></a></li>';
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