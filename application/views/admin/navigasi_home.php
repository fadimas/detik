<?php $email = $this->session->userdata("email_hrd");
        if( empty($email)){
          redirect("login");
        }else{ ?>
<header class="main-header hidden-print" ><a style="font-family: 'Lato';" href="<?php echo base_url('admin_home')?>" class="logo">Detik Karir</a>
  <nav class="navbar navbar-static-top">
    <!-- Sidebar toggle button--><a href="#" data-toggle="offcanvas" class="sidebar-toggle"></a>
    <!-- Navbar Right Menu-->
    <div class="navbar-custom-menu">
      <ul class="top-nav">
            <li><a href="<?php echo base_url('admin/page_admin')?>">  <i class="fa fa-user fa-lg"></i> Profile</a></li>
            <li><a href="<?php echo base_url('login/logout')?>"> <i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
      </ul>
    </div>
  </nav>
</header>
<!-- Side-Nav-->
<aside class="main-sidebar hidden-print">
  <section class="sidebar">
    <div class="user-panel">
      <div class="pull-left image"><img src="<?=base_url('uploads\foto\profil.jpg')?>" alt="User Image" class="img-circle"></div>
      <div class="pull-left info">
        <!-- <p>John Doe</p> -->
        <p class="designation"><br><?php echo $email?></p>
      </div>
    </div>
    <!-- Sidebar Menu-->
    <ul class="sidebar-menu">
      <li class="active"><a href="<?=base_url('admin_home')?>"><i class="fa fa-dashboard"></i><span>Dashboard</span></a></li>
      <li class="treeview"><a href="#"><i class="fa fa-edit"></i><span>Job Advertisement</span><i class="fa fa-angle-right"></i></a>
        <ul class="treeview-menu">
          <li><a href="<?php echo base_url('adv/kategori')?>"><i class="fa fa-circle-o"></i> Kategori</a></li>
          <li><a href="<?php echo base_url('adv/subkategori')?>"><i class="fa fa-circle-o"></i> Sub Kategori</a></li>
          <li><a href="<?php echo base_url('adv/advertisement')?>"><i class="fa fa-circle-o"></i> Advertisement</a></li>

        </ul>
      </li>
      <li class="treeview"><a href="#"><i class="fa fa-th-list"></i><span>Applicants</span><i class="fa fa-angle-right"></i></a>
        <ul class="treeview-menu">
          <li><a href="<?php echo base_url('app/applicant')?>"><i class="fa fa-circle-o"></i> Applicants</a></li>
          <li><a href="<?php echo base_url('app/unprocess')?>"><i class="fa fa-circle-o"></i> Unprocess</a></li>
          <li><a href="<?php echo base_url('app/shortlist')?>"><i class="fa fa-circle-o"></i> Shortlist</a></li>
          <li><a href="<?php echo base_url('app/interviewuser')?>"><i class="fa fa-circle-o"></i> Interview User</a></li>
                <li><a href="<?php echo base_url('app/psikotest')?>"><i class="fa fa-circle-o"></i> Psikotest</a></li>
                <li><a href="<?php echo base_url('app/interviewhrd')?>"><i class="fa fa-circle-o"></i> Interview HRD</a></li>
                <li><a href="<?php echo base_url('app/skilltest')?>"><i class="fa fa-circle-o"></i> Skill test</a></li>
          <li><a href="<?php echo base_url('app/accepted')?>"><i class="fa fa-circle-o"></i> Accepted</a></li>
          <li><a href="<?php echo base_url('app/blacklist')?>"><i class="fa fa-circle-o"></i> Blacklist</a></li>
<!--           <li><a href="<?php// echo base_url('app/applicant')?>"><i class="fa fa-circle-o"></i> Applicant</a></li>
 -->        </ul>
      </li>
      
        <li><a href="<?php echo base_url('email/tabelemail')?>"><i class="fa fa-envelope" aria-hidden="true"></i><span>Template</span></a></li>
        <li><a href="<?php echo base_url('admin/list')?>"><i class="fa fa-user" aria-hidden="true"></i><span>HR Manager</span></a></li>

    </ul>
  </section>
</aside>
<?php }?>
