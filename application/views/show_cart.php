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
				<!-- KONTEN -->
				<ul class="breadcrumb">
		<li><a href="<?php echo base_url();?>">Home</a> <span class="divider"> / </span></li>
		<li class="active">&nbsp; SHOPPING CART</li>
    </ul>
	<h3>  SHOPPING CART [ <small><?php echo $this->cart->total_items();?> Item(s) </small>]
	<br>
		<?php if($this->cart->total() != 0):?>
		<a href="<?php echo site_url('welcome/destroy_cart');?>" class="btn btn-large pull-right"><i class=""></i> Kosongkan Keranjang </a>
		<?php endif;?>

	</h3>	
	<hr class="soft"/>
		
	<table class="table table-bordered">
              <thead>
                <tr>
                  <th>Nama</th>
				  <th>Quantity</th>
                  <th>Price</th>
                  <th>Total</th>
				</tr>
              </thead>
              <tbody>
			  <?php foreach ($this->cart->contents() as $produk): ?>
                <tr>
                  <td><?php echo $produk['name'];?></td>
                  <td><?php echo $produk['qty'];?></td>
                  <td><?php echo number_format($produk['price'],0,',','.');?></td>
                  <td><?php echo number_format($produk['subtotal'],0,',','.');?></td>
                </tr>
				<?php endforeach;?>
                <tr>
                  <td colspan="3" style="text-align:right">Total Price:	</td>
                  <td class="label label-important" style="display:block"> <?php echo number_format($this->cart->total(),0,',','.');?></td>
                </tr>
				</tbody>
            </table>
	<a href="<?php echo base_url();?>" class="btn btn-large"> Back to Shopping </a>
	<?php if($this->cart->total() != 0):?>
	<a href="<?php echo site_url('welcome/email');?>" class="btn btn-large float-right"><b> Next</b> <i class="fas fa-arrow-circle-right text-success ml-2"></i></a>
	<?php endif;?>
	
        
      </div>
    </div>
  </div>
  
	<script src="<?php echo base_url('assets/vendor/jquery-3.5.1.min.js');?>"></script>
	<script src="<?php echo base_url('assets/vendor/bootstrap-4.5.3-dist/js/bootstrap.js');?>"></script>
</body>
</html>