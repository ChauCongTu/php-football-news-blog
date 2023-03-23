<?php
    //Phân trang
$stt = 1;
$results_per_page = 10;
$query = "SELECT * FROM cqn_contact";
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
$query =  "SELECT * FROM cqn_contact LIMIT " . $page_first_result . ',' . $results_per_page;
$result = mysqli_query($conn, $query);
$pre = $page -1;
$next = $page +1;
//
$sql_save = $conn->query("SELECT * FROM cqn_contact WHERE luu = 1");
$sql = $conn->query("SELECT * FROM cqn_contact");
if(isset($_GET["id"])){
    $id = $_GET["id"];
}
if(isset($_GET["thaotac"])){
    $thaotac = $_GET["thaotac"];
}
if(isset($_GET["id"]) && isset($_GET["thaotac"])){
    if($thaotac == 'xem' && $id == ''.$id.''){
        $sql_date = $conn->query("SELECT YEAR(contact_date) as NAM, MONTH(contact_date) as THANG, DAY(contact_date) as NGAY FROM cqn_contact WHERE contact_id = '$id'");
        $date = mysqli_fetch_array($sql_date);
        $sql_xem = $conn->query("SELECT * FROM cqn_contact WHERE contact_id = '$id'"); 
        $cnt = mysqli_fetch_array($sql_xem);
        $daxem = mysqli_query($conn, "UPDATE cqn_contact SET daxem = '1' WHERE contact_id = '$id'");
        echo'<title>'.$cnt["tieude"].' | Liên hệ | Bảng diều khiển</title>';
        echo'<div class="container">
        <div class="row">
                        <div class="col-lg-12 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">'.$cnt["tieude"].'</h6>
                                </div>
                                <div class="card-body">
                <p>Gửi từ: '.$cnt["email"].'</p>
                <p>Ngày gửi: '.$date["NGAY"].'/'.$date["THANG"].'/'.$date["NAM"].'</p>
                <div class="border-top pt-3">     
                    <p class="text-dark">'.$cnt["noidung"].'</p>
                </div>
                </div>
            </div>
            <br>
            <br/>
            <h2>Quản lý</h2>
            <div class="list-group">
                <a href="'.$home.'/dashboard/lien-he/reply/'.$cnt["contact_id"].'" class="list-group-item list-group-item-action">Phản hồi</a>
                <a href="?thaotac=del&id='.$cnt["contact_id"].'" class="list-group-item list-group-item-action">Xóa</a>';
                if($cnt["luu"] == 0){
                    echo'<a href="'.$home.'/dashboard/lien-he/save/'.$cnt["contact_id"].'" class="list-group-item list-group-item-action">Lưu</a>';
                }else{
                    echo'<a href="'.$home.'/dardboard/lien-he/unsave/'.$cnt["contact_id"].'" class="list-group-item list-group-item-action">Bỏ lưu</a>'; 
                }
                echo'<a href="'.$home.'/darhboard/lien-he/note/'.$cnt["contact_id"].'" class="list-group-item list-group-item-action">Đánh dấu là chưa đọc</a>
            </div>
        </div>
        </div>
        ';
        require("view/end.php");
        exit;
    }
    if($thaotac == 'reply' && $id == ''.$id.''){
        $sql_xem = $conn->query("SELECT * FROM cqn_contact WHERE contact_id = '$id'");
        $cnt = mysqli_fetch_array($sql_xem);?>
        <form action="" method="POST" class="contact container">
            <h2>Phản hồi <?php echo $cnt["email"]?></h2>
            <div class="form-group">
            <label for="usr">Tên:</label>
            <input type="text" class="form-control" name="ten">
            </div>
            <div class="form-group">
            <label for="usr">Tiêu đề:</label>
            <input type="text" class="form-control" name="tieude">
            </div>
            <div class="form-group">
            <label for="noidung">Nội dung:</label>
            <textarea class="form-control" rows="5" name="noidung"></textarea>
            </div>
            <input type="submit" class="btn btn-info btn-nhon" name ="send-mail" value="Gửi">
            <?PHP  require("backend/sendmail.php");
            ?>
            <script>
                CKEDITOR.replace( 'noidung' );
            </script>
        </form>
        
    <?php
    require("view/end.php");
        exit;
    }
    if($thaotac == 'note' && $id == ''.$id.''){
        $note = mysqli_query($conn, "UPDATE cqn_contact SET daxem = '0' WHERE contact_id = '$id'");
        echo'<script>window.location="'.$home.'/dashboard/tin-nhan";</script>';
        exit;
    }
    if($thaotac == 'save' && $id == ''.$id.''){
        $save = mysqli_query($conn, "UPDATE cqn_contact SET luu = '1' WHERE contact_id = '$id'");
        echo'<script>window.location="'.$home.'/dashboard/tin-nhan";</script>';
        exit;
    }
    if($thaotac == 'unsave' && $id == ''.$id.''){
        $save = mysqli_query($conn, "UPDATE cqn_contact SET luu = '0' WHERE contact_id = '$id'");
        echo'<script>window.location="'.$home.'/dashboard/tin-nhan";</script>';
        exit;
    }
    if($thaotac == 'del' && $id == ''.$id.''){
        $save = mysqli_query($conn, "DELETE FROM cqn_contact WHERE contact_id = '$id'");
        echo'<script>window.location="'.$home.'/dashboard/tin-nhan";</script>';
        exit;
    }
}
?>
<div class="container">
<title>Liên hệ | Bảng diều khiển</title>
    <h2>Danh sách tin nhắn</h2>   
    <div class="list-group">
<?php
    while ($row = mysqli_fetch_array($result)) {
        if($row["daxem"] == 1)
            echo'<a href="'.$home.'/dashboard/lien-he/xem/'.$row["contact_id"].'" class="list-group-item list-group-item-action">'.$row["tieude"].'</a>';
        else if($row["daxem"] == 0)
            echo'<a href="'.$home.'/dashboard/lien-he/xem/'.$row["contact_id"].'" class="list-group-item list-group-item-action"><b>'.$row["tieude"].'</b> <span class="badge badge-danger text-right"> Mới</span></a>';
        }
        echo'<ul class="pagination" style="float:right">';
                if($page == 1){
                    echo '<li class="page-item disabled"><a class="page-link" href="?page='.$page.'">Trước</a></li>';
                }
                else{
                    echo '<li class="page-item"><a class="page-link" href="?page='.$pre.'">Trước</a></li>';
                }
                for($page = 1; $page <= $number_of_page; $page++) {
                    if($page == $active_page){
                        echo '<li class="page-item active"><a class="page-link" href="?page='.$page.'">'.$page.'</a></li>';
                    }
                    else{
                        echo '<li class="page-item"><a class="page-link" href="?page='.$page.'">'.$page.'</a></li>';
                    }
                }
                if (!isset ($_GET['page']) ) {
                    $page = 1;
                } else {
                    $page = $_GET['page'];
                }
                if($page == $number_of_page){
                    echo '<li class="page-item disabled"><a class="page-link" href="?page='.$page.'">Sau</a></li>';
                }
                else{
                    echo '<li class="page-item"><a class="page-link" href="?page='.$next.'">Sau</a></li>';
                }
        echo'</ul>';
        ?>
  </div>
  <br>
  <h2>Tin nhắn đã lưu</h2>
    <div class="list-group">
<?php
    if($sql_save->num_rows > 0){
        while($row=mysqli_fetch_array($sql_save)){
            echo'<a href="'.$home.'/dashboard/lien-he/xem/'.$row["contact_id"].'" class="list-group-item list-group-item-action">'.$row["tieude"].'</a>';
    }
}
?>