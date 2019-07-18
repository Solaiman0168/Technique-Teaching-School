<?php include 'include/header.php';?>
<?php $table_heading = "গুরুত্বপূর্ন নোটিশ";?>
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
   
<?php
        $tbl_name="home_notices";       //your table name
        $targetpage = "home_notice_board_details.php";   //your file name  (the name of this file)
    $user_no = 1;//$_SESSION['user']['USER_NO'];
    $CURR_TIME = date('Y-m-d :H:i:s'); 
        $mgs = '';
            
     if(isset($_POST['submit'])){
            $bn_title =  mysqli_real_escape_string($con,trim($_POST['bn_title']));
            $en_title =  mysqli_real_escape_string($con,trim($_POST['en_title']));
             $bn_details =  mysqli_real_escape_string($con,trim($_POST['bn_details']));
            $en_details =  mysqli_real_escape_string($con,trim($_POST['en_details']));
           
            
           $SQL = "SELECT * FROM $tbl_name WHERE `bn_title` = '$bn_title' AND `en_title` = '$en_title' AND UPPER (`bn_details`) = '".strtoupper($bn_details)."' AND (`en_details`) = '".strtoupper($en_details)."' ";

            $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
            if($COUNT < 1):

              $sql = "INSERT INTO $tbl_name (`bn_title`,`en_title`,`bn_details` ,`en_details`,`created_by` , `created_on`) VALUES('$bn_title','$en_title','$bn_details','$en_details', $user_no, '$CURR_TIME')";
                $result = mysqli_query($con,$sql);
                if($result)
                {
                    $mgs = "Data Insert Successfully!";
                    $class = "green_color alert alert-success col-md-8 alert-dismissable";

                }
                else
                {
                    $mgs = "Data Insert Fail!";
                    $class = "red_color alert alert-warning alert-dismissable col-md-8 ";
                }
            else:
                $mgs = "Duplicate Entry!";
                $class = "red_color alert alert-warning alert-dismissable col-md-8 ";
            endif;
    }
    if(isset($_POST['update']))
    {
            $home_notice_id = $_POST['home_notice_id'];
            $bn_title =  mysqli_real_escape_string($con,trim($_POST['bn_title']));
            $en_title =  mysqli_real_escape_string($con,trim($_POST['en_title']));
             $bn_details =  mysqli_real_escape_string($con,trim($_POST['bn_details']));
            $en_details =  mysqli_real_escape_string($con,trim($_POST['en_details']));
           
            
           $SQL = "SELECT * FROM $tbl_name WHERE `bn_title` = '$bn_title' AND `en_title` = '$en_title' AND UPPER (`bn_details`) = '".strtoupper($bn_details)."' AND (`en_details`) = '".strtoupper($en_details)."' AND`home_notice_id` != '$home_notice_id'";

            $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
            if($COUNT < 1): 
             $sql = "UPDATE $tbl_name SET  `bn_title` = '$bn_title' , `en_title` = '$en_title', `bn_details` = '$bn_details' ,`en_details` = '$en_details' , `is_updated` = 1, `updated_by` = $user_no ,`updated_on` = '$CURR_TIME' WHERE home_notice_id = '$home_notice_id'";
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
            else:
                $mgs = "Duplicate Entry!";
                $class = "red_color alert alert-warning alert-dismissable col-md-6 ";
            endif;
    }
