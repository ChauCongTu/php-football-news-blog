<style>
    .contact{
        padding: 80px 0 30px 0;
    }
    label{
        font-size:20px;
    }
    .btn-nhon{
        width: 100px;
        padding: 10 10px;
        color: #fff;
        cursor: pointer;
    }
</style>
<?PHP require('../include/style/css_home.html'); ?>
<script src="https://cdn.ckeditor.com/4.19.1/standard/ckeditor.js"></script>
<?PHP require('../include/header.php'); ?>
<title>Liên hệ | Josh CQN</title>
<form action="lien-he" method="POST" class="contact container">
    <h1>Liên hệ</h1>
    <div class="form-group">
        <div class="row">
            <div class="col-sm-6">
                <label for="usr">Email:</label>
                <input type="email" class="form-control" name="email">
            </div>
            <div class="col-sm-6">
                <label for="name">Tên của bạn:</label>
                <input type="text" class="form-control" name="name">
            </div>
        </div>
    </div>
    <div class="form-group">
    <label for="pwd">Tiêu đề:</label>
    <input type="text" class="form-control" name="subject">
    </div> 
    <div class="form-group">
    <label for="comment">Nội dung:</label>
    <textarea class="form-control" rows="5" name="content"></textarea>
    </div>
    <input type="submit" class="btn btn-primary btn-nhon" name ="send" value="Gửi">
    <?PHP  if (isset($_POST["send"])) {
            //Xử Lí Đăng Nhập
            //Lấy thông tin đăng nhập
            $email = addslashes($_POST['email']);
            $ten = addslashes($_POST['name']);
            $tieude = addslashes($_POST['subject']);
            $noidung = addslashes($_POST['content']);
            if(!$email || !$tieude || !$noidung){
                echo'<span style="color:red">Vui lòng điền đầy đủ thông tin!</span>';
            }
            else{
                $q_time = "SELECT CURDATE() as now";
                $time_now = mysqli_query($conn, $q_time) or die( mysqli_error($conn));
                $time = mysqli_fetch_array($time_now);
                $date_time = $time["now"];  
                $sql = "INSERT INTO cqn_contact (`email`,`ten`, `tieude`, `noidung`, `contact_date`) VALUES ('$email', '$ten', '$tieude', '$noidung', '$date_time')";
                if ($conn->query($sql) === TRUE) {
                    echo '<span style="color:#2ecc71">Đã gửi tin nhắn thành công! Chúng tôi sẽ phản hồi trong thời gian sớm nhất</span>';
                }
            }
        }
    ?>
</form>
<?PHP require('../include/end.php'); ?>
<script>
    CKEDITOR.replace( 'content' );
</script>