<style>
    .main-chat{
        height: 60vh;
        overflow: scroll;
        padding: 10px;
    }
    .main-chat-header{
        color: #fff;
        font-weight: bold;
    }
    .my-chat{
        position: relative;
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
@require("../../include/core.php");
$my_id = $_SESSION["id"];
if(isset($_GET["id"])){
    $to_id = $_GET["id"];
}
else{
    $to_id = "2";
}
$sql_user = "SELECT * FROM cqn_message, cqn_user WHERE cqn_message.to_id = cqn_user.user_id";
$res_user = $conn->query($sql_user);
$user = mysqli_fetch_array($res_user);
$get_last_msg = $conn->query("SELECT * FROM cqn_message WHERE cqn_message.to_id = '$to_id' ORDER BY id DESC LIMIT 1");
$last_msg = mysqli_fetch_array($get_last_msg);
$get_msg = $conn->query("SELECT * FROM cqn_message WHERE (cqn_message.to_id = '$to_id' AND cqn_message.user_id = '$my_id') OR (cqn_message.to_id = '$my_id' AND cqn_message.user_id = '$to_id') ORDER BY id ASC");
if($get_msg->num_rows > 0){
    while($row = mysqli_fetch_assoc($get_msg)){
        $date_sent = $row['date'];
			$day = substr($date_sent, 8, 2); // Ngày gửi
			$month = substr($date_sent, 5, 2); // Tháng gửi
			$year = substr($date_sent, 0, 4); // Năm gửi
			$hour = substr($date_sent, 11, 2); // Giờ gửi
			$min = substr($date_sent, 14, 2); // Phút gửi
        if($row["user_id"] == $my_id){
            echo'<div class="my-chat">
                    <div class="info-msg-user">
                        Bạn - Gửi lúc '.$hour.':'.$min.' | '.$day.'/'.$month.'/'.$year.'
                    </div>
                    <p>'.$row['message'].'</p>';
                    if($row["daxem"] == 1 && $row['id'] == $last_msg["id"]){
                        echo'<div class="sm text-muted">Đã xem <i class="fas fa-check"></i></div>';
                    }
                echo'</div>';
        }
        else{
            echo'<div class="friend-chat">
                    <div class="info-msg-user">
                        '.$user["tenhienthi"].' - Gửi lúc '.$hour.':'.$min.' | '.$day.'/'.$month.'/'.$year.'
                    </div>
                    <p>'.$row['message'].'</p>
                </div>';
        }
    }
}else{
    echo'<p class="text-center text-muted">Chưa có tin nhắn nào, bắt đầu ngay bây giờ!</p>';
}
?>