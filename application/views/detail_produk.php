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
					<div class="col">
						<ul class="breadcrumb">
							<li><a href="<?= site_url()?>">Home</a> <span class="divider">/</span></li>
							<li><a href="<?= site_url()?>">Products</a> <span class="divider">/</span></li>
							<li class="active">product Details</li>
						</ul>	
					</div>
				</div>
				<div class="row">
					<div class="col-xl-4 col-sm-12">
						<img src="<?php echo base_url('uploads/'.$produk->gambar);?>" style="width:100%" alt="<?php echo $produk->brand;?> <?php echo $produk->model;?>"/>
					</div>
					<div class="col-xl-8 col-sm-12">
						<h3><?php echo $produk->brand;?> <?php echo $produk->model;?>  </h3>
						<form action="<?php echo site_url('welcome/add_to_cartdetail/'.$produk->id);?>" class="form-horizontal qtyFrm">
							<div class="control-group">
							<h5><span>Rp. <?php echo number_format($produk->harga,0,',','.');?></span></h5>
							<div class="controls">
								<button type="submit" class="btn btn-large btn-success pull-right"> Add to cart <i class=" icon-shopping-cart"></i></button>
							</div>
							</div>
						</form>
					</div>
				</div>
				<hr>
				<div class="row">
					<table class="table table-bordered">
						<tbody>
						<tr class="techSpecRow"><th colspan="2">Product Details</th></tr>
						<tr class="techSpecRow"><td class="techSpecTD1">Brand: </td><td class="techSpecTD2"><?php echo $produk->brand;?></td></tr>
						<tr class="techSpecRow"><td class="techSpecTD1">Model:</td><td class="techSpecTD2"><?php echo $produk->model;?></td></tr>
						<tr class="techSpecRow"><td class="techSpecTD1">Released on:</td><td class="techSpecTD2"> 2011-01-28</td></tr>
						<tr class="techSpecRow"><td class="techSpecTD1">Dimensions:</td><td class="techSpecTD2"> <?php echo $produk->dimensi;?></td></tr>
						</tbody>
					</table>
				</div>
				<p>
					<a class="btn btn-outline-dark" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
						show more
					</a>
				</p>
				<div class="collapse" id="collapseExample">
					<div class="card card-body">
						<?php echo $produk->keterangan;?>
					</div>
				</div>
			</div>
			</div>
      </div>
      </div>
    </div>
  </div>
  
	<script src="<?php echo base_url('assets/vendor/jquery-3.5.1.min.js');?>"></script>
	<script src="<?php echo base_url('assets/vendor/bootstrap-4.5.3-dist/js/bootstrap.js');?>"></script>
</body>
</html>