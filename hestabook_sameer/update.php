<?php
error_reporting(E_ALL);
require "connection.php";
session_start();
$name=$_POST["name"];
$pass=$_POST["password"];
$desc=$_POST["description"];
$addr=$_POST["address"];
$email=$_SESSION["mail"];
$qry="update user set name='$name',address='$addr' ,password='$pass', description='$desc' where email='$email';";
if($conn->query($qry)===TRUE){
	echo "row updated";
	header("location:connect.php");
}
?>
