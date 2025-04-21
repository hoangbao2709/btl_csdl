<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cellphones";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die(json_encode(["success" => false, "message" => "Kết nối thất bại: " . $conn->connect_error]));
}

header('Access-Control-Allow-Origin: http://localhost:3000');
header('Content-Type: application/json; charset=utf-8');
$conn->set_charset("utf8");

$inventory = mysqli_real_escape_string($conn, $_POST["inventory"]);
$id = mysqli_real_escape_string($conn, $_POST["id"]);
$name = mysqli_real_escape_string($conn, $_POST["name"]);
$gia_goc = mysqli_real_escape_string($conn, $_POST["gia_goc"]);
$giam_gia = mysqli_real_escape_string($conn, $_POST["giam_gia"]);
$gia = intval($gia_goc * (1 - ($giam_gia / 100)));
$description = mysqli_real_escape_string($conn, $_POST["description"]);
$trong_luong = mysqli_real_escape_string($conn, $_POST["trong_luong"]);
$company = mysqli_real_escape_string($conn, $_POST["company"]);

$response = [];

// Using INSERT ... ON DUPLICATE KEY UPDATE
$sql = "INSERT INTO trang_chu (id, name, gia_goc, gia, giam_gia, description, trong_luong, Status, company) 
        VALUES (?, ?, ?, ?, ?, ?, ?, 'Active', ?) 
        ON DUPLICATE KEY UPDATE 
        name = VALUES(name), 
        gia_goc = VALUES(gia_goc), 
        gia = VALUES(gia), 
        giam_gia = VALUES(giam_gia), 
        description = VALUES(description), 
        trong_luong = VALUES(trong_luong), 
        Status = 'Active', 
        company = VALUES(company)";

$stmt = $conn->prepare($sql);
$stmt->bind_param("ssssssss", $id, $name, $gia_goc, $gia, $giam_gia, $description, $trong_luong, $company);

if ($stmt->execute()) {
    $response["success"] = true;
    $response["message"] = "Dữ liệu đã được cập nhật hoặc thêm thành công.";
} else {
    $response["success"] = false;
    $response["message"] = "Lỗi khi cập nhật dữ liệu: " . $stmt->error;
    echo json_encode($response);
    $conn->close();
    exit;
}
$stmt->close();

// Similar logic for other tables
$tables = [
    "am_thanh",
    "dien_thoai_taplet",
    "dong_ho_camera",
    "do_gia_dung",
    "laptop",
    "pc_man_hinh_may_in",
    "phu_kien",
    "tivi",
];

foreach ($tables as $table) {
    if (isset($_POST[$table])) {
        $sql = "INSERT INTO " . strtolower($table) . " (id, name, gia_goc, gia, giam_gia, description, trong_luong, Status, company) 
                VALUES (?, ?, ?, ?, ?, ?, ?, 'Active', ?) 
                ON DUPLICATE KEY UPDATE 
                name = VALUES(name), 
                gia_goc = VALUES(gia_goc), 
                gia = VALUES(gia), 
                giam_gia = VALUES(giam_gia), 
                description = VALUES(description), 
                trong_luong = VALUES(trong_luong), 
                Status = 'Active', 
                company = VALUES(company)";

        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ssssssss", $id, $name, $gia_goc, $gia, $giam_gia, $description, $trong_luong, $company);

        if (!$stmt->execute()) {
            $response["success"] = false;
            $response["message"] = "Lỗi khi cập nhật bảng $table: " . $stmt->error;
            echo json_encode($response);
            $conn->close();
            exit;
        }
        $stmt->close();
    }
}

// Rest of your code for handling file uploads and directory management

$response["message"] = "Tất cả dữ liệu đã được xử lý thành công.";
echo json_encode($response);
$conn->close();
?>