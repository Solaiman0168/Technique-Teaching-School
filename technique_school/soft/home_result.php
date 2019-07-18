<?php include 'include/header.php';?>
<?php $table_heading = "home_result";?>
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
  
<?php
        $tbl_name="home_result";       //your table name
        $targetpage = "home_result.php";   //your file name  (the name of this file)
    $user_no = 1;//$_SESSION['user']['USER_NO'];
    $CURR_TIME = date('Y-m-d :H:i:s'); 
        $mgs = '';
    if(isset($_GET['delete']))
    {
        $ID = $_GET['delete'];
        $sql = "UPDATE $tbl_name SET `is_deleted` = 1 ,`deleted_by` = '$user_no', `deleted_on` = '$CURR_TIME' WHERE home_result_id = $ID";
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
            $bn_exam_name =$_POST['bn_exam_name'];
            $en_exam_name =$_POST['en_exam_name'];
            $bn_year = trim($_POST['bn_year']);
            $en_year =trim( $_POST['en_year']);
            $bn_a_plus =trim($_POST['bn_a_plus']);
            $en_a_plus =trim($_POST['en_a_plus']);
            $bn_a =$_POST['bn_a'];
            $en_a =$_POST['en_a'];
            $bn_a_minus =$_POST['bn_a_minus'];
            $en_a_minus =$_POST['en_a_minus'];
            $bn_f =$_POST['bn_f'];
            $en_f =$_POST['en_f'];
            $bn_rate_pass =$_POST['bn_rate_pass'];
            $en_rate_pass =$_POST['en_rate_pass'];
            
            
            
           
                $SQL = "SELECT * FROM $tbl_name WHERE `is_deleted` = 0 AND `bn_exam_name` = '$bn_exam_name' AND `en_exam_name` = '$en_exam_name'  AND `bn_year` = '$bn_year' AND `en_year` = '$en_year' AND `bn_a_plus` = '$bn_a_plus'AND `en_a_plus` = '$en_a_plus' AND `bn_a` = '$bn_a' AND `en_a` = '$en_a' AND `bn_a_minus` = '$bn_a_minus' AND `en_a_minus` = '$en_a_minus' AND `bn_f` = '$bn_f' AND `en_f` = '$en_f' AND `bn_rate_pass` = 'bn_rate_pass' AND `en_rate_pass` = 'en_rate_pass'";

                $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
                    
                    if($COUNT < 1):  
                   $sql = "INSERT INTO $tbl_name SET `bn_exam_name` = '$bn_exam_name',`en_exam_name` = '$en_exam_name' , `bn_year` ='$bn_year' , `en_year` = '$en_year' , `bn_a_plus` = '$bn_a_plus' , `en_a_plus` = '$en_a_plus' , `bn_a` = '$bn_a' , `en_a` = '$en_a' , `bn_a_minus` = '$bn_a_minus' , `en_a_minus` = '$en_a_minus' , `bn_f` = '$bn_f' , `en_f` = '$en_f' , `bn_rate_pass` = '$bn_rate_pass',`en_rate_pass` = '$en_rate_pass'";
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
            $home_result_id = $_POST['home_result_id'];
            $bn_exam_name =$_POST['bn_exam_name'];
            $en_exam_name =$_POST['en_exam_name'];
            $bn_year = trim($_POST['bn_year']);
            $en_year = trim($_POST['en_year']);
            $bn_a_plus = $_POST['bn_a_plus'];
            $en_a_plus =trim( $_POST['en_a_plus']);
            $bn_a =$_POST['bn_a'];
            $en_a =$_POST['en_a'];
            $bn_a_minus =$_POST['bn_a_minus'];
            $en_a_minus =$_POST['en_a_minus'];
            $bn_f =$_POST['bn_f'];
            $en_f =$_POST['en_f'];
            $bn_rate_pass =$_POST['bn_rate_pass'];
            $en_rate_pass =$_POST['en_rate_pass'];
            
            
       $SQL = "SELECT * FROM $tbl_name WHERE `is_deleted` = 0 AND `bn_exam_name` = '$bn_exam_name' AND `en_exam_name` = '$en_exam_name' AND `bn_year` ='$bn_year' AND `en_year` = '$en_year' AND `bn_a_plus` = '$bn_a_plus' AND `en_a_plus` = '$en_a_plus' AND `bn_a` = '$bn_a' AND `en_a` = '$en_a' AND `bn_a_minus` = '$bn_a_minus' AND `en_a_minus` = '$en_a_minus' AND `bn_f` = '$bn_f' AND `en_f` = '$en_f' AND `bn_rate_pass` = 'bn_rate_pass' AND `en_rate_pass` = 'en_rate_pass' AND `home_result_id` != '$home_result_id'";

            $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
            if($COUNT < 1): 
               
                  $sql = "UPDATE $tbl_name SET `bn_exam_name` = '$bn_exam_name',`en_exam_name` = '$en_exam_name' , `bn_year` ='$bn_year' , `en_year` = '$en_year' , `bn_a_plus` = '$bn_a_plus' , `en_a_plus` = '$en_a_plus' , `bn_a` = '$bn_a' , `en_a` = '$en_a' , `bn_a_minus` = '$bn_a_minus' , `en_a_minus` = '$en_a_minus' , `bn_f` = '$bn_f' , `en_f` = '$en_f' , `bn_rate_pass` = '$bn_rate_pass' , `en_rate_pass` = '$en_rate_pass' WHERE `home_result_id` = '$home_result_id'";
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
        $sql = "SELECT * FROM $tbl_name WHERE `home_result_id` = $id ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
     <form class="cmxform form-horizontal " id="signupForm" method="post" action="" >
     <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-8 col-md-offset-2 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            <div>
                <input type="hidden" name="home_result_id" value="<?=$result['home_result_id']?>" />
            </div>
        </div>
      <div class="form-group ">
            <label for="bn_exam_name" class="control-label col-lg-2">এক্সাম </label>
            <div class="col-lg-4">
                <select class=" form-control" name="bn_exam_name">
                    <option value="-1">--Select-</option>
                    <option value="1">পি ই সি </option>
                    <option value="2">জে এস সি </option>
                    <option value="3">এসএসসি</option>

                </select>
            </div>
            <label for="en_exam_name" class="control-label col-lg-2">Exam </label>
            <div class="col-lg-4">
                <select class=" form-control" name="en_exam_name">
                    <option value="-1">--Select-</option>
                    <option value="1">PEC</option>
                    <option value="2">JSC</option>
                    <option value="3">SSC</option>

                </select>
            </div>
        </div>  
      <div class="form-group ">
            <label for="bn_year" class="control-label col-lg-2">সন </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_year" type="text" value="<?=$result['bn_year']?>" required />
            </div>
            <label for="en_year" class="control-label col-lg-2">Year </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_year" type="text" value="<?=$result['en_year']?>"  />
            </div>
        </div>

        <div class="form-group ">
            <label for="bn_a_plus" class="control-label col-lg-2">এ+ </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_a_plus" type="text" value="<?=$result['bn_a_plus']?>"  />
            </div>
             <label for="en_a_plus" class="control-label col-lg-2"> A+</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_a_plus" type="text" value="<?=$result['en_a_plus']?>"  />
            </div>
        </div>


        <div class="form-group ">
            <label for="bn_a" class="control-label col-lg-2">এ </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_a" type="text" value="<?=$result['bn_a']?>"  />
            </div>
             <label for="en_a" class="control-label col-lg-2"> A</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_a" type="text" value="<?=$result['en_a']?>"  />
            </div>
        </div>


        <div class="form-group ">
            <label for="bn_a_minus" class="control-label col-lg-2">এ- </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_a_minus" type="text" value="<?=$result['bn_a_minus']?>"  />
            </div>
             <label for="en_a_minus" class="control-label col-lg-2"> A-</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_a_minus" type="text" value="<?=$result['en_a_minus']?>"  />
            </div>
        </div>


        <div class="form-group ">
            <label for="bn_f" class="control-label col-lg-2">এফ </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_f" type="text" value="<?=$result['bn_f']?>"  />
            </div>
             <label for="en_f" class="control-label col-lg-2"> F</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_f" type="text" value="<?=$result['en_f']?>"  />
            </div>
        </div>


        <div class="form-group ">
            <label for="bn_rate_pass" class="control-label col-lg-2">পাশের হার </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_rate_pass" type="text" value="<?=$result['bn_rate_pass']?>"  />
            </div>
             <label for="en_rate_pass" class="control-label col-lg-2"> Rate Of Pass</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_rate_pass" type="text" value="<?=$result['en_rate_pass']?>"  />
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
            <div class=" col-md-8 col-md-offset-2 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            
        </div>
       <div class="form-group ">
            <label for="bn_exam_name" class="control-label col-lg-2">এক্সাম </label>
            <div class="col-lg-4">
                <select class=" form-control" name="bn_exam_name">
                    <option value="-1">--Select-</option>
                    <option value="1">পি ই সি </option>
                    <option value="2">জে এস সি </option>
                    <option value="3">এসএসসি</option>

                </select>
            </div>
            <label for="en_exam_name" class="control-label col-lg-2">Exam </label>
            <div class="col-lg-4">
                <select class=" form-control" name="en_exam_name">
                    <option value="-1">--Select-</option>
                    <option value="1">PEC</option>
                    <option value="2">JSC</option>
                    <option value="3">SSC</option>

                </select>
            </div>
        </div>  
        <div class="form-group ">
            <label for="bn_year" class="control-label col-lg-2">সন </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_year" type="text" required />
            </div>
             <label for="en_year" class="control-label col-lg-2">Year </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_year" type="text" required />
            </div>
        </div>

       <div class="form-group ">
            <label for="bn_a_plus" class="control-label col-lg-2">এ+
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_a_plus" type="text" required />
            </div>
             <label for="en_a_plus" class="control-label col-lg-2">A+
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_a_plus" type="text" required />
            </div>
        </div>


        <div class="form-group ">
            <label for="bn_a" class="control-label col-lg-2">এ </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_a" type="text" required />
            </div>
             <label for="en_a" class="control-label col-lg-2"> A</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_a" type="text" required />
            </div>
        </div>



        <div class="form-group ">
            <label for="bn_a_minus" class="control-label col-lg-2">এ- </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_a_minus" type="text" required />
            </div>
             <label for="en_a_minus" class="control-label col-lg-2"> A-</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_a_minus" type="text" required />
            </div>
        </div>




        <div class="form-group ">
            <label for="bn_f" class="control-label col-lg-2">এফ </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_f" type="text" required />
            </div>
             <label for="en_f" class="control-label col-lg-2"> F</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_f" type="text" required />
            </div>
        </div>



        <div class="form-group ">
            <label for="bn_rate_pass" class="control-label col-lg-2">পাশের হার </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_rate_pass" type="text" required />
            </div>
             <label for="en_rate_pass" class="control-label col-lg-2">Rate Of Pass</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_rate_pass" type="text" required />
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
                <th><center>এক্সাম</center></th>
                <th><center>Exam</center></th>
                <th><center>সন</center></th>
                <th><center>Year</center></th>
                <th><center>এ+</center></th>
                <th><center>A+</center></th>
                <th><center>এ</center></th>
                <th><center>A</center></th>
                <th><center>এ-</center></th>
                <th><center>A-</center></th>
                <th><center>এফ</center></th>
                <th><center>F</center></th>
                <th><center>পাশের হার</center></th>
                <th><center>Rate Of Pass</center></th>
                <th><center>একশন</center></th>


          </tr>

        <?php $i=$page*$limit-$limit+1; while($row = mysqli_fetch_array($result)):?>
            <tr>
                <td><?=$i++?></td>
                <td><?=($row['bn_exam_name']==1)?'পি ই সি' :(($row['bn_exam_name']==2)?'জে এস সি' :'এসএসসি') ?></td>
                <td><?=($row['en_exam_name']==1)?'PEC' :(($row['en_exam_name']==2)?'JSC' :'SSC')?></td>
                <td><?=$row['bn_year']?></td>
                <td><?=$row['en_year']?></td>
                <td><?=$row['bn_a_plus']?></td>
                <td><?=$row['en_a_plus']?></td>
                <td><?=$row['bn_a']?></td>
                <td><?=$row['en_a']?></td>
                <td><?=$row['bn_a_minus']?></td>
                <td><?=$row['en_a_minus']?></td>
                <td><?=$row['bn_f']?></td>
                <td><?=$row['en_f']?></td>
                <td><?=$row['bn_rate_pass']?></td>
                <td><?=$row['en_rate_pass']?></td>
                
                
                <td>
                    <a onclick="return confirm('Are you Sure Want to Edit?');" href="<?=$targetpage.'?edit='.$row['home_result_id']?>" class="btn btn-primary"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                    <a onclick="return confirm('Are you Sure Want to Delete?');" href="<?=$targetpage.'?delete='.$row['home_result_id']?>" class="btn btn-danger"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                </td>
            </tr>
        <?php endwhile;?>
        </table>
        </div>

<?=$pagination?>
    
    <!---main content end---->
<?php include 'include/footer.php';?>