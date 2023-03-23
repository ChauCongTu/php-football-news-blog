<style>
    .post-tenbv{
        font-size: 28px;
        font-weight: bolder;
    }
</style>
<?php
echo'<link rel="stylesheet" href="'.$home.'/assets/icon-share.css">';
echo'<title>'.$bv["tenbaiviet"].' | Josh CQN</title>'; 
$id_bv2 = $bv["post_id"];
$id_bv = mysqli_real_escape_string($conn, $id_bv2);
$id_cm = $bv["category_id"];
$id_bv_trung = $bv["post_id"];
$q_cmt = "SELECT * FROM cqn_comment WHERE cqn_comment.post_id = '$id_bv'";
$q_cm = "SELECT * FROM cqn_baiviet, cqn_category WHERE cqn_baiviet.category_id = cqn_category.category_id AND cqn_baiviet.category_id = '$id_cm' AND post_id != '$id_bv_trung' ORDER BY post_id DESC LIMIT 10";
$q_bv = "SELECT * FROM cqn_baiviet, cqn_category WHERE cqn_baiviet.category_id = cqn_category.category_id AND post_id != '$id_bv_trung' ORDER BY post_id DESC LIMIT 10";
$r_cmt = $conn->query($q_cmt);
$r_cm = $conn->query($q_cm);
$r_bv = $conn->query($q_bv);
$bv_view = $bv["view"];
$view = "UPDATE cqn_baiviet SET view = $bv_view + 1 WHERE post_id = '$id_bv'";
$conn -> query($view);
$date_post = $bv['post_date'];
$day = substr($date_post, 8, 2); // Ngày gửi
$month = substr($date_post, 5, 2); // Tháng gửi
$year = substr($date_post, 0, 4); // Năm gửi
@$thaotac = $_GET["thaotac"];
@$id = $_GET["id"];
$ban_name = array("admin",
                    " admin",
                    "admin ",
                    " admin ",
                    "Josh CQN", 
                    "Nhon Chau", 
                    "Chau Nhon", 
                    "Nhon",
                    "Quản trị viên"
                );
