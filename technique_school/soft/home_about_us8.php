<?php include 'include/header.php';?>
<?php $table_heading = "আমাদের সম্পর্কে - ৮";?>
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
   
<?php
        $tbl_name="home_about_us8";       //your table name
        $targetpage = "home_about_us8.php";   //your file name  (the name of this file)
        $user_no = 1;//$_SESSION['user']['USER_NO'];
        $CURR_TIME = date('Y-m-d :H:i:s'); 
        $mgs = '';


    if(isset($_POST['update']))
    {
             $home_about_us8_id = $_POST['home_about_us8_id'];
            $bn_title =  mysqli_real_escape_string($con,trim($_POST['bn_title']));
            $en_title =  mysqli_real_escape_string($con,trim($_POST['en_title']));
            $bn_short_details =  mysqli_real_escape_string($con,trim($_POST['bn_short_details']));
            $en_short_details =  mysqli_real_escape_string($con,trim($_POST['en_short_details']));
            

         $sql = "UPDATE $tbl_name SET `bn_title` = '$bn_title' ,`bn_short_details` ='$bn_short_details',`bn_speech` ='$bn_short_details',`en_title` = '$en_title' ,`en_short_details` ='$en_short_details',`en_speech` ='$en_short_details',`is_updated` = 1, `updated_by` = $user_no ,`updated_on` = '$CURR_TIME' WHERE `home_about_us8_id` = 1";
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
        $sql = "SELECT * FROM $tbl_name WHERE `home_about_us8_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
     <form class="cmxform form-horizontal " id="signupForm" method="post" action=""  enctype="multipart/form-data">
     <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-6 col-md-offset-1 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            <div>
                <input type="hidden" name="home_about_us8_id" value="<?=$result['home_about_us8_id']?>" />
            </div>
        </div>
        <div class="form-group ">
            <label for="bn_title" class="control-label col-lg-2">শিরোনাম </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_title" type="text" value="<?=$result['bn_title']?>"  />
            </div>
            <label for="en_title" class="control-label col-lg-2">Title </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_title" type="text" value="<?=$result['en_title']?>" />
            </div>
        </div>
        <div class="form-group ">
            <label for="bn_short_details" class="control-label col-lg-2">বর্ণনা</label>
            <div class="col-lg-10">
                <textarea  class=" form-control" id="" name="bn_short_details" type="text" ><?=$result['bn_short_details']?></textarea>
            </div>
            
        </div>
         <div class="form-group ">
             <label for="en_short_details" class="control-label col-lg-2">Details </label>
            <div class="col-lg-10">
                <textarea  class=" form-control" id="" name="en_short_details" type="text" ><?=$result['en_short_details']?></textarea>
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