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
				<div class="">
					<h5>Konfirmasi Pembayaran</h5><br/>
					<?php echo form_open_multipart('welcome/proses_konfirmasi');?>
						<div class="form-group">
						<label class="control-label" for="inputEmail0">Masukkan Kode Pesanan</label>
						<div class="controls">
							<input name="invoice_id" class="span3"  type="name" id="inputEmail0" placeholder="">
						</div>
						</div>
						<div class="control-group">
						<label class="control-label" for="inputEmail0">Upload Bukti Transfer</label>
						<div class="controls">
							<input type="file" class="form-control" name="userfile">
						</div>
						</div>
						<div class="controls">
						<button type="submit" class="btn btn-success m-3 float-right"><i class="fas fa-paper-plane"></i> Konfirmasi</button>
						</div>
					<?php echo form_close();?>
				</div>
      </div>
    </div>
  </div>
  
	<script src="<?php echo base_url('assets/vendor/jquery-3.5.1.min.js');?>"></script>
	<script src="<?php echo base_url('assets/vendor/bootstrap-4.5.3-dist/js/bootstrap.js');?>"></script>
</body>
</html>