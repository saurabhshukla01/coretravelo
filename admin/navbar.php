<aside class="left-sidebar">
   <div class="logo">
      <marquee class="m-2 font-weight-bold" width="75%">
         <img src="img/logo-travelo.png" style="width:150px;height:55px;">
         <h3 class="text-white">Admin Travelo panel </h3>
      </marquee>
      <a href="#admin" class="m-2">
         <h5 class="text-white">Welcome &nbsp; : <span class="text-danger"><i class='fa fa-user'></i></span>&nbsp;&nbsp;<?php echo ucfirst($_SESSION['adminname']); ?></h5>
      </a>
      <a href="changepassword.php" class="m-2">
         <h5 class="text-white">
            <span class="text-danger"><i class="fa fa-pencil-square-o"></i></span>&nbsp;&nbsp;Change Password
         </h5>
      </a>
      <a href="logout.php" class="m-2">
         <h5 class="text-white"><span class="text-danger"><i class="fa fa-sign-out"></i></span>&nbsp;&nbsp;
            Logout
         </h5>
      </a>
   </div>
   <nav class="left-nav font-weight-bold">
      <ul id="nav">
         <li class="current"><a href="dashboard.php">Admin Travelo</a></li>
         <li><a href="destination.php">Popular Destinations</a></li>
         <li><a href="places.php">Popular Places</a></li>
         <li><a href="trips.php">Recent Trips</a></li>
      </ul>
   </nav>
</aside>