    <div class="body">
        <!-- Khởi tạo trang chủ -->
        <div id="homepage">
            <?php echo'<div class="home-bg"><img src="'.$home.'/img/background.png" width="100%" height="100%"></div>';?>
            <?php echo'<div class="tieude">'.$tieude.'</div>';?>
            <?php echo'<div class="gioithieu">'.$gioithieu.'</div>';?>
            <?php 
            echo'
            <a href="'.$home.'/gioi-thieu" class="btn-home">Giới Thiệu</a>
            <a href="'.$home.'/lien-he" class="btn-home">Liên Hệ</a>
            ';
            ?>
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
                <div class="tacgia">- '. $row["tacgia"] .' -</div>
            </div>
            ';
            }
        }?>
        <!-- Khởi tạo blog -->
        <div class="frame">
        <div class="blog">
            <div class="rmenu">Bài Viết Mới Nhất</div>
            <?php require("style/v-postlist.php"); ?>
        </div>
<script>
var x = screen.width;
var menu = document.getElementsByClassName("rmenu");
if(x < 786){
    menu.classList.add("text-dark");
}
</script>
    