<?php include 'include/header.php';?>
<?php $table_heading = "ছোট গল্প - ১";?>
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
  
<?php
        $tbl_name="short_story1";       //your table name
        $targetpage = "short_story1.php";   //your file name  (the name of this file)
    $user_no = 1;//$_SESSION['user']['USER_NO'];
    $CURR_TIME = date('Y-m-d :H:i:s'); 
        $mgs = '';
    if(isset($_GET['delete']))
    {
        $ID = $_GET['delete'];
        $sql = "UPDATE $tbl_name SET `is_deleted` = 1 ,`deleted_by` = '$user_no', `deleted_on` = '$CURR_TIME' WHERE short_story1_id = $ID";
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
            $bn_name = trim($_POST['bn_name']);
            $en_name = trim($_POST['en_name']);
            $bn_student_name =trim( $_POST['bn_student_name']);
            $en_student_name = trim($_POST['en_student_name']);
            $bn_class =$_POST['bn_class'];
            $en_class =$_POST['en_class'];
            $bn_date = $_POST['bn_date'];
            $en_date = $_POST['en_date'];
            $bn_details =mysqli_real_escape_string($con,trim($_POST['bn_details']));
            $en_details = mysqli_real_escape_string($con,trim($_POST['en_details']));
            
            
           
                 $SQL = "SELECT * FROM $tbl_name WHERE `is_deleted` = 0 AND `bn_name` ='$bn_name' AND `en_name` = '$en_name' AND `bn_student_name` = '$bn_student_name' AND `en_student_name` = '$en_student_name' AND `bn_class` = '$bn_class' AND `en_class` = '$en_class' AND `en_date` = '$en_date' AND `bn_details` = '$bn_details' AND `en_details` ='$en_details' ";




                    $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
                    
                    if($COUNT <1):
                         if ($_FILES["image_url"]["error"] > 0) {
                                $image_url = "no.jpg";

                            } else {
                                $image_url = time().$_FILES["image_url"]["name"];
                                move_uploaded_file($_FILES["image_url"]["tmp_name"],"upload/" . $image_url);
                            }
                   $sql = "INSERT INTO $tbl_name SET `bn_name` ='$bn_name' , `en_name` = '$en_name' , `bn_student_name` = '$bn_student_name' , `en_student_name` = '$en_student_name', `bn_class` = '$bn_class', `en_class` = '$en_class',`bn_date` = '$bn_date', `en_date` = '$en_date' , `bn_details` = '$bn_details', `en_details` ='$en_details' , `image_url` = '$image_url', `created_by`='$user_no', `created_on`='$CURR_TIME'";

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

            $bn_name = trim($_POST['bn_name']);
            $en_name = trim($_POST['en_name']);
            $short_story1_id = $_POST['short_story1_id'];
            $bn_student_name =trim( $_POST['bn_student_name']);
            $en_student_name = trim($_POST['en_student_name']);
            $bn_class =$_POST['bn_class'];
            $en_class =$_POST['en_class'];
            $bn_date = $_POST['bn_date'];
            $en_date = $_POST['en_date'];
            $bn_details =mysqli_real_escape_string($con,trim($_POST['bn_details']));
            $en_details = mysqli_real_escape_string($con,trim($_POST['en_details']));
            
            
        $SQL = "SELECT * FROM $tbl_name WHERE `is_deleted` = 0 AND `bn_name` ='$bn_name' AND `en_name` = '$en_name' AND `bn_student_name` = '$bn_student_name' AND `en_student_name` = '$en_student_name'AND `bn_class` = '$bn_class'AND `en_class` = '$en_class '  AND `bn_details` = '$bn_details'AND `en_details` ='$en_details' AND `short_story1_id` != '$short_story1_id'";

            $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
            if($COUNT < 1): 
                if ($_FILES["image_url"]["error"] > 0) {
                    $image_url = $_POST['image_url'];

                } else {
                    $image_url = time().$_FILES["image_url"]["name"];
                    move_uploaded_file($_FILES["image_url"]["tmp_name"],"upload/" . $image_url);
                }
                  $sql = "UPDATE $tbl_name SET `bn_name` ='$bn_name' , `en_name` = '$en_name' , `bn_student_name` = '$bn_student_name' , `en_student_name` = '$en_student_name', `bn_class` = '$bn_class', `en_class` = '$en_class',`bn_date` = '$bn_date', `en_date` = '$en_date' , `bn_details` = '$bn_details', `en_details` ='$en_details' , `image_url` = '$image_url' , `is_updated` = 1, `updated_by` = '$user_no' ,`updated_on` = '$CURR_TIME' WHERE `short_story1_id` = '$short_story1_id'";
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
        $sql = "SELECT * FROM $tbl_name WHERE `short_story1_id` = '$id' ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
     <form class="cmxform form-horizontal " id="signupForm" method="post" action="" enctype="multipart/form-data">
     <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-6 col-md-offset-1 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            <div>
                <input type="hidden" name="short_story1_id" value="<?=$result['short_story1_id']?>" />
            </div>
        </div>
        
      <div class="form-group ">
            <label for="bn_name" class="control-label col-lg-2">শিরোনাম </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_name" type="text" value="<?=$result['bn_name']?>" required />
            </div>
            <label for="en_name" class="control-label col-lg-2">Title Name </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_name" type="text" value="<?=$result['en_name']?>" required />
            </div>
        </div>

        <div class="form-group ">
            <label for="bn_student_name" class="control-label col-lg-2">ছাত্র বা ছাত্রী নাম</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_student_name" type="text" value="<?=$result['bn_student_name']?>" required />
            </div>
             <label for="en_student_name" class="control-label col-lg-2">Student Name</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_student_name" type="text" value="<?=$result['en_student_name']?>" required />
            </div>
        </div>

        <div class="form-group ">
            <label for="bn_class" class="control-label col-lg-2">শ্রেণী</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_class" type="text" value="<?=$result['bn_class']?>" required />
            </div>
            <label for="en_class" class="control-label col-lg-2">Class</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_class" type="text" value="<?=$result['en_class']?>" required />
            </div>
        </div>

        
        <div class="form-group ">
            <label for="bn_date" class="control-label col-lg-2">তারিখ</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_date" type="text" value="<?=$result['bn_date']?>" required />
            </div>
            <label for="en_date" class="control-label col-lg-2"> Date</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_date" type="text" value="<?=$result['en_date']?>" required />
            </div>
        </div>

         <div class="form-group ">
            <label for="bn_details" class="control-label col-lg-2">বর্ণনা</label>
            <div class="col-lg-10">
                <textarea  class=" form-control" id="" name="bn_details" ><?=$result['bn_details']?></textarea>
                
            </div>
            
        </div>
        <div class="form-group ">
          <label for="en_details" class="control-label col-lg-2">Details</label>
            <div class="col-lg-10">
                <textarea  class=" form-control" id="" name="en_details" ><?=$result['en_details']?></textarea>
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
            <div class=" col-md-6 col-md-offset-1 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            
        </div>
       
        <div class="form-group ">
            <label for="bn_name" class="control-label col-lg-2">শিরোনাম </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_name" type="text" required />
            </div>
             <label for="en_name" class="control-label col-lg-2">Title Name </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_name" type="text" required />
            </div>
        </div>

       <div class="form-group ">
            <label for="bn_student_name" class="control-label col-lg-2">ছাত্র বা ছাত্রী নাম 
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_student_name" type="text" required />
            </div>
             <label for="en_student_name" class="control-label col-lg-2">Student name
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_student_name" type="text" required />
            </div>
        </div>

        <div class="form-group ">
           
        </div>

        <div class="form-group ">
            <label for="bn_class" class="control-label col-lg-2">শ্রেণী 
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_class" type="text" required />
            </div>
            <label for="en_class" class="control-label col-lg-2">Class
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_class" type="text" required />
            </div>
        </div>
        
       
        <div class="form-group ">
            <label for="bn_date" class="control-label col-lg-2">তারিখ 
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_date" type="text"  />
            </div>
             <label for="en_date" class="control-label col-lg-2"> Date
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_date" type="text" />
            </div>

        </div>

        
         <div class="form-group ">
            <label for="bn_details" class="control-label col-lg-2">বর্ণনা
            </label>
            <div class="col-lg-10">
                <textarea  class=" form-control" id="" name="bn_details" ></textarea>
            </div>
           
        </div>
        <div class="form-group ">
           <label for="en_details" class="control-label col-lg-2">Details
            </label>
            <div class="col-lg-10">
                <textarea  class=" form-control" id="" name="en_details" ></textarea>
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

    <table   class="table table-bordered table-hover table-responsive table-condensed table-striped dataTable col-xs-12 col-sm-12 col-md-6 col-lg-6 ">
        <tr>
            <th><center>নং</center></th>
            <th><center>শিরোনাম</center></th>
            <th><center>Name</center></th>
            <th><center>ছাত্র বা ছাত্রী নাম</center></th>
            <th><center>Student Name</center></th>
            <th><center>শ্রেণী</center></th>
            <th><center>Class</center></th>
            <th><center>তারিখ</center></th>
            <th><center>Date</center></th>
           <th><center>ছবি</center></th>  
           <th><center>একশন</center></th>






            

        </tr>
    <?php $i=$page*$limit-$limit+1; while($row = mysqli_fetch_array($result)):?>
        <tr>
            <td><?=$i++?></td>
            <td><?=$row['bn_name']?></td>
            <td><?=$row['en_name']?></td>
            <td><?=$row['bn_student_name']?></td>
            <td><?=$row['en_student_name']?></td>
            <td><?=$row['bn_class']?></td>
            <td><?=$row['en_class']?></td>
            <td><?=$row['bn_date']?></td>
            <td><?=$row['en_date']?></td>
            
            <td><a class="btn btn-primary" target="_blank" href="upload/<?=$row['image_url']?>"><i class="fa fa-eye" aria-hidden="true"></i> View</a></td>
            <td>
                <a onclick="return confirm('Are you Sure Want to Edit?');" href="<?=$targetpage.'?edit='.$row['short_story1_id']?>" class="btn btn-primary"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                <a onclick="return confirm('Are you Sure Want to Delete?');" href="<?=$targetpage.'?delete='.$row['short_story1_id']?>" class="btn btn-danger"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
            </td>
        </tr>
    <?php endwhile;?>
    </table>

<?=$pagination?>
    
    <!---main content end---->
<?php include 'include/footer.php';?>