?>
  
    <?php
        if(isset($_GET['edit'])):
        $id = $_GET['edit'];
        $sql = "SELECT * FROM $tbl_name WHERE home_notice_id = $id";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
     <form class="cmxform form-horizontal " id="signupForm" method="post" action="">
     <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-8 col-md-offset-2 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            <div>
                <input type="hidden" name="home_notice_id" value="<?=$result['home_notice_id']?>" />
            </div>
        </div>
        <div class="form-group ">
            <label for="bn_title" class="control-label col-lg-2">টাইটেল </label>
            <div class="col-lg-8">
                <input type="text"  class=" form-control" id="" name="bn_title"  value="<?=$result['bn_title']?>" >
            </div>
            
        </div>
        <div class="form-group ">
            <label for="en_title" class="control-label col-lg-2">Title </label>
            <div class="col-lg-8">
                <input type="text" class=" form-control" id="" name="en_title"  value="<?=$result['en_title']?>"  />
            </div>
        </div>
        
        <div class="form-group ">
            <label for="bn_details" class="control-label col-lg-2">বিস্তারিত </label>
            <div class="col-lg-8">
                <textarea class=" form-control" id="" name="bn_details" type="text" ><?=$result['bn_details']?></textarea>
            </div>
            
        </div>
        <div class="form-group ">
            
            <label for="en_details" class="control-label col-lg-2">Details </label>
            <div class="col-lg-8">
                <textarea class=" form-control" id="" name="en_details" type="text" ><?=$result['en_details']?></textarea>
            </div>
        </div>

        <div class="form-group">
            <div class="col-lg-offset-2 col-md-offset-3 col-sm-offset-3 col-xs-offset-3 col-lg-5">
              <input type="submit" class="btn btn-primary" name="update" value="Update" />
                
            </div>
        </div>
    </form>
    <?php
        else:
    ?>
     <form class="cmxform form-horizontal " id="signupForm" method="post" action="">
          <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
                <div  class=" col-md-8 col-md-offset-2 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
        
        </div>
        
        
        <div class="form-group ">
            <label for="bn_title" class="control-label col-lg-2"> টাইটেল </label>
            <div class="col-lg-8">
                <input type="text"  class=" form-control" id="" name="bn_title"   >
            </div>
            
        </div>
        <div class="form-group ">
            <label for="en_title" class="control-label col-lg-2">Title </label>
            <div class="col-lg-8">
                <input type="text" class=" form-control" id="" name="en_title"    />
            </div>
        </div>
        <div class="form-group ">
            <label for="bn_details" class="control-label col-lg-2">বিস্তারিত  </label>
            <div class="col-lg-8">
                <textarea class=" form-control" id="" name="bn_details" type="text" ></textarea>
            </div>
            
        </div>
        <div class="form-group ">
            
            <label for="en_details" class="control-label col-lg-2">Details </label>
            <div class="col-lg-8">
                <textarea class=" form-control" id="" name="en_details" type="text" ></textarea>
            </div>
        </div>

        
        <div class="form-group">
            <div class="col-lg-offset-2 col-md-offset-3 col-sm-offset-3 col-xs-offset-3 col-lg-5">
              <input type="submit" class="btn btn-primary" name="submit" value="Add" />
                
            </div>
        </div>    </form>
    <?php
        endif;
    
    // How many adjacent pages should be shown on each side?
    $adjacents = 3;
    
    /* 
       First get total number of rows in data table. 
       If you have a WHERE clause in your query, make sure you mirror it here.
    */
    $query = "SELECT COUNT(*) as num FROM $tbl_name";
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

    <table   class="table table-bordered table-hover dataTable col-xs-12 col-sm-12 col-md-4 col-lg-4 ">
        <tr>
            <th>SL.</th>
            <th> টাইটেল</th>
            <th>Event Title</th>
            <th>বিস্তারিত  </th>
            <th>Details</th>
            <th>Action</th>
        </tr>
    <?php $i=$page*$limit-$limit+1; while($row = mysqli_fetch_array($result)):?>
        <tr>
            <td><?=$i++?></td>
            <td><?=$row['bn_title']?></td>
            <td><?=$row['en_title']?></td>
            <td><?=$row['bn_details']?></td>
            <td><?=$row['en_details']?></td>
           <td>
                <a onclick="return confirm('Are you Sure Want to Edit?');" href="<?=$targetpage.'?edit='.$row['home_notice_id']?>" class="btn btn-primary"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                </td>
        </tr>
    <?php endwhile;?>
    </table>

<?=$pagination?>
    
    <!---main content end---->
                                
<?php include 'include/body-bottom.php';?>
<?php include 'include/footer.php';?>
<script type="text/javascript" src="../js/"></script>