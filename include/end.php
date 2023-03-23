<div class="footer">
    <div class="sec-foot">
        <div class="footer-card">
            <div class="footer-title">GIỚI THIỆU</div>
            <p>Cập nhật nhanh nhất tin tức về chuyển nhượng, sự kiện nổi bật, lịch thi đấu của Bayern Munich một cách
                nhanh nhất, chính xác nhất. Đây như là một dự án Blog kết hợp Forum đầu tay của mình!</p>
        </div>
        <div class="footer-card">
            <div class="footer-title">LIÊN HỆ</div>
            <p><i class="fas fa-envelope"></i> support@chaucongtu.gq<br><i class="fas fa-envelope"></i>
                quenhon2002@gmail.com<br><i class="fas fa-phone-square"></i> 0848611127</p>
        </div>
    </div>
    <div class="footer-end">
    <?PHP 
        $now = getdate();
        echo'<div class="footer-copyright">&copy Josh CQN '.$now["year"].' <?php echo"$copy"; ?></div>';?>
        <div class="footer-social">
            <p><a href="https://facebook.comm/"><i class="fab fa-facebook-square" style="color:blue"></i></a>
                <a href=""><i class="fab fa-twitter-square" style="color:rgb(13, 165, 211)"></i></a>
                <a href=""><i class="fab fa-google-plus-square" style="color:rgb(255, 0, 0)"></i></a>
            </p>
        </div>
    </div>
</div>
<?php mysqli_close($conn); 
echo'<script src="'.$home.'/assets/chaucongtu.js"></script>';
?>
