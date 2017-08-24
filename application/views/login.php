<html>

  <!-- Theme Css -->

  <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/login.css')?>">
  <link rel="shortcut icon" href="<?php echo base_url('uploads/header/detik2.png')?>">
  <!-- Script -->
  <script src="<?php echo base_url('assets/vendor/jquery/jquery.min.js')?>"></script>


<!-- <div class="login">
  <div class="login-triangle"></div>
    <h2 class="login-header">Log in</h2>

  <form class="login-container" method="post" action="<?php //echo base_url('loginuser/login') ?>">
    <p><input name="email" type="email" placeholder="Email"></p>s
    <p><input type="password" name="password" placeholder="Password"></p>
    <p><input type="submit" value="Log in"></p>
    <p><input type="button" value="Register" onclick="window.location = '<?php //echo base_url('loginuser/register'); ?>'"></p>
  </form>

</div> -->
  <!-- <form class="login-container" method="post" action="<?php// echo base_url('loginuser/register') ?>">
    <p><input type="submit" value="Register"></p>
  </form> -->
<div class="login" style="width: 100%; background-color: #ffffff;">
      <div class="header-login" style="background-color: #ffffff;">
        <img src="http://localhost/detik/assets/img/logotulisan.png">
      </div>
        <div class="modal-body" style="background-color: #ffffff;">
          <form class="login-container" method="post" action="<?php echo base_url('loginuser/login') ?>">
          <p><input name="email" type="email" placeholder="Email"></p>
          <p><input type="password" name="password" placeholder="Password"></p>
        </div>
          <div class="modal-footer" style="background-color: #ffffff;">
            <input type="submit" value="Log in">
            <!-- <p><input type="button" value="Register" id="closemodal" data-toggle="modal" data-target="#myModal2"></p> -->
          </div>
          </form>
          <div class="text-center">
            <h6>Belum memiliki akun Detikkarir? <a href="value="register" id="closemodal" data-toggle="modal" data-target="#myModal2"">REGISTER</a></h6>
          </div>
</div>

</html>

<script type="text/javascript">
    $('#closemodal').click(function() {
    $('#myModal').modal('hide');
});
</script>

