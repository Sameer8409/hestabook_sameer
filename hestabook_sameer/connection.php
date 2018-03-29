<?php
$password="admin";
$username="root";
$server="localhost";
$dbname="hestabook_sameer";
$conn = new mysqli($server, $username, $password, $dbname);
if ($conn->connect_error) 
	{
    	die("Connection failed: " . $conn->connect_error);
	} 
else
	{
		
	}
?>