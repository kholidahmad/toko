	<div id="sidebar" class="span3">
		<div class="well well-small"><a id="myCart" href="<?php echo site_url('welcome/cart');?>"><img src="<?php echo base_url('assets/bootshop/themes/images/ico-cart.png');?>" alt="cart"><?php echo $this->cart->total_items();?> Items in your cart  </a></div>
		<ul id="sideManu" class="nav nav-tabs nav-stacked">
			<?php
				$this->load->model('produk_model');
				$datakat = $this->produk_model->daftar_kategori();
				// var_dump($datakat);die;
			?>
			<li>
				<a href="<?php echo site_url('');?>"> ALL </a>
			</li>
			<?php foreach ($datakat as $datakat): ?>
				<li>
					<a href="<?php echo site_url('welcome/kategori/'.$datakat->nama_kategori);?>"><?=$datakat->nama_kategori?></a>
				</li>
			<?php endforeach;?>
		</ul>
		<br/>
		  
			<div class="thumbnail">
				<img src="<?php echo base_url('assets/bootshop/themes/images/payment_methods.png');?>" title="Bootshop Payment Methods" alt="Payments Methods">
				<div class="caption">
				  <h5>Payment Methods</h5>
				</div>
			  </div>
	</div>