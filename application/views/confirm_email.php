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
    <div class="row">
      <div class="col-xl-4 col-sm-12">
        <!-- Sidebar ================================================== -->
          <?php $this->load->view('sidebar');?>
        <!-- Sidebar end=============================================== -->
        <hr>
        <ul>
          <div style="border: 1px solid rgb(245, 245, 245);padding:10px;border-radius:10px;">
            <a id="myCart" href="<?php echo site_url('welcome/cart');?>" class="text-dark">
              <i class="fas fa-shopping-cart text-success mr-2"></i><?php echo $this->cart->total_items();?> Items in your cart  
            </a>
          </div>
        </ul>
      </div>
      <div class="col-xl-8 col-sm-12">
      <div class="row">
				<div class="container">
				<h5>HARAP ISI BIODATA</h5><br/>
					Gunakan No Handphone yang valid untuk pemberitahuan<br/><br/><br/>
					<form action="<?php echo site_url('welcome/prosestransaksi');?>" method="post">
						<div class="form-group">
						<label class="control-label" for="inputEmail0">Nama</label>
						<div class="controls">
							<input required name="nama" class="form-control"  type="name" id="inputEmail0" placeholder="Nama">
						</div>
						</div>
						<div class="form-group">
						<label class="control-label" for="inputEmail0">No. Handphone</label>
						<div class="controls">
							<input required name="nope" class="form-control"  type="number" id="inputEmail0" placeholder="No HP">
						</div>
						</div>
						<div class="form-group">
						<label class="control-label" for="inputEmail0">Alamat Lengkap</label>
						<div class="controls">
							<textarea name="alamat" class="form-control"></textarea>
						</div>
						</div>
						<div class="controls">
						<button type="submit" class="btn float-right"><i class="fas fa-paper-plane mr-2 text-success"></i> SUBMIT</button>
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