<?php include('header.php'); ?>
<?php include('navbar.php'); ?>
<div id="main-wrapper">
   <div class="main-content">
      <section id="trips">
         <div class="content-header bg-danger">
            <h1 class="text-white">Welcome Recent Trips Travelo</h1>
         </div>
         <h2 class="title">Welcome To Recent Trips Travelo</h2>
         <div class="section-content">
            <button class="btn btn-primary pull-right m-2 p-2">Create New Trips</button>
            <table id="dataTable" class="table table-striped table-bordered nowrap" cellspacing="0" width="100%">
               <thead>
                  <tr>
                     <th>First name</th>
                     <th>Last name</th>
                     <th>Position</th>
                     <th>Office</th>
                     <th>Age</th>
                     <th>Start date</th>
                     <th>Salary</th>
                     <th>Extn.</th>
                     <th>E-mail</th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
                     <td>Tiger</td>
                     <td>Nixon</td>
                     <td>System Architect</td>
                     <td>Edinburgh</td>
                     <td>61</td>
                     <td>2011/04/25</td>
                     <td>$320,800</td>
                     <td>5421</td>
                     <td>t.nixon@datatables.net</td>
                  </tr>
                  <tr>
                     <td>Garrett</td>
                     <td>Winters</td>
                     <td>Accountant</td>
                     <td>Tokyo</td>
                     <td>63</td>
                     <td>2011/07/25</td>
                     <td>$170,750</td>
                     <td>8422</td>
                     <td>g.winters@datatables.net</td>
                  </tr>
               </tbody>
            </table>
         </div>
         <?php include('footer.php'); ?>
      </section>
   </div>
</div>
</div>