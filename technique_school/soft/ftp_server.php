<?php include 'include/header.php';?>
<?php $table_heading = "ftp_menu";?>
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
  
<?php
        $tbl_name="ftp_menu";       //your table name
        $targetpage = "ftp_server.php";   //your file name  (the name of this file)
    $user_no = 1;//$_SESSION['user']['USER_NO'];
    $CURR_TIME = date('Y-m-d :H:i:s'); 
        $mgs = '';
    if(isset($_GET['delete']))
    {
        $ID = $_GET['delete'];
        $sql = "UPDATE $tbl_name SET `is_deleted` = 1  WHERE menu_id = $ID";
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
            $menu_name =$_POST['menu_name'];
            $submenu_name = trim($_POST['submenu_name']);
            $sub_menu_link =trim($_POST['sub_menu_link']);
          
            
           
                $SQL = "SELECT * FROM $tbl_name WHERE `is_deleted` = 0 AND `menu_name` = '$menu_name' AND `submenu_name` = '$submenu_name' AND `sub_menu_link` = '$sub_menu_link'  ";

                $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
                    
                    if($COUNT < 1):  
                   $sql = "INSERT INTO $tbl_name SET `menu_name` = '$menu_name',  `submenu_name` ='$submenu_name' ,  `sub_menu_link` = '$sub_menu_link'";
                            $result = mysqli_query($con,$sql);
                            if($result)
                            {
                                $mgs = "Data Insert Successfully!";
                                $class = "green_color alert alert-success col-md-8 alert-dismissable";

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
            $menu_id = $_POST['menu_id'];
            $menu_name =$_POST['menu_name'];
            $submenu_name = trim($_POST['submenu_name']);
            $sub_menu_link =trim($_POST['sub_menu_link']);
            
            
       $SQL = "SELECT * FROM $tbl_name WHERE `is_deleted` = 0 AND `menu_name` = '$menu_name' AND `submenu_name` = '$submenu_name' AND `sub_menu_link` = '$sub_menu_link' AND `menu_id` != '$menu_id'";

            $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
            if($COUNT < 1): 
               
            $sql = "UPDATE $tbl_name SET  `menu_name` = '$menu_name' , `submenu_name` ='$submenu_name' ,  `sub_menu_link` = '$sub_menu_link' WHERE `menu_id`='$menu_id'";
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
        $sql = "SELECT * FROM $tbl_name WHERE `menu_id` = $id ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
     <form class="cmxform form-horizontal " id="signupForm" method="post" action="" >
     <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-8 col-md-offset-2 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            <div>
                <input type="hidden" name="menu_id" value="<?=$result['menu_id']?>" />
            </div>
        </div>
      <div class="form-group ">
            <label for="menu_name" class="control-label col-lg-3">Select Server </label>
            <div class="col-lg-5">
                <select class=" form-control" name="menu_name">
                    <option value="-1">--Select-</option>
                    <option value="1">Movie Server</option>
                    <option value="2">Torrent Server </option>
                    <option value="3">TV Server</option>

                </select>
            </div>
           
           
        </div>  
      <div class="form-group ">
            <label for="submenu_name" class="control-label col-lg-3">Server Name </label>
            <div class="col-lg-5">
                <input class=" form-control" id="" name="submenu_name" type="text" value="<?=$result['submenu_name']?>" required />
            </div>
            
        </div>

        <div class="form-group ">
            <label for="sub_menu_link" class="control-label col-lg-3">Server Link </label>
            <div class="col-lg-5">
                <input class=" form-control" id="" name="sub_menu_link" type="text" value="<?=$result['sub_menu_link']?>"  />
            </div>
             
        </div>


       
         <div class="form-group">
            <div class="col-lg-offset-3 col-md-offset-3 col-sm-offset-3 col-xs-offset-3 col-lg-5">
                <input type="submit" class="btn btn-primary" name="update" value="Update" />
                
            </div>
        </div>
    </form>
    
    <?php
        else:
    ?>

    <form class="cmxform form-horizontal " id="signupForm" method="post" action="" enctype="multipart/form-data">
        <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-8 col-md-offset-2 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            
        </div>
             <div class="form-group ">
            <label for="menu_name" class="control-label col-lg-3">Select Server </label>
            <div class="col-lg-5">
                <select class=" form-control" name="menu_name">
                    <option value="-1">--Select-</option>
                    <option value="1">Movie Server</option>
                    <option value="2">Torrent Server </option>
                    <option value="3">TV Server</option>

                </select>
            </div>
           
           
        </div> 
        <div class="form-group ">
            <label for="submenu_name" class="control-label col-lg-3">Server Name </label>
            <div class="col-lg-5">
                <input class=" form-control" id="" name="submenu_name" type="text"  required />
            </div>
            
        </div>

        <div class="form-group ">
            <label for="sub_menu_link" class="control-label col-lg-3">Server Link </label>
            <div class="col-lg-5">
                <input class=" form-control" id="" name="sub_menu_link" type="text"   />
            </div>
             
        </div>
       <div class="form-group">
            <div class="col-lg-offset-3 col-md-offset-3 col-sm-offset-3 col-xs-offset-3 col-lg-5">
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
                <th><center>SL</center></th>
                <th><center>Server</center></th>
                <th><center>Server Name</center></th>
                <th><center>Server Link</center></th>
                
                <th><center>Action</center></th>


          </tr>

        <?php $i=$page*$limit-$limit+1; while($row = mysqli_fetch_array($result)):?>
            <tr>
                <td><?=$i++?></td>
                <td><?=($row['menu_name']==1)?'Movie Server' :(($row['menu_name']==2)?'Torrent Server' :'TV Server') ?></td>
                <td><?=$row['submenu_name']?></td>
                <td><?=$row['sub_menu_link']?></td>
                
                <td>
                    <a onclick="return confirm('Are you Sure Want to Edit?');" href="<?=$targetpage.'?edit='.$row['menu_id']?>" class="btn btn-primary"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                    <a onclick="return confirm('Are you Sure Want to Delete?');" href="<?=$targetpage.'?delete='.$row['menu_id']?>" class="btn btn-danger"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                </td>
            </tr>
        <?php endwhile;?>
        </table>
        </div>

<?=$pagination?>
    
    <!---main content end---->
<?php include 'include/footer.php';?>