<?php 
error_reporting(E_ALL);
ini_set('display_errors', 1); 

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cellphones";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die(json_encode(["success" => false, "message" => "Kết nối thất bại: " . $conn->connect_error]));
}

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    echo json_encode(["success" => false, "message" => "Invalid request method."]);
    exit;
}

if (!isset($_POST["name"], $_POST["phone"], $_POST["email"], $_POST["birthdate"], $_POST["password"], $_POST["confirmPassword"], $_POST["studentStatus"])) {
    echo json_encode(["success" => false, "message" => "Thiếu thông tin cần thiết."]);
    exit;
}

$name = mysqli_real_escape_string($conn, $_POST["name"]);
$phone = mysqli_real_escape_string($conn, $_POST["phone"]);
$email = mysqli_real_escape_string($conn, $_POST["email"]);
$birthdate = mysqli_real_escape_string($conn, $_POST["birthdate"]);
$password = mysqli_real_escape_string($conn, $_POST["password"]);
$confirmPassword = mysqli_real_escape_string($conn, $_POST["confirmPassword"]);
$studentStatus = mysqli_real_escape_string($conn, $_POST["studentStatus"]);

if ($password !== $confirmPassword) {
    echo json_encode(["success" => false, "message" => "Mật khẩu không khớp."]);
    exit;
}

$hashedPassword = password_hash($password, PASSWORD_DEFAULT);

$sql = "INSERT INTO account (name, phone, email, birthdate, password, isStudent) VALUES (?, ?, ?, ?, ?, ?)";
$stmt = $conn->prepare($sql);

if ($stmt === false) {
    die(json_encode(["success" => false, "message" => "SQL Prepare Error: " . $conn->error]));
}

$stmt->bind_param("ssssss", $name, $phone, $email, $birthdate, $hashedPassword, $studentStatus);

if ($stmt->execute()) {
    $response = ["success" => true, "message" => "Đăng ký thành công!"];
} else {
    $response = ["success" => false, "message" => "Lỗi khi đăng ký: " . $stmt->error];
}

$stmt->close();
$conn->close();
echo json_encode($response);
?>