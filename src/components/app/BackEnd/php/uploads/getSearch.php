<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
error_reporting(E_ALL);
ini_set('display_errors', 1);

include 'DbConnect.php';
$objDb = new DbConnect();
$conn = $objDb->connect();

$variable = isset($_GET['variable']) ? $_GET['variable'] : null;
$table = isset($_GET['url']) ? $_GET['url'] : null;

$table = preg_replace('/[^a-zA-Z0-9_]/', '', $table);

if ($variable && $table) {
    $sql = "SELECT * FROM $table WHERE name LIKE :variable"; 
    $stmt = $conn->prepare($sql);
    $stmt->bindValue(':variable', '%' . $variable . '%'); 
    $stmt->execute();
    $users = $stmt->fetchAll(PDO::FETCH_ASSOC);

    if ($users) {
        echo json_encode($users);
    } else {
        echo json_encode(['message' => 'No records found']);
    }
} else {
    echo json_encode(['message' => 'Invalid input']);
}

$conn = null;
?>