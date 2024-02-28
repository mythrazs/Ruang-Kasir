<?php
session_start();

// Connect to the database
include 'home/koneksi.php';

// Get the submitted username and password
$username = $_POST['username'];
$password = md5($_POST['password']); // Hash the password using MD5 (not recommended for production)

// Check if the Staff
$query = "SELECT * FROM tb_staff WHERE username='$username' AND password='$password' LIMIT 1";
$result = mysqli_query($koneksi, $query);

if (mysqli_num_rows($result) == 1) {
    // Regular user login successful
    $data = mysqli_fetch_assoc($result);

    $_SESSION['staff_type'] = 'staff';
    $_SESSION['staff'] = $data['id_staff'];
    $_SESSION['nama'] = $data['nama_staff'];
    $_SESSION['jabatan'] = $data['jabatan_staff'];

    echo '<script language="javascript" type="text/javascript">
        alert("Anda Berhasil Masuk, Selamat Datang '.$_SESSION['nama'].'!");</script>';
    echo "<meta http-equiv='refresh' content='0; url=home/index.php'>";
    exit();
}

// If login failed, redirect back to the login page with an error message
header("Location: index.php?error=1");
exit();
?>