if($thaotac=='del' && $id==''.$id.''){
    $del = "DELETE FROM cqn_comment WHERE comment_id = '$id'";
    $delete = $conn->query($del);
    // echo'<script language="javascript">window.location="'.$home.'/bai-viet/'.$bv["slug_bv"].'.html";</script>';
}
?>
<style>
    .struct-category{
        letter-spacing: 2px;
    }
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<?php
$tenchuyenmuc = strtoupper($bv["tenchuyenmuc"]);
$url = get_link();
echo'<div class="container-fluid frame">
        <div class="row">
            <div class="col-md-8">
            <div class="struct-category">
                <a href="'.$home.'" class="text-muted"> HOME</a> <i class="fas fa-angle-right text-muted"></i> 
                <a href="'.$home.'/danh-sach-chuyen-muc" class="text-muted">BLOG</a> <i class="fas fa-angle-right text-muted"></i>
                <a href="'.$home.'/chuyen-muc/'.$bv["slug_cm"].'" class="text-muted">'.$tenchuyenmuc.'</a>
            </div>
                <p class="post-tenbv">'.$bv["tenbaiviet"].'</p>
                <span class="text-muted">Đăng lúc: '.$day.'/'.$month.'/'.$year.'</spanp> |
                <span class="text-muted">Lượt xem: '.$bv["view"].'</span>
                <p class="pt-2 pr-2">
                    <span class="text-muted">Chia sẻ: </span>
                    <a href="https://www.facebook.com/sharer/sharer.php?u='.$url.'" target="_blank"><i class="fab fa-facebook-f icon-facebook"></i></a>
                    <a href="https://twitter.com/share?text='.$bv["tenbaiviet"].'&url='.$url.'" target="_blank"><i class="fab fa-twitter icon-twitter"></i></a>
                    <a href="https://plus.google.com/share?url='.$url.'" target="_blank"><i class="fab fa-google-plus-g icon-google-plus"></i></a>
                    <a href="https://www.pinterest.com/pin/create/button/?url='.$url.'&media='.$home.'/img/post/'.$bv["post_id"].'.png&description='.$bv["tenbaiviet"].'" target="_blank"><i class="fab fa-pinterest-p icon-pinterest"></i></a>
                    <a class="copy-link" onclick="link()">
                        <i class="fas fa-link icon-link"></i>
                    </a><span id="copied-link"></span>
                    <a class="copy-code" onclick="html()">
                        <i class="fas fa-code icon-code"></i>
                    </a><span id="copied-code"></span>
                </p>
                <blockquote class="blockquote border-top border-dark mt-3" style="padding-top:15px">
                    '.$bv["noidung"].'
                <footer class="blockquote-footer" style="padding-top:30px; float: right">'.$bv["tenhienthi"].'</footer>
                </blockquote>
                <div class="mt-3" style="padding-top:50px;">
                <h2>Bình luận</h2>
                <p>Nếu thấy có vấn đề gì, xin hãy để lại bình luận</p>
                    <form action="" method="POST">';
                    if(isset($_SESSION["id"])){
                        echo'<div class="form-group">
                                <label for="username">Tên của bạn: <span style="color:red"><b>'.$user["tenhienthi"].'</b></span></label>
                            </div>';
                    }
                    else{
                        echo'<div class="form-group">
                        <label for="username">Địa chỉ Email: <span style="color:red">*</span></label>
                        <input type="text" class="form-control" name="mail" required/>
                    </div>
                    <div class="form-group">
                        <label for="username">Tên của bạn: <span style="color:red">*</span></label>
                        <input type="text" class="form-control" name="name"/>
                    </div>  ';
                    }      
                    echo'<div class="form-group">
                        <label for="password">Bình luận: <span style="color:red">*</span></label>
                        <textarea class="form-control" rows="5" name="content"></textarea>
                    </div>      
                    <input type="submit" class="btn btn-primary btn-nhon" name ="cmt" value="Bình Luận">
                </form>';
            //Xử lý bình luận
            if (isset($_POST["cmt"])) {
                //Lấy thông tin
                $ten = isset($_POST['name'])?(string)$_POST['name']:false;
                $noidung = isset($_POST['content'])?(string)$_POST['content']:false;
                $mail = isset($_POST['mail'])?(string)$_POST['mail']:false;
                $mail = filter_var($mail, FILTER_SANITIZE_EMAIL);
                if(isset($_SESSION['id'])){
                    $ten = '<span style="color:red">'.$user["tenhienthi"].' - <small><i>Quản trị viên</i></small></span>';
                    $q_time = "SELECT CURRENT_TIMESTAMP() as now";
                    $time_now = mysqli_query($conn, $q_time) or die( mysqli_error($conn));
                    $time = mysqli_fetch_array($time_now);
                    $date_time = $time["now"]; 
                    $id = $bv["post_id"];
                    $sql2 = "INSERT INTO cqn_comment (`ten`, `email`, `noidung_cmt`, `trangthai`, `comment_date`, `post_id`) VALUES ('$ten', '$mail', '$noidung', '0', '$date_time', '$id')";
                    if ($conn->query($sql2) === TRUE) {
                        echo'<script language="javascript">window.location="";</script>';
                    }
                }
                else{
                    $noidung = check_xss($noidung);
                    if(filter_var($mail, FILTER_VALIDATE_EMAIL) === false){
                        echo'<script>alert("Địa chỉ Email không hợp lệ!")</script>';
                    }
                    else{
                        if(!$ten || !$noidung){
                            echo'<script>alert("Không được để trống mục (*)")</script>';
                        }
                        else if(check_ban_name($ban_name, $ten)){
                            echo'<script>alert("Bạn không thể đặt tên là admin, hoặc các tên có nội dung tục tĩu")</script>';
                        }
                        else{
                            $q_time = "SELECT CURRENT_TIMESTAMP() as now";
                            $time_now = mysqli_query($conn, $q_time) or die( mysqli_error($conn));
                            $time = mysqli_fetch_array($time_now);
                            $date_time = $time["now"]; 
                            $id = $bv["post_id"];
                            $sql2 = "INSERT INTO cqn_comment (`ten`, `email`, `noidung_cmt`, `trangthai`, `comment_date`, `post_id`) VALUES ('$ten', '$mail', '$noidung', '0', '$date_time', '$id')";
                            if ($conn->query($sql2) === TRUE) {
                                echo'<script language="javascript">window.location="";</script>';
                            }
                        }
                    }
                }
            }
            //Hiển thị các bình luận
            if($r_cmt->num_rows > 0){
                echo'<h3 class="mt-3">Danh sách bình luận</h3>';
                while($cmt = $r_cmt->fetch_assoc()){
                    $id_cmt = $cmt["comment_id"];
                    $date_sent = $cmt['comment_date'];
                        $d = substr($date_sent, 8, 2); // Ngày gửi
                        $m = substr($date_sent, 5, 2); // Tháng gửi
                        $y = substr($date_sent, 0, 4); // Năm gửi
                        $h = substr($date_sent, 11, 2); // Giờ gửi
                        $ph = substr($date_sent, 14, 2); // Phút gửi
                    echo'<div class="media border-top border-dark p-3 mt-3">
                        <img src="'.$home.'/img/avatar/binhluan.png" alt="Guest" class="mr-3 mt-3 rounded-circle" style="width:60px;">
                        <div class="media-body">';
                        echo'<h4>'.$cmt["ten"].' </h4>';
                        if(isset($_SESSION["id"])){
                            echo'<a style="cursor:pointer" class="badge badge-danger badge-right" data-toggle="modal" data-target="#delete">Xóa</a>';
                        }
                        echo'<p class="border-top border-bottom pt-3 pb-3">'.$cmt["noidung_cmt"].'</p>      
                        
                        <div class="media-footer float-end"><small class="text-muted" style="font-size:15px">'.$h.':'.$ph.' 
                         | 
                        '.$d.'/'.$m.'/'.$y.'</small>
                        </div>
                        </div>
                        </div>
                    ';
                    echo'
                            <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Xác nhận xóa</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    Bạn có chắc muốn xóa bình luận này không
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <a href="'.$home.'/post/?bai-viet='.$bv["slug_bv"].'&thaotac=del&id='.$cmt["comment_id"].'" class="btn btn-danger">Xóa</a>';
                                echo'</div>
                                </div>
                            </div>
                            </div>';
                }
            }
            else{
                echo'<h4><p>Chưa có bình luận nào!</p></h4>';
            }
            echo'</div>
            </div>
            <div class="col-md-4" style="padding-top:30px;">
            <div class="pos-fixed">
                <div class="card">
                    <div class="list-group-item list-group-item-info text-blue"><b>Cùng chuyên mục</b></div>';
                    if($r_cm->num_rows > 0){
                        while($cm = $r_cm->fetch_assoc()){
                            echo'<div class="list-group-item"><a href="'.$home.'/bai-viet/'.$cm["slug_bv"].'.html" class="text-dark">'.$cm["tenbaiviet"].'</a></div>';
                        }
                    }
                    else{
                        echo'<div class="list-group-item">Không có bài viết cùng chuyên mục!</div>';
                    }
            echo'</div><div class="card">
            <div class="list-group-item list-group-item-info text-blue"><b>Bài viết mới</b></div>';
                if($r_bv->num_rows > 0){
                    while($bvn = $r_bv->fetch_assoc()){
                        echo'<div class="list-group-item"><a href="'.$home.'/bai-viet/'.$bvn["slug_bv"].'.html" class="text-dark">'.$bvn["tenbaiviet"].'</a></div>';
                    }
                }
                else{
                    echo'<div class="list-group-item">Không có bài viết mới!</div>';
                }
            echo'</div>
            </div>
        </div>
    </div>';
