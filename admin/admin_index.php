<?php
include("header.php");
?>
                <div class="row" >
                    <div class="col-md-12">
                     <h2 style="color:black;">Admin Dashboard</h2>   
                        <h5>System Details</h5>
                    </div>
                </div>              
                 <!-- /. ROW  -->
				 <hr>
                <div class="row" >
                <div class="col-md-6 col-sm-12 col-xs-12">
							<div class="panel panel-primary text-center no-boder " style="background-color:#a01f62;color:white">
								<div class="panel-body">
									<i class="fa fa-ticket fa-5x"></i>
									<h4><a href="admin_list_doctors.php">Total Doctors  </a></h4>
								</div>
                        
							</div>
                    </div>
                   <div class="col-md-6 col-sm-12 col-xs-12">
							<div class="panel panel-primary text-center no-boder" style="background-color:#a01f62;color:white">
								<div class="panel-body">
									<i class="fa fa-plus fa-5x"></i>
									<h4><a href="admin_list_patients.php" >Total Patients </a> </h4>
								</div>
                        
							</div>
                    </div>
                 
			</div>
                 <!-- /. ROW  -->
                <hr />                
              <div class="row" >
                    <div class="col-md-6 col-sm-12 col-xs-12">
							<div class="panel panel-primary text-center no-boder " style="background-color:#a01f62;color:white">
								<div class="panel-body">
									<i class="fa fa-user fa-5x"></i>
									<h4><a href="admin_list_booking.php" >All Bookings  </a></h4>
								</div>
                        
							</div>
                    </div>
					<div class="col-md-6 col-sm-12 col-xs-12">
							<div class="panel panel-primary text-center no-boder " style="background-color:#a01f62;color:white">
								<div class="panel-body">
									<i class="fa fa-gear fa-5x"></i>
									<h4><a href="setting.php" >Add New Settings </a> </h4>
								</div>
                        
							</div>
                    </div>
                </div>
                          
<?php
include("footer.php");
?>