<?php
include 'includes/conn.php';
session_start();

if(isset($_GET['votetypeID'])){
		$votecat = $_GET['votetypeID'];
		$result = $conn->query("SELECT * FROM voters WHERE votetypeID='$votecat'"); 
		$row = $result->fetch_row();
	}
	else{
		header('location: index.php');
		exit();
	}
?>