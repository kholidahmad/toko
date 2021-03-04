<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="<?php echo base_url('assets/vendor/bootstrap-4.5.3-dist/css/bootstrap.min.css');?>" rel="stylesheet"/>
  <link rel="stylesheet" href="<?php echo base_url('assets/vendor/bootstrap-4.5.3-dist/css/bootstrap.min.css');?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/vendor/fontawesome-free/css/all.min.css');?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/custom.css');?>">
  <title>SyopAja</title>
</head>
<body>
  <!-- navbar -->
	<?php $this->load->view('navbar');?>
  <!-- end navbar -->
  <div class="container m-5">
		<div class="row d-flex justify-content-center">
				<div class="col-xl-6 col-sm-12">
					<div class="p-3" style="border: 1px solid rgb(219, 217, 217);border-radius:10px;">
						<h5>Login Admin</h5><br/>
						<span><?= $this->session->flashdata('message');?></span><br>
						<form action="<?php echo site_url('login/proses_login');?>" method="post">
							<div class="form-group">
								<label for="username">Username</label>
								<input required name="username" class="form-control"  type="text" id="inputEmail0" placeholder="">
							</div>
							<div class="form-group">
								<label for="password">Password</label>
								<input required name="password" class="form-control"  type="password" id="inputEmail0" placeholder="">
							</div>
							<div>
								<button type="submit" class="btn btn-success btn-block mt-5"><b> Login</b></button>
								<a href="<?=base_url()?>" class="btn btn-block mt-4 mb-4">Kembali</a>
							</div>
						</form>
					</div>
				</div>
			</div>	
  </div>
  
	<script src="<?php echo base_url('assets/vendor/jquery-3.5.1.min.js');?>"></script>
	<script src="<?php echo base_url('assets/vendor/bootstrap-4.5.3-dist/js/bootstrap.js');?>"></script>
</body>
</html>