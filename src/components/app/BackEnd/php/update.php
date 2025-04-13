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

$id = mysqli_real_escape_string($conn, $_POST["id"]);
$name = mysqli_real_escape_string($conn, $_POST["name"]);
$gia_goc = mysqli_real_escape_string($conn, $_POST["gia_goc"]);
$giam_gia = mysqli_real_escape_string($conn, $_POST["giam_gia"]);
$gia = intval($gia_goc * (1 - ($giam_gia / 100)));
$description = mysqli_real_escape_string($conn, $_POST["description"]);
$trong_luong = mysqli_real_escape_string($conn, $_POST["trong_luong"]);
$company = mysqli_real_escape_string($conn, $_POST["company"]);

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

$response = [];

// Update main product table
$sql = "UPDATE trang_chu SET name = ?, gia_goc = ?, gia = ?, giam_gia = ?, description = ?, trong_luong = ?, Status = 'Active', company = ? WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ssssssss", $name, $gia_goc, $gia, $giam_gia, $description, $trong_luong, $company, $id);

if ($stmt->execute()) {
    $response["success"] = true;
    $response["message"] = "Dữ liệu đã được cập nhật thành công.";
} else {
    $response["success"] = false;
    $response["message"] = "Lỗi khi cập nhật dữ liệu: " . $stmt->error;
    echo json_encode($response);
    $conn->close();
    exit;
}
$stmt->close();

// Update other tables
foreach ($tables as $table) {
    if (isset($_POST[$table])) {
        $sql = "UPDATE " . strtolower($table) . " SET name = ?, gia_goc = ?, gia = ?, giam_gia = ?, description = ?, trong_luong = ?, Status = 'Active', company = ? WHERE id = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ssssssss", $name, $gia_goc, $gia, $giam_gia, $description, $trong_luong, $company, $id);

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

$upload_dirs = [
    'am_thanh' => './images/am_thanh/' . $id . '/',
    'dien_thoai_taplet' => './images/dien_thoai_taplet/' . $id . '/',
    'dong_ho_camera' => './images/dong_ho_camera/' . $id . '/',
    'do_gia_dung' => './images/do_gia_dung/' . $id . '/',
    'laptop' => './images/laptop/' . $id . '/',
    'pc_man_hinh_may_in' => './images/pc_man_hinh_may_in/' . $id . '/',
    'phu_kien' => './images/phu_kien/' . $id . '/',
    'tivi' => './images/tivi/' . $id . '/',
    'trang_chu' => './images/trang_chu/' . $id . '/'
];

// Function to delete existing directory
function deleteDirectory($dir) {
    if (!is_dir($dir)) {
        return false;
    }
    $files = array_diff(scandir($dir), ['.', '..']);
    foreach ($files as $file) {
        $filePath = "$dir/$file";
        if (is_dir($filePath)) {
            deleteDirectory($filePath);
        } else {
            unlink($filePath);
        }
    }
    return rmdir($dir);
}

// Delete existing image directories
foreach ($upload_dirs as $dir) {
    if (is_dir($dir)) {
        deleteDirectory($dir);
    }
}

$countName = 0;

if (isset($_FILES['file'])) {
    foreach ($_FILES['file']['name'] as $key => $name) {
        $temp_path = $_FILES['file']['tmp_name'][$key];
        $fileInfo = pathinfo($name);
        $filename = $id . '_' . basename($countName++) . '_.' . $fileInfo['extension'];

        if (!file_exists($upload_dirs['trang_chu'])) {
            mkdir($upload_dirs['trang_chu'], 0777, true);
        }

        $target_path = $upload_dirs['trang_chu'] . $filename;

        if (move_uploaded_file($temp_path, $target_path)) {
            foreach ($tables as $table) {
                if (isset($_POST[$table])) {
                    $dir = $upload_dirs[strtolower($table)];
                    if (!file_exists($dir)) {
                        mkdir($dir, 0777, true);
                    }
                    copy($target_path, $dir . $filename);
                }
            }
        } else {
            $response["success"] = false;
            $response["message"] = "Lỗi khi tải lên file: " . $name;
            echo json_encode($response);
            $conn->close();
            exit;
        }
    }
}

$response["message"] = "Tất cả dữ liệu đã được xử lý thành công.";
echo json_encode($response);
$conn->close();
?>