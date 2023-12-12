<?php
	session_start();
	include 'includes/conn.php';

	if(isset($_POST['login'])){
		$voter = $_POST['voter'];
		$password = $_POST['password'];

		
		if(isset($_POST['login']) =='voters'){
			$sql = "SELECT * FROM voters WHERE voters_id = '$voter'";
			$query = $conn->query($sql);
			$_SESSION['voters'] = $voter;	
		}

		if($query->num_rows < 1){
			$_SESSION['error'] = 'Incorrect voter ID or password';
		}
		else{
			$row = $query->fetch_assoc();	
			if(password_verify($password, $row['password'])){
				$_SESSION['voter'] = $row['id'];
			}
			else{
				$_SESSION['error'] = 'Incorrect password';
			}
		}

		if($query->num_rows > 0){
			//$row = $query->fetch_assoc();
			if ($row['votetypeID'] == 1) {
				header('location: student_union_election.php'); //student union election view
				$_SESSION['voter']; 
			}
			else
			if ($row['votetypeID'] == 2) {
				header('location: student_departmental_election.php'); //student departmental election view
				$_SESSION['voter'];
			} 
			else
			if ($row['votetypeID'] == 3) {
				header('location: student_college_election.php'); // student college election view 
				$_SESSION['voter'];
			}
		}
		else{ 
			// Voter not found
			echo "<script>alert('Student Voter does not exist!');
			window.location='index.php';
			</script>";

		}

	}

	else{
		$_SESSION['error'] = 'Input voter credentials first';
	}

   //header('location: index.php');

?>


