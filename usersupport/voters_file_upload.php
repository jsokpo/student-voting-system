<?php
	include 'includes/session.php';
	include 'usersupport/voters_add.php';

	if(isset($_POST['upload'])){
		$filename = $_FILES['file']['name'];
		if(!empty($filename)){
			move_uploaded_file($_FILES['file']['tmp_name'], '../images/'.$filename);	
		}
		
		$sql = "INSERT INTO voters WHERE file = '$filename'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'File uploaded successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}

	}
	else{
		$_SESSION['error'] = 'Select voter to update photo first';
	}

	header('location: voters.php');
?>