<!DOCTYPE html>
<noscript>
    Vui lòng bật Javascript để tiếp tục!
</noscript>
<?php
        require_once('core.php');
?>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<meta name="title" content="JoshCQN - Blog tin tức, bóng đá tổng hợp" />
  	<meta name="description" content="JoshCQN - Kênh tin tức tổng hợp, chuyên tin bóng đá, C1, Ngoại Hạng Anh, Bundesliga, Bayern Munich. Chia sẻ các kiến thức, kinh nghiệm." />
  	<link rel="icon" type="image/x-icon" href="/img/icon_white.png">
  	<!------ Import CSS ----->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <link rel="stylesheet" href="/blog/Bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/blog/assets/chaucongtu.css">
    <link rel="stylesheet" href="/blog/assets/canvas.css">	
  	<!----- Import Js ------> 
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
   	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <!------Styles------>
</head>
<div class="nen-mo"></div>
<div class="frame">
    <div class="header">
        <?php
            $sql = "SELECT  * FROM cqn_category";
            $result = $conn->query($sql);
    echo'<div class="n-header">
            <div id="n-logo">
                <a href="'.$home.'">'.$logo.'</a>
            </div>';
// Nav menu for Desktop
            echo'<nav class="n-nav">
                <ul class="n-menu">
                    <li><a href="'.$home.'">Trang Chủ</a></li>
                    <li><a href="'.$home.'/gioi-thieu">Giới Thiệu</a></li>
                    <li><a href="'.$home.'/danh-sach-chuyen-muc">Blog</a></li>';
                echo'<li><a href="'.$home.'/lien-he">Liên Hệ</a></li>';
                echo'<li><a style="cursor:pointer" data-toggle="modal" data-target="#search">Tìm Kiếm</a></li>';
        ?>
                </ul>
                
            </nav>
            <a class="btn-open"><i class="fas fa-bars"></i></a>
        </div>
    </header>
    
</div>
</div>
<!-- Nav menu for Mobile -->
<?php
echo'
<nav class="main-menu">
    <div class="back-canvas">
        <div class="offcanvas-menu">
            <ul>
                <a href="'.$home.'"><li class="nav-canvas-header">'.$logo.'</li>
                <a href="'.$home.'"><li><i class="fas fa-home-alt nav-home"></i></li></a>
                <a href="'.$home.'/gioi-thieu"><li><i class="fas fa-user nav-introduce"></i></li></a>
                <a href="'.$home.'/danh-sach-chuyen-muc"><li><i class="fas fa-rss nav-blog"></i></li></a>
                <a href="'.$home.'/lien-he"><li><i class="fas fa-id-card nav-contact"></i></li></a>
                <form class="form-search" action="'.$home.'/tim-kiem" method="GET">
                <div class="input-group mb-3 text-search">
                    <label for="q" class="input-group text-dark h4">Tìm kiếm</label>
                    <input type="text" class="form-control" name="q" placeholder="Nhập từ khóa...">
                    <div class="input-group-append">
                        <button class="btn btn-success" type="submit">Tìm</button>
                    </div>
                </div>
                </form>
            </ul>
        </div>
    </div>
</nav>
';
?>
<div id="to-top">&#10140;</div>
</div>
<!-- Tìm kiếm -->
<?php
echo'<div class="modal fade" id="search">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Tìm kiếm</h4>
                
            </div>
            <div class="modal-body">
                <form action="'.$home.'/tim-kiem" method="get">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Nhập từ khóa" id="mail" name="q">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>                 
        </div>
    </div>
</div>';
?>
<?php
//Kiểm tra trạng thái
    if($baotri == 1){
        echo'<title>Bảo Trì Hệ Thống</title>';
        echo'<center class="baotri"><h2><p>BẢO TRÌ HỆ THỐNG</p></h2><h4>Vui lòng quay lại sau!</h4></center>';
        require("end.php");
        exit();
    }
?>
<script>
    const btn_open = document.querySelector('.btn-open');
    const btn_close = document.querySelector('.btn-close');
    const nen_mo = document.querySelector('.nen-mo');
    const menu = document.querySelector('.offcanvas-menu');

    btn_open.addEventListener('click', function(e){
        menu.classList.toggle('active');
        nen_mo.classList.toggle('active');
    });
    nen_mo.addEventListener('click', function(e){
        menu.classList.remove('active');
        nen_mo.classList.remove('active');
    });
</script>