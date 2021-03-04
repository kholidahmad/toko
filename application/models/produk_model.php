<?php
defined('BASEPATH') OR EXIT('No direct access allowed');

class Produk_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function daftar_produk()
	{
		return $this->db->get('produk')->result();
	}
	function daftar_kategori()
	{
		return $this->db->get('kategori')->result();
	}
	
	function select_by_id($id)
	{
		$this->db->where('id',$id);
		return $this->db->get('produk')->row();
	}
	
	function selectKategori_by_id($id)
	{
		$this->db->where('id_kategori',$id);
		return $this->db->get('kategori')->row();
	}

	function select_konfirmasi_byid($id)
	{
		$this->db->where('id',$id);
		return $this->db->get('konfirmasi')->row();
	}

	function cekid_invoice($id)
	{
		$this->db->where('id',$id);
		return $this->db->get('invoices')->row();
	}

	function update_aproval_invoice($id){
		$this->db->where('id',$id);
		$this->db->update('invoices',['status'=>'lunas']);
	}

	function update_aproval_konfirm($id){
		$this->db->where('id',$id);
		$this->db->update('konfirmasi',['status'=>1]);
	}
	
	function tambah_produk($data)
	{
		$this->db->insert('produk',$data);
	}

	function tambah_kategori($data)
	{
		$this->db->insert('kategori',$data);
	}
	
	function edit_produk($id,$data)
	{
		$this->db->where('id',$id);
		$this->db->update('produk',$data);
	}
	
	function edit_kategori($id,$data)
	{
		$this->db->where('id_kategori',$id);
		$this->db->update('kategori',$data);
	}
	
	function delete_produk($id)
	{
		$this->db->where('id',$id);
		$this->db->delete('produk');
	}

	function delete_kategori($id)
	{
		$this->db->where('id_kategori',$id);
		$this->db->delete('kategori');
	}
	
	function select_kategori($kategori)
	{
		$this->db->where('kategori',$kategori);
		return $this->db->get('produk')->result();
	}
	
	function select_kategori_terbaru()
	{
		$sql = "SELECT * FROM produk ORDER BY id DESC LIMIT 2";
		return $this->db->query($sql)->result();
	}
	
	function insert_order($data)
	{
		$this->db->insert('order',$data);
	}
	
	function process()
	{
		$invoice = array(
			'date' => date('Y-m-d H:i:s'),
			'due_date' => date('Y-m-d H:i:s', mktime(date('H'),date('i'),date('s'),date('m'),date('d') + 1,date('Y'))),
			'status' => 'unpaid',
			'nama' => $this->input->post('nama',true),
			'nope' => $this->input->post('nope',true),
			'alamat' => $this->input->post('alamat',true),
		);
		$this->db->insert('invoices', $invoice);
		$invoice_id = $this->db->insert_id();
		
		foreach($this->cart->contents() as $item)
		{
			$data = array(
					'invoice_id' => $invoice_id,
					'product_id' => $item['id'],
					'product_name' => $item['name'],
					'qty' 		=> $item['qty'],
					'price' 	=> $item['price'],
			);
			$this->db->insert('orders',$data);
		}
		
		$this->cart->destroy();
		
		$this->load->view('order_success',$data);
		
		return TRUE;
	}
	
	function all_invoices()
	{
		return $this->db->get('invoices')->result();
	}
	
	function detailinvoices($id_invoices)
	{
		$this->db->where('invoice_id',$id_invoices);
		return $this->db->get('orders')->result();
	}
	
	function cek_user($username,$password)
	{
		$this->db->where('username',$username);
		$this->db->where('password',$password);
		
		return $this->db->get('admin')->row();
	}
	
	function insert_konfirmasi($data)
	{
		$this->db->insert('konfirmasi',$data);
	}
	
	function all_konfirmasi()
	{
		return $this->db->get('konfirmasi')->result();
	}
	
	function detail_konfirmasi($invoice_id)
	{
		$this->db->where('invoice_id',$invoice_id);
		return $this->db->get('orders')->result();
	}
	
	function cariproduk($kategori,$str)
	{
		$this->db->like('model',$str);
		$this->db->or_like('brand',$str);
		$this->db->where('kategori',$kategori);
		return $this->db->get('produk')->result();
	}
}