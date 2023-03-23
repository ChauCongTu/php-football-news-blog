<?php
//sql
$get_message_w_me = $conn->query("SELECT * FROM `cqn_message` WHERE to_id = '$my_id' OR user_id = '$my_id' ORDER BY id DESC");
$id_mess_to_me = array();    
while($row = mysqli_fetch_array($get_message_w_me)){
    if(in_array($row["to_id"], $id_mess_to_me) == false && $row["to_id"] != $my_id){
        $id_mess_to_me[] = $row["to_id"];
    }
    if(in_array($row["user_id"], $id_mess_to_me) == false && $row["user_id"] != $my_id){
        $id_mess_to_me[] = $row["user_id"];
    }
}
if($get_message_w_me -> num_rows == 0){
    echo'<span class="text-muted text-center">Chưa có tin nhắn nào!</span>';
}
else{
    foreach($id_mess_to_me as $a){
        $get_user = $conn->query("SELECT * FROM cqn_user WHERE user_id = $a");
        $get_message = $conn->query("SELECT * FROM cqn_message WHERE to_id = $a ORDER BY id DESC LIMIT 1");
        $users = mysqli_fetch_array($get_user);
        $message = mysqli_fetch_array($get_message);
        $date_sent = $message['date'];
			$day = substr($date_sent, 8, 2); // Ngày gửi
			$month = substr($date_sent, 5, 2); // Tháng gửi
			$year = substr($date_sent, 0, 4); // Năm gửi
			$hour = substr($date_sent, 11, 2); // Giờ gửi
			$min = substr($date_sent, 14, 2); // Phút gửi
            $xem = $message["daxem"];
            $id = $message["to_id"];
        if($xem == 0 && $id == 1){
            echo'<a href="'.$home.'/dashboard/chatting/'.$a.'" class="list-group-item list-group-item-action" style="font-weight:bold">'.$users["tenhienthi"].' <span class="badge badge-pill badge-danger">Mới</span><span class="text-muted float-right" style="font-weight:normal"><small>'.$hour.':'.$min.' Ngày '.$day.'/'.$month.'/'.$year.'</small></span></a>';
        }
        else{
            echo'<a href="'.$home.'/dashboard/chatting/'.$a.'" class="list-group-item list-group-item-action" style="font-weight:bold">'.$users["tenhienthi"].'<span class="text-muted float-right" style="font-weight:normal"><small>'.$hour.':'.$min.' Ngày '.$day.'/'.$month.'/'.$year.'</small></span></a>';
        }
    }
}
?>