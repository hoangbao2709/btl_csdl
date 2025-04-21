<?php 
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true'); // Allow credentials for CORS
header('Content-Type: application/json');
error_reporting(E_ALL);
ini_set('display_errors', 1);
session_start();

$response = [];

// Check if the user is logged in by checking the session variable
if (isset($_SESSION["user_id"])) {
    $response["user_id"] = $_SESSION["user_id"];
} else {
    $response["error"] = "User not logged in.";
}

// Output the response as JSON
echo json_encode($response);
?>