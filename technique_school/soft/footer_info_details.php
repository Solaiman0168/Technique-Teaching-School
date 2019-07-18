<?php include 'include/header.php';?>
<?php $table_heading = "ফুটারের বিস্তারিত ";?>
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
   
<?php
        $tbl_name="footer_info_details";       //your table name
        $targetpage = "footer_info_details.php";   //your file name  (the name of this file)
    $user_no = 1;//$_SESSION['user']['USER_NO'];
    $CURR_TIME = date('Y-m-d :H:i:s'); 
        $mgs = '';

    if(isset($_POST['update']))
    {
            $company_name = trim($_POST['company_name']);
            $address =  trim($_POST['address']);
            $mobile =  trim($_POST['mobile']);
             $email = trim($_POST['email']);
            $copyright_year=trim($_POST['copyright_year']);
         

        $sql = "UPDATE $tbl_name SET `company_name` = '$company_name' ,`address` = '$address' ,`mobile` = '$mobile' ,`email`='$email', `copyright_year`='$copyright_year',`is_updated` = 1, `updated_by` = $user_no ,`updated_on` = '$CURR_TIME' WHERE footer_info_details_id =1 ";
                $result = mysqli_query($con,$sql);
                if($result)
                {
                    $mgs = "Data Update Successfully!";
                    $class = "green_color alert alert-success  alert-dismissable col-md-6";

                }
                else
                {
                    $mgs = "Data Update Fail!";
                    $class = "red_color alert alert-warning alert-dismissable col-md-6 ";
                }
           
    }
?>
  
    <?php
       $sql = "SELECT * FROM $tbl_name WHERE footer_info_details_id = 1";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
     <form class="cmxform form-horizontal " id="signupForm" method="post" action="">
     <div class="form-group ">
            <div class=" col-md-6 col-md-offset-1 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            <div>
                <input type="hidden" name="footer_info_details_id_id" value="<?=$result['footer_info_details_id_id']?>" />
            </div>
        </div>
      <div class="form-group ">
            <label for="company_name" class="control-label col-lg-3">Company Name </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="company_name" type="text" value="<?=$result['company_name']?>" required />
            </div>
        </div>
        <div class="form-group ">
            <label for="address" class="control-label col-lg-3">Address </label>
            <div class="col-lg-4">
                <textarea class=" form-control" id="" name="address" type="text" required style="height: 150px;width: 450px;"><?=$result['address']?></textarea>
            </div>
        </div>
        <div class="form-group ">
            <label for="mobile" class="control-label col-lg-3">Contact </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="mobile" type="text" value="<?=$result['mobile']?>" required />
            </div>
        </div>

        <div class="form-group ">
            <label for="email" class="control-label col-lg-3">Email </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="email" type="text" value="<?=$result['email']?>" required />
            </div>
        </div>

        <div class="form-group ">
            <label for="copyright_year" class="control-label col-lg-3">Copyright Year </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="copyright_year" type="text" value="<?=$result['copyright_year']?>" required />
            </div>
        </div>

     <div class="form-group">
            <div class="col-lg-offset-3 col-md-offset-3 col-sm-offset-3 col-xs-offset-3 col-lg-5">
              <input type="submit" class="btn btn-primary" name="update" value="Update" />
                
            </div>
        </div>
    </form>
   
  
    <!---main content end---->
                                
<?php include 'include/body-bottom.php';?>
<?php include 'include/footer.php';?>
<script type="text/javascript" src="../js/"></script>