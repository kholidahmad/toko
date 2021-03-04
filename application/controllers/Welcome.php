<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->library('cart');
		$this->load->model('produk_model');
	}
	
	public function index()
	{
		$data['produk'] = $this->produk_model->daftar_produk();
		$this->load->view('home',$data);
	}
	
	function kategori($kategori)
	{
		$data['produk'] = $this->produk_model->select_kategori($kategori);
		$this->load->view('home',$data);
	}
	
	function newkategori()
	{
		$data['produk'] = $this->produk_model->select_kategori_terbaru();
		// var_dump($data['produk']);die;
		$this->load->view('home',$data);
	}
	
	function add_to_cart($id)
	{
		$produk = $this->produk_model->select_by_id($id);
		$nama = $produk->brand.' '.$produk->model;
		$data = array(
						'id' => $produk->id,
						'qty' => 1,
						'price' => $produk->harga,
						'name' => $nama
		);
		
		$this->cart->insert($data);
		redirect(base_url());
	}
	
	function add_to_cartdetail($id)
	{
		$produk = $this->produk_model->select_by_id($id);
		$nama = $produk->brand.' '.$produk->model;
		$data = array(
						'id' => $produk->id,
						'qty' => 1,
						'price' => $produk->harga,
						'name' => $nama
		);
		
		$this->cart->insert($data);
		redirect('welcome/detailproduk/'.$id);
	}
	
	function cart()
	{
		$this->load->view('show_cart');
	}
	
	function destroy_cart()
	{
		$this->cart->destroy();
		$this->load->view('show_cart');
	}
	
	function email()
	{
		$this->load->view('confirm_email');
	}
	
	function prosestransaksi()
	{
		$this->produk_model->process();
	}
	
	function test()
	{
		$cartContentString = serialize($this->cart->contents());
		echo $cartContentString;
	}
	
	function konfirmasi()
	{
		$this->load->view('konfirmasi');
	}
	
	function detailproduk($id)
	{
		$data['produk'] = $this->produk_model->select_by_id($id);
		$this->load->view('detail_produk',$data);
	}
	
	function proses_konfirmasi()
	{
		$config['upload_path']          = './uploads/konfirmasi/';
		$config['allowed_types']        = 'jpg|png|jpeg';
		$config['max_size']             = 10000;
		$config['max_width']            = 5000;
		$config['max_height']           = 5000;

		$this->load->library('upload', $config);
		
		if (!$this->upload->do_upload())
		{
			$this->load->view('konfirmasi');
		}else{
			$gambar = $this->upload->data();
			$id_invoice = $this->input->post('invoice_id',true);
			$cekid_invoice = $this->produk_model->cekid_invoice($id_invoice);
			// var_dump($cekid_invoice);die;
			$data['invoice_id'] = $id_invoice;
			$data['status'] = 0;
			$data['gambar'] = $gambar['file_name'];
			
			if($cekid_invoice == NULL){
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Sayang sekali, Nomor Invoice tidak ditemukan !</div>');
				$this->load->view('confirm_success');
			}else{
				$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"><h4 class="alert-heading"><i class="fas fa-check text-success mr-2"></i>Yey! Konfirmasi Berhasil</h4>
				<p>Barang akan segera dikirimkan.</p></div>');
				$this->produk_model->insert_konfirmasi($data);
				$this->load->view('confirm_success');
			}
		}
	}
	
	function cariproduk()
	{
		$kategori = $this->input->post('kategori',true);
		$str = $this->input->post('str',true);
		// var_dump($str, $kategori);die;
		$data['produk'] = $this->produk_model->cariproduk($kategori,$str);
		$this->load->view('home',$data);
	}
}
