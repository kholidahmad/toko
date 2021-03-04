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
        
        <?php if($produk == null): ?>
          <div class="alert alert-warning" role="alert">
            Sayang sekali... Produk sedang Kosong.
          </div>
        <?php else: ?>
        <?php foreach($produk as $produk): ?>
        <div class="col-sm-6">
          <div class="card pt-3 pb-2 mb-3" style="text-align:center">
            <a  href="<?php echo site_url('welcome/detailproduk/'.$produk->id);?>" >
								<?php 
									$product_image = ['src'=>'uploads/' . $produk->gambar,
										'width'=>'160',
										'height'=>'160'];
									echo img($product_image);
								?>
							</a>
							</p>
							<div class="caption mt-3">
								<h4> <?php echo $produk->model;?></h4><br>
                <h5>Rp. <?php echo number_format($produk->harga,0,',','.');?></h5>
							
								<div class="mt-3 mb-3">
									<a class="btn" href="<?php echo site_url('welcome/detailproduk/'.$produk->id);?>"> <i class="fas fa-eye"></i></a> 
									<a class="btn btn-success" href="<?php echo site_url('welcome/add_to_cart/'.$produk->id);?>">Add to cart<i class="fas fa-cart-plus text-white ml-2"></i></a>
								</div>
							</div>
          </div>
        </div>
        <?php endforeach;?>
        <?php endif; ?>


      </div>
        
      </div>
    </div>
  </div>
  
	<script src="<?php echo base_url('assets/vendor/jquery-3.5.1.min.js');?>"></script>
	<script src="<?php echo base_url('assets/vendor/bootstrap-4.5.3-dist/js/bootstrap.js');?>"></script>
</body>
</html>