<nav class="navbar navbar-expand-lg navbar-light" style="-webkit-box-shadow: 0px 3px 3px -1px rgba(0,0,0,0.09); 
box-shadow: 0px 3px 3px -1px rgba(0,0,0,0.09);">
    <a class="navbar-brand p-3 ml-3" href="<?=base_url()?>"><span style="font-weight:800;font-size: 1.5rem;color:green"> <i class="fab fa-shopify"></i> SyopAja</span></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <form class="form-inline" method="post" action="<?php echo site_url('welcome/cariproduk');?>">
      <input  id="srchFld" class="form-control mr-sm-2"  name="str" type="search" placeholder="cari item" aria-label="cari">
      <?php
        $this->load->model('produk_model');
        $datakat = $this->produk_model->daftar_kategori();
      ?>
		  <select class="form-control" name="kategori">
          <?php foreach ($datakat as $datakat): ?>
            <option value="<?=$datakat->nama_kategori?>"><?=$datakat->nama_kategori?></option>
          <?php endforeach;?>
      </select> 
      <button class="btn btn-outline-light my-2 my-sm-0 ml-2" type="submit" id="submitButton"><i class="fas fa-search text-success"></i></button>
    </form>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a href="<?php echo site_url('welcome/cart');?>" class="mt-4">
            <h5><span class="badge badge-success mr-2">( <?php echo $this->cart->total_items();?> ) <i class="fas fa-shopping-cart mr-3"></i></span> </h5>
          </a>
        </li>
        <li class="nav-item">
          <a href="<?php echo site_url('welcome/konfirmasi');?>" class="btn mr-2 ml-2">Konfirmasi Pembayaran</a>
        </li>
        <li class="nav-item">
          <a href="<?php echo site_url('login');?>"><span class="btn btn-large btn-outline-success">Login</span></a>
        </li>
      </ul>
    </div>
  </nav>