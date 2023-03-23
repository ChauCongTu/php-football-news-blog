<?php
$q_post = "SELECT * FROM cqn_baiviet";
$r_post = mysqli_query($conn,$q_post);
$q_user = "SELECT * FROM cqn_user";
$r_user = mysqli_query($conn,$q_user);
$q_category = "SELECT * FROM cqn_category";
$r_category=mysqli_query($conn,$q_category);
$r_cate = $conn -> query($q_category);
$num_post = mysqli_num_rows($r_post);
$num_user = mysqli_num_rows($r_user);
$num_category = mysqli_num_rows($r_category);
//Lượt xem
$q_view = "SELECT SUM(view) as tong_view FROM cqn_baiviet";
$r_view = mysqli_query($conn, $q_view) or die( mysqli_error($conn));
$view = mysqli_fetch_array($r_view);
//Bài viết mới
$sql = $conn -> query("SELECT * FROM cqn_baiviet ORDER BY view DESC LIMIT 2");
?>
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Bảng điều khiển</h1>
    </div>
    <div class="row">
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                Chuyên mục</div>
                        <?php echo'<div class="h5 mb-0 font-weight-bold text-gray-800">'.$num_category.'</div>';?>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-folder fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                Bài viết</div>
                            <?php echo'<div class="h5 mb-0 font-weight-bold text-gray-800">'.$num_post.'</div>';?>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-file fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Lượt xem
                            </div>
                            <div class="row no-gutters align-items-center">
                                <div class="col-auto">
                                <?php echo'<div class="h5 mb-0 font-weight-bold text-gray-800">'.$view["tong_view"].'</div>';?>
                                </div>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-eye fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                Người dùng</div>
                            <?php echo'<div class="h5 mb-0 font-weight-bold text-gray-800">'.$num_user.'</div>';?>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-user fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-6 mb-4">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Ngôn ngữ trang Web</h6>
                </div>
                <div class="card-body">
                    <h4 class="small font-weight-bold">HTML <span class="float-right">9.8%</span></h4>
                    <div class="progress mb-4">
                        <div class="progress-bar bg-danger" role="progressbar" style="width: 9%" aria-valuenow="20"
                            aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <h4 class="small font-weight-bold">CSS <span class="float-right">40%</span></h4>
                    <div class="progress mb-4">
                        <div class="progress-bar bg-warning" role="progressbar" style="width: 40%" aria-valuenow="40"
                            aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <h4 class="small font-weight-bold">Bootstrap <span class="float-right">60%</span></h4>
                    <div class="progress mb-4">
                        <div class="progress-bar" role="progressbar" style="width: 60%" aria-valuenow="60"
                            aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <h4 class="small font-weight-bold">JavaScript/JQuery <span class="float-right">65%</span></h4>
                    <div class="progress mb-4">
                        <div class="progress-bar bg-info" role="progressbar" style="width: 65%" aria-valuenow="80"
                            aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <h4 class="small font-weight-bold">MySQL <span class="float-right">80%</span></h4>
                    <div class="progress mb-4">
                        <div class="progress-bar bg-secondary" role="progressbar" style="width: 80%" aria-valuenow="80"
                            aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <h4 class="small font-weight-bold">PHP <span class="float-right">90%</span></h4>
                    <div class="progress">
                        <div class="progress-bar bg-success" role="progressbar" style="width: 90%" aria-valuenow="100"
                            aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
            </div></div>
            <div class="col-lg-6 mb-4">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Bài viết được xem nhiều nhất</h6>
                    </div>
                    <?php 
                    if ($sql->num_rows > 0){
                        echo'<div class="card-body">';
                        while ($row = mysqli_fetch_array($sql)){
                            $noidung = $row["noidung"];
                            $noidung = filter_var($noidung, FILTER_SANITIZE_STRING);
                            $a = "SELECT LEFT('$noidung', 256) as tomtat";
                            $res = $conn->query($a);
                            $content = mysqli_fetch_array($res);
                            echo'<a href="'.$home.'/bai-viet/'.$row["slug_bv"].'.html" class="list-group-item list-group-item-action">
                                <p><b>'.$row["tenbaiviet"].'</b></p>
                                <p>'.$content["tomtat"].'...</p>
                                </a>';
                        }
                        echo'</div>';
                    }
                    ?>
                </div>
            </div>
            </div>