<?php
include 'garibnath_db.php';

$id = $_POST['id'];
$field = $_POST['field'];
$value = $_POST['value'];

$sql = "UPDATE dayfrem SET $field='$value' WHERE id=$id";

if ($conn->query($sql) === TRUE) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . $conn->error;
}

$conn->close();
?>
