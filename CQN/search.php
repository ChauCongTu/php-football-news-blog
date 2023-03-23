    <?PHP 
    require('../include/header.php');
    ?>
    <body>
        <div class="frame container">
            <div class="rmenu">Josh CQN</div>       
        <?php
            if (!isset($_GET["q"])) {
                echo'<title>Tìm Kiếm</title>';
                echo'
                <form action="" method="GET">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" name="q" placeholder="Nhập từ khóa">
                        <button class="btn btn-success" type="submit"><i class="fas fa-search"></i></button> 
                    </div>
                </form>
                ';
                echo'<div class="alert alert-danger">Bạn chưa nhập từ khóa</div>';
            } 
            else if(empty($_GET["q"])){
                echo'<title>Tìm Kiếm</title>';
                echo'
                <form action="" method="GET">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" name="q" placeholder="Nhập từ khóa">
                        <button class="btn btn-success" type="submit"><i class="fas fa-search"></i></button> 
                    </div>
                </form>
                ';
                echo'<div class="alert alert-danger">Bạn chưa nhập từ khóa</div>';
            }
            else{
                $q = addslashes($_GET["q"]);
                $q = filter_var($q, FILTER_SANITIZE_STRING);
                echo'<title>Tìm Kiếm: '.$q.'</title>';    
                $sql = "SELECT * FROM cqn_baiviet, cqn_user, cqn_category WHERE cqn_baiviet.user_id = cqn_user.user_id AND cqn_baiviet.category_id = cqn_category.category_id AND tenbaiviet LIKE '%$q%'";
                $result = $conn->query($sql);
                if ($result->num_rows > 0) {
                    echo'<div class="list-group">
                            <form action="" method="GET">
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="q" value="'.$q.'" placeholder="Nhập từ khóa">
                                    <button class="btn btn-success" type="submit"><i class="fas fa-search"></i></button>  
                                </div>
                            </form>
                            <div class="alert alert-success">&#10140; Đã tìm thấy <b>'.$result->num_rows.'</b> kết quả tìm kiếm cho: "'.$q.'"</div>';
                    while($row = $result->fetch_assoc()) {
                        $id_bv = $row["post_id"];
                        $noidung = $row["noidung"];
                        $tenbv = $row["tenbaiviet"];
                        $tenbv = str_replace( ''.strtoupper($q).'', '<mark>'.strtoupper($q).'</mark>', $tenbv );
                        $noidung = filter_var($noidung, FILTER_SANITIZE_STRING);
                        $noidung = str_replace( ''.strtoupper($q).'', '<mark>'.strtoupper($q).'</mark>', $noidung );
                        $a = "SELECT LEFT('$noidung', 400) as tomtat";
                        $res = $conn->query($a);
                        $content = mysqli_fetch_array($res);
                        $sql_date = $conn->query("SELECT YEAR(post_date) as NAM, MONTH(post_date) as THANG, DAY(post_date) as NGAY FROM cqn_baiviet WHERE post_id = '$id_bv'");
                        $date = mysqli_fetch_array($sql_date);
                        echo'<a href="'.$home.'/bai-viet/'.$row["slug_bv"].'.html" class="list-group-item list-group-item-action">
                                <b>'.$tenbv.'</b>
                                <span class="badge float-end text-muted"><i class="fas fa-calendar-alt text-muted"></i> '.$date["NGAY"].'/'.$date["THANG"].'/'.$date["NAM"].'</span>
                                <br>
                                <small>'.$content["tomtat"].'<span style="letter-spacing:1px">...</small>
                            </a>';
                    }
                }else{
                    echo'<form action="" method="GET">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="q" value="'.$q.'" placeholder="Nhập từ khóa">
                                <button class="btn btn-success" type="submit"><i class="fas fa-search"></i></button> 
                            </div>
                        </form>';
                        echo'<div class="alert alert-danger">Không tìm thấy kết quả phù hợp</div>';
                }
            }
        ?>  
        </div> 
    </body>
    <?php require('../include/end.php') ?>
</html>