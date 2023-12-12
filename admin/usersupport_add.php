<?php
	include 'includes/session.php';

	if(isset($_POST['add'])){
		$username = $_POST['username'];
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$password = password_hash($_POST['password'], PASSWORD_DEFAULT);
		$filename = $_FILES['photo']['name'];
		$created_on = date('Y-m-d H:i:s');
		if(!empty($filename)){
			move_uploaded_file($_FILES['photo']['tmp_name'], '../images/'.$filename);	
		}

		$sql = "INSERT INTO usersupport (username, password, firstname, lastname, photo, created_on) VALUES ('$username', '$password', '$firstname', '$lastname', '$filename', '$created_on')";
		if($conn->query($sql)){
			$_SESSION['success'] = 'usersupport staff added successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}

	}
	else{
		$_SESSION['error'] = 'Fill up add form first';
	}

	header('location: usersupport.php');
?>