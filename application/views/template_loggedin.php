<!-- This is the template page. It is the root view in which all other mini views are loaded.-->
<?php
ob_start();
$sessionEmail = $this -> session -> userdata('email');
$accessLevel = $this -> session -> userdata('userRights');
$category = $this -> session -> userdata('category');
$affiliation = $this -> session -> userdata('affiliation');
?>
<!DOCTYPE html>
<html lang="en">
		<?php $this -> load -> view('sections/newheader'); ?>
        <!--class="skin-1"-->
	<body>
<div class="navbar">
			<div class="navbar-inner">
				<div class="container-fluid">
					<a href="<?php echo base_url()?>" class="brand" style="padding:0px">
					<small>
                    <span style="display:block; float:left">
                    <img src="<?php echo base_url(); ?>images/coat_of_arms-resized.png" style="width:60px; height:50px; padding-right:5px" /></span>
					<span style="display:block;float:left; background:transparent; border:none; font-weight:bold; padding-top:4px" class="red">Ministry Of Public Health and Sanitation</span>
                    <span style="display:block; background:transparent; border:none; font-weight:bold; font-size:small" class="white">Department of Family Health</span>
					</small>
					</a><!--/.brand-->

					<ul class="nav ace-nav pull-right">
						<li class="grey"></li>
						<li class="green"></li>

						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="<?php echo base_url()?>assets/avatars/avatar2.png"/>
								<span class="user-info">
									<small>Welcome,</small>
									<?php echo $sessionEmail;?>
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-closer">
								<li>
									<a href="#">
										<i class="icon-cog"></i>
										Settings
									</a>
								</li>

								<li>
									<a href="#">
										<i class="icon-user"></i>
										Profile
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="<?php echo base_url().'c_auth/logout'?>">
										<i class="icon-off"></i>
										Logout
									</a>
								</li>
							</ul>
						</li>
					</ul><!--/.ace-nav-->
				</div><!--/.container-fluid-->
			</div><!--/.navbar-inner-->
		</div>
			<div class="main-container container-fluid">
			<a class="menu-toggler" id="menu-toggler" href="#">
				<span class="menu-text"></span>
			</a>
            <?php  
			$this -> load -> view('sections/sidebar'); ?>
			<div class="main-content">
        	<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<i class="icon-home home-icon"></i>
							<a href="<?php echo base_url()?>">Home</a>

							<span class="divider">
								<i class="icon-angle-right arrow-icon"></i>
							</span>
						</li>
						<li class="active">Dashboard</li>
					</ul><!--.breadcrumb-->

					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon">
								<input type="text" placeholder="Search ..." class="input-small nav-search-input" id="nav-search-input" autocomplete="off" />
								<i class="icon-search nav-search-icon"></i>
							</span>
						</form>
					</div><!--#nav-search-->
				</div>
               <div class="page-content"> 
                              
					<div class="page-header position-relative">
						<h1>
							Dashboard
							<small>
								<i class="icon-double-angle-right"></i>
								overview &amp; stats
							</small>
						</h1>
					</div><!--/.page-header-->
               <div class="row-fluid">
<div class="span12">
<!--PAGE CONTENT BEGINS-->				
<?php  if($this->data['form'])
{
	echo $this->data['form'];
}?>

<!--PAGE CONTENT ENDS-->
</div><!--/.span-->
</div><!--/.row-fluid-->
               
                 
     
				</div><!--/.page-content-->
     	<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-mini btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>

					<div class="ace-settings-box" id="ace-settings-box" style="height:180px">
					
                    
            <section class="form-sidebar">
			<h3><strong>Actions</strong></h3>
			<section class="buttons">
				<a title="To Save entered info." id="submit_form_data" class="awesome blue medium"><span style="color:#FFF">Submit</span></a>
				<a title="To close the form." id="close_opened_form" class="awesome red medium"><span style="color:#FFF">Close</span></a>
				<a title="To get PDF version of the form."  class="awesome green medium"><span style="color:#FFF">PDF</span></a>
			</section>
		</section><!-- End of Form-SideBar -->
						
					</div>
				</div><!--/#ace-settings-container-->
			</div><!--/.main-content-->
		</div><!--/.main-container-->   
	</body>
	<!--
	End of Body
	-->
    <?php $this -> load -> view('sections/newfooter'); ?>
</html>