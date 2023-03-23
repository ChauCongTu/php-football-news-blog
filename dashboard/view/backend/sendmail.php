<?php
// Import PHPMailer classes into the global namespace
// These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;
require '../mail/PHPMailer/src/Exception.php';
require '../mail/PHPMailer/src/PHPMailer.php';
require '../mail/PHPMailer/src/SMTP.php';
// Instantiation and passing `true` enables exceptions
$mail = new PHPMailer(true);
if(isset($_POST["send-mail"])){
    $to = $cnt["email"];
    $ten = addslashes($_POST['ten']);
    $subject = addslashes($_POST['tieude']);
    $message = addslashes($_POST['noidung']);
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
        $mail->setFrom('admin@chaucongtu.gq', $ten);
        $mail->addAddress('cnhon5496@gmail.com'); // Add a recipient
        // $mail->addAddress('ellen@example.com'); // Name is optional
        // $mail->addReplyTo('info@example.com', 'Information');
        // $mail->addCC('cc@example.com');
        // $mail->addBCC('bcc@example.com');
        // Content
        $mail->isHTML(true);   // Set email format to HTML
        $mail->Subject = $subject;
        $mail->Body = $message;
        $mail->send();
        echo '<h3 class="alert alert-success">Đã phản hồi thành công</h3>';
    } catch (Exception $e) {
        echo '<h3 class="alert alert-danger">Lỗi: {$mail->ErrorInfo}</h3>';
    }
}
