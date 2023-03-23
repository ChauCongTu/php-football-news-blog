<?PHP
if (isset($_POST["add"])) {
    $name = addslashes($_POST['name']);
    $slug = create_slug($name);
    if(!$name){
        echo'<p class="error">Vui lòng điền đầy đủ thông tin!</span>';
    }
    else{
        $q_check ="SELECT * FROM cqn_category WHERE tenchuyenmuc = '$name'";
        $r_check = $conn -> query($q_check);
        if($r_check -> num_rows > 0){
            echo '<p class="error">Chuyên mục đã tồn tại!</p>';       
        }
        else{
            $sql = "INSERT INTO cqn_category (`tenchuyenmuc`, `slug_cm`) VALUES ('$name', '$slug')";
            if ($conn->query($sql) === TRUE) {
                echo'<p class="success">Thêm thành công!</p>';
                echo'<script>setTimeout(function(){
                    window.location=""
                }, 2000);</script>';
            }
        }           
    }
    if(isset($_POST["hide"])){
        $sql = "UPDATE cqn_category SET hide = 1 WHERE tenchuyenmuc = '$name'";
    }
}
if (isset($_POST["edit"])) {
    $name = addslashes($_POST['name']);
    $slug = create_slug($name);

    if(!$name){
        echo'<p class="error">Vui lòng điền đầy đủ thông tin!</p>';
    }
    else{
        $q_check ="SELECT * FROM cqn_category WHERE tenchuyenmuc = '$name'";
        $r_check = $conn -> query($q_check);
        if($r_check -> num_rows > 0){
            echo '<p class="error">Chuyên mục đã tồn tại!</p>';                  
        }
        else{
            $sql = "UPDATE cqn_category SET tenchuyenmuc = '$name', slug_cm = '$slug' WHERE category_id = '$id'";
            if ($conn->query($sql) === TRUE) {
                echo'<p class="success">Chỉnh sửa thành công!</p>';
                echo'<script>setTimeout(function(){
                    window.location=""
                }, 2000);</script>';
            }
        }             
    }
}
if(isset($_POST["delete"])){
    $del_post = "DELETE FROM cqn_baiviet WHERE category_id='$id'";
    $conn->query($del_post); 
    $del_category = "DELETE FROM cqn_category WHERE category_id='$id'";
    $conn->query($del_category);
    echo'<p class="success">Xóa thành công!</p>';
    echo'<script>setTimeout(function(){
                    window.location="'.$home.'/dashboard/quan-ly-chuyen-muc"
                }, 2000);</script>';
}
?>