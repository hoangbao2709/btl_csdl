<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
error_reporting(E_ALL);
ini_set('display_errors', 1);

include './uploads/Dbconnect.php';
$objDb = new DbConnect();
$conn = $objDb->connect();
session_start();

$username = isset($_GET['username']) ? trim($_GET['username']) : null;
$password = isset($_GET['password']) ? $_GET['password'] : null;
$response = [];
if ($username && $password) {
    $sql = "SELECT password, name, phone FROM account WHERE email = :username OR phone = :username";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':username', $username, PDO::PARAM_STR);
    $stmt->execute();
    
    if ($stmt->rowCount() > 0) {
        $userData = $stmt->fetch(PDO::FETCH_ASSOC);
        $hashedPassword = $userData['password'];
        $name = $userData['name']; // Changed from phone to name
        
        if (password_verify($password, $hashedPassword)) {
            session_regenerate_id(true);
            $_SESSION["user_id"] = $userData['phone']; // Store phone as user ID
            $_SESSION["user_name"] = $userData['name']; // Store name
            
            $response["success"] = true;
            $response["message"] = "Đăng nhập thành công!";
            $response["name"] = $name;
            
        } else {
            echo json_encode(["success" => false, "message" => "Mật khẩu không chính xác."]);
        }
    } else {
        echo json_encode(["success" => false, "message" => "Email hoặc số điện thoại không tồn tại."]);
    }
} else {
    $response["success"] = false;
    $response["message"] = "Thiếu thông tin cần thiết.";
}

$conn = null;

if (isset($_SESSION["user_id"])) {
    $response["user_id"] = $_SESSION["user_id"];
} else {
    $response["error"] = "User not logged in.";
}

echo json_encode($response);
?>