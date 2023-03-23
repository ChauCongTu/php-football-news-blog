<?php
//Get giá trị select và id
if(isset($_GET["select"])){
    $select = $_GET["select"];
}else{
    $select = '';
}
if($user["user_id"] != 1){
    echo'<p class="text-center"><img src="'.$home.'/img/ban.png" width="50%"></p><div class="alert alert-danger p-3 ml-5 mr-5"><p>Bạn không có quyền truy cập trang này!<p></div>';
    require("end.php");
    exit;
}
switch ($select) {
    case 'maintance':
        echo'<div class="container-fluid">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Quản lý Website</h1>
        </div>
        <div class="row">
            <div class="col-lg-12 mb-4">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Cài đặt bảo trì</h6>
                    </div>
                    <div class="card-body">
                    <form action="" method="POST" class="text-center">
                        <button type="submit" class="btn btn-primary" name="baotri">Bắt đầu bảo trì</button> 
                        <button type="submit" class="btn btn-success" name="end-baotri">Kết thúc bảo trì</button>
                    </form>
                    </div>';
                require("backend/websetting.php");
                echo'</div>
            </div>
        </div>';
        break;
    case 'homepage':
        echo'<div class="container-fluid">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Quản lý Website</h1>
        </div>
        <div class="row">
            <div class="col-lg-12 mb-4">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Cài đặt trang chủ</h6>
                    </div>
                    <div class="card-body">
                        <form action="" method="POST">
                        <div class="mb-3 mt-3">
                        <label class="form-label">Logo:</label>
                        <input type="text" class="form-control" name="logo" value="'.$logo.'">
                        </div>
                        <div class="mb-3 mt-3">
                        <label class="form-label">Dòng tiêu đề:</label>
                        <input type="text" class="form-control" name="tieude" value="'.$tieude.'">
                        </div>                       
                        <div class="mb-3 mt-3">
                        <label class="form-label">Dòng giới thiệu:</label>
                        <input type="text" class="form-control" name="gioithieu" value="'.$gioithieu.'">
                        </div>
                        <p class="mb-3 mt-3">Ảnh Background:</p>
                        <div class="form-group">
                            <input type="file" class="form-control-file border" name="file">
                        </div>
                        </p>
                        <button type="submit" name="homepage" class="btn btn-primary">Thay đổi</button>
                        </form>                  
                    </div>
                </div>
            </div>
        </div>';
        require("backend/websetting.php");
        break;
    default:
        echo'<div class="container-fluid">
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Quản lý Website</h1>
                </div>
                <div class="row">
                    <div class="col-lg-12 mb-4">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Cài đặt trang Web</h6>
                            </div>
                            <a href="'.$home.'/dashboard/website/maintance" class="list-group-item list-group-item-action">Cài đặt bảo trì</a>
                            <a href="'.$home.'/dashboard/website/homepage" class="list-group-item list-group-item-action">Cài đặt trang chủ</a>
                            <a href="'.$home.'/dashboard/website/website" class="list-group-item list-group-item-action">Cài đặt Navigation</a>
                            <a href="'.$home.'/dashboard/website/clear-post" class="list-group-item list-group-item-action">Xóa tất cả bài viết</a>
                            <a href="'.$home.'/dashboard/website/clear-blog" class="list-group-item list-group-item-action">Làm sạch Blog</a>
                            <a href="'.$home.'/dashboard/website/backup" class="list-group-item list-group-item-action">Sao lưu Blog</a>
                        </div>
                    </div>
                </div>
            </div>';
        break;
}
?>
<div class="modal fade" id="baotri">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Nhập thời gian bảo trì (tính bằng giờ)</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <form action="" method="POST">
        <div class="form-group">
            <input type="text" class="form-control" name="time">
        </div>
        <button type="submit" class="btn btn-primary float-right" name="baotri">Bắt đầu bảo trì</button>
        <small>Lưu ý, nhập 0 để bảo trì vô thời hạn</small>
        </form>
      </div>

      <!-- Modal footer -->
    </div>
  </div>
</div>
<script>
// Add the following code if you want the name of the file appear on select
$(".custom-file-input").on("change", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});
</script>