<?php
	include 'includes/session.php';

	if(isset($_POST['add'])){
		$voters_id = $_POST['voters_id'];
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$college = $_POST['college'];
		$level = $_POST['level'];
		$sex = $_POST['sex'];
		$type = $_POST['type'];
		$password = password_hash($_POST['password'], PASSWORD_DEFAULT);
		$filename = $_FILES['photo']['name'];
		if(!empty($filename)){
			move_uploaded_file($_FILES['photo']['tmp_name'], '../images/'.$filename);	
		}

		$sql = "INSERT INTO voters (voters_id, password, firstname, lastname, votercollegeID, voterlevelID, votersexID, votetypeID, photo) VALUES ('$voters_id', '$password', '$firstname', '$lastname', '$college', '$level', '$sex','$type', '$filename')";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Voter added successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}

	}
	else{
		$_SESSION['error'] = 'Fill up add form first';
	}

	header('location: voters.php');
?>