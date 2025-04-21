<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
error_reporting(E_ALL);
ini_set('display_errors', 1);

include 'DbConnect.php';
$objDb = new DbConnect();
$conn = $objDb->connect();
$currentPage = $_SERVER['REQUEST_URI'];

$url = isset($_GET['id']) ? $_GET['id'] : null;
$sl = isset($_GET['sl']) ? $_GET['sl'] : null;
$phone = isset($_GET['phone']) ? $_GET['phone'] : null;

if ($url === null) {
    echo json_encode(['error' => 'ID parameter is missing']);
    exit;
}

$sql = "SELECT * FROM trang_chu WHERE id = :id";
$stmt = $conn->prepare($sql);
$stmt->bindParam(':id', $url, PDO::PARAM_STR); 
$stmt->execute();
$users = $stmt->fetchAll(PDO::FETCH_ASSOC);

if (empty($users)) {
    echo json_encode(['error' => 'No product found for the given ID']);
    exit;
}

$product = $users[0];

$checkSql = "SELECT * FROM store WHERE id = :id AND phone = :phone";
$checkStmt = $conn->prepare($checkSql);
$checkStmt->bindParam(':id', $product['id'], PDO::PARAM_INT);
$checkStmt->bindParam(':phone', $phone, PDO::PARAM_STR);
$checkStmt->execute();
$existingProduct = $checkStmt->fetch(PDO::FETCH_ASSOC);

if ($existingProduct) {
    $updateSql = "UPDATE store SET so_luong = :sl WHERE id = :id AND phone = :phone";
    $updateStmt = $conn->prepare($updateSql);
    $updateStmt->bindParam(':id', $product['id'], PDO::PARAM_INT);
    $updateStmt->bindParam(':sl', $sl, PDO::PARAM_INT);
    $updateStmt->bindParam(':phone', $phone, PDO::PARAM_STR);
    $updateStmt->execute();
} else {
    $insertSql = "INSERT INTO store (id, name, gia_goc, gia, giam_gia, description, trong_luong, Page, Status, company, so_luong, phone) 
                  VALUES (:id, :name, :gia_goc, :gia, :giam_gia, :description, :trong_luong, 'trang_chu', 'Active', :company, :sl, :phone)";
    $insertStmt = $conn->prepare($insertSql);
    $insertStmt->bindParam(':id', $product['id'], PDO::PARAM_INT);
    $insertStmt->bindParam(':name', $product['name'], PDO::PARAM_STR);
    $insertStmt->bindParam(':gia_goc', $product['gia_goc'], PDO::PARAM_STR);
    $insertStmt->bindParam(':gia', $product['gia'], PDO::PARAM_STR);
    $insertStmt->bindParam(':giam_gia', $product['giam_gia'], PDO::PARAM_STR);
    $insertStmt->bindParam(':description', $product['description'], PDO::PARAM_STR);
    $insertStmt->bindParam(':trong_luong', $product['trong_luong'], PDO::PARAM_STR);
    $insertStmt->bindParam(':company', $product['company'], PDO::PARAM_STR);
    $insertStmt->bindParam(':sl', $sl, PDO::PARAM_INT);
    $insertStmt->bindParam(':phone', $phone, PDO::PARAM_STR);
    $insertStmt->execute();
}

$conn = null; 

echo json_encode(['success' => true, 'data' => $users]); 
?>