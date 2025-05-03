<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cellphones";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die(json_encode(["success" => false, "message" => "Connection failed: " . $conn->connect_error]));
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
    $response["message"] = "Data updated or added successfully.";
} else {
    $response["success"] = false;
    $response["message"] = "Error updating data: " . $stmt->error;
    echo json_encode($response);
    $conn->close();
    exit;
}
$stmt->close();

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

// Update other tables
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
            $response["message"] = "Error updating table $table: " . $stmt->error;
            echo json_encode($response);
            $conn->close();
            exit;
        }
        $stmt->close();
    }
}

// Define upload directories
$upload_dirs = [
    'trang_chu' => './images/trang_chu/' . $id . '/',
];

foreach ($tables as $table) {
    $upload_dirs[strtolower($table)] = './images/' . strtolower($table) . '/' . $id . '/';
}

// Function to delete a directory
function deleteDirectory($dir) {
    if (!is_dir($dir)) return false;

    $files = array_diff(scandir($dir), ['.', '..']);
    foreach ($files as $file) {
        $filePath = "$dir/$file";
        is_dir($filePath) ? deleteDirectory($filePath) : unlink($filePath);
    }
    return rmdir($dir);
}

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
        $filename = $id . '_' . $countName++ . '_.' . $fileInfo['extension']; // Keep your specified filename format

        if (!file_exists($upload_dirs['trang_chu'])) {
            mkdir($upload_dirs['trang_chu'], 0777, true);
        }

        $target_path = $upload_dirs['trang_chu'] . $filename;
        $target_path = explode(separator: '?', $target_path)[0];

        error_log(message: print_r( $target_path, true));

        // Move uploaded file to 'trang_chu' directory
        if (move_uploaded_file($temp_path, $target_path)) {
            // Copy the file to other directories based on the provided tables
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
            $response["message"] = "Error uploading file: " . $name;
            echo json_encode($response);
            $conn->close();
            exit;
        }
    }
}

$response["message"] = "All data processed successfully.";
echo json_encode($response);
$conn->close();
?>