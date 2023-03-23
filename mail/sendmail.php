<title>Gửi mail bằng địa chỉ Webmail</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://cdn.ckeditor.com/4.19.1/standard/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/35.0.1/classic/ckeditor.js"></script>  
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/js/bootstrap.min.js" integrity="sha512-Cy3gSrKCS8aJ7AIaammc0wLXyKRmTa8ntgHvU01Tuz4EdsqVgk/lKzFm/b/8RxOWBaoHI2uGLLU6rXMbqKcGHA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<?php
require("../include/core.php");
// Import PHPMailer classes into the global namespace
// These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;
require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';
// Instantiation and passing `true` enables exceptions
$mail = new PHPMailer(true);
if(isset($_SESSION['id'])){
    echo'
    <div class="card shadow p-4">
        <div class="card-header border shadow bg-primary text-light">JoshCQN Web mail</div>
        <div class="card-body border">
            <form action="" method="POST">
                <div class="form-group">
                    <label for="email">Nhập địa chỉ người nhận:</label>
                    <input type="email" class="form-control" name="email">
                </div>
                <div class="form-group">
                    <label for="name">Nhập tên người nhận:</label>
                    <input type="text" class="form-control" name="name">
                </div>
                <div class="form-group">
                    <label for="name">Nhập tên của bạn:</label>
                    <input type="text" class="form-control" name="my_name">
                </div>
                <div class="form-group">
                    <label for="sbj">Nhập tiêu đề:</label>
                    <input type="text" class="form-control" name="subject" id="editor ">
                </div>
                <div class="form-group">
                    <label for="ct">Nhập nội dung:</label>
                    <textarea name="content"></textarea>
                </div>
                <button type="submit" name="send" class="btn btn-primary">Gửi</button>
                <a href="'.$home.'/dashboard/" class="btn btn-danger">Quay lại</a>
            </form>
        </div>
        <div class="card-footer border shadow">Địa chỉ gửi sẽ là: <b>admin@chaucongtu.gq</b> - Code by <b>JoshCQN</b></div>
    </div>
    ';
    if(isset($_POST["send"])){
        $name = addslashes($_POST['name']);
        $email = addslashes($_POST['email']);
        $my_name = addslashes($_POST['my_name']);
        $subject = addslashes($_POST['subject']);
        $content = addslashes($_POST['content']);
        try {
            //Server settings
            $mail->SMTPDebug = SMTP::DEBUG_SERVER;// Enable verbose debug output
            $mail->isSMTP();// gửi mail SMTP
            $mail->Host = 'free02.123host.vn';// Set the SMTP server to send through
            $mail->SMTPAuth = true;// Enable SMTP authentication
            $mail->Username = 'admin@chaucongtu.gq';// SMTP username
            // $mail->Password = 'xhxiwuvhhatzrrmb'; // SMTP password
            $mail->Password = 'Nhon123456!';
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;// Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` also accepted
            $mail->Port = 587; // TCP port to connect to
            //Recipients
            $mail->setFrom('admin@chaucongtu.gq', $my_name);
            $mail->addAddress($email, $name); // Add a recipient
            // $mail->addAddress('ellen@example.com'); // Name is optional
            // $mail->addReplyTo('info@example.com', 'Information');
            // $mail->addCC('cc@example.com');
            // $mail->addBCC('bcc@example.com');
            // Content
            $mail->isHTML(true);   // Set email format to HTML
            $mail->Subject = $subject;
            $mail->Body = $content;
            $mail->send();
            echo 'Message has been sent';
        } catch (Exception $e) {
            echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    }
}
else{
    echo'<h3 class="alert alert-danger">Bạn ko thể sử dụng tính năng gửi mail!</h3>';
}
?>
<script>
    CKEDITOR.replace( 'content' );
</script>
<script>
    ClassicEditor
    .create( document.querySelector( '#editor' ) )
    .then( editor => {
        console.log( editor );
    } )
    .catch( error => {
        console.error( error );
    } );
</script>