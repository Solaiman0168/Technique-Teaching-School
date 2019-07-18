<?php include 'include/header.php';?>
<?php $table_heading = "সকল শিক্ষক-শিক্ষিকা ";?>
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
  
<?php
        $tbl_name="teacher_details";       //your table name
        $targetpage = "all_teachers_details.php";   //your file name  (the name of this file)
    $user_no = 1;//$_SESSION['user']['USER_NO'];
    $CURR_TIME = date('Y-m-d :H:i:s'); 
        $mgs = '';
    if(isset($_GET['delete']))
    {
        $ID = $_GET['delete'];
        $sql = "UPDATE $tbl_name SET `is_deleted` = 1 ,`deleted_by` = '$user_no', `deleted_on` = '$CURR_TIME' WHERE teacher_details_id = $ID";
        $result = mysqli_query($con,$sql);
        if($result)
        {
            $mgs = "Data Delete Successfully!";
            $class = "green_color alert alert-success col-md-6 alert-dismissable";

        }
        else
        {
            $mgs = "Data Delete Fail!";
           $class = "red_color alert alert-warning alert-dismissable col-md-6 ";
        }
    }
    if(isset($_POST['submit']))
    {
            $bn_sl_no = trim($_POST['bn_sl_no']);
            $en_sl_no = trim($_POST['en_sl_no']);
            $bn_name = trim($_POST['bn_name']);
            $en_name = trim($_POST['en_name']);
            $bn_designation =trim( $_POST['bn_designation']);
            $en_designation = trim($_POST['en_designation']);
            $bn_mobile =$_POST['bn_mobile'];
            $en_mobile =$_POST['en_mobile'];
            $email = $_POST['email'];
            

            $bn_mpo_no = $_POST['bn_mpo_no'];
            $en_mpo_no = $_POST['en_mpo_no'];
            $bn_job_duration =$_POST['bn_job_duration'];
            
            
           
                $SQL = "SELECT * FROM $tbl_name WHERE `is_deleted` = 0 AND `bn_sl_no` ='$bn_sl_no' AND `en_sl_no` = '$en_sl_no' AND `bn_name` ='$bn_name' AND `en_name` = '$en_name' AND `bn_designation` = '$bn_designation' AND `en_designation` = '$en_designation' AND `bn_mobile` = '$bn_mobile' AND `en_mobile` = '$en_mobile' AND `email` = '$email' AND `bn_mpo_no` ='$bn_mpo_no' AND `en_mpo_no`='$en_mpo_no' AND `bn_job_duration` = '$bn_job_duration'";




                    $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
                    
                    if($COUNT <1):
                        if ($_FILES["image_url"]["error"] > 0) {
                                $image_url = "No.jpg";
                                
                            } else {
                                $image_url = time().$_FILES["image_url"]["name"];
                                move_uploaded_file($_FILES["image_url"]["tmp_name"],"upload/" .$image_url);
                            }

              $sql = "INSERT INTO $tbl_name SET `bn_sl_no` ='$bn_sl_no' , `en_sl_no` = '$en_sl_no' , `bn_name` ='$bn_name' , `en_name` = '$en_name' , `bn_designation` = '$bn_designation' , `en_designation` = '$en_designation', `bn_mobile` = '$bn_mobile', `en_mobile` = '$en_mobile',`email` = '$email', `bn_mpo_no` ='$bn_mpo_no' , `en_mpo_no`='$en_mpo_no' , `bn_job_duration` = '$bn_job_duration', `image_url` = '$image_url', `created_by`='$user_no', `created_on`='$CURR_TIME'";
                            $result = mysqli_query($con,$sql);
                            if($result)
                            {
                                $mgs = "Data Insert Successfully!";
                                $class = "green_color alert alert-success col-md-6 alert-dismissable";

                            }
                            else
                            {
                                $mgs = "Data Insert Fail!";
                                $class = "red_color alert alert-warning alert-dismissable col-md-6 ";
                            }
                        else:
                            $mgs = "Duplicate Entry!";
                            $class = "red_color alert alert-warning alert-dismissable col-md-6 ";
                        endif;
         
    }

    if(isset($_POST['update']))
    {

            $bn_sl_no = trim($_POST['bn_sl_no']);
            $en_sl_no = trim($_POST['en_sl_no']);
            $bn_name = trim($_POST['bn_name']);
            $en_name = trim($_POST['en_name']);
            $teacher_details_id = $_POST['teacher_details_id'];
            $bn_designation =trim( $_POST['bn_designation']);
            $en_designation = trim($_POST['en_designation']);
            $bn_mobile =$_POST['bn_mobile'];
            $en_mobile =$_POST['en_mobile'];
            $email = $_POST['email'];
            
            
            $bn_mpo_no = $_POST['bn_mpo_no'];
            $en_mpo_no = $_POST['en_mpo_no'];
            $bn_job_duration = $_POST['bn_job_duration'];
             
            
        $SQL = "SELECT * FROM $tbl_name WHERE `is_deleted` = 0 AND `bn_sl_no` ='$bn_sl_no' AND `en_sl_no` = '$en_sl_no' AND `bn_name` ='$bn_name' AND `en_name` = '$en_name' AND `bn_designation` = '$bn_designation' AND `en_designation` = '$en_designation'AND `bn_mobile` = '$bn_mobile'AND `en_mobile` = '$en_mobile'AND `email` = '$email' AND `bn_mpo_no` ='$bn_mpo_no' AND `en_mpo_no`='$en_mpo_no' AND `bn_job_duration` = '$bn_job_duration' AND `teacher_details_id` != '$teacher_details_id'";

            $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
            if($COUNT < 1): 
                if ($_FILES["image_url"]["error"] > 0) {
                    $image_url = $_POST['image_url'];
                    
                } else {
                    $image_url = time().$_FILES["image_url"]["name"];
                    move_uploaded_file($_FILES["image_url"]["tmp_name"],"upload/" . $image_url);
                }
                  $sql = "UPDATE $tbl_name SET `bn_sl_no` ='$bn_sl_no' , `en_sl_no` = '$en_sl_no' , `bn_name` ='$bn_name' , `en_name` = '$en_name' , `bn_designation` = '$bn_designation' , `en_designation` = '$en_designation', `bn_mobile` = '$bn_mobile', `en_mobile` = '$en_mobile',`email` = '$email', `bn_mpo_no` ='$bn_mpo_no' , `en_mpo_no`='$en_mpo_no' , `bn_job_duration` = '$bn_job_duration', `image_url` = '$image_url' , `is_updated` = 1, `updated_by` = '$user_no' ,`updated_on` = '$CURR_TIME' WHERE `teacher_details_id` = '$teacher_details_id'";
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
        if(isset($_GET['edit'])):
        $id = $_GET['edit'];
        $sql = "SELECT * FROM $tbl_name WHERE `teacher_details_id` = '$id' ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
     <form class="cmxform form-horizontal " id="signupForm" method="post" action="" enctype="multipart/form-data">
     <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-6 col-md-offset-2 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            <div>
                <input type="hidden" name="teacher_details_id" value="<?=$result['teacher_details_id']?>" />
            </div>
        </div>



        <div class="form-group ">
            <label for="bn_sl_no" class="control-label col-lg-2"> সি. </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_sl_no" type="text" value="<?=$result['bn_sl_no']?>" required />
            </div>
            <label for="en_sl_no" class="control-label col-lg-2"> Sl </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_sl_no" type="text" value="<?=$result['en_sl_no']?>" required />
            </div>
        </div>


        
      <div class="form-group ">
            <label for="bn_name" class="control-label col-lg-2">নাম </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_name" type="text" value="<?=$result['bn_name']?>" required />
            </div>
            <label for="en_name" class="control-label col-lg-2">Name </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_name" type="text" value="<?=$result['en_name']?>" required />
            </div>
        </div>

        <div class="form-group ">
            <label for="bn_designation" class="control-label col-lg-2">পদবী</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_designation" type="text" value="<?=$result['bn_designation']?>" required />
            </div>
             <label for="en_designation" class="control-label col-lg-2"> Designation</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_designation" type="text" value="<?=$result['en_designation']?>" required />
            </div>
        </div>

        <div class="form-group ">
            <label for="bn_mobile" class="control-label col-lg-2">মোবাইল</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_mobile" type="text" value="<?=$result['bn_mobile']?>" required />
            </div>
            <label for="en_mobile" class="control-label col-lg-2"> Mobile</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_mobile" type="text" value="<?=$result['en_mobile']?>" required />
            </div>
        </div>

        
        <div class="form-group ">
            <label for="email" class="control-label col-lg-2">ই-মেইল </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="email" type="text" value="<?=$result['email']?>" required />
            </div>
        </div>
        
        

         <div class="form-group ">
            <label for="bn_mpo_no" class="control-label col-lg-2">এম পি ও </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_mpo_no" type="text" value="<?=$result['bn_mpo_no']?>" required />
            </div>
            <label for="en_mpo_no" class="control-label col-lg-2">MPO No</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_mpo_no" type="text" value="<?=$result['en_mpo_no']?>" required />
            </div>
        </div>

       
        <div class="form-group ">
            <label for="bn_job_duration" class="control-label col-lg-2">চাকরী শুরুর  সময়কাল</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_job_duration" type="date" value="<?=$result['bn_job_duration']?>" required />
            </div>
           
        </div>

      
        
        <div class="form-group ">
            <label for="image_url" class="control-label col-lg-2"> ছবি</label>
            <div class="col-lg-4">
                <input type="file"  name="image_url" id="" value="<?=$result['image_url']?>">
                 <img src="upload/<?=$result['image_url']?>" height="60" width="60"/> 
            </div>
           <div>
                <input type="hidden" name="image_url" value="<?=$result['image_url']?>" />
            </div>
        </div>

       <div class="form-group">
            <div class="col-lg-offset-2 col-md-offset-2 col-sm-offset-3 col-xs-offset-3 col-lg-5">
                <input type="submit" class="btn btn-primary" name="update" value="Update" />
                
            </div>
        </div>
    </form>
    
    <?php
        else:
    ?>

    <form class="cmxform form-horizontal " id="signupForm" method="post" action="" enctype="multipart/form-data">
        <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-6 col-md-offset-2 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            
        </div>
       

        <div class="form-group ">
            <label for="bn_sl_no" class="control-label col-lg-2"> সি. </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_sl_no" type="text" required />
            </div>
             <label for="en_sl_no" class="control-label col-lg-2"> Sl </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_sl_no" type="text" required />
            </div>
        </div>


        <div class="form-group ">
            <label for="bn_name" class="control-label col-lg-2">নাম </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_name" type="text" required />
            </div>
             <label for="en_name" class="control-label col-lg-2">Name </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_name" type="text" required />
            </div>
        </div>

       <div class="form-group ">
            <label for="bn_designation" class="control-label col-lg-2">পদবী 
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_designation" type="text" required />
            </div>
             <label for="en_designation" class="control-label col-lg-2">Designation
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_designation" type="text" required />
            </div>
        </div>

        <div class="form-group ">
           
        </div>

        <div class="form-group ">
            <label for="bn_mobile" class="control-label col-lg-2">মোবাইল 
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_mobile" type="text" required />
            </div>
            <label for="en_mobile" class="control-label col-lg-2"> Mobile
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_mobile" type="text" required />
            </div>
        </div>
        <div class="form-group ">
            <label for="email" class="control-label col-lg-2">ই-মেইল 
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="email" type="text" required />
            </div>
        </div>
        
       
    
         <div class="form-group ">
            <label for="bn_mpo_no" class="control-label col-lg-2">এম পি ও
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_mpo_no" type="text" required />
            </div>
            <label for="en_mpo_no" class="control-label col-lg-2">MPO No
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_mpo_no" type="text" required />
            </div>
        </div>

        
         <div class="form-group ">
            <label for="bn_job_duration" class="control-label col-lg-2">চাকরী শুরুর  সময়কাল
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_job_duration" type="date" required />
            </div>
           
        </div>

        

       <div class="form-group ">
            <label for="image_url" class="control-label col-lg-2"> ছবি</label>
            <div class="col-lg-4">
                <input type="file"  name="image_url" id="">   
            </div>
        </div>
       
       <div class="form-group">
            <div class="col-lg-offset-2 col-md-offset-2 col-sm-offset-3 col-xs-offset-3 col-lg-5">
                <input type="submit" class="btn btn-primary" name="submit" value="Add" />
                
            </div>
        </div>
    </form>
    
    <?php
        endif;
    
    // How many adjacent pages should be shown on each side?
    $adjacents = 3;
    
    /* 
       First get total number of rows in data table. 
       If you have a WHERE clause in your query, make sure you mirror it here.
    */
    $query = "SELECT COUNT(*) as num FROM $tbl_name WHERE is_deleted = 0";
    $total_pages = mysqli_fetch_array(mysqli_query($con,$query));
    $total_pages = $total_pages['num'];
    
    /* Setup vars for query. */
    $limit = 15; 
    if(isset($_GET['page']))
    {                               //how many items to show per page
        $page = $_GET['page'];
    }
    else
    $page = 1;
    
    if($page) 
        $start = ($page - 1) * $limit;          //first item to display on this page
    else
        $start = 0;                             //if no page var is given, set start to 0
    
    /* Get data. */
    $sql = "SELECT * FROM $tbl_name 
                 
                WHERE $tbl_name.is_deleted = 0       
                LIMIT $start, $limit";
    $result = mysqli_query($con,$sql);
    
    /* Setup page vars for display. */
    if ($page == 0) $page = 1;                  //if no page var is given, default to 1.
    $prev = $page - 1;                          //previous page is page - 1
    $next = $page + 1;                          //next page is page + 1
    $lastpage = ceil($total_pages/$limit);      //lastpage is = total pages / items per page, rounded up.
    $lpm1 = $lastpage - 1;                      //last page minus 1
    
    /* 
        Now we apply our rules and draw the pagination object. 
        We're actually saving the code to a variable in case we want to draw it more than once.
    */
    $pagination = "";
    if($lastpage > 1)
    {   
        $pagination .= "<div class=\"pagination\">";
        //previous button
        if ($page > 1) 
            $pagination.= "<a href=\"$targetpage?page=$prev\"><< previous</a>";
        else
            $pagination.= "<span class=\"disabled\"><< previous</span>";    
        
        //pages 
        if ($lastpage < 7 + ($adjacents * 2))   //not enough pages to bother breaking it up
        {   
            for ($counter = 1; $counter <= $lastpage; $counter++)
            {
                if ($counter == $page)
                    $pagination.= "<span class=\"current\">$counter</span>";
                else
                    $pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";                 
            }
        }
        elseif($lastpage > 5 + ($adjacents * 2))    //enough pages to hide some
        {
            //close to beginning; only hide later pages
            if($page < 1 + ($adjacents * 2))        
            {
                for ($counter = 1; $counter < 4 + ($adjacents * 2); $counter++)
                {
                    if ($counter == $page)
                        $pagination.= "<span class=\"current\">$counter</span>";
                    else
                        $pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";                 
                }
                $pagination.= "...";
                $pagination.= "<a href=\"$targetpage?page=$lpm1\">$lpm1</a>";
                $pagination.= "<a href=\"$targetpage?page=$lastpage\">$lastpage</a>";       
            }
            //in middle; hide some front and some back
            elseif($lastpage - ($adjacents * 2) > $page && $page > ($adjacents * 2))
            {
                $pagination.= "<a href=\"$targetpage?page=1\">1</a>";
                $pagination.= "<a href=\"$targetpage?page=2\">2</a>";
                $pagination.= "...";
                for ($counter = $page - $adjacents; $counter <= $page + $adjacents; $counter++)
                {
                    if ($counter == $page)
                        $pagination.= "<span class=\"current\">$counter</span>";
                    else
                        $pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";                 
                }
                $pagination.= "...";
                $pagination.= "<a href=\"$targetpage?page=$lpm1\">$lpm1</a>";
                $pagination.= "<a href=\"$targetpage?page=$lastpage\">$lastpage</a>";       
            }
            //close to end; only hide early pages
            else
            {
                $pagination.= "<a href=\"$targetpage?page=1\">1</a>";
                $pagination.= "<a href=\"$targetpage?page=2\">2</a>";
                $pagination.= "...";
                for ($counter = $lastpage - (2 + ($adjacents * 2)); $counter <= $lastpage; $counter++)
                {
                    if ($counter == $page)
                        $pagination.= "<span class=\"current\">$counter</span>";
                    else
                        $pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";                 
                }
            }
        }
        
        //next button
        if ($page < $counter - 1) 
            $pagination.= "<a href=\"$targetpage?page=$next\">next >></a>";
        else
            $pagination.= "<span class=\"disabled\">next >></span>";
        $pagination.= "</div>\n";       
    }
?>
<div style="overflow: auto">
    <table   class="table table-bordered table-hover table-responsive table-condensed table-striped dataTable col-xs-12 col-sm-12 col-md-6 col-lg-6 ">
        <tr>
            <th><center>নং</center></th>
            <th><center>সি.</center></th>
            <th><center>Sl</center></th>
            <th><center>নাম</center></th>
            <th><center>Name</center></th>
            <th><center>পদবী</center></th>
            <th><center>Designation</center></th>
            <th><center>মোবাইল</center></th>
            <th><center>Mobile</center></th>
            <th><center>ই-মেইল </center></th>
            
            
            <th><center>এম পি ও</center></th>
            <th><center>MPO No</center></th>
            <th><center>চাকরী শুরুর সময়কাল</center></th>
            
             <th><center>ছবি</center></th>  
           <th><center>একশন</center></th>


        </tr>
    <?php $i=$page*$limit-$limit+1; while($row = mysqli_fetch_array($result)):?>
        <tr>
            <td><?=$i++?></td>
            <td><?=$row['bn_sl_no']?></td>
            <td><?=$row['en_sl_no']?></td>
            <td><?=$row['bn_name']?></td>
            <td><?=$row['en_name']?></td>
            <td><?=$row['bn_designation']?></td>
            <td><?=$row['en_designation']?></td>
            <td><?=$row['bn_mobile']?></td>
            <td><?=$row['en_mobile']?></td>
            <td><?=$row['email']?></td>
            
            
            <td><?=$row['bn_mpo_no']?></td>
            <td><?=$row['en_mpo_no']?></td>
            <td><?=$row['bn_job_duration']?></td>
            
            <td><a class="btn btn-primary" target="_blank" href="upload/<?=$row['image_url']?>"><i class="fa fa-eye" aria-hidden="true"></i> View</a></td>
            <td>
                <a onclick="return confirm('Are you Sure Want to Edit?');" href="<?=$targetpage.'?edit='.$row['teacher_details_id']?>" class="btn btn-primary"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                <a onclick="return confirm('Are you Sure Want to Delete?');" href="<?=$targetpage.'?delete='.$row['teacher_details_id']?>" class="btn btn-danger"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
            </td>
        </tr>
    <?php endwhile;?>
    </table>
</div>

<?=$pagination?>
    
    <!---main content end---->
<?php include 'include/footer.php';?>