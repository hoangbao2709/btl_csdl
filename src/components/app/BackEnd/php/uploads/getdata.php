<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
error_reporting(E_ALL);
ini_set('display_errors', 1);

include 'DbConnect.php';
$objDb = new DbConnect();
$conn = $objDb->connect();

$variable = isset($_GET['variable']) ? $_GET['variable'] : null;
$url = isset($_GET['url']) ? $_GET['url'] : null;

if ($url) {
    if ($variable !== "All") {
        $sql = "SELECT * FROM $url WHERE Status = :status ORDER BY id ASC;";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':status', $variable, PDO::PARAM_STR); 
        $stmt->execute();
        $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
    } else {
        $sql = "SELECT * FROM $url ORDER BY id ASC;";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    if ($users) {
        echo json_encode($users);
    } else {
        echo json_encode(['message' => 'No records found']);
    }
} else {
    echo json_encode(['message' => 'URL parameter is missing.']);
}

$conn = null;
?>
