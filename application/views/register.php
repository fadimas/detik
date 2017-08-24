
<!-- Css -->

<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/login.css')?>">

<!-- Script -->

<script src="<?php echo base_url('assets/vendor/jquery/jquery.min.js')?>"></script>

<!-- <div class="login">
  <div class="login-triangle"></div>
  	<h2 class="login-header">Register</h2>
	  <form class="login-container" method="post" action="<?php //echo base_url('loginuser/tambahuser')?>">
	    <p><input name="username" type="username" placeholder="Username"></p>
	    <p><input name="email" type="email"  placeholder="Email"></p>
	    <p><input name="password" type="password" placeholder="Password"></p>
	    <p><input type="submit" value="Register"></p>
	  </form>
</div> -->

<div class="login" style="width: 100%;">
        <div class="header-login" style="background-color: #ffffff;">
        <img src="http://localhost/detik/assets/img/logotulisan.png">
        </div>
        <div class="modal-body" style="background-color: #ffffff;">
          <form class="login-container" method="post" action="<?php echo base_url('loginuser/tambahuser')?>">
          	<p><input name="username" type="username" placeholder="Username"></p>
	    	<p><input name="email" type="email"  placeholder="Email"></p>
	    	<p><input name="password" type="password" placeholder="Password"></p>
        </div>
          <div class="modal-footer" style="background-color: #ffffff;">
            <input type="submit" value="Register">
          </div>
          </form>
           <div class="text-center">
            <h6>Sudah memiliki akun Detikkarir?  <a href="value="login" id="closemodal" data-toggle="modal" data-target="#myModal2"">LOG IN</a></h6>
           </div>
</div>

