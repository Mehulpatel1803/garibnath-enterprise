<?php
include 'garibnath_db.php';

$name = $_POST['name'];
$v_qty = $_POST['v_qty'];
$g_qty = $_POST['g_qty'];
$rate = $_POST['rate'];

$sql = "INSERT INTO o_motar (name, v_qty, g_qty, rate) VALUES ('$name', '$v_qty', '$g_qty', '$rate')";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
header('Location: o_motar.php');
?>
