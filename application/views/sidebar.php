<ul class="list-group">
	<?php
	$this->load->model('produk_model');
	$datakat = $this->produk_model->daftar_kategori();
	// var_dump($datakat);die;
	?>
	<li class="list-group-item">
		<a href="<?php echo site_url('');?>" class="text-dark"> ALL </a>
	</li>
	<?php foreach ($datakat as $datakat): ?>
		<li class="list-group-item">
			<a href="<?php echo site_url('welcome/kategori/'.$datakat->nama_kategori);?>" class="text-dark"><?=$datakat->nama_kategori?></a>
		</li>
	<?php endforeach;?>
</ul>