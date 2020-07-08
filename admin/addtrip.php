<?php include('header.php'); ?>
<?php include('navbar.php'); ?>
<div id="main-wrapper">
   <div class="main-content">
      <section id="adddestination">
         <div class="content-header bg-danger">
            <marquee>
               <h1 class="text-white">Welcome Add Travelo Trips</h1>
            </marquee>
         </div>
         <?php
            // add Trips
            $errormsg ="";
            extract($_POST);
            if(isset($add_trip))
            {
               $trip_uid = uniqid();
               $trip_desc = trim($trip_desc);
               //$trip_date = date("F j, Y");
               $fn = $_FILES['trip_image']['name'];
               $tmp = $_FILES['trip_image']['tmp_name'];
               $arr = explode('.',$fn);
               $ext = end($arr);

               if(empty($trip_desc))
               {
                    $errormsg .="<br>Trip Description Must be Required<br>";
               }

               if(empty($trip_date))
               {
                    $trip_date = date("F j, Y");
               }

               if($ext=="jpg" || $ext=="jpeg" || $ext=="png")
               {
                  $fnn = rand().$fn;
                  if(mysqli_query($link,"insert into trips(trip_uid,trip_desc,trip_date,trip_image) values('$trip_uid','$trip_desc','$trip_date','$fnn')"))
                  {
                     move_uploaded_file($tmp,"travelo/trip/".$fnn);
                     //$errormsg .= "Trip Added Successfully <br>";
                     $_SESSION['status']="Trip Added Successfully";
                     header("location:trips.php");
                     exit();
                  }
                  else
                  {
                     $errormsg .= "<br>Trip Already Exist <br>";
                  }
               }
               else
               {
                  $errormsg .= "<br>Only Jpg, png, jpeg file allowed<br>";
               }


            }

            ?>
         <div class="col-sm-10">
            <h2 class="title">Welcome Add Travelo Trips</h2>
            <?php
               if(!empty($errormsg))
               {
               ?>
            <label class="alert-danger p-2"><span class="font-weight-bold m-2"><?php echo $errormsg; ?></span></label>
            <?php
               }
               ?>
            <form method="POST" enctype="multipart/form-data" class="m-2">
               <div class="form-group">
                  <label for="trip_desc">Trip Description:</label>
                  <textarea type="text" class="form-control" name="trip_desc" placeholder="Enter Trip Description"></textarea>
               </div>
               <div class="form-group">
                  <label for="des_name">Recent Trip Date:</label>
                  <input type="text" class="form-control" name="trip_date" placeholder="Enter Trip Date (Ex : Oct 29 , 2019)">
               </div>
               <div class="form-group">
                  <label for="trip_image">Trip Image</label>
                  <input type="file" class="form-control" name="trip_image" placeholder="Trip Image">
               </div>
               <button type="submit" class="btn btn-primary" name="add_trip">Add Recent Trip</button>
            </form>
         </div>
      </section>
   </div>
</div>
</div>
