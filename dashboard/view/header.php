<?php
    if(!isset($_SESSION["id"])){
        echo'<script>window.location="'.$home.'/d56b699830e77ba53855679cb1d252da.login.josh.cqn"</script>';
        exit;
    }
    else{
        $id = $_SESSION["id"];
        $sql_u = mysqli_query($conn, "SELECT * FROM cqn_user WHERE user_id = '$id'");
        $user = mysqli_fetch_array($sql_u);
        $sql_contact = "SELECT * FROM cqn_contact WHERE daxem = 0";
        $contact = $conn -> query($sql_contact);
        $sql_message = "SELECT * FROM cqn_message WHERE to_id = '$id' AND daxem = 0";
        $message = $conn -> query($sql_message);
    }
echo'
<!DOCTYPE html>' .
"\n" . '<html lang="en">' .
"\n" . '<head>' .
"\n" . '    <meta charset="utf-8">' .
"\n" . '    <meta http-equiv="X-UA-Compatible" content="IE=edge">' .
"\n" . '    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">' .
"\n" . '    <meta name="description" content="">' .
"\n" . '    <meta name="author" content="">' .
"\n" . '    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
        integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />' .
"\n" . '    <title>'.$title.'</title>' .
"\n" . '    <script src="https://cdn.ckeditor.com/4.19.1/standard/ckeditor.js"></script>' .
"\n" . '    <link href="'.$home.'/dashboard/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">' .
"\n" . '    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">' .
"\n" . '    <link href="'.$home.'/dashboard/css/sb-admin-2.min.css" rel="stylesheet">' .
"\n" . '    <link href="'.$home.'/dashboard/css/chaucongtu.css" rel="stylesheet">' .
"\n" . '</head>' .
"\n" . '<body id="page-top">' .
"\n" . '<div id="wrapper">' .
"\n" . '    <ul class="navbar-nav bg-gradient-success sidebar sidebar-dark accordion" id="accordionSidebar">' .
"\n" . '        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="'.$home.'/dashboard/">' .
"\n" . '            <div class="sidebar-brand-icon rotate-n-15">' .
"\n" . '                <i class="fas fa-tools"></i>' .
"\n" . '            </div>' .
"\n" . '            <div class="sidebar-brand-text mx-3">ADMIN PANEL<sup></sup></div>' .
"\n" . '        </a>' .
"\n" . '        <hr class="sidebar-divider my-0">' .
"\n" . '        <li class="nav-item active">' .
"\n" . '            <a class="nav-link" href="'.$home.'/dashboard/">' .
"\n" . '                <i class="fas fa-fw fa-tachometer-alt"></i>' .
"\n" . '                <span>Bảng điều khiển</span></a>' .
"\n" . '        </li>' .
"\n" . '        <hr class="sidebar-divider">' .
"\n" . '        <div class="sidebar-heading">' .
"\n" . '            Danh mục diễn đàn' .
"\n" . '        </div>' .
"\n" . '        <li class="nav-item">' .
"\n" . '            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">' .
"\n" . '                <i class="fa fa-folder"></i>' .
"\n" . '                <span>Chuyên mục</span>' .
"\n" . '            </a>' .
"\n" . '            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">' .
"\n" . '                <div class="bg-white py-2 collapse-inner rounded">' .
"\n" . '                    <a class="collapse-item" href="'.$home.'/dashboard/quan-ly-chuyen-muc">Quản lý chuyên mục</a>' .
"\n" . '                    <a class="collapse-item" href="'.$home.'/dashboard/them-chuyen-muc">Thêm chuyên mục</a>' .
"\n" . '                </div>' .
"\n" . '            </div>' .
"\n" . '        </li>' .
"\n" . '        <li class="nav-item">' .
"\n" . '            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"' .
"\n" . '                aria-expanded="true" aria-controls="collapseUtilities">' .
"\n" . '                <i class="fa fa-file"></i>' .
"\n" . '                <span>Bài viết</span>' .
"\n" . '            </a>' .
"\n" . '            <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"' .
"\n" . '                data-parent="#accordionSidebar">' .
"\n" . '                <div class="bg-white py-2 collapse-inner rounded">' .
"\n" . '                    <a class="collapse-item" href="'.$home.'/dashboard/them-bai-viet">Viết Bài</a>' .
"\n" . '                    <a class="collapse-item" href="'.$home.'/dashboard/quan-ly-bai-viet">Quản lý bài viết</a>' .
"\n" . '                    <a class="collapse-item" href="'.$home.'/dashboard/duyet-bai-viet">Kiểm duyệt bài viết</a>' .
"\n" . '                </div>' .
"\n" . '            </div>' .
"\n" . '        </li>' .
"\n" . '        <hr class="sidebar-divider">' .
"\n" . '        <div class="sidebar-heading">' .
"\n" . '            Cài đặt' .
"\n" . '        </div>' .
"\n" . '        <li class="nav-item">' .
"\n" . '            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"' .
"\n" . '                aria-expanded="true" aria-controls="collapsePages">' .
"\n" . '                <i class="fa fa-user"></i>' .
"\n" . '                <span>Người dùng</span>' .
"\n" . '            </a>' .
"\n" . '            <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">' .
"\n" . '                <div class="bg-white py-2 collapse-inner rounded">' .
"\n" . '                    <a class="collapse-item" href="'.$home.'/dashboard/quan-ly-nguoi-dung">Quản lý người dùng</a>' .
"\n" . '                    <a class="collapse-item" href="'.$home.'/dashboard/them-nguoi-dung">Thêm người dùng</a>' .
"\n" . '                </div>' .
"\n" . '            </div>' .
"\n" . '        </li>';
echo'
            <li class="nav-item">
                <a class="nav-link" href="'.$home.'/dashboard/cai-dat-web"">
                    <i class="fa fa-gear"></i>
                    <span>Cài đặt trang Web</span></a>';
