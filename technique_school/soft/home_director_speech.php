<?php include 'include/header.php';?>
<?php $table_heading = "পরিচালকের বক্তব্য";?>
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
   
<?php
        $tbl_name="principal_speech";       //your table name
        $targetpage = "home_director_speech.php";   //your file name  (the name of this file)
    $user_no = 1;//$_SESSION['user']['USER_NO'];
    $CURR_TIME = date('Y-m-d :H:i:s'); 
        $mgs = '';


    if(isset($_POST['update']))
    {
            $bn_title = trim($_POST['bn_title']);
            $principal_speech_id = $_POST['principal_speech_id'];
            $bn_principal_name = trim($_POST['bn_principal_name']);
            $bn_principal_designation = trim($_POST['bn_principal_designation']);
            $bn_short_speech =  mysqli_real_escape_string($con,trim($_POST['bn_short_speech']));
             $en_title = trim($_POST['en_title']);
            $en_principal_name = trim($_POST['en_principal_name']);
            $en_principal_designation = trim($_POST['en_principal_designation']);
            $en_short_speech =  mysqli_real_escape_string($con,trim($_POST['en_short_speech']));
            
            
                    if ($_FILES["image_url"]["error"] > 0) {
                                $image_url = $_POST['image_url'];
                                
                            } else {
                                $image_url = time().$_FILES["image_url"]["name"];
                                move_uploaded_file($_FILES["image_url"]["tmp_name"],"upload/" . $image_url);
                            }

           $sql = "UPDATE $tbl_name SET `bn_title` = '$bn_title' ,`bn_principal_name` = '$bn_principal_name' ,`bn_principal_designation` = '$bn_principal_designation' ,`bn_short_speech` = '$bn_short_speech' ,`bn_speech`='$bn_short_speech',`en_title` = '$en_title' ,`en_principal_name` = '$en_principal_name' ,`en_principal_designation` = '$en_principal_designation' ,`en_short_speech` = '$en_short_speech' ,`en_speech`='$en_short_speech', `image_url` = '$image_url',`is_updated` = 1, `updated_by` = $user_no ,`updated_on` = '$CURR_TIME' WHERE principal_speech_id = 1";
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
     $sql = "SELECT * FROM $tbl_name WHERE `principal_speech_id` = 1";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
     <form class="cmxform form-horizontal " id="signupForm" method="post" action=""  enctype="multipart/form-data">
     <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-8 col-md-offset-2 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            <div>
                <input type="hidden" name="principal_speech_id" value="<?=$result['principal_speech_id']?>" />
            </div>
        </div>
        <div class="form-group ">
            <label for="bn_title" class="control-label col-lg-2">টাইটেল </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_title" type="text" value="<?=$result['bn_title']?>"  />
            </div>
            <label for="en_title" class="control-label col-lg-2">Title </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_title" type="text" value="<?=$result['en_title']?>"  />
            </div>

        </div>
        <div class="form-group ">
            <label for="bn_principal_name" class="control-label col-lg-2">প্রধান শিক্ষকের নাম</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_principal_name" type="text" value="<?=$result['bn_principal_name']?>"/>
            </div>
            <label for="en_principal_name" class="control-label col-lg-2">Principal Name</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_principal_name" type="text" value="<?=$result['en_principal_name']?>"/>
            </div>
        </div>
         <div class="form-group ">
            <label for="bn_principal_designation" class="control-label col-lg-2">পদবী </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_principal_designation" type="text" value="<?=$result['bn_principal_designation']?>"  />
            </div>
            <label for="en_principal_designation" class="control-label col-lg-2">Designation </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_principal_designation" type="text" value="<?=$result['en_principal_designation']?>"  />
            </div>
        </div>
        <div class="form-group ">
            <label for="bn_short_speech" class="control-label col-lg-2">  বক্তব্য </label>
            <div class="col-lg-8">
                <textarea class=" form-control ckeditor" id="" name="bn_short_speech" type="text"   /> <?=$result['bn_short_speech']?></textarea>
            </div>
        </div>
        <div class="form-group ">
            <label for="en_short_speech" class="control-label col-lg-2"> Speech </label>
            <div class="col-lg-8">
                <textarea class=" form-control ckeditor" id="" name="en_short_speech" type="text"   /> <?=$result['en_short_speech']?></textarea>
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