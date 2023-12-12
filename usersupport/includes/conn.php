<?php
	$conn = new mysqli('localhost:3307', 'root', 'y72k5m?3~jd!', 'studentvotesystem');

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>