<?php
require("../include/core.php");
require("../include/header.php");
?>
<style>
    .padd-top{
        padding-top: 100px;
    }
    .label-404{
        text-align: center;
        font-size: 200px;
        font-family: Arial;
    }
    .text-404{
        text-align: center;
        font-size: 30px;
    }
    .text-center p{
        font-weight: bold;
        font-size: 30px;
    }
</style>
<title>Trang không tồn tại - JoshCQN</title>
<div class="padd-top">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <div class="404">
                    <div class="label-404">404</div>
                    <p class="text-404">Trang không tồn tại!</p>
                </div>
            </div>
            <div class="col-sm-6 text-center mt-5 mb-5">
                <p>Noops! Bạn đã truy cập vào trang không tồn tại trên hệ thống</p>
                <?php echo'<div class="home-404 pt-3"><a href="'.$home.'" class="btn btn-success"><i class="fas fa-home text-light"></i> Về trang chủ</a> <a href="'.$home.'/lien-he" class="btn btn-danger"><i class="fas fa-envelope text-light"></i> Cần hỗ trợ</a></div>';?>
            </div>
        </div>
    </div>
</div>
<?php
require("../include/end.php");
?>