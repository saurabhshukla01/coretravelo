<?php include('header.php'); ?>
<!-- bradcam_area  -->
<div class="bradcam_area bradcam_bg_2">
   <div class="container">
      <div class="row">
         <div class="col-xl-12">
            <div class="bradcam_text text-center">
               <h3>Destinations</h3>
               <p>Pixel perfect design with awesome contents</p>
            </div>
         </div>
      </div>
   </div>
</div>
<!--/ bradcam_area  -->
<!-- where_togo_area_start  -->
<div class="where_togo_area">
   <div class="container">
      <div class="row align-items-center">
         <div class="col-lg-3">
            <div class="form_area">
               <h3>Where you want to go?</h3>
            </div>
         </div>
         <div class="col-lg-9">
            <div class="search_wrap">
               <form class="search_form" action="#">
                  <div class="input_field">
                     <input type="text" placeholder="Where to go?">
                  </div>
                  <div class="input_field">
                     <input id="datepicker" placeholder="Date">
                  </div>
                  <div class="input_field">
                     <select>
                        <option data-display="Select Travel type" disabled selected>Select Travel type</option>
                        <option value="Premium Travel Tour">Premium Travel Tour</option>
                        <option value="Advance Travel Tour">Advance Travel Tour</option>
                        <option value="Simple Travel Tour">Simple Travel Tour</option>
                     </select>
                  </div>
                  <div class="search_btn">
                     <button class="boxed-btn4 " type="submit" >Search</button>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>
<!-- where_togo_area_end  -->
<div class="popular_places_area">
   <div class="container">
      <div class="row">
         <div class="col-lg-4">
            <div class="filter_result_wrap">
               <h3>Filter Result</h3>
               <div class="filter_bordered">
                  <div class="filter_inner">
                     <div class="row">
                        <div class="col-lg-12">
                           <div class="single_select">
                              <select>
                                 <option data-display="Destination" disabled selected>Destination</option>
                                 <?php 
                                    if($result = mysqli_query($link,"select * from destinations")){
                                       while($row=mysqli_fetch_assoc($result)){
                                    ?>
                                 <option value="<?php echo $row['des_name']; ?>">
                                    <?php echo $row['des_name']; ?>
                                 </option>
                                 <?php 
                                    }
                                    }
                                    ?>
                              </select>
                           </div>
                        </div>
                        <div class="col-lg-12">
                           <div class="single_select">
                              <select>
                                 <option data-display="Select Travel type" disabled selected>Select Travel type</option>
                                 <option value="Premium Travel Tour">Premium Travel Tour</option>
                                 <option value="Advance Travel Tour">Advance Travel Tour</option>
                                 <option value="Simple Travel Tour">Simple Travel Tour</option>
                              </select>
                           </div>
                        </div>
                        <div class="col-lg-12">
                           <div class="range_slider_wrap">
                              <span class="range">Prise range</span>
                              <div id="slider-range"></div>
                              <p>
                                 <input type="text" id="amount" readonly style="border:0; color:#7A838B; font-weight:400;">
                              </p>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="reset_btn">
                     <button class="boxed-btn4" type="submit">Filter Places</button>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-8">
            <div class="row">
               <?php 
                  //$sql = "SELECT * FROM places order by updated_at desc LIMIT 6";
                  $sql = "SELECT * FROM places order by review_value desc LIMIT 6";
                  if($result = mysqli_query($link, $sql)){
                     while($row=mysqli_fetch_assoc($result)){
                  ?>
               <div class="col-lg-6 col-md-6">
                  <div class="single_place">
                     <div class="thumb">
                        <img src="admin/travelo/place/<?php echo $row['place_image'];?>" alt="" style="width:350px;height:250px;">
                        <a href="destination_details.php?place_charge=<?php echo $row['place_charge'];?>&&place_name=<?php echo $row['place_name'];?>" class="prise"><?php echo $row['place_charge'];?></a>
                     </div>
                     <div class="place_info">
                        <a href="destination_details.php?place_charge=<?php echo $row['place_charge'];?>&&place_name=<?php echo $row['place_name'];?>">
                           <h3><?php echo $row['place_name'];?></h3>
                        </a>
                        <p><?php echo $row['des_name'];?></p>
                        <div class="rating_days d-flex justify-content-between">
                           <span class="d-flex justify-content-center align-items-center">
                           <?php
                              $review = $row['review_value'];
                              for($i=1;$i<=$review;$i++){ ?>
                           <i class="fa fa-star"></i>
                           <?php } 
                              $i--;
                              if($i != 5){
                              for($i=$i;$i<5;$i++){ ?>
                           <i class="fa fa-star-o"></i>
                           <?php 
                              } 
                              } 
                              ?>
                           <a href="#">(<?php echo (4 * $review); ?> Review)</a>
                           </span>
                           <div class="days">
                              <i class="fa fa-clock-o"></i>
                              <a href="#">5 days</a>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <?php  
                  }
                  }
                  ?>
            </div>
            <div class="row">
               <div class="col-lg-12">
                  <div class="more_place_btn text-center">
                     <a class="boxed-btn4" href="userplaces.php">More Places</a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<!-- newletter_area_start  -->
<div class="newletter_area overlay">
   <div class="container">
      <div class="row justify-content-center align-items-center">
         <div class="col-lg-10">
            <div class="row align-items-center">
               <div class="col-lg-5">
                  <div class="newsletter_text">
                     <h4>Subscribe Our Newsletter</h4>
                     <p>Subscribe newsletter to get offers and about
                        new places to discover.
                     </p>
                  </div>
               </div>
               <div class="col-lg-7">
                  <div class="mail_form">
                     <div class="row no-gutters">
                        <div class="col-lg-9 col-md-8">
                           <div class="newsletter_field">
                              <input type="email" placeholder="Your mail" >
                           </div>
                        </div>
                        <div class="col-lg-3 col-md-4">
                           <div class="newsletter_btn">
                              <button class="boxed-btn4 " type="submit" >Subscribe</button>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<!-- newletter_area_end  -->
<div class="recent_trip_area">
   <div class="container">
      <div class="row justify-content-center">
         <div class="col-lg-6">
            <div class="section_title text-center mb_70">
               <h3>Recent Trips</h3>
            </div>
         </div>
      </div>
      <div class="row">
         <?php 
            //$sql = "SELECT * FROM trips order by updated_at desc LIMIT 6";
            $sql = "SELECT * FROM trips order by updated_at desc LIMIT 6";
            if($result = mysqli_query($link, $sql)){
               while($row=mysqli_fetch_assoc($result)){
            ?>  
         <div class="col-lg-4 col-md-6">
            <div class="single_trip">
               <div class="thumb">
                  <img src="admin/travelo/trip/<?php echo $row['trip_image'];?>" alt="" style="width:350px;height:250px;">
               </div>
               <div class="info">
                  <div class="date">
                     <span><?php echo $row['trip_date']; ?></span>
                  </div>
                  <a href="#">
                     <h3><?php echo $row['trip_desc']; ?>
                     </h3>
                  </a>
               </div>
            </div>
         </div>
         <?php
            }
            }
            ?>
      </div>
   </div>
</div>
<?php include('footer.php');?>