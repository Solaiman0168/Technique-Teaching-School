<?php include 'include/header.php';?>
<?php $table_heading = "ভর্তি প্রক্রিয়া ";?>
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
   
<?php
        $tbl_name="home_admission_process";       //your table name
        $targetpage = "home_admission_process.php";   //your file name  (the name of this file)
    $user_no = 1;//$_SESSION['user']['USER_NO'];
    $CURR_TIME = date('Y-m-d :H:i:s'); 
        $mgs = '';


    if(isset($_POST['update']))
    {
             $home_admission_process_id = $_POST['home_admission_process_id'];
            $bn_details =  mysqli_real_escape_string($con,trim($_POST['bn_details']));
            $en_details =  mysqli_real_escape_string($con,trim($_POST['en_details']));
            
            $sql = "UPDATE $tbl_name SET  `bn_details` = '$bn_details' ,`en_details` = '$en_details' ,`is_updated` = 1, `updated_by` = $user_no ,`updated_on` = '$CURR_TIME' WHERE home_admission_process_id = 1";
                $result = mysqli_query($con,$sql);
                if($result)
                {
                    $mgs = "Data Update Successfully!";
                    $class = "green_color alert alert-success  alert-dismissable col-md-8";

                }
                else
                {
                    $mgs = "Data Update Fail!";
                    $class = "red_color alert alert-warning alert-dismissable col-md-8 ";
                }
           
        }
    
?>
  
     <?php
        $sql = "SELECT * FROM $tbl_name WHERE `home_admission_process_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
     <form class="cmxform form-horizontal " id="signupForm" method="post" action=""  enctype="multipart/form-data">
     <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-8 col-md-offset-2 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            <div>
                <input type="hidden" name="home_admission_process_id" value="<?=$result['home_admission_process_id']?>" />
            </div>
        </div>
         <div class="form-group ">
            <label for="bn_details" class="control-label col-lg-2">বর্ণনা </label>
            <div class="col-lg-8">
                <textarea  class=" form-control" id="" name="bn_details"  type="text"  ><?=$result['bn_details']?></textarea>
            </div>
           
        </div>
        <div class="form-group ">
           <label for="en_details" class="control-label col-lg-2">Details </label>
            <div class="col-lg-8">
                <textarea  class=" form-control" id="" name="en_details"  type="text"  ><?=$result['en_details']?></textarea>
            </div>
        </div>

        
       <div class="form-group">
            <div class="col-lg-offset-2 col-md-offset-3 col-sm-offset-3 col-xs-offset-3 col-lg-5">
              <input type="submit" class="btn btn-primary" name="update" value="Update" />
                
            </div>
        </div>
    </form>
                                
<?php include 'include/body-bottom.php';?>
<?php include 'include/footer.php';?>
<script type="text/javascript" src="../js/"></script>