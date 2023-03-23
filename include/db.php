<?php
//CODE BY CHAUCONGTU
//CONFIG BY CHAUCONGTU
//CHAUCONGTU IS JOSH CQN
//JOSH CQN IS XoxVP 2015
$hostname = 'localhost:3306';               //Điền IP host vào đây (thường là localhost)
$username = 'root';                         //Điền username database
$password = '';                             //Điền password database
$dbname = "cqn_blog";                    //Điền tên database          
$conn = mysqli_connect($hostname, $username, $password,$dbname);
if (!$conn) {
    die('Không thể kết nối: ' . mysqli_error($conn));
    exit();
}
?>