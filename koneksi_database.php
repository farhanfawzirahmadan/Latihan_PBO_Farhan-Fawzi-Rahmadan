<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$host     = "localhost";
$username = "root";
$password = ""; 
// GANTI PAKE YANG INI BIAR CLOP SAMA DI MYSQL LU
$database = "db_latihan_pbo_ti1C"; 

try {
    $db = new PDO("mysql:host=$host;dbname=$database", $username, $password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Ini buat penanda aja kalau udah sukses, nanti bisa lu hapus
    echo "Koneksi Berhasil, Udah Konek ke db_latihan_pbo_ti1C!"; 
} catch (PDOException $e) {
    die("Koneksi database gagal: " . $e->getMessage());
}