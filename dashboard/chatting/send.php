<?php
date_default_timezone_set('Asia/Saigon'); 
$date_current = '';
$date_current = date("Y-m-d H:i:sa");
if(isset($_POST["send"])){
    $body_msg = @mysqli_real_escape_string($conn, $_POST['msg']);
	// Xử lý chuỗi $body_msg
	$body_msg = htmlentities($body_msg);
	$body_msg = trim($body_msg);
    // $q_time = "SELECT CURDATE() as now";
    // $time_now = mysqli_query($conn, $q_time) or die( mysqli_error($conn));
    // $time = mysqli_fetch_array($time_now);
    // $date = $time["now"];
    if ($body_msg != '')
	{
    $sql = "INSERT INTO `cqn_message`(`user_id`, `to_id`, `message`, `daxem`, `date`)
         VALUES ('$my_id','$to_id','$body_msg','0','$date_current')";
    $up_msg = $conn->query($sql);
    }
}
if(isset($_POST["add-img"])){
    $src = $_POST["link-img"];
    $src = filter_var($src, FILTER_SANITIZE_URL);
    $msg = '<a href="'.$src.'" target="_blank"><img src="'.$src.'" width="100%" class="rounded"></a>';
    $sql = "INSERT INTO `cqn_message`(`user_id`, `to_id`, `message`, `daxem`, `date`)
         VALUES ('$my_id','$to_id','$msg','0','$date_current')";
    $up_msg = $conn->query($sql);
}
if(isset($_POST["add-video"])){
    $src = $_POST["link-video"];
    $src = filter_var($src, FILTER_SANITIZE_URL);
    $msg = '<div class="embed-responsive embed-responsive-16by9">
                <iframe class="embed-responsive-item" src="'.$src.'"></iframe>
            </div>';
    $sql = "INSERT INTO `cqn_message`(`user_id`, `to_id`, `message`, `daxem`, `date`)
         VALUES ('$my_id','$to_id','$msg','0','$date_current')";
    $up_msg = $conn->query($sql);
}
?>