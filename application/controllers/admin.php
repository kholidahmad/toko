<?php
defined('BASEPATH') OR EXIT('No direct script access allowed');

class Admin extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('produk_model');
		$this->load->helper('download');
		$logged_in = $this->session->userdata('logged_in');
		if (empty($logged_in))
		{
			redirect('login');
		}
	}
	
	function index()
	{
		$this->load->view('admin/beranda.php');
	}
	
	function daftarproduk()
	{
		$data['produk'] = $this->produk_model->daftar_produk();
		$this->load->view('admin/daftarproduk',$data);
	}

	function daftarkategori()
	{
		$data['kategori'] = $this->produk_model->daftar_kategori();
		$this->load->view('admin/daftarkategori',$data);
	}
	
	function tambahproduk()
	{
		$this->load->view('admin/tambah_barang');
	}
	function tambahkategori()
	{
		$this->load->view('admin/tambah_kategori');
	}
	
	function proses_tambah_produk()
	{
		$config['upload_path']          = './uploads/';
		$config['allowed_types']        = 'jpg|png|jpeg';
		$config['max_size']             = 10000;
		$config['max_width']            = 5000;
		$config['max_height']           = 5000;

		$this->load->library('upload', $config);
		
		if (!$this->upload->do_upload())
		{
			redirect('admin/tambahproduk');
		}
		else
		{
			$gambar = $this->upload->data();
			
			$data['kategori'] = $this->input->post('kategori',true);
			$data['brand'] = $this->input->post('brand',true);
			$data['model'] = $this->input->post('model',true);
			$data['dimensi'] = $this->input->post('dimensi',true);
			$data['keterangan'] = $this->input->post('keterangan',true);
			$data['harga'] = $this->input->post('harga',true);
			$data['tgl'] = date('Y-m-d');
			$data['gambar'] = $gambar['file_name'];
			
		
			$this->produk_model->tambah_produk($data);
			redirect('admin/daftarproduk');
		}
	}
	function proses_tambah_kategori()
	{
		$data['nama_kategori'] = $this->input->post('nama_kategori',true);
		
		$this->produk_model->tambah_kategori($data);
		redirect('admin/daftarkategori');
	}
	
	function editproduk($id)
	{
		$data['produk'] = $this->produk_model->select_by_id($id);
		$this->load->view('admin/edit_barang',$data);
	}
	
	function editkategori($id)
	{
		$data['kategori'] = $this->produk_model->selectKategori_by_id($id);
		$this->load->view('admin/edit_kategori',$data);
	}
	
	function proseseditproduk()
	{
		$config['upload_path']          = './uploads/';
		$config['allowed_types']        = 'jpg|png|jpeg';
		$config['max_size']             = 10000;
		$config['max_width']            = 5000;
		$config['max_height']           = 5000;

		$id=$this->input->post('id');
		$data['kategori'] = $this->input->post('kategori',true);
		$data['brand'] = $this->input->post('brand',true);
		$data['model'] = $this->input->post('model',true);
		$data['dimensi'] = $this->input->post('dimensi',true);
		$data['keterangan'] = $this->input->post('keterangan',true);
		$data['harga'] = $this->input->post('harga',true);

		$this->load->library('upload', $config);
		
		if (!$this->upload->do_upload())
		{
			$this->produk_model->edit_produk($id,$data);
			redirect('admin/editproduk/'.$id);
		}
		else
		{
			$gambar = $this->upload->data();
			$data['gambar'] = $gambar['file_name'];
			
			$this->produk_model->edit_produk($id,$data);
			redirect('admin/daftarproduk');
		}
	}

	function proses_edit_kategori(){
		$data['nama_kategori'] = $this->input->post('nama_kategori',true);
		$id=$this->input->post('id_kategori');
	
		$this->produk_model->edit_kategori($id,$data);
		redirect('admin/daftarkategori');
	}
	
	function hapusproduk($id)
	{
		$this->produk_model->delete_produk($id);
		redirect('admin/daftarproduk');
	}
	
	function hapuskategori($id)
	{
		$this->produk_model->delete_kategori($id);
		redirect('admin/daftarkategori');
	}
	
	function invoices()
	{
		$data['invoices'] = $this->produk_model->all_invoices();
		$this->load->view('admin/daftarinvoices',$data);
	}
	
	function detailinvoices($id_invoices)
	{
		$data['invoices'] = $this->produk_model->detailinvoices($id_invoices);
		$this->load->view('admin/detailinvoices',$data);
	}
	
	function konfirmasi()
	{
		$data['konfirmasi'] = $this->produk_model->all_konfirmasi();
		$this->load->view('admin/daftarkonfirmasi',$data);
	}

	function aproval($id){
		$konf = $this->produk_model->select_konfirmasi_byid($id);
		$this->produk_model->update_aproval_invoice($konf->invoice_id);
		$this->produk_model->update_aproval_konfirm($konf->id);
		// var_dump($konf->invoice_id);die;
		redirect(base_url('admin/konfirmasi'));
	}
	
	function detailkonfirmasi($invoice_id)
	{
		$data['konfirmasi'] = $this->produk_model->detail_konfirmasi($invoice_id);
		$this->load->view('admin/detail_konfirmasi',$data);
	}
	
	function logout()
	{
		$this->session->sess_destroy();
		redirect(base_url());
	}
	
	function download($nama)
	{
		$name = $nama;
		$data = file_get_contents('uploads/konfirmasi/'.$nama);
		force_download($name, $data);
	}
}