echo'<input type="text" value="'.$url.'" id="copy-link" style="display:none">';
$html_code = "<p>Chào bạn, tôi muốn chia sẻ cho bạn một bài viết: <a href='".$url."' target='_blank' title='".$bv["tenbaiviet"]."' style='color:#000;font-weight:bold'>".$bv["tenbaiviet"]."</a></p>";
echo'<input type="text" value="'.$html_code.'" id="copy-code" style="display:none">';
?>
<!-- The Modal -->
<?php
echo'
<div class="modal fade" id="xoa" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>';
?>
<script>
    document.addEventListener("DOMContentLoaded",function() {
        var pos = document.querySelectorAll('div.pos-fixed');
        var pos = pos[0];
            //Truy xuất div menu
        var trangthai="duoi200";
        window.addEventListener("scroll",function(){
            var x = pageYOffset;
            if(x > 100){
                if(trangthai == "duoi200")
                {
                    trangthai="tren200";
                    pos.classList.add('pos-up');
                }
            }
            else{
                if(trangthai=="tren200"){
                pos.classList.remove('pos-up');
                trangthai="duoi200";
                }
            }
        })
    })
</script>
<script>
function link() {
  var copyText = document.getElementById("copy-link");
  copyText.select();
  copyText.setSelectionRange(0, 99999);
  navigator.clipboard.writeText(copyText.value);
  
  var tooltip = document.getElementById("copied-link");
  tooltip.innerHTML = "Đã sao chép vào Clipboard ✓";

  setTimeout(function(){
  	var tooltip = document.getElementById("copied-link");
  	tooltip.innerHTML = "";
  }, 2000);
}
function html() {  
  var copyText = document.getElementById("copy-code");
  copyText.select();
  copyText.setSelectionRange(0, 99999);
  navigator.clipboard.writeText(copyText.value);
  
  var tooltip = document.getElementById("copied-code");
  tooltip.innerHTML = "Đã sao chép vào Clipboard ✓";
  
  setTimeout(function(){
  	var tooltip = document.getElementById("copied-code");
  	tooltip.innerHTML = "";
  }, 2000);
}
</script>