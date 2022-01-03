<?php
 session_start();
if(!isset($_SESSION['user'])){
header("location:../index.php");
}
include("header.php");
// $conn = new mysqli("localhost", "root", "", "medease");
include_once '../database.php';

$uid=$_SESSION['user'];
$query = "SELECT * FROM doctors"; 
$result = mysqli_query($conn,$query);

if(isset($_POST['delete_id'])){ 
		$id = $_POST['delete_id'];
		$query = "delete from bookings where ID = $id";		
		mysqli_query($conn, $query);
		 echo '<script>window.location.href="booking.php";</script>';
		}
?>
                <div class="row">
                    <div class="col-md-12">
                     <h2 style="color:black">All Registered Doctors</h2>  
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
                             Doctors List
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>Fees</th>
                                            <th>Address</th>
                                            <th>Contact</th>
											<th>Special</th>
											<th>Time</th>
											<th>City</th>
											<th>Sex</th>
											<!-- <th>Actions</th> -->
                                        </tr>
                                    </thead>
									<tfoot>
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>Fees</th>
                                            <th>Address</th>
                                            <th>Contact</th>
											<th>Special</th>
											<th>Time</th>
											<th>City</th>
											<th>Sex</th>
											<!-- <th>Actions</th> -->
                                        </tr>
                                    </tfoot>
                                    <tbody>
									<?php
					while($row = mysqli_fetch_array($result)){   //Creates a loop to loop through results
							echo "<tr><td >" . $row['id'] . "</td><td >" . $row['name'] . "</td>
							<td>" . $row['fees'] . "</td><td>" . $row['address'] . "</td><td >" . $row['contact'] . "</td>
							<td >" . $row['special'] . "</td><td >" . $row['time'] . "</td><td >" . $row['city'] . "</td><td >" . $row['sex'] . "</td>
							</tr>"; 
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