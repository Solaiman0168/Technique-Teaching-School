<?php include 'include/header.php';?>
<?php $table_heading = "Youtube Link";?>
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
   
<?php
        $tbl_name="youtube_link";       //your table name
        $targetpage = "youtube_link.php";   //your file name  (the name of this file)
         $user_no = 1;//$_SESSION['user']['USER_NO'];
         $CURR_TIME = date('Y-m-d :H:i:s'); 
        $mgs = '';


     if(isset($_POST['update']))
    {
            $youtube_link_id = $_POST['youtube_link_id'];

            $link1 = trim($_POST['link1']);
            $link2 =  trim($_POST['link2']);
             
             $sql = "UPDATE $tbl_name SET `link1` = '$link1' ,`link2` = '$link2' ,`is_updated` = 1, `updated_by` = $user_no ,`updated_on` = '$CURR_TIME' WHERE youtube_link_id = 1 ";
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
        $sql = "SELECT * FROM $tbl_name WHERE `youtube_link_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
     <form class="cmxform form-horizontal " id="signupForm" method="post" action=""  >
     <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-6 col-md-offset-2 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            <div>
                <input type="hidden" name="youtube_link_id" value="<?=$result['youtube_link_id']?>" />
            </div>
        </div>
        <div class="form-group ">
            <label for="bn_title" class="control-label col-lg-2">Link 1</label>
            <div class="col-lg-6">
                <input type="text" style="height: 50px;" class="form-control" name="link1" value="<?=$result['link1']?>">
            </div>
                
            
        </div>

         <div class="form-group ">
           <label for="en_title" class="control-label col-lg-2">Link 2</label>
            <div class="col-lg-6">
                 <input type="text" style="height: 50px;" class="form-control" name="link2" value="<?=$result['link2']?>">

            </div>
        </div>
        
       <div class="form-group">
            <div class="col-lg-offset-2 col-md-offset-2 col-sm-offset-3 col-lg-5">
              <input type="submit" class="btn btn-primary" name="update" value="Update" />
                
            </div>
        </div>
    </form>
                                
<?php include 'include/body-bottom.php';?>
<?php include 'include/footer.php';?>
<script type="text/javascript" src="../js/"></script>