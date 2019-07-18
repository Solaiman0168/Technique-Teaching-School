<?php include 'include/header.php';?>
<?php $table_heading = "শিরোনাম: ৫";?>
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
   
<?php
        $tbl_name="home_heading5";       //your table name
        $targetpage = "home_heading5.php";   //your file name  (the name of this file)
    $user_no = 1;//$_SESSION['user']['USER_NO'];
    $CURR_TIME = date('Y-m-d :H:i:s'); 
        $mgs = '';


     if(isset($_POST['update']))
    {
            $bn_title = trim($_POST['bn_title']);
            $en_title = trim($_POST['en_title']);
             $home_heading5_id = $_POST['home_heading5_id'];

            $SQL = "SELECT * FROM $tbl_name WHERE  `bn_title` ='$bn_title' AND`en_title` ='$en_title' AND `home_heading5_id` != '$home_heading5_id'";
            $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
            if($COUNT < 1): 
                   
             $sql = "UPDATE $tbl_name SET `bn_title` = '$bn_title' ,`en_title` = '$en_title' ,`is_updated` = 1, `updated_by` = $user_no ,`updated_on` = '$CURR_TIME' WHERE home_heading5_id = 1";
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
            else:
                $mgs = "Duplicate Entry!";
                $class = "red_color alert alert-warning alert-dismissable col-md-6 ";
            endif;
        
        }
    
?>
  
     <?php
        $sql = "SELECT * FROM $tbl_name WHERE `home_heading5_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
     <form class="cmxform form-horizontal " id="signupForm" method="post" action=""  enctype="multipart/form-data">
     <div class="form-group ">
            <div class=" col-md-6 col-md-offset-1 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            <div>
                <input type="hidden" name="home_heading5_id" value="<?=$result['home_heading5_id']?>" />
            </div>
        </div>
        <div class="form-group ">
            <label for="bn_title" class="control-label col-lg-2">শিরোনাম </label>
            <div class="col-lg-4">
                <textarea  class=" form-control" id="" name="bn_title" type="text" required style="height: 200px; width: 400p;"><?=$result['bn_title']?></textarea>
            </div>
            <label for="en_title" class="control-label col-lg-2">Title </label>
            <div class="col-lg-4">
                <textarea  class=" form-control" id="" name="en_title" type="text" required style="height: 200px; width: 400p;"><?=$result['en_title']?></textarea>
            </div>
        </div>
        
       <div class="form-group">
            <div class="col-lg-offset-3 col-md-offset-3 col-sm-offset-3 col-xs-offset-3 col-lg-5">
              <input type="submit" class="btn btn-primary" name="update" value="Update" />
                
            </div>
        </div>
    </form>
                                
<?php include 'include/body-bottom.php';?>
<?php include 'include/footer.php';?>
<script type="text/javascript" src="../js/"></script>