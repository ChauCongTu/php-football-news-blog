 <!-- Footer -->
 <footer class="sticky-footer bg-white">
    <div class="container my-auto">
        <div class="copyright text-center my-auto">
            <span>Copyright &copy; Josh CQN 2022</span>
        </div>
    </div>
</footer>
</div>
</div>
<a class="scroll-to-top rounded" href="#page-top">
<i class="fas fa-angle-up"></i>
</a>
<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
aria-hidden="true">
<div class="modal-dialog" role="document">
<div class="modal-content">
    <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Đăng xuất</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
        </button>
    </div>
    <div class="modal-body">Nếu bạn nhấn nút đăng xuất, hệ thống sẽ tự động ngắt phiên làm việc của bạn.</div>
    <div class="modal-footer">
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Hủy</button>
<?php echo'<a class="btn btn-primary" href="'.$home.'/dangxuat.php">Đăng xuất</a>';?>
    </div>
</div>
</div>
</div>

<!-- Bootstrap core JavaScript-->
<?php
echo'
<script src="'.$home.'/dashboard/vendor/jquery/jquery.min.js"></script>'."\n".'
<script src="'.$home.'/dashboard/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>'."\n".'

<!-- Core plugin JavaScript-->
<script src="'.$home.'/dashboard/vendor/jquery-easing/jquery.easing.min.js"></script>'."\n".'

<!-- Custom scripts for all pages-->
<script src="'.$home.'/dashboard/js/sb-admin-2.min.js"></script>'."\n".'

<!-- Page level plugins -->
<script src="'.$home.'/dashboard/vendor/chart.js/Chart.min.js"></script>'."\n".'

<!-- Page level custom scripts -->
<script src="'.$home.'/dashboard/js/demo/chart-area-demo.js"></script>'."\n".'
<script src="'.$home.'/dashboard/js/demo/chart-pie-demo.js"></script>'."\n".'

</body>'."\n".'

</html>';
?>