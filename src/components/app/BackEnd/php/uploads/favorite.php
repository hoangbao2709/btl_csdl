<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
error_reporting(E_ALL);
ini_set('display_errors', 1);
session_start();

include 'DbConnect.php';
$objDb = new DbConnect();
$conn = $objDb->connect();
$currentPage = $_SERVER['REQUEST_URI'];

$url = isset($_GET['id']) ? $_GET['id'] : null;
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

$insertSql = "INSERT INTO favorite (id, name, gia_goc, gia, giam_gia, description, trong_luong, Page, Status, company, phone) 
              VALUES (:id, :name, :gia_goc, :gia, :giam_gia, :description, :trong_luong, 'trang_chu', 'Active', :company, :phone)";

$insertStmt = $conn->prepare($insertSql);

$insertStmt->bindParam(':id', $product['id'], PDO::PARAM_INT);
$insertStmt->bindParam(':name', $product['name'], PDO::PARAM_STR);
$insertStmt->bindParam(':gia_goc', $product['gia_goc'], PDO::PARAM_STR);
$insertStmt->bindParam(':gia', $product['gia'], PDO::PARAM_STR);
$insertStmt->bindParam(':giam_gia', $product['giam_gia'], PDO::PARAM_STR);
$insertStmt->bindParam(':description', $product['description'], PDO::PARAM_STR);
$insertStmt->bindParam(':trong_luong', $product['trong_luong'], PDO::PARAM_STR);
$insertStmt->bindParam(':company', $product['company'], PDO::PARAM_STR);
$insertStmt->bindParam(':phone', $phone, PDO::PARAM_STR);

$insertStmt->execute();

$conn = null; 

echo json_encode(['success' => true, 'message' => 'Product added to favorites', 'product' => $product]); 
?>