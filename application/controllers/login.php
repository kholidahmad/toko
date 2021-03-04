<?php
defined('BASEPATH') OR EXIT('No direct script access allowed');

class Login extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('produk_model');
	}
	
	function index()
	{
		$this->load->view('login');
	}
	
	function proses_login()
	{
		$username = $this->input->post('username',true);
		$password = $this->input->post('password',true);
		
		$akun = $this->produk_model->cek_user($username,$password);
		// var_dump($akun);die;
		
		if ($akun != NULL){
			$data = array(
				'logged_in'=>true
			);
			
			$this->session->set_userdata($data);
			redirect('admin');
		}else{
			$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert"> Terjadi  Kesalahan !</div>');
			$this->load->view('login');
		}
	}
}