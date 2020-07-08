<?php include('header.php'); ?>
<?php include('navbar.php'); ?>
<div id="main-wrapper">
   <div class="main-content">
      <section id="Upadatetrip">
         <div class="content-header bg-danger">
            <marquee>
               <h1 class="text-white">Welcome Update Travelo Trips</h1>
            </marquee>
         </div>
         <?php
            $trip_uid = $_GET['trip_uid'];
            // get Trip by uid
            $select_data = mysqli_query($link,"select * from trips where trip_uid='$trip_uid'");
            $arr =mysqli_fetch_assoc($select_data);
            $oldimage = $arr['trip_image'];

            // update Trip
            extract($_POST);

            if(isset($edit_trip))
            {
            $fn = $_FILES['trip_image']['name'];
            $tmp = $_FILES['trip_image']['tmp_name'];

            if(empty($fn))
            {
               // update only cname
               if(mysqli_query($link,"update trips set trip_desc='$trip_desc',trip_date='$trip_date' where trip_uid='$trip_uid'"))
               {
                  $_SESSION['status']="Trip Update Successfully";
                  header("location:trips.php");
                  exit();
               }
               else
               {
                  $errormsg = "Trip Already Exist";
               }
            }
            else
            {
               // update Destination and image


               $arr2 = explode('.',$fn);
               $ext = end($arr2);

               if($ext=="jpg" || $ext=="jpeg" || $ext=="png")
               {
                  $fnn = rand().$fn;
                  if(mysqli_query($link,"update trips set trip_desc='$trip_desc',trip_date='$trip_date',trip_image='$fnn' where trip_uid='$trip_uid'"))
                  {
                     move_uploaded_file(  $tmp,"travelo/trip/".$fnn);
                     unlink("travelo/trip/".$oldimage);
                     $_SESSION['status']="Trip Update Successfully";
                     header("location:trips.php");
                     exit();
                  }
                  else
                  {
                     $errormsg = "Trip Already Exist";
                  }
               }
               else
               {
                  $errormsg = "Only Jpg , png or Jpeg Allowed";
               }

            }
            }
            ?>
         <div class="col-sm-10">
            <h2 class="title">Welcome Update Travelo Trips</h2>
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
                  <textarea type="text" class="form-control" name="trip_desc" placeholder="Enter Trip Description"><?php echo $arr['trip_desc']; ?></textarea>
               </div>
               <div class="form-group">
                  <label for="des_name">Recent Trip Date:</label>
                  <input type="text" class="form-control" name="trip_date" value="<?php echo $arr['trip_date']; ?>" placeholder="Enter Trip Date (Ex : Oct 29 , 2019)">
               </div>
               <div class="form-group">
                  <label for="trip_image">Trip Image</label>
                  <input type="file" class="form-control" name="trip_image" placeholder="Trip Image">
                  <div class="m-2 p-2 pull-right">
                     <img src="travelo/trip/<?php echo $arr['trip_image'];?>" style="width:250px;height:100px;">
                     <p class="text-danger">Image Name : <?php echo $arr['trip_image'];?></p>
                  </div>
               </div>
               <button type="submit" class="btn btn-primary" name="edit_trip">Update Recent Trip</button>
            </form>
         </div>
      </section>
   </div>
</div>
</div>