?>
            </li>
        </ul>
        <div id="content-wrapper" class="d-flex flex-column">
            <div id="content">
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>
                    <!-- Tìm kiếm -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small"
                                placeholder="Nhập từ khóa..." aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Nhập từ khóa..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>
                        <!-- Tin nhắn -->
                        <li class="nav-item dropdown no-arrow mx-1">
                        <?php echo'<a class="nav-link" href="'.$home.'/dashboard/chatting">';?>
                            <i class="fas fa-comments" style="font-size:20px"></i>
                                <!-- Số lượng tin nhắn -->
                    <?php   if($message->num_rows > 0)
                                echo'<span class="badge badge-danger badge-counter">'.$message->num_rows.'</span>';?>
                            </a>
                        </li>
                        <li class="nav-item dropdown no-arrow mx-1">
                        <?php echo'<a class="nav-link" href="'.$home.'/dashboard/tin-nhan">';?>
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Số lượng tin nhắn -->
                    <?php   if($contact->num_rows > 0)
                                echo'<span class="badge badge-danger badge-counter">'.$contact->num_rows.'</span>';?>
                            </a>
                        </li>
                        <!-- Hiển thị người dùng -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <?php echo'<span class="mr-2 d-none d-lg-inline text-danger small">'.$user["tenhienthi"].'</span>';?>
                                <img class="img-profile rounded-circle" src="/blog/dashboard/img/user.png">
                            </a>
                            <!-- Tùy chọn người dùng -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                        <?php echo'<a class="dropdown-item" href="'.$home.'/dashboard/thong-tin-nguoi-dung/'.$_SESSION["id"].'">';?>
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Trang cá nhân
                                </a>
                        <?php echo'<a class="dropdown-item" href="'.$home.'/dashboard/nguoi-dung/chinh-sua/'.$_SESSION["id"].'">';?>
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Chỉnh sửa
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Đăng xuất
                                </a>
                            </div>
                        </li>
                    </ul>
                </nav>
                <!-- End of Topbar -->