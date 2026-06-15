<?php
// koneksi/database.php

// 1. Paksa PHP buat nampilin error biar gak muncul layar putih polos kalau typo!
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// 2. Konfigurasi Database Lu
$host     = "localhost";
$username = "root";
$password = ""; // Kosongin aja kalau pake XAMPP bawaan default
$database = "db_latihan_pbo_ti1C"; // Udah pake nama DB lu yang bener, jier

try {
    // 3. Bangun koneksi pake PDO (PHP Data Objects) biar OOP banget
    $db = new PDO("mysql:host=$host;dbname=$database", $username, $password);
    
    // Set error mode PDO ke Exception biar gampang dilacak kalau query-nya error
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Pancingan teks biar lu tau kalau ini udah berhasil konek
    // Note: Kalau nanti udah fix jalan, baris echo di bawah ini bisa lu hapus/komentarin jier
    echo "<div class='alert alert-success m-2' role='alert'>Koneksi database aman jaya, sukses nyambung ke db_latihan_pbo_ti1C!</div>";

} catch (PDOException $e) {
    // Kalau gagal konek, langsung berhentiin skrip dan kasih tau error-nya apa
    die("<div class='alert alert-danger m-2' role='alert'>Koneksi database gagal jier: " . $e->getMessage() . "</div>");
}