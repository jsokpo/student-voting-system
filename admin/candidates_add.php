<?php
	include 'includes/session.php';

	if(isset($_POST['add'])){
		$candidate_id = $_POST['candidate_id'];
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$position = $_POST['position'];
		$college = $_POST['college'];
		$level = $_POST['level'];
		$sex = $_POST['sex'];
		$type = $_POST['type'];
		$filename = $_FILES['photo']['name'];
		if(!empty($filename)){
			move_uploaded_file($_FILES['photo']['tmp_name'], '../images/'.$filename);	
		}

		$sql = "INSERT INTO candidates (position_id, candidate_id, firstname, lastname, photo, candidatecollegeID, candidatelevelID, candidatesexID, election_typeID) VALUES ('$position', '$candidate_id', '$firstname', '$lastname', '$filename', '$college', '$level', '$sex', '$type')";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Candidate added successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}

	}
	else{
		$_SESSION['error'] = 'Fill up add form first';
	}

	header('location: candidates.php');
?>