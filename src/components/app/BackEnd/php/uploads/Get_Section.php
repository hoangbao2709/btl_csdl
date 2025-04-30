<?php 
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true'); 
header('Content-Type: application/json');
error_reporting(E_ALL);
ini_set('display_errors', 1);
session_start();

$response = [];

if (isset($_SESSION["user_id"])) {
    $response["user_id"] = $_SESSION["user_id"];
} else {
    $response["error"] = "User not logged in.";
}

echo json_encode($response);
?>