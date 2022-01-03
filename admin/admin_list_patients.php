<?php
 session_start();
if(!isset($_SESSION['user'])){
header("location:../index.php");
}
include("header.php");
// $conn = new mysqli("localhost", "root", "", "medease");
include_once '../database.php';

$uid=$_SESSION['user'];
$query = "SELECT * FROM patients"; 
$result = mysqli_query($conn,$query);

// if(isset($_POST['delete_id'])){ 
// 		$id = $_POST['delete_id'];
// 		$query = "delete from bookings where ID = $id";		
// 		mysqli_query($conn, $query);
// 		 echo '<script>window.location.href="booking.php";</script>';
// 		}
?>
                <div class="row">
                    <div class="col-md-12">
                     <h2 style="color:black">Registered Patients</h2>  
						<br>					 
                        <!-- <a  href="../logout.php" class="btn " style="background-color:#a01f62;color:white;"><i class="fa fa-plus"></i> New Booking</a> -->
						<br><br><br>
                    </div>
                </div>   
				
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading"  style="background-color:#a01f62;color:white;">
                             Booking List
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Patient ID</th>
                                            <th>Patient Name</th>
                                            <th>Contact</th>
											<th>User ID</th>
                                            <th>Sex</th>
											<th>Actions</th>
                                        </tr>
                                    </thead>
									<tfoot>
                                        <tr>
                                            <th>Patient ID</th>
                                            <th>Patient Name</th>
                                            <th>Contact</th>
											<th>User ID</th>
											<th>Sex</th>
											<th>Actions</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
										<?php
					while($row = mysqli_fetch_array($result)){
                            $agora_channel = $row['agora_channel'];
                            $agora_token = $row['agora_token'];
                            $appID = "7d0e17b354854bf18e63ae6204e0f395";
                            // $uid = 2882341273;

							echo "<tr><td >" . $row['id'] . "</td>
							<td>" . $row['name'] . "</td><td>" . $row['phone'] . "</td><td >" . $row['email'] . "</td>
							<td >" . $row['sex'] . "</td>
							<td><div class='field-actions'>
                            <div class='btn-group'>
							<form action='admin_list_booking.php' method='post'>
							  <button   name='delete_id' style='background-color:#a01f62;color:white;'  value='" . $row['id'] . "'   type='submit'>Delete</button>
							</from></div></div></td></tr>"; 
						}
				?>
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>
                <!-- /. ROW  -->
      
               
    </div>
            <?php
include("footer.php");
?>