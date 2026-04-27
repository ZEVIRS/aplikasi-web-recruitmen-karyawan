<?php
// config.php - Database Configuration
$host = "localhost";
$user = "root";
$pass = "root123";
$db = "sdm_db";

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die("Koneksi gagal: " . mysqli_connect_error());
}

// Set charset
mysqli_set_charset($conn, "utf8");
?>  