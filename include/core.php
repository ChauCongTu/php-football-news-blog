<?PHP
//CORE FILE BY CHAUCONGTU
//COPYRIGHTS 2022 JOSH - CQN
//CONNECT TO DATABASE
require_once('db.php');
//START SESSION
@session_start();
//GET SETTING DATA FROM DATABASE 
$setting_query = "SELECT * FROM cqn_setting";
$setting_result = mysqli_query($conn, $setting_query) or die( mysqli_error($conn));
$set = mysqli_fetch_array($setting_result); 
$home = $set['home_url'];
$baotri = $set['trangthai'];
//GET HOME DATA FROM DATABASE 
$home_page = "SELECT * FROM cqn_home";
$page = mysqli_query($conn, $home_page) or die(mysqli_error($conn));
$c = mysqli_fetch_array($page);
$copy = $c['copyrights'];
$tieude = $c['tieude'];
$gioithieu = $c['gioithieu'];
$logo = $c['logo'];
//GET USER DATA FROM DATABASE, GET USER BY $user[]
if (isset($_SESSION['id'])) {
    $user_query = "SELECT * FROM cqn_user WHERE user_id=".$_SESSION['id']."";
    $user_result = mysqli_query($conn, $user_query) or die( mysqli_error($conn));
    $user = mysqli_fetch_array($user_result);
}
//CALL TO FUNCTION
require_once('function.php');
?>
