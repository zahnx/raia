 <header id="header"> 

    <!--BURGER NAVIGATION SECTION START-->

    <!--BURGER NAVIGATION SECTION END-->

    <div class="container"> 

      <!--NAVIGATION START-->

      <div class="navigation-col">

        <nav class="navbar navbar-inverse">

          <div class="navbar-header">

            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>

            <ul class="nav navbar-nav" id="nav">
              <li><img src="../images/raia-logo-black.png" alt="" style="max-height:4rem;"></li>
              <li><a href="#">Jobs</a>
                <ul>
                  <li><a href="post-job.php">Post a Job</a></li>
                  <li><a href="job-listing.php">Manage Jobs</a></li>
                </ul>
              </li>
             
              <li><a href="candidates-listings.php">Candidates List</a></li>
              <li><a href="candidates-reports.php">Reports</a></li>
            </ul>

          </div>

        </nav>

      </div>

      <!--NAVIGATION END--> 

    </div>

    

    <!--USER OPTION COLUMN START-->

    <div class="user-option-col">

      <div class="thumb">

        <div class="dropdown">
<!--Fetching Company Logo -->
<?php
//Geeting Employer Id
$empid=$_SESSION['emplogin'];
// Fetching jobs
$sql = "SELECT  CompnayLogo from tblemployers where id=:eid";
$query = $dbh -> prepare($sql);
$query-> bindParam(':eid', $empid, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
foreach($results as $result)
{ ?>

          <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"> <img src="employerslogo/<?php echo htmlentities($result->CompnayLogo)?>" alt="Company Logo" width="60" height="60" style="border-radius: 70px;"></button>
<?php }} ?>
          <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">

            <li><a href="edit-profile.php">Manage Account</a></li>

            <li><a href="change-password.php">Change Password</a></li>
            <li><a href="logout.php">Log off</a></li>

          </ul>

        </div>

      </div>

      

    </div>

    <!--USER OPTION COLUMN END--> 

    

  </header>