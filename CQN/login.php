<?php require("../include/core.php"); ?>
<link rel="stylesheet" href="/blog/Bootstrap/css/bootstrap.min.css">
<style>
    *{
        margin: 0;
        padding: 0;
    }
    body{
    background: #f5f5f5;
    width: 100%;
    height: 100%;
}
.form-login{
    width:  500px;
    background:  #ffffff;
    border-radius:  3px;
    box-shadow:  1px 5px 5px rgb(0,0,0,0.15);
    position:  relative;
    top: 20%;
    transform: translateY(-50px);
    left: 40%;
    transform: translateX(-50px);
    z-index: 2;
    padding: 30px;
    }
.form-login h3 {
    background:  #f5f5f5;
    width:  100%;
    padding:  10px 12px;
    text-align:  center;
    color:  #212121;
}
.nen-mo{
    width: 100%;
    height: 100%;
    background: #69686870;
    position: fixed;
    top: 0px;
    left: 0px;
}
.form-group{
    padding: 10px 0;
}
.error{
    color: red;
    font-size: small;
}
.error:before{
    content: "*";
}
@media screen and (max-width: 767px) {
    .form-login{
        width: 100%;
        left: 0;
        transform: translateX(0);
        top: 0;
    }
    .nen-mo{
        visibility: hidden;
    }
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Đăng Nhập | Josh CQN</title>

<div class="nen-mo"></div>
<div class="form-login">
    <h3>Admin Panel</h3>
    <?php
        if (isset($_SESSION['users'])) {
            echo '<script language="javascript">window.location="../blog/admin/";</script>';
        }
    ?>    
    <form action="d56b699830e77ba53855679cb1d252da.login.josh.cqn" method="POST">
        <div class="form-group">
            <label for="username">Username/Email:</label>
            <input type="text" class="form-control" name="username"/>
        </div>        
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" class="form-control" name="password"/>
        </div>      
        <div class="form-group">
            <input type="submit" class="btn btn-primary" name ="dangnhap" value="Login to Admin Panel">
        </div>
        <?php
            if (isset($_POST["dangnhap"])) {
                //Xử Lí Đăng Nhập
                //Lấy thông tin đăng nhập
                $username = addslashes($_POST['username']);
                $username = filter_var($username, FILTER_SANITIZE_STRING);
		        $password = addslashes($_POST['password']);
                $password = filter_var($password, FILTER_SANITIZE_STRING);
                $pass_md5 = md5($password);
                if(!$username || !$password){
                    echo'<div class="error">Vui lòng điền đầy đủ thông tin</div>';
                }else{
                    //Kiểm tra tên đăng nhập
                    $check_username = "SELECT * FROM cqn_user WHERE tendangnhap = '$username' OR email = '$username'";
                    $result = $conn->query($check_username);
                    $user = $result->fetch_assoc();
                        if ($result->num_rows > 0) {
                            if($pass_md5!=$user["matkhau"]){
                                echo'<div class="error">Mật khẩu không chính xác</div>';
                            }
                            else{
                                $_SESSION['users'] = $username;
                                $_SESSION['id'] = $user['user_id'];
                                echo'<script language="javascript">window.location="dashboard";</script>';
                            }
                        }
                        else{
                            echo'<div class="error">Tên đăng nhập không tồn tại</div>';
                        }
                    }
                }
            ?>

    </form>
</div>