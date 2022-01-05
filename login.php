<?php
// $conn = new mysqli("localhost", "root", "", "medease");
include_once './database.php';
if(isset($_POST['login'])){
$type = $_POST['type'];	
$email = $_POST['email'];
$pass = $_POST['pass'];	
if($type=="Doctor"){
		
		$sql = "SELECT * FROM doctors WHERE email = '$email' and pass = '$pass'";
      $result = mysqli_query($conn,$sql);
      $count=mysqli_num_rows($result);
      $getAdminType = mysqli_fetch_assoc(mysqli_query($conn, $sql));

      if($count >0) {
         session_start();
         $_SESSION['user'] = $email; 
         
         $_SESSION['doctor_type'] = $getAdminType['doctor_type'];
         // $_SESSION['doctor_type']
         // die($_SESSION['doctor_type']);
         header("location: admin/");
      }
}
	  else if ($type=="Patient"){
		 $sql = "SELECT email FROM patients WHERE email = '$email' and pass = '$pass'" or die('Error');
		$result = mysqli_query($conn,$sql);
		$count=mysqli_num_rows($result);
      if($count >0) {
         session_start();
         $_SESSION['user'] = $email;
         header("location: patient/index.php"); 
      }
	  }
	  else{
		  header("location: index.php"); 
      }
	  
	  
}	  

?>