<?php include 'include/header.php';?>
<?php $table_heading = "যে কারণে ভর্তি করবেন ";?>
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
   
<?php
        $tbl_name="home_heading4";       //your table name
        $targetpage = "home_heading4.php";   //your file name  (the name of this file)
    $user_no = 1;//$_SESSION['user']['USER_NO'];
    $CURR_TIME = date('Y-m-d :H:i:s'); 
        $mgs = '';


    if(isset($_POST['update']))
    {
            $bn_title =  mysqli_real_escape_string($con,trim($_POST['bn_title']));
            $en_title =  mysqli_real_escape_string($con,trim($_POST['en_title']));
             $home_heading4_id = $_POST['home_heading4_id'];

              if ($_FILES["image_url"]["error"] > 0) {
                    $image_url = $_POST['image_url'];
                    
                } else {
                    $image_url = time().$_FILES["image_url"]["name"];
                    move_uploaded_file($_FILES["image_url"]["tmp_name"],"upload/" . $image_url);
                }
                
                $sql = "UPDATE $tbl_name SET `bn_title` = '$bn_title' ,`en_title` = '$en_title' , `image_url` = '$image_url' ,`is_updated` = 1, `updated_by` = $user_no ,`updated_on` = '$CURR_TIME' WHERE home_heading4_id = 1";
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
        $sql = "SELECT * FROM $tbl_name WHERE `home_heading4_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
     <form class="cmxform form-horizontal " id="signupForm" method="post" action=""  enctype="multipart/form-data">
     <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-6 col-md-offset-2 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            <div>
                <input type="hidden" name="home_heading4_id" value="<?=$result['home_heading4_id']?>" />
            </div>
        </div>
        <div class="form-group ">
            <label for="bn_title" class="control-label col-lg-2">শিরোনাম </label>
            <div class="col-lg-8">
                <textarea  class=" form-control" id="" name="bn_title"   ><?=$result['bn_title']?></textarea>
            </div>
            
        </div>
         <div class="form-group ">
           <label for="en_title" class="control-label col-lg-2">Title </label>
            <div class="col-lg-8">
                <textarea  class=" form-control" id="" name="en_title"  ><?=$result['en_title']?></textarea>
            </div>
        </div>
        <div class="form-group ">
            <label for="image_url" class="control-label col-lg-2">ছবি </label>
            <div class="col-lg-4">
                <input  id="" name="image_url" type="file" />
                <img src="upload/<?=$result['image_url']?>" height="100" width="100"/> 
            </div>
           <div>
                <input type="hidden" name="image_url" value="<?=$result['image_url']?>" />
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