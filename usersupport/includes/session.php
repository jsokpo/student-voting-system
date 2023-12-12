<?php
	session_start();
	include 'includes/conn.php';

	if(!isset($_SESSION['usersupport']) || trim($_SESSION['usersupport']) == ''){
		header('location: index.php');
	}

	$sql = "SELECT * FROM usersupport WHERE id = '".$_SESSION['usersupport']."'";
	$query = $conn->query($sql);
	$user = $query->fetch_assoc();
	
?>