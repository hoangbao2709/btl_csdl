<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
error_reporting(E_ALL);
ini_set('display_errors', 1);

include './uploads/Dbconnect.php';
$objDb = new DbConnect();
$conn = $objDb->connect();

// Retrieve username and password from GET parameters
$username = isset($_GET['username']) ? $_GET['username'] : null;
$password = isset($_GET['password']) ? $_GET['password'] : null;

if ($username && $password) {
    // Prepare and execute the SQL query to fetch the hashed password
    $sql = "SELECT password FROM account WHERE email = :username OR phone = :username";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':username', $username, PDO::PARAM_STR);
    $stmt->execute();
    
    // Check if the user exists
    if ($stmt->rowCount() > 0) {
        $hashedPassword = $stmt->fetchColumn();

        // Verify the password
        if (password_verify($password, $hashedPassword)) {
            echo json_encode(["success" => true, "message" => "Đăng nhập thành công!"]);
        } else {
            echo json_encode(["success" => false, "message" => "Mật khẩu không chính xác."]);
        }
    } else {
        echo json_encode(["success" => false, "message" => "Email hoặc số điện thoại không tồn tại."]);
    }
} else {
    echo json_encode(["success" => false, "message" => "Thiếu thông tin cần thiết."]);
}

$conn = null;
?>