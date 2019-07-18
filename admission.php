<?php include('technique_school/config/db_connection.php');?>

<?php
	$tbl_name="online_admission";
	$mgs = '';
	$class="";
	 if(isset($_POST['submit']))
    {
            $students_name =$_POST['students_name'];
            $date_of_birth =$_POST['date_of_birth'];
            $gender =$_POST['gender'];
            $class =$_POST['class'];
            $fathers_name =$_POST['fathers_name'];
            $mothers_name =$_POST['mothers_name'];
            $mobile_no =$_POST['mobile_no'];
            $present_address =$_POST['present_address'];

            
               $SQL = "SELECT * FROM $tbl_name WHERE `is_deleted` = 0  AND `students_name` = '$students_name' AND `date_of_birth` = '$date_of_birth' AND `gender` = '$gender' AND `class` = '$class' AND `fathers_name` = '$fathers_name' AND `mothers_name` = '$mothers_name' AND `mobile_no` = '$mobile_no' AND `present_address` = '$present_address'";

                $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
                    
                    if($COUNT < 1): 
                    	if ($_FILES["image_url"]["error"] > 0) {
		                    $image_url = "No Notice Uploaded";

		                } else {
		                    $image_url = time().$_FILES["image_url"]["name"];
		                    move_uploaded_file($_FILES["image_url"]["tmp_name"],"technique_school/soft/upload/" .$image_url);
		                } 
            $sql = "INSERT INTO $tbl_name SET `students_name` ='$students_name' , `date_of_birth` = '$date_of_birth' , `image_url` = '$image_url' , `gender` = '$gender' , `class` = '$class' , `fathers_name` = '$fathers_name' , `mothers_name` = '$mothers_name', `mobile_no` = '$mobile_no' , `present_address` = '$present_address'";
                            $result = mysqli_query($con,$sql);
                            if($result)
                            {
                                $mgs = "Your registration have been completed successfully!";
                                $class="green";
                            }
                            else
                            {
                                $mgs = "Registration failed";
                               	$class="red";
                            }
                        else:
                            $mgs = "Please enter your valid information!";
                            $class="red";
                        endif;
         
    }



?>





<!DOCTYPE html>
<html>
<head>
<title>টেকনিক টিচিং হোম</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Badge Signup Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/admission.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'><!--web font-->

<!-- //web font -->
<style >
	.green{color:	#fff;}
	.red{color: 	#8B0000;}
</style>
</head>
<body>
	<!-- main -->
	<div class="form-group <?=$class?>" style="margin:10px; " ><b><?=$mgs?></b></div>
            
            
        </div>
	<div class="w3layouts-main"> 
		<h1>Student Admission Form</h1>
		
		<div class="agilesign-form">  
			<div class="agileits-top">
				<form action="#" method="post" enctype="multipart/form-data">
					<h2>Student's Information</h2>
					<div class="styled-input w3ls-text">
						<input type="text" name="students_name" required=""/>
						<label> Student's Name</label>
						<span></span>
					</div>
					<div class="styled-input w3ls-text">
						<h3>Select Class</h3><br>
						<select name="class" style="width: 400px; height: 30px;border-radius: 5px;">
						<option>--Select--</option>
						  
						  <option value="Five">Five</option>
						  <option value="Six">Six</option>
						  <option value="Seven">Seven</option>
						  <option value="Eight">Eight</option>
						  <option value="Nine">Nine</option>
						  <option value="Ten">Ten</option>
						  <option value="Eleven">Eleven</option>
						  <option value="Twelve">Twelve</option>
						  
						</select>  
						<span></span>
					</div>
					<div class="styled-input w3ls-text">
						<label>Date of Birth</label>
						<input type="date" name="date_of_birth" required="" style="width: 400px; height: 30px;border-radius: 5px;margin-top: 50px;" />
						
						
					</div>
					
					
					<div class="styled-input w3ls-text">
						<h3>Select Gender</h3><br>
						<input  type="radio" name="gender" value="Male">Male<br>
						 <input type="radio" name="gender" value="Female"> Female<br>
						 
						
					</div>
					<div class="styled-input w3ls-text">
						<h3>Upload Student's Picture</h3> <br>
						<input type="file" name="image_url" required=""/>
						<span></span>
					</div>
					<h2>Contact Information</h2>
					<div class="styled-input w3ls-text">
						<input type="text" name="fathers_name" required=""/>
						<label>Father's Name</label>
						<span></span>
					</div>
					<div class="styled-input w3ls-text">
						<input type="text" name="mothers_name" required=""/>
						<label>Mother's Name</label>
						<span></span>
					</div>
					
					<div class="styled-input w3ls-text">
						<input type="text" name="mobile_no" required=""/>
						<label>Mobile No</label>
						<span></span>
					</div>

					<div class="styled-input w3ls-text">
						<input type="text" name="present_address" required=""/>
						<label>Present Address</label>
						<span></span>
					</div>
					
					
					
					
					<!--<div class="wthree-text">  
						<p>
							<input type="checkbox" id="brand" value="">
							<label for="brand"><span></span>I do hereby declared that the information given in this form is true, complete and accurate.</label>  
						</p>  
					</div>-->
					<div class="agileits-bottom"> 
						<input type="submit" value="Sign Up" name="submit"> 
					</div>	
				</form>
			</div> 
		</div>	
	</div>	
	<!-- //main -->

	<div class="copyright">
		<p>© 2017 Diganta Haatekhori School . All rights reserved | Design by <a href="http://bdsoft.biz" target="_blank">BDSoft IT Solutions</a></p>
	</div>
	
</body>
</html>