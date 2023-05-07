<?php
session_start();
header('Content-Type: text/html; charset=UTF-8');
echo '<title>Đăng xuất</title>';
if (isset($_SESSION['users'])) {
    if (session_destroy())
    echo '<script language="javascript">window.location="d56b699830e77ba53855679cb1d252da.login.josh.cqn";</script>';
    else
    echo '<script language="javascript">alert("Có Lỗi Xảy Ra!"); window.location="index.html";</script>';
}else{
    echo '<script language="javascript">alert("Bạn chưa đăng nhập!"); window.location="index.html";</script>';
}
?>