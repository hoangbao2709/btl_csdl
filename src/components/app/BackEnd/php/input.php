<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cellphones";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die(json_encode(["success" => false, "message" => "Kết nối thất bại: " . $conn->connect_error]));
}

header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json; charset=utf-8');
error_reporting(E_ALL);
ini_set('display_errors', 1);
$conn->set_charset("utf8");

$inventory = mysqli_real_escape_string($conn, $_POST["inventory"]);
$name = mysqli_real_escape_string($conn, $_POST["name"]);
$gia_goc = mysqli_real_escape_string($conn, $_POST["gia_goc"]);
$giam_gia = mysqli_real_escape_string($conn, $_POST["giam_gia"]);
$gia = intval($gia_goc - (($gia_goc * $giam_gia) / 100));
$description = mysqli_real_escape_string($conn, $_POST["description"]);
$trong_luong = mysqli_real_escape_string($conn, $_POST["trong_luong"]);
$status = "Active";
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

$sql = "INSERT INTO trang_chu (inventory, name, gia_goc, gia, giam_gia, description, trong_luong, Page, Status, company) 
        VALUES ('$inventory', '$name', '$gia_goc', '$gia', '$giam_gia', '$description', '$trong_luong', 'trang_chu', '$status', '$company')";

$response = [];
try {
    if ($conn->query($sql) === TRUE) {
        $last_id = $conn->insert_id; 
        $response["success"] = true;
        $response["message"] = "Dữ liệu đã được thêm thành công.";
        $response["id"] = $last_id; 
    } else {
        $response["success"] = false;
        $response["message"] = "Không thể thêm dữ liệu vào bảng.";
    }
} catch (mysqli_sql_exception $e) {
    $response["success"] = false;
    $response["message"] = "Lỗi khi thêm dữ liệu: " . $e->getMessage();
    echo json_encode($response);
    $conn->close();
    exit;
}

foreach ($tables as $table) {
    if (isset($_POST[$table])) {
        $sql = "INSERT INTO " . strtolower($table) . " (id, inventory, name, gia_goc, gia, giam_gia, description, trong_luong, Page, Status, company) 
                VALUES ('$last_id', '$inventory', '$name', '$gia_goc', '$gia', '$giam_gia', '$description', '$trong_luong', '$table', '$status', '$company')";

        if ($conn->query($sql) !== TRUE) {
            $response["success"] = false;
            $response["message"] = "Lỗi khi thêm vào bảng $table: " . $conn->error;
            echo json_encode($response);
            $conn->close();
            exit;
        }
    }
}

$upload_dirs = [
    'am_thanh' => './images/am_thanh/' . $last_id . '/',
    'dien_thoai_taplet' => './images/dien_thoai_taplet/' . $last_id . '/',
    'dong_ho_camera' => './images/dong_ho_camera/' . $last_id . '/',
    'do_gia_dung' => './images/do_gia_dung/' . $last_id . '/',
    'laptop' => './images/laptop/' . $last_id . '/',
    'pc_man_hinh_may_in' => './images/pc_man_hinh_may_in/' . $last_id . '/',
    'phu_kien' => './images/phu_kien/' . $last_id . '/',
    'tivi' => './images/tivi/' . $last_id . '/',
    'trang_chu' => './images/trang_chu/' . $last_id . '/'
];

if (!file_exists($upload_dirs['trang_chu'])) {
    mkdir($upload_dirs['trang_chu'], 0777, true);
}

$countName = 0;

if (isset($_FILES['file'])) {
    $test = 1;
    foreach ($_FILES['file']['name'] as $key => $name) {
        $temp_path = $_FILES['file']['tmp_name'][$key];
        $fileInfo = pathinfo($name);
        $filename = $last_id . '_' . basename($countName++) . '_.' . $fileInfo['extension'];

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