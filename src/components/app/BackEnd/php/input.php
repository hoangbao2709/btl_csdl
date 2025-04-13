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

$sql = "INSERT INTO trang_chu (id, name, gia_goc, gia, giam_gia, description, trong_luong, Page, Status, company) 
        VALUES ('$id', '$name', '$gia_goc', '$gia', '$giam_gia', '$description', '$trong_luong', 'trang_chu', 'Active', '$company')";

$response = [];
if ($conn->query($sql) === TRUE) {
    $response["success"] = true;
    $response["message"] = "Dữ liệu đã được thêm thành công.";
} else {
    $response["success"] = false;
    $response["message"] = "Lỗi khi thêm dữ liệu: " . $conn->error;
    echo json_encode($response);
    $conn->close();
    exit;
}

foreach ($tables as $table) {
    if (isset($_POST[$table])) {
        $sql = "INSERT INTO " . strtolower($table) . "(id, name, gia_goc, gia, giam_gia, description, trong_luong, Page, Status, company) 
                VALUES ('$id', '$name', '$gia_goc', '$gia', '$giam_gia', '$description', '$trong_luong', 'trang_chu', 'Active', '$company')";

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
    'am_thanh' => './images/Am_thanh/' . $id . '/',
    'dien_thoai_taplet' => './images/Dien_thoai_Taplet/' . $id . '/',
    'dong_ho_camera' => './images/Do_gia_dung/' . $id . '/',
    'do_gia_dung' => './images/Dong_ho_Camera/' . $id . '/',
    'laptop' => './images/Laptop/' . $id . '/',
    'pc_man_hinh_may_in' => './images/PC_man_hinh_May_in/' . $id . '/',
    'phu_kien' => './images/Phu_kien/' . $id . '/',
    'tivi' => './images/Tivi/' . $id . '/',
    'trang_chu' => './images/Trang_Chu/' . $id . '/'
];

$countName = 0;

if (isset($_FILES['file'])) {
    $test = 1;
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