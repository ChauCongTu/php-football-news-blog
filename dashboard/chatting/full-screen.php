<script src="https://cdn.ckeditor.com/ckeditor5/35.0.1/classic/ckeditor.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
    .main-chat{
        height: 100vh;
        padding: 10px;
    }
    .main-chat-header{
        color: #fff;
        font-weight: bold;
    }
    .my-chat{
        position: relative;
        text-align: right;
        max-width: 70%;
        left:30%
    }
    .friend-chat{
        text-align: left;
        max-width: 70%;
        margin-bottom: 10px;
    }
    .my-chat p{
        background-color: #0984e3;
        padding: 10px 20px;
        color: white;
        border-radius: 1rem;
        display: inline-block;
        margin-bottom: 10px;
    }
    .friend-chat p{
        background-color: #2d3436;
        padding: 10px 20px;
        color: white;
        border-radius: 1rem;
        display: inline-block;
        margin-bottom: 10px;
    }
    .info-msg-user{font-size: 13px; color: #666; margin-top: 5px;}
</style>
<?php
require("../../include/core.php");
echo'
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.7.2/css/all.min.css" integrity="sha512-3M00D/rn8n+2ZVXBO9Hib0GKNpkm8MSUU/e2VNthDyBYxKWG+BftNYYcuEjXlyrSO637tidzMBXfE7sQm0INUg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdn.ckeditor.com/4.19.1/standard/ckeditor.js"></script>
 <link href="'.$home.'/dashboard/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="'.$home.'/dashboard/css/sb-admin-2.min.css" rel="stylesheet">
<link href="'.$home.'/dashboard/css/chaucongtu.css" rel="stylesheet">
';
$my_id = $_SESSION["id"];
if(isset($_GET["id"])){
    $to_id = $_GET["id"];
}
else{
    $to_id = "";
}
$sql_user = "SELECT * FROM cqn_user WHERE cqn_user.user_id = '$to_id'";
$res_user = $conn->query($sql_user);
$user = mysqli_fetch_array($res_user);
$get_msg = $conn->query("SELECT * FROM cqn_message WHERE (cqn_message.to_id = '$to_id' AND cqn_message.user_id = '$my_id') OR (cqn_message.to_id = '$my_id' AND cqn_message.user_id = '$to_id') ORDER BY id ASC");
switch ($to_id) {
    case $to_id:
        $conn->query("UPDATE `cqn_message` SET `daxem` = '1' WHERE `cqn_message`.`user_id` = '$to_id'");
        echo'<div class="row">
        <div class="col-lg-12 mb-4">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">'.$user["tenhienthi"].'<a href="'.$home.'/dashboard/chatting/'.$to_id.'"><i class="fas fa-compress-arrows-alt float-right"></i></a></h6>
                </div>
                <div class="card-body">
                    <div class="main-chat" id="chat">';
                    require("chat-fs.php");
                echo'</div>
            </div><form method="POST">
                <div class="row">
                    <div class="col-sm-2 text-center">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#file">
                    <i class="fas fa-paperclip" style="font-size:20px"></i>
                    </button>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#video">
                    <i class="fas fa-file-video" style="font-size:20px"></i>
                    </button>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#img">
                    <i class="fas fa-image" style="font-size:20px"></i>
                    </button>
                    </div>
                    <div class="col-sm-9">
                    <input type="message" class="form-control" name="msg">
                    </div>
                    <div class="col-sm-1">
                    <button type="submit" name="send" class="btn btn-primary" onlick="scroolb()"><i class="fas fa-paper-plane"></i> Gửi</button>
                    </div>
                </div>
                </form>
            </div>
            </div></div></div>';
            require("send.php");
        break;
    default:
        echo'Danh sách tin nhắn của bạn';
        break;
}
?>
<!-- Thêm video -->
<div class="modal fade" id="video" tabindex="-1" role="dialog" aria-labelledby="video" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="video">Thêm video</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="" method="post">
            <p>
                <div class="form-group">Link Embed Video:
                    <input type="text" name="link-video" class="form-control">
                </div>
                <div class="form-group">
                    <button type="submit" name="add-video" class="btn btn-success">Thêm</button>
                </div>
            </p>
                <p class="text-muted"> - Hoặc -</p>
            <p>
                <div class="form-group">Tải lên Video <span class="text-danger">(Đang update)</span>:
                    <input type="file" name="src" class="form-control-file border">
                </div>
                <div class="form-group">
                    <button type="submit" name="video" class="btn btn-success btn-mute">Tải lên</button>
                </div>
            </p>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- Thêm ảnh -->
<div class="modal fade" id="img" tabindex="-1" role="dialog" aria-labelledby="img" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="img">Thêm ảnh</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form action="" method="POST">
            <p>
                <div class="form-group">Link ảnh:
                    <input type="text" name="link-img" class="form-control">
                </div>
                <div class="form-group">
                    <button type="submit" name="add-img" class="btn btn-success">Thêm</button>
                </div>
            </p>
                <p class="text-muted"> - Hoặc -</p>
            <p>
                <div class="form-group">Tải lên ảnh <span class="text-danger">(Đang update)</span>:
                    <input type="file" name="src" class="form-control-file border">
                </div>
                <div class="form-group">
                    <button type="submit" name="video" class="btn btn-success">Tải lên</button>
                </div>
            </p>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- Thêm file -->
<div class="modal fade" id="file" tabindex="-1" role="dialog" aria-labelledby="file" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="file">Up load file</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form action="" method="post">
            <p>
                <div class="form-group">Link file:
                    <input type="text" name="src" class="form-control">
                </div>
                <div class="form-group">
                    <button type="submit" name="add-file" class="btn btn-success">Thêm</button>
                </div>
            </p>
                <p class="text-muted"> - Hoặc -</p>
            <p>
                <div class="form-group">Tải lên file <span class="text-danger">(Đang update)</span>:
                    <input type="file" name="src" class="form-control-file border">
                </div>
                <div class="form-group">
                    <button type="submit" name="video" class="btn btn-success">Tải lên</button>
                </div>
            </p>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<script>
    ClassicEditor
    .create( document.querySelector( '#editor' ) )
    .then( editor => {
        console.log( editor );
    } )
    .catch( error => {
        console.error( error );
    } );
$(document).ready(function(){
  $('[data-toggle="popover"]').popover();   
});
var url = window.location.pathname;
var id = url.substring(url.lastIndexOf('/') + 1);

$.ajaxSetup({cache:false});
// Thiết lập thời gian thực vòng lặp 1 giây
setInterval(function() {$('.main-chat').load('../chat-fs.php?id='+id);}, 1000);
//Cuộn chuột xuống cuối đoạn chat   
function scrollb() {
var element = document.getElementById("chat");
element.scrollTop = element.scrollHeight - element.clientHeight;
}
var element = document.getElementById("chat");
element.scrollTop = element.scrollHeight - element.clientHeight;

</script>