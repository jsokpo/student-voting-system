<?php
	include 'includes/session.php';

	$return = 'home.php';
	if(isset($_GET['return'])){
		$return = $_GET['return'];
	}

	if(isset($_POST['save'])){
		$date=$_POST['date'];
		$h= $_POST['h'];
		$m= $_POST['m'];
		$s= $_POST['s'];
		//updating the table
		$result = "UPDATE votetimer SET date='$date', h='$h', m='$m', s='$s' WHERE id=1";
        if($conn->query($result)){
				$_SESSION['success'] = 'voting timer updated successfully';
		
		}
		else{
				$_SESSION['error'] = $conn->error;
			}
	}
	else{
				$_SESSION['error'] = "Fill up the voting timer config form first";
	}

	header('location: '.$return);

?>