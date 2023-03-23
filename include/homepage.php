<?php
require('module/css_home.html');
require('header.php');
//Home page Sectione
?>
<div id="trang-chu">
    <div class="tieude">JOSH CQN - CHAUCONGTU<? echo $tieude;?></div>
    <div class="gioithieu">DEV . FOOTBALL . MUSIC<? echo $gioithieu;?></div>
    <a href="/gioi-thieu" class="btn-home">Giới Thiệu</a>
    <a href="/lien-he" class="btn-home">Liên Hệ</a>
</div>

<!-- Khởi tạo châm ngôn -->
<?PHP
    $sql = "SELECT * FROM cqn_testimonial";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            echo'
            <div class="frame">
                <div class="section-text">
                    <div class="chamngon">'. $row["chamngon"] .'</div>
                    <div class="tacgia">- '. $row["tacgia"] .'</div>
                </div>
            ';
        }
    }
?>
<!-- Xử lý kích thước trang chủ -->
<script>
    var h = window.innerHeight -100;
    // Đầu tiên, hãy trỏ đến phần tử
    // Cần tạo kiểu
    var elem = document.getElementById('trang-chu');
    
    // Áp dụng kiểu cho phần tử
    elem.style.color = "#000";
    elem.style.backgroundColor = "#fff";
    elem.style.height = h+ 'px';
</script>