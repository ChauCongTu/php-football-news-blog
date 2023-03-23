<?php
//Admin Panel
require("../include/core.php");
if(isset($_GET["act"])){
    $act = $_GET["act"];
}else{
    $act = '';
}
switch ($act) {
    case 'cm':
        $title = "Quản lý chuyên mục - JoshCQN Panel";
        require("view/header.php");
        require("view/category.php");
        require("view/end.php");
        break;
    case 'bv':
        $title = "Quản lý bài viết - JoshCQN Panel";
        require("view/header.php");
        require("view/post.php");
        require("view/end.php");
        break;
    case 'usr':
        $title = "Quản lý người dùng - JoshCQN Panel";
        require("view/header.php");
        require("view/user.php");
        require("view/end.php");
        break;
    case 'msg':
        $title = "Liên hệ - JoshCQN Panel";
        require("view/header.php");
        require("view/message.php");
        require("view/end.php");
        break;
    case 'wst':
        $title = "Cài đặt trang Web - JoshCQN Panel";
        require("view/header.php");
        require("view/websetting.php");
        require("view/end.php");
        break;
    default:
        $title = "Bảng điều khiển - JoshCQN Panel";
        require("view/header.php");
        require("view/dashboard.php");
        require("view/end.php");
        break;
    }